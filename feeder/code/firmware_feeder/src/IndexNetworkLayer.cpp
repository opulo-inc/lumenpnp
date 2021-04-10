#include "IndexNetworkLayer.h"
#include "Arduino.h"
#include <cstring>
#include <cstdio>
#ifndef NATIVE
#include "util.h"
#endif

#define INDEX_PROTOCOL_DEFAULT_TIMEOUT_MS 100
#define INDEX_INCOMING_BUFFER_SIZE 16

IndexNetworkLayer::IndexNetworkLayer(Stream* stream, uint8_t address, IndexPacketHandler* handler) :  _stream(stream), _rs485_enable(false), _local_address(address), _handler(handler), _timeout_period(INDEX_PROTOCOL_DEFAULT_TIMEOUT_MS) {
    reset();
}

IndexNetworkLayer::IndexNetworkLayer(Stream* stream, uint8_t de_pin, uint8_t re_pin, uint8_t address, IndexPacketHandler* handler) : _stream(stream), _rs485_enable(true), _de_pin(de_pin), _re_pin(re_pin), _local_address(address), _handler(handler), _timeout_period(INDEX_PROTOCOL_DEFAULT_TIMEOUT_MS) {
    reset();
}

void IndexNetworkLayer::setTimeoutPeriod(uint32_t timeout) {
    _timeout_period = timeout;
}

uint32_t IndexNetworkLayer::getTimeoutPeriod() {
    return _timeout_period;
}

void IndexNetworkLayer::setLocalAddress(uint8_t address) {
    _local_address = address;
}

uint8_t IndexNetworkLayer::getLocalAddress() {
    return _local_address;
}

void IndexNetworkLayer::tick() {
    // Read any available data from the stream and pass to the process function
    // to parse
    uint8_t buffer[INDEX_INCOMING_BUFFER_SIZE];
    size_t length = _stream->available();
    while (length > 0) {
        uint32_t time = millis();
        if (length > sizeof(buffer)) {
            length = sizeof(buffer);
        }
        length = _stream->readBytes(buffer, length);
        process(buffer, length, time);
        length = _stream->available();
    }
}

bool IndexNetworkLayer::transmitPacket(uint8_t destination_address, const uint8_t *buffer, size_t buffer_length) {

    // Do some very basic integrity checks to make sure the call was valid
    if (NULL == buffer || buffer_length > INDEX_NETWORK_MAX_PDU || buffer_length > UINT8_MAX) {
        return false;
    }

    uint8_t length = buffer_length;
    uint8_t crc_array[INDEX_PROTOCOL_CHECKSUM_LENGTH];
    uint16_t crc = _CRC16.modbus(&destination_address, 1);
    crc = _CRC16.modbus_upd(&length, 1);
    crc = _CRC16.modbus_upd(buffer, buffer_length);
    crc = htons(crc);

    crc_array[0] = (uint8_t)((crc >> 8) & 0x0ff);
    crc_array[1] = (uint8_t)(crc & 0x0ff);

    if (_rs485_enable) {
        digitalWrite(_de_pin, HIGH); // Enable The Transmitter (DE pin)
        digitalWrite(_re_pin, HIGH); // Disable The Receiver (/RE pin)
        delay(1);
    }

    // Transmit The Address
    _stream->write(&destination_address, 1);
    
    // Transmit The Length
    _stream->write(&length, 1);

    // Transmit The Data
    _stream->write(buffer, buffer_length);

    // Transmit CRC
    _stream->write(crc_array, INDEX_PROTOCOL_CHECKSUM_LENGTH);

    // Flush The Data
    _stream->flush();

    if (_rs485_enable) {

        digitalWrite(_de_pin, LOW); // Disable The Transmitter (DE pin)
        digitalWrite(_re_pin, LOW); // Enable The Receiver (/RE pin)
        delay(1);
    }

    return true;
}

void IndexNetworkLayer::process(uint8_t *buffer, size_t buffer_length, uint32_t time) {

    size_t index = 0;

    // Check Timer Is Less Than _last_byte_time
    uint32_t _timeout_threshold = _last_byte_time + _timeout_period;

    if (_timeout_threshold < time || _timeout_threshold < _last_byte_time) {
        // The byte was not received in time;
        reset();
    }

    // Set Last Byte Time or Reset
    _last_byte_time = time;

    while (index < buffer_length) {
        // Process Byte
        switch (_state) {
        case AWAITING_ADDRESS:
            _address = buffer[index];
            _state = ADDRESS_RECEIVED;
            break;
        case ADDRESS_RECEIVED:
            _length = buffer[index];
            _index = 0;
            if (_length > 0) {
                _state = LENGTH_RECEIVED;
            } else {
                _state = PAYLOAD_RECEIVED;
            }
            break;
        case LENGTH_RECEIVED:
            // Only update the array if the value is smaller than the max PDU
            // We don't just reset here are the packet format could be ok, and 
            // resetting could get us out of sync.
            if (_index < INDEX_NETWORK_MAX_PDU) {
                _payload[_index] = buffer[index];
            }
            _index++;
            if (_index >= _length) {
                _index = 0;
                _state = PAYLOAD_RECEIVED;
            }
            break;
        case PAYLOAD_RECEIVED:
            // receive the checksum
            _rx_checksum[_index++] = buffer[index];
            if (_index >= INDEX_PROTOCOL_CHECKSUM_LENGTH) {
            
                // Cacluate The Frame Checksum
                // Compare Frame Checksum
                uint16_t payload_length = (_length < INDEX_NETWORK_MAX_PDU) ? _length : INDEX_NETWORK_MAX_PDU;
                _CRC16.modbus(&_address, 1);
                _CRC16.modbus_upd(&_length, 1);
                uint16_t calc_crc = _CRC16.modbus_upd(_payload, payload_length);

                // Done with htons to ensure platform independence
                uint16_t rx_crc = _rx_checksum[0] << 8 | _rx_checksum[1];
                rx_crc = ntohs(rx_crc);

                if (calc_crc == rx_crc && (_address == _local_address || _address == INDEX_NETWORK_BROADCAST_ADDRESS) ){
                    // Time For Us To Dispatch This
                    if (_handler != NULL) {
                        _handler->handle(this, _payload, _length);
                    }
                }
                reset();
            }

            break;
        }

        // Handle The Index
        index++;
    }
}

void IndexNetworkLayer::reset() {
    // Reset The State Machine
    _state = AWAITING_ADDRESS;
    _address = 0;
    _length = 0;
    _index = 0;
    memset(_payload, 0, INDEX_NETWORK_MAX_PDU);
    memset(_rx_checksum, 0, INDEX_PROTOCOL_CHECKSUM_LENGTH);
    _last_byte_time = 0;

    if (_rs485_enable) {
        digitalWrite(_de_pin, LOW); // Disable The Transmitter (DE pin)
        digitalWrite(_re_pin, LOW); // Enable The Receiver (/RE pin)
    }
}

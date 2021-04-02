#include "IndexProtocol.h"
#include "Arduino.h"
#include <cstring>
#include <cstdio>
#ifndef NATIVE
#include "util.h"
#endif

#define INDEX_PROTOCOL_DEFAULT_TIMEOUT_MS 100
#define INDEX_INCOMING_BUFFER_SIZE 16

IndexProtocol::IndexProtocol(Stream* stream, uint8_t address, IndexProtocolHandler* handler) : _stream(stream), _local_address(address), _handler(handler), _timeout_period(INDEX_PROTOCOL_DEFAULT_TIMEOUT_MS) {
    reset();
}

void IndexProtocol::setTimeoutPeriod(uint32_t timeout) {
    _timeout_period = timeout;
}

uint32_t IndexProtocol::getTimeoutPeriod() {
    return _timeout_period;
}

void IndexProtocol::setLocalAddress(uint8_t address) {
    _local_address = address;
}

uint8_t IndexProtocol::getLocalAddress() {
    return _local_address;
}

void IndexProtocol::tick() {
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

void IndexProtocol::reset() {
    // Reset The State Machine
    _state = AWAITING_ADDRESS;
    _address = 0;
    _length = 0;
    _index = 0;
    memset(_payload, 0, INDEX_PROTOCOL_MAX_PAYLOAD_LENGTH);
    memset(_rx_checksum, 0, INDEX_PROTOCOL_CHECKSUM_LENGTH);
    _last_byte_time = 0;
}

void IndexProtocol::process(uint8_t *buffer, size_t buffer_length, uint32_t time) {

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
            _payload[_index++] = buffer[index];
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
                _CRC16.modbus(&_address, 1);
                _CRC16.modbus_upd(&_length, 1);
                uint16_t calc_crc = _CRC16.modbus_upd(_payload, _length);

                // Done with htons to ensure platform independence
                uint16_t rx_crc = _rx_checksum[0] << 8 | _rx_checksum[1];
                rx_crc = htons(rx_crc);

                if (calc_crc == rx_crc && _address == _local_address) {
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
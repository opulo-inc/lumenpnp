#ifndef _INDEX_PROTOCOL_H
#define _INDEX_PROTOCOL_H

#include <cstddef>
#include <cstdint>
#include <IndexProtocolHandler.h>
#include <FastCRC.h>
#include "Stream.h"

#define INDEX_PROTOCOL_MAX_PAYLOAD_LENGTH 256
#define INDEX_PROTOCOL_CHECKSUM_LENGTH 2

class IndexProtocol
{
public:
    IndexProtocol(Stream* stream, uint8_t address, IndexProtocolHandler* handler);

    void setTimeoutPeriod(uint32_t timeout);
    uint32_t getTimeoutPeriod();

    void setLocalAddress(uint8_t address);
    uint8_t getLocalAddress();

    void tick();

private:
    FastCRC16 _CRC16;

    enum ProtocolState
    {
        AWAITING_ADDRESS,
        ADDRESS_RECEIVED,
        LENGTH_RECEIVED,
        PAYLOAD_RECEIVED
    };

    IndexProtocol::ProtocolState _state;
    Stream* _stream;
    uint8_t _local_address;
    IndexProtocolHandler* _handler;
    uint8_t _address;
    uint8_t _length;
    uint8_t _index;
    uint8_t _payload[INDEX_PROTOCOL_MAX_PAYLOAD_LENGTH];
    uint8_t _rx_checksum[INDEX_PROTOCOL_CHECKSUM_LENGTH];
    uint32_t _last_byte_time;
    uint32_t _timeout_period;

    void process(uint8_t *buffer, size_t buffer_length, uint32_t time);
    void reset();
};

#endif //_INDEX_PROTOCOL_H
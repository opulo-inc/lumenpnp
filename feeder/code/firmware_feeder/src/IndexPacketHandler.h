#ifndef _INDEX_PROTOCOL_HANDLER_H
#define _INDEX_PROTOCOL_HANDLER_H

#include <cstddef>
#include <cstdint>

class IndexNetworkLayer;

class IndexPacketHandler {
    public:
        virtual void handle(IndexNetworkLayer *instance, uint8_t *buffer, size_t buffer_length) = 0;
};

#endif
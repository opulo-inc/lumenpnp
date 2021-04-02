#ifndef _INDEX_PROTOCOL_HANDLER_H
#define _INDEX_PROTOCOL_HANDLER_H

#include <cstddef>
#include <cstdint>

class IndexProtocol;

class IndexProtocolHandler {
    public:
        virtual void handle(IndexProtocol *instance, uint8_t *buffer, size_t buffer_length) = 0;
};

#endif
#ifndef _INDEX_FEEDER_PROTOCOL_HANDLER_H
#define _INDEX_FEEDER_PROTOCOL_HANDLER_H

#include "IndexPacketHandler.h"

#define UUID_LENGTH 12

class IndexFeeder : public IndexPacketHandler {

    public:
        IndexFeeder(const uint8_t *uuid, size_t uuid_length);
        void handle(IndexNetworkLayer *instance, uint8_t *buffer, size_t buffer_length);
    
    private:

        uint8_t _uuid[UUID_LENGTH];
        bool _initialized;

        bool checkLength(uint8_t command_id, size_t command_payload_length);
        void handleGetFeederId(IndexNetworkLayer *instance);
        void handleInitializeFeeder(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length);
        void handleGetVersion(IndexNetworkLayer *instance);
        void handleMoveFeedForward(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length);
        void handleMoveFeedBackward(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length);
        void handleGetFeederAddress(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length);

};

#endif //_INDEX_FEEDER_PROTOCOL_HANDLER_H
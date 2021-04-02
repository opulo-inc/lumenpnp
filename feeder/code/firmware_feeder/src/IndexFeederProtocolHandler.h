#ifndef _INDEX_FEEDER_PROTOCOL_HANDLER_H
#define _INDEX_FEEDER_PROTOCOL_HANDLER_H

#include "IndexProtocolHandler.h"

class IndexFeederProtocolHandler : public IndexProtocolHandler {

    public:
        void handle(IndexProtocol *instance, uint8_t *buffer, size_t buffer_length);
    
    private:

        bool checkLength(uint8_t command_id, size_t command_payload_length);
        void handleGetFeederId();
        void handleInitializeFeeder(uint8_t *payload, size_t payload_length);
        void handleGetVersion();
        void handleMoveFeedForward(uint8_t *payload, size_t payload_length);
        void handleMoveFeedBackward(uint8_t *payload, size_t payload_length);
        void handleGetFeederAddress(uint8_t *payload, size_t payload_length);

};

#endif //_INDEX_FEEDER_PROTOCOL_HANDLER_H
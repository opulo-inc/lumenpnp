#include "IndexFeederProtocolHandler.h"

#define MAX_PROTOCOL_VERSION 1

typedef enum FeederCommand {
    // Unicast Commands
    GET_FEEDER_ID = 0x01,
    INITIALIZE_FEEDER = 0x02, 
    GET_VERSION = 0x03,
    MOVE_FEED_FORWARD = 0x04,
    MOVE_FEED_BACKWARD = 0x05,

    // Broadcast Commands
    GET_FEEDER_ADDRESS = 0xc0,
};

typedef struct {
    FeederCommand command_id;
    size_t min_payload_length;
    size_t max_payload_length;
} protocol_command_t;

// Note that this array MUST be sorted as the function handle makes that assumption for efficiency
static protocol_command_t commands[] = {
    {GET_FEEDER_ID, 0, 0},
    {INITIALIZE_FEEDER, 12, 12},
    {GET_VERSION, 0, 0},
    {MOVE_FEED_FORWARD, 1, 1},
    {MOVE_FEED_BACKWARD, 1, 1},
    {GET_FEEDER_ADDRESS, 12, 12}
};
static const size_t num_commands = sizeof(commands) / sizeof(protocol_command_t);

void IndexFeederProtocolHandler::handle(IndexProtocol *instance, uint8_t *buffer, size_t buffer_length) {
    
    // The buffer must be at least one octet long as it needs to contain the 
    // command id.
    if (buffer_length == 0) {
        return;
    }

    protocol_command_t *command_entry = NULL;
    uint8_t command_id = buffer[0];

    // Check if the command exists and the length is found.
    if ( !checkLength(command_id, buffer_length - 1) ) {
        return;
    }

    uint8_t *command_payload = &buffer[1];
    size_t command_payload_size = buffer_length - 1;

    switch(command_id) {
    case GET_FEEDER_ID:
        handleGetFeederId();
        break;
    case INITIALIZE_FEEDER:
        handleInitializeFeeder(command_payload, command_payload_size);
        break;
    case GET_VERSION:
        handleGetVersion();
        break;
    case MOVE_FEED_FORWARD:
        handleMoveFeedForward(command_payload, command_payload_size);
        break;
    case MOVE_FEED_BACKWARD:
        handleMoveFeedBackward(command_payload, command_payload_size);
        break;
    case GET_FEEDER_ADDRESS:
        handleGetFeederAddress(command_payload, command_payload_size);
        break;
    default:
        // Something has gone wrong if execution ever gets here.
        break;
    }
}

bool IndexFeederProtocolHandler::checkLength(uint8_t command_id, size_t command_payload_length) {
    protocol_command_t *command_entry = NULL;
    bool return_value = false;
    
    // Loop through the entries until the matching command id is found or 
    // the command id of the entry is greater numerically than the command id
    // passed to the function.
    for (size_t index = 0; index < num_commands; index++) {
        command_entry = &commands[index];
        if (command_entry->command_id == command_id) {
            break;
        } else if (command_entry->command_id > command_id) {
            command_entry = NULL;
            break;
        }
    }

    if (command_entry != NULL && 
        command_entry->min_payload_length <= command_payload_length && 
        command_entry->max_payload_length >= command_payload_length) {
        // The command entry is found and the payload is within the bounds
        return_value = true;
    }

    return return_value;
}

void IndexFeederProtocolHandler::handleGetFeederId() {

}

void IndexFeederProtocolHandler::handleInitializeFeeder(uint8_t *payload, size_t payload_length) {

}

void IndexFeederProtocolHandler::handleGetVersion() {

}

void IndexFeederProtocolHandler::handleMoveFeedForward(uint8_t *payload, size_t payload_length) {

}

void IndexFeederProtocolHandler::handleMoveFeedBackward(uint8_t *payload, size_t payload_length) {

}

void IndexFeederProtocolHandler::handleGetFeederAddress(uint8_t *payload, size_t payload_length) {

}
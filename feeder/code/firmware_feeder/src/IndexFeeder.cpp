#include "IndexFeeder.h"
#include "IndexNetworkLayer.h"

#define MAX_PROTOCOL_VERSION 1

typedef enum FeederStatus {
    STATUS_OK = 0x00,
    STATUS_WRONG_FEEDER_ID = 0x01,
    STATUS_MOTOR_FAULT = 0x02,
    STATUS_UNINITIALIZED_FEEDER = 0x03,
    STATUS_TIMEOUT = 0xFE,
    STATUS_UNKNOWN_ERROR = 0xFF
};

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

static const uint8_t zero_uuid[UUID_LENGTH] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

#define GET_FEEDER_ID_RESPONSE_LENGTH (2 + UUID_LENGTH)
#define INITIALIZE_FEEDER_RESPONSE_LENGTH   2
#define GET_VERSION_RESPONSE_LENGTH 3

IndexFeeder::IndexFeeder(const uint8_t *uuid, size_t uuid_length) : _initialized(false) {
    memset(_uuid, 0, UUID_LENGTH);
    memcpy(_uuid, uuid, (uuid_length < UUID_LENGTH) ? uuid_length : UUID_LENGTH);
}

void IndexFeeder::handle(IndexNetworkLayer *instance, uint8_t *buffer, size_t buffer_length) {
    
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
        handleGetFeederId(instance);
        break;
    case INITIALIZE_FEEDER:
        handleInitializeFeeder(instance, command_payload, command_payload_size);
        break;
    case GET_VERSION:
        handleGetVersion(instance);
        break;
    case MOVE_FEED_FORWARD:
        handleMoveFeedForward(instance, command_payload, command_payload_size);
        break;
    case MOVE_FEED_BACKWARD:
        handleMoveFeedBackward(instance, command_payload, command_payload_size);
        break;
    case GET_FEEDER_ADDRESS:
        handleGetFeederAddress(instance, command_payload, command_payload_size);
        break;
    default:
        // Something has gone wrong if execution ever gets here.
        break;
    }
}

bool IndexFeeder::checkLength(uint8_t command_id, size_t command_payload_length) {
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

void IndexFeeder::handleGetFeederId(IndexNetworkLayer *instance) {
    // Payload: <command id>
    // Response: <feeder address> <ok> <uuid:12>

    uint8_t response[GET_FEEDER_ID_RESPONSE_LENGTH];
    response[0] = instance->getLocalAddress();
    response[1] = STATUS_OK;
    memcpy(&response[2], _uuid, UUID_LENGTH);

    instance->transmitPacket(INDEX_NETWORK_CONTROLLER_ADDRESS, response, GET_FEEDER_ID_RESPONSE_LENGTH);
}

void IndexFeeder::handleInitializeFeeder(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length) {
    //Payload: <command id> <uuid:12>
    //Response: <feeder address> <ok>

    // Start To Setup Response
    uint8_t response[INITIALIZE_FEEDER_RESPONSE_LENGTH];
    response[0] = instance->getLocalAddress();
    
    // Check uuid is correct or all zeros, if not return a Wrong Feeder UUID error
    //TODO: Add Comparison For Local UUID
    if (memcmp(payload, zero_uuid, UUID_LENGTH) != 0 && memcmp(payload, _uuid, UUID_LENGTH) != 0) {
        response[1] = STATUS_WRONG_FEEDER_ID;
        goto exit;
    }
    
    _initialized = true;

    // Everything worked, so indicate this
    response[1] = STATUS_OK;

exit:
    instance->transmitPacket(INDEX_NETWORK_CONTROLLER_ADDRESS, response, INITIALIZE_FEEDER_RESPONSE_LENGTH);
}

void IndexFeeder::handleGetVersion(IndexNetworkLayer *instance) {
    uint8_t response[GET_VERSION_RESPONSE_LENGTH];

    // Build the response
    response[0] = instance->getLocalAddress();
    response[1] = STATUS_OK;
    response[2] = MAX_PROTOCOL_VERSION;

    // Transmit The Packet To The Central
    instance->transmitPacket(INDEX_NETWORK_CONTROLLER_ADDRESS, response, GET_VERSION_RESPONSE_LENGTH);
}

void IndexFeeder::handleMoveFeedForward(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length) {

}

void IndexFeeder::handleMoveFeedBackward(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length) {

}

void IndexFeeder::handleGetFeederAddress(IndexNetworkLayer *instance, uint8_t *payload, size_t payload_length) {

}
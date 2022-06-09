#include <Arduino.h>
#include <unity.h>
#include <cstdio>

using namespace fakeit;

#include <IndexNetworkLayer.h>
#include <IndexFeederProtocol.h>

typedef struct {
    uint8_t destination_address;
    uint8_t *data;
    size_t length;
} transmit_arg_capture_t;

static std::vector<transmit_arg_capture_t> args;

static void reset_transmit_arg_capture() {
    for (transmit_arg_capture_t arg : args) {
        if (arg.data != NULL) {
            free(arg.data);
        }
    }
    args.clear();
}

#define GET_FEEDER_ID 0x01
#define INITIALIZE_FEEDER_ID 0x02
#define GET_VERSION_ID 0x03
#define MOVE_FEED_FORWARD_ID 0x04
#define MOVE_FEED_BACKWARD_ID 0x05
#define GET_FEEDER_ADDRESS_ID 0xC0

#define ERROR_SUCCESS 0x00
#define ERROR_WRONG_FEEDER_UUID 0x01
#define ERROR_MOTOR_FAULT 0x02
#define ERROR_UNINITIALIZED_FEEDER 0x03

std::function<bool(uint8_t destination_address, const uint8_t *buffer, size_t buffer_length)> transmit_capture = [](uint8_t destination_address, const uint8_t *buffer, size_t buffer_length) {
    transmit_arg_capture_t arg_entry;
    arg_entry.destination_address = destination_address;
    arg_entry.length = buffer_length;

    if (buffer_length > 0 && buffer != NULL) {
        arg_entry.data = (uint8_t *)malloc(buffer_length);
        memcpy(arg_entry.data, buffer, buffer_length);
    }

    args.push_back(arg_entry);
    return true;
};

static uint8_t feeder_address = 0x01;
static uint8_t feeder_uuid[] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb};

static Mock<Feeder> feeder_mock;
static Feeder &feeder = feeder_mock.get();

static Mock<IndexNetworkLayer> network_mock;
static IndexNetworkLayer &network = network_mock.get();

static void test_index_feeder_protocol_setup() {
    feeder_mock.Reset();
    When(Method(feeder_mock, init)).AlwaysReturn(true);

    network_mock.Reset();
    reset_transmit_arg_capture();
    When(Method(network_mock, transmitPacket)).AlwaysDo(transmit_capture);
    When(Method(network_mock, getLocalAddress)).AlwaysReturn(feeder_address);  
}

static void test_index_feeder_protocol_teardown() {
    reset_transmit_arg_capture();
}

static void test_index_feeder_protocol_get_feeder_id() {
    IndexFeederProtocol protocol(&feeder, feeder_uuid, sizeof(feeder_uuid));

    uint8_t get_feeder[] = {GET_FEEDER_ID};
    protocol.handle(&network, get_feeder, sizeof(get_feeder));

    Verify(Method(network_mock, transmitPacket)).Once();
    uint8_t expected[2 + sizeof(feeder_uuid)];
    expected[0] = feeder_address;
    expected[1] = ERROR_SUCCESS;
    memcpy(&expected[2], feeder_uuid, sizeof(feeder_uuid));
    TEST_ASSERT_EQUAL_UINT8(0, args[0].destination_address);
    TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
    TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));
}

static void test_initialize_feeder(uint8_t *uuid, size_t uuid_length, uint8_t expected_status) {

    if (uuid_length != 12) {
        TEST_FAIL_MESSAGE("Only 12 byte UUIDs are supported");
    }

    IndexFeederProtocol protocol(&feeder, feeder_uuid, sizeof(feeder_uuid));

    uint8_t init_feeder[1 + uuid_length];
    init_feeder[0] = INITIALIZE_FEEDER_ID;
    memcpy(&init_feeder[1], uuid, uuid_length);
    protocol.handle(&network, init_feeder, sizeof(init_feeder));

    TEST_ASSERT_EQUAL_UINT8(0, args[0].destination_address);
    Verify(Method(network_mock, transmitPacket)).Once();

    switch (expected_status)
    {
    case ERROR_SUCCESS:  // SUCCESS
    {
        uint8_t expected[] = { feeder_address, expected_status };
        TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
        TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));

        TEST_ASSERT_TRUE(protocol.isInitialized());
        Verify(Method(feeder_mock, init)).Once();
    }
        break;
    
    case ERROR_WRONG_FEEDER_UUID:  // Wrong Feeder Id
    {
        uint8_t expected[2 + sizeof(feeder_uuid)];
        expected[0] = feeder_address;
        expected[1] = ERROR_WRONG_FEEDER_UUID; // Wrong Feeder Id
        memcpy(&expected[2], feeder_uuid, sizeof(feeder_uuid));
        TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
        TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));

        TEST_ASSERT_FALSE(protocol.isInitialized());
        Verify(Method(feeder_mock, init)).Never();
    }
        break;
    
    default:
        TEST_FAIL_MESSAGE("Unsupported Return Code");
        break;
    }

}

static void test_index_feeder_protocol_initialize_feeder_good_uuid() {
    test_initialize_feeder(feeder_uuid, sizeof(feeder_uuid), ERROR_SUCCESS);
}

static void test_index_feeder_protocol_initialize_feeder_zero_uuid() {
    uint8_t uuid[12];
    memset(uuid, 0, sizeof(uuid));
    test_initialize_feeder(uuid, sizeof(uuid), ERROR_SUCCESS);
}

static void test_index_feeder_protocol_initialize_feeder_invalid_uuid() {
    uint8_t uuid[12];
    memset(uuid, 0x11, sizeof(uuid));
    test_initialize_feeder(uuid, sizeof(uuid), ERROR_WRONG_FEEDER_UUID);
}

static void test_index_feeder_protocol_get_version() {
    IndexFeederProtocol protocol(&feeder, feeder_uuid, sizeof(feeder_uuid));

    uint8_t get_version[] = {GET_VERSION_ID};
    protocol.handle(&network, get_version, sizeof(get_version));

    TEST_ASSERT_EQUAL_UINT8(0, args[0].destination_address);
    Verify(Method(network_mock, transmitPacket)).Once();
    uint8_t expected[] = { feeder_address, ERROR_SUCCESS, 0x01};
    TEST_ASSERT_EQUAL_UINT8(0, args[0].destination_address);
    TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
    TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));
}

static void index_feeder_move_test(uint8_t distance, bool forward, bool initialized, Feeder::FeedResult feeder_status, uint8_t expected_status) {
    When(Method(feeder_mock, feedDistance)).AlwaysReturn(feeder_status);
    IndexFeederProtocol protocol(&feeder, feeder_uuid, sizeof(feeder_uuid));

    // Initialize Feeder
    if (initialized) {
        uint8_t init_feeder[1 + sizeof(feeder_uuid)];
        init_feeder[0] = INITIALIZE_FEEDER_ID;
        memcpy(&init_feeder[1], feeder_uuid, sizeof(feeder_uuid));
        protocol.handle(&network, init_feeder, sizeof(init_feeder));

        // Reset To Only Track The Move Commands
        reset_transmit_arg_capture();
        feeder_mock.ClearInvocationHistory();
        network_mock.ClearInvocationHistory();
    }

    uint8_t move_feed[2];
    move_feed[0] = (forward) ? MOVE_FEED_FORWARD_ID : MOVE_FEED_BACKWARD_ID; // Adjust command based on direction
    move_feed[1] = distance;
    protocol.handle(&network, move_feed, sizeof(move_feed));

    TEST_ASSERT_EQUAL_UINT8(0, args[0].destination_address);
    Verify(Method(network_mock, transmitPacket)).Once();

    switch (expected_status) {
        case ERROR_SUCCESS:  // SUCCESS
        {
            uint8_t expected[] = { feeder_address, expected_status };
            TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
            TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));
            Verify(Method(feeder_mock, feedDistance).Using(distance, forward)).Once();
        }
            break;
        case ERROR_MOTOR_FAULT:  // Motor Fault
        {
            uint8_t expected[] = { feeder_address, ERROR_MOTOR_FAULT };
            TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
            TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));
            Verify(Method(feeder_mock, feedDistance).Using(distance, forward)).Once();
        }
            break;
        case ERROR_UNINITIALIZED_FEEDER:  // Uninitialized Feeder
        {
            uint8_t expected[2 + sizeof(feeder_uuid)];
            expected[0] = feeder_address;
            expected[1] = ERROR_UNINITIALIZED_FEEDER;
            memcpy(&expected[2], feeder_uuid, sizeof(feeder_uuid));
            TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
            TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));
            Verify(Method(feeder_mock, feedDistance)).Never();
        }
            break;
    }
}

static void test_index_feeder_protocol_move_feed_forward_ok() {
    index_feeder_move_test(40, true, true, Feeder::FeedResult::SUCCESS, ERROR_SUCCESS);
}

static void test_index_feeder_protocol_move_feed_forward_motor_error() {
    index_feeder_move_test(40, true, true, Feeder::FeedResult::MOTOR_FAULT, ERROR_MOTOR_FAULT);
}

static void test_index_feeder_protocol_move_feed_forward_invalid_distance() {
    index_feeder_move_test(39, true, true, Feeder::FeedResult::INVALID_LENGTH, ERROR_MOTOR_FAULT);
}

static void test_index_feeder_protocol_move_feed_forward_uninitialized_feeder() {
    index_feeder_move_test(40, true, false, Feeder::FeedResult::SUCCESS, ERROR_UNINITIALIZED_FEEDER);

}

static void test_index_feeder_protocol_move_feed_backward_ok() {
    index_feeder_move_test(40, false, true, Feeder::FeedResult::SUCCESS, ERROR_SUCCESS);
}

static void test_index_feeder_protocol_move_feed_backward_motor_error() {
    index_feeder_move_test(40, false, true, Feeder::FeedResult::MOTOR_FAULT, ERROR_MOTOR_FAULT);
}

static void test_index_feeder_protocol_move_feed_backward_invalid_distance() {
    index_feeder_move_test(39, false, true, Feeder::FeedResult::INVALID_LENGTH, ERROR_MOTOR_FAULT);
}

static void test_index_feeder_protocol_move_feed_backward_uninitialized_feeder() {
    index_feeder_move_test(40, false, false, Feeder::FeedResult::SUCCESS, ERROR_UNINITIALIZED_FEEDER);
}

static void test_index_feeder_protocol_get_feeder_address_match() {
    IndexFeederProtocol protocol(&feeder, feeder_uuid, sizeof(feeder_uuid));

    uint8_t payload[1 + sizeof(feeder_uuid)];
    payload[0] = GET_FEEDER_ADDRESS_ID;
    memcpy(&payload[1], feeder_uuid, sizeof(feeder_uuid));
    protocol.handle(&network, payload, sizeof(payload));

    TEST_ASSERT_EQUAL_UINT8(0, args[0].destination_address);
    Verify(Method(network_mock, transmitPacket)).Once();

    uint8_t expected[2 + sizeof(feeder_uuid)];
    expected[0] = feeder_address;
    expected[1] = ERROR_SUCCESS;
    memcpy(&expected[2], feeder_uuid, sizeof(feeder_uuid));
    TEST_ASSERT_EQUAL(sizeof(expected), args[0].length);
    TEST_ASSERT_EQUAL_MEMORY(expected, args[0].data, sizeof(expected));
}

static void test_index_feeder_protocol_get_feeder_address_no_match() {
    IndexFeederProtocol protocol(&feeder, feeder_uuid, sizeof(feeder_uuid));

    uint8_t payload[1 + sizeof(feeder_uuid)];
    payload[0] = GET_FEEDER_ADDRESS_ID;
    memset(&payload[1], 0, sizeof(feeder_uuid));
    protocol.handle(&network, payload, sizeof(payload));

    Verify(Method(network_mock, transmitPacket)).Never();
}

#define RUN_FEEDER_TEST(func) { test_index_feeder_protocol_setup(); RUN_TEST(func); test_index_feeder_protocol_teardown(); }

void index_feeder_protocol_tests() {
    RUN_FEEDER_TEST(test_index_feeder_protocol_get_feeder_id);
    RUN_FEEDER_TEST(test_index_feeder_protocol_initialize_feeder_good_uuid);
    RUN_FEEDER_TEST(test_index_feeder_protocol_initialize_feeder_zero_uuid);  
    RUN_FEEDER_TEST(test_index_feeder_protocol_initialize_feeder_invalid_uuid);
    RUN_FEEDER_TEST(test_index_feeder_protocol_get_version);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_forward_ok);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_forward_motor_error);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_forward_invalid_distance);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_forward_uninitialized_feeder);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_backward_ok);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_backward_motor_error);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_backward_invalid_distance);
    RUN_FEEDER_TEST(test_index_feeder_protocol_move_feed_backward_uninitialized_feeder);
    RUN_FEEDER_TEST(test_index_feeder_protocol_get_feeder_address_match);
    RUN_FEEDER_TEST(test_index_feeder_protocol_get_feeder_address_no_match);
}
#include <Arduino.h>
#include <unity.h>
#include <cstdio>

using namespace fakeit;

#include <IndexNetworkLayer.h>

static void test_index_network_single_message_good_crc() {

    // Validate A Good CRC
    uint8_t buf[] = {0x00, 0x01, 0x01, 0xb1, 0x90};


    Mock<IndexPacketHandler> handler_mock;
    When(Method(handler_mock, handle)).AlwaysReturn();
    IndexPacketHandler &handler = handler_mock.get();

    When(Method(ArduinoFake(), millis)).Return(1);

    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, &handler);

    When(Method(ArduinoFake(Stream), available)).AlwaysReturn(0);
    network.tick();

    Verify(Method(handler_mock, handle)).Never();

    When(Method(ArduinoFake(Stream), available)).Return(sizeof(buf), 0);

    std::function<size_t(char* buffer, size_t buffer_length)> fn = [buf](char *buffer, size_t buffer_length) {
        if (buffer_length >= sizeof(buf)) {
            memcpy(buffer, buf, buffer_length);
            return buffer_length;
        }
        return (size_t)0;
    };

    When(Method(ArduinoFake(Stream), readBytes)).Do(fn);

    network.tick();

    Verify(Method(handler_mock, handle)).Once();
}

static void test_index_network_multiple_message_good_crc() {
    // Validate Multiple Messages At Once
    uint8_t buf[] = {
        0x00, 0x04, 0x01, 0x02, 0x03, 0x04, 0x50, 0xd4, 
        0x00, 0x02, 0x05, 0x06, 0x22, 0xb6 
    };

    Mock<IndexPacketHandler> handler_mock;
    When(Method(handler_mock, handle)).AlwaysReturn();
    IndexPacketHandler &handler = handler_mock.get();

    When(Method(ArduinoFake(), millis)).Return(1);

    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, &handler);

    When(Method(ArduinoFake(Stream), available)).AlwaysReturn(0);
    When(Method(ArduinoFake(Stream), available)).Return(sizeof(buf), 0);

    std::function<size_t(char* buffer, size_t buffer_length)> fn = [buf](char *buffer, size_t buffer_length) {
        if (buffer_length >= sizeof(buf)) {
            memcpy(buffer, buf, buffer_length);
            return buffer_length;
        }
        return (size_t)0;
    };

    When(Method(ArduinoFake(Stream), readBytes)).Do(fn);

    network.tick();

    Verify(Method(handler_mock, handle)).Exactly(2);
}

static void test_index_network_single_message_bad_crc() {
    // Validate A Bad CRC
    uint8_t buf[] = {0x00, 0x01, 0x01, 0xb1, 0x91};

    Mock<IndexPacketHandler> handler_mock;
    When(Method(handler_mock, handle)).AlwaysReturn();
    IndexPacketHandler &handler = handler_mock.get();

    When(Method(ArduinoFake(), millis)).Return(1);

    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, &handler);

    When(Method(ArduinoFake(Stream), available)).Return(sizeof(buf)).AlwaysReturn(0);

    std::function<size_t(char* buffer, size_t buffer_length)> fn = [buf](char *buffer, size_t buffer_length) {
        if (buffer_length >= sizeof(buf)) {
            memcpy(buffer, buf, buffer_length);
            return buffer_length;
        }
        return (size_t)0;
    };

    When(Method(ArduinoFake(Stream), readBytes)).Do(fn);

    network.tick();

    Verify(Method(handler_mock, handle)).Never();
}

static void test_index_network_bad_crc_followed_by_good_crc() {
    Mock<IndexPacketHandler> handler_mock;
    When(Method(handler_mock, handle)).AlwaysReturn();
    IndexPacketHandler &handler = handler_mock.get();

    // Validate A Bad CRC followed by a good CRC
    uint8_t buf[] = {
        0x00, 0x01, 0x01, 0xb1, 0x91, 
        0x00, 0x04, 0x01, 0x02, 0x03, 0x04, 0x50, 0xd4
    };

    When(Method(ArduinoFake(), millis)).Return(1);

    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, &handler);

   When(Method(ArduinoFake(Stream), available)).Return(sizeof(buf)).AlwaysReturn(0);

    std::function<size_t(char* buffer, size_t buffer_length)> fn = [buf](char *buffer, size_t buffer_length) {
        if (buffer_length >= sizeof(buf)) {
            memcpy(buffer, buf, buffer_length);
            return buffer_length;
        }
        return (size_t)0;
    };    
    
    When(Method(ArduinoFake(Stream), readBytes)).Do(fn);

    network.tick();

    Verify(Method(handler_mock, handle)).Once();
}

static void test_malformed_frame_with_interframe_time(unsigned long interframe_time, bool should_return) {
    Mock<IndexPacketHandler> handler_mock;
    When(Method(handler_mock, handle)).AlwaysReturn();
    IndexPacketHandler &handler = handler_mock.get();

    // Message That Is 1 Octet To Short
    uint8_t buf[] = {0x00, 0x01, 0x01, 0xb1 };
    // Message That Is Valid
    uint8_t buf2[] = { 0x00, 0x04, 0x01, 0x02, 0x03, 0x04, 0x50, 0xd4 };

    When(Method(ArduinoFake(), millis)).Return(1);

    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, &handler);

    When(Method(ArduinoFake(Stream), available)).Return(sizeof(buf)).AlwaysReturn(0);

    std::function<size_t(char* buffer, size_t buffer_length)> fn = [buf](char *buffer, size_t buffer_length) {
        if (buffer_length >= sizeof(buf)) {
            memcpy(buffer, buf, buffer_length);
            return buffer_length;
        }
        return (size_t)0;
    };

    When(Method(ArduinoFake(Stream), readBytes)).Do(fn);

    network.tick();

    // Check The Method Is Never Called Because We're In Mid Frame
    Verify(Method(handler_mock, handle)).Never();   

    // Call The Second Frame 200ms later which is after the timeout
    std::function<size_t(char* buffer, size_t buffer_length)> fn2 = [buf2](char *buffer, size_t buffer_length) {
        if (buffer_length >= sizeof(buf2)) {
            memcpy(buffer, buf2, buffer_length);
            return buffer_length;
        }
        return (size_t)0;
    };    
    When(Method(ArduinoFake(Stream), available)).Return(sizeof(buf2)).AlwaysReturn(0);
    When(Method(ArduinoFake(Stream), readBytes)).Do(fn2);
    When(Method(ArduinoFake(), millis)).Return(interframe_time + 1);

    network.tick();
    if (should_return) {
        Verify(Method(handler_mock, handle)).Once();
    } else {
        Verify(Method(handler_mock, handle)).Never();
    }

}

static void test_malformed_frame_timeout() {
    test_malformed_frame_with_interframe_time(200, true);
}

static void test_malformed_frame_just_past_timeout() {
    test_malformed_frame_with_interframe_time(101, true);
}

static void test_malformed_frame_at_timeout() {
    test_malformed_frame_with_interframe_time(100, false);
}

static void test_malformed_frame_without_timeout() {
    test_malformed_frame_with_interframe_time(10, false);
}

static void test_transmit_packet() {
    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, NULL);

    const uint8_t payload[] = {0x01, 0x00, 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc};

    When(OverloadedMethod(ArduinoFake(Stream), write, size_t(const uint8_t *, size_t)) ).Return(1, 1, sizeof(payload), 2);
    When(Method(ArduinoFake(Stream), flush)).Return();

    bool result = network.transmitPacket(0x00, payload, sizeof(payload));

    // Assert That It Transmitted
    TEST_ASSERT_TRUE(result);

    // Verify The Address
    auto length_is_one = [](const uint8_t *buffer, size_t buffer_length) { return (buffer_length == 1); };
    auto payload_match = [&](const uint8_t *buffer, size_t buffer_length) { return ((buffer == payload) && (buffer_length == sizeof(payload))); };
    auto length_is_two = [](const uint8_t *buffer, size_t buffer_length) { return (buffer_length == 2); };
    
    //TODO: Figure Out How To Validate The CRC
    Verify(
        OverloadedMethod(ArduinoFake(Stream), write, size_t(const uint8_t *, size_t)).Matching(length_is_one) * 2 +
        OverloadedMethod(ArduinoFake(Stream), write, size_t(const uint8_t *, size_t)).Matching(payload_match) +
        OverloadedMethod(ArduinoFake(Stream), write, size_t(const uint8_t *, size_t)).Matching(length_is_two)
        );
    
}

static void test_transmit_null() {
    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, NULL);
    bool result = network.transmitPacket(0x00, NULL, 0);
    TEST_ASSERT_FALSE(result);
}

static void test_transmit_too_long() {
    #define TEST_LENGTH (INDEX_NETWORK_MAX_PDU + 1)
    Stream* stream = ArduinoFakeMock(Stream);
    IndexNetworkLayer network(stream, 0, NULL);
    uint8_t payload[TEST_LENGTH];
    memset(payload, 0, TEST_LENGTH);
    bool result = network.transmitPacket(0x00, payload, sizeof(payload));
    TEST_ASSERT_FALSE(result);
}

void index_network_layer_tests() {
    RUN_TEST(test_index_network_single_message_good_crc);
    RUN_TEST(test_index_network_multiple_message_good_crc);
    RUN_TEST(test_index_network_single_message_bad_crc);
    RUN_TEST(test_index_network_bad_crc_followed_by_good_crc);
    RUN_TEST(test_malformed_frame_timeout);
    RUN_TEST(test_malformed_frame_just_past_timeout);
    RUN_TEST(test_malformed_frame_at_timeout);
    RUN_TEST(test_malformed_frame_without_timeout);
    RUN_TEST(test_transmit_packet);
    RUN_TEST(test_transmit_null);
    RUN_TEST(test_transmit_too_long);

}
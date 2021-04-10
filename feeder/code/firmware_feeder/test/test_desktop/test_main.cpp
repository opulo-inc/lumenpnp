#include <Arduino.h>
#include <unity.h>

extern void index_network_layer_tests();
extern void index_feeder_protocol_tests();

void setUp(void) {
    ArduinoFakeReset();
}

int process() {
    UNITY_BEGIN();
    index_network_layer_tests();
    index_feeder_protocol_tests();
    return UNITY_END();
}

int main(int argc, char **argv) {
    return process();
}
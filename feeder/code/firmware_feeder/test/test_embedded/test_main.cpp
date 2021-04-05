#include <Arduino.h>
#include <unity.h>

int process() {
    UNITY_BEGIN();
    //index_protocol_tests();
    return UNITY_END();
}

void setup() {
    // NOTE!!! Wait for >2 secs
    // if board doesn't support software reset via Serial.DTR/RTS

    delay(2000);
    process();
}

void loop() {
    digitalWrite(13, HIGH);
    delay(100);
    digitalWrite(13, LOW);
    delay(500);    
}
#include "../../src/define.h"
#include "ring.h"

int Ring::call(){

/*

call() sends a message over RING. it is dependent on:
    -class variable "timeout" which determines how long it waits for a response before exiting
    -message_out class variable, which is a byte with all the bits to be sent.

If call() returns 0, the message was sent successfully and the recipient acknowledged it.
if it returns 1, the recipient never picked up.
if it returns 2, the recipient picked up, but did not acknowledge

*/

    int status = 0;

    //getting ready to detect response to ring
    pinMode(DAT, INPUT_PULLUP);

    //starting to ring with pulling clock low
    pinMode(CLO, OUTPUT);
    digitalWrite(CLO, LOW);

    //waiting for response
    unsigned long start_millis;
    start_millis = millis();

    while(digitalRead(DAT)){
        if(millis() - start_millis > timeout){
            status = 1;
            break;
        }
    }

    if(status == 0){ //if we didn't timeout, sent the message

        digitalWrite(CLO, HIGH);

        //give a bit of a delay to wait for recipient to set pins to the appropriate mode
        delay(15);

        //set DAT to output
        pinMode(DAT, OUTPUT);
        digitalWrite(DAT, HIGH);

        //start sending the data!
        for(int i = 0; i<8; i++){
            digitalWrite(DAT, message_out[i]);
            delay(20);
            digitalWrite(CLO, LOW);
            delay(10);
            digitalWrite(CLO, HIGH);
            delay(20);

        }

        //listen for ACK bit
        pinMode(DAT, INPUT_PULLUP);

        delay(20);

        //9th ACK CLO Pulse

        digitalWrite(CLO, LOW);
        int ack = digitalRead(DAT);
        delay(10);

        pinMode(CLO, INPUT_PULLUP);

        if(!ack){
            Serial.println("Received ACK bit");
        }
        else{
            Serial.println("Did not receieve ack bit");
        }

        
    }

    return status;

}

int Ring::pickUp(){

/*

pickUp() listens to a message over RING. pickUp() should be called when it's detected that CLO is pulled low

If pickUp() returns 0, the message was received successfully and the data has been stored in class variable message_in.
if it returns 1, the communication failed due to timeout.

*/

    //setting status to 0 as default
    int status = 0;

    //Send signal back through DAT line that we picked up
    pinMode(DAT, OUTPUT);
    digitalWrite(DAT, LOW);
    delay(5);
    
    pinMode(DAT, INPUT_PULLUP);

    //Listen to 8 bits get clocked in and store them

    for (int i = 0; i<8; i++){

        unsigned long start_millis;
        start_millis = millis();

        while(digitalRead(CLO)){
            //do nothing while CLO == HIGH, waiting for clock pulse low from sender
            
            //timeout
            if(millis() - start_millis > 100){
                status = 2;
                break;
            }
        }
        int bit = digitalRead(DAT);
        Serial.println(bit);
        message_in[i] = bit;

        if(!digitalRead(CLO)){
            while(!digitalRead(CLO)){
                //do nothing, waiting for clock pulse to end
            }
        }

    }

    delay(30);

    //Respond with reciept of response
    pinMode(DAT, OUTPUT);
    digitalWrite(DAT, LOW);
    
    while(digitalRead(CLO)){ //waits for clock pulse to start
        //do nothing
        //ADD TIMEOUT
    }
    delay(2);
    while(!digitalRead(CLO)){ //waits for clock pulse to end
        //do nothing
        //ADD TIMEOUT
    }

    //returning clock pin to input pullup
    pinMode(DAT, INPUT_PULLUP);

    //returning status of message
    return status;

}
/*
  ring.cpp - Library for using the RING two-wire communication protocol.
  Created by Stephen Hawes, April 2020.
  Released into the public domain.
*/

#include "ring.h"
#include <Adafruit_MCP23017.h>

Adafruit_MCP23017 mcp;

Ring::Ring(){
    
}

Ring::Ring(byte CLO, byte DAT)
{
  _CLO = CLO;
  _DAT = DAT;

  pinMode(_CLO, INPUT_PULLUP);
  pinMode(_DAT, INPUT_PULLUP);
  
}

Ring::Ring(byte CLO, byte DAT, byte addr)
{
  _CLO = CLO;
  _DAT = DAT;
  _addr = addr;

  mcp.begin(_addr);

  mcp.pullUp(_CLO, HIGH);
  mcp.pullUp(_DAT, HIGH);
  
}

void Ring::setCLO(byte CLO){
    _CLO = CLO;
}

void Ring::setDAT(byte DAT){
    _DAT = DAT;
}

void Ring::setADDR(byte addr){
    _addr = addr;

    mcp.begin(_addr);

    mcp.pullUp(_CLO, HIGH);
    mcp.pullUp(_DAT, HIGH);
}

int Ring::read(byte pin){
    int result;
    if(_addr != 0b11111111){
        mcp.pinMode(pin, INPUT);
        mcp.pullUp(pin, HIGH);
        result = mcp.digitalRead(pin);
    }
    else{
        pinMode(pin, INPUT_PULLUP);
        result = digitalRead(pin);
    }
    return result;
}

void Ring::write(byte pin, bool value){
    if(_addr != 0b11111111){
        mcp.pinMode(pin, OUTPUT);
        mcp.digitalWrite(pin, value);
    }
    else{
        pinMode(pin, OUTPUT);
        digitalWrite(pin, value);
    }
}

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
    read(_CLO);
    read(_DAT);

    //starting to ring with pulling clock low
    write(_CLO, 0);

    //waiting for response
    unsigned long start_millis;
    start_millis = millis();

    while(read(_DAT)){
        if(millis() - start_millis > timeout){
            status = 1;
            break;
        }
    }

    if(status == 0){ //if we didn't timeout, sent the message

        write(_CLO, 1);

        //give a bit of a delay to wait for recipient to set pins to the appropriate mode
        delay(15);

        //set DAT to output
        write(_DAT, 1);

        delay(5);

        //start sending the data!
        for(int i = 0; i<8; i++){
            write(_DAT, message_out[i]);
            delay(20);
            write(_CLO, 0);
            delay(10);
            write(_CLO, 1);
            delay(20);

        }

        //pullup DAT for ACK bit
        read(_DAT);

        delay(20);

        //9th ACK CLO Pulse

        write(_CLO, 0);
        int ack = read(_DAT);
        delay(10);

        //pulling up CLO
        read(_CLO);

        if(!ack){
            Serial.println("Received ACK bit");
        }
        else{
            Serial.println("Did not receieve ack bit");
            status = 2;
        }

        
    }

    read(_CLO);

    delay(50);

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
    while(!read(_CLO)){
        write(_DAT, 0);
    }
    
    // write(_DAT, 1);
    read(_DAT);
    read(_CLO);

    //Listen to 8 bits get clocked in and store them

    for (int i = 0; i<8; i++){

        unsigned long start_millis;
        start_millis = millis();

        while(read(_CLO)){
            //do nothing while CLO == HIGH, waiting for clock pulse low from sender
            
            //timeout
            if(millis() - start_millis > 100){
                status = 2;
                break;
            }
        }
        int bit = read(_DAT);
        message_in[i] = bit;

        if(!read(_CLO)){
            while(!read(_CLO)){
                //do nothing, waiting for clock pulse to end
            }
        }

    }

    delay(30);

    //Respond with reciept of response
    write(_DAT, 0);
    
    while(read(_CLO)){ //waits for clock pulse to start
        //do nothing
        //ADD TIMEOUT
    }
    delay(20);

    //returning clock pin to input pullup
    read(_DAT);

    //returning status of message
    return status;

}
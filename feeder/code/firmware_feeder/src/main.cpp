/*
INDEX PNP
Stephen Hawes 2020

This firmware is intended to run on the Index PNP feeder main board. 
It is meant to index component tape forward, while also intelligently peeling the film covering from said tape.
When the feeder receives a signal from the host, it indexes a certain number of 'ticks' or 4mm spacings on the tape
(also the distance between holes in the tape)

PC5 is the 'clock' in this interface, and PC4 is the 'data' interface. When either the host or the feeder wants to send a message, 
they pulls the clock high for 10 ms to indicate they want to send info. The other member sends a confirmation pulse back, also on the clock line
to indicate they're ready for the message. Then the sender sets the data pin to the MSB of the byte being sent and pulses the clock high.
This continues until all 8 bits of the byte are sent.

The receiver then pulls the clock high once to confirm a full byte was sent.

#ifdef DEBUG
  Serial.println("INFO - Saw RING request");
#endif

*/

#include "define.h"
#include <Arduino.h>


//-----
//timing variables
//-----
unsigned long startMillis;  
unsigned long currentMillis;


//-------
//SETUP
//-------
void setup() {

  #ifdef DEBUG
    Serial.println("INFO - Feeder starting up...");
  #endif

  //setting pin modes
  pinMode(PA_4, OUTPUT);

}

//------
//MAIN CONTROL LOOP
//------
void loop() {
  digitalWrite(PA_4, HIGH);
  delay(500);
  digitalWrite(PA_4, LOW);
  delay(500);

}
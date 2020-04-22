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

//TODO 
//add debug print statements
//add timeout to index() 

#include "define.h"

#include <Arduino.h>
#include <PID_v1.h>
#include <ring.h>

//-----
//timing variables
//-----
unsigned long startMillis;  
unsigned long currentMillis;

//-------
//Commands
//-------

//in
const int move_nibble[8] = {0, 1, 0, 0};
const int state_request[8] = {1, 0, 0, 0, 0, 0, 0, 0};
const int log_request[8]   = {1, 0, 0, 0, 0, 0, 0, 1};

//out
const int tds_error[8] = {1, 1, 0, 0, 0, 0, 0, 0};
const int jam_error[8] = {1, 1, 0, 0, 0, 0, 0, 1};

//-------
//error variables
//-------
int commErrorFlag = 0;

const int cyclesOutOfRangeThreshold = 8000;
const int positionDeltaTolerance = 50;
int cyclesOutOfRange = 0; 


//--------
//Optical sensor variables
//--------
const int numReadings = 5;

int readings[numReadings];      // the readings from the analog input
int readIndex = 0;              // the index of the current reading
int total = 0;                  // the running total
int average = 0;                // the average

//PID jazz
double Setpoint, Input, Output;

//Specify the links and tuning parameters
double  Kp=0.2, 
        Ki=0.0, 
        Kd=0.05;

PID pid(&Input, &Output, &Setpoint, Kp, Ki, Kd, DIRECT);

//------
//Setting up RING
//------

byte CLO = A5;
byte DAT = A4;

Ring r(CLO, DAT);

//-------
//SETUP
//-------
void setup() {

  //starting serial
  Serial.begin(9600);

  #ifdef DEBUG
    Serial.println("INFO - Feeder starting up...");
  #endif

  //setting pin modes

  pinMode(LED, INPUT);
  pinMode(TDS, INPUT_PULLUP);
  pinMode(SW1, INPUT_PULLUP);
  pinMode(SW2, INPUT_PULLUP);
  pinMode(OPTO, INPUT);

  //filling running average array with zeros
  for (int thisReading = 0; thisReading < numReadings; thisReading++) {
    readings[thisReading] = 0;
  }

  
  //Setting up motor control
  Setpoint = 160;  //TODO store and pull this from EEPROM
  pid.SetMode(AUTOMATIC);
  pid.SetOutputLimits(-255,255);
  digitalWrite(nSLEEP, HIGH); //turns on motor driver

  // int command[8]{
  //   0, 1, 0, 0, 1, 0, 1, 0
  // };

  // for(int i = 0;i<8;i++){
  //   r.message_out[i] = command[i];
  // }

  // r.call();

  // while(true){

  // }

}

//-------
//Calculates new running average, and sets Input to its value
//-------
void update_pid_input(){

  // subtract the last reading:
  total = total - readings[readIndex];
  // read from the sensor:
  readings[readIndex] = analogRead(OPTO);
  // add the reading to the total:
  total = total + readings[readIndex];
  // advance to the next position in the array:
  readIndex = readIndex + 1;

  // if we're at the end of the array...
  if (readIndex >= numReadings) {
    // ...wrap around to the beginning:
    readIndex = 0;
  }

  // calculate the average:
  average = total / numReadings;

  //setting new average as the input to the pid
  Input = average;

}

//------------
//TDS State Loop
// -runs when TDS is detected to be open
// -blinks green LED
// -only cleared when TDS is triggered again, and both buttons are pressed
// -motor movement is enabled in this mode 
//    -for the purpose of loading/unloading tape
//------------
void tds(){
  unsigned long blinkMillis;
  bool ledStatus;
  #ifdef DEBUG
    Serial.println("WARN - TDS Error");
  #endif

  digitalWrite(LED, HIGH);
  ledStatus = true;

  //setting message_out to jam warning
  for(int i = 0;i<8;i++){
    r.message_out[i] = tds_error[i];
  }

  //calling with ring to notify piggyback, not caring about result
  r.call();

  blinkMillis = millis();

  while(digitalRead(SW1) || digitalRead(SW2) || digitalRead(TDS)){ //while all three buttons are not switched
    //flipping LED if necessary based on timing
    if((millis() - blinkMillis) > BLINK_FREQ){
      //toggle led pin
      if(ledStatus){
        pinMode(LED, OUTPUT);
        digitalWrite(LED, HIGH);
        ledStatus = false;
      }
      else{
        pinMode(LED, OUTPUT);
        digitalWrite(LED, LOW);
        ledStatus = true;
      }

      //reset blinkMillis variable
      blinkMillis = millis();
    }
    //checking for a button press, and driving motor based on that
    if(!digitalRead(SW1)){
      //drive motor backwards
      digitalWrite(MOTOR_PH, HIGH); //sets direction backwards
      analogWrite(MOTOR_EN, 255);   //drives motor full tilt

    }
    else if(!digitalRead(SW2)){
      //drive motor forwards
      digitalWrite(MOTOR_PH, LOW); //sets direction forwards
      analogWrite(MOTOR_EN, 255);  //drives motor full tilt

    }
    else{
      //stop driving motor
      analogWrite(MOTOR_EN, 0);
    }

  }
  #ifdef DEBUG
    Serial.println("INFO - TDS Error Resolved");
  #endif

}

//------------
//Jam State Loop
// -runs when jam is detected
// -blinks yellow LED
// -only cleared when both buttons are pressed at the same time
// -driving motors forward and back is enabled in this mode (not indexing) 
//    -for the purpose of helping clear a jam
//------------
void jam(){
  unsigned long blinkMillis;
  bool ledStatus;

  #ifdef DEBUG
    Serial.println("WARN - Jam Error");
  #endif

  digitalWrite(LED, HIGH);
  ledStatus = true;

  //setting message_out to jam warning
  for(int i = 0;i<8;i++){
    r.message_out[i] = jam_error[i];
  }

  //calling with ring to notify piggyback, not caring about result
  r.call();

  blinkMillis = millis();

  while(digitalRead(SW1) || digitalRead(SW2)){ //while both buttons are not switched
    //flipping LED if necessary based on timing
    if((millis() - blinkMillis) > BLINK_FREQ){
      //toggle led pin
      if(ledStatus){
        pinMode(LED, INPUT);
        ledStatus = false;
      }
      else{
        pinMode(LED, OUTPUT);
        digitalWrite(LED, LOW);
        ledStatus = true;
      }

      //reset blinkMillis variable
      blinkMillis = millis();
    }
    //checking for a button press, and driving motor based on that
    if(!digitalRead(SW1)){
      //drive motor backwards
      digitalWrite(MOTOR_PH, LOW); //sets direction backwards
      analogWrite(MOTOR_EN, 255);   //drives motor full tilt

    }
    else if(!digitalRead(SW2)){
      //drive motor forwards
      digitalWrite(MOTOR_PH, HIGH); //sets direction forwards
      analogWrite(MOTOR_EN, 255);  //drives motor full tilt

    }
    else{
      //stop driving motor
      analogWrite(MOTOR_EN, 0);
    }

  }

  #ifdef DEBUG
    Serial.println("INFO - Jam Error Resolved");
  #endif

}


//------------
//Comm Error Function
// -runs when RING fails
// -yellow LED solid on
// -only cleared with successful RING interaction
// -runs once to set a flag/led, then normal operation
//------------
void comm(){
  commErrorFlag = 1;

  #ifdef DEBUG
    Serial.println("WARN - RING Communication Error");
  #endif

  pinMode(LED, OUTPUT),
  digitalWrite(LED, HIGH);
}


//------------
//Index Function
// -used to move tape
// -signed int passed in indicates how much to move
// -neg = backwards, pos = forwards
//------------
int index(signed int pips){

  #ifdef DEBUG
    Serial.println("INFO - Indexing...");
  #endif

  int status = 0;
  
  if(pips > 0){

    digitalWrite(MOTOR_PH, LOW);

    for(int i=0; i<pips; i++){

      while(analogRead(OPTO) > 100){
        analogWrite(3, 255);
      }
      while(analogRead(OPTO) < 250){
        analogWrite(3, 255);
      }
    }
    while(analogRead(OPTO) > 170){
      analogWrite(3, 200);
    }
    analogWrite(3, 0);

  }
  else{
    digitalWrite(MOTOR_PH, HIGH);
    
    for(int i=0; i>pips; i--){
      
      while(analogRead(OPTO) > 100){
        analogWrite(3, 255);
      }
      while(analogRead(OPTO) < 250){
        analogWrite(3, 255);
      }
    }

    while(analogRead(OPTO) > 170){
      analogWrite(3, 200);
    }
    analogWrite(3, 0);

  }

  delay(300);

  #ifdef DEBUG
    Serial.println("INFO - Done Indexing");
  #endif

  return status;

}


//------------
//Array Compare Functions
// -checks if the argument array == message_in (or just the first 4 bits)
//------------
bool arrayCompare4(const int subject[4]){
  bool same = true;
  for(int i=0; i<4; i++){
    if(r.message_in[i] != subject[i]){
      same = false;
    }
  }
  return same;
}

bool arrayCompare8(const int subject[8]){
  bool same = true;
  for(int i=0; i<8; i++){
    if(r.message_in[i] != subject[i]){
      same = false;
    }
  }
  return same;
}

//------
//MAIN CONTROL LOOP
//------
void loop() {
  //------
  //ERROR
  //------

  //checking for tds error condition
  if(digitalRead(TDS)){
    tds();
  }

  //incrementing or resetting cycles_out_of_range counter
  if(abs(average - Setpoint) > positionDeltaTolerance){
    cyclesOutOfRange++;
  }
  else{
    cyclesOutOfRange = 0;
  }
  //checking for jam error condition
  if(cyclesOutOfRange > cyclesOutOfRangeThreshold){
    //jam();
  }

  //if comm error flag is set, turn on yellow led
  if(commErrorFlag){
    // pinMode(LED, OUTPUT),
    // digitalWrite(LED, HIGH);
  }
  else{
    pinMode(LED, OUTPUT),
    digitalWrite(LED, LOW);
  }

  //------
  //RING
  //------
  if(!digitalRead(CLO)){
    #ifdef DEBUG
      Serial.println("INFO - Saw RING Request");
    #endif

    //Stop driving motors while handling comms
    analogWrite(MOTOR_EN, 0);

    //listen to message and store data
    int pickup_status = r.pickUp(); 

    if(pickup_status != 0){ //pick up failed
      comm();
    }
    else{
      //comms working, clearing flag
      commErrorFlag = 0;
      
      if(arrayCompare4(move_nibble)){
        signed int pips = 0;
        if(r.message_in[7]){
          pips = pips+1;
        }
        if(r.message_in[6]){
          pips = pips+2;
        }
        if(r.message_in[5]){
          pips = pips+4;
        }
        if(!r.message_in[4]){
          pips = pips * -1;
        }

        int index_result = index(pips);

        if(index_result){
          jam();
        }
        else{
          #ifdef DEBUG
            Serial.println("INFO - Index was successful");
          #endif
          //setting message_out to success message
          for(int i = 0;i<8;i++){
            r.message_out[i] = r.message_in[i];
          }
          int ring_result = r.call();
          if(ring_result){
            comm();
          }
          else{
            #ifdef DEBUG
              Serial.println("INFO - RING response sent successfully");
            #endif
          }
        }
      }
      else if(arrayCompare8(state_request)){
        int state[8];
        //building state array from current feeder state


        for(int i = 0;i<8;i++){
          r.message_out[i] = state[i];
        }
        int ring_result = r.call();
        if(ring_result){
          comm();
        }
        else{
          #ifdef DEBUG
            Serial.println("INFO - RING response sent successfully");
          #endif
        }
      }
      else if(arrayCompare8(log_request)){
        int logs[8];
        //pull total number of pips moved from EEPROM

        //put that number/100 into logs array


        for(int i = 0;i<8;i++){
          r.message_out[i] = logs[i];
        }
        int ring_result = r.call();
        if(ring_result){
          comm();
        }
        else{
          #ifdef DEBUG
            Serial.println("INFO - RING response sent successfully");
          #endif
        }
      }
      else{
        comm();
      }

    }

  }

  //--------
  //Wheel movement
  //--------
  //recalculating running average
  update_pid_input();
  
  //recompute PID with new average
  pid.Compute();

  //Driving motors based on pid output

  #ifdef DEBUG
    Serial.println(average);
  #endif
  
  // if(Output > 0){
  //   digitalWrite(MOTOR_PH, LOW);
  //   analogWrite(MOTOR_EN, Output);

  // }
  // else if(Output < 0){
  //   digitalWrite(MOTOR_PH, HIGH);
  //   analogWrite(MOTOR_EN, abs(Output));
  // }
  
  //moving tape manually from buttons
  if(!digitalRead(SW1)){
    index(-1);
  }
  if(!digitalRead(SW2)){
    index(1);
  }

}
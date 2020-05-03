#include <Arduino.h>
#include <ring.h>

#include "define.h"

const int tds_error[8] = {1, 1, 0, 0, 0, 0, 0, 0};
const int jam_error[8] = {1, 1, 0, 0, 0, 0, 0, 1};

const int move_nibble[8] = {0, 1, 0, 0};

//array for all 32 ring objects
Ring ringArray[FEEDER_COUNT];

void setup() {

  Serial.begin(115200);
  //Serial.println("Piggyback starting up");

  //setting pins and addresses in all ring objects from ringPins array in define.h
  for(int i=0;i<FEEDER_COUNT;i++){
    ringArray[i].setCLO(ringPins[i][0]);
    ringArray[i].setDAT(ringPins[i][1]);
    ringArray[i].setADDR(ringPins[i][2]);
  }

  //pulling CLO and DAT pins input pullup
  for(int i=0;i<FEEDER_COUNT;i++){
    ringArray[i].read(ringPins[i][0]);
    ringArray[i].read(ringPins[i][1]);
  }
}

//------------
//Array Compare Functions
// -checks if the argument array == message_in (or just the first 4 bits)
//------------
bool arrayCompare4(const int subject[4], Ring r){
  bool same = true;
  for(int i=0; i<4; i++){
    if(r.message_in[i] != subject[i]){
      same = false;
    }
  }
  return same;
}

bool arrayCompare8(const int subject[8], Ring r){
  bool same = true;
  for(int i=0; i<8; i++){
    if(r.message_in[i] != subject[i]){
      same = false;
    }
  }
  return same;
}

void pickupHandler(Ring r){
  int status = r.pickUp();

  //Serial.print("RING exited with: ");
  Serial.println(status);

  if(arrayCompare4(move_nibble, r)){
    Serial.println("ok.");
  }
  else if(arrayCompare8(tds_error, r)){
    Serial.println("Tape Runout Error");
  }
  else if(arrayCompare8(jam_error, r)){
    Serial.println("Jam Error");
  }


}

void gcodeHandler(String gcode){
  if(gcode[0] == 'F'){
    //Serial.println("got F as the first character");
    int hundreds = gcode[1] - 48;
    int tens = gcode[2] - 48;
    int ones = gcode[3] - 48;

    int feederNumber = 0;
    if(hundreds != 0){
      feederNumber = feederNumber + hundreds*100;
    }
    if(tens != 0){
      feederNumber = feederNumber + tens*10;
    }
    if(ones != 0){
      feederNumber = feederNumber + ones;
    }

    int command[8]{
      0, 1, 0, 0, 0, 0, 0, 0
    };

    if(gcode[5] == '1'){
      command[4] = 1;
    }
    if(gcode[6] == '1'){
      command[5] = 1;
    }
    if(gcode[7] == '1'){
      command[6] = 1;
    }
    if(gcode[8] == '1'){
      command[7] = 1;
    }
  
    for(int i = 0;i<8;i++){
      //Serial.println(command[i]);
    }

    for(int i = 0;i<8;i++){
      ringArray[feederNumber].message_out[i] = command[i];
    }

    int result = ringArray[feederNumber].call();

    if(result == 0){
      //Serial.println("ring.call completed successfully");
    }
    else{
      //Serial.println("ring.call failed");
    }

  }
  //Serial.println("End of GCODE handler");

}



void loop() {
  //Check if there's serial data available
  if (Serial.available() > 0) {
    while(Serial.available() > 0){
      String gcode = Serial.readStringUntil('\n');
      //Serial.println(gcode);
      gcodeHandler(gcode);
    }
  }

  // Check if a RING device wants to talk
  // Scan all CLO lines through I2C I/O Expanders
  for(int i=0;i<FEEDER_COUNT;i++){
    if(!ringArray[i].read(ringPins[i][0])){
      //Serial.print("i think i saw a ring request on pin ");
      Serial.println(ringPins[i][0]);
      pickupHandler(ringArray[i]);
    }
  }


}

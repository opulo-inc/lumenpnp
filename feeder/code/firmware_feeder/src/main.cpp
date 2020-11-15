/*
INDEX PNP
Stephen Hawes 2020

This firmware is intended to run on the Index PNP feeder main board. 
It is meant to index component tape forward, while also intelligently peeling the film covering from said tape.
When the feeder receives a signal from the host, it indexes a certain number of 'ticks' or 4mm spacings on the tape
(also the distance between holes in the tape)

#ifdef DEBUG
  Serial.println("INFO - debug message here");
#endif

*/

#include "define.h"
#include <Arduino.h>
#include <HardwareSerial.h>

//
//global variables
//
unsigned long startMillis;  
unsigned long currentMillis;
bool tape_presence_flag = false;
bool film_tension_flag = false;
int id = 0;

HardwareSerial ser(PA10, PA9);

//-------
//SETUP
//-------
void setup() {

  #ifdef DEBUG
    Serial.println("INFO - Feeder starting up...");
  #endif

  //setting pin modes
  pinMode(RTS, OUTPUT);

  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(SW1, INPUT_PULLUP);
  pinMode(SW2, INPUT_PULLUP);

  pinMode(TAPE_DETECT, INPUT_PULLUP);
  pinMode(FILM_TENSION, INPUT_PULLUP);
  pinMode(SLOT_DETECT, INPUT);

  pinMode(DRIVE1, OUTPUT);
  pinMode(DRIVE2, OUTPUT);
  pinMode(PEEL1, OUTPUT);
  pinMode(PEEL2, OUTPUT);

  //init led blink
  for(int i = 0;i <= 5;i++){
    if(i%2 == 0){
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, HIGH);
      delay(200);
    }
    else{
      digitalWrite(LED1, HIGH);
      digitalWrite(LED2, LOW);
      delay(200);
    }
  }

  //setting initial pin states
  digitalWrite(RTS, LOW);
  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);

  //Starting rs-485 serial
  ser.begin(9600);

  if(analogRead(SLOT_DETECT)>16){
    id = 0b00110010;
  }
  else{
    id = 0b00110001;
  }

  ser.println(id);

}

void send(byte addr, byte data){
  //flip RTS pin to send
  digitalWrite(RTS, HIGH);

  //write address, then data bytes
  ser.write(addr);
  ser.write(data);

  //bring RTS pin back to listen mode
  digitalWrite(RTS, LOW);


}



void index(int pip_num, bool direction){

  for(int i = 0; i < pip_num; i++){

    if(direction){ //if moving forward

      // first threshold
      while(analogRead(OPTO_SIG)<300){

        #ifdef OPTO_DEBUG
          ser.println(analogRead(OPTO_SIG));
        #endif

        analogWrite(DRIVE1, 200);
        analogWrite(DRIVE2, 0);
        delay(15);
        analogWrite(DRIVE1, 0);
        delay(50);
      
      }

      // second threshold
      while(analogRead(OPTO_SIG)>200){
        ser.println(analogRead(OPTO_SIG));
        analogWrite(DRIVE1, 200);
        analogWrite(DRIVE2, 0);
        digitalWrite(LED1, LOW);
        delay(15);
        analogWrite(DRIVE1, 0);
        delay(50);
      }
    
      //third threshold
      while(analogRead(OPTO_SIG)<250){
        ser.println(analogRead(OPTO_SIG));
        analogWrite(DRIVE1, 200);
        analogWrite(DRIVE2, 0);
        digitalWrite(LED1, LOW);
        delay(15);
        analogWrite(DRIVE1, 0);
        delay(50);
      }

      while(digitalRead(FILM_TENSION)){//if film tension switch not clicked
        //then spin motor to wind film
        analogWrite(PEEL2, 100);
        analogWrite(PEEL1, 0);
      }
            
      analogWrite(PEEL2, 0);
      analogWrite(PEEL1, 0);
             
    }
    else{ //if going backward

      //unspool some film to give the tape slack. imprecise amount because we retention later
      analogWrite(PEEL1, 100);
      analogWrite(PEEL2, 0);
      delay(400);
      analogWrite(PEEL1, 0);
      analogWrite(PEEL2, 0);

      // first threshold
      while(analogRead(OPTO_SIG)<300){

        #ifdef OPTO_DEBUG
          ser.println(analogRead(OPTO_SIG));
        #endif

        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 250);
        delay(20);
        analogWrite(DRIVE2, 0);
        delay(50);
      
      }

      // second threshold
      while(analogRead(OPTO_SIG)>200){
        ser.println(analogRead(OPTO_SIG));
        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 250);
        digitalWrite(LED1, LOW);
        delay(20);
        analogWrite(DRIVE2, 0);
        delay(50);
      }
    
      //third threshold
      while(analogRead(OPTO_SIG)<250){
        ser.println(analogRead(OPTO_SIG));
        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 250);
        digitalWrite(LED1, LOW);
        delay(20);
        analogWrite(DRIVE2, 0);
        delay(50);
      }

      while(digitalRead(FILM_TENSION)){//if film tension switch not clicked
        //then spin motor to wind film
        analogWrite(PEEL2, 100);
        analogWrite(PEEL1, 0);
      }
            
      analogWrite(PEEL2, 0);
      analogWrite(PEEL1, 0);
    }
  }
}

void listen(){
  if (ser.available() > 0) {
    digitalWrite(LED1, LOW);
    delay(100);
    digitalWrite(LED1, HIGH);
    // read the incoming byte:
    byte addr = ser.read();
    ser.write(addr);

    //check if byte is this feeder's id
    if(true){//addr==id){
      byte command = ser.read();
      ser.write(command);

      if(command==0b01000110){
        index(1, true);
      }
      else if(command==0b01000010){
        index(1, false);
      }
  
      
    }
  }

}

//------
//MAIN CONTROL LOOP
//------

void loop() {

// Checking tape presence status

  if(digitalRead(TAPE_DETECT)){ //if no tape present

    //set flag

    //setting this true all the time to prevent weird behavior
    tape_presence_flag = true;

    //turn green led off, yellow led on
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, LOW);

  }

  else{ //if tape present

    //set flag
    tape_presence_flag = true;

    //turn green led on, yellow off
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, HIGH);

  }

// Checking SW1 status

  if(!digitalRead(SW1)){
    if(tape_presence_flag){
      index(1, true);
    }
    else{
      analogWrite(DRIVE1, 255);
      analogWrite(DRIVE2, 0);

      while(!digitalRead(SW1)){
        //do nothing
      }

      analogWrite(DRIVE1, 0);
      analogWrite(DRIVE2, 0);
    }
  }

// Checking SW2 status

  if(!digitalRead(SW2)){
    if(tape_presence_flag){
      index(1, false);
    }
    else{
      analogWrite(DRIVE1, 0);
      analogWrite(DRIVE2, 255);

      while(!digitalRead(SW2)){
        //do nothing
      }

      analogWrite(DRIVE1, 0);
      analogWrite(DRIVE2, 0);
    }
  }


//listening on rs-485 for a command

  listen();


// end main loop
}

/*
INDEX PNP
Stephen Hawes 2020

This firmware is intended to run on the Index PNP feeder main board. 
It is meant to index component tape forward, while also intelligently peeling the film covering from said tape.
When the feeder receives a signal from the host, it indexes a certain number of 'ticks' or 4mm spacings on the tape
(also the distance between holes in the tape)

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


int i = 0;

//-------
//SETUP
//-------
void setup() {

  #ifdef DEBUG
    Serial.println("INFO - Feeder starting up...");
  #endif

  //setting pin modes
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(SW1, INPUT_PULLUP);
  pinMode(SW2, INPUT_PULLUP);

  pinMode(TAPE_DETECT, INPUT_PULLUP);
  pinMode(FILM_TENSION, INPUT_PULLUP);

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

//setting boot pin states
digitalWrite(LED1, HIGH);
digitalWrite(LED2, HIGH);


}



//------
//MAIN CONTROL LOOP
//------
void loop() {

  if(digitalRead(TAPE_DETECT)){//if film tension switch not clicked
    //no tape detected, turn on orange light
    digitalWrite(LED2, LOW);

    
  }
  else{
    digitalWrite(LED2, HIGH);

    if(digitalRead(FILM_TENSION)){//if film tension switch not clicked
      //then spin motor to wind film
      digitalWrite(PEEL2, LOW);
      analogWrite(PEEL1, 200);
      delay(20);
    }
    else{
      digitalWrite(PEEL2, 0);
      analogWrite(PEEL1, 0);
    } 
  }



  if(!digitalRead(SW1)){
    analogWrite(DRIVE1, 255);
    analogWrite(DRIVE2, 0);
    digitalWrite(LED1, LOW);
  }
  else{
    analogWrite(DRIVE1, 0);
    analogWrite(DRIVE2, 0);
    digitalWrite(LED1, HIGH);
  }

  if(!digitalRead(SW2)){
    analogWrite(DRIVE2, 255);
    analogWrite(DRIVE1, 0);
    digitalWrite(LED2, LOW);
  }
  else{
    analogWrite(DRIVE2, 0);
    analogWrite(DRIVE1, 0);
    digitalWrite(LED2, HIGH);
  }

  


}
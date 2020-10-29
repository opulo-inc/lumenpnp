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
#include <HardwareSerial.h>

//-----
//timing variables
//-----
unsigned long startMillis;  
unsigned long currentMillis;

HardwareSerial ser(PA10, PA9);

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

  ser.begin(9600);

}

void update_opto(){


}

//------
//MAIN CONTROL LOOP
//------
void loop() {

  ser.println(analogRead(OPTO_SIG));

  if(digitalRead(TAPE_DETECT)){//if tape NOT present
    digitalWrite(LED2, HIGH);

    analogWrite(PEEL2, 0);
    analogWrite(PEEL1, 0);
  }
  else{//if tape present
    digitalWrite(LED2, LOW);

    if(digitalRead(FILM_TENSION)){//if film tension switch not clicked
      //then spin motor to wind film
      analogWrite(PEEL2, 100);
      analogWrite(PEEL1, 0);
    }
    else{
      analogWrite(PEEL2, 0);
      analogWrite(PEEL1, 0);
    } 
  }

  



  if(!digitalRead(SW1)){
    delay(200);
    while(analogRead(OPTO_SIG)<300){
      ser.println(analogRead(OPTO_SIG));
      analogWrite(DRIVE1, 200);
      analogWrite(DRIVE2, 0);
      digitalWrite(LED1, LOW);
      delay(15);
      analogWrite(DRIVE1, 0);
      delay(50);
    }
    while(analogRead(OPTO_SIG)>200){
      ser.println(analogRead(OPTO_SIG));
      analogWrite(DRIVE1, 200);
      analogWrite(DRIVE2, 0);
      digitalWrite(LED1, LOW);
      delay(15);
      analogWrite(DRIVE1, 0);
      delay(50);
    }
    while(analogRead(OPTO_SIG)<250){
      ser.println(analogRead(OPTO_SIG));
      analogWrite(DRIVE1, 200);
      analogWrite(DRIVE2, 0);
      digitalWrite(LED1, LOW);
      delay(15);
      analogWrite(DRIVE1, 0);
      delay(50);
    }

  }
  else{
    analogWrite(DRIVE1, 0);
    analogWrite(DRIVE2, 0);
    digitalWrite(LED1, HIGH);
  }

  if(!digitalRead(SW2)){
    analogWrite(DRIVE2, 200);
    analogWrite(DRIVE1, 0);
    digitalWrite(LED2, LOW);
  }
  else{
    analogWrite(DRIVE2, 0);
    analogWrite(DRIVE1, 0);
    digitalWrite(LED2, HIGH);
  }

  


}
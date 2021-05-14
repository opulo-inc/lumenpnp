/*
INDEX PNP
Stephen Hawes 2021

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
#include <OneWire.h>
#include <DS2431.h>

//
//global variables
//
unsigned long startMillis;  
unsigned long currentMillis;
bool film_tension_flag = false;
byte addr = 0;

HardwareSerial ser(PA10, PA9);

OneWire oneWire(ONE_WIRE);
DS2431 eeprom(oneWire);

//-------
//FUNCTIONS
//-------

void byte_to_light(byte num){
  if(bitRead(num, 0)){
    digitalWrite(LED1, LOW);
  }
  else{
    digitalWrite(LED1, HIGH);
  }
  if(bitRead(num, 1)){
    digitalWrite(LED2, LOW);
  }
  else{
    digitalWrite(LED2, HIGH);
  }
  if(bitRead(num, 2)){
    digitalWrite(LED3, LOW);
  }
  else{
    digitalWrite(LED3, HIGH);
  }
  if(bitRead(num, 3)){
    digitalWrite(LED4, LOW);
  }
  else{
    digitalWrite(LED4, HIGH);
  }
  if(bitRead(num, 4)){
    digitalWrite(LED5, LOW);
  }
  else{
    digitalWrite(LED5, HIGH);
  }
}

byte read_floor_addr(){
  if(!oneWire.reset())
  {
    //No DS2431 found on the 1-Wire bus
    return 0xFF;
  }
  else{
    byte data[128];
    eeprom.read(0, data, sizeof(data));
    return data[0];
  }
}

byte write_floor_addr(){
  //programs a feeder floor. 
  //successful programming returns the address programmed
  //failed program returns 0x00

  byte newData[] = {0,0,0,0,0,0,0,0};

  byte current_selection = addr;

  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
  while(!digitalRead(SW1) || !digitalRead(SW2)){
    //do nothing
  }
  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  digitalWrite(LED4, HIGH);
  digitalWrite(LED5, HIGH);

  while(true){
    //we stay in here as long as both buttons aren't pressed
    if(!digitalRead(SW1) && current_selection < 31){
      delay(LONG_PRESS_DELAY);
      if(!digitalRead(SW1) && !digitalRead(SW2)){
        break;
      }
      //byte_to_light(0x00);
      current_selection = current_selection + 1;
      ser.println(current_selection);
      while(!digitalRead(SW1)){
        //do nothing
      }
    }
    if(!digitalRead(SW2) && current_selection > 1){
      delay(LONG_PRESS_DELAY);
      if(!digitalRead(SW1) && !digitalRead(SW2)){
        break;
      }
      //byte_to_light(0x00);
      current_selection = current_selection - 1;
      ser.println(current_selection);
      while(!digitalRead(SW2)){
        //do nothing
      }
    }

    byte_to_light(current_selection);
  }

  byte_to_light(0x00);

  newData[0] = current_selection;
  word address = 0;
  if (eeprom.write(address, newData, sizeof(newData))){
    addr = current_selection;

    while(!digitalRead(SW1) || !digitalRead(SW2)){
      //do nothing
    }

    for (int i = 0; i < 32; i++){
      byte_to_light(i);
      delay(40);
    }

    byte_to_light(0x00);

    return newData[0];
  }
  else
  {
    return 0x00;
  }



}

void send(byte addr, byte data){
  //flip RTS pin to send
  digitalWrite(DE, HIGH);
  digitalWrite(_RE, LOW);

  //write address, then data bytes
  ser.write(addr);
  ser.write(data);

  //bring RTS pin back to listen mode
  digitalWrite(DE, LOW);
  digitalWrite(_RE, HIGH);


}



void index(int pip_num, bool direction){

  for(int i = 0; i < pip_num; i++){

    if(direction){ //if moving forward

      // first threshold
      while(analogRead(OPTO_SIG)<200){

        #ifdef OPTO_DEBUG
          ser.println(analogRead(OPTO_SIG));
        #endif

        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 250);
        delay(15);
        analogWrite(DRIVE2, 0);
        delay(50);
      
      }

      // second threshold
      while(analogRead(OPTO_SIG)>200){
        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 250);
        digitalWrite(LED1, LOW);
        delay(15);
        analogWrite(DRIVE2, 0);
        delay(50);
      }
    
      //third threshold
      while(analogRead(OPTO_SIG)<500){
        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 250);
        digitalWrite(LED1, LOW);
        delay(15);
        analogWrite(DRIVE2, 0);
        delay(50);
      }

      while(analogRead(FILM_TENSION)>500){//if film tension switch not clicked
        //then spin motor to wind film
        analogWrite(PEEL2, 250);
        analogWrite(PEEL1, 0);
      }
            
      analogWrite(PEEL2, 0);
      analogWrite(PEEL1, 0);
      digitalWrite(LED1, LOW);

             
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
        analogWrite(DRIVE1, 250);
        analogWrite(DRIVE2, 0);
        delay(20);
        analogWrite(DRIVE1, 0);
        delay(50);
      
      }

      // second threshold
      while(analogRead(OPTO_SIG)>200){
        analogWrite(DRIVE1, 250);
        analogWrite(DRIVE2, 0);
        digitalWrite(LED1, LOW);
        delay(20);
        analogWrite(DRIVE1, 0);
        delay(50);
      }
    
      //third threshold
      while(analogRead(OPTO_SIG)<250){
        analogWrite(DRIVE1, 250);
        analogWrite(DRIVE2, 0);
        digitalWrite(LED1, LOW);
        delay(20);
        analogWrite(DRIVE1, 0);
        delay(50);
      }

      while(analogRead(FILM_TENSION)>500){//if film tension switch not clicked
        //then spin motor to wind film
        analogWrite(PEEL2, 250);
        analogWrite(PEEL1, 0);
      }
            
      analogWrite(PEEL2, 0);
      analogWrite(PEEL1, 0);
    }
  }
}
/*
this is the function that gets called repeatedly to listen on the rs-485 bus.
at the moment it doesn't implement the whole protocol. no UUID, just the slot address
and a command.
*/
void listen(){
  if (ser.available() > 0) {
    digitalWrite(LED1, LOW);
    delay(100);
    digitalWrite(LED1, HIGH);
    // read the incoming byte:
    byte req_addr = ser.read();

    //check if byte is this feeder's id
    if(addr == req_addr){
      byte command = ser.read();
      ser.write(command);

      if(command==0b01000110){
        index(1, true);
      }
      else if(command==0b01000010){
        index(1, false);
      }
  
      
    }
    else{
      //dump serial buffer and ignore the rest of the transmission
    }
  }

}

//-------
//SETUP
//-------
void setup() {

  #ifdef DEBUG
    Serial.println("INFO - Feeder starting up...");
  #endif

  //setting pin modes
  pinMode(DE, OUTPUT);
  pinMode(_RE, OUTPUT);

  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(SW1, INPUT_PULLUP);
  pinMode(SW2, INPUT_PULLUP);

  pinMode(FILM_TENSION, INPUT_ANALOG);

  pinMode(OPTO_SIG, INPUT_ANALOG);

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
  digitalWrite(DE, LOW);
  digitalWrite(_RE, HIGH);
  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  digitalWrite(LED4, HIGH);
  digitalWrite(LED5, HIGH);

  //Starting rs-485 serial
  ser.begin(115200);

  byte floor_addr = read_floor_addr();

  if(floor_addr == 0x00){ //floor 1 wire eeprom has not been programmed
    //somehow prompt to program eeprom
  }
  else if(floor_addr == 0xFF){
    //no eeprom chip detected
  }
  else{ //successfully read address from eeprom
    addr = floor_addr;
    
  }

}

//------
//MAIN CONTROL LOOP
//------

void loop() {

// Checking SW1 status to go forward, or initiate settings mode

  if(!digitalRead(SW1)){
    delay(LONG_PRESS_DELAY);

    if(!digitalRead(SW1)){

      if(!digitalRead(SW2)){
        //both are pressed, entering settings mode
        write_floor_addr();
      }
      else{
        //we've got a long press, lets go speedy
        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 255);
        
        while(!digitalRead(SW1)){
          //do nothing
        }
      
        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 0);
      }
      
    }
    else{
      index(1, true);
    }
    
    
  }

// Checking SW2 status to go backward

  if(!digitalRead(SW2)){
    delay(LONG_PRESS_DELAY);

    if(!digitalRead(SW2)){

      if(!digitalRead(SW1)){
        //both are pressed, entering settings mode
        write_floor_addr();
      }
      else{
        //we've got a long press, lets go speedy
        analogWrite(DRIVE1, 255);
        analogWrite(DRIVE2, 0);
        
        while(!digitalRead(SW2)){
          //do nothing
        }
      
        analogWrite(DRIVE1, 0);
        analogWrite(DRIVE2, 0);
      }
      
    }
    else{
      index(1, false);
    }
    
}


//listening on rs-485 for a command

  listen();




// end main loop
}

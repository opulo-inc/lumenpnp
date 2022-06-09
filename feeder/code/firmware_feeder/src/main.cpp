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
#ifdef UNIT_TEST
  #include <ArduinoFake.h>
#else
  #include <Arduino.h>
  #include <HardwareSerial.h>
  #include <OneWire.h>
  #include <DS2431.h>
  #include <ArduinoUniqueID.h>
#endif // UNIT_TEST

#include <IndexFeeder.h>
#include <IndexFeederProtocol.h>
#include <IndexNetworkLayer.h>

#define BAUD_RATE 9600

//
//global variables
//
byte addr = 0;

#ifdef UNIT_TEST
StreamFake ser();
#else
HardwareSerial ser(PA10, PA9);
#endif // ARDUINO

OneWire oneWire(ONE_WIRE);
DS2431 eeprom(oneWire);

IndexFeeder *feeder;
IndexFeederProtocol *protocol;
IndexNetworkLayer *network;

#define ALL_LEDS_OFF() byte_to_light(0x00)
#define ALL_LEDS_ON() byte_to_light(0xff)

//-------
//FUNCTIONS
//-------

void byte_to_light(byte num){
  digitalWrite(LED1, !bitRead(num, 0));
  digitalWrite(LED2, !bitRead(num, 1));
  digitalWrite(LED3, !bitRead(num, 2));
  digitalWrite(LED4, !bitRead(num, 3));
  digitalWrite(LED5, !bitRead(num, 4));
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

  ALL_LEDS_OFF();
  while(!digitalRead(SW1) || !digitalRead(SW2)){
    //do nothing
  }
  ALL_LEDS_ON();

  while(true){
    //we stay in here as long as both buttons aren't pressed
    if(!digitalRead(SW1) && current_selection < 31){
      delay(LONG_PRESS_DELAY);
      if(!digitalRead(SW1) && !digitalRead(SW2)){
        break;
      }
      current_selection = current_selection + 1;
      while(!digitalRead(SW1)){
        //do nothing
      }
    }
    if(!digitalRead(SW2) && current_selection > 1){
      delay(LONG_PRESS_DELAY);
      if(!digitalRead(SW1) && !digitalRead(SW2)){
        break;
      }
      current_selection = current_selection - 1;
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

    // If the network is configured, update the local address
    // to the newly selected address.
    if (network != NULL) {
      network->setLocalAddress(addr);
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

//-------
//SETUP
//-------
// cppcheck-suppress unusedFunction
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
  
  //init led blink
  for(int i = 0;i <= 5;i++){
    if(i%2 == 0){
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, HIGH);
    }
    else{
      digitalWrite(LED1, HIGH);
      digitalWrite(LED2, LOW);
    }
    delay(200);
  }

  //setting initial pin states
  digitalWrite(DE, LOW);
  digitalWrite(_RE, HIGH);
  ALL_LEDS_OFF();

  // Reading Feeder Floor Address
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

  //Starting rs-485 serial
  ser.begin(BAUD_RATE);

  // Setup Feeder
  feeder = new IndexFeeder(OPTO_SIG, FILM_TENSION, DRIVE1, DRIVE2, PEEL1, PEEL2);
  protocol = new IndexFeederProtocol(feeder, UniqueID, UniqueIDsize);
  network = new IndexNetworkLayer(&ser, DE, _RE, addr, protocol);
}

//------
//MAIN CONTROL LOOP
//------
// cppcheck-suppress unusedFunction
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
      feeder->feedDistance(40, true);
      //index(1, true);
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
      feeder->feedDistance(40, false);
      //index(1, false);
    }  
  }

  //listening on rs-485 for a command
  if (network != NULL) {
    network->tick();
  }

  // end main loop
}

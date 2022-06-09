/*
  Analog input, analog output, serial output

  Reads an analog input pin, maps the result to a range from 0 to 255 and uses
  the result to set the pulse width modulation (PWM) of an output pin.
  Also prints the results to the Serial Monitor.

  The circuit:
  - potentiometer connected to analog pin 0.
    Center pin of the potentiometer goes to the analog pin.
    side pins of the potentiometer go to +5V and ground
  - LED connected from digital pin 9 to ground

  created 29 Dec. 2008
  modified 9 Apr 2012
  by Tom Igoe

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/AnalogInOutSerial
*/

// These constants won't change. They're used to give names to the pins used:

const int numReadings = 5;

int readings[numReadings];      // the readings from the analog input
int readIndex = 0;              // the index of the current reading
int total = 0;                  // the running total
int average = 0;                // the average

int inputPin = A3;



const int analogInPin = A3;  // Analog input pin that the potentiometer is attached to

int sensorValue = 0;        // value read from the pot

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600);

  pinMode(7, INPUT_PULLUP);
  pinMode(A5, INPUT_PULLUP);
  
  pinMode(5, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(2, OUTPUT);

  digitalWrite(4, HIGH); //sets phase
  digitalWrite(2, HIGH); //disable Sleep
  //analogWrite(3, 255);

  for (int thisReading = 0; thisReading < numReadings; thisReading++) {
    readings[thisReading] = 0;
  }

  
}

void loop() {

  // subtract the last reading:
  total = total - readings[readIndex];
  // read from the sensor:
  readings[readIndex] = analogRead(inputPin);
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
  // send it to the computer as ASCII digits
  Serial.println(average);

  if(!digitalRead(7) || !digitalRead(A5)){
    digitalWrite(5, LOW);
    while(analogRead(A3) < 250){
      analogWrite(3, 255);
    }
    while(analogRead(A3) > 100){
      analogWrite(3, 255);
    }
    while(analogRead(A3) < 250){
      analogWrite(3, 255);
    }
    while(analogRead(A3) > 100){
      analogWrite(3, 255);
    }
    while(analogRead(A3) < 150){
      analogWrite(3, 150);
    }



    analogWrite(3, 0);
    digitalWrite(5, HIGH);

    delay(200);
  }


  
}

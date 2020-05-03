//Piggyback define.h

#define FEEDER_COUNT 8

#define BLINK_FREQ 500
#define DEBUG


//------
//Feeder Pins + Addresses
//[0] = CLO, [1] = DAT, [2] = ADDR
//------

byte ringPins[32][3]{
  { 14,  15,  0}, // feeder 1
  { 12,  13,  0}, // feeder 2
  { 10,  11,  0}, // feeder 3
  { 8,  9,  0}, // feeder 4
  { 7,  6,  0}, // feeder 5
  { 5,  4,  0}, // feeder 6
  { 3,  2,  0}, // feeder 7
  { 1,  0,  0}, // feeder 8

  // { 0,  1,  1}, // feeder 9
  // { 0,  1,  1}, // feeder 10
  // { 0,  1,  1}, // feeder 11
  // { 0,  1,  1}, // feeder 12
  // { 0,  1,  1}, // feeder 13
  // { 0,  1,  1}, // feeder 14
  // { 0,  1,  1}, // feeder 15
  // { 0,  1,  1}, // feeder 16

  // { 0,  1,  2}, // feeder 17
  // { 0,  1,  2}, // feeder 18
  // { 0,  1,  2}, // feeder 19
  // { 0,  1,  2}, // feeder 20
  // { 0,  1,  2}, // feeder 21
  // { 0,  1,  2}, // feeder 22
  // { 0,  1,  2}, // feeder 23
  // { 0,  1,  2}, // feeder 24

  // { 0,  1,  3}, // feeder 25
  // { 0,  1,  3}, // feeder 26
  // { 0,  1,  3}, // feeder 27
  // { 0,  1,  3}, // feeder 28
  // { 0,  1,  3}, // feeder 29
  // { 0,  1,  3}, // feeder 30
  // { 0,  1,  3}, // feeder 31
  // { 0,  1,  3}  // feeder 32

};
/*
  ring.cpp - Library for using the RING two-wire communication protocol.
  Created by Stephen Hawes, April 2020.
  Released into the public domain.
*/

#ifndef ring_h
#define ring_h

#include <Arduino.h>

class Ring
{
    public:
        unsigned long timeout = 3000;
        int message_in[8];
        int message_out[8];

        Ring();
        Ring(byte CLO, byte DAT);
        Ring(byte CLO, byte DAT, byte ADDR);
        int call();
        int pickUp();
        int read(byte pin);
        void write(byte pin, bool value);

        void setCLO(byte CLO);
        void setDAT(byte DAT);
        void setADDR(byte addr);

    private:
        byte _CLO;
        byte _DAT;
        byte _addr = 0b11111111;
        
};
#endif
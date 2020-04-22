#include <Arduino.h>

class Ring
{
    public:
        unsigned long timeout = 3000;
        int message_in[8];
        int message_out[8];

        int call();
        int pickUp();
        
};

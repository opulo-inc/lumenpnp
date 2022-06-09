#ifndef _FEEDER_H
#define _FEEDER_H

#include <cstddef>
#include <cstdint>

class Feeder {

    public:
        enum FeedResult
        {
            SUCCESS,
            INVALID_LENGTH,
            MOTOR_FAULT,
            UNKNOWN_ERROR
        };

        virtual bool init() = 0;
        virtual FeedResult feedDistance(uint8_t tenths_mm, bool forward) = 0;

};

#endif //_INDEX_FEEDER_PROTOCOL_H
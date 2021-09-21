#include "util.h"

#if   __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
uint32_t htonl(uint32_t hostlong) {
    uint32_t tmp = (hostlong << 24) & 0xff000000;
    tmp |= (hostlong << 8) & 0x00ff0000;
    tmp |= (hostlong >> 8) & 0x0000ff00;
    tmp |= (hostlong >> 24) & 0x000000ff;
    return tmp;
}
#endif


//#define htonl(x) 
//( (((uint8_t *)x)[0] << 24) |  (((uint8_t *)x)[1] << 16) | (((uint8_t *)x)[2] << 8)  | (((uint8_t *)x)[3]) )
//( (((uint32_t)(x << 24 )) & 0xff000000) | (((uint32_t)(x << 8)) & 0x00ff0000) | ((x >> 8) & 0x0000ff00) | ((x >> 24) & 0x000000ff) )
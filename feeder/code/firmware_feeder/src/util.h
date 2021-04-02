#ifndef _UTIL_H
#define _UTIL_H

#include <stdint.h>

#ifndef NATIVE
#if   __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__ 

uint32_t htonl(uint32_t hostlong);
#define htons(x) ( ((x << 8)  & 0xff00) | ((x >> 8) & 0xff) )
#define ntohl(x) htonl(x)
#define ntohs(x) htons(x)

#elif __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__

#define htonl(x) (x)
#define htons(x) (x)
#define ntohl(x) (x)
#define ntohs(x) (x)

#else
#error Unknown Endianness
#endif 
#endif

#endif //_UTIL_H
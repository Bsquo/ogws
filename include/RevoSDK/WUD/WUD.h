#ifndef REVOSDK_WUD_H
#define REVOSDK_WUD_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef void * (* WUDAllocFunc)(u32);
typedef void (* WUDFreeFunc)(void *);

void WUDRegisterAllocator(WUDAllocFunc, WUDFreeFunc);

#ifdef __cplusplus
}
#endif
#endif
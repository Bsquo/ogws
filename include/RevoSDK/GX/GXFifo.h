#ifndef REVOSDK_GX_FIFO_H
#define REVOSDK_GX_FIFO_H
#include <types.h>
#include <GX.h>
#include <OS/OSThread.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXFifoObj
{
    // TO-DO
    char UNK_0x0[0x80];
} GXFifoObj;

void GXGetGPStatus(u8 *, u8 *, u8 *, u8 *, u8 *);
UNKTYPE GXGetCPUFifo(UNKTYPE *);
UNKTYPE GXGetFifoPtrs(UNKTYPE *, UNKTYPE *, UNKTYPE *);
UNKTYPE GXEnableBreakPt(UNKTYPE *);
UNKTYPE GXDisableBreakPt(UNKTYPE *);

OSThread * GXGetCurrentGXThread();

#ifdef __cplusplus
}
#endif
#endif
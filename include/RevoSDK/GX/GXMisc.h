#ifndef REVOSDK_GX_MISC_H
#define REVOSDK_GX_MISC_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef void (* GXDrawDoneCallback)(void);
typedef void (* GXDrawSyncCallback)(u16);

UNKTYPE GXFlush(void);

UNKTYPE GXSetDrawSync(u16);

UNKTYPE GXDrawDone(void);

UNKTYPE GXSetDrawSyncCallback(GXDrawSyncCallback);

UNKTYPE GXSetDrawDoneCallback(GXDrawDoneCallback);

#ifdef __cplusplus
}
#endif
#endif
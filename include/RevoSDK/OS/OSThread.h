#ifndef REVOSDK_OS_THREAD
#define REVOSDK_OS_THREAD
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif __cplusplus

typedef struct
{
    char UNK_0x0[0x2D0];
    UNKWORD priority; // at 0x2D0
    char UNK_0x2D4[0x304 - 0x2D4];
    void *stackTop; // at 0x304
    void *stackBottom; // at 0x308
    char UNK_0x30C[0xC];
} OSThread;

typedef struct
{
    OSThread *thread_0x0;
    OSThread *thread_0x4;
} OSThreadQueue;

typedef UNKWORD (* OSThreadFunc)(void *);
typedef void (* OSSwitchThreadFunc)(OSThread *, OSThread *);

UNKTYPE OSYieldThread(UNKTYPE);
BOOL OSCreateThread(OSThread *, OSThreadFunc, void *, void *, UNKWORD, UNKWORD, UNKWORD);

BOOL OSJoinThread(OSThread *, UNKWORD);

UNKTYPE OSResumeThread(OSThread *);

UNKTYPE OSSleepThread(OSThreadQueue *);
UNKTYPE OSWakeupThread(OSThreadQueue *);
UNKTYPE OSSetThreadPriority(OSThread *, UNKWORD);

UNKTYPE OSInitThreadQueue(OSThreadQueue *);
OSThread * OSGetCurrentThread(void);

UNKWORD OSSetSwitchThreadCallback(OSSwitchThreadFunc);
BOOL OSIsThreadTerminated(OSThread *);

UNKTYPE OSDetachThread(OSThread *);
UNKTYPE OSCancelThread(OSThread *);

#ifdef __cplusplus
}
#endif __cplusplus
#endif
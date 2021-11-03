#ifndef REVOSDK_WPAD_H
#define REVOSDK_WPAD_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef void (*WPADCallback)(s32, s32);

UNKTYPE WPADControlSpeaker(s32, UNKWORD, WPADCallback);
BOOL WPADCanSendStreamData(s32);
UNKWORD WPADSendStreamData(s32, UNKTYPE *, UNKWORD);
UNKTYPE WPADControlMotor(s32, s32);
s32 WPADProbe(s32, UNKTYPE *);
UNKWORD WPADSetConnectCallback(s32, WPADCallback);

#ifdef __cplusplus
}
#endif
#endif
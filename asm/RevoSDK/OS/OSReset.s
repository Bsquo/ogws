.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
ShutdownFunctionQueue:
	.skip 0x8

.section .data, "wa"
.balign 0x8
.global lbl_8039D1F8
lbl_8039D1F8:
	.string "OSReset.c"
    .balign 4
.global lbl_8039D204
lbl_8039D204:
	.string "OSReturnToMenu(): Falied to boot system menu.\n"
    .balign 4
.global lbl_8039D234
lbl_8039D234:
	.string "OSResetSystem() is obsoleted. It doesn't work any longer.\n"
    .balign 4

.section .text, "ax"
.global OSRegisterShutdownFunction
OSRegisterShutdownFunction:
/* 800F2E48 000EDD48  80 AD 9C 20 */	lwz r5, ShutdownFunctionQueue-_SDA_BASE_(r13)
/* 800F2E4C 000EDD4C  48 00 00 08 */	b lbl_800F2E54
lbl_800F2E50:
/* 800F2E50 000EDD50  80 A5 00 08 */	lwz r5, 8(r5)
lbl_800F2E54:
/* 800F2E54 000EDD54  2C 05 00 00 */	cmpwi r5, 0
/* 800F2E58 000EDD58  41 82 00 14 */	beq lbl_800F2E6C
/* 800F2E5C 000EDD5C  80 85 00 04 */	lwz r4, 4(r5)
/* 800F2E60 000EDD60  80 03 00 04 */	lwz r0, 4(r3)
/* 800F2E64 000EDD64  7C 04 00 40 */	cmplw r4, r0
/* 800F2E68 000EDD68  40 81 FF E8 */	ble lbl_800F2E50
lbl_800F2E6C:
/* 800F2E6C 000EDD6C  2C 05 00 00 */	cmpwi r5, 0
/* 800F2E70 000EDD70  40 82 00 38 */	bne lbl_800F2EA8
/* 800F2E74 000EDD74  38 8D 9C 20 */	addi r4, r13, ShutdownFunctionQueue-_SDA_BASE_
/* 800F2E78 000EDD78  80 84 00 04 */	lwz r4, 4(r4)
/* 800F2E7C 000EDD7C  2C 04 00 00 */	cmpwi r4, 0
/* 800F2E80 000EDD80  40 82 00 0C */	bne lbl_800F2E8C
/* 800F2E84 000EDD84  90 6D 9C 20 */	stw r3, ShutdownFunctionQueue-_SDA_BASE_(r13)
/* 800F2E88 000EDD88  48 00 00 08 */	b lbl_800F2E90
lbl_800F2E8C:
/* 800F2E8C 000EDD8C  90 64 00 08 */	stw r3, 8(r4)
lbl_800F2E90:
/* 800F2E90 000EDD90  38 00 00 00 */	li r0, 0
/* 800F2E94 000EDD94  90 83 00 0C */	stw r4, 0xc(r3)
/* 800F2E98 000EDD98  38 8D 9C 20 */	addi r4, r13, ShutdownFunctionQueue-_SDA_BASE_
/* 800F2E9C 000EDD9C  90 03 00 08 */	stw r0, 8(r3)
/* 800F2EA0 000EDDA0  90 64 00 04 */	stw r3, 4(r4)
/* 800F2EA4 000EDDA4  4E 80 00 20 */	blr 
lbl_800F2EA8:
/* 800F2EA8 000EDDA8  90 A3 00 08 */	stw r5, 8(r3)
/* 800F2EAC 000EDDAC  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800F2EB0 000EDDB0  90 65 00 0C */	stw r3, 0xc(r5)
/* 800F2EB4 000EDDB4  2C 04 00 00 */	cmpwi r4, 0
/* 800F2EB8 000EDDB8  90 83 00 0C */	stw r4, 0xc(r3)
/* 800F2EBC 000EDDBC  40 82 00 0C */	bne lbl_800F2EC8
/* 800F2EC0 000EDDC0  90 6D 9C 20 */	stw r3, ShutdownFunctionQueue-_SDA_BASE_(r13)
/* 800F2EC4 000EDDC4  4E 80 00 20 */	blr 
lbl_800F2EC8:
/* 800F2EC8 000EDDC8  90 64 00 08 */	stw r3, 8(r4)
/* 800F2ECC 000EDDCC  4E 80 00 20 */	blr 

.global __OSCallShutdownFunctions
__OSCallShutdownFunctions:
/* 800F2ED0 000EDDD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F2ED4 000EDDD4  7C 08 02 A6 */	mflr r0
/* 800F2ED8 000EDDD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F2EDC 000EDDDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800F2EE0 000EDDE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800F2EE4 000EDDE4  3B C0 00 00 */	li r30, 0
/* 800F2EE8 000EDDE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800F2EEC 000EDDEC  7C 9D 23 78 */	mr r29, r4
/* 800F2EF0 000EDDF0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800F2EF4 000EDDF4  7C 7C 1B 78 */	mr r28, r3
/* 800F2EF8 000EDDF8  38 60 00 00 */	li r3, 0
/* 800F2EFC 000EDDFC  83 ED 9C 20 */	lwz r31, ShutdownFunctionQueue-_SDA_BASE_(r13)
/* 800F2F00 000EDE00  48 00 00 40 */	b lbl_800F2F40
lbl_800F2F04:
/* 800F2F04 000EDE04  2C 1E 00 00 */	cmpwi r30, 0
/* 800F2F08 000EDE08  41 82 00 10 */	beq lbl_800F2F18
/* 800F2F0C 000EDE0C  80 1F 00 04 */	lwz r0, 4(r31)
/* 800F2F10 000EDE10  7C 03 00 40 */	cmplw r3, r0
/* 800F2F14 000EDE14  40 82 00 34 */	bne lbl_800F2F48
lbl_800F2F18:
/* 800F2F18 000EDE18  81 9F 00 00 */	lwz r12, 0(r31)
/* 800F2F1C 000EDE1C  7F 83 E3 78 */	mr r3, r28
/* 800F2F20 000EDE20  7F A4 EB 78 */	mr r4, r29
/* 800F2F24 000EDE24  7D 89 03 A6 */	mtctr r12
/* 800F2F28 000EDE28  4E 80 04 21 */	bctrl 
/* 800F2F2C 000EDE2C  7C 60 00 34 */	cntlzw r0, r3
/* 800F2F30 000EDE30  80 7F 00 04 */	lwz r3, 4(r31)
/* 800F2F34 000EDE34  54 00 D9 7E */	srwi r0, r0, 5
/* 800F2F38 000EDE38  83 FF 00 08 */	lwz r31, 8(r31)
/* 800F2F3C 000EDE3C  7F DE 03 78 */	or r30, r30, r0
lbl_800F2F40:
/* 800F2F40 000EDE40  2C 1F 00 00 */	cmpwi r31, 0
/* 800F2F44 000EDE44  40 82 FF C0 */	bne lbl_800F2F04
lbl_800F2F48:
/* 800F2F48 000EDE48  48 00 0A 15 */	bl __OSSyncSram
/* 800F2F4C 000EDE4C  7C 60 00 34 */	cntlzw r0, r3
/* 800F2F50 000EDE50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800F2F54 000EDE54  54 00 D9 7E */	srwi r0, r0, 5
/* 800F2F58 000EDE58  7F DE 03 78 */	or r30, r30, r0
/* 800F2F5C 000EDE5C  7F C0 00 34 */	cntlzw r0, r30
/* 800F2F60 000EDE60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800F2F64 000EDE64  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800F2F68 000EDE68  54 03 D9 7E */	srwi r3, r0, 5
/* 800F2F6C 000EDE6C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800F2F70 000EDE70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F2F74 000EDE74  7C 08 03 A6 */	mtlr r0
/* 800F2F78 000EDE78  38 21 00 20 */	addi r1, r1, 0x20
/* 800F2F7C 000EDE7C  4E 80 00 20 */	blr 

.global __OSShutdownDevices
__OSShutdownDevices:
/* 800F2F80 000EDE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F2F84 000EDE84  7C 08 02 A6 */	mflr r0
/* 800F2F88 000EDE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F2F8C 000EDE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 800F2F90 000EDE90  4B FB ED B5 */	bl _savegpr_27
/* 800F2F94 000EDE94  2C 03 00 04 */	cmpwi r3, 4
/* 800F2F98 000EDE98  7C 7B 1B 78 */	mr r27, r3
/* 800F2F9C 000EDE9C  40 80 00 10 */	bge lbl_800F2FAC
/* 800F2FA0 000EDEA0  2C 03 00 00 */	cmpwi r3, 0
/* 800F2FA4 000EDEA4  41 82 00 10 */	beq lbl_800F2FB4
/* 800F2FA8 000EDEA8  48 00 00 14 */	b lbl_800F2FBC
lbl_800F2FAC:
/* 800F2FAC 000EDEAC  2C 03 00 07 */	cmpwi r3, 7
/* 800F2FB0 000EDEB0  40 80 00 0C */	bge lbl_800F2FBC
lbl_800F2FB4:
/* 800F2FB4 000EDEB4  3B 80 00 00 */	li r28, 0
/* 800F2FB8 000EDEB8  48 00 00 08 */	b lbl_800F2FC0
lbl_800F2FBC:
/* 800F2FBC 000EDEBC  3B 80 00 01 */	li r28, 1
lbl_800F2FC0:
/* 800F2FC0 000EDEC0  4B FF B0 65 */	bl __OSStopAudioSystem
/* 800F2FC4 000EDEC4  2C 1C 00 00 */	cmpwi r28, 0
/* 800F2FC8 000EDEC8  40 82 00 10 */	bne lbl_800F2FD8
/* 800F2FCC 000EDECC  38 60 00 01 */	li r3, 1
/* 800F2FD0 000EDED0  4B FD 73 A5 */	bl __PADDisableRecalibration
/* 800F2FD4 000EDED4  7C 7D 1B 78 */	mr r29, r3
lbl_800F2FD8:
/* 800F2FD8 000EDED8  83 CD 9C 20 */	lwz r30, ShutdownFunctionQueue-_SDA_BASE_(r13)
/* 800F2FDC 000EDEDC  38 60 00 00 */	li r3, 0
/* 800F2FE0 000EDEE0  3B E0 00 00 */	li r31, 0
/* 800F2FE4 000EDEE4  48 00 00 40 */	b lbl_800F3024
lbl_800F2FE8:
/* 800F2FE8 000EDEE8  2C 1F 00 00 */	cmpwi r31, 0
/* 800F2FEC 000EDEEC  41 82 00 10 */	beq lbl_800F2FFC
/* 800F2FF0 000EDEF0  80 1E 00 04 */	lwz r0, 4(r30)
/* 800F2FF4 000EDEF4  7C 03 00 40 */	cmplw r3, r0
/* 800F2FF8 000EDEF8  40 82 00 34 */	bne lbl_800F302C
lbl_800F2FFC:
/* 800F2FFC 000EDEFC  81 9E 00 00 */	lwz r12, 0(r30)
/* 800F3000 000EDF00  7F 64 DB 78 */	mr r4, r27
/* 800F3004 000EDF04  38 60 00 00 */	li r3, 0
/* 800F3008 000EDF08  7D 89 03 A6 */	mtctr r12
/* 800F300C 000EDF0C  4E 80 04 21 */	bctrl 
/* 800F3010 000EDF10  7C 60 00 34 */	cntlzw r0, r3
/* 800F3014 000EDF14  80 7E 00 04 */	lwz r3, 4(r30)
/* 800F3018 000EDF18  54 00 D9 7E */	srwi r0, r0, 5
/* 800F301C 000EDF1C  83 DE 00 08 */	lwz r30, 8(r30)
/* 800F3020 000EDF20  7F FF 03 78 */	or r31, r31, r0
lbl_800F3024:
/* 800F3024 000EDF24  2C 1E 00 00 */	cmpwi r30, 0
/* 800F3028 000EDF28  40 82 FF C0 */	bne lbl_800F2FE8
lbl_800F302C:
/* 800F302C 000EDF2C  48 00 09 31 */	bl __OSSyncSram
/* 800F3030 000EDF30  7C 60 00 34 */	cntlzw r0, r3
/* 800F3034 000EDF34  54 00 D9 7E */	srwi r0, r0, 5
/* 800F3038 000EDF38  7F FF 03 79 */	or. r31, r31, r0
/* 800F303C 000EDF3C  40 82 FF 9C */	bne lbl_800F2FD8
lbl_800F3040:
/* 800F3040 000EDF40  48 00 09 1D */	bl __OSSyncSram
/* 800F3044 000EDF44  2C 03 00 00 */	cmpwi r3, 0
/* 800F3048 000EDF48  41 82 FF F8 */	beq lbl_800F3040
/* 800F304C 000EDF4C  4B FF E8 75 */	bl OSDisableInterrupts
/* 800F3050 000EDF50  83 ED 9C 20 */	lwz r31, ShutdownFunctionQueue-_SDA_BASE_(r13)
/* 800F3054 000EDF54  38 60 00 00 */	li r3, 0
/* 800F3058 000EDF58  3B C0 00 00 */	li r30, 0
/* 800F305C 000EDF5C  48 00 00 40 */	b lbl_800F309C
lbl_800F3060:
/* 800F3060 000EDF60  2C 1E 00 00 */	cmpwi r30, 0
/* 800F3064 000EDF64  41 82 00 10 */	beq lbl_800F3074
/* 800F3068 000EDF68  80 1F 00 04 */	lwz r0, 4(r31)
/* 800F306C 000EDF6C  7C 03 00 40 */	cmplw r3, r0
/* 800F3070 000EDF70  40 82 00 34 */	bne lbl_800F30A4
lbl_800F3074:
/* 800F3074 000EDF74  81 9F 00 00 */	lwz r12, 0(r31)
/* 800F3078 000EDF78  7F 64 DB 78 */	mr r4, r27
/* 800F307C 000EDF7C  38 60 00 01 */	li r3, 1
/* 800F3080 000EDF80  7D 89 03 A6 */	mtctr r12
/* 800F3084 000EDF84  4E 80 04 21 */	bctrl 
/* 800F3088 000EDF88  7C 60 00 34 */	cntlzw r0, r3
/* 800F308C 000EDF8C  80 7F 00 04 */	lwz r3, 4(r31)
/* 800F3090 000EDF90  54 00 D9 7E */	srwi r0, r0, 5
/* 800F3094 000EDF94  83 FF 00 08 */	lwz r31, 8(r31)
/* 800F3098 000EDF98  7F DE 03 78 */	or r30, r30, r0
lbl_800F309C:
/* 800F309C 000EDF9C  2C 1F 00 00 */	cmpwi r31, 0
/* 800F30A0 000EDFA0  40 82 FF C0 */	bne lbl_800F3060
lbl_800F30A4:
/* 800F30A4 000EDFA4  48 00 08 B9 */	bl __OSSyncSram
/* 800F30A8 000EDFA8  4B FF B2 C9 */	bl LCDisable
/* 800F30AC 000EDFAC  2C 1C 00 00 */	cmpwi r28, 0
/* 800F30B0 000EDFB0  40 82 00 0C */	bne lbl_800F30BC
/* 800F30B4 000EDFB4  7F A3 EB 78 */	mr r3, r29
/* 800F30B8 000EDFB8  4B FD 72 BD */	bl __PADDisableRecalibration
lbl_800F30BC:
/* 800F30BC 000EDFBC  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 800F30C0 000EDFC0  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 800F30C4 000EDFC4  48 00 00 2C */	b lbl_800F30F0
lbl_800F30C8:
/* 800F30C8 000EDFC8  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 800F30CC 000EDFCC  83 C3 02 FC */	lwz r30, 0x2fc(r3)
/* 800F30D0 000EDFD0  2C 00 00 04 */	cmpwi r0, 4
/* 800F30D4 000EDFD4  41 82 00 14 */	beq lbl_800F30E8
/* 800F30D8 000EDFD8  40 80 00 14 */	bge lbl_800F30EC
/* 800F30DC 000EDFDC  2C 00 00 01 */	cmpwi r0, 1
/* 800F30E0 000EDFE0  41 82 00 08 */	beq lbl_800F30E8
/* 800F30E4 000EDFE4  48 00 00 08 */	b lbl_800F30EC
lbl_800F30E8:
/* 800F30E8 000EDFE8  48 00 19 95 */	bl OSCancelThread
lbl_800F30EC:
/* 800F30EC 000EDFEC  7F C3 F3 78 */	mr r3, r30
lbl_800F30F0:
/* 800F30F0 000EDFF0  2C 03 00 00 */	cmpwi r3, 0
/* 800F30F4 000EDFF4  40 82 FF D4 */	bne lbl_800F30C8
/* 800F30F8 000EDFF8  39 61 00 20 */	addi r11, r1, 0x20
/* 800F30FC 000EDFFC  4B FB EC 95 */	bl _restgpr_27
/* 800F3100 000EE000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F3104 000EE004  7C 08 03 A6 */	mtlr r0
/* 800F3108 000EE008  38 21 00 20 */	addi r1, r1, 0x20
/* 800F310C 000EE00C  4E 80 00 20 */	blr 

.global OSShutdownSystem
OSShutdownSystem:
/* 800F3110 000EE010  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F3114 000EE014  7C 08 02 A6 */	mflr r0
/* 800F3118 000EE018  38 80 00 00 */	li r4, 0
/* 800F311C 000EE01C  38 A0 00 02 */	li r5, 2
/* 800F3120 000EE020  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F3124 000EE024  38 61 00 08 */	addi r3, r1, 8
/* 800F3128 000EE028  4B F1 0F DD */	bl memset
/* 800F312C 000EE02C  48 00 3E D9 */	bl func_800F7004
lbl_800F3130:
/* 800F3130 000EE030  48 00 3F 75 */	bl func_800F70A4
/* 800F3134 000EE034  28 03 00 01 */	cmplwi r3, 1
/* 800F3138 000EE038  41 82 FF F8 */	beq lbl_800F3130
/* 800F313C 000EE03C  38 61 00 08 */	addi r3, r1, 8
/* 800F3140 000EE040  48 00 59 45 */	bl func_800F8A84
/* 800F3144 000EE044  48 00 39 75 */	bl __OSStopPlayRecord
/* 800F3148 000EE048  48 00 32 81 */	bl __OSUnRegisterStateEvent
/* 800F314C 000EE04C  48 04 B1 31 */	bl func_8013E27C
/* 800F3150 000EE050  38 61 00 18 */	addi r3, r1, 0x18
/* 800F3154 000EE054  48 00 3C 31 */	bl __OSReadStateFlags
/* 800F3158 000EE058  48 04 B0 51 */	bl func_8013E1A8
/* 800F315C 000EE05C  28 03 00 02 */	cmplwi r3, 2
/* 800F3160 000EE060  41 82 00 10 */	beq lbl_800F3170
/* 800F3164 000EE064  38 00 00 03 */	li r0, 3
/* 800F3168 000EE068  98 01 00 1E */	stb r0, 0x1e(r1)
/* 800F316C 000EE06C  48 00 00 40 */	b lbl_800F31AC
lbl_800F3170:
/* 800F3170 000EE070  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 800F3174 000EE074  28 00 00 01 */	cmplwi r0, 1
/* 800F3178 000EE078  40 82 00 20 */	bne lbl_800F3198
/* 800F317C 000EE07C  38 61 00 0C */	addi r3, r1, 0xc
/* 800F3180 000EE080  48 00 0A 25 */	bl __OSGetRTCFlags
/* 800F3184 000EE084  2C 03 00 00 */	cmpwi r3, 0
/* 800F3188 000EE088  41 82 00 1C */	beq lbl_800F31A4
/* 800F318C 000EE08C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800F3190 000EE090  2C 00 00 00 */	cmpwi r0, 0
/* 800F3194 000EE094  41 82 00 10 */	beq lbl_800F31A4
lbl_800F3198:
/* 800F3198 000EE098  38 00 00 02 */	li r0, 2
/* 800F319C 000EE09C  98 01 00 1E */	stb r0, 0x1e(r1)
/* 800F31A0 000EE0A0  48 00 00 0C */	b lbl_800F31AC
lbl_800F31A4:
/* 800F31A4 000EE0A4  38 00 00 01 */	li r0, 1
/* 800F31A8 000EE0A8  98 01 00 1E */	stb r0, 0x1e(r1)
lbl_800F31AC:
/* 800F31AC 000EE0AC  88 01 00 08 */	lbz r0, 8(r1)
/* 800F31B0 000EE0B0  28 00 00 01 */	cmplwi r0, 1
/* 800F31B4 000EE0B4  40 82 00 10 */	bne lbl_800F31C4
/* 800F31B8 000EE0B8  38 00 00 05 */	li r0, 5
/* 800F31BC 000EE0BC  98 01 00 1D */	stb r0, 0x1d(r1)
/* 800F31C0 000EE0C0  48 00 00 0C */	b lbl_800F31CC
lbl_800F31C4:
/* 800F31C4 000EE0C4  38 00 00 01 */	li r0, 1
/* 800F31C8 000EE0C8  98 01 00 1D */	stb r0, 0x1d(r1)
lbl_800F31CC:
/* 800F31CC 000EE0CC  48 00 0A F5 */	bl __OSClearRTCFlags
/* 800F31D0 000EE0D0  38 61 00 18 */	addi r3, r1, 0x18
/* 800F31D4 000EE0D4  48 00 3A CD */	bl __OSWriteStateFlags
/* 800F31D8 000EE0D8  38 61 00 10 */	addi r3, r1, 0x10
/* 800F31DC 000EE0DC  4B FF 8C D5 */	bl __OSGetIOSRev
/* 800F31E0 000EE0E0  88 01 00 08 */	lbz r0, 8(r1)
/* 800F31E4 000EE0E4  28 00 00 01 */	cmplwi r0, 1
/* 800F31E8 000EE0E8  40 82 00 1C */	bne lbl_800F3204
/* 800F31EC 000EE0EC  48 00 0F A5 */	bl OSDisableScheduler
/* 800F31F0 000EE0F0  38 60 00 05 */	li r3, 5
/* 800F31F4 000EE0F4  4B FF FD 8D */	bl __OSShutdownDevices
/* 800F31F8 000EE0F8  48 00 0F D5 */	bl OSEnableScheduler
/* 800F31FC 000EE0FC  4B FF C4 75 */	bl __OSLaunchMenu
/* 800F3200 000EE100  48 00 00 14 */	b lbl_800F3214
lbl_800F3204:
/* 800F3204 000EE104  48 00 0F 8D */	bl OSDisableScheduler
/* 800F3208 000EE108  38 60 00 02 */	li r3, 2
/* 800F320C 000EE10C  4B FF FD 75 */	bl __OSShutdownDevices
/* 800F3210 000EE110  48 00 2F 99 */	bl __OSShutdownToSBY
lbl_800F3214:
/* 800F3214 000EE114  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F3218 000EE118  7C 08 03 A6 */	mtlr r0
/* 800F321C 000EE11C  38 21 00 40 */	addi r1, r1, 0x40
/* 800F3220 000EE120  4E 80 00 20 */	blr 

.global OSReturnToMenu
OSReturnToMenu:
/* 800F3224 000EE124  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F3228 000EE128  7C 08 02 A6 */	mflr r0
/* 800F322C 000EE12C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F3230 000EE130  48 00 38 89 */	bl __OSStopPlayRecord
/* 800F3234 000EE134  48 00 31 95 */	bl __OSUnRegisterStateEvent
/* 800F3238 000EE138  48 04 B0 45 */	bl func_8013E27C
/* 800F323C 000EE13C  38 61 00 10 */	addi r3, r1, 0x10
/* 800F3240 000EE140  48 00 3B 45 */	bl __OSReadStateFlags
/* 800F3244 000EE144  48 04 AF 65 */	bl func_8013E1A8
/* 800F3248 000EE148  28 03 00 02 */	cmplwi r3, 2
/* 800F324C 000EE14C  41 82 00 10 */	beq lbl_800F325C
/* 800F3250 000EE150  38 00 00 03 */	li r0, 3
/* 800F3254 000EE154  98 01 00 16 */	stb r0, 0x16(r1)
/* 800F3258 000EE158  48 00 00 40 */	b lbl_800F3298
lbl_800F325C:
/* 800F325C 000EE15C  88 01 00 16 */	lbz r0, 0x16(r1)
/* 800F3260 000EE160  28 00 00 01 */	cmplwi r0, 1
/* 800F3264 000EE164  40 82 00 20 */	bne lbl_800F3284
/* 800F3268 000EE168  38 61 00 08 */	addi r3, r1, 8
/* 800F326C 000EE16C  48 00 09 39 */	bl __OSGetRTCFlags
/* 800F3270 000EE170  2C 03 00 00 */	cmpwi r3, 0
/* 800F3274 000EE174  41 82 00 1C */	beq lbl_800F3290
/* 800F3278 000EE178  80 01 00 08 */	lwz r0, 8(r1)
/* 800F327C 000EE17C  2C 00 00 00 */	cmpwi r0, 0
/* 800F3280 000EE180  41 82 00 10 */	beq lbl_800F3290
lbl_800F3284:
/* 800F3284 000EE184  38 00 00 02 */	li r0, 2
/* 800F3288 000EE188  98 01 00 16 */	stb r0, 0x16(r1)
/* 800F328C 000EE18C  48 00 00 0C */	b lbl_800F3298
lbl_800F3290:
/* 800F3290 000EE190  38 00 00 01 */	li r0, 1
/* 800F3294 000EE194  98 01 00 16 */	stb r0, 0x16(r1)
lbl_800F3298:
/* 800F3298 000EE198  38 00 00 03 */	li r0, 3
/* 800F329C 000EE19C  98 01 00 15 */	stb r0, 0x15(r1)
/* 800F32A0 000EE1A0  48 00 0A 21 */	bl __OSClearRTCFlags
/* 800F32A4 000EE1A4  38 61 00 10 */	addi r3, r1, 0x10
/* 800F32A8 000EE1A8  48 00 39 F9 */	bl __OSWriteStateFlags
/* 800F32AC 000EE1AC  48 00 0E E5 */	bl OSDisableScheduler
/* 800F32B0 000EE1B0  38 60 00 05 */	li r3, 5
/* 800F32B4 000EE1B4  4B FF FC CD */	bl __OSShutdownDevices
/* 800F32B8 000EE1B8  48 00 0F 15 */	bl OSEnableScheduler
/* 800F32BC 000EE1BC  4B FF C3 B5 */	bl __OSLaunchMenu
/* 800F32C0 000EE1C0  48 00 0E D1 */	bl OSDisableScheduler
/* 800F32C4 000EE1C4  48 00 B3 4D */	bl func_800FE610
/* 800F32C8 000EE1C8  48 00 2F 59 */	bl __OSHotReset
/* 800F32CC 000EE1CC  3C 60 80 3A */	lis r3, lbl_8039D1F8@ha
/* 800F32D0 000EE1D0  3C A0 80 3A */	lis r5, lbl_8039D204@ha
/* 800F32D4 000EE1D4  38 63 D1 F8 */	addi r3, r3, lbl_8039D1F8@l
/* 800F32D8 000EE1D8  38 80 03 4B */	li r4, 0x34b
/* 800F32DC 000EE1DC  38 A5 D2 04 */	addi r5, r5, lbl_8039D204@l
/* 800F32E0 000EE1E0  4C C6 31 82 */	crclr 6
/* 800F32E4 000EE1E4  4B FF BC C5 */	bl OSPanic
/* 800F32E8 000EE1E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F32EC 000EE1EC  7C 08 03 A6 */	mtlr r0
/* 800F32F0 000EE1F0  38 21 00 30 */	addi r1, r1, 0x30
/* 800F32F4 000EE1F4  4E 80 00 20 */	blr 

.global OSGetResetCode
OSGetResetCode:
/* 800F32F8 000EE1F8  3C 60 80 41 */	lis r3, __OSRebootParams@ha
/* 800F32FC 000EE1FC  80 03 40 E0 */	lwz r0, __OSRebootParams@l(r3)
/* 800F3300 000EE200  2C 00 00 00 */	cmpwi r0, 0
/* 800F3304 000EE204  41 82 00 14 */	beq lbl_800F3318
/* 800F3308 000EE208  38 63 40 E0 */	addi r3, r3, 0x40e0
/* 800F330C 000EE20C  80 03 00 04 */	lwz r0, 4(r3)
/* 800F3310 000EE210  64 03 80 00 */	oris r3, r0, 0x8000
/* 800F3314 000EE214  4E 80 00 20 */	blr 
lbl_800F3318:
/* 800F3318 000EE218  3C 60 CC 00 */	lis r3, 0xCC003024@ha
/* 800F331C 000EE21C  80 03 30 24 */	lwz r0, 0xCC003024@l(r3)
/* 800F3320 000EE220  54 03 E8 FE */	srwi r3, r0, 3
/* 800F3324 000EE224  4E 80 00 20 */	blr 

.global OSResetSystem
OSResetSystem:
/* 800F3328 000EE228  3C 60 80 3A */	lis r3, lbl_8039D1F8@ha
/* 800F332C 000EE22C  3C A0 80 3A */	lis r5, lbl_8039D234@ha
/* 800F3330 000EE230  38 63 D1 F8 */	addi r3, r3, lbl_8039D1F8@l
/* 800F3334 000EE234  38 80 03 FC */	li r4, 0x3fc
/* 800F3338 000EE238  38 A5 D2 34 */	addi r5, r5, lbl_8039D234@l
/* 800F333C 000EE23C  4C C6 31 82 */	crclr 6
/* 800F3340 000EE240  4B FF BC 68 */	b OSPanic

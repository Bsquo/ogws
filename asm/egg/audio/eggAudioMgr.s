.include "macros.inc"

.section .data, "wa"
.balign 8
.global __vt__Q23EGG14SimpleAudioMgr
__vt__Q23EGG14SimpleAudioMgr:
    .long 0
    .long 0
    .long initialize__Q23EGG14SimpleAudioMgrFPQ33EGG9IAudioMgr3Arg
    .long calc__Q23EGG14SimpleAudioMgrFv
    .long 0
    .long 0
    .long loadState__Q23EGG12SoundHeapMgrFl
    .long getCurrentLevel__Q23EGG12SoundHeapMgrFv
    .long saveState__Q23EGG12SoundHeapMgrFv
    .long 0
    .long 0
    .long func_800B0F10
    .long openArchive__Q23EGG9ArcPlayerFPCcPQ34nw4r3snd9SoundHeapQ33EGG9ArcPlayer12SARC_STORAGEP9ARCHandle
    .long 0x800afb08
    .long 0x800afb00
    .long 0x800afaf8
    .long 0x800afab0
    .long setupMemoryArchive__Q23EGG9ArcPlayerFPCvPQ34nw4r3snd9SoundHeapl
    .long 0x800afaa8
    .long 0x800afac8
    .long 0x800afad0
    .long 0x800afad8
    .long 0x800afac0
    .long startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl
    .long startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi
    .long startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
    .long prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl
    .long prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi
    .long prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
    .long holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl
    .long holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi
    .long holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
    .long __dt__Q23EGG14SimpleAudioMgrFv
    .long func_800B0ECC
    .long func_800B0ED4
    .long func_800B0EDC
    .long func_800B0EE4
    .long func_800B0EEC
    .long func_800B0EF4
    .long func_800B0EFC
    .long func_800B0F04
    .long 0
.global __vt__Q23EGG9IAudioMgr
__vt__Q23EGG9IAudioMgr:
    .long 0
    .long 0
    .long initialize__Q23EGG9IAudioMgrFPQ33EGG9IAudioMgr3Arg
    .long 0
.global __vt__Q23EGG12SoundHeapMgr
__vt__Q23EGG12SoundHeapMgr:
    .long 0
    .long 0
    .long loadState__Q23EGG12SoundHeapMgrFl
    .long getCurrentLevel__Q23EGG12SoundHeapMgrFv
    .long saveState__Q23EGG12SoundHeapMgrFv
    .long 0

.section .rodata, "a"
.balign 8
.global lbl_8037B0E8
lbl_8037B0E8:
	.string "eggAudioMgr.cpp"
    .string "arg_"

.section .text, "ax"
.global __ct__Q33EGG14SimpleAudioMgr17SimpleAudioMgrArgFv
__ct__Q33EGG14SimpleAudioMgr17SimpleAudioMgrArgFv:
/* 800B0B90 000ABA90  3C 80 00 8D */	lis r4, 0x008CA000@ha
/* 800B0B94 000ABA94  38 E0 00 00 */	li r7, 0
/* 800B0B98 000ABA98  38 04 A0 00 */	addi r0, r4, 0x008CA000@l
/* 800B0B9C 000ABA9C  38 C0 00 04 */	li r6, 4
/* 800B0BA0 000ABAA0  38 A0 00 03 */	li r5, 3
/* 800B0BA4 000ABAA4  38 80 00 01 */	li r4, 1
/* 800B0BA8 000ABAA8  90 E3 00 00 */	stw r7, 0(r3)
/* 800B0BAC 000ABAAC  90 C3 00 08 */	stw r6, 8(r3)
/* 800B0BB0 000ABAB0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 800B0BB4 000ABAB4  90 E3 00 04 */	stw r7, 4(r3)
/* 800B0BB8 000ABAB8  90 E3 00 10 */	stw r7, 0x10(r3)
/* 800B0BBC 000ABABC  90 E3 00 14 */	stw r7, 0x14(r3)
/* 800B0BC0 000ABAC0  90 83 00 18 */	stw r4, 0x18(r3)
/* 800B0BC4 000ABAC4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800B0BC8 000ABAC8  4E 80 00 20 */	blr 

.global __ct__Q23EGG14SimpleAudioMgrFv
__ct__Q23EGG14SimpleAudioMgrFv:
/* 800B0BCC 000ABACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B0BD0 000ABAD0  7C 08 02 A6 */	mflr r0
/* 800B0BD4 000ABAD4  3C A0 80 3A */	lis r5, __vt__Q23EGG9IAudioMgr@ha
/* 800B0BD8 000ABAD8  3C 80 80 3A */	lis r4, __vt__Q23EGG12SoundHeapMgr@ha
/* 800B0BDC 000ABADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B0BE0 000ABAE0  38 A5 87 38 */	addi r5, r5, __vt__Q23EGG9IAudioMgr@l
/* 800B0BE4 000ABAE4  38 84 87 48 */	addi r4, r4, __vt__Q23EGG12SoundHeapMgr@l
/* 800B0BE8 000ABAE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B0BEC 000ABAEC  7C 7F 1B 78 */	mr r31, r3
/* 800B0BF0 000ABAF0  90 A3 00 00 */	stw r5, 0(r3)
/* 800B0BF4 000ABAF4  90 83 00 08 */	stw r4, 8(r3)
/* 800B0BF8 000ABAF8  38 63 00 0C */	addi r3, r3, 0xc
/* 800B0BFC 000ABAFC  4B F9 4F B1 */	bl __ct__Q34nw4r3snd9SoundHeapFv
/* 800B0C00 000ABB00  38 7F 00 68 */	addi r3, r31, 0x68
/* 800B0C04 000ABB04  38 9F 00 88 */	addi r4, r31, 0x88
/* 800B0C08 000ABB08  38 A0 00 04 */	li r5, 4
/* 800B0C0C 000ABB0C  48 04 14 51 */	bl OSInitMessageQueue
/* 800B0C10 000ABB10  38 7F 00 98 */	addi r3, r31, 0x98
/* 800B0C14 000ABB14  38 9F 00 B8 */	addi r4, r31, 0xb8
/* 800B0C18 000ABB18  38 A0 00 04 */	li r5, 4
/* 800B0C1C 000ABB1C  48 04 14 41 */	bl OSInitMessageQueue
/* 800B0C20 000ABB20  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 800B0C24 000ABB24  38 9F 00 E8 */	addi r4, r31, 0xe8
/* 800B0C28 000ABB28  38 A0 00 04 */	li r5, 4
/* 800B0C2C 000ABB2C  48 04 14 31 */	bl OSInitMessageQueue
/* 800B0C30 000ABB30  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 800B0C34 000ABB34  38 9F 00 0C */	addi r4, r31, 0xc
/* 800B0C38 000ABB38  4B FF D6 15 */	bl __ct__Q23EGG9ArcPlayerFPQ34nw4r3snd9SoundHeap
/* 800B0C3C 000ABB3C  38 7F 06 AC */	addi r3, r31, 0x6ac
/* 800B0C40 000ABB40  48 00 02 D9 */	bl __ct__Q23EGG11AudioSystemFv
/* 800B0C44 000ABB44  3C A0 80 3A */	lis r5, __vt__Q23EGG14SimpleAudioMgr@ha
/* 800B0C48 000ABB48  38 00 00 00 */	li r0, 0
/* 800B0C4C 000ABB4C  38 A5 86 90 */	addi r5, r5, __vt__Q23EGG14SimpleAudioMgr@l
/* 800B0C50 000ABB50  98 1F 00 04 */	stb r0, 4(r31)
/* 800B0C54 000ABB54  38 85 00 10 */	addi r4, r5, 0x10
/* 800B0C58 000ABB58  7F E3 FB 78 */	mr r3, r31
/* 800B0C5C 000ABB5C  38 05 00 24 */	addi r0, r5, 0x24
/* 800B0C60 000ABB60  90 BF 00 00 */	stw r5, 0(r31)
/* 800B0C64 000ABB64  90 9F 00 08 */	stw r4, 8(r31)
/* 800B0C68 000ABB68  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 800B0C6C 000ABB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B0C70 000ABB70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B0C74 000ABB74  7C 08 03 A6 */	mtlr r0
/* 800B0C78 000ABB78  38 21 00 10 */	addi r1, r1, 0x10
/* 800B0C7C 000ABB7C  4E 80 00 20 */	blr 

.global __dt__Q23EGG14SimpleAudioMgrFv
__dt__Q23EGG14SimpleAudioMgrFv:
/* 800B0C80 000ABB80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B0C84 000ABB84  7C 08 02 A6 */	mflr r0
/* 800B0C88 000ABB88  2C 03 00 00 */	cmpwi r3, 0
/* 800B0C8C 000ABB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B0C90 000ABB90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B0C94 000ABB94  7C 9F 23 78 */	mr r31, r4
/* 800B0C98 000ABB98  93 C1 00 08 */	stw r30, 8(r1)
/* 800B0C9C 000ABB9C  7C 7E 1B 78 */	mr r30, r3
/* 800B0CA0 000ABBA0  41 82 00 50 */	beq lbl_800B0CF0
/* 800B0CA4 000ABBA4  38 80 00 00 */	li r4, 0
/* 800B0CA8 000ABBA8  38 63 06 AC */	addi r3, r3, 0x6ac
/* 800B0CAC 000ABBAC  48 00 02 89 */	bl __dt__Q23EGG11AudioSystemFv
/* 800B0CB0 000ABBB0  38 7E 00 F8 */	addi r3, r30, 0xf8
/* 800B0CB4 000ABBB4  38 80 00 00 */	li r4, 0
/* 800B0CB8 000ABBB8  4B FF D6 29 */	bl __dt__Q23EGG9ArcPlayerFv
/* 800B0CBC 000ABBBC  34 7E 00 08 */	addic. r3, r30, 8
/* 800B0CC0 000ABBC0  41 82 00 20 */	beq lbl_800B0CE0
/* 800B0CC4 000ABBC4  3C 80 80 3A */	lis r4, __vt__Q23EGG12SoundHeapMgr@ha
/* 800B0CC8 000ABBC8  38 84 87 48 */	addi r4, r4, __vt__Q23EGG12SoundHeapMgr@l
/* 800B0CCC 000ABBCC  90 9E 00 08 */	stw r4, 8(r30)
/* 800B0CD0 000ABBD0  4B FF FE B9 */	bl destroySoundHeap__Q23EGG12SoundHeapMgrFv
/* 800B0CD4 000ABBD4  38 7E 00 0C */	addi r3, r30, 0xc
/* 800B0CD8 000ABBD8  38 80 FF FF */	li r4, -1
/* 800B0CDC 000ABBDC  4B F9 4F 19 */	bl __dt__Q34nw4r3snd9SoundHeapFv
lbl_800B0CE0:
/* 800B0CE0 000ABBE0  2C 1F 00 00 */	cmpwi r31, 0
/* 800B0CE4 000ABBE4  40 81 00 0C */	ble lbl_800B0CF0
/* 800B0CE8 000ABBE8  7F C3 F3 78 */	mr r3, r30
/* 800B0CEC 000ABBEC  4B FF 25 99 */	bl __dl__FPv
lbl_800B0CF0:
/* 800B0CF0 000ABBF0  7F C3 F3 78 */	mr r3, r30
/* 800B0CF4 000ABBF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B0CF8 000ABBF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B0CFC 000ABBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B0D00 000ABC00  7C 08 03 A6 */	mtlr r0
/* 800B0D04 000ABC04  38 21 00 10 */	addi r1, r1, 0x10
/* 800B0D08 000ABC08  4E 80 00 20 */	blr 

.global initialize__Q23EGG14SimpleAudioMgrFPQ33EGG9IAudioMgr3Arg
initialize__Q23EGG14SimpleAudioMgrFPQ33EGG9IAudioMgr3Arg:
/* 800B0D0C 000ABC0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800B0D10 000ABC10  7C 08 02 A6 */	mflr r0
/* 800B0D14 000ABC14  2C 04 00 00 */	cmpwi r4, 0
/* 800B0D18 000ABC18  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B0D1C 000ABC1C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800B0D20 000ABC20  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800B0D24 000ABC24  7C 9E 23 78 */	mr r30, r4
/* 800B0D28 000ABC28  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800B0D2C 000ABC2C  7C 7D 1B 78 */	mr r29, r3
/* 800B0D30 000ABC30  40 82 00 1C */	bne lbl_800B0D4C
/* 800B0D34 000ABC34  3C 60 80 38 */	lis r3, lbl_8037B0E8@ha
/* 800B0D38 000ABC38  38 80 00 5C */	li r4, 0x5c
/* 800B0D3C 000ABC3C  38 63 B0 E8 */	addi r3, r3, lbl_8037B0E8@l
/* 800B0D40 000ABC40  38 A3 00 10 */	addi r5, r3, 0x10
/* 800B0D44 000ABC44  4C C6 31 82 */	crclr 6
/* 800B0D48 000ABC48  4B FF 11 C1 */	bl system_halt
lbl_800B0D4C:
/* 800B0D4C 000ABC4C  38 60 00 00 */	li r3, 0
/* 800B0D50 000ABC50  48 05 29 31 */	bl AIInit
/* 800B0D54 000ABC54  48 05 36 FD */	bl AXInit
/* 800B0D58 000ABC58  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800B0D5C 000ABC5C  2C 00 00 00 */	cmpwi r0, 0
/* 800B0D60 000ABC60  41 82 00 38 */	beq lbl_800B0D98
/* 800B0D64 000ABC64  80 9E 00 00 */	lwz r4, 0(r30)
/* 800B0D68 000ABC68  2C 04 00 00 */	cmpwi r4, 0
/* 800B0D6C 000ABC6C  41 82 00 2C */	beq lbl_800B0D98
/* 800B0D70 000ABC70  38 61 00 18 */	addi r3, r1, 0x18
/* 800B0D74 000ABC74  38 A0 00 20 */	li r5, 0x20
/* 800B0D78 000ABC78  4B FF 26 A5 */	bl __ct__Q23EGG9AllocatorFPQ23EGG4Heapl
/* 800B0D7C 000ABC7C  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 800B0D80 000ABC80  38 7D 00 08 */	addi r3, r29, 8
/* 800B0D84 000ABC84  38 81 00 18 */	addi r4, r1, 0x18
/* 800B0D88 000ABC88  4B FF FD 75 */	bl createSoundHeap__Q23EGG12SoundHeapMgrFPQ23EGG9AllocatorUl
/* 800B0D8C 000ABC8C  38 61 00 18 */	addi r3, r1, 0x18
/* 800B0D90 000ABC90  38 80 FF FF */	li r4, -1
/* 800B0D94 000ABC94  4B FF 26 D9 */	bl __dt__Q23EGG9AllocatorFv
lbl_800B0D98:
/* 800B0D98 000ABC98  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800B0D9C 000ABC9C  2C 03 00 00 */	cmpwi r3, 0
/* 800B0DA0 000ABCA0  40 82 00 20 */	bne lbl_800B0DC0
/* 800B0DA4 000ABCA4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800B0DA8 000ABCA8  2C 00 00 00 */	cmpwi r0, 0
/* 800B0DAC 000ABCAC  40 82 00 14 */	bne lbl_800B0DC0
/* 800B0DB0 000ABCB0  80 7E 00 08 */	lwz r3, 8(r30)
/* 800B0DB4 000ABCB4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 800B0DB8 000ABCB8  4B F9 67 99 */	bl InitSoundSystem__Q34nw4r3snd11SoundSystemFll
/* 800B0DBC 000ABCBC  48 00 00 94 */	b lbl_800B0E50
lbl_800B0DC0:
/* 800B0DC0 000ABCC0  2C 03 00 00 */	cmpwi r3, 0
/* 800B0DC4 000ABCC4  40 82 00 0C */	bne lbl_800B0DD0
/* 800B0DC8 000ABCC8  38 00 40 00 */	li r0, 0x4000
/* 800B0DCC 000ABCCC  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_800B0DD0:
/* 800B0DD0 000ABCD0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800B0DD4 000ABCD4  2C 00 00 00 */	cmpwi r0, 0
/* 800B0DD8 000ABCD8  40 82 00 0C */	bne lbl_800B0DE4
/* 800B0DDC 000ABCDC  38 00 40 00 */	li r0, 0x4000
/* 800B0DE0 000ABCE0  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_800B0DE4:
/* 800B0DE4 000ABCE4  38 80 40 00 */	li r4, 0x4000
/* 800B0DE8 000ABCE8  38 60 00 04 */	li r3, 4
/* 800B0DEC 000ABCEC  38 00 00 03 */	li r0, 3
/* 800B0DF0 000ABCF0  90 61 00 08 */	stw r3, 8(r1)
/* 800B0DF4 000ABCF4  38 61 00 08 */	addi r3, r1, 8
/* 800B0DF8 000ABCF8  90 81 00 0C */	stw r4, 0xc(r1)
/* 800B0DFC 000ABCFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 800B0E00 000ABD00  90 81 00 14 */	stw r4, 0x14(r1)
/* 800B0E04 000ABD04  80 1E 00 08 */	lwz r0, 8(r30)
/* 800B0E08 000ABD08  90 01 00 08 */	stw r0, 8(r1)
/* 800B0E0C 000ABD0C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800B0E10 000ABD10  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B0E14 000ABD14  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800B0E18 000ABD18  90 01 00 10 */	stw r0, 0x10(r1)
/* 800B0E1C 000ABD1C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800B0E20 000ABD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B0E24 000ABD24  4B F9 67 95 */	bl GetRequiredMemSize__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParam
/* 800B0E28 000ABD28  7C 7F 1B 78 */	mr r31, r3
/* 800B0E2C 000ABD2C  38 7D 00 0C */	addi r3, r29, 0xc
/* 800B0E30 000ABD30  7F E4 FB 78 */	mr r4, r31
/* 800B0E34 000ABD34  38 A0 00 00 */	li r5, 0
/* 800B0E38 000ABD38  38 C0 00 00 */	li r6, 0
/* 800B0E3C 000ABD3C  4B F9 4E A9 */	bl Alloc__Q34nw4r3snd9SoundHeapFUlPFPvUlPv_vPv
/* 800B0E40 000ABD40  7C 64 1B 78 */	mr r4, r3
/* 800B0E44 000ABD44  7F E5 FB 78 */	mr r5, r31
/* 800B0E48 000ABD48  38 61 00 08 */	addi r3, r1, 8
/* 800B0E4C 000ABD4C  4B F9 67 D1 */	bl InitSoundSystem__Q34nw4r3snd11SoundSystemFRCQ44nw4r3snd11SoundSystem16SoundSystemParamPvUl
lbl_800B0E50:
/* 800B0E50 000ABD50  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 800B0E54 000ABD54  38 7D 00 F8 */	addi r3, r29, 0xf8
/* 800B0E58 000ABD58  4B FF D5 09 */	bl setSteamBlocks__Q23EGG9ArcPlayerFUl
/* 800B0E5C 000ABD5C  38 00 00 01 */	li r0, 1
/* 800B0E60 000ABD60  98 1D 00 04 */	stb r0, 4(r29)
/* 800B0E64 000ABD64  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800B0E68 000ABD68  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800B0E6C 000ABD6C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 800B0E70 000ABD70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800B0E74 000ABD74  7C 08 03 A6 */	mtlr r0
/* 800B0E78 000ABD78  38 21 00 40 */	addi r1, r1, 0x40
/* 800B0E7C 000ABD7C  4E 80 00 20 */	blr 

.global calc__Q23EGG14SimpleAudioMgrFv
calc__Q23EGG14SimpleAudioMgrFv:
/* 800B0E80 000ABD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B0E84 000ABD84  7C 08 02 A6 */	mflr r0
/* 800B0E88 000ABD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B0E8C 000ABD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B0E90 000ABD90  7C 7F 1B 78 */	mr r31, r3
/* 800B0E94 000ABD94  38 63 06 AC */	addi r3, r3, 0x6ac
/* 800B0E98 000ABD98  48 00 00 DD */	bl calc__Q23EGG11AudioSystemFv
/* 800B0E9C 000ABD9C  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 800B0EA0 000ABDA0  2C 00 00 02 */	cmpwi r0, 2
/* 800B0EA4 000ABDA4  40 82 00 0C */	bne lbl_800B0EB0
/* 800B0EA8 000ABDA8  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 800B0EAC 000ABDAC  4B FF E1 9D */	bl stopAllSound__Q23EGG9ArcPlayerFv
lbl_800B0EB0:
/* 800B0EB0 000ABDB0  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 800B0EB4 000ABDB4  4B FF E1 7D */	bl calc__Q23EGG9ArcPlayerFv
/* 800B0EB8 000ABDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B0EBC 000ABDBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B0EC0 000ABDC0  7C 08 03 A6 */	mtlr r0
/* 800B0EC4 000ABDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B0EC8 000ABDC8  4E 80 00 20 */	blr 

.global func_800B0ECC
func_800B0ECC:
/* 800B0ECC 000ABDCC  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0ED0 000ABDD0  4B FF D5 6C */	b openDvdArchive__Q23EGG9ArcPlayerFPCcPQ34nw4r3snd9SoundHeap

.global func_800B0ED4
func_800B0ED4:
/* 800B0ED4 000ABDD4  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0ED8 000ABDD8  4B FF D7 88 */	b openNandArchive__Q23EGG9ArcPlayerFPCcPQ34nw4r3snd9SoundHeap

.global func_800B0EDC
func_800B0EDC:
/* 800B0EDC 000ABDDC  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0EE0 000ABDE0  4B FF D9 A4 */	b openCntArchive__Q23EGG9ArcPlayerFPCcP9ARCHandlePQ34nw4r3snd9SoundHeap

.global func_800B0EE4
func_800B0EE4:
/* 800B0EE4 000ABDE4  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0EE8 000ABDE8  4B FF DB CC */	b setupMemoryArchive__Q23EGG9ArcPlayerFPCvPQ34nw4r3snd9SoundHeap

.global func_800B0EEC
func_800B0EEC:
/* 800B0EEC 000ABDEC  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0EF0 000ABDF0  4B FF DD 5C */	b closeArchive__Q23EGG9ArcPlayerFv

.global func_800B0EF4
func_800B0EF4:
/* 800B0EF4 000ABDF4  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0EF8 000ABDF8  4B FF DD E4 */	b loadGroup__Q23EGG9ArcPlayerFUiPQ34nw4r3snd9SoundHeapUl

.global func_800B0EFC
func_800B0EFC:
/* 800B0EFC 000ABDFC  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0F00 000ABE00  4B FF DE F8 */	b loadGroup__Q23EGG9ArcPlayerFiPQ34nw4r3snd9SoundHeapUl 

.global func_800B0F04
func_800B0F04:
/* 800B0F04 000ABE04  38 63 00 F8 */	addi r3, r3, 0xf8
/* 800B0F08 000ABE08  4B FF E0 0C */	b loadGroup__Q23EGG9ArcPlayerFPCcPQ34nw4r3snd9SoundHeapUl

.global initialize__Q23EGG9IAudioMgrFPQ33EGG9IAudioMgr3Arg
initialize__Q23EGG9IAudioMgrFPQ33EGG9IAudioMgr3Arg:
/* 800B0F0C 000ABE0C  4E 80 00 20 */	blr 

.global func_800B0F10
func_800B0F10:
/* 800B0F10 000ABE10  38 63 FF 08 */	addi r3, r3, -248
/* 800B0F14 000ABE14  4B FF FD 6C */	b __dt__Q23EGG14SimpleAudioMgrFv

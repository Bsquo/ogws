.include "macros.inc"

.section .text, "ax"
.global HandlePositionFileSupportRequest
HandlePositionFileSupportRequest:
/* 800C323C 000BE13C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800C3240 000BE140  7C 08 02 A6 */	mflr r0
/* 800C3244 000BE144  90 01 00 74 */	stw r0, 0x74(r1)
/* 800C3248 000BE148  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800C324C 000BE14C  7C BF 2B 78 */	mr r31, r5
/* 800C3250 000BE150  38 A0 00 40 */	li r5, 0x40
/* 800C3254 000BE154  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800C3258 000BE158  7C DE 33 78 */	mr r30, r6
/* 800C325C 000BE15C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800C3260 000BE160  7C 9D 23 78 */	mr r29, r4
/* 800C3264 000BE164  38 80 00 00 */	li r4, 0
/* 800C3268 000BE168  93 81 00 60 */	stw r28, 0x60(r1)
/* 800C326C 000BE16C  7C 7C 1B 78 */	mr r28, r3
/* 800C3270 000BE170  38 61 00 14 */	addi r3, r1, 0x14
/* 800C3274 000BE174  4B F4 0E C1 */	bl TRK_memset
/* 800C3278 000BE178  38 60 00 D4 */	li r3, 0xd4
/* 800C327C 000BE17C  38 00 00 40 */	li r0, 0x40
/* 800C3280 000BE180  98 61 00 18 */	stb r3, 0x18(r1)
/* 800C3284 000BE184  38 61 00 0C */	addi r3, r1, 0xc
/* 800C3288 000BE188  38 81 00 08 */	addi r4, r1, 8
/* 800C328C 000BE18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3290 000BE190  93 81 00 1C */	stw r28, 0x1c(r1)
/* 800C3294 000BE194  80 1D 00 00 */	lwz r0, 0(r29)
/* 800C3298 000BE198  90 01 00 20 */	stw r0, 0x20(r1)
/* 800C329C 000BE19C  9B E1 00 24 */	stb r31, 0x24(r1)
/* 800C32A0 000BE1A0  4B FF EA 05 */	bl TRKGetFreeBuffer
/* 800C32A4 000BE1A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C32A8 000BE1A8  40 82 00 18 */	bne lbl_800C32C0
/* 800C32AC 000BE1AC  80 61 00 08 */	lwz r3, 8(r1)
/* 800C32B0 000BE1B0  38 81 00 14 */	addi r4, r1, 0x14
/* 800C32B4 000BE1B4  38 A0 00 40 */	li r5, 0x40
/* 800C32B8 000BE1B8  4B FF E6 59 */	bl TRKAppendBuffer_ui8
/* 800C32BC 000BE1BC  7C 7F 1B 78 */	mr r31, r3
lbl_800C32C0:
/* 800C32C0 000BE1C0  2C 1F 00 00 */	cmpwi r31, 0
/* 800C32C4 000BE1C4  40 82 00 5C */	bne lbl_800C3320
/* 800C32C8 000BE1C8  38 60 00 00 */	li r3, 0
/* 800C32CC 000BE1CC  38 00 FF FF */	li r0, -1
/* 800C32D0 000BE1D0  90 7E 00 00 */	stw r3, 0(r30)
/* 800C32D4 000BE1D4  38 81 00 10 */	addi r4, r1, 0x10
/* 800C32D8 000BE1D8  38 A0 00 03 */	li r5, 3
/* 800C32DC 000BE1DC  38 C0 00 03 */	li r6, 3
/* 800C32E0 000BE1E0  90 1D 00 00 */	stw r0, 0(r29)
/* 800C32E4 000BE1E4  38 E0 00 00 */	li r7, 0
/* 800C32E8 000BE1E8  80 61 00 08 */	lwz r3, 8(r1)
/* 800C32EC 000BE1EC  48 00 02 65 */	bl TRKRequestSend
/* 800C32F0 000BE1F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C32F4 000BE1F4  40 82 00 24 */	bne lbl_800C3318
/* 800C32F8 000BE1F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C32FC 000BE1FC  4B FF E9 7D */	bl TRKGetBuffer
/* 800C3300 000BE200  28 03 00 00 */	cmplwi r3, 0
/* 800C3304 000BE204  41 82 00 14 */	beq lbl_800C3318
/* 800C3308 000BE208  80 03 00 20 */	lwz r0, 0x20(r3)
/* 800C330C 000BE20C  90 1E 00 00 */	stw r0, 0(r30)
/* 800C3310 000BE210  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800C3314 000BE214  90 1D 00 00 */	stw r0, 0(r29)
lbl_800C3318:
/* 800C3318 000BE218  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C331C 000BE21C  4B FF E8 F9 */	bl TRKReleaseBuffer
lbl_800C3320:
/* 800C3320 000BE220  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800C3324 000BE224  4B FF E8 F1 */	bl TRKReleaseBuffer
/* 800C3328 000BE228  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800C332C 000BE22C  7F E3 FB 78 */	mr r3, r31
/* 800C3330 000BE230  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800C3334 000BE234  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800C3338 000BE238  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800C333C 000BE23C  83 81 00 60 */	lwz r28, 0x60(r1)
/* 800C3340 000BE240  7C 08 03 A6 */	mtlr r0
/* 800C3344 000BE244  38 21 00 70 */	addi r1, r1, 0x70
/* 800C3348 000BE248  4E 80 00 20 */	blr 

.global HandleCloseFileSupportRequest
HandleCloseFileSupportRequest:
/* 800C334C 000BE24C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800C3350 000BE250  7C 08 02 A6 */	mflr r0
/* 800C3354 000BE254  38 A0 00 40 */	li r5, 0x40
/* 800C3358 000BE258  90 01 00 74 */	stw r0, 0x74(r1)
/* 800C335C 000BE25C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800C3360 000BE260  7C 7F 1B 78 */	mr r31, r3
/* 800C3364 000BE264  38 61 00 14 */	addi r3, r1, 0x14
/* 800C3368 000BE268  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800C336C 000BE26C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800C3370 000BE270  7C 9D 23 78 */	mr r29, r4
/* 800C3374 000BE274  38 80 00 00 */	li r4, 0
/* 800C3378 000BE278  4B F4 0D BD */	bl TRK_memset
/* 800C337C 000BE27C  38 60 00 D3 */	li r3, 0xd3
/* 800C3380 000BE280  38 00 00 40 */	li r0, 0x40
/* 800C3384 000BE284  98 61 00 18 */	stb r3, 0x18(r1)
/* 800C3388 000BE288  38 61 00 0C */	addi r3, r1, 0xc
/* 800C338C 000BE28C  38 81 00 08 */	addi r4, r1, 8
/* 800C3390 000BE290  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3394 000BE294  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C3398 000BE298  4B FF E9 0D */	bl TRKGetFreeBuffer
/* 800C339C 000BE29C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C33A0 000BE2A0  40 82 00 18 */	bne lbl_800C33B8
/* 800C33A4 000BE2A4  80 61 00 08 */	lwz r3, 8(r1)
/* 800C33A8 000BE2A8  38 81 00 14 */	addi r4, r1, 0x14
/* 800C33AC 000BE2AC  38 A0 00 40 */	li r5, 0x40
/* 800C33B0 000BE2B0  4B FF E5 61 */	bl TRKAppendBuffer_ui8
/* 800C33B4 000BE2B4  7C 7F 1B 78 */	mr r31, r3
lbl_800C33B8:
/* 800C33B8 000BE2B8  2C 1F 00 00 */	cmpwi r31, 0
/* 800C33BC 000BE2BC  40 82 00 50 */	bne lbl_800C340C
/* 800C33C0 000BE2C0  38 00 00 00 */	li r0, 0
/* 800C33C4 000BE2C4  38 81 00 10 */	addi r4, r1, 0x10
/* 800C33C8 000BE2C8  90 1D 00 00 */	stw r0, 0(r29)
/* 800C33CC 000BE2CC  38 A0 00 03 */	li r5, 3
/* 800C33D0 000BE2D0  38 C0 00 03 */	li r6, 3
/* 800C33D4 000BE2D4  38 E0 00 00 */	li r7, 0
/* 800C33D8 000BE2D8  80 61 00 08 */	lwz r3, 8(r1)
/* 800C33DC 000BE2DC  48 00 01 75 */	bl TRKRequestSend
/* 800C33E0 000BE2E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C33E4 000BE2E4  40 82 00 10 */	bne lbl_800C33F4
/* 800C33E8 000BE2E8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C33EC 000BE2EC  4B FF E8 8D */	bl TRKGetBuffer
/* 800C33F0 000BE2F0  7C 7E 1B 78 */	mr r30, r3
lbl_800C33F4:
/* 800C33F4 000BE2F4  2C 1F 00 00 */	cmpwi r31, 0
/* 800C33F8 000BE2F8  40 82 00 0C */	bne lbl_800C3404
/* 800C33FC 000BE2FC  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 800C3400 000BE300  90 1D 00 00 */	stw r0, 0(r29)
lbl_800C3404:
/* 800C3404 000BE304  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C3408 000BE308  4B FF E8 0D */	bl TRKReleaseBuffer
lbl_800C340C:
/* 800C340C 000BE30C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800C3410 000BE310  4B FF E8 05 */	bl TRKReleaseBuffer
/* 800C3414 000BE314  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800C3418 000BE318  7F E3 FB 78 */	mr r3, r31
/* 800C341C 000BE31C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800C3420 000BE320  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800C3424 000BE324  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800C3428 000BE328  7C 08 03 A6 */	mtlr r0
/* 800C342C 000BE32C  38 21 00 70 */	addi r1, r1, 0x70
/* 800C3430 000BE330  4E 80 00 20 */	blr 

.global HandleOpenFileSupportRequest
HandleOpenFileSupportRequest:
/* 800C3434 000BE334  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800C3438 000BE338  7C 08 02 A6 */	mflr r0
/* 800C343C 000BE33C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800C3440 000BE340  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 800C3444 000BE344  7C 7B 1B 78 */	mr r27, r3
/* 800C3448 000BE348  7C 9F 23 78 */	mr r31, r4
/* 800C344C 000BE34C  7C BC 2B 78 */	mr r28, r5
/* 800C3450 000BE350  7C DD 33 78 */	mr r29, r6
/* 800C3454 000BE354  38 61 00 14 */	addi r3, r1, 0x14
/* 800C3458 000BE358  38 80 00 00 */	li r4, 0
/* 800C345C 000BE35C  38 A0 00 40 */	li r5, 0x40
/* 800C3460 000BE360  4B F4 0C D5 */	bl TRK_memset
/* 800C3464 000BE364  38 60 00 00 */	li r3, 0
/* 800C3468 000BE368  38 00 00 D2 */	li r0, 0xd2
/* 800C346C 000BE36C  90 7C 00 00 */	stw r3, 0(r28)
/* 800C3470 000BE370  7F 63 DB 78 */	mr r3, r27
/* 800C3474 000BE374  98 01 00 18 */	stb r0, 0x18(r1)
/* 800C3478 000BE378  48 00 06 19 */	bl TRK_strlen
/* 800C347C 000BE37C  38 03 00 41 */	addi r0, r3, 0x41
/* 800C3480 000BE380  9B E1 00 1C */	stb r31, 0x1c(r1)
/* 800C3484 000BE384  7F 63 DB 78 */	mr r3, r27
/* 800C3488 000BE388  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C348C 000BE38C  48 00 06 05 */	bl TRK_strlen
/* 800C3490 000BE390  38 03 00 01 */	addi r0, r3, 1
/* 800C3494 000BE394  38 61 00 0C */	addi r3, r1, 0xc
/* 800C3498 000BE398  B0 01 00 20 */	sth r0, 0x20(r1)
/* 800C349C 000BE39C  38 81 00 08 */	addi r4, r1, 8
/* 800C34A0 000BE3A0  4B FF E8 05 */	bl TRKGetFreeBuffer
/* 800C34A4 000BE3A4  80 61 00 08 */	lwz r3, 8(r1)
/* 800C34A8 000BE3A8  38 81 00 14 */	addi r4, r1, 0x14
/* 800C34AC 000BE3AC  38 A0 00 40 */	li r5, 0x40
/* 800C34B0 000BE3B0  4B FF E4 61 */	bl TRKAppendBuffer_ui8
/* 800C34B4 000BE3B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C34B8 000BE3B8  40 82 00 24 */	bne lbl_800C34DC
/* 800C34BC 000BE3BC  7F 63 DB 78 */	mr r3, r27
/* 800C34C0 000BE3C0  48 00 05 D1 */	bl TRK_strlen
/* 800C34C4 000BE3C4  7C 65 1B 78 */	mr r5, r3
/* 800C34C8 000BE3C8  80 61 00 08 */	lwz r3, 8(r1)
/* 800C34CC 000BE3CC  7F 64 DB 78 */	mr r4, r27
/* 800C34D0 000BE3D0  38 A5 00 01 */	addi r5, r5, 1
/* 800C34D4 000BE3D4  4B FF E4 3D */	bl TRKAppendBuffer_ui8
/* 800C34D8 000BE3D8  7C 7F 1B 78 */	mr r31, r3
lbl_800C34DC:
/* 800C34DC 000BE3DC  2C 1F 00 00 */	cmpwi r31, 0
/* 800C34E0 000BE3E0  40 82 00 50 */	bne lbl_800C3530
/* 800C34E4 000BE3E4  38 00 00 00 */	li r0, 0
/* 800C34E8 000BE3E8  38 81 00 10 */	addi r4, r1, 0x10
/* 800C34EC 000BE3EC  90 1D 00 00 */	stw r0, 0(r29)
/* 800C34F0 000BE3F0  38 A0 00 07 */	li r5, 7
/* 800C34F4 000BE3F4  38 C0 00 03 */	li r6, 3
/* 800C34F8 000BE3F8  38 E0 00 00 */	li r7, 0
/* 800C34FC 000BE3FC  80 61 00 08 */	lwz r3, 8(r1)
/* 800C3500 000BE400  48 00 00 51 */	bl TRKRequestSend
/* 800C3504 000BE404  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C3508 000BE408  40 82 00 10 */	bne lbl_800C3518
/* 800C350C 000BE40C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C3510 000BE410  4B FF E7 69 */	bl TRKGetBuffer
/* 800C3514 000BE414  7C 7E 1B 78 */	mr r30, r3
lbl_800C3518:
/* 800C3518 000BE418  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 800C351C 000BE41C  90 1D 00 00 */	stw r0, 0(r29)
/* 800C3520 000BE420  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800C3524 000BE424  90 1C 00 00 */	stw r0, 0(r28)
/* 800C3528 000BE428  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C352C 000BE42C  4B FF E6 E9 */	bl TRKReleaseBuffer
lbl_800C3530:
/* 800C3530 000BE430  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800C3534 000BE434  4B FF E6 E1 */	bl TRKReleaseBuffer
/* 800C3538 000BE438  7F E3 FB 78 */	mr r3, r31
/* 800C353C 000BE43C  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 800C3540 000BE440  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800C3544 000BE444  7C 08 03 A6 */	mtlr r0
/* 800C3548 000BE448  38 21 00 70 */	addi r1, r1, 0x70
/* 800C354C 000BE44C  4E 80 00 20 */	blr 

.global TRKRequestSend
TRKRequestSend:
/* 800C3550 000BE450  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800C3554 000BE454  7C 08 02 A6 */	mflr r0
/* 800C3558 000BE458  90 01 00 34 */	stw r0, 0x34(r1)
/* 800C355C 000BE45C  38 00 FF FF */	li r0, -1
/* 800C3560 000BE460  BE C1 00 08 */	stmw r22, 8(r1)
/* 800C3564 000BE464  7C 97 23 78 */	mr r23, r4
/* 800C3568 000BE468  7C 76 1B 78 */	mr r22, r3
/* 800C356C 000BE46C  7C F8 3B 78 */	mr r24, r7
/* 800C3570 000BE470  3B 86 00 01 */	addi r28, r6, 1
/* 800C3574 000BE474  3B E0 00 00 */	li r31, 0
/* 800C3578 000BE478  3B 20 00 01 */	li r25, 1
/* 800C357C 000BE47C  90 04 00 00 */	stw r0, 0(r4)
/* 800C3580 000BE480  48 00 01 0C */	b lbl_800C368C
lbl_800C3584:
/* 800C3584 000BE484  7E C3 B3 78 */	mr r3, r22
/* 800C3588 000BE488  4B FF DF F1 */	bl TRKMessageSend
/* 800C358C 000BE48C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C3590 000BE490  40 82 00 F8 */	bne lbl_800C3688
/* 800C3594 000BE494  2C 18 00 00 */	cmpwi r24, 0
/* 800C3598 000BE498  41 82 00 08 */	beq lbl_800C35A0
/* 800C359C 000BE49C  3B A0 00 00 */	li r29, 0
lbl_800C35A0:
/* 800C35A0 000BE4A0  4B FF E9 1D */	bl TRKTestForPacket
/* 800C35A4 000BE4A4  90 77 00 00 */	stw r3, 0(r23)
/* 800C35A8 000BE4A8  80 77 00 00 */	lwz r3, 0(r23)
/* 800C35AC 000BE4AC  2C 03 FF FF */	cmpwi r3, -1
/* 800C35B0 000BE4B0  40 82 00 20 */	bne lbl_800C35D0
/* 800C35B4 000BE4B4  2C 18 00 00 */	cmpwi r24, 0
/* 800C35B8 000BE4B8  41 82 FF E8 */	beq lbl_800C35A0
/* 800C35BC 000BE4BC  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 800C35C0 000BE4C0  3B BD 00 01 */	addi r29, r29, 1
/* 800C35C4 000BE4C4  38 04 B3 EC */	addi r0, r4, 0x04C4B3EC@l
/* 800C35C8 000BE4C8  7C 1D 00 40 */	cmplw r29, r0
/* 800C35CC 000BE4CC  41 80 FF D4 */	blt lbl_800C35A0
lbl_800C35D0:
/* 800C35D0 000BE4D0  2C 03 FF FF */	cmpwi r3, -1
/* 800C35D4 000BE4D4  41 82 00 44 */	beq lbl_800C3618
/* 800C35D8 000BE4D8  3B 20 00 00 */	li r25, 0
/* 800C35DC 000BE4DC  4B FF E6 9D */	bl TRKGetBuffer
/* 800C35E0 000BE4E0  38 80 00 00 */	li r4, 0
/* 800C35E4 000BE4E4  7C 7E 1B 78 */	mr r30, r3
/* 800C35E8 000BE4E8  4B FF E5 BD */	bl TRKSetBufferPosition
/* 800C35EC 000BE4EC  80 9E 00 08 */	lwz r4, 8(r30)
/* 800C35F0 000BE4F0  38 7E 00 10 */	addi r3, r30, 0x10
/* 800C35F4 000BE4F4  48 00 2F 11 */	bl OutputData
/* 800C35F8 000BE4F8  8B 7E 00 14 */	lbz r27, 0x14(r30)
/* 800C35FC 000BE4FC  28 1B 00 80 */	cmplwi r27, 0x80
/* 800C3600 000BE500  40 80 00 18 */	bge lbl_800C3618
/* 800C3604 000BE504  80 77 00 00 */	lwz r3, 0(r23)
/* 800C3608 000BE508  4B FF E8 05 */	bl TRKProcessInput
/* 800C360C 000BE50C  38 00 FF FF */	li r0, -1
/* 800C3610 000BE510  90 17 00 00 */	stw r0, 0(r23)
/* 800C3614 000BE514  4B FF FF 8C */	b lbl_800C35A0
lbl_800C3618:
/* 800C3618 000BE518  80 77 00 00 */	lwz r3, 0(r23)
/* 800C361C 000BE51C  2C 03 FF FF */	cmpwi r3, -1
/* 800C3620 000BE520  41 82 00 68 */	beq lbl_800C3688
/* 800C3624 000BE524  80 1E 00 08 */	lwz r0, 8(r30)
/* 800C3628 000BE528  28 00 00 40 */	cmplwi r0, 0x40
/* 800C362C 000BE52C  40 80 00 08 */	bge lbl_800C3634
/* 800C3630 000BE530  3B 20 00 01 */	li r25, 1
lbl_800C3634:
/* 800C3634 000BE534  2C 1F 00 00 */	cmpwi r31, 0
/* 800C3638 000BE538  40 82 00 10 */	bne lbl_800C3648
/* 800C363C 000BE53C  2C 19 00 00 */	cmpwi r25, 0
/* 800C3640 000BE540  40 82 00 08 */	bne lbl_800C3648
/* 800C3644 000BE544  8B 5E 00 18 */	lbz r26, 0x18(r30)
lbl_800C3648:
/* 800C3648 000BE548  2C 1F 00 00 */	cmpwi r31, 0
/* 800C364C 000BE54C  40 82 00 20 */	bne lbl_800C366C
/* 800C3650 000BE550  2C 19 00 00 */	cmpwi r25, 0
/* 800C3654 000BE554  40 82 00 18 */	bne lbl_800C366C
/* 800C3658 000BE558  2C 1B 00 80 */	cmpwi r27, 0x80
/* 800C365C 000BE55C  40 82 00 0C */	bne lbl_800C3668
/* 800C3660 000BE560  2C 1A 00 00 */	cmpwi r26, 0
/* 800C3664 000BE564  41 82 00 08 */	beq lbl_800C366C
lbl_800C3668:
/* 800C3668 000BE568  3B 20 00 01 */	li r25, 1
lbl_800C366C:
/* 800C366C 000BE56C  2C 1F 00 00 */	cmpwi r31, 0
/* 800C3670 000BE570  40 82 00 0C */	bne lbl_800C367C
/* 800C3674 000BE574  2C 19 00 00 */	cmpwi r25, 0
/* 800C3678 000BE578  41 82 00 10 */	beq lbl_800C3688
lbl_800C367C:
/* 800C367C 000BE57C  4B FF E5 99 */	bl TRKReleaseBuffer
/* 800C3680 000BE580  38 00 FF FF */	li r0, -1
/* 800C3684 000BE584  90 17 00 00 */	stw r0, 0(r23)
lbl_800C3688:
/* 800C3688 000BE588  3B 9C FF FF */	addi r28, r28, -1
lbl_800C368C:
/* 800C368C 000BE58C  2C 1C 00 00 */	cmpwi r28, 0
/* 800C3690 000BE590  41 82 00 18 */	beq lbl_800C36A8
/* 800C3694 000BE594  80 17 00 00 */	lwz r0, 0(r23)
/* 800C3698 000BE598  2C 00 FF FF */	cmpwi r0, -1
/* 800C369C 000BE59C  40 82 00 0C */	bne lbl_800C36A8
/* 800C36A0 000BE5A0  2C 1F 00 00 */	cmpwi r31, 0
/* 800C36A4 000BE5A4  41 82 FE E0 */	beq lbl_800C3584
lbl_800C36A8:
/* 800C36A8 000BE5A8  80 17 00 00 */	lwz r0, 0(r23)
/* 800C36AC 000BE5AC  2C 00 FF FF */	cmpwi r0, -1
/* 800C36B0 000BE5B0  40 82 00 08 */	bne lbl_800C36B8
/* 800C36B4 000BE5B4  3B E0 08 00 */	li r31, 0x800
lbl_800C36B8:
/* 800C36B8 000BE5B8  7F E3 FB 78 */	mr r3, r31
/* 800C36BC 000BE5BC  BA C1 00 08 */	lmw r22, 8(r1)
/* 800C36C0 000BE5C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800C36C4 000BE5C4  7C 08 03 A6 */	mtlr r0
/* 800C36C8 000BE5C8  38 21 00 30 */	addi r1, r1, 0x30
/* 800C36CC 000BE5CC  4E 80 00 20 */	blr 

.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 800C36D0 000BE5D0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800C36D4 000BE5D4  7C 08 02 A6 */	mflr r0
/* 800C36D8 000BE5D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 800C36DC 000BE5DC  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 800C36E0 000BE5E0  7C 98 23 79 */	or. r24, r4, r4
/* 800C36E4 000BE5E4  7C 77 1B 78 */	mr r23, r3
/* 800C36E8 000BE5E8  7C B9 2B 78 */	mr r25, r5
/* 800C36EC 000BE5EC  7C DA 33 78 */	mr r26, r6
/* 800C36F0 000BE5F0  7C FB 3B 78 */	mr r27, r7
/* 800C36F4 000BE5F4  7D 1C 43 78 */	mr r28, r8
/* 800C36F8 000BE5F8  41 82 00 10 */	beq lbl_800C3708
/* 800C36FC 000BE5FC  80 19 00 00 */	lwz r0, 0(r25)
/* 800C3700 000BE600  28 00 00 00 */	cmplwi r0, 0
/* 800C3704 000BE604  40 82 00 0C */	bne lbl_800C3710
lbl_800C3708:
/* 800C3708 000BE608  38 60 00 02 */	li r3, 2
/* 800C370C 000BE60C  48 00 01 D0 */	b lbl_800C38DC
lbl_800C3710:
/* 800C3710 000BE610  38 00 00 00 */	li r0, 0
/* 800C3714 000BE614  3B A0 00 00 */	li r29, 0
/* 800C3718 000BE618  90 1A 00 00 */	stw r0, 0(r26)
/* 800C371C 000BE61C  3B C0 00 00 */	li r30, 0
/* 800C3720 000BE620  3A A0 00 00 */	li r21, 0
/* 800C3724 000BE624  48 00 01 88 */	b lbl_800C38AC
lbl_800C3728:
/* 800C3728 000BE628  38 61 00 14 */	addi r3, r1, 0x14
/* 800C372C 000BE62C  38 80 00 00 */	li r4, 0
/* 800C3730 000BE630  38 A0 00 40 */	li r5, 0x40
/* 800C3734 000BE634  4B F4 0A 01 */	bl TRK_memset
/* 800C3738 000BE638  80 19 00 00 */	lwz r0, 0(r25)
/* 800C373C 000BE63C  38 60 08 00 */	li r3, 0x800
/* 800C3740 000BE640  7C 1E 00 50 */	subf r0, r30, r0
/* 800C3744 000BE644  28 00 08 00 */	cmplwi r0, 0x800
/* 800C3748 000BE648  41 81 00 08 */	bgt lbl_800C3750
/* 800C374C 000BE64C  7C 03 03 78 */	mr r3, r0
lbl_800C3750:
/* 800C3750 000BE650  2C 1C 00 00 */	cmpwi r28, 0
/* 800C3754 000BE654  7C 7F 1B 78 */	mr r31, r3
/* 800C3758 000BE658  38 00 00 D0 */	li r0, 0xd0
/* 800C375C 000BE65C  41 82 00 08 */	beq lbl_800C3764
/* 800C3760 000BE660  38 00 00 D1 */	li r0, 0xd1
lbl_800C3764:
/* 800C3764 000BE664  2C 1C 00 00 */	cmpwi r28, 0
/* 800C3768 000BE668  98 01 00 18 */	stb r0, 0x18(r1)
/* 800C376C 000BE66C  38 00 00 40 */	li r0, 0x40
/* 800C3770 000BE670  40 82 00 08 */	bne lbl_800C3778
/* 800C3774 000BE674  38 1F 00 40 */	addi r0, r31, 0x40
lbl_800C3778:
/* 800C3778 000BE678  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C377C 000BE67C  38 61 00 0C */	addi r3, r1, 0xc
/* 800C3780 000BE680  38 81 00 08 */	addi r4, r1, 8
/* 800C3784 000BE684  92 E1 00 1C */	stw r23, 0x1c(r1)
/* 800C3788 000BE688  B3 E1 00 20 */	sth r31, 0x20(r1)
/* 800C378C 000BE68C  4B FF E5 19 */	bl TRKGetFreeBuffer
/* 800C3790 000BE690  80 61 00 08 */	lwz r3, 8(r1)
/* 800C3794 000BE694  38 81 00 14 */	addi r4, r1, 0x14
/* 800C3798 000BE698  38 A0 00 40 */	li r5, 0x40
/* 800C379C 000BE69C  4B FF E1 75 */	bl TRKAppendBuffer_ui8
/* 800C37A0 000BE6A0  2C 1C 00 00 */	cmpwi r28, 0
/* 800C37A4 000BE6A4  7C 75 1B 78 */	mr r21, r3
/* 800C37A8 000BE6A8  40 82 00 20 */	bne lbl_800C37C8
/* 800C37AC 000BE6AC  2C 15 00 00 */	cmpwi r21, 0
/* 800C37B0 000BE6B0  40 82 00 18 */	bne lbl_800C37C8
/* 800C37B4 000BE6B4  80 61 00 08 */	lwz r3, 8(r1)
/* 800C37B8 000BE6B8  7F E5 FB 78 */	mr r5, r31
/* 800C37BC 000BE6BC  7C 98 F2 14 */	add r4, r24, r30
/* 800C37C0 000BE6C0  4B FF E1 51 */	bl TRKAppendBuffer_ui8
/* 800C37C4 000BE6C4  7C 75 1B 78 */	mr r21, r3
lbl_800C37C8:
/* 800C37C8 000BE6C8  2C 15 00 00 */	cmpwi r21, 0
/* 800C37CC 000BE6CC  40 82 00 D4 */	bne lbl_800C38A0
/* 800C37D0 000BE6D0  2C 1B 00 00 */	cmpwi r27, 0
/* 800C37D4 000BE6D4  41 82 00 C0 */	beq lbl_800C3894
/* 800C37D8 000BE6D8  2C 1C 00 00 */	cmpwi r28, 0
/* 800C37DC 000BE6DC  38 00 00 00 */	li r0, 0
/* 800C37E0 000BE6E0  41 82 00 10 */	beq lbl_800C37F0
/* 800C37E4 000BE6E4  28 17 00 00 */	cmplwi r23, 0
/* 800C37E8 000BE6E8  40 82 00 08 */	bne lbl_800C37F0
/* 800C37EC 000BE6EC  38 00 00 01 */	li r0, 1
lbl_800C37F0:
/* 800C37F0 000BE6F0  2C 1C 00 00 */	cmpwi r28, 0
/* 800C37F4 000BE6F4  80 61 00 08 */	lwz r3, 8(r1)
/* 800C37F8 000BE6F8  38 81 00 10 */	addi r4, r1, 0x10
/* 800C37FC 000BE6FC  38 A0 00 05 */	li r5, 5
/* 800C3800 000BE700  7C 00 00 34 */	cntlzw r0, r0
/* 800C3804 000BE704  38 C0 00 03 */	li r6, 3
/* 800C3808 000BE708  54 07 D9 7E */	srwi r7, r0, 5
/* 800C380C 000BE70C  4B FF FD 45 */	bl TRKRequestSend
/* 800C3810 000BE710  7C 75 1B 79 */	or. r21, r3, r3
/* 800C3814 000BE714  40 82 00 10 */	bne lbl_800C3824
/* 800C3818 000BE718  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C381C 000BE71C  4B FF E4 5D */	bl TRKGetBuffer
/* 800C3820 000BE720  7C 76 1B 78 */	mr r22, r3
lbl_800C3824:
/* 800C3824 000BE724  80 16 00 20 */	lwz r0, 0x20(r22)
/* 800C3828 000BE728  2C 1C 00 00 */	cmpwi r28, 0
/* 800C382C 000BE72C  A2 76 00 24 */	lhz r19, 0x24(r22)
/* 800C3830 000BE730  54 14 06 3E */	clrlwi r20, r0, 0x18
/* 800C3834 000BE734  41 82 00 40 */	beq lbl_800C3874
/* 800C3838 000BE738  2C 15 00 00 */	cmpwi r21, 0
/* 800C383C 000BE73C  40 82 00 38 */	bne lbl_800C3874
/* 800C3840 000BE740  7C 13 F8 40 */	cmplw r19, r31
/* 800C3844 000BE744  41 81 00 30 */	bgt lbl_800C3874
/* 800C3848 000BE748  7E C3 B3 78 */	mr r3, r22
/* 800C384C 000BE74C  38 80 00 40 */	li r4, 0x40
/* 800C3850 000BE750  4B FF E3 55 */	bl TRKSetBufferPosition
/* 800C3854 000BE754  7E C3 B3 78 */	mr r3, r22
/* 800C3858 000BE758  7E 65 9B 78 */	mr r5, r19
/* 800C385C 000BE75C  7C 98 F2 14 */	add r4, r24, r30
/* 800C3860 000BE760  4B FF DE 35 */	bl TRKReadBuffer_ui8
/* 800C3864 000BE764  7C 75 1B 78 */	mr r21, r3
/* 800C3868 000BE768  2C 15 03 02 */	cmpwi r21, 0x302
/* 800C386C 000BE76C  40 82 00 08 */	bne lbl_800C3874
/* 800C3870 000BE770  3A A0 00 00 */	li r21, 0
lbl_800C3874:
/* 800C3874 000BE774  7C 13 F8 40 */	cmplw r19, r31
/* 800C3878 000BE778  41 82 00 0C */	beq lbl_800C3884
/* 800C387C 000BE77C  7E 7F 9B 78 */	mr r31, r19
/* 800C3880 000BE780  3B A0 00 01 */	li r29, 1
lbl_800C3884:
/* 800C3884 000BE784  92 9A 00 00 */	stw r20, 0(r26)
/* 800C3888 000BE788  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C388C 000BE78C  4B FF E3 89 */	bl TRKReleaseBuffer
/* 800C3890 000BE790  48 00 00 10 */	b lbl_800C38A0
lbl_800C3894:
/* 800C3894 000BE794  80 61 00 08 */	lwz r3, 8(r1)
/* 800C3898 000BE798  4B FF DC E1 */	bl TRKMessageSend
/* 800C389C 000BE79C  7C 75 1B 78 */	mr r21, r3
lbl_800C38A0:
/* 800C38A0 000BE7A0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800C38A4 000BE7A4  4B FF E3 71 */	bl TRKReleaseBuffer
/* 800C38A8 000BE7A8  7F DE FA 14 */	add r30, r30, r31
lbl_800C38AC:
/* 800C38AC 000BE7AC  2C 1D 00 00 */	cmpwi r29, 0
/* 800C38B0 000BE7B0  40 82 00 24 */	bne lbl_800C38D4
/* 800C38B4 000BE7B4  80 19 00 00 */	lwz r0, 0(r25)
/* 800C38B8 000BE7B8  7C 1E 00 40 */	cmplw r30, r0
/* 800C38BC 000BE7BC  40 80 00 18 */	bge lbl_800C38D4
/* 800C38C0 000BE7C0  2C 15 00 00 */	cmpwi r21, 0
/* 800C38C4 000BE7C4  40 82 00 10 */	bne lbl_800C38D4
/* 800C38C8 000BE7C8  80 1A 00 00 */	lwz r0, 0(r26)
/* 800C38CC 000BE7CC  2C 00 00 00 */	cmpwi r0, 0
/* 800C38D0 000BE7D0  41 82 FE 58 */	beq lbl_800C3728
lbl_800C38D4:
/* 800C38D4 000BE7D4  93 D9 00 00 */	stw r30, 0(r25)
/* 800C38D8 000BE7D8  7E A3 AB 78 */	mr r3, r21
lbl_800C38DC:
/* 800C38DC 000BE7DC  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 800C38E0 000BE7E0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800C38E4 000BE7E4  7C 08 03 A6 */	mtlr r0
/* 800C38E8 000BE7E8  38 21 00 90 */	addi r1, r1, 0x90
/* 800C38EC 000BE7EC  4E 80 00 20 */	blr 
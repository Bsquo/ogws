.include "macros.inc"

.section .bss, "wa"
.balign 0x8
.global gTRKEventQueue
gTRKEventQueue:
	.skip 0x28

.section .text, "ax"
.global TRKDestructEvent
TRKDestructEvent:
/* 800C11CC 000BC0CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C11D0 000BC0D0  7C 08 02 A6 */	mflr r0
/* 800C11D4 000BC0D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C11D8 000BC0D8  80 63 00 08 */	lwz r3, 8(r3)
/* 800C11DC 000BC0DC  48 00 0A 39 */	bl TRKReleaseBuffer
/* 800C11E0 000BC0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C11E4 000BC0E4  7C 08 03 A6 */	mtlr r0
/* 800C11E8 000BC0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C11EC 000BC0EC  4E 80 00 20 */	blr 

.global TRKConstructEvent
TRKConstructEvent:
/* 800C11F0 000BC0F0  90 83 00 00 */	stw r4, 0(r3)
/* 800C11F4 000BC0F4  38 80 00 00 */	li r4, 0
/* 800C11F8 000BC0F8  38 00 FF FF */	li r0, -1
/* 800C11FC 000BC0FC  90 83 00 04 */	stw r4, 4(r3)
/* 800C1200 000BC100  90 03 00 08 */	stw r0, 8(r3)
/* 800C1204 000BC104  4E 80 00 20 */	blr 

.global TRKPostEvent
TRKPostEvent:
/* 800C1208 000BC108  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C120C 000BC10C  7C 08 02 A6 */	mflr r0
/* 800C1210 000BC110  3C 80 80 41 */	lis r4, gTRKEventQueue@ha
/* 800C1214 000BC114  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C1218 000BC118  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C121C 000BC11C  3B E0 00 00 */	li r31, 0
/* 800C1220 000BC120  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C1224 000BC124  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C1228 000BC128  7C 7D 1B 78 */	mr r29, r3
/* 800C122C 000BC12C  38 64 BC 98 */	addi r3, r4, gTRKEventQueue@l
/* 800C1230 000BC130  48 00 26 C9 */	bl TRKAcquireMutex
/* 800C1234 000BC134  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C1238 000BC138  3B C3 BC 98 */	addi r30, r3, gTRKEventQueue@l
/* 800C123C 000BC13C  80 7E 00 04 */	lwz r3, 4(r30)
/* 800C1240 000BC140  2C 03 00 02 */	cmpwi r3, 2
/* 800C1244 000BC144  40 82 00 0C */	bne lbl_800C1250
/* 800C1248 000BC148  3B E0 01 00 */	li r31, 0x100
/* 800C124C 000BC14C  48 00 00 70 */	b lbl_800C12BC
lbl_800C1250:
/* 800C1250 000BC150  80 1E 00 08 */	lwz r0, 8(r30)
/* 800C1254 000BC154  7F A4 EB 78 */	mr r4, r29
/* 800C1258 000BC158  38 A0 00 0C */	li r5, 0xc
/* 800C125C 000BC15C  7C 00 1A 14 */	add r0, r0, r3
/* 800C1260 000BC160  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800C1264 000BC164  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 800C1268 000BC168  7C 00 1A 78 */	xor r0, r0, r3
/* 800C126C 000BC16C  7C 03 00 50 */	subf r0, r3, r0
/* 800C1270 000BC170  1F A0 00 0C */	mulli r29, r0, 0xc
/* 800C1274 000BC174  7C 7E EA 14 */	add r3, r30, r29
/* 800C1278 000BC178  38 63 00 0C */	addi r3, r3, 0xc
/* 800C127C 000BC17C  4B F4 2E E9 */	bl TRK_memcpy
/* 800C1280 000BC180  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C1284 000BC184  38 83 BC 98 */	addi r4, r3, gTRKEventQueue@l
/* 800C1288 000BC188  80 04 00 24 */	lwz r0, 0x24(r4)
/* 800C128C 000BC18C  7C 64 EA 14 */	add r3, r4, r29
/* 800C1290 000BC190  90 03 00 10 */	stw r0, 0x10(r3)
/* 800C1294 000BC194  80 64 00 24 */	lwz r3, 0x24(r4)
/* 800C1298 000BC198  38 03 00 01 */	addi r0, r3, 1
/* 800C129C 000BC19C  28 00 01 00 */	cmplwi r0, 0x100
/* 800C12A0 000BC1A0  90 04 00 24 */	stw r0, 0x24(r4)
/* 800C12A4 000BC1A4  40 80 00 0C */	bge lbl_800C12B0
/* 800C12A8 000BC1A8  38 00 01 00 */	li r0, 0x100
/* 800C12AC 000BC1AC  90 04 00 24 */	stw r0, 0x24(r4)
lbl_800C12B0:
/* 800C12B0 000BC1B0  80 7E 00 04 */	lwz r3, 4(r30)
/* 800C12B4 000BC1B4  38 03 00 01 */	addi r0, r3, 1
/* 800C12B8 000BC1B8  90 1E 00 04 */	stw r0, 4(r30)
lbl_800C12BC:
/* 800C12BC 000BC1BC  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C12C0 000BC1C0  38 63 BC 98 */	addi r3, r3, gTRKEventQueue@l
/* 800C12C4 000BC1C4  48 00 26 2D */	bl TRKReleaseMutex
/* 800C12C8 000BC1C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C12CC 000BC1CC  7F E3 FB 78 */	mr r3, r31
/* 800C12D0 000BC1D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C12D4 000BC1D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C12D8 000BC1D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C12DC 000BC1DC  7C 08 03 A6 */	mtlr r0
/* 800C12E0 000BC1E0  38 21 00 20 */	addi r1, r1, 0x20
/* 800C12E4 000BC1E4  4E 80 00 20 */	blr 

.global TRKGetNextEvent
TRKGetNextEvent:
/* 800C12E8 000BC1E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C12EC 000BC1EC  7C 08 02 A6 */	mflr r0
/* 800C12F0 000BC1F0  3C 80 80 41 */	lis r4, gTRKEventQueue@ha
/* 800C12F4 000BC1F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C12F8 000BC1F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C12FC 000BC1FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C1300 000BC200  3B C0 00 00 */	li r30, 0
/* 800C1304 000BC204  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C1308 000BC208  7C 7D 1B 78 */	mr r29, r3
/* 800C130C 000BC20C  38 64 BC 98 */	addi r3, r4, gTRKEventQueue@l
/* 800C1310 000BC210  48 00 25 E9 */	bl TRKAcquireMutex
/* 800C1314 000BC214  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C1318 000BC218  3B E3 BC 98 */	addi r31, r3, gTRKEventQueue@l
/* 800C131C 000BC21C  80 1F 00 04 */	lwz r0, 4(r31)
/* 800C1320 000BC220  2C 00 00 00 */	cmpwi r0, 0
/* 800C1324 000BC224  40 81 00 4C */	ble lbl_800C1370
/* 800C1328 000BC228  80 1F 00 08 */	lwz r0, 8(r31)
/* 800C132C 000BC22C  7F A3 EB 78 */	mr r3, r29
/* 800C1330 000BC230  38 A0 00 0C */	li r5, 0xc
/* 800C1334 000BC234  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800C1338 000BC238  7C 9F 02 14 */	add r4, r31, r0
/* 800C133C 000BC23C  38 84 00 0C */	addi r4, r4, 0xc
/* 800C1340 000BC240  4B F4 2E 25 */	bl TRK_memcpy
/* 800C1344 000BC244  80 7F 00 08 */	lwz r3, 8(r31)
/* 800C1348 000BC248  80 9F 00 04 */	lwz r4, 4(r31)
/* 800C134C 000BC24C  38 03 00 01 */	addi r0, r3, 1
/* 800C1350 000BC250  38 64 FF FF */	addi r3, r4, -1
/* 800C1354 000BC254  90 1F 00 08 */	stw r0, 8(r31)
/* 800C1358 000BC258  2C 00 00 02 */	cmpwi r0, 2
/* 800C135C 000BC25C  90 7F 00 04 */	stw r3, 4(r31)
/* 800C1360 000BC260  40 82 00 0C */	bne lbl_800C136C
/* 800C1364 000BC264  38 00 00 00 */	li r0, 0
/* 800C1368 000BC268  90 1F 00 08 */	stw r0, 8(r31)
lbl_800C136C:
/* 800C136C 000BC26C  3B C0 00 01 */	li r30, 1
lbl_800C1370:
/* 800C1370 000BC270  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C1374 000BC274  38 63 BC 98 */	addi r3, r3, gTRKEventQueue@l
/* 800C1378 000BC278  48 00 25 79 */	bl TRKReleaseMutex
/* 800C137C 000BC27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C1380 000BC280  7F C3 F3 78 */	mr r3, r30
/* 800C1384 000BC284  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C1388 000BC288  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C138C 000BC28C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800C1390 000BC290  7C 08 03 A6 */	mtlr r0
/* 800C1394 000BC294  38 21 00 20 */	addi r1, r1, 0x20
/* 800C1398 000BC298  4E 80 00 20 */	blr 

.global TRKInitializeEventQueue
TRKInitializeEventQueue:
/* 800C139C 000BC29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C13A0 000BC2A0  7C 08 02 A6 */	mflr r0
/* 800C13A4 000BC2A4  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C13A8 000BC2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C13AC 000BC2AC  38 63 BC 98 */	addi r3, r3, gTRKEventQueue@l
/* 800C13B0 000BC2B0  48 00 25 51 */	bl TRKInitializeMutex
/* 800C13B4 000BC2B4  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C13B8 000BC2B8  38 63 BC 98 */	addi r3, r3, gTRKEventQueue@l
/* 800C13BC 000BC2BC  48 00 25 3D */	bl TRKAcquireMutex
/* 800C13C0 000BC2C0  3C 60 80 41 */	lis r3, gTRKEventQueue@ha
/* 800C13C4 000BC2C4  38 80 00 00 */	li r4, 0
/* 800C13C8 000BC2C8  38 63 BC 98 */	addi r3, r3, gTRKEventQueue@l
/* 800C13CC 000BC2CC  38 00 01 00 */	li r0, 0x100
/* 800C13D0 000BC2D0  90 83 00 04 */	stw r4, 4(r3)
/* 800C13D4 000BC2D4  90 83 00 08 */	stw r4, 8(r3)
/* 800C13D8 000BC2D8  90 03 00 24 */	stw r0, 0x24(r3)
/* 800C13DC 000BC2DC  48 00 25 15 */	bl TRKReleaseMutex
/* 800C13E0 000BC2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C13E4 000BC2E4  38 60 00 00 */	li r3, 0
/* 800C13E8 000BC2E8  7C 08 03 A6 */	mtlr r0
/* 800C13EC 000BC2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C13F0 000BC2F0  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"

.global CalcWorld__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlPCUcPCQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjChrPQ34nw4r3g3d16FuncObjCalcWorldUl
CalcWorld__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlPCUcPCQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjChrPQ34nw4r3g3d16FuncObjCalcWorldUl:
/* 8006A074 00064F74  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8006A078 00064F78  7C 08 02 A6 */	mflr r0
/* 8006A07C 00064F7C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8006A080 00064F80  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8006A084 00064F84  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8006A088 00064F88  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8006A08C 00064F8C  48 04 7C 85 */	bl _savegpr_14
/* 8006A090 00064F90  2C 05 00 00 */	cmpwi r5, 0
/* 8006A094 00064F94  7C 72 1B 78 */	mr r18, r3
/* 8006A098 00064F98  7C 93 23 78 */	mr r19, r4
/* 8006A09C 00064F9C  7C B4 2B 78 */	mr r20, r5
/* 8006A0A0 00064FA0  7C D1 33 78 */	mr r17, r6
/* 8006A0A4 00064FA4  7C F5 3B 78 */	mr r21, r7
/* 8006A0A8 00064FA8  7D 0E 43 78 */	mr r14, r8
/* 8006A0AC 00064FAC  7D 36 4B 78 */	mr r22, r9
/* 8006A0B0 00064FB0  7D 4F 53 78 */	mr r15, r10
/* 8006A0B4 00064FB4  3B E0 00 00 */	li r31, 0
/* 8006A0B8 00064FB8  40 82 00 20 */	bne lbl_8006A0D8
/* 8006A0BC 00064FBC  3C 80 80 39 */	lis r4, lbl_80396EC8@ha
/* 8006A0C0 00064FC0  7E A3 AB 78 */	mr r3, r21
/* 8006A0C4 00064FC4  38 84 6E C8 */	addi r4, r4, lbl_80396EC8@l
/* 8006A0C8 00064FC8  4B FE 86 F5 */	bl func_800527BC
/* 8006A0CC 00064FCC  2C 03 00 00 */	cmpwi r3, 0
/* 8006A0D0 00064FD0  7C 74 1B 78 */	mr r20, r3
/* 8006A0D4 00064FD4  41 82 05 44 */	beq lbl_8006A618
lbl_8006A0D8:
/* 8006A0D8 00064FD8  80 75 00 00 */	lwz r3, 0(r21)
/* 8006A0DC 00064FDC  55 E0 2F FE */	rlwinm r0, r15, 5, 0x1f, 0x1f
/* 8006A0E0 00064FE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8006A0E4 00064FE4  38 63 00 40 */	addi r3, r3, 0x40
/* 8006A0E8 00064FE8  80 63 00 08 */	lwz r3, 8(r3)
/* 8006A0EC 00064FEC  38 03 FF FF */	addi r0, r3, -1
/* 8006A0F0 00064FF0  7C 00 00 34 */	cntlzw r0, r0
/* 8006A0F4 00064FF4  54 00 D9 7E */	srwi r0, r0, 5
/* 8006A0F8 00064FF8  98 01 00 70 */	stb r0, 0x70(r1)
/* 8006A0FC 00064FFC  4B FF FF 2D */	bl GetScaleTemporary__Q44nw4r3g3d6detail7workmemFv
/* 8006A100 00065000  C0 02 89 60 */	lfs f0, lbl_804C0380-_SDA2_BASE_(r2)
/* 8006A104 00065004  7C 70 1B 78 */	mr r16, r3
/* 8006A108 00065008  7E 44 93 78 */	mr r4, r18
/* 8006A10C 0006500C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8006A110 00065010  D0 03 00 04 */	stfs f0, 4(r3)
/* 8006A114 00065014  D0 03 00 00 */	stfs f0, 0(r3)
/* 8006A118 00065018  7E 23 8B 78 */	mr r3, r17
/* 8006A11C 0006501C  48 07 D5 09 */	bl PSMTXCopy
/* 8006A120 00065020  4B FF FF 15 */	bl GetMtxIDTemporary__Q44nw4r3g3d6detail7workmemFv
/* 8006A124 00065024  91 F3 00 00 */	stw r15, 0(r19)
/* 8006A128 00065028  7C 7E 1B 78 */	mr r30, r3
/* 8006A12C 0006502C  3B A0 00 00 */	li r29, 0
/* 8006A130 00065030  3A 20 00 00 */	li r17, 0
/* 8006A134 00065034  48 00 04 3C */	b lbl_8006A570
lbl_8006A138:
/* 8006A138 00065038  28 00 00 02 */	cmplwi r0, 2
/* 8006A13C 0006503C  40 82 03 BC */	bne lbl_8006A4F8
/* 8006A140 00065040  88 14 00 01 */	lbz r0, 1(r20)
/* 8006A144 00065044  7E A3 AB 78 */	mr r3, r21
/* 8006A148 00065048  88 94 00 03 */	lbz r4, 3(r20)
/* 8006A14C 0006504C  54 07 40 2E */	slwi r7, r0, 8
/* 8006A150 00065050  88 D4 00 02 */	lbz r6, 2(r20)
/* 8006A154 00065054  88 14 00 04 */	lbz r0, 4(r20)
/* 8006A158 00065058  54 85 40 2E */	slwi r5, r4, 8
/* 8006A15C 0006505C  7F 87 32 14 */	add r28, r7, r6
/* 8006A160 00065060  7F 84 E3 78 */	mr r4, r28
/* 8006A164 00065064  7F 05 02 14 */	add r24, r5, r0
/* 8006A168 00065068  4B FE 87 81 */	bl func_800528E8
/* 8006A16C 0006506C  2C 03 00 00 */	cmpwi r3, 0
/* 8006A170 00065070  90 61 00 14 */	stw r3, 0x14(r1)
/* 8006A174 00065074  41 82 00 0C */	beq lbl_8006A180
/* 8006A178 00065078  81 E3 00 10 */	lwz r15, 0x10(r3)
/* 8006A17C 0006507C  48 00 00 08 */	b lbl_8006A184
lbl_8006A180:
/* 8006A180 00065080  39 E0 00 00 */	li r15, 0
lbl_8006A184:
/* 8006A184 00065084  7D FE 89 2E */	stwx r15, r30, r17
/* 8006A188 00065088  57 00 10 3A */	slwi r0, r24, 2
/* 8006A18C 0006508C  1C 6F 00 30 */	mulli r3, r15, 0x30
/* 8006A190 00065090  2C 0E 00 00 */	cmpwi r14, 0
/* 8006A194 00065094  7E F3 00 2E */	lwzx r23, r19, r0
/* 8006A198 00065098  3B BD 00 01 */	addi r29, r29, 1
/* 8006A19C 0006509C  3A 31 00 04 */	addi r17, r17, 4
/* 8006A1A0 000650A0  1C 0F 00 0C */	mulli r0, r15, 0xc
/* 8006A1A4 000650A4  7F 72 1A 14 */	add r27, r18, r3
/* 8006A1A8 000650A8  1C 78 00 30 */	mulli r3, r24, 0x30
/* 8006A1AC 000650AC  7F 50 02 14 */	add r26, r16, r0
/* 8006A1B0 000650B0  1C 18 00 0C */	mulli r0, r24, 0xc
/* 8006A1B4 000650B4  7F 32 1A 14 */	add r25, r18, r3
/* 8006A1B8 000650B8  7F 10 02 14 */	add r24, r16, r0
/* 8006A1BC 000650BC  41 82 00 38 */	beq lbl_8006A1F4
/* 8006A1C0 000650C0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8006A1C4 000650C4  7D C3 73 78 */	mr r3, r14
/* 8006A1C8 000650C8  38 81 00 24 */	addi r4, r1, 0x24
/* 8006A1CC 000650CC  2C 05 00 00 */	cmpwi r5, 0
/* 8006A1D0 000650D0  41 82 00 0C */	beq lbl_8006A1DC
/* 8006A1D4 000650D4  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 8006A1D8 000650D8  48 00 00 08 */	b lbl_8006A1E0
lbl_8006A1DC:
/* 8006A1DC 000650DC  38 A0 00 00 */	li r5, 0
lbl_8006A1E0:
/* 8006A1E0 000650E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8006A1E4 000650E4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8006A1E8 000650E8  7D 89 03 A6 */	mtctr r12
/* 8006A1EC 000650EC  4E 80 04 21 */	bctrl 
/* 8006A1F0 000650F0  7C 7F 1B 78 */	mr r31, r3
lbl_8006A1F4:
/* 8006A1F4 000650F4  2C 0E 00 00 */	cmpwi r14, 0
/* 8006A1F8 000650F8  41 82 00 10 */	beq lbl_8006A208
/* 8006A1FC 000650FC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8006A200 00065100  2C 00 00 00 */	cmpwi r0, 0
/* 8006A204 00065104  40 82 00 14 */	bne lbl_8006A218
lbl_8006A208:
/* 8006A208 00065108  38 61 00 14 */	addi r3, r1, 0x14
/* 8006A20C 0006510C  38 81 00 24 */	addi r4, r1, 0x24
/* 8006A210 00065110  4B FE CB 45 */	bl CalcChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult
/* 8006A214 00065114  3B E1 00 24 */	addi r31, r1, 0x24
lbl_8006A218:
/* 8006A218 00065118  2C 1C 00 00 */	cmpwi r28, 0
/* 8006A21C 0006511C  41 82 00 D0 */	beq lbl_8006A2EC
/* 8006A220 00065120  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8006A224 00065124  2C 00 00 00 */	cmpwi r0, 0
/* 8006A228 00065128  41 82 00 C4 */	beq lbl_8006A2EC
/* 8006A22C 0006512C  38 01 00 24 */	addi r0, r1, 0x24
/* 8006A230 00065130  7C 1F 00 40 */	cmplw r31, r0
/* 8006A234 00065134  41 82 00 A0 */	beq lbl_8006A2D4
/* 8006A238 00065138  80 1F 00 00 */	lwz r0, 0(r31)
/* 8006A23C 0006513C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006A240 00065140  80 7F 00 04 */	lwz r3, 4(r31)
/* 8006A244 00065144  80 1F 00 08 */	lwz r0, 8(r31)
/* 8006A248 00065148  90 61 00 28 */	stw r3, 0x28(r1)
/* 8006A24C 0006514C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8006A250 00065150  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8006A254 00065154  90 01 00 30 */	stw r0, 0x30(r1)
/* 8006A258 00065158  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8006A25C 0006515C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8006A260 00065160  90 61 00 34 */	stw r3, 0x34(r1)
/* 8006A264 00065164  90 01 00 38 */	stw r0, 0x38(r1)
/* 8006A268 00065168  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8006A26C 0006516C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8006A270 00065170  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8006A274 00065174  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8006A278 00065178  90 61 00 40 */	stw r3, 0x40(r1)
/* 8006A27C 0006517C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8006A280 00065180  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8006A284 00065184  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8006A288 00065188  90 61 00 48 */	stw r3, 0x48(r1)
/* 8006A28C 0006518C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8006A290 00065190  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8006A294 00065194  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8006A298 00065198  90 61 00 50 */	stw r3, 0x50(r1)
/* 8006A29C 0006519C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8006A2A0 000651A0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8006A2A4 000651A4  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8006A2A8 000651A8  90 61 00 58 */	stw r3, 0x58(r1)
/* 8006A2AC 000651AC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8006A2B0 000651B0  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8006A2B4 000651B4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8006A2B8 000651B8  90 61 00 60 */	stw r3, 0x60(r1)
/* 8006A2BC 000651BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8006A2C0 000651C0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8006A2C4 000651C4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 8006A2C8 000651C8  3B E1 00 24 */	addi r31, r1, 0x24
/* 8006A2CC 000651CC  90 61 00 68 */	stw r3, 0x68(r1)
/* 8006A2D0 000651D0  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_8006A2D4:
/* 8006A2D4 000651D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006A2D8 000651D8  38 61 00 14 */	addi r3, r1, 0x14
/* 8006A2DC 000651DC  38 81 00 24 */	addi r4, r1, 0x24
/* 8006A2E0 000651E0  60 00 02 00 */	ori r0, r0, 0x200
/* 8006A2E4 000651E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006A2E8 000651E8  4B FE C9 3D */	bl PatchChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult
lbl_8006A2EC:
/* 8006A2EC 000651EC  2C 16 00 00 */	cmpwi r22, 0
/* 8006A2F0 000651F0  41 82 00 EC */	beq lbl_8006A3DC
/* 8006A2F4 000651F4  38 01 00 24 */	addi r0, r1, 0x24
/* 8006A2F8 000651F8  7C 1F 00 40 */	cmplw r31, r0
/* 8006A2FC 000651FC  41 82 00 A0 */	beq lbl_8006A39C
/* 8006A300 00065200  80 1F 00 00 */	lwz r0, 0(r31)
/* 8006A304 00065204  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006A308 00065208  80 7F 00 04 */	lwz r3, 4(r31)
/* 8006A30C 0006520C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8006A310 00065210  90 61 00 28 */	stw r3, 0x28(r1)
/* 8006A314 00065214  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8006A318 00065218  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8006A31C 0006521C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8006A320 00065220  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8006A324 00065224  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8006A328 00065228  90 61 00 34 */	stw r3, 0x34(r1)
/* 8006A32C 0006522C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8006A330 00065230  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8006A334 00065234  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8006A338 00065238  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8006A33C 0006523C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8006A340 00065240  90 61 00 40 */	stw r3, 0x40(r1)
/* 8006A344 00065244  90 01 00 44 */	stw r0, 0x44(r1)
/* 8006A348 00065248  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8006A34C 0006524C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8006A350 00065250  90 61 00 48 */	stw r3, 0x48(r1)
/* 8006A354 00065254  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8006A358 00065258  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8006A35C 0006525C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8006A360 00065260  90 61 00 50 */	stw r3, 0x50(r1)
/* 8006A364 00065264  90 01 00 54 */	stw r0, 0x54(r1)
/* 8006A368 00065268  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8006A36C 0006526C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8006A370 00065270  90 61 00 58 */	stw r3, 0x58(r1)
/* 8006A374 00065274  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8006A378 00065278  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8006A37C 0006527C  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8006A380 00065280  90 61 00 60 */	stw r3, 0x60(r1)
/* 8006A384 00065284  90 01 00 64 */	stw r0, 0x64(r1)
/* 8006A388 00065288  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8006A38C 0006528C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 8006A390 00065290  3B E1 00 24 */	addi r31, r1, 0x24
/* 8006A394 00065294  90 61 00 68 */	stw r3, 0x68(r1)
/* 8006A398 00065298  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_8006A39C:
/* 8006A39C 0006529C  A0 16 00 06 */	lhz r0, 6(r22)
/* 8006A3A0 000652A0  80 75 00 00 */	lwz r3, 0(r21)
/* 8006A3A4 000652A4  7C 1C 00 40 */	cmplw r28, r0
/* 8006A3A8 000652A8  40 82 00 34 */	bne lbl_8006A3DC
/* 8006A3AC 000652AC  88 16 00 04 */	lbz r0, 4(r22)
/* 8006A3B0 000652B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006A3B4 000652B4  41 82 00 28 */	beq lbl_8006A3DC
/* 8006A3B8 000652B8  90 61 00 10 */	stw r3, 0x10(r1)
/* 8006A3BC 000652BC  7E C6 B3 78 */	mr r6, r22
/* 8006A3C0 000652C0  38 81 00 24 */	addi r4, r1, 0x24
/* 8006A3C4 000652C4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8006A3C8 000652C8  80 76 00 00 */	lwz r3, 0(r22)
/* 8006A3CC 000652CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8006A3D0 000652D0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8006A3D4 000652D4  7D 89 03 A6 */	mtctr r12
/* 8006A3D8 000652D8  4E 80 04 21 */	bctrl 
lbl_8006A3DC:
/* 8006A3DC 000652DC  88 01 00 70 */	lbz r0, 0x70(r1)
/* 8006A3E0 000652E0  2C 00 00 00 */	cmpwi r0, 0
/* 8006A3E4 000652E4  41 82 00 30 */	beq lbl_8006A414
/* 8006A3E8 000652E8  55 E0 10 3A */	slwi r0, r15, 2
/* 8006A3EC 000652EC  7F 63 DB 78 */	mr r3, r27
/* 8006A3F0 000652F0  7D F3 02 14 */	add r15, r19, r0
/* 8006A3F4 000652F4  7F 44 D3 78 */	mr r4, r26
/* 8006A3F8 000652F8  7F 25 CB 78 */	mr r5, r25
/* 8006A3FC 000652FC  7F 06 C3 78 */	mr r6, r24
/* 8006A400 00065300  7E E7 BB 78 */	mr r7, r23
/* 8006A404 00065304  7F E8 FB 78 */	mr r8, r31
/* 8006A408 00065308  48 00 4A 21 */	bl func_8006EE28
/* 8006A40C 0006530C  90 6F 00 00 */	stw r3, 0(r15)
/* 8006A410 00065310  48 00 00 64 */	b lbl_8006A474
lbl_8006A414:
/* 8006A414 00065314  80 1F 00 00 */	lwz r0, 0(r31)
/* 8006A418 00065318  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8006A41C 0006531C  41 82 00 30 */	beq lbl_8006A44C
/* 8006A420 00065320  55 E0 10 3A */	slwi r0, r15, 2
/* 8006A424 00065324  7F 63 DB 78 */	mr r3, r27
/* 8006A428 00065328  7D F3 02 14 */	add r15, r19, r0
/* 8006A42C 0006532C  7F 44 D3 78 */	mr r4, r26
/* 8006A430 00065330  7F 25 CB 78 */	mr r5, r25
/* 8006A434 00065334  7F 06 C3 78 */	mr r6, r24
/* 8006A438 00065338  7E E7 BB 78 */	mr r7, r23
/* 8006A43C 0006533C  7F E8 FB 78 */	mr r8, r31
/* 8006A440 00065340  48 00 3E 4D */	bl func_8006E28C
/* 8006A444 00065344  90 6F 00 00 */	stw r3, 0(r15)
/* 8006A448 00065348  48 00 00 2C */	b lbl_8006A474
lbl_8006A44C:
/* 8006A44C 0006534C  55 E0 10 3A */	slwi r0, r15, 2
/* 8006A450 00065350  7F 63 DB 78 */	mr r3, r27
/* 8006A454 00065354  7D F3 02 14 */	add r15, r19, r0
/* 8006A458 00065358  7F 44 D3 78 */	mr r4, r26
/* 8006A45C 0006535C  7F 25 CB 78 */	mr r5, r25
/* 8006A460 00065360  7F 06 C3 78 */	mr r6, r24
/* 8006A464 00065364  7E E7 BB 78 */	mr r7, r23
/* 8006A468 00065368  7F E8 FB 78 */	mr r8, r31
/* 8006A46C 0006536C  48 00 31 8D */	bl func_8006D5F8
/* 8006A470 00065370  90 6F 00 00 */	stw r3, 0(r15)
lbl_8006A474:
/* 8006A474 00065374  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8006A478 00065378  2C 03 00 00 */	cmpwi r3, 0
/* 8006A47C 0006537C  41 82 00 0C */	beq lbl_8006A488
/* 8006A480 00065380  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8006A484 00065384  48 00 00 08 */	b lbl_8006A48C
lbl_8006A488:
/* 8006A488 00065388  38 60 00 00 */	li r3, 0
lbl_8006A48C:
/* 8006A48C 0006538C  80 0F 00 00 */	lwz r0, 0(r15)
/* 8006A490 00065390  2C 16 00 00 */	cmpwi r22, 0
/* 8006A494 00065394  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 8006A498 00065398  7C 00 1B 78 */	or r0, r0, r3
/* 8006A49C 0006539C  90 0F 00 00 */	stw r0, 0(r15)
/* 8006A4A0 000653A0  41 82 00 50 */	beq lbl_8006A4F0
/* 8006A4A4 000653A4  A0 16 00 06 */	lhz r0, 6(r22)
/* 8006A4A8 000653A8  80 75 00 00 */	lwz r3, 0(r21)
/* 8006A4AC 000653AC  7C 1C 00 40 */	cmplw r28, r0
/* 8006A4B0 000653B0  40 82 00 40 */	bne lbl_8006A4F0
/* 8006A4B4 000653B4  88 16 00 04 */	lbz r0, 4(r22)
/* 8006A4B8 000653B8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8006A4BC 000653BC  41 82 00 34 */	beq lbl_8006A4F0
/* 8006A4C0 000653C0  93 61 00 18 */	stw r27, 0x18(r1)
/* 8006A4C4 000653C4  7E C6 B3 78 */	mr r6, r22
/* 8006A4C8 000653C8  38 81 00 18 */	addi r4, r1, 0x18
/* 8006A4CC 000653CC  38 A1 00 0C */	addi r5, r1, 0xc
/* 8006A4D0 000653D0  93 41 00 1C */	stw r26, 0x1c(r1)
/* 8006A4D4 000653D4  91 E1 00 20 */	stw r15, 0x20(r1)
/* 8006A4D8 000653D8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8006A4DC 000653DC  80 76 00 00 */	lwz r3, 0(r22)
/* 8006A4E0 000653E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8006A4E4 000653E4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8006A4E8 000653E8  7D 89 03 A6 */	mtctr r12
/* 8006A4EC 000653EC  4E 80 04 21 */	bctrl 
lbl_8006A4F0:
/* 8006A4F0 000653F0  3A 94 00 05 */	addi r20, r20, 5
/* 8006A4F4 000653F4  48 00 00 7C */	b lbl_8006A570
lbl_8006A4F8:
/* 8006A4F8 000653F8  88 14 00 01 */	lbz r0, 1(r20)
/* 8006A4FC 000653FC  3B BD 00 01 */	addi r29, r29, 1
/* 8006A500 00065400  88 74 00 03 */	lbz r3, 3(r20)
/* 8006A504 00065404  54 05 40 2E */	slwi r5, r0, 8
/* 8006A508 00065408  88 94 00 02 */	lbz r4, 2(r20)
/* 8006A50C 0006540C  88 14 00 04 */	lbz r0, 4(r20)
/* 8006A510 00065410  54 63 40 2E */	slwi r3, r3, 8
/* 8006A514 00065414  7D E5 22 14 */	add r15, r5, r4
/* 8006A518 00065418  7E E3 02 14 */	add r23, r3, r0
/* 8006A51C 0006541C  7D FE 89 2E */	stwx r15, r30, r17
/* 8006A520 00065420  56 E4 10 3A */	slwi r4, r23, 2
/* 8006A524 00065424  55 E0 10 3A */	slwi r0, r15, 2
/* 8006A528 00065428  7C 93 20 2E */	lwzx r4, r19, r4
/* 8006A52C 0006542C  1C 77 00 30 */	mulli r3, r23, 0x30
/* 8006A530 00065430  3A 31 00 04 */	addi r17, r17, 4
/* 8006A534 00065434  7C 93 01 2E */	stwx r4, r19, r0
/* 8006A538 00065438  1C 0F 00 30 */	mulli r0, r15, 0x30
/* 8006A53C 0006543C  7C 72 1A 14 */	add r3, r18, r3
/* 8006A540 00065440  7C 92 02 14 */	add r4, r18, r0
/* 8006A544 00065444  48 07 D0 E1 */	bl PSMTXCopy
/* 8006A548 00065448  1C 0F 00 0C */	mulli r0, r15, 0xc
/* 8006A54C 0006544C  3A 94 00 05 */	addi r20, r20, 5
/* 8006A550 00065450  1C 77 00 0C */	mulli r3, r23, 0xc
/* 8006A554 00065454  7C 03 84 6E */	lfsux f0, r3, r16
/* 8006A558 00065458  7C 90 02 14 */	add r4, r16, r0
/* 8006A55C 0006545C  7C 10 05 2E */	stfsx f0, r16, r0
/* 8006A560 00065460  C0 03 00 04 */	lfs f0, 4(r3)
/* 8006A564 00065464  D0 04 00 04 */	stfs f0, 4(r4)
/* 8006A568 00065468  C0 03 00 08 */	lfs f0, 8(r3)
/* 8006A56C 0006546C  D0 04 00 08 */	stfs f0, 8(r4)
lbl_8006A570:
/* 8006A570 00065470  88 14 00 00 */	lbz r0, 0(r20)
/* 8006A574 00065474  28 00 00 01 */	cmplwi r0, 1
/* 8006A578 00065478  40 82 FB C0 */	bne lbl_8006A138
/* 8006A57C 0006547C  C3 E2 89 60 */	lfs f31, lbl_804C0380-_SDA2_BASE_(r2)
/* 8006A580 00065480  39 C0 00 00 */	li r14, 0
/* 8006A584 00065484  48 00 00 50 */	b lbl_8006A5D4
lbl_8006A588:
/* 8006A588 00065488  80 9E 00 00 */	lwz r4, 0(r30)
/* 8006A58C 0006548C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8006A590 00065490  7C 10 04 2E */	lfsx f0, r16, r0
/* 8006A594 00065494  7C 70 02 14 */	add r3, r16, r0
/* 8006A598 00065498  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8006A59C 0006549C  40 82 00 1C */	bne lbl_8006A5B8
/* 8006A5A0 000654A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8006A5A4 000654A4  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8006A5A8 000654A8  40 82 00 10 */	bne lbl_8006A5B8
/* 8006A5AC 000654AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8006A5B0 000654B0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8006A5B4 000654B4  41 82 00 18 */	beq lbl_8006A5CC
lbl_8006A5B8:
/* 8006A5B8 000654B8  1C 64 00 30 */	mulli r3, r4, 0x30
/* 8006A5BC 000654BC  7C B0 02 14 */	add r5, r16, r0
/* 8006A5C0 000654C0  7C 72 1A 14 */	add r3, r18, r3
/* 8006A5C4 000654C4  7C 64 1B 78 */	mr r4, r3
/* 8006A5C8 000654C8  4B FC 58 D5 */	bl MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
lbl_8006A5CC:
/* 8006A5CC 000654CC  3B DE 00 04 */	addi r30, r30, 4
/* 8006A5D0 000654D0  39 CE 00 01 */	addi r14, r14, 1
lbl_8006A5D4:
/* 8006A5D4 000654D4  7C 0E E8 40 */	cmplw r14, r29
/* 8006A5D8 000654D8  41 80 FF B0 */	blt lbl_8006A588
/* 8006A5DC 000654DC  2C 16 00 00 */	cmpwi r22, 0
/* 8006A5E0 000654E0  41 82 00 38 */	beq lbl_8006A618
/* 8006A5E4 000654E4  88 16 00 04 */	lbz r0, 4(r22)
/* 8006A5E8 000654E8  80 75 00 00 */	lwz r3, 0(r21)
/* 8006A5EC 000654EC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8006A5F0 000654F0  41 82 00 28 */	beq lbl_8006A618
/* 8006A5F4 000654F4  90 61 00 08 */	stw r3, 8(r1)
/* 8006A5F8 000654F8  7E 44 93 78 */	mr r4, r18
/* 8006A5FC 000654FC  7E C6 B3 78 */	mr r6, r22
/* 8006A600 00065500  38 A1 00 08 */	addi r5, r1, 8
/* 8006A604 00065504  80 76 00 00 */	lwz r3, 0(r22)
/* 8006A608 00065508  81 83 00 00 */	lwz r12, 0(r3)
/* 8006A60C 0006550C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8006A610 00065510  7D 89 03 A6 */	mtctr r12
/* 8006A614 00065514  4E 80 04 21 */	bctrl 
lbl_8006A618:
/* 8006A618 00065518  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 8006A61C 0006551C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8006A620 00065520  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8006A624 00065524  48 04 77 39 */	bl _restgpr_14
/* 8006A628 00065528  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8006A62C 0006552C  7C 08 03 A6 */	mtlr r0
/* 8006A630 00065530  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8006A634 00065534  4E 80 00 20 */	blr 

.global CalcWorld__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlPCUcPCQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjChrPQ34nw4r3g3d16FuncObjCalcWorld
CalcWorld__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlPCUcPCQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjChrPQ34nw4r3g3d16FuncObjCalcWorld:
/* 8006A638 00065538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006A63C 0006553C  7C 08 02 A6 */	mflr r0
/* 8006A640 00065540  3D 40 F0 00 */	lis r10, 0xf000
/* 8006A644 00065544  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006A648 00065548  80 07 00 00 */	lwz r0, 0(r7)
/* 8006A64C 0006554C  38 E1 00 08 */	addi r7, r1, 8
/* 8006A650 00065550  90 01 00 08 */	stw r0, 8(r1)
/* 8006A654 00065554  4B FF FA 21 */	bl CalcWorld__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlPCUcPCQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjChrPQ34nw4r3g3d16FuncObjCalcWorldUl
/* 8006A658 00065558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006A65C 0006555C  7C 08 03 A6 */	mtlr r0
/* 8006A660 00065560  38 21 00 10 */	addi r1, r1, 0x10
/* 8006A664 00065564  4E 80 00 20 */	blr 

.global CalcSkinning__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlQ34nw4r3g3d6ResMdlPCUc
CalcSkinning__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlQ34nw4r3g3d6ResMdlPCUc:
/* 8006A668 00065568  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006A66C 0006556C  7C 08 02 A6 */	mflr r0
/* 8006A670 00065570  90 01 00 34 */	stw r0, 0x34(r1)
/* 8006A674 00065574  39 61 00 30 */	addi r11, r1, 0x30
/* 8006A678 00065578  48 04 76 C5 */	bl _savegpr_25
/* 8006A67C 0006557C  2C 06 00 00 */	cmpwi r6, 0
/* 8006A680 00065580  7C 7A 1B 78 */	mr r26, r3
/* 8006A684 00065584  7C 9B 23 78 */	mr r27, r4
/* 8006A688 00065588  7C BC 2B 78 */	mr r28, r5
/* 8006A68C 0006558C  7C DD 33 78 */	mr r29, r6
/* 8006A690 00065590  40 82 00 1C */	bne lbl_8006A6AC
/* 8006A694 00065594  7F 83 E3 78 */	mr r3, r28
/* 8006A698 00065598  38 8D 80 B0 */	addi r4, r13, lbl_804BD430-_SDA_BASE_
/* 8006A69C 0006559C  4B FE 81 21 */	bl func_800527BC
/* 8006A6A0 000655A0  2C 03 00 00 */	cmpwi r3, 0
/* 8006A6A4 000655A4  7C 7D 1B 78 */	mr r29, r3
/* 8006A6A8 000655A8  41 82 02 84 */	beq lbl_8006A92C
lbl_8006A6AC:
/* 8006A6AC 000655AC  4B FF F9 A5 */	bl GetSkinningMtxTemporary__Q44nw4r3g3d6detail7workmemFv
/* 8006A6B0 000655B0  7C 7E 1B 78 */	mr r30, r3
/* 8006A6B4 000655B4  3F E0 F0 00 */	lis r31, 0xf000
/* 8006A6B8 000655B8  48 00 02 68 */	b lbl_8006A920
lbl_8006A6BC:
/* 8006A6BC 000655BC  28 00 00 03 */	cmplwi r0, 3
/* 8006A6C0 000655C0  40 82 02 20 */	bne lbl_8006A8E0
/* 8006A6C4 000655C4  C0 02 89 64 */	lfs f0, lbl_804C0384-_SDA2_BASE_(r2)
/* 8006A6C8 000655C8  88 7D 00 01 */	lbz r3, 1(r29)
/* 8006A6CC 000655CC  10 00 04 20 */	ps_merge00 f0, f0, f0
/* 8006A6D0 000655D0  88 1D 00 02 */	lbz r0, 2(r29)
/* 8006A6D4 000655D4  89 7D 00 03 */	lbz r11, 3(r29)
/* 8006A6D8 000655D8  54 63 40 2E */	slwi r3, r3, 8
/* 8006A6DC 000655DC  7D 43 02 14 */	add r10, r3, r0
/* 8006A6E0 000655E0  3B BD 00 04 */	addi r29, r29, 4
/* 8006A6E4 000655E4  55 49 10 3A */	slwi r9, r10, 2
/* 8006A6E8 000655E8  10 20 04 20 */	ps_merge00 f1, f0, f0
/* 8006A6EC 000655EC  10 40 04 20 */	ps_merge00 f2, f0, f0
/* 8006A6F0 000655F0  28 0B 00 00 */	cmplwi r11, 0
/* 8006A6F4 000655F4  10 60 04 20 */	ps_merge00 f3, f0, f0
/* 8006A6F8 000655F8  7F FB 49 2E */	stwx r31, r27, r9
/* 8006A6FC 000655FC  10 80 04 20 */	ps_merge00 f4, f0, f0
/* 8006A700 00065600  10 A0 04 20 */	ps_merge00 f5, f0, f0
/* 8006A704 00065604  40 81 01 B8 */	ble lbl_8006A8BC
/* 8006A708 00065608  55 60 F8 7F */	rlwinm. r0, r11, 0x1f, 1, 0x1f
/* 8006A70C 0006560C  7C 09 03 A6 */	mtctr r0
/* 8006A710 00065610  41 82 01 1C */	beq lbl_8006A82C
lbl_8006A714:
/* 8006A714 00065614  88 7D 00 00 */	lbz r3, 0(r29)
/* 8006A718 00065618  88 1D 00 01 */	lbz r0, 1(r29)
/* 8006A71C 0006561C  54 63 40 2E */	slwi r3, r3, 8
/* 8006A720 00065620  88 BD 00 03 */	lbz r5, 3(r29)
/* 8006A724 00065624  7C 03 02 14 */	add r0, r3, r0
/* 8006A728 00065628  7C 7B 48 2E */	lwzx r3, r27, r9
/* 8006A72C 0006562C  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8006A730 00065630  88 FD 00 05 */	lbz r7, 5(r29)
/* 8006A734 00065634  54 00 10 3A */	slwi r0, r0, 2
/* 8006A738 00065638  89 1D 00 04 */	lbz r8, 4(r29)
/* 8006A73C 0006563C  7C 1B 00 2E */	lwzx r0, r27, r0
/* 8006A740 00065640  54 A5 80 1E */	slwi r5, r5, 0x10
/* 8006A744 00065644  7D 9E 22 14 */	add r12, r30, r4
/* 8006A748 00065648  88 DD 00 02 */	lbz r6, 2(r29)
/* 8006A74C 0006564C  E0 EC 00 00 */	psq_l f7, 0(r12), 0, qr0
/* 8006A750 00065650  7C 60 00 38 */	and r0, r3, r0
/* 8006A754 00065654  E1 0C 00 08 */	psq_l f8, 8(r12), 0, qr0
/* 8006A758 00065658  51 07 44 2E */	rlwimi r7, r8, 8, 0x10, 0x17
/* 8006A75C 0006565C  E1 2C 00 10 */	psq_l f9, 16(r12), 0, qr0
/* 8006A760 00065660  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 8006A764 00065664  E1 4C 00 18 */	psq_l f10, 24(r12), 0, qr0
/* 8006A768 00065668  7C E4 2B 78 */	or r4, r7, r5
/* 8006A76C 0006566C  E1 6C 00 20 */	psq_l f11, 32(r12), 0, qr0
/* 8006A770 00065670  E1 8C 00 28 */	psq_l f12, 40(r12), 0, qr0
/* 8006A774 00065674  90 81 00 08 */	stw r4, 8(r1)
/* 8006A778 00065678  7C 1B 49 2E */	stwx r0, r27, r9
/* 8006A77C 0006567C  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8006A780 00065680  88 7D 00 06 */	lbz r3, 6(r29)
/* 8006A784 00065684  88 BD 00 09 */	lbz r5, 9(r29)
/* 8006A788 00065688  10 07 01 9C */	ps_madds0 f0, f7, f6, f0
/* 8006A78C 0006568C  88 1D 00 07 */	lbz r0, 7(r29)
/* 8006A790 00065690  54 63 40 2E */	slwi r3, r3, 8
/* 8006A794 00065694  89 1D 00 0A */	lbz r8, 0xa(r29)
/* 8006A798 00065698  54 A5 80 1E */	slwi r5, r5, 0x10
/* 8006A79C 0006569C  7C 03 02 14 */	add r0, r3, r0
/* 8006A7A0 000656A0  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8006A7A4 000656A4  88 DD 00 08 */	lbz r6, 8(r29)
/* 8006A7A8 000656A8  88 FD 00 0B */	lbz r7, 0xb(r29)
/* 8006A7AC 000656AC  54 00 10 3A */	slwi r0, r0, 2
/* 8006A7B0 000656B0  51 07 44 2E */	rlwimi r7, r8, 8, 0x10, 0x17
/* 8006A7B4 000656B4  10 28 09 9C */	ps_madds0 f1, f8, f6, f1
/* 8006A7B8 000656B8  7D 9E 22 14 */	add r12, r30, r4
/* 8006A7BC 000656BC  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 8006A7C0 000656C0  7C E4 2B 78 */	or r4, r7, r5
/* 8006A7C4 000656C4  10 49 11 9C */	ps_madds0 f2, f9, f6, f2
/* 8006A7C8 000656C8  10 6A 19 9C */	ps_madds0 f3, f10, f6, f3
/* 8006A7CC 000656CC  90 81 00 08 */	stw r4, 8(r1)
/* 8006A7D0 000656D0  10 8B 21 9C */	ps_madds0 f4, f11, f6, f4
/* 8006A7D4 000656D4  E0 EC 00 00 */	psq_l f7, 0(r12), 0, qr0
/* 8006A7D8 000656D8  10 AC 29 9C */	ps_madds0 f5, f12, f6, f5
/* 8006A7DC 000656DC  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8006A7E0 000656E0  E1 0C 00 08 */	psq_l f8, 8(r12), 0, qr0
/* 8006A7E4 000656E4  3B BD 00 0C */	addi r29, r29, 0xc
/* 8006A7E8 000656E8  E1 2C 00 10 */	psq_l f9, 16(r12), 0, qr0
/* 8006A7EC 000656EC  10 07 01 9C */	ps_madds0 f0, f7, f6, f0
/* 8006A7F0 000656F0  E1 4C 00 18 */	psq_l f10, 24(r12), 0, qr0
/* 8006A7F4 000656F4  10 28 09 9C */	ps_madds0 f1, f8, f6, f1
/* 8006A7F8 000656F8  E1 6C 00 20 */	psq_l f11, 32(r12), 0, qr0
/* 8006A7FC 000656FC  10 49 11 9C */	ps_madds0 f2, f9, f6, f2
/* 8006A800 00065700  E1 8C 00 28 */	psq_l f12, 40(r12), 0, qr0
/* 8006A804 00065704  7C 7B 48 2E */	lwzx r3, r27, r9
/* 8006A808 00065708  10 6A 19 9C */	ps_madds0 f3, f10, f6, f3
/* 8006A80C 0006570C  7C 1B 00 2E */	lwzx r0, r27, r0
/* 8006A810 00065710  10 8B 21 9C */	ps_madds0 f4, f11, f6, f4
/* 8006A814 00065714  10 AC 29 9C */	ps_madds0 f5, f12, f6, f5
/* 8006A818 00065718  7C 60 00 38 */	and r0, r3, r0
/* 8006A81C 0006571C  7C 1B 49 2E */	stwx r0, r27, r9
/* 8006A820 00065720  42 00 FE F4 */	bdnz lbl_8006A714
/* 8006A824 00065724  71 6B 00 01 */	andi. r11, r11, 1
/* 8006A828 00065728  41 82 00 94 */	beq lbl_8006A8BC
lbl_8006A82C:
/* 8006A82C 0006572C  7D 69 03 A6 */	mtctr r11
lbl_8006A830:
/* 8006A830 00065730  88 7D 00 00 */	lbz r3, 0(r29)
/* 8006A834 00065734  88 1D 00 01 */	lbz r0, 1(r29)
/* 8006A838 00065738  54 63 40 2E */	slwi r3, r3, 8
/* 8006A83C 0006573C  88 BD 00 03 */	lbz r5, 3(r29)
/* 8006A840 00065740  7C 03 02 14 */	add r0, r3, r0
/* 8006A844 00065744  89 1D 00 04 */	lbz r8, 4(r29)
/* 8006A848 00065748  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8006A84C 0006574C  88 DD 00 02 */	lbz r6, 2(r29)
/* 8006A850 00065750  88 FD 00 05 */	lbz r7, 5(r29)
/* 8006A854 00065754  54 A5 80 1E */	slwi r5, r5, 0x10
/* 8006A858 00065758  51 07 44 2E */	rlwimi r7, r8, 8, 0x10, 0x17
/* 8006A85C 0006575C  7C 7B 48 2E */	lwzx r3, r27, r9
/* 8006A860 00065760  7D 9E 22 14 */	add r12, r30, r4
/* 8006A864 00065764  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 8006A868 00065768  7C E4 2B 78 */	or r4, r7, r5
/* 8006A86C 0006576C  54 00 10 3A */	slwi r0, r0, 2
/* 8006A870 00065770  90 81 00 08 */	stw r4, 8(r1)
/* 8006A874 00065774  3B BD 00 06 */	addi r29, r29, 6
/* 8006A878 00065778  7C 1B 00 2E */	lwzx r0, r27, r0
/* 8006A87C 0006577C  E0 EC 00 00 */	psq_l f7, 0(r12), 0, qr0
/* 8006A880 00065780  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8006A884 00065784  7C 60 00 38 */	and r0, r3, r0
/* 8006A888 00065788  E1 0C 00 08 */	psq_l f8, 8(r12), 0, qr0
/* 8006A88C 0006578C  E1 2C 00 10 */	psq_l f9, 16(r12), 0, qr0
/* 8006A890 00065790  10 07 01 9C */	ps_madds0 f0, f7, f6, f0
/* 8006A894 00065794  E1 4C 00 18 */	psq_l f10, 24(r12), 0, qr0
/* 8006A898 00065798  10 28 09 9C */	ps_madds0 f1, f8, f6, f1
/* 8006A89C 0006579C  E1 6C 00 20 */	psq_l f11, 32(r12), 0, qr0
/* 8006A8A0 000657A0  10 49 11 9C */	ps_madds0 f2, f9, f6, f2
/* 8006A8A4 000657A4  E1 8C 00 28 */	psq_l f12, 40(r12), 0, qr0
/* 8006A8A8 000657A8  10 6A 19 9C */	ps_madds0 f3, f10, f6, f3
/* 8006A8AC 000657AC  10 8B 21 9C */	ps_madds0 f4, f11, f6, f4
/* 8006A8B0 000657B0  7C 1B 49 2E */	stwx r0, r27, r9
/* 8006A8B4 000657B4  10 AC 29 9C */	ps_madds0 f5, f12, f6, f5
/* 8006A8B8 000657B8  42 00 FF 78 */	bdnz lbl_8006A830
lbl_8006A8BC:
/* 8006A8BC 000657BC  1C 0A 00 30 */	mulli r0, r10, 0x30
/* 8006A8C0 000657C0  7C 7A 02 14 */	add r3, r26, r0
/* 8006A8C4 000657C4  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 8006A8C8 000657C8  F0 23 00 08 */	psq_st f1, 8(r3), 0, qr0
/* 8006A8CC 000657CC  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 8006A8D0 000657D0  F0 63 00 18 */	psq_st f3, 24(r3), 0, qr0
/* 8006A8D4 000657D4  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 8006A8D8 000657D8  F0 A3 00 28 */	psq_st f5, 40(r3), 0, qr0
/* 8006A8DC 000657DC  48 00 00 44 */	b lbl_8006A920
lbl_8006A8E0:
/* 8006A8E0 000657E0  88 1D 00 01 */	lbz r0, 1(r29)
/* 8006A8E4 000657E4  7F 83 E3 78 */	mr r3, r28
/* 8006A8E8 000657E8  88 9D 00 03 */	lbz r4, 3(r29)
/* 8006A8EC 000657EC  54 06 40 2E */	slwi r6, r0, 8
/* 8006A8F0 000657F0  88 BD 00 02 */	lbz r5, 2(r29)
/* 8006A8F4 000657F4  88 1D 00 04 */	lbz r0, 4(r29)
/* 8006A8F8 000657F8  54 84 40 2E */	slwi r4, r4, 8
/* 8006A8FC 000657FC  7F 26 2A 14 */	add r25, r6, r5
/* 8006A900 00065800  7C 84 02 14 */	add r4, r4, r0
/* 8006A904 00065804  4B FE 7F E5 */	bl func_800528E8
/* 8006A908 00065808  1C 19 00 30 */	mulli r0, r25, 0x30
/* 8006A90C 0006580C  38 83 00 A0 */	addi r4, r3, 0xa0
/* 8006A910 00065810  7C 7A 02 14 */	add r3, r26, r0
/* 8006A914 00065814  7C BE 02 14 */	add r5, r30, r0
/* 8006A918 00065818  48 07 CD 41 */	bl PSMTXConcat
/* 8006A91C 0006581C  3B BD 00 05 */	addi r29, r29, 5
lbl_8006A920:
/* 8006A920 00065820  88 1D 00 00 */	lbz r0, 0(r29)
/* 8006A924 00065824  28 00 00 01 */	cmplwi r0, 1
/* 8006A928 00065828  40 82 FD 94 */	bne lbl_8006A6BC
lbl_8006A92C:
/* 8006A92C 0006582C  39 61 00 30 */	addi r11, r1, 0x30
/* 8006A930 00065830  48 04 74 59 */	bl _restgpr_25
/* 8006A934 00065834  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006A938 00065838  7C 08 03 A6 */	mtlr r0
/* 8006A93C 0006583C  38 21 00 30 */	addi r1, r1, 0x30
/* 8006A940 00065840  4E 80 00 20 */	blr 

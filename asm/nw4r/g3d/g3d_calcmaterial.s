.include "macros.inc"

.section .text, "ax"

.global CalcMaterialDirectly__Q24nw4r3g3dFQ34nw4r3g3d6ResMdlPQ34nw4r3g3d12AnmObjTexPatPQ34nw4r3g3d12AnmObjTexSrtPQ34nw4r3g3d12AnmObjMatClr
CalcMaterialDirectly__Q24nw4r3g3dFQ34nw4r3g3d6ResMdlPQ34nw4r3g3d12AnmObjTexPatPQ34nw4r3g3d12AnmObjTexSrtPQ34nw4r3g3d12AnmObjMatClr:
/* 8007772C 0007262C  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 80077730 00072630  7C 08 02 A6 */	mflr r0
/* 80077734 00072634  90 01 02 14 */	stw r0, 0x214(r1)
/* 80077738 00072638  39 61 02 10 */	addi r11, r1, 0x210
/* 8007773C 0007263C  48 03 A5 D5 */	bl _savegpr_14
/* 80077740 00072640  7C 6F 1B 78 */	mr r15, r3
/* 80077744 00072644  7C 90 23 78 */	mr r16, r4
/* 80077748 00072648  7C B1 2B 78 */	mr r17, r5
/* 8007774C 0007264C  7C D2 33 78 */	mr r18, r6
/* 80077750 00072650  4B FD B7 35 */	bl func_80052E84
/* 80077754 00072654  3B 61 00 A8 */	addi r27, r1, 0xa8
/* 80077758 00072658  38 01 00 8C */	addi r0, r1, 0x8c
/* 8007775C 0007265C  7C 80 D8 50 */	subf r4, r0, r27
/* 80077760 00072660  3B 81 00 C8 */	addi r28, r1, 0xc8
/* 80077764 00072664  38 01 00 AC */	addi r0, r1, 0xac
/* 80077768 00072668  90 61 01 B8 */	stw r3, 0x1b8(r1)
/* 8007776C 0007266C  7C C0 E0 50 */	subf r6, r0, r28
/* 80077770 00072670  38 A4 00 03 */	addi r5, r4, 3
/* 80077774 00072674  54 80 00 00 */	rlwinm r0, r4, 0, 0, 0
/* 80077778 00072678  3A 60 00 00 */	li r19, 0
/* 8007777C 0007267C  7C A3 16 70 */	srawi r3, r5, 2
/* 80077780 00072680  38 E6 00 03 */	addi r7, r6, 3
/* 80077784 00072684  7C 83 01 94 */	addze r4, r3
/* 80077788 00072688  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8007778C 0007268C  7C E3 16 70 */	srawi r3, r7, 2
/* 80077790 00072690  54 A0 00 00 */	rlwinm r0, r5, 0, 0, 0
/* 80077794 00072694  7C 63 01 94 */	addze r3, r3
/* 80077798 00072698  3B 44 00 01 */	addi r26, r4, 1
/* 8007779C 0007269C  3B 03 00 01 */	addi r24, r3, 1
/* 800777A0 000726A0  90 01 01 B0 */	stw r0, 0x1b0(r1)
/* 800777A4 000726A4  54 99 00 00 */	rlwinm r25, r4, 0, 0, 0
/* 800777A8 000726A8  57 4E 00 00 */	rlwinm r14, r26, 0, 0, 0
/* 800777AC 000726AC  54 D7 00 00 */	rlwinm r23, r6, 0, 0, 0
/* 800777B0 000726B0  54 F6 00 00 */	rlwinm r22, r7, 0, 0, 0
/* 800777B4 000726B4  54 75 00 00 */	rlwinm r21, r3, 0, 0, 0
/* 800777B8 000726B8  57 14 00 00 */	rlwinm r20, r24, 0, 0, 0
/* 800777BC 000726BC  3B A0 00 00 */	li r29, 0
/* 800777C0 000726C0  48 00 03 58 */	b lbl_80077B18
lbl_800777C4:
/* 800777C4 000726C4  7D E3 7B 78 */	mr r3, r15
/* 800777C8 000726C8  7E 64 9B 78 */	mr r4, r19
/* 800777CC 000726CC  4B FD B6 65 */	bl func_80052E30
/* 800777D0 000726D0  2C 10 00 00 */	cmpwi r16, 0
/* 800777D4 000726D4  7C 7F 1B 78 */	mr r31, r3
/* 800777D8 000726D8  41 82 02 34 */	beq lbl_80077A0C
/* 800777DC 000726DC  7E 03 83 78 */	mr r3, r16
/* 800777E0 000726E0  7E 64 9B 78 */	mr r4, r19
/* 800777E4 000726E4  4B FE 5D 75 */	bl TestExistence__Q34nw4r3g3d12AnmObjTexPatCFUl
/* 800777E8 000726E8  2C 03 00 00 */	cmpwi r3, 0
/* 800777EC 000726EC  41 82 02 20 */	beq lbl_80077A0C
/* 800777F0 000726F0  38 81 00 8C */	addi r4, r1, 0x8c
/* 800777F4 000726F4  93 A1 00 88 */	stw r29, 0x88(r1)
/* 800777F8 000726F8  7C 04 D8 40 */	cmplw r4, r27
/* 800777FC 000726FC  40 80 00 EC */	bge lbl_800778E8
/* 80077800 00072700  2C 1A 00 08 */	cmpwi r26, 8
/* 80077804 00072704  40 81 00 C0 */	ble lbl_800778C4
/* 80077808 00072708  7C 80 23 78 */	mr r0, r4
/* 8007780C 0007270C  38 60 00 00 */	li r3, 0
/* 80077810 00072710  7C 00 D8 40 */	cmplw r0, r27
/* 80077814 00072714  38 A0 00 00 */	li r5, 0
/* 80077818 00072718  41 81 00 30 */	bgt lbl_80077848
/* 8007781C 0007271C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80077820 00072720  38 C0 00 01 */	li r6, 1
/* 80077824 00072724  2C 00 00 00 */	cmpwi r0, 0
/* 80077828 00072728  40 82 00 14 */	bne lbl_8007783C
/* 8007782C 0007272C  80 01 01 B0 */	lwz r0, 0x1b0(r1)
/* 80077830 00072730  2C 00 00 00 */	cmpwi r0, 0
/* 80077834 00072734  41 82 00 08 */	beq lbl_8007783C
/* 80077838 00072738  38 C0 00 00 */	li r6, 0
lbl_8007783C:
/* 8007783C 0007273C  2C 06 00 00 */	cmpwi r6, 0
/* 80077840 00072740  41 82 00 08 */	beq lbl_80077848
/* 80077844 00072744  38 A0 00 01 */	li r5, 1
lbl_80077848:
/* 80077848 00072748  2C 05 00 00 */	cmpwi r5, 0
/* 8007784C 0007274C  41 82 00 28 */	beq lbl_80077874
/* 80077850 00072750  2C 19 00 00 */	cmpwi r25, 0
/* 80077854 00072754  38 00 00 01 */	li r0, 1
/* 80077858 00072758  40 82 00 10 */	bne lbl_80077868
/* 8007785C 0007275C  7C 19 70 00 */	cmpw r25, r14
/* 80077860 00072760  41 82 00 08 */	beq lbl_80077868
/* 80077864 00072764  38 00 00 00 */	li r0, 0
lbl_80077868:
/* 80077868 00072768  2C 00 00 00 */	cmpwi r0, 0
/* 8007786C 0007276C  41 82 00 08 */	beq lbl_80077874
/* 80077870 00072770  38 60 00 01 */	li r3, 1
lbl_80077874:
/* 80077874 00072774  2C 03 00 00 */	cmpwi r3, 0
/* 80077878 00072778  41 82 00 4C */	beq lbl_800778C4
/* 8007787C 0007277C  38 61 00 88 */	addi r3, r1, 0x88
/* 80077880 00072780  38 03 00 1F */	addi r0, r3, 0x1f
/* 80077884 00072784  7C 04 00 50 */	subf r0, r4, r0
/* 80077888 00072788  54 00 D9 7E */	srwi r0, r0, 5
/* 8007788C 0007278C  7C 09 03 A6 */	mtctr r0
/* 80077890 00072790  7C 60 1B 78 */	mr r0, r3
/* 80077894 00072794  7C 04 00 40 */	cmplw r4, r0
/* 80077898 00072798  40 80 00 2C */	bge lbl_800778C4
lbl_8007789C:
/* 8007789C 0007279C  93 A4 00 00 */	stw r29, 0(r4)
/* 800778A0 000727A0  93 A4 00 04 */	stw r29, 4(r4)
/* 800778A4 000727A4  93 A4 00 08 */	stw r29, 8(r4)
/* 800778A8 000727A8  93 A4 00 0C */	stw r29, 0xc(r4)
/* 800778AC 000727AC  93 A4 00 10 */	stw r29, 0x10(r4)
/* 800778B0 000727B0  93 A4 00 14 */	stw r29, 0x14(r4)
/* 800778B4 000727B4  93 A4 00 18 */	stw r29, 0x18(r4)
/* 800778B8 000727B8  93 A4 00 1C */	stw r29, 0x1c(r4)
/* 800778BC 000727BC  38 84 00 20 */	addi r4, r4, 0x20
/* 800778C0 000727C0  42 00 FF DC */	bdnz lbl_8007789C
lbl_800778C4:
/* 800778C4 000727C4  38 1B 00 03 */	addi r0, r27, 3
/* 800778C8 000727C8  7C 04 00 50 */	subf r0, r4, r0
/* 800778CC 000727CC  54 00 F0 BE */	srwi r0, r0, 2
/* 800778D0 000727D0  7C 09 03 A6 */	mtctr r0
/* 800778D4 000727D4  7C 04 D8 40 */	cmplw r4, r27
/* 800778D8 000727D8  40 80 00 10 */	bge lbl_800778E8
lbl_800778DC:
/* 800778DC 000727DC  93 A4 00 00 */	stw r29, 0(r4)
/* 800778E0 000727E0  38 84 00 04 */	addi r4, r4, 4
/* 800778E4 000727E4  42 00 FF F8 */	bdnz lbl_800778DC
lbl_800778E8:
/* 800778E8 000727E8  38 61 00 AC */	addi r3, r1, 0xac
/* 800778EC 000727EC  93 A1 00 A8 */	stw r29, 0xa8(r1)
/* 800778F0 000727F0  7C 03 E0 40 */	cmplw r3, r28
/* 800778F4 000727F4  40 80 00 DC */	bge lbl_800779D0
/* 800778F8 000727F8  2C 18 00 08 */	cmpwi r24, 8
/* 800778FC 000727FC  40 81 00 B0 */	ble lbl_800779AC
/* 80077900 00072800  7C 60 1B 78 */	mr r0, r3
/* 80077904 00072804  38 80 00 00 */	li r4, 0
/* 80077908 00072808  7C 00 E0 40 */	cmplw r0, r28
/* 8007790C 0007280C  38 00 00 00 */	li r0, 0
/* 80077910 00072810  41 81 00 28 */	bgt lbl_80077938
/* 80077914 00072814  2C 17 00 00 */	cmpwi r23, 0
/* 80077918 00072818  38 A0 00 01 */	li r5, 1
/* 8007791C 0007281C  40 82 00 10 */	bne lbl_8007792C
/* 80077920 00072820  2C 16 00 00 */	cmpwi r22, 0
/* 80077924 00072824  41 82 00 08 */	beq lbl_8007792C
/* 80077928 00072828  38 A0 00 00 */	li r5, 0
lbl_8007792C:
/* 8007792C 0007282C  2C 05 00 00 */	cmpwi r5, 0
/* 80077930 00072830  41 82 00 08 */	beq lbl_80077938
/* 80077934 00072834  38 80 00 01 */	li r4, 1
lbl_80077938:
/* 80077938 00072838  2C 04 00 00 */	cmpwi r4, 0
/* 8007793C 0007283C  41 82 00 28 */	beq lbl_80077964
/* 80077940 00072840  2C 15 00 00 */	cmpwi r21, 0
/* 80077944 00072844  38 80 00 01 */	li r4, 1
/* 80077948 00072848  40 82 00 10 */	bne lbl_80077958
/* 8007794C 0007284C  7C 15 A0 00 */	cmpw r21, r20
/* 80077950 00072850  41 82 00 08 */	beq lbl_80077958
/* 80077954 00072854  38 80 00 00 */	li r4, 0
lbl_80077958:
/* 80077958 00072858  2C 04 00 00 */	cmpwi r4, 0
/* 8007795C 0007285C  41 82 00 08 */	beq lbl_80077964
/* 80077960 00072860  38 00 00 01 */	li r0, 1
lbl_80077964:
/* 80077964 00072864  2C 00 00 00 */	cmpwi r0, 0
/* 80077968 00072868  41 82 00 44 */	beq lbl_800779AC
/* 8007796C 0007286C  38 1B 00 1F */	addi r0, r27, 0x1f
/* 80077970 00072870  7C 03 00 50 */	subf r0, r3, r0
/* 80077974 00072874  54 00 D9 7E */	srwi r0, r0, 5
/* 80077978 00072878  7C 09 03 A6 */	mtctr r0
/* 8007797C 0007287C  7C 03 D8 40 */	cmplw r3, r27
/* 80077980 00072880  40 80 00 2C */	bge lbl_800779AC
lbl_80077984:
/* 80077984 00072884  93 A3 00 00 */	stw r29, 0(r3)
/* 80077988 00072888  93 A3 00 04 */	stw r29, 4(r3)
/* 8007798C 0007288C  93 A3 00 08 */	stw r29, 8(r3)
/* 80077990 00072890  93 A3 00 0C */	stw r29, 0xc(r3)
/* 80077994 00072894  93 A3 00 10 */	stw r29, 0x10(r3)
/* 80077998 00072898  93 A3 00 14 */	stw r29, 0x14(r3)
/* 8007799C 0007289C  93 A3 00 18 */	stw r29, 0x18(r3)
/* 800779A0 000728A0  93 A3 00 1C */	stw r29, 0x1c(r3)
/* 800779A4 000728A4  38 63 00 20 */	addi r3, r3, 0x20
/* 800779A8 000728A8  42 00 FF DC */	bdnz lbl_80077984
lbl_800779AC:
/* 800779AC 000728AC  38 1C 00 03 */	addi r0, r28, 3
/* 800779B0 000728B0  7C 03 00 50 */	subf r0, r3, r0
/* 800779B4 000728B4  54 00 F0 BE */	srwi r0, r0, 2
/* 800779B8 000728B8  7C 09 03 A6 */	mtctr r0
/* 800779BC 000728BC  7C 03 E0 40 */	cmplw r3, r28
/* 800779C0 000728C0  40 80 00 10 */	bge lbl_800779D0
lbl_800779C4:
/* 800779C4 000728C4  93 A3 00 00 */	stw r29, 0(r3)
/* 800779C8 000728C8  38 63 00 04 */	addi r3, r3, 4
/* 800779CC 000728CC  42 00 FF F8 */	bdnz lbl_800779C4
lbl_800779D0:
/* 800779D0 000728D0  81 90 00 00 */	lwz r12, 0(r16)
/* 800779D4 000728D4  7E 03 83 78 */	mr r3, r16
/* 800779D8 000728D8  7E 65 9B 78 */	mr r5, r19
/* 800779DC 000728DC  38 81 00 84 */	addi r4, r1, 0x84
/* 800779E0 000728E0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800779E4 000728E4  7D 89 03 A6 */	mtctr r12
/* 800779E8 000728E8  4E 80 04 21 */	bctrl 
/* 800779EC 000728EC  38 9F 01 40 */	addi r4, r31, 0x140
/* 800779F0 000728F0  38 1F 00 3C */	addi r0, r31, 0x3c
/* 800779F4 000728F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 800779F8 000728F8  7C 65 1B 78 */	mr r5, r3
/* 800779FC 000728FC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80077A00 00072900  38 81 00 18 */	addi r4, r1, 0x18
/* 80077A04 00072904  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80077A08 00072908  4B FE 6A 7D */	bl ApplyTexPatAnmResult__Q24nw4r3g3dFQ34nw4r3g3d9ResTexObjQ34nw4r3g3d10ResTlutObjPCQ34nw4r3g3d15TexPatAnmResult
lbl_80077A0C:
/* 80077A0C 0007290C  2C 11 00 00 */	cmpwi r17, 0
/* 80077A10 00072910  41 82 00 80 */	beq lbl_80077A90
/* 80077A14 00072914  7E 23 8B 78 */	mr r3, r17
/* 80077A18 00072918  7E 64 9B 78 */	mr r4, r19
/* 80077A1C 0007291C  4B FE 6F 95 */	bl TestExistence__Q34nw4r3g3d12AnmObjTexSrtCFUl
/* 80077A20 00072920  2C 03 00 00 */	cmpwi r3, 0
/* 80077A24 00072924  41 82 00 6C */	beq lbl_80077A90
/* 80077A28 00072928  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80077A2C 0007292C  3B DF 01 A4 */	addi r30, r31, 0x1a4
/* 80077A30 00072930  2C 00 00 00 */	cmpwi r0, 0
/* 80077A34 00072934  41 82 00 0C */	beq lbl_80077A40
/* 80077A38 00072938  7C 7F 02 14 */	add r3, r31, r0
/* 80077A3C 0007293C  48 00 00 08 */	b lbl_80077A44
lbl_80077A40:
/* 80077A40 00072940  38 60 00 00 */	li r3, 0
lbl_80077A44:
/* 80077A44 00072944  38 03 00 A0 */	addi r0, r3, 0xa0
/* 80077A48 00072948  7E 23 8B 78 */	mr r3, r17
/* 80077A4C 0007294C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80077A50 00072950  7E 65 9B 78 */	mr r5, r19
/* 80077A54 00072954  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80077A58 00072958  81 91 00 00 */	lwz r12, 0(r17)
/* 80077A5C 0007295C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80077A60 00072960  7D 89 03 A6 */	mtctr r12
/* 80077A64 00072964  4E 80 04 21 */	bctrl 
/* 80077A68 00072968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80077A6C 0007296C  7C 65 1B 78 */	mr r5, r3
/* 80077A70 00072970  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80077A74 00072974  38 61 00 14 */	addi r3, r1, 0x14
/* 80077A78 00072978  38 81 00 10 */	addi r4, r1, 0x10
/* 80077A7C 0007297C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80077A80 00072980  4B FE 7E 49 */	bl ApplyTexSrtAnmResult__Q24nw4r3g3dFQ34nw4r3g3d9ResTexSrtQ34nw4r3g3d20ResMatIndMtxAndScalePCQ34nw4r3g3d15TexSrtAnmResult
/* 80077A84 00072984  38 61 00 24 */	addi r3, r1, 0x24
/* 80077A88 00072988  38 80 00 00 */	li r4, 0
/* 80077A8C 0007298C  4B FD CD 7D */	bl DCStore__Q34nw4r3g3d20ResMatIndMtxAndScaleFb
lbl_80077A90:
/* 80077A90 00072990  2C 12 00 00 */	cmpwi r18, 0
/* 80077A94 00072994  41 82 00 80 */	beq lbl_80077B14
/* 80077A98 00072998  7E 43 93 78 */	mr r3, r18
/* 80077A9C 0007299C  7E 64 9B 78 */	mr r4, r19
/* 80077AA0 000729A0  4B FE 43 19 */	bl TestExistence__Q34nw4r3g3d12AnmObjMatClrCFUl
/* 80077AA4 000729A4  2C 03 00 00 */	cmpwi r3, 0
/* 80077AA8 000729A8  41 82 00 6C */	beq lbl_80077B14
/* 80077AAC 000729AC  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80077AB0 000729B0  2C 00 00 00 */	cmpwi r0, 0
/* 80077AB4 000729B4  41 82 00 0C */	beq lbl_80077AC0
/* 80077AB8 000729B8  7C 7F 02 14 */	add r3, r31, r0
/* 80077ABC 000729BC  48 00 00 08 */	b lbl_80077AC4
lbl_80077AC0:
/* 80077AC0 000729C0  38 60 00 00 */	li r3, 0
lbl_80077AC4:
/* 80077AC4 000729C4  38 03 00 20 */	addi r0, r3, 0x20
/* 80077AC8 000729C8  7E 43 93 78 */	mr r3, r18
/* 80077ACC 000729CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80077AD0 000729D0  7E 65 9B 78 */	mr r5, r19
/* 80077AD4 000729D4  3B DF 03 EC */	addi r30, r31, 0x3ec
/* 80077AD8 000729D8  38 81 00 28 */	addi r4, r1, 0x28
/* 80077ADC 000729DC  81 92 00 00 */	lwz r12, 0(r18)
/* 80077AE0 000729E0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80077AE4 000729E4  7D 89 03 A6 */	mtctr r12
/* 80077AE8 000729E8  4E 80 04 21 */	bctrl 
/* 80077AEC 000729EC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80077AF0 000729F0  7C 65 1B 78 */	mr r5, r3
/* 80077AF4 000729F4  93 C1 00 0C */	stw r30, 0xc(r1)
/* 80077AF8 000729F8  38 61 00 0C */	addi r3, r1, 0xc
/* 80077AFC 000729FC  38 81 00 08 */	addi r4, r1, 8
/* 80077B00 00072A00  90 01 00 08 */	stw r0, 8(r1)
/* 80077B04 00072A04  4B FE 51 CD */	bl ApplyClrAnmResult__Q24nw4r3g3dFQ34nw4r3g3d10ResMatChanQ34nw4r3g3d14ResMatTevColorPCQ34nw4r3g3d12ClrAnmResult
/* 80077B08 00072A08  38 61 00 20 */	addi r3, r1, 0x20
/* 80077B0C 00072A0C  38 80 00 00 */	li r4, 0
/* 80077B10 00072A10  4B FD CC DD */	bl DCStore__Q34nw4r3g3d14ResMatTevColorFb
lbl_80077B14:
/* 80077B14 00072A14  3A 73 00 01 */	addi r19, r19, 1
lbl_80077B18:
/* 80077B18 00072A18  80 01 01 B8 */	lwz r0, 0x1b8(r1)
/* 80077B1C 00072A1C  7C 13 00 40 */	cmplw r19, r0
/* 80077B20 00072A20  41 80 FC A4 */	blt lbl_800777C4
/* 80077B24 00072A24  39 61 02 10 */	addi r11, r1, 0x210
/* 80077B28 00072A28  48 03 A2 35 */	bl _restgpr_14
/* 80077B2C 00072A2C  80 01 02 14 */	lwz r0, 0x214(r1)
/* 80077B30 00072A30  7C 08 03 A6 */	mtlr r0
/* 80077B34 00072A34  38 21 02 10 */	addi r1, r1, 0x210
/* 80077B38 00072A38  4E 80 00 20 */	blr 

.include "macros.inc"

.section .data, "wa"
.balign 0x8
YearDays:
	.incbin "baserom.dol", 0x399370, 0x30
LeapYearDays:
	.incbin "baserom.dol", 0x3993A0, 0x30

.section .text, "ax"
.global OSGetTime
OSGetTime:
/* 800F5604 000F0504  7C 6D 42 E6 */	mftbu r3
/* 800F5608 000F0508  7C 8C 42 E6 */	mftbl r4
/* 800F560C 000F050C  7C AD 42 E6 */	mftbu r5
/* 800F5610 000F0510  7C 03 28 00 */	cmpw r3, r5
/* 800F5614 000F0514  40 82 FF F0 */	bne OSGetTime
/* 800F5618 000F0518  4E 80 00 20 */	blr 

.global OSGetTick
OSGetTick:
/* 800F561C 000F051C  7C 6C 42 E6 */	mftbl r3
/* 800F5620 000F0520  4E 80 00 20 */	blr 

.global __OSGetSystemTime
__OSGetSystemTime:
/* 800F5624 000F0524  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F5628 000F0528  7C 08 02 A6 */	mflr r0
/* 800F562C 000F052C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F5630 000F0530  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800F5634 000F0534  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800F5638 000F0538  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800F563C 000F053C  4B FF C2 85 */	bl OSDisableInterrupts
/* 800F5640 000F0540  7C 7F 1B 78 */	mr r31, r3
/* 800F5644 000F0544  4B FF FF C1 */	bl OSGetTime
/* 800F5648 000F0548  3C C0 80 00 */	lis r6, 0x800030DC@ha
/* 800F564C 000F054C  80 A6 30 DC */	lwz r5, 0x800030DC@l(r6)
/* 800F5650 000F0550  80 06 30 D8 */	lwz r0, 0x30d8(r6)
/* 800F5654 000F0554  7F A5 20 14 */	addc r29, r5, r4
/* 800F5658 000F0558  7F C0 19 14 */	adde r30, r0, r3
/* 800F565C 000F055C  7F E3 FB 78 */	mr r3, r31
/* 800F5660 000F0560  4B FF C2 89 */	bl OSRestoreInterrupts
/* 800F5664 000F0564  7F A4 EB 78 */	mr r4, r29
/* 800F5668 000F0568  7F C3 F3 78 */	mr r3, r30
/* 800F566C 000F056C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800F5670 000F0570  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800F5674 000F0574  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800F5678 000F0578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F567C 000F057C  7C 08 03 A6 */	mtlr r0
/* 800F5680 000F0580  38 21 00 20 */	addi r1, r1, 0x20
/* 800F5684 000F0584  4E 80 00 20 */	blr 

.global __OSTimeToSystemTime
__OSTimeToSystemTime:
/* 800F5688 000F0588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F568C 000F058C  7C 08 02 A6 */	mflr r0
/* 800F5690 000F0590  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F5694 000F0594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F5698 000F0598  7C 7F 1B 78 */	mr r31, r3
/* 800F569C 000F059C  93 C1 00 08 */	stw r30, 8(r1)
/* 800F56A0 000F05A0  7C 9E 23 78 */	mr r30, r4
/* 800F56A4 000F05A4  4B FF C2 1D */	bl OSDisableInterrupts
/* 800F56A8 000F05A8  3C A0 80 00 */	lis r5, 0x800030DC@ha
/* 800F56AC 000F05AC  80 85 30 DC */	lwz r4, 0x800030DC@l(r5)
/* 800F56B0 000F05B0  80 05 30 D8 */	lwz r0, 0x30d8(r5)
/* 800F56B4 000F05B4  7F C4 F0 14 */	addc r30, r4, r30
/* 800F56B8 000F05B8  7F E0 F9 14 */	adde r31, r0, r31
/* 800F56BC 000F05BC  4B FF C2 2D */	bl OSRestoreInterrupts
/* 800F56C0 000F05C0  7F E3 FB 78 */	mr r3, r31
/* 800F56C4 000F05C4  7F C4 F3 78 */	mr r4, r30
/* 800F56C8 000F05C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F56CC 000F05CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F56D0 000F05D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F56D4 000F05D4  7C 08 03 A6 */	mtlr r0
/* 800F56D8 000F05D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800F56DC 000F05DC  4E 80 00 20 */	blr 

.global GetDates
GetDates:
/* 800F56E0 000F05E0  3C E0 92 49 */	lis r7, 0x92492493@ha
/* 800F56E4 000F05E4  3C C0 B3 8D */	lis r6, 0xB38CF9B1@ha
/* 800F56E8 000F05E8  39 03 00 06 */	addi r8, r3, 6
/* 800F56EC 000F05EC  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 800F56F0 000F05F0  38 06 F9 B1 */	addi r0, r6, 0xB38CF9B1@l
/* 800F56F4 000F05F4  38 E7 24 93 */	addi r7, r7, 0x92492493@l
/* 800F56F8 000F05F8  7C C7 40 96 */	mulhw r6, r7, r8
/* 800F56FC 000F05FC  39 45 85 1F */	addi r10, r5, 0x51EB851F@l
/* 800F5700 000F0600  7C 00 18 96 */	mulhw r0, r0, r3
/* 800F5704 000F0604  7C A6 42 14 */	add r5, r6, r8
/* 800F5708 000F0608  7C A5 16 70 */	srawi r5, r5, 2
/* 800F570C 000F060C  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 800F5710 000F0610  7C A5 32 14 */	add r5, r5, r6
/* 800F5714 000F0614  7C 00 1A 14 */	add r0, r0, r3
/* 800F5718 000F0618  1C C5 00 07 */	mulli r6, r5, 7
/* 800F571C 000F061C  7C 00 46 70 */	srawi r0, r0, 8
/* 800F5720 000F0620  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800F5724 000F0624  7C A0 2A 14 */	add r5, r0, r5
/* 800F5728 000F0628  7C 06 40 50 */	subf r0, r6, r8
/* 800F572C 000F062C  1D 65 01 6D */	mulli r11, r5, 0x16d
/* 800F5730 000F0630  90 04 00 18 */	stw r0, 0x18(r4)
/* 800F5734 000F0634  48 00 00 0C */	b lbl_800F5740
lbl_800F5738:
/* 800F5738 000F0638  39 6B FE 93 */	addi r11, r11, -365
/* 800F573C 000F063C  38 A5 FF FF */	addi r5, r5, -1
lbl_800F5740:
/* 800F5740 000F0640  2C 05 00 01 */	cmpwi r5, 1
/* 800F5744 000F0644  41 80 00 3C */	blt lbl_800F5780
/* 800F5748 000F0648  38 C5 FF FF */	addi r6, r5, -1
/* 800F574C 000F064C  38 05 00 03 */	addi r0, r5, 3
/* 800F5750 000F0650  7C CA 30 96 */	mulhw r6, r10, r6
/* 800F5754 000F0654  7C C8 3E 70 */	srawi r8, r6, 7
/* 800F5758 000F0658  7C C6 2E 70 */	srawi r6, r6, 5
/* 800F575C 000F065C  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 800F5760 000F0660  7C 00 16 70 */	srawi r0, r0, 2
/* 800F5764 000F0664  55 09 0F FE */	srwi r9, r8, 0x1f
/* 800F5768 000F0668  7C C6 3A 14 */	add r6, r6, r7
/* 800F576C 000F066C  7C 00 01 94 */	addze r0, r0
/* 800F5770 000F0670  7C E8 4A 14 */	add r7, r8, r9
/* 800F5774 000F0674  7C 06 00 50 */	subf r0, r6, r0
/* 800F5778 000F0678  7C 07 02 14 */	add r0, r7, r0
/* 800F577C 000F067C  48 00 00 08 */	b lbl_800F5784
lbl_800F5780:
/* 800F5780 000F0680  38 00 00 00 */	li r0, 0
lbl_800F5784:
/* 800F5784 000F0684  7D 0B 02 14 */	add r8, r11, r0
/* 800F5788 000F0688  7C 03 40 00 */	cmpw r3, r8
/* 800F578C 000F068C  41 80 FF AC */	blt lbl_800F5738
/* 800F5790 000F0690  54 A0 F0 02 */	slwi r0, r5, 0x1e
/* 800F5794 000F0694  54 A7 0F FE */	srwi r7, r5, 0x1f
/* 800F5798 000F0698  7C C7 00 50 */	subf r6, r7, r0
/* 800F579C 000F069C  90 A4 00 14 */	stw r5, 0x14(r4)
/* 800F57A0 000F06A0  7C 08 18 50 */	subf r0, r8, r3
/* 800F57A4 000F06A4  54 C3 10 3E */	rotlwi r3, r6, 2
/* 800F57A8 000F06A8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 800F57AC 000F06AC  7C 63 3A 15 */	add. r3, r3, r7
/* 800F57B0 000F06B0  38 E0 00 00 */	li r7, 0
/* 800F57B4 000F06B4  40 82 00 28 */	bne lbl_800F57DC
/* 800F57B8 000F06B8  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 800F57BC 000F06BC  38 63 85 1F */	addi r3, r3, 0x51EB851F@l
/* 800F57C0 000F06C0  7C 63 28 96 */	mulhw r3, r3, r5
/* 800F57C4 000F06C4  7C 63 2E 70 */	srawi r3, r3, 5
/* 800F57C8 000F06C8  54 66 0F FE */	srwi r6, r3, 0x1f
/* 800F57CC 000F06CC  7C 63 32 14 */	add r3, r3, r6
/* 800F57D0 000F06D0  1C 63 00 64 */	mulli r3, r3, 0x64
/* 800F57D4 000F06D4  7C 63 28 51 */	subf. r3, r3, r5
/* 800F57D8 000F06D8  40 82 00 28 */	bne lbl_800F5800
lbl_800F57DC:
/* 800F57DC 000F06DC  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 800F57E0 000F06E0  38 63 85 1F */	addi r3, r3, 0x51EB851F@l
/* 800F57E4 000F06E4  7C 63 28 96 */	mulhw r3, r3, r5
/* 800F57E8 000F06E8  7C 63 3E 70 */	srawi r3, r3, 7
/* 800F57EC 000F06EC  54 66 0F FE */	srwi r6, r3, 0x1f
/* 800F57F0 000F06F0  7C 63 32 14 */	add r3, r3, r6
/* 800F57F4 000F06F4  1C 63 01 90 */	mulli r3, r3, 0x190
/* 800F57F8 000F06F8  7C 63 28 51 */	subf. r3, r3, r5
/* 800F57FC 000F06FC  40 82 00 08 */	bne lbl_800F5804
lbl_800F5800:
/* 800F5800 000F0700  38 E0 00 01 */	li r7, 1
lbl_800F5804:
/* 800F5804 000F0704  2C 07 00 00 */	cmpwi r7, 0
/* 800F5808 000F0708  3C C0 80 3A */	lis r6, YearDays@ha
/* 800F580C 000F070C  38 C6 D2 70 */	addi r6, r6, YearDays@l
/* 800F5810 000F0710  41 82 00 0C */	beq lbl_800F581C
/* 800F5814 000F0714  3C C0 80 3A */	lis r6, LeapYearDays@ha
/* 800F5818 000F0718  38 C6 D2 A0 */	addi r6, r6, LeapYearDays@l
lbl_800F581C:
/* 800F581C 000F071C  38 E0 00 0C */	li r7, 0xc
/* 800F5820 000F0720  38 60 00 30 */	li r3, 0x30
lbl_800F5824:
/* 800F5824 000F0724  38 63 FF FC */	addi r3, r3, -4
/* 800F5828 000F0728  38 E7 FF FF */	addi r7, r7, -1
/* 800F582C 000F072C  7C A6 18 2E */	lwzx r5, r6, r3
/* 800F5830 000F0730  7C 00 28 00 */	cmpw r0, r5
/* 800F5834 000F0734  41 80 FF F0 */	blt lbl_800F5824
/* 800F5838 000F0738  90 E4 00 10 */	stw r7, 0x10(r4)
/* 800F583C 000F073C  7C 66 18 2E */	lwzx r3, r6, r3
/* 800F5840 000F0740  7C 63 00 50 */	subf r3, r3, r0
/* 800F5844 000F0744  38 03 00 01 */	addi r0, r3, 1
/* 800F5848 000F0748  90 04 00 0C */	stw r0, 0xc(r4)
/* 800F584C 000F074C  4E 80 00 20 */	blr 

.global OSTicksToCalendarTime
OSTicksToCalendarTime:
/* 800F5850 000F0750  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F5854 000F0754  7C 08 02 A6 */	mflr r0
/* 800F5858 000F0758  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F585C 000F075C  39 61 00 20 */	addi r11, r1, 0x20
/* 800F5860 000F0760  4B FB C4 E1 */	bl _savegpr_26
/* 800F5864 000F0764  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 800F5868 000F0768  7C BD 2B 78 */	mr r29, r5
/* 800F586C 000F076C  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 800F5870 000F0770  7C 7C 1B 78 */	mr r28, r3
/* 800F5874 000F0774  7C 9B 23 78 */	mr r27, r4
/* 800F5878 000F0778  38 A0 00 00 */	li r5, 0
/* 800F587C 000F077C  54 1A F0 BE */	srwi r26, r0, 2
/* 800F5880 000F0780  7F 46 D3 78 */	mr r6, r26
/* 800F5884 000F0784  4B FB C8 2D */	bl __mod2i
/* 800F5888 000F0788  38 E0 00 00 */	li r7, 0
/* 800F588C 000F078C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800F5890 000F0790  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800F5894 000F0794  7C 9E 23 78 */	mr r30, r4
/* 800F5898 000F0798  7C A7 20 10 */	subfc r5, r7, r4
/* 800F589C 000F079C  7C 7F 1B 78 */	mr r31, r3
/* 800F58A0 000F07A0  7C C6 01 10 */	subfe r6, r6, r0
/* 800F58A4 000F07A4  7C C0 01 10 */	subfe r6, r0, r0
/* 800F58A8 000F07A8  7C C6 00 D1 */	neg. r6, r6
/* 800F58AC 000F07AC  41 82 00 0C */	beq lbl_800F58B8
/* 800F58B0 000F07B0  7F C4 D0 14 */	addc r30, r4, r26
/* 800F58B4 000F07B4  7F E3 39 14 */	adde r31, r3, r7
lbl_800F58B8:
/* 800F58B8 000F07B8  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 800F58BC 000F07BC  57 E3 18 38 */	slwi r3, r31, 3
/* 800F58C0 000F07C0  38 04 DE 83 */	addi r0, r4, 0x431BDE83@l
/* 800F58C4 000F07C4  38 A0 00 00 */	li r5, 0
/* 800F58C8 000F07C8  7C 00 D0 16 */	mulhwu r0, r0, r26
/* 800F58CC 000F07CC  57 C4 18 38 */	slwi r4, r30, 3
/* 800F58D0 000F07D0  53 C3 1F 7E */	rlwimi r3, r30, 3, 0x1d, 0x1f
/* 800F58D4 000F07D4  54 06 8B FE */	srwi r6, r0, 0xf
/* 800F58D8 000F07D8  4B FB C5 BD */	bl __div2i
/* 800F58DC 000F07DC  38 C0 03 E8 */	li r6, 0x3e8
/* 800F58E0 000F07E0  38 A0 00 00 */	li r5, 0
/* 800F58E4 000F07E4  4B FB C7 CD */	bl __mod2i
/* 800F58E8 000F07E8  90 9D 00 24 */	stw r4, 0x24(r29)
/* 800F58EC 000F07EC  3F 40 80 00 */	lis r26, 0x800000F8@ha
/* 800F58F0 000F07F0  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 800F58F4 000F07F4  7F E3 FB 78 */	mr r3, r31
/* 800F58F8 000F07F8  80 1A 00 F8 */	lwz r0, 0x800000F8@l(r26)
/* 800F58FC 000F07FC  38 C4 4D D3 */	addi r6, r4, 0x10624DD3@l
/* 800F5900 000F0800  7F C4 F3 78 */	mr r4, r30
/* 800F5904 000F0804  38 A0 00 00 */	li r5, 0
/* 800F5908 000F0808  54 00 F0 BE */	srwi r0, r0, 2
/* 800F590C 000F080C  7C 06 00 16 */	mulhwu r0, r6, r0
/* 800F5910 000F0810  54 06 D1 BE */	srwi r6, r0, 6
/* 800F5914 000F0814  4B FB C5 81 */	bl __div2i
/* 800F5918 000F0818  38 C0 03 E8 */	li r6, 0x3e8
/* 800F591C 000F081C  38 A0 00 00 */	li r5, 0
/* 800F5920 000F0820  4B FB C7 91 */	bl __mod2i
/* 800F5924 000F0824  90 9D 00 20 */	stw r4, 0x20(r29)
/* 800F5928 000F0828  7C 9E D8 10 */	subfc r4, r30, r27
/* 800F592C 000F082C  7C 7F E1 10 */	subfe r3, r31, r28
/* 800F5930 000F0830  38 A0 00 00 */	li r5, 0
/* 800F5934 000F0834  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800F5938 000F0838  54 06 F0 BE */	srwi r6, r0, 2
/* 800F593C 000F083C  4B FB C5 59 */	bl __div2i
/* 800F5940 000F0840  3F 60 00 01 */	lis r27, 0x00015180@ha
/* 800F5944 000F0844  7C 9C 23 78 */	mr r28, r4
/* 800F5948 000F0848  7C 7A 1B 78 */	mr r26, r3
/* 800F594C 000F084C  38 A0 00 00 */	li r5, 0
/* 800F5950 000F0850  38 DB 51 80 */	addi r6, r27, 0x00015180@l
/* 800F5954 000F0854  4B FB C5 41 */	bl __div2i
/* 800F5958 000F0858  3C 60 00 0B */	lis r3, 0x000B2575@ha
/* 800F595C 000F085C  38 DB 51 80 */	addi r6, r27, 0x5180
/* 800F5960 000F0860  38 03 25 75 */	addi r0, r3, 0x000B2575@l
/* 800F5964 000F0864  38 A0 00 00 */	li r5, 0
/* 800F5968 000F0868  7F 43 D3 78 */	mr r3, r26
/* 800F596C 000F086C  7F 44 00 14 */	addc r26, r4, r0
/* 800F5970 000F0870  7F 84 E3 78 */	mr r4, r28
/* 800F5974 000F0874  4B FB C7 3D */	bl __mod2i
/* 800F5978 000F0878  2C 04 00 00 */	cmpwi r4, 0
/* 800F597C 000F087C  7C 9F 23 78 */	mr r31, r4
/* 800F5980 000F0880  40 80 00 10 */	bge lbl_800F5990
/* 800F5984 000F0884  3F E4 00 01 */	addis r31, r4, 1
/* 800F5988 000F0888  3B 5A FF FF */	addi r26, r26, -1
/* 800F598C 000F088C  3B FF 51 80 */	addi r31, r31, 0x5180
lbl_800F5990:
/* 800F5990 000F0890  7F 43 D3 78 */	mr r3, r26
/* 800F5994 000F0894  7F A4 EB 78 */	mr r4, r29
/* 800F5998 000F0898  4B FF FD 49 */	bl GetDates
/* 800F599C 000F089C  3C 60 88 89 */	lis r3, 0x88888889@ha
/* 800F59A0 000F08A0  39 61 00 20 */	addi r11, r1, 0x20
/* 800F59A4 000F08A4  38 A3 88 89 */	addi r5, r3, 0x88888889@l
/* 800F59A8 000F08A8  7C 05 F8 96 */	mulhw r0, r5, r31
/* 800F59AC 000F08AC  7C 60 FA 14 */	add r3, r0, r31
/* 800F59B0 000F08B0  7C 60 2E 70 */	srawi r0, r3, 5
/* 800F59B4 000F08B4  54 04 0F FE */	srwi r4, r0, 0x1f
/* 800F59B8 000F08B8  7D 00 22 14 */	add r8, r0, r4
/* 800F59BC 000F08BC  7C 05 40 96 */	mulhw r0, r5, r8
/* 800F59C0 000F08C0  7C 00 42 14 */	add r0, r0, r8
/* 800F59C4 000F08C4  7C 06 2E 70 */	srawi r6, r0, 5
/* 800F59C8 000F08C8  7C 04 2E 70 */	srawi r4, r0, 5
/* 800F59CC 000F08CC  7C 60 2E 70 */	srawi r0, r3, 5
/* 800F59D0 000F08D0  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 800F59D4 000F08D4  54 85 0F FE */	srwi r5, r4, 0x1f
/* 800F59D8 000F08D8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800F59DC 000F08DC  7C C6 3A 14 */	add r6, r6, r7
/* 800F59E0 000F08E0  7C 00 1A 14 */	add r0, r0, r3
/* 800F59E4 000F08E4  7C 84 2A 14 */	add r4, r4, r5
/* 800F59E8 000F08E8  1C 64 00 3C */	mulli r3, r4, 0x3c
/* 800F59EC 000F08EC  90 DD 00 08 */	stw r6, 8(r29)
/* 800F59F0 000F08F0  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 800F59F4 000F08F4  7C 63 40 50 */	subf r3, r3, r8
/* 800F59F8 000F08F8  90 7D 00 04 */	stw r3, 4(r29)
/* 800F59FC 000F08FC  7C 00 F8 50 */	subf r0, r0, r31
/* 800F5A00 000F0900  90 1D 00 00 */	stw r0, 0(r29)
/* 800F5A04 000F0904  4B FB C3 89 */	bl _restgpr_26
/* 800F5A08 000F0908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F5A0C 000F090C  7C 08 03 A6 */	mtlr r0
/* 800F5A10 000F0910  38 21 00 20 */	addi r1, r1, 0x20
/* 800F5A14 000F0914  4E 80 00 20 */	blr 

.global OSCalendarTimeToTicks
OSCalendarTimeToTicks:
/* 800F5A18 000F0918  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F5A1C 000F091C  7C 08 02 A6 */	mflr r0
/* 800F5A20 000F0920  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F5A24 000F0924  39 61 00 40 */	addi r11, r1, 0x40
/* 800F5A28 000F0928  4B FB C3 01 */	bl _savegpr_20
/* 800F5A2C 000F092C  3C 80 2A AB */	lis r4, 0x2AAAAAAB@ha
/* 800F5A30 000F0930  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 800F5A34 000F0934  38 04 AA AB */	addi r0, r4, 0x2AAAAAAB@l
/* 800F5A38 000F0938  7C 00 28 96 */	mulhw r0, r0, r5
/* 800F5A3C 000F093C  7C 00 0E 70 */	srawi r0, r0, 1
/* 800F5A40 000F0940  54 04 0F FE */	srwi r4, r0, 0x1f
/* 800F5A44 000F0944  7C C0 22 14 */	add r6, r0, r4
/* 800F5A48 000F0948  1C 06 00 0C */	mulli r0, r6, 0xc
/* 800F5A4C 000F094C  7C 80 28 51 */	subf. r4, r0, r5
/* 800F5A50 000F0950  40 80 00 0C */	bge lbl_800F5A5C
/* 800F5A54 000F0954  38 84 00 0C */	addi r4, r4, 0xc
/* 800F5A58 000F0958  38 C6 FF FF */	addi r6, r6, -1
lbl_800F5A5C:
/* 800F5A5C 000F095C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800F5A60 000F0960  7D 20 32 14 */	add r9, r0, r6
/* 800F5A64 000F0964  2C 09 00 01 */	cmpwi r9, 1
/* 800F5A68 000F0968  40 80 00 0C */	bge lbl_800F5A74
/* 800F5A6C 000F096C  38 E0 00 00 */	li r7, 0
/* 800F5A70 000F0970  48 00 00 40 */	b lbl_800F5AB0
lbl_800F5A74:
/* 800F5A74 000F0974  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 800F5A78 000F0978  38 C9 FF FF */	addi r6, r9, -1
/* 800F5A7C 000F097C  38 A5 85 1F */	addi r5, r5, 0x51EB851F@l
/* 800F5A80 000F0980  38 09 00 03 */	addi r0, r9, 3
/* 800F5A84 000F0984  7C A5 30 96 */	mulhw r5, r5, r6
/* 800F5A88 000F0988  7C A7 3E 70 */	srawi r7, r5, 7
/* 800F5A8C 000F098C  7C A5 2E 70 */	srawi r5, r5, 5
/* 800F5A90 000F0990  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 800F5A94 000F0994  7C 00 16 70 */	srawi r0, r0, 2
/* 800F5A98 000F0998  54 E8 0F FE */	srwi r8, r7, 0x1f
/* 800F5A9C 000F099C  7C A5 32 14 */	add r5, r5, r6
/* 800F5AA0 000F09A0  7C 00 01 94 */	addze r0, r0
/* 800F5AA4 000F09A4  7C C7 42 14 */	add r6, r7, r8
/* 800F5AA8 000F09A8  7C 05 00 50 */	subf r0, r5, r0
/* 800F5AAC 000F09AC  7C E6 02 14 */	add r7, r6, r0
lbl_800F5AB0:
/* 800F5AB0 000F09B0  55 20 F0 02 */	slwi r0, r9, 0x1e
/* 800F5AB4 000F09B4  55 25 0F FE */	srwi r5, r9, 0x1f
/* 800F5AB8 000F09B8  7C 05 00 50 */	subf r0, r5, r0
/* 800F5ABC 000F09BC  38 C0 00 00 */	li r6, 0
/* 800F5AC0 000F09C0  54 00 10 3E */	rotlwi r0, r0, 2
/* 800F5AC4 000F09C4  7C 00 2A 15 */	add. r0, r0, r5
/* 800F5AC8 000F09C8  40 82 00 28 */	bne lbl_800F5AF0
/* 800F5ACC 000F09CC  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 800F5AD0 000F09D0  38 05 85 1F */	addi r0, r5, 0x51EB851F@l
/* 800F5AD4 000F09D4  7C 00 48 96 */	mulhw r0, r0, r9
/* 800F5AD8 000F09D8  7C 00 2E 70 */	srawi r0, r0, 5
/* 800F5ADC 000F09DC  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800F5AE0 000F09E0  7C 00 2A 14 */	add r0, r0, r5
/* 800F5AE4 000F09E4  1C 00 00 64 */	mulli r0, r0, 0x64
/* 800F5AE8 000F09E8  7C 00 48 51 */	subf. r0, r0, r9
/* 800F5AEC 000F09EC  40 82 00 28 */	bne lbl_800F5B14
lbl_800F5AF0:
/* 800F5AF0 000F09F0  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 800F5AF4 000F09F4  38 05 85 1F */	addi r0, r5, 0x51EB851F@l
/* 800F5AF8 000F09F8  7C 00 48 96 */	mulhw r0, r0, r9
/* 800F5AFC 000F09FC  7C 00 3E 70 */	srawi r0, r0, 7
/* 800F5B00 000F0A00  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800F5B04 000F0A04  7C 00 2A 14 */	add r0, r0, r5
/* 800F5B08 000F0A08  1C 00 01 90 */	mulli r0, r0, 0x190
/* 800F5B0C 000F0A0C  7C 00 48 51 */	subf. r0, r0, r9
/* 800F5B10 000F0A10  40 82 00 08 */	bne lbl_800F5B18
lbl_800F5B14:
/* 800F5B14 000F0A14  38 C0 00 01 */	li r6, 1
lbl_800F5B18:
/* 800F5B18 000F0A18  2C 06 00 00 */	cmpwi r6, 0
/* 800F5B1C 000F0A1C  3E C0 80 3A */	lis r22, YearDays@ha
/* 800F5B20 000F0A20  3A D6 D2 70 */	addi r22, r22, YearDays@l
/* 800F5B24 000F0A24  41 82 00 0C */	beq lbl_800F5B30
/* 800F5B28 000F0A28  3E C0 80 3A */	lis r22, LeapYearDays@ha
/* 800F5B2C 000F0A2C  3A D6 D2 A0 */	addi r22, r22, LeapYearDays@l
lbl_800F5B30:
/* 800F5B30 000F0A30  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 800F5B34 000F0A34  80 C3 00 24 */	lwz r6, 0x24(r3)
/* 800F5B38 000F0A38  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 800F5B3C 000F0A3C  54 8C 10 3A */	slwi r12, r4, 2
/* 800F5B40 000F0A40  3D 40 43 1C */	lis r10, 0x431BDE83@ha
/* 800F5B44 000F0A44  38 A0 00 00 */	li r5, 0
/* 800F5B48 000F0A48  54 08 F0 BE */	srwi r8, r0, 2
/* 800F5B4C 000F0A4C  7C D4 FE 70 */	srawi r20, r6, 0x1f
/* 800F5B50 000F0A50  38 0A DE 83 */	addi r0, r10, 0x431BDE83@l
/* 800F5B54 000F0A54  82 E3 00 0C */	lwz r23, 0xc(r3)
/* 800F5B58 000F0A58  7C 00 40 16 */	mulhwu r0, r0, r8
/* 800F5B5C 000F0A5C  7E D6 60 2E */	lwzx r22, r22, r12
/* 800F5B60 000F0A60  7D 97 3A 14 */	add r12, r23, r7
/* 800F5B64 000F0A64  83 63 00 04 */	lwz r27, 4(r3)
/* 800F5B68 000F0A68  3D 40 00 01 */	lis r10, 0x00015180@ha
/* 800F5B6C 000F0A6C  83 A3 00 08 */	lwz r29, 8(r3)
/* 800F5B70 000F0A70  54 04 8B FE */	srwi r4, r0, 0xf
/* 800F5B74 000F0A74  3C E0 10 62 */	lis r7, 0x10624DD3@ha
/* 800F5B78 000F0A78  7E A4 30 16 */	mulhwu r21, r4, r6
/* 800F5B7C 000F0A7C  3D 60 01 E1 */	lis r11, 0x01E13380@ha
/* 800F5B80 000F0A80  38 E7 4D D3 */	addi r7, r7, 0x10624DD3@l
/* 800F5B84 000F0A84  83 43 00 00 */	lwz r26, 0(r3)
/* 800F5B88 000F0A88  38 0B 33 80 */	addi r0, r11, 0x01E13380@l
/* 800F5B8C 000F0A8C  81 63 00 20 */	lwz r11, 0x20(r3)
/* 800F5B90 000F0A90  7F 05 31 D6 */	mullw r24, r5, r6
/* 800F5B94 000F0A94  3A EA 51 80 */	addi r23, r10, 0x00015180@l
/* 800F5B98 000F0A98  7C 76 62 14 */	add r3, r22, r12
/* 800F5B9C 000F0A9C  3B 80 00 3C */	li r28, 0x3c
/* 800F5BA0 000F0AA0  3A C3 FF FF */	addi r22, r3, -1
/* 800F5BA4 000F0AA4  3C 60 4E 1E */	lis r3, 0x4E1E4080@ha
/* 800F5BA8 000F0AA8  7F 24 31 D6 */	mullw r25, r4, r6
/* 800F5BAC 000F0AAC  7D 55 C2 14 */	add r10, r21, r24
/* 800F5BB0 000F0AB0  3B E3 40 80 */	addi r31, r3, 0x4E1E4080@l
/* 800F5BB4 000F0AB4  3B C0 0E 10 */	li r30, 0xe10
/* 800F5BB8 000F0AB8  39 80 FF F1 */	li r12, -15
/* 800F5BBC 000F0ABC  7C C4 A1 D6 */	mullw r6, r4, r20
/* 800F5BC0 000F0AC0  57 24 E8 3E */	rotlwi r4, r25, 0x1d
/* 800F5BC4 000F0AC4  7D 4A 32 14 */	add r10, r10, r6
/* 800F5BC8 000F0AC8  7C C7 40 16 */	mulhwu r6, r7, r8
/* 800F5BCC 000F0ACC  7D 43 53 78 */	mr r3, r10
/* 800F5BD0 000F0AD0  51 44 E8 04 */	rlwimi r4, r10, 0x1d, 0, 2
/* 800F5BD4 000F0AD4  53 23 07 7E */	rlwimi r3, r25, 0, 0x1d, 0x1f
/* 800F5BD8 000F0AD8  7C 63 1E 70 */	srawi r3, r3, 3
/* 800F5BDC 000F0ADC  54 CA D1 BE */	srwi r10, r6, 6
/* 800F5BE0 000F0AE0  7C 84 01 94 */	addze r4, r4
/* 800F5BE4 000F0AE4  7C 63 01 94 */	addze r3, r3
/* 800F5BE8 000F0AE8  7D 38 FE 70 */	srawi r24, r9, 0x1f
/* 800F5BEC 000F0AEC  7C E0 48 16 */	mulhwu r7, r0, r9
/* 800F5BF0 000F0AF0  7E D9 FE 70 */	srawi r25, r22, 0x1f
/* 800F5BF4 000F0AF4  7E A5 49 D6 */	mullw r21, r5, r9
/* 800F5BF8 000F0AF8  7E 87 AA 14 */	add r20, r7, r21
/* 800F5BFC 000F0AFC  7E A0 C1 D6 */	mullw r21, r0, r24
/* 800F5C00 000F0B00  7C D7 B0 16 */	mulhwu r6, r23, r22
/* 800F5C04 000F0B04  7E 94 AA 14 */	add r20, r20, r21
/* 800F5C08 000F0B08  7C E5 B1 D6 */	mullw r7, r5, r22
/* 800F5C0C 000F0B0C  7F 06 3A 14 */	add r24, r6, r7
/* 800F5C10 000F0B10  7C E0 49 D6 */	mullw r7, r0, r9
/* 800F5C14 000F0B14  7C D7 C9 D6 */	mullw r6, r23, r25
/* 800F5C18 000F0B18  7C 17 B1 D6 */	mullw r0, r23, r22
/* 800F5C1C 000F0B1C  7F 18 32 14 */	add r24, r24, r6
/* 800F5C20 000F0B20  7F 27 00 14 */	addc r25, r7, r0
/* 800F5C24 000F0B24  7C FB E0 96 */	mulhw r7, r27, r28
/* 800F5C28 000F0B28  7F 94 C1 14 */	adde r28, r20, r24
/* 800F5C2C 000F0B2C  7C 1D F0 96 */	mulhw r0, r29, r30
/* 800F5C30 000F0B30  1D 3B 00 3C */	mulli r9, r27, 0x3c
/* 800F5C34 000F0B34  1C DD 0E 10 */	mulli r6, r29, 0xe10
/* 800F5C38 000F0B38  7C C9 30 14 */	addc r6, r9, r6
/* 800F5C3C 000F0B3C  7C E7 01 14 */	adde r7, r7, r0
/* 800F5C40 000F0B40  7F 40 FE 70 */	srawi r0, r26, 0x1f
/* 800F5C44 000F0B44  7C C6 D0 14 */	addc r6, r6, r26
/* 800F5C48 000F0B48  7C 07 01 14 */	adde r0, r7, r0
/* 800F5C4C 000F0B4C  7C C6 F8 14 */	addc r6, r6, r31
/* 800F5C50 000F0B50  7C 00 61 14 */	adde r0, r0, r12
/* 800F5C54 000F0B54  7D 99 30 14 */	addc r12, r25, r6
/* 800F5C58 000F0B58  7C DC 01 14 */	adde r6, r28, r0
/* 800F5C5C 000F0B5C  7D 26 41 D6 */	mullw r9, r6, r8
/* 800F5C60 000F0B60  7D 60 FE 70 */	srawi r0, r11, 0x1f
/* 800F5C64 000F0B64  7C EC 40 16 */	mulhwu r7, r12, r8
/* 800F5C68 000F0B68  7C CA 58 16 */	mulhwu r6, r10, r11
/* 800F5C6C 000F0B6C  7D 27 4A 14 */	add r9, r7, r9
/* 800F5C70 000F0B70  7C E5 59 D6 */	mullw r7, r5, r11
/* 800F5C74 000F0B74  7C AC 29 D6 */	mullw r5, r12, r5
/* 800F5C78 000F0B78  7C C6 3A 14 */	add r6, r6, r7
/* 800F5C7C 000F0B7C  7C 0A 01 D6 */	mullw r0, r10, r0
/* 800F5C80 000F0B80  7C E9 2A 14 */	add r7, r9, r5
/* 800F5C84 000F0B84  7C C6 02 14 */	add r6, r6, r0
/* 800F5C88 000F0B88  7C 0A 59 D6 */	mullw r0, r10, r11
/* 800F5C8C 000F0B8C  39 61 00 40 */	addi r11, r1, 0x40
/* 800F5C90 000F0B90  7C AC 41 D6 */	mullw r5, r12, r8
/* 800F5C94 000F0B94  7C A5 00 14 */	addc r5, r5, r0
/* 800F5C98 000F0B98  7C 07 31 14 */	adde r0, r7, r6
/* 800F5C9C 000F0B9C  7C 84 28 14 */	addc r4, r4, r5
/* 800F5CA0 000F0BA0  7C 63 01 14 */	adde r3, r3, r0
/* 800F5CA4 000F0BA4  4B FB C0 D1 */	bl _restgpr_20
/* 800F5CA8 000F0BA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F5CAC 000F0BAC  7C 08 03 A6 */	mtlr r0
/* 800F5CB0 000F0BB0  38 21 00 40 */	addi r1, r1, 0x40
/* 800F5CB4 000F0BB4  4E 80 00 20 */	blr 

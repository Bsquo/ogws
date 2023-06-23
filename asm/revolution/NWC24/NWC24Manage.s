.include "macros.inc"

.section .data, "wa"
.balign 0x8
lbl_803b76d8:
	.string "<< RVL_SDK - NWC24 \trelease build: May 10 2007 17:58:59 (0x4199_60831) >>"
	.balign 4
lbl_803B7724: # jtbl
	.incbin "baserom.dol", 0x3B3824, 0xC4

.section .sdata, "wa"
.balign 0x8
.global __NWC24Version
__NWC24Version:
	.incbin "baserom.dol", 0x3C7660, 0x4

.section .sbss, "wa"
.balign 0x8
.global NWC24WorkP
NWC24WorkP:
	.skip 0x4
Opened:
	.skip 0x4
YouGotMail:
	.skip 0x4
GlobalErrorCode:
	.skip 0x4
Registered:
	.skip 0x4

.section .text, "ax"
.global NWC24iRegister
NWC24iRegister:
/* 801445F0 0013F4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801445F4 0013F4F4  7C 08 02 A6 */	mflr r0
/* 801445F8 0013F4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801445FC 0013F4FC  80 0D A0 A0 */	lwz r0, Registered-_SDA_BASE_(r13)
/* 80144600 0013F500  2C 00 00 00 */	cmpwi r0, 0
/* 80144604 0013F504  40 82 00 14 */	bne lbl_80144618
/* 80144608 0013F508  80 6D 86 60 */	lwz r3, __NWC24Version-_SDA_BASE_(r13)
/* 8014460C 0013F50C  4B FA 8A 35 */	bl OSRegisterVersion
/* 80144610 0013F510  38 00 00 01 */	li r0, 1
/* 80144614 0013F514  90 0D A0 A0 */	stw r0, Registered-_SDA_BASE_(r13)
lbl_80144618:
/* 80144618 0013F518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014461C 0013F51C  7C 08 03 A6 */	mtlr r0
/* 80144620 0013F520  38 21 00 10 */	addi r1, r1, 0x10
/* 80144624 0013F524  4E 80 00 20 */	blr 

.global NWC24OpenLib
NWC24OpenLib:
/* 80144628 0013F528  80 0D A0 94 */	lwz r0, Opened-_SDA_BASE_(r13)
/* 8014462C 0013F52C  2C 00 00 02 */	cmpwi r0, 2
/* 80144630 0013F530  40 82 00 0C */	bne lbl_8014463C
/* 80144634 0013F534  38 60 FF E6 */	li r3, -26
/* 80144638 0013F538  4E 80 00 20 */	blr 
lbl_8014463C:
/* 8014463C 0013F53C  38 80 00 01 */	li r4, 1
/* 80144640 0013F540  48 00 00 08 */	b NWC24OpenLibInternal
/* 80144644 0013F544  4E 80 00 20 */	blr 

.global NWC24OpenLibInternal
NWC24OpenLibInternal:
/* 80144648 0013F548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014464C 0013F54C  7C 08 02 A6 */	mflr r0
/* 80144650 0013F550  90 01 00 24 */	stw r0, 0x24(r1)
/* 80144654 0013F554  38 00 00 00 */	li r0, 0
/* 80144658 0013F558  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014465C 0013F55C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80144660 0013F560  7C 7E 1B 78 */	mr r30, r3
/* 80144664 0013F564  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80144668 0013F568  7C 9D 23 78 */	mr r29, r4
/* 8014466C 0013F56C  90 0D A0 9C */	stw r0, GlobalErrorCode-_SDA_BASE_(r13)
/* 80144670 0013F570  48 01 DF 15 */	bl func_80162584
/* 80144674 0013F574  2C 03 00 00 */	cmpwi r3, 0
/* 80144678 0013F578  40 82 00 0C */	bne lbl_80144684
/* 8014467C 0013F57C  38 60 FF FF */	li r3, -1
/* 80144680 0013F580  48 00 01 78 */	b lbl_801447F8
lbl_80144684:
/* 80144684 0013F584  80 0D A0 94 */	lwz r0, Opened-_SDA_BASE_(r13)
/* 80144688 0013F588  2C 00 00 01 */	cmpwi r0, 1
/* 8014468C 0013F58C  40 82 00 0C */	bne lbl_80144698
/* 80144690 0013F590  38 60 FF F6 */	li r3, -10
/* 80144694 0013F594  48 00 01 64 */	b lbl_801447F8
lbl_80144698:
/* 80144698 0013F598  2C 00 00 03 */	cmpwi r0, 3
/* 8014469C 0013F59C  40 82 00 0C */	bne lbl_801446A8
/* 801446A0 0013F5A0  38 60 FF E6 */	li r3, -26
/* 801446A4 0013F5A4  48 00 01 54 */	b lbl_801447F8
lbl_801446A8:
/* 801446A8 0013F5A8  2C 1E 00 00 */	cmpwi r30, 0
/* 801446AC 0013F5AC  40 82 00 0C */	bne lbl_801446B8
/* 801446B0 0013F5B0  38 60 FF FB */	li r3, -5
/* 801446B4 0013F5B4  48 00 01 44 */	b lbl_801447F8
lbl_801446B8:
/* 801446B8 0013F5B8  57 C0 06 FF */	clrlwi. r0, r30, 0x1b
/* 801446BC 0013F5BC  41 82 00 0C */	beq lbl_801446C8
/* 801446C0 0013F5C0  38 60 FF E9 */	li r3, -23
/* 801446C4 0013F5C4  48 00 01 34 */	b lbl_801447F8
lbl_801446C8:
/* 801446C8 0013F5C8  48 00 4D 1D */	bl NWC24iTrySuspendForOpenLib
/* 801446CC 0013F5CC  2C 03 00 00 */	cmpwi r3, 0
/* 801446D0 0013F5D0  40 82 00 F8 */	bne lbl_801447C8
/* 801446D4 0013F5D4  80 0D A0 A0 */	lwz r0, Registered-_SDA_BASE_(r13)
/* 801446D8 0013F5D8  2C 00 00 00 */	cmpwi r0, 0
/* 801446DC 0013F5DC  40 82 00 14 */	bne lbl_801446F0
/* 801446E0 0013F5E0  80 6D 86 60 */	lwz r3, __NWC24Version-_SDA_BASE_(r13)
/* 801446E4 0013F5E4  4B FA 89 5D */	bl OSRegisterVersion
/* 801446E8 0013F5E8  38 00 00 01 */	li r0, 1
/* 801446EC 0013F5EC  90 0D A0 A0 */	stw r0, Registered-_SDA_BASE_(r13)
lbl_801446F0:
/* 801446F0 0013F5F0  80 0D A0 98 */	lwz r0, YouGotMail-_SDA_BASE_(r13)
/* 801446F4 0013F5F4  38 7E 13 00 */	addi r3, r30, 0x1300
/* 801446F8 0013F5F8  93 CD A0 90 */	stw r30, NWC24WorkP-_SDA_BASE_(r13)
/* 801446FC 0013F5FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80144700 0013F600  90 0D A0 98 */	stw r0, YouGotMail-_SDA_BASE_(r13)
/* 80144704 0013F604  48 00 21 9D */	bl NWC24InitBase64Table
/* 80144708 0013F608  3B C0 00 00 */	li r30, 0
/* 8014470C 0013F60C  3B E0 00 00 */	li r31, 0
/* 80144710 0013F610  4B FF F7 D5 */	bl NWC24iConfigOpen
/* 80144714 0013F614  2C 03 00 00 */	cmpwi r3, 0
/* 80144718 0013F618  41 82 00 0C */	beq lbl_80144724
/* 8014471C 0013F61C  7C 7F 1B 78 */	mr r31, r3
/* 80144720 0013F620  63 DE 00 04 */	ori r30, r30, 4
lbl_80144724:
/* 80144724 0013F624  48 00 07 B9 */	bl NWC24iOpenMBox
/* 80144728 0013F628  2C 03 00 00 */	cmpwi r3, 0
/* 8014472C 0013F62C  41 82 00 0C */	beq lbl_80144738
/* 80144730 0013F630  7C 7F 1B 78 */	mr r31, r3
/* 80144734 0013F634  63 DE 00 04 */	ori r30, r30, 4
lbl_80144738:
/* 80144738 0013F638  48 00 58 2D */	bl NWC24iOpenFriendList
/* 8014473C 0013F63C  2C 03 00 00 */	cmpwi r3, 0
/* 80144740 0013F640  41 82 00 0C */	beq lbl_8014474C
/* 80144744 0013F644  7C 7F 1B 78 */	mr r31, r3
/* 80144748 0013F648  63 DE 00 04 */	ori r30, r30, 4
lbl_8014474C:
/* 8014474C 0013F64C  48 00 59 35 */	bl NWC24iOpenSecretFriendList
/* 80144750 0013F650  2C 03 00 00 */	cmpwi r3, 0
/* 80144754 0013F654  41 82 00 1C */	beq lbl_80144770
/* 80144758 0013F658  2C 03 FF EC */	cmpwi r3, -20
/* 8014475C 0013F65C  7C 7F 1B 78 */	mr r31, r3
/* 80144760 0013F660  63 C0 00 01 */	ori r0, r30, 1
/* 80144764 0013F664  40 82 00 08 */	bne lbl_8014476C
/* 80144768 0013F668  63 C0 00 04 */	ori r0, r30, 4
lbl_8014476C:
/* 8014476C 0013F66C  7C 1E 03 78 */	mr r30, r0
lbl_80144770:
/* 80144770 0013F670  48 00 60 31 */	bl NWC24iOpenDlTaskList
/* 80144774 0013F674  2C 03 00 00 */	cmpwi r3, 0
/* 80144778 0013F678  40 80 00 1C */	bge lbl_80144794
/* 8014477C 0013F67C  2C 03 FF EC */	cmpwi r3, -20
/* 80144780 0013F680  7C 7F 1B 78 */	mr r31, r3
/* 80144784 0013F684  63 C0 00 02 */	ori r0, r30, 2
/* 80144788 0013F688  40 82 00 08 */	bne lbl_80144790
/* 8014478C 0013F68C  63 C0 00 04 */	ori r0, r30, 4
lbl_80144790:
/* 80144790 0013F690  7C 1E 03 78 */	mr r30, r0
lbl_80144794:
/* 80144794 0013F694  28 1E 00 03 */	cmplwi r30, 3
/* 80144798 0013F698  40 82 00 08 */	bne lbl_801447A0
/* 8014479C 0013F69C  3B E0 FF CF */	li r31, -49
lbl_801447A0:
/* 801447A0 0013F6A0  2C 1E 00 00 */	cmpwi r30, 0
/* 801447A4 0013F6A4  41 82 00 18 */	beq lbl_801447BC
/* 801447A8 0013F6A8  38 00 00 00 */	li r0, 0
/* 801447AC 0013F6AC  90 0D A0 90 */	stw r0, NWC24WorkP-_SDA_BASE_(r13)
/* 801447B0 0013F6B0  48 00 4D 15 */	bl NWC24iResumeForCloseLib
/* 801447B4 0013F6B4  7F E3 FB 78 */	mr r3, r31
/* 801447B8 0013F6B8  48 00 00 10 */	b lbl_801447C8
lbl_801447BC:
/* 801447BC 0013F6BC  93 AD A0 94 */	stw r29, Opened-_SDA_BASE_(r13)
/* 801447C0 0013F6C0  38 60 00 00 */	li r3, 0
/* 801447C4 0013F6C4  48 00 00 34 */	b lbl_801447F8
lbl_801447C8:
/* 801447C8 0013F6C8  38 03 00 31 */	addi r0, r3, 0x31
/* 801447CC 0013F6CC  28 00 00 30 */	cmplwi r0, 0x30
/* 801447D0 0013F6D0  41 81 00 28 */	bgt lbl_801447F8
/* 801447D4 0013F6D4  3C 80 80 3B */	lis r4, lbl_803B7724@ha
/* 801447D8 0013F6D8  54 00 10 3A */	slwi r0, r0, 2
/* 801447DC 0013F6DC  38 84 77 24 */	addi r4, r4, lbl_803B7724@l
/* 801447E0 0013F6E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 801447E4 0013F6E4  7C 89 03 A6 */	mtctr r4
/* 801447E8 0013F6E8  4E 80 04 20 */	bctr 
/* 801447EC 0013F6EC  3C 83 FF FE */	addis r4, r3, 0xfffe
/* 801447F0 0013F6F0  38 04 56 38 */	addi r0, r4, 0x5638
/* 801447F4 0013F6F4  90 0D A0 9C */	stw r0, GlobalErrorCode-_SDA_BASE_(r13)
lbl_801447F8:
/* 801447F8 0013F6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801447FC 0013F6FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80144800 0013F700  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80144804 0013F704  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80144808 0013F708  7C 08 03 A6 */	mtlr r0
/* 8014480C 0013F70C  38 21 00 20 */	addi r1, r1, 0x20
/* 80144810 0013F710  4E 80 00 20 */	blr 

.global NWC24CloseLib
NWC24CloseLib:
/* 80144814 0013F714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80144818 0013F718  7C 08 02 A6 */	mflr r0
/* 8014481C 0013F71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80144820 0013F720  80 0D A0 94 */	lwz r0, Opened-_SDA_BASE_(r13)
/* 80144824 0013F724  2C 00 00 01 */	cmpwi r0, 1
/* 80144828 0013F728  41 82 00 0C */	beq lbl_80144834
/* 8014482C 0013F72C  38 60 FF F7 */	li r3, -9
/* 80144830 0013F730  48 00 00 40 */	b lbl_80144870
lbl_80144834:
/* 80144834 0013F734  4B FF F7 BD */	bl NWC24iConfigFlush
/* 80144838 0013F738  2C 03 00 00 */	cmpwi r3, 0
/* 8014483C 0013F73C  41 82 00 08 */	beq lbl_80144844
/* 80144840 0013F740  48 00 00 30 */	b lbl_80144870
lbl_80144844:
/* 80144844 0013F744  48 00 5F A9 */	bl NWC24iCloseDlTaskList
/* 80144848 0013F748  2C 03 00 00 */	cmpwi r3, 0
/* 8014484C 0013F74C  40 80 00 08 */	bge lbl_80144854
/* 80144850 0013F750  48 00 00 20 */	b lbl_80144870
lbl_80144854:
/* 80144854 0013F754  48 00 4C 71 */	bl NWC24iResumeForCloseLib
/* 80144858 0013F758  2C 03 00 00 */	cmpwi r3, 0
/* 8014485C 0013F75C  41 82 00 08 */	beq lbl_80144864
/* 80144860 0013F760  48 00 00 10 */	b lbl_80144870
lbl_80144864:
/* 80144864 0013F764  38 00 00 00 */	li r0, 0
/* 80144868 0013F768  90 0D A0 90 */	stw r0, NWC24WorkP-_SDA_BASE_(r13)
/* 8014486C 0013F76C  90 0D A0 94 */	stw r0, Opened-_SDA_BASE_(r13)
lbl_80144870:
/* 80144870 0013F770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80144874 0013F774  7C 08 03 A6 */	mtlr r0
/* 80144878 0013F778  38 21 00 10 */	addi r1, r1, 0x10
/* 8014487C 0013F77C  4E 80 00 20 */	blr 

.global NWC24IsMsgLibOpened
NWC24IsMsgLibOpened:
/* 80144880 0013F780  80 6D A0 94 */	lwz r3, Opened-_SDA_BASE_(r13)
/* 80144884 0013F784  38 03 FF FF */	addi r0, r3, -1
/* 80144888 0013F788  7C 00 00 34 */	cntlzw r0, r0
/* 8014488C 0013F78C  54 03 D9 7E */	srwi r3, r0, 5
/* 80144890 0013F790  4E 80 00 20 */	blr 

.global NWC24IsMsgLibOpenedByTool
NWC24IsMsgLibOpenedByTool:
/* 80144894 0013F794  80 6D A0 94 */	lwz r3, Opened-_SDA_BASE_(r13)
/* 80144898 0013F798  38 03 FF FE */	addi r0, r3, -2
/* 8014489C 0013F79C  7C 00 00 34 */	cntlzw r0, r0
/* 801448A0 0013F7A0  54 03 D9 7E */	srwi r3, r0, 5
/* 801448A4 0013F7A4  4E 80 00 20 */	blr 

.global NWC24BlockOpenMsgLib
NWC24BlockOpenMsgLib:
/* 801448A8 0013F7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801448AC 0013F7AC  7C 08 02 A6 */	mflr r0
/* 801448B0 0013F7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801448B4 0013F7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801448B8 0013F7B8  3B E0 00 00 */	li r31, 0
/* 801448BC 0013F7BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801448C0 0013F7C0  7C 7E 1B 78 */	mr r30, r3
/* 801448C4 0013F7C4  4B FA CF FD */	bl OSDisableInterrupts
/* 801448C8 0013F7C8  2C 1E 00 00 */	cmpwi r30, 0
/* 801448CC 0013F7CC  41 82 00 34 */	beq lbl_80144900
/* 801448D0 0013F7D0  80 0D A0 94 */	lwz r0, Opened-_SDA_BASE_(r13)
/* 801448D4 0013F7D4  2C 00 00 00 */	cmpwi r0, 0
/* 801448D8 0013F7D8  40 82 00 10 */	bne lbl_801448E8
/* 801448DC 0013F7DC  38 00 00 03 */	li r0, 3
/* 801448E0 0013F7E0  90 0D A0 94 */	stw r0, Opened-_SDA_BASE_(r13)
/* 801448E4 0013F7E4  48 00 00 44 */	b lbl_80144928
lbl_801448E8:
/* 801448E8 0013F7E8  2C 00 00 01 */	cmpwi r0, 1
/* 801448EC 0013F7EC  40 82 00 0C */	bne lbl_801448F8
/* 801448F0 0013F7F0  3B E0 FF F6 */	li r31, -10
/* 801448F4 0013F7F4  48 00 00 34 */	b lbl_80144928
lbl_801448F8:
/* 801448F8 0013F7F8  3B E0 FF E6 */	li r31, -26
/* 801448FC 0013F7FC  48 00 00 2C */	b lbl_80144928
lbl_80144900:
/* 80144900 0013F800  80 8D A0 94 */	lwz r4, Opened-_SDA_BASE_(r13)
/* 80144904 0013F804  38 04 FF FD */	addi r0, r4, -3
/* 80144908 0013F808  7C 00 00 34 */	cntlzw r0, r0
/* 8014490C 0013F80C  54 04 D9 7F */	rlwinm. r4, r0, 0x1b, 5, 0x1f
/* 80144910 0013F810  41 82 00 0C */	beq lbl_8014491C
/* 80144914 0013F814  38 00 00 00 */	li r0, 0
/* 80144918 0013F818  90 0D A0 94 */	stw r0, Opened-_SDA_BASE_(r13)
lbl_8014491C:
/* 8014491C 0013F81C  2C 04 00 00 */	cmpwi r4, 0
/* 80144920 0013F820  40 82 00 08 */	bne lbl_80144928
/* 80144924 0013F824  3B E0 FF F7 */	li r31, -9
lbl_80144928:
/* 80144928 0013F828  4B FA CF C1 */	bl OSRestoreInterrupts
/* 8014492C 0013F82C  7F E3 FB 78 */	mr r3, r31
/* 80144930 0013F830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80144934 0013F834  83 C1 00 08 */	lwz r30, 8(r1)
/* 80144938 0013F838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014493C 0013F83C  7C 08 03 A6 */	mtlr r0
/* 80144940 0013F840  38 21 00 10 */	addi r1, r1, 0x10
/* 80144944 0013F844  4E 80 00 20 */	blr 

.global NWC24iSetNewMsgArrived
NWC24iSetNewMsgArrived:
/* 80144948 0013F848  80 0D A0 98 */	lwz r0, YouGotMail-_SDA_BASE_(r13)
/* 8014494C 0013F84C  7C 00 1B 78 */	or r0, r0, r3
/* 80144950 0013F850  38 60 00 00 */	li r3, 0
/* 80144954 0013F854  90 0D A0 98 */	stw r0, YouGotMail-_SDA_BASE_(r13)
/* 80144958 0013F858  4E 80 00 20 */	blr 

.global NWC24iSetErrorCode
NWC24iSetErrorCode:
/* 8014495C 0013F85C  90 6D A0 9C */	stw r3, GlobalErrorCode-_SDA_BASE_(r13)
/* 80144960 0013F860  4E 80 00 20 */	blr 

# TODO: finish labeling

.include "macros.inc"

.section .rodata, "a"
.balign 0x8
.global lbl_80381D18
lbl_80381D18:
	.incbin "baserom.dol", 0x37DE18, 0x10

.section .text, "ax"

.global RFLiCheckValidInfo
RFLiCheckValidInfo:
/* 801765E4 001714E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801765E8 001714E8  7C 08 02 A6 */	mflr r0
/* 801765EC 001714EC  A0 83 00 00 */	lhz r4, 0(r3)
/* 801765F0 001714F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801765F4 001714F4  54 80 9F 7E */	rlwinm r0, r4, 0x13, 0x1d, 0x1f
/* 801765F8 001714F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801765FC 001714FC  28 00 00 07 */	cmplwi r0, 7
/* 80176600 00171500  7C 7F 1B 78 */	mr r31, r3
/* 80176604 00171504  40 81 00 0C */	ble lbl_80176610
/* 80176608 00171508  38 60 00 00 */	li r3, 0
/* 8017660C 0017150C  48 00 04 28 */	b lbl_80176A34
lbl_80176610:
/* 80176610 00171510  54 80 B7 7E */	rlwinm r0, r4, 0x16, 0x1d, 0x1f
/* 80176614 00171514  28 00 00 05 */	cmplwi r0, 5
/* 80176618 00171518  40 81 00 0C */	ble lbl_80176624
/* 8017661C 0017151C  38 60 00 00 */	li r3, 0
/* 80176620 00171520  48 00 04 14 */	b lbl_80176A34
lbl_80176624:
/* 80176624 00171524  54 80 D7 3E */	rlwinm r0, r4, 0x1a, 0x1c, 0x1f
/* 80176628 00171528  28 00 00 0B */	cmplwi r0, 0xb
/* 8017662C 0017152C  40 81 00 0C */	ble lbl_80176638
/* 80176630 00171530  38 60 00 00 */	li r3, 0
/* 80176634 00171534  48 00 04 00 */	b lbl_80176A34
lbl_80176638:
/* 80176638 00171538  A0 83 00 02 */	lhz r4, 2(r3)
/* 8017663C 0017153C  54 80 BE 7E */	rlwinm r0, r4, 0x17, 0x19, 0x1f
/* 80176640 00171540  28 00 00 47 */	cmplwi r0, 0x47
/* 80176644 00171544  40 81 00 0C */	ble lbl_80176650
/* 80176648 00171548  38 60 00 00 */	li r3, 0
/* 8017664C 0017154C  48 00 03 E8 */	b lbl_80176A34
lbl_80176650:
/* 80176650 00171550  54 80 D7 7E */	rlwinm r0, r4, 0x1a, 0x1d, 0x1f
/* 80176654 00171554  28 00 00 07 */	cmplwi r0, 7
/* 80176658 00171558  40 81 00 0C */	ble lbl_80176664
/* 8017665C 0017155C  38 60 00 00 */	li r3, 0
/* 80176660 00171560  48 00 03 D4 */	b lbl_80176A34
lbl_80176664:
/* 80176664 00171564  54 80 DF FE */	rlwinm r0, r4, 0x1b, 0x1f, 0x1f
/* 80176668 00171568  28 00 00 01 */	cmplwi r0, 1
/* 8017666C 0017156C  40 81 00 0C */	ble lbl_80176678
/* 80176670 00171570  38 60 00 00 */	li r3, 0
/* 80176674 00171574  48 00 03 C0 */	b lbl_80176A34
lbl_80176678:
/* 80176678 00171578  80 83 00 04 */	lwz r4, 4(r3)
/* 8017667C 0017157C  54 80 36 BE */	srwi r0, r4, 0x1a
/* 80176680 00171580  28 00 00 2F */	cmplwi r0, 0x2f
/* 80176684 00171584  40 81 00 0C */	ble lbl_80176690
/* 80176688 00171588  38 60 00 00 */	li r3, 0
/* 8017668C 0017158C  48 00 03 A8 */	b lbl_80176A34
lbl_80176690:
/* 80176690 00171590  54 80 4F 7E */	rlwinm r0, r4, 9, 0x1d, 0x1f
/* 80176694 00171594  28 00 00 05 */	cmplwi r0, 5
/* 80176698 00171598  40 81 00 0C */	ble lbl_801766A4
/* 8017669C 0017159C  38 60 00 00 */	li r3, 0
/* 801766A0 001715A0  48 00 03 94 */	b lbl_80176A34
lbl_801766A4:
/* 801766A4 001715A4  54 80 6F 3E */	rlwinm r0, r4, 0xd, 0x1c, 0x1f
/* 801766A8 001715A8  28 00 00 07 */	cmplwi r0, 7
/* 801766AC 001715AC  40 81 00 0C */	ble lbl_801766B8
/* 801766B0 001715B0  38 60 00 00 */	li r3, 0
/* 801766B4 001715B4  48 00 03 80 */	b lbl_80176A34
lbl_801766B8:
/* 801766B8 001715B8  54 80 96 FE */	rlwinm r0, r4, 0x12, 0x1b, 0x1f
/* 801766BC 001715BC  28 00 00 07 */	cmplwi r0, 7
/* 801766C0 001715C0  40 81 00 0C */	ble lbl_801766CC
/* 801766C4 001715C4  38 60 00 00 */	li r3, 0
/* 801766C8 001715C8  48 00 03 6C */	b lbl_80176A34
lbl_801766CC:
/* 801766CC 001715CC  54 80 B7 3E */	rlwinm r0, r4, 0x16, 0x1c, 0x1f
/* 801766D0 001715D0  28 00 00 0C */	cmplwi r0, 0xc
/* 801766D4 001715D4  40 81 00 0C */	ble lbl_801766E0
/* 801766D8 001715D8  38 60 00 00 */	li r3, 0
/* 801766DC 001715DC  48 00 03 58 */	b lbl_80176A34
lbl_801766E0:
/* 801766E0 001715E0  54 80 DE FE */	rlwinm r0, r4, 0x1b, 0x1b, 0x1f
/* 801766E4 001715E4  28 00 00 12 */	cmplwi r0, 0x12
/* 801766E8 001715E8  40 81 00 0C */	ble lbl_801766F4
/* 801766EC 001715EC  38 60 00 00 */	li r3, 0
/* 801766F0 001715F0  48 00 03 44 */	b lbl_80176A34
lbl_801766F4:
/* 801766F4 001715F4  80 83 00 08 */	lwz r4, 8(r3)
/* 801766F8 001715F8  54 80 2E FE */	srwi r0, r4, 0x1b
/* 801766FC 001715FC  28 00 00 17 */	cmplwi r0, 0x17
/* 80176700 00171600  40 81 00 0C */	ble lbl_8017670C
/* 80176704 00171604  38 60 00 00 */	li r3, 0
/* 80176708 00171608  48 00 03 2C */	b lbl_80176A34
lbl_8017670C:
/* 8017670C 0017160C  54 80 47 7E */	rlwinm r0, r4, 8, 0x1d, 0x1f
/* 80176710 00171610  28 00 00 07 */	cmplwi r0, 7
/* 80176714 00171614  40 81 00 0C */	ble lbl_80176720
/* 80176718 00171618  38 60 00 00 */	li r3, 0
/* 8017671C 0017161C  48 00 03 18 */	b lbl_80176A34
lbl_80176720:
/* 80176720 00171620  54 80 67 3E */	rlwinm r0, r4, 0xc, 0x1c, 0x1f
/* 80176724 00171624  28 00 00 08 */	cmplwi r0, 8
/* 80176728 00171628  40 81 00 0C */	ble lbl_80176734
/* 8017672C 0017162C  38 60 00 00 */	li r3, 0
/* 80176730 00171630  48 00 03 04 */	b lbl_80176A34
lbl_80176734:
/* 80176734 00171634  54 80 8E FE */	rlwinm r0, r4, 0x11, 0x1b, 0x1f
/* 80176738 00171638  28 00 00 0B */	cmplwi r0, 0xb
/* 8017673C 0017163C  40 81 00 0C */	ble lbl_80176748
/* 80176740 00171640  38 60 00 00 */	li r3, 0
/* 80176744 00171644  48 00 02 F0 */	b lbl_80176A34
lbl_80176748:
/* 80176748 00171648  54 80 AF 3E */	rlwinm r0, r4, 0x15, 0x1c, 0x1f
/* 8017674C 0017164C  28 00 00 0C */	cmplwi r0, 0xc
/* 80176750 00171650  40 81 00 0C */	ble lbl_8017675C
/* 80176754 00171654  38 60 00 00 */	li r3, 0
/* 80176758 00171658  48 00 02 DC */	b lbl_80176A34
lbl_8017675C:
/* 8017675C 0017165C  54 80 D6 FE */	rlwinm r0, r4, 0x1a, 0x1b, 0x1f
/* 80176760 00171660  28 00 00 03 */	cmplwi r0, 3
/* 80176764 00171664  40 80 00 0C */	bge lbl_80176770
/* 80176768 00171668  38 60 00 00 */	li r3, 0
/* 8017676C 0017166C  48 00 02 C8 */	b lbl_80176A34
lbl_80176770:
/* 80176770 00171670  28 00 00 12 */	cmplwi r0, 0x12
/* 80176774 00171674  40 81 00 0C */	ble lbl_80176780
/* 80176778 00171678  38 60 00 00 */	li r3, 0
/* 8017677C 0017167C  48 00 02 B8 */	b lbl_80176A34
lbl_80176780:
/* 80176780 00171680  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 80176784 00171684  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80176788 00171688  28 00 00 0B */	cmplwi r0, 0xb
/* 8017678C 0017168C  40 81 00 0C */	ble lbl_80176798
/* 80176790 00171690  38 60 00 00 */	li r3, 0
/* 80176794 00171694  48 00 02 A0 */	b lbl_80176A34
lbl_80176798:
/* 80176798 00171698  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 8017679C 0017169C  28 00 00 08 */	cmplwi r0, 8
/* 801767A0 001716A0  40 81 00 0C */	ble lbl_801767AC
/* 801767A4 001716A4  38 60 00 00 */	li r3, 0
/* 801767A8 001716A8  48 00 02 8C */	b lbl_80176A34
lbl_801767AC:
/* 801767AC 001716AC  54 80 EE FE */	rlwinm r0, r4, 0x1d, 0x1b, 0x1f
/* 801767B0 001716B0  28 00 00 12 */	cmplwi r0, 0x12
/* 801767B4 001716B4  40 81 00 0C */	ble lbl_801767C0
/* 801767B8 001716B8  38 60 00 00 */	li r3, 0
/* 801767BC 001716BC  48 00 02 78 */	b lbl_80176A34
lbl_801767C0:
/* 801767C0 001716C0  A0 83 00 0E */	lhz r4, 0xe(r3)
/* 801767C4 001716C4  54 80 AE FE */	rlwinm r0, r4, 0x15, 0x1b, 0x1f
/* 801767C8 001716C8  28 00 00 17 */	cmplwi r0, 0x17
/* 801767CC 001716CC  40 81 00 0C */	ble lbl_801767D8
/* 801767D0 001716D0  38 60 00 00 */	li r3, 0
/* 801767D4 001716D4  48 00 02 60 */	b lbl_80176A34
lbl_801767D8:
/* 801767D8 001716D8  54 80 BF BE */	rlwinm r0, r4, 0x17, 0x1e, 0x1f
/* 801767DC 001716DC  28 00 00 02 */	cmplwi r0, 2
/* 801767E0 001716E0  40 81 00 0C */	ble lbl_801767EC
/* 801767E4 001716E4  38 60 00 00 */	li r3, 0
/* 801767E8 001716E8  48 00 02 4C */	b lbl_80176A34
lbl_801767EC:
/* 801767EC 001716EC  54 80 DF 3E */	rlwinm r0, r4, 0x1b, 0x1c, 0x1f
/* 801767F0 001716F0  28 00 00 08 */	cmplwi r0, 8
/* 801767F4 001716F4  40 81 00 0C */	ble lbl_80176800
/* 801767F8 001716F8  38 60 00 00 */	li r3, 0
/* 801767FC 001716FC  48 00 02 38 */	b lbl_80176A34
lbl_80176800:
/* 80176800 00171700  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80176804 00171704  28 00 00 12 */	cmplwi r0, 0x12
/* 80176808 00171708  40 81 00 0C */	ble lbl_80176814
/* 8017680C 0017170C  38 60 00 00 */	li r3, 0
/* 80176810 00171710  48 00 02 24 */	b lbl_80176A34
lbl_80176814:
/* 80176814 00171714  A0 83 00 10 */	lhz r4, 0x10(r3)
/* 80176818 00171718  54 80 97 BE */	rlwinm r0, r4, 0x12, 0x1e, 0x1f
/* 8017681C 0017171C  28 00 00 03 */	cmplwi r0, 3
/* 80176820 00171720  40 81 00 0C */	ble lbl_8017682C
/* 80176824 00171724  38 60 00 00 */	li r3, 0
/* 80176828 00171728  48 00 02 0C */	b lbl_80176A34
lbl_8017682C:
/* 8017682C 0017172C  54 80 A7 BE */	rlwinm r0, r4, 0x14, 0x1e, 0x1f
/* 80176830 00171730  28 00 00 03 */	cmplwi r0, 3
/* 80176834 00171734  40 81 00 0C */	ble lbl_80176840
/* 80176838 00171738  38 60 00 00 */	li r3, 0
/* 8017683C 0017173C  48 00 01 F8 */	b lbl_80176A34
lbl_80176840:
/* 80176840 00171740  54 80 BF 7E */	rlwinm r0, r4, 0x17, 0x1d, 0x1f
/* 80176844 00171744  28 00 00 07 */	cmplwi r0, 7
/* 80176848 00171748  40 81 00 0C */	ble lbl_80176854
/* 8017684C 0017174C  38 60 00 00 */	li r3, 0
/* 80176850 00171750  48 00 01 E4 */	b lbl_80176A34
lbl_80176854:
/* 80176854 00171754  54 80 DF 3E */	rlwinm r0, r4, 0x1b, 0x1c, 0x1f
/* 80176858 00171758  28 00 00 08 */	cmplwi r0, 8
/* 8017685C 0017175C  40 81 00 0C */	ble lbl_80176868
/* 80176860 00171760  38 60 00 00 */	li r3, 0
/* 80176864 00171764  48 00 01 D0 */	b lbl_80176A34
lbl_80176868:
/* 80176868 00171768  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8017686C 0017176C  28 00 00 10 */	cmplwi r0, 0x10
/* 80176870 00171770  40 81 00 0C */	ble lbl_8017687C
/* 80176874 00171774  38 60 00 00 */	li r3, 0
/* 80176878 00171778  48 00 01 BC */	b lbl_80176A34
lbl_8017687C:
/* 8017687C 0017177C  A0 83 00 12 */	lhz r4, 0x12(r3)
/* 80176880 00171780  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80176884 00171784  28 00 00 08 */	cmplwi r0, 8
/* 80176888 00171788  40 81 00 0C */	ble lbl_80176894
/* 8017688C 0017178C  38 60 00 00 */	li r3, 0
/* 80176890 00171790  48 00 01 A4 */	b lbl_80176A34
lbl_80176894:
/* 80176894 00171794  54 80 BF 7E */	rlwinm r0, r4, 0x17, 0x1d, 0x1f
/* 80176898 00171798  28 00 00 05 */	cmplwi r0, 5
/* 8017689C 0017179C  40 81 00 0C */	ble lbl_801768A8
/* 801768A0 001717A0  38 60 00 00 */	li r3, 0
/* 801768A4 001717A4  48 00 01 90 */	b lbl_80176A34
lbl_801768A8:
/* 801768A8 001717A8  54 80 DF 3E */	rlwinm r0, r4, 0x1b, 0x1c, 0x1f
/* 801768AC 001717AC  28 00 00 07 */	cmplwi r0, 7
/* 801768B0 001717B0  40 81 00 0C */	ble lbl_801768BC
/* 801768B4 001717B4  38 60 00 00 */	li r3, 0
/* 801768B8 001717B8  48 00 01 7C */	b lbl_80176A34
lbl_801768BC:
/* 801768BC 001717BC  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 801768C0 001717C0  28 00 00 14 */	cmplwi r0, 0x14
/* 801768C4 001717C4  40 81 00 0C */	ble lbl_801768D0
/* 801768C8 001717C8  38 60 00 00 */	li r3, 0
/* 801768CC 001717CC  48 00 01 68 */	b lbl_80176A34
lbl_801768D0:
/* 801768D0 001717D0  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 801768D4 001717D4  54 80 8F FE */	rlwinm r0, r4, 0x11, 0x1f, 0x1f
/* 801768D8 001717D8  28 00 00 01 */	cmplwi r0, 1
/* 801768DC 001717DC  40 81 00 0C */	ble lbl_801768E8
/* 801768E0 001717E0  38 60 00 00 */	li r3, 0
/* 801768E4 001717E4  48 00 01 50 */	b lbl_80176A34
lbl_801768E8:
/* 801768E8 001717E8  54 80 AF 3E */	rlwinm r0, r4, 0x15, 0x1c, 0x1f
/* 801768EC 001717EC  28 00 00 08 */	cmplwi r0, 8
/* 801768F0 001717F0  40 81 00 0C */	ble lbl_801768FC
/* 801768F4 001717F4  38 60 00 00 */	li r3, 0
/* 801768F8 001717F8  48 00 01 3C */	b lbl_80176A34
lbl_801768FC:
/* 801768FC 001717FC  54 80 D6 FE */	rlwinm r0, r4, 0x1a, 0x1b, 0x1f
/* 80176900 00171800  28 00 00 10 */	cmplwi r0, 0x10
/* 80176904 00171804  40 81 00 0C */	ble lbl_80176910
/* 80176908 00171808  38 60 00 00 */	li r3, 0
/* 8017690C 0017180C  48 00 01 28 */	b lbl_80176A34
lbl_80176910:
/* 80176910 00171810  54 80 FE FE */	rlwinm r0, r4, 0x1f, 0x1b, 0x1f
/* 80176914 00171814  28 00 00 1E */	cmplwi r0, 0x1e
/* 80176918 00171818  40 81 00 0C */	ble lbl_80176924
/* 8017691C 0017181C  38 60 00 00 */	li r3, 0
/* 80176920 00171820  48 00 01 14 */	b lbl_80176A34
lbl_80176924:
/* 80176924 00171824  4B FF CE 65 */	bl func_80173788
/* 80176928 00171828  2C 03 00 00 */	cmpwi r3, 0
/* 8017692C 0017182C  40 82 00 0C */	bne lbl_80176938
/* 80176930 00171830  38 60 00 00 */	li r3, 0
/* 80176934 00171834  48 00 01 00 */	b lbl_80176A34
lbl_80176938:
/* 80176938 00171838  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 8017693C 0017183C  28 00 00 80 */	cmplwi r0, 0x80
/* 80176940 00171840  40 81 00 0C */	ble lbl_8017694C
/* 80176944 00171844  38 60 00 00 */	li r3, 0
/* 80176948 00171848  48 00 00 EC */	b lbl_80176A34
lbl_8017694C:
/* 8017694C 0017184C  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80176950 00171850  28 00 00 80 */	cmplwi r0, 0x80
/* 80176954 00171854  40 81 00 0C */	ble lbl_80176960
/* 80176958 00171858  38 60 00 00 */	li r3, 0
/* 8017695C 0017185C  48 00 00 D8 */	b lbl_80176A34
lbl_80176960:
/* 80176960 00171860  A0 7F 00 44 */	lhz r3, 0x44(r31)
/* 80176964 00171864  54 60 8F FE */	rlwinm r0, r3, 0x11, 0x1f, 0x1f
/* 80176968 00171868  28 00 00 01 */	cmplwi r0, 1
/* 8017696C 0017186C  40 81 00 0C */	ble lbl_80176978
/* 80176970 00171870  38 60 00 00 */	li r3, 0
/* 80176974 00171874  48 00 00 C0 */	b lbl_80176A34
lbl_80176978:
/* 80176978 00171878  54 60 AF 3F */	rlwinm. r0, r3, 0x15, 0x1c, 0x1f
/* 8017697C 0017187C  54 64 D6 FE */	rlwinm r4, r3, 0x1a, 0x1b, 0x1f
/* 80176980 00171880  40 82 00 14 */	bne lbl_80176994
/* 80176984 00171884  2C 04 00 00 */	cmpwi r4, 0
/* 80176988 00171888  41 82 00 0C */	beq lbl_80176994
/* 8017698C 0017188C  38 00 00 00 */	li r0, 0
/* 80176990 00171890  48 00 00 54 */	b lbl_801769E4
lbl_80176994:
/* 80176994 00171894  2C 00 00 00 */	cmpwi r0, 0
/* 80176998 00171898  41 82 00 14 */	beq lbl_801769AC
/* 8017699C 0017189C  2C 04 00 00 */	cmpwi r4, 0
/* 801769A0 001718A0  40 82 00 0C */	bne lbl_801769AC
/* 801769A4 001718A4  38 00 00 00 */	li r0, 0
/* 801769A8 001718A8  48 00 00 3C */	b lbl_801769E4
lbl_801769AC:
/* 801769AC 001718AC  28 00 00 0C */	cmplwi r0, 0xc
/* 801769B0 001718B0  41 81 00 0C */	bgt lbl_801769BC
/* 801769B4 001718B4  28 04 00 1F */	cmplwi r4, 0x1f
/* 801769B8 001718B8  40 81 00 0C */	ble lbl_801769C4
lbl_801769BC:
/* 801769BC 001718BC  38 00 00 00 */	li r0, 0
/* 801769C0 001718C0  48 00 00 24 */	b lbl_801769E4
lbl_801769C4:
/* 801769C4 001718C4  3C 60 80 38 */	lis r3, lbl_80381D18@ha
/* 801769C8 001718C8  38 63 1D 18 */	addi r3, r3, lbl_80381D18@l
/* 801769CC 001718CC  7C 63 00 AE */	lbzx r3, r3, r0
/* 801769D0 001718D0  7C 04 18 50 */	subf r0, r4, r3
/* 801769D4 001718D4  7C 63 23 38 */	orc r3, r3, r4
/* 801769D8 001718D8  54 00 F8 7E */	srwi r0, r0, 1
/* 801769DC 001718DC  7C 00 18 50 */	subf r0, r0, r3
/* 801769E0 001718E0  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_801769E4:
/* 801769E4 001718E4  2C 00 00 00 */	cmpwi r0, 0
/* 801769E8 001718E8  40 82 00 0C */	bne lbl_801769F4
/* 801769EC 001718EC  38 60 00 00 */	li r3, 0
/* 801769F0 001718F0  48 00 00 44 */	b lbl_80176A34
lbl_801769F4:
/* 801769F4 001718F4  A0 1F 00 44 */	lhz r0, 0x44(r31)
/* 801769F8 001718F8  54 00 F7 3E */	rlwinm r0, r0, 0x1e, 0x1c, 0x1f
/* 801769FC 001718FC  28 00 00 0C */	cmplwi r0, 0xc
/* 80176A00 00171900  41 80 00 0C */	blt lbl_80176A0C
/* 80176A04 00171904  38 60 00 00 */	li r3, 0
/* 80176A08 00171908  48 00 00 2C */	b lbl_80176A34
lbl_80176A0C:
/* 80176A0C 0017190C  38 7F 00 46 */	addi r3, r31, 0x46
/* 80176A10 00171910  4B FF CB 6D */	bl RFLiIsSpecialID
/* 80176A14 00171914  2C 03 00 00 */	cmpwi r3, 0
/* 80176A18 00171918  41 82 00 18 */	beq lbl_80176A30
/* 80176A1C 0017191C  A0 1F 00 44 */	lhz r0, 0x44(r31)
/* 80176A20 00171920  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80176A24 00171924  40 82 00 0C */	bne lbl_80176A30
/* 80176A28 00171928  38 60 00 00 */	li r3, 0
/* 80176A2C 0017192C  48 00 00 08 */	b lbl_80176A34
lbl_80176A30:
/* 80176A30 00171930  38 60 00 01 */	li r3, 1
lbl_80176A34:
/* 80176A34 00171934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80176A38 00171938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80176A3C 0017193C  7C 08 03 A6 */	mtlr r0
/* 80176A40 00171940  38 21 00 10 */	addi r1, r1, 0x10
/* 80176A44 00171944  4E 80 00 20 */	blr 

.global RFLiIsValidOnNAND
RFLiIsValidOnNAND:
/* 80176A48 00171948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80176A4C 0017194C  7C 08 02 A6 */	mflr r0
/* 80176A50 00171950  38 63 00 46 */	addi r3, r3, 0x46
/* 80176A54 00171954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80176A58 00171958  4B FF CB E5 */	bl RFLiIsTemporaryID
/* 80176A5C 0017195C  7C 60 00 34 */	cntlzw r0, r3
/* 80176A60 00171960  54 03 D9 7E */	srwi r3, r0, 5
/* 80176A64 00171964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80176A68 00171968  7C 08 03 A6 */	mtlr r0
/* 80176A6C 0017196C  38 21 00 10 */	addi r1, r1, 0x10
/* 80176A70 00171970  4E 80 00 20 */	blr 

.global func_80176A74
func_80176A74:
/* 80176A74 00171974  80 A3 00 04 */	lwz r5, 4(r3)
/* 80176A78 00171978  80 04 00 04 */	lwz r0, 4(r4)
/* 80176A7C 0017197C  54 A5 00 34 */	rlwinm r5, r5, 0, 0, 0x1a
/* 80176A80 00171980  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80176A84 00171984  7C 05 00 40 */	cmplw r5, r0
/* 80176A88 00171988  41 82 00 0C */	beq lbl_80176A94
/* 80176A8C 0017198C  38 60 00 00 */	li r3, 0
/* 80176A90 00171990  4E 80 00 20 */	blr 
lbl_80176A94:
/* 80176A94 00171994  80 A3 00 08 */	lwz r5, 8(r3)
/* 80176A98 00171998  80 04 00 08 */	lwz r0, 8(r4)
/* 80176A9C 0017199C  54 A5 00 32 */	rlwinm r5, r5, 0, 0, 0x19
/* 80176AA0 001719A0  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80176AA4 001719A4  7C 05 00 40 */	cmplw r5, r0
/* 80176AA8 001719A8  41 82 00 0C */	beq lbl_80176AB4
/* 80176AAC 001719AC  38 60 00 00 */	li r3, 0
/* 80176AB0 001719B0  4E 80 00 20 */	blr 
lbl_80176AB4:
/* 80176AB4 001719B4  A0 A3 00 0E */	lhz r5, 0xe(r3)
/* 80176AB8 001719B8  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 80176ABC 001719BC  7C 05 00 00 */	cmpw r5, r0
/* 80176AC0 001719C0  41 82 00 0C */	beq lbl_80176ACC
/* 80176AC4 001719C4  38 60 00 00 */	li r3, 0
/* 80176AC8 001719C8  4E 80 00 20 */	blr 
lbl_80176ACC:
/* 80176ACC 001719CC  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 80176AD0 001719D0  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 80176AD4 001719D4  7C 05 00 00 */	cmpw r5, r0
/* 80176AD8 001719D8  41 82 00 0C */	beq lbl_80176AE4
/* 80176ADC 001719DC  38 60 00 00 */	li r3, 0
/* 80176AE0 001719E0  4E 80 00 20 */	blr 
lbl_80176AE4:
/* 80176AE4 001719E4  A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 80176AE8 001719E8  A0 04 00 12 */	lhz r0, 0x12(r4)
/* 80176AEC 001719EC  54 A5 04 3C */	rlwinm r5, r5, 0, 0x10, 0x1e
/* 80176AF0 001719F0  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80176AF4 001719F4  7C 05 00 00 */	cmpw r5, r0
/* 80176AF8 001719F8  41 82 00 0C */	beq lbl_80176B04
/* 80176AFC 001719FC  38 60 00 00 */	li r3, 0
/* 80176B00 00171A00  4E 80 00 20 */	blr 
lbl_80176B04:
/* 80176B04 00171A04  A0 A3 00 14 */	lhz r5, 0x14(r3)
/* 80176B08 00171A08  A0 04 00 14 */	lhz r0, 0x14(r4)
/* 80176B0C 00171A0C  54 A5 04 3C */	rlwinm r5, r5, 0, 0x10, 0x1e
/* 80176B10 00171A10  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80176B14 00171A14  7C 05 00 00 */	cmpw r5, r0
/* 80176B18 00171A18  41 82 00 0C */	beq lbl_80176B24
/* 80176B1C 00171A1C  38 60 00 00 */	li r3, 0
/* 80176B20 00171A20  4E 80 00 20 */	blr 
lbl_80176B24:
/* 80176B24 00171A24  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 80176B28 00171A28  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 80176B2C 00171A2C  54 A5 04 38 */	rlwinm r5, r5, 0, 0x10, 0x1c
/* 80176B30 00171A30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80176B34 00171A34  7C 05 00 00 */	cmpw r5, r0
/* 80176B38 00171A38  41 82 00 0C */	beq lbl_80176B44
/* 80176B3C 00171A3C  38 60 00 00 */	li r3, 0
/* 80176B40 00171A40  4E 80 00 20 */	blr 
lbl_80176B44:
/* 80176B44 00171A44  A0 A3 00 02 */	lhz r5, 2(r3)
/* 80176B48 00171A48  A0 04 00 02 */	lhz r0, 2(r4)
/* 80176B4C 00171A4C  54 A5 04 34 */	rlwinm r5, r5, 0, 0x10, 0x1a
/* 80176B50 00171A50  54 00 04 34 */	rlwinm r0, r0, 0, 0x10, 0x1a
/* 80176B54 00171A54  7C 05 00 00 */	cmpw r5, r0
/* 80176B58 00171A58  41 82 00 0C */	beq lbl_80176B64
/* 80176B5C 00171A5C  38 60 00 00 */	li r3, 0
/* 80176B60 00171A60  4E 80 00 20 */	blr 
lbl_80176B64:
/* 80176B64 00171A64  A0 63 00 00 */	lhz r3, 0(r3)
/* 80176B68 00171A68  A0 04 00 00 */	lhz r0, 0(r4)
/* 80176B6C 00171A6C  54 63 04 32 */	rlwinm r3, r3, 0, 0x10, 0x19
/* 80176B70 00171A70  54 00 04 32 */	rlwinm r0, r0, 0, 0x10, 0x19
/* 80176B74 00171A74  7C 03 00 50 */	subf r0, r3, r0
/* 80176B78 00171A78  7C 00 00 34 */	cntlzw r0, r0
/* 80176B7C 00171A7C  54 03 D9 7E */	srwi r3, r0, 5
/* 80176B80 00171A80  4E 80 00 20 */	blr 

.global RFLiPickupCharInfo
RFLiPickupCharInfo:
/* 80176B84 00171A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80176B88 00171A88  7C 08 02 A6 */	mflr r0
/* 80176B8C 00171A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80176B90 00171A90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80176B94 00171A94  7C DF 33 78 */	mr r31, r6
/* 80176B98 00171A98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80176B9C 00171A9C  7C BE 2B 78 */	mr r30, r5
/* 80176BA0 00171AA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80176BA4 00171AA4  7C 9D 23 78 */	mr r29, r4
/* 80176BA8 00171AA8  93 81 00 10 */	stw r28, 0x10(r1)
/* 80176BAC 00171AAC  7C 7C 1B 78 */	mr r28, r3
/* 80176BB0 00171AB0  4B FF 17 85 */	bl RFLAvailable
/* 80176BB4 00171AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80176BB8 00171AB8  40 82 00 0C */	bne lbl_80176BC4
/* 80176BBC 00171ABC  38 60 00 01 */	li r3, 1
/* 80176BC0 00171AC0  48 00 00 E4 */	b lbl_80176CA4
lbl_80176BC4:
/* 80176BC4 00171AC4  2C 1D 00 06 */	cmpwi r29, 6
/* 80176BC8 00171AC8  41 82 00 94 */	beq lbl_80176C5C
/* 80176BCC 00171ACC  40 80 00 1C */	bge lbl_80176BE8
/* 80176BD0 00171AD0  2C 1D 00 01 */	cmpwi r29, 1
/* 80176BD4 00171AD4  41 82 00 98 */	beq lbl_80176C6C
/* 80176BD8 00171AD8  40 80 00 30 */	bge lbl_80176C08
/* 80176BDC 00171ADC  2C 1D 00 00 */	cmpwi r29, 0
/* 80176BE0 00171AE0  40 80 00 14 */	bge lbl_80176BF4
/* 80176BE4 00171AE4  48 00 00 88 */	b lbl_80176C6C
lbl_80176BE8:
/* 80176BE8 00171AE8  2C 1D 00 08 */	cmpwi r29, 8
/* 80176BEC 00171AEC  40 80 00 80 */	bge lbl_80176C6C
/* 80176BF0 00171AF0  48 00 00 44 */	b lbl_80176C34
lbl_80176BF4:
/* 80176BF4 00171AF4  7F 83 E3 78 */	mr r3, r28
/* 80176BF8 00171AF8  7F E4 FB 78 */	mr r4, r31
/* 80176BFC 00171AFC  4B FF C6 C1 */	bl RFLiGetCharInfo
/* 80176C00 00171B00  7C 7F 1B 78 */	mr r31, r3
/* 80176C04 00171B04  48 00 00 68 */	b lbl_80176C6C
lbl_80176C08:
/* 80176C08 00171B08  7F 83 E3 78 */	mr r3, r28
/* 80176C0C 00171B0C  38 9D FF FE */	addi r4, r29, -2
/* 80176C10 00171B10  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80176C14 00171B14  38 C0 00 00 */	li r6, 0
/* 80176C18 00171B18  4B FF D9 F1 */	bl RFLiGetControllerData
/* 80176C1C 00171B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80176C20 00171B20  41 82 00 0C */	beq lbl_80176C2C
/* 80176C24 00171B24  3B E0 00 00 */	li r31, 0
/* 80176C28 00171B28  48 00 00 44 */	b lbl_80176C6C
lbl_80176C2C:
/* 80176C2C 00171B2C  3B E0 00 07 */	li r31, 7
/* 80176C30 00171B30  48 00 00 3C */	b lbl_80176C6C
lbl_80176C34:
/* 80176C34 00171B34  7F 83 E3 78 */	mr r3, r28
/* 80176C38 00171B38  7F C4 F3 78 */	mr r4, r30
/* 80176C3C 00171B3C  7F E5 FB 78 */	mr r5, r31
/* 80176C40 00171B40  4B FF E9 35 */	bl func_80175574
/* 80176C44 00171B44  2C 03 00 00 */	cmpwi r3, 0
/* 80176C48 00171B48  41 82 00 0C */	beq lbl_80176C54
/* 80176C4C 00171B4C  3B E0 00 00 */	li r31, 0
/* 80176C50 00171B50  48 00 00 1C */	b lbl_80176C6C
lbl_80176C54:
/* 80176C54 00171B54  3B E0 00 07 */	li r31, 7
/* 80176C58 00171B58  48 00 00 14 */	b lbl_80176C6C
lbl_80176C5C:
/* 80176C5C 00171B5C  7F 83 E3 78 */	mr r3, r28
/* 80176C60 00171B60  7F E4 FB 78 */	mr r4, r31
/* 80176C64 00171B64  4B FF F9 69 */	bl RFLiGetDefaultData
/* 80176C68 00171B68  3B E0 00 00 */	li r31, 0
lbl_80176C6C:
/* 80176C6C 00171B6C  2C 1F 00 00 */	cmpwi r31, 0
/* 80176C70 00171B70  40 82 00 30 */	bne lbl_80176CA0
/* 80176C74 00171B74  38 7C 00 46 */	addi r3, r28, 0x46
/* 80176C78 00171B78  4B FF C8 CD */	bl RFLiIsValidID
/* 80176C7C 00171B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80176C80 00171B80  40 82 00 0C */	bne lbl_80176C8C
/* 80176C84 00171B84  3B E0 00 07 */	li r31, 7
/* 80176C88 00171B88  48 00 00 18 */	b lbl_80176CA0
lbl_80176C8C:
/* 80176C8C 00171B8C  7F 83 E3 78 */	mr r3, r28
/* 80176C90 00171B90  4B FF F9 55 */	bl RFLiCheckValidInfo
/* 80176C94 00171B94  2C 03 00 00 */	cmpwi r3, 0
/* 80176C98 00171B98  40 82 00 08 */	bne lbl_80176CA0
/* 80176C9C 00171B9C  3B E0 00 07 */	li r31, 7
lbl_80176CA0:
/* 80176CA0 00171BA0  7F E3 FB 78 */	mr r3, r31
lbl_80176CA4:
/* 80176CA4 00171BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80176CA8 00171BA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80176CAC 00171BAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80176CB0 00171BB0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80176CB4 00171BB4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80176CB8 00171BB8  7C 08 03 A6 */	mtlr r0
/* 80176CBC 00171BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80176CC0 00171BC0  4E 80 00 20 */	blr 

.global copyChar2Additional_
copyChar2Additional_:
/* 80176CC4 00171BC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80176CC8 00171BC8  7C 08 02 A6 */	mflr r0
/* 80176CCC 00171BCC  38 A0 00 14 */	li r5, 0x14
/* 80176CD0 00171BD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80176CD4 00171BD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80176CD8 00171BD8  7C 9F 23 78 */	mr r31, r4
/* 80176CDC 00171BDC  38 84 00 18 */	addi r4, r4, 0x18
/* 80176CE0 00171BE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80176CE4 00171BE4  7C 7E 1B 78 */	mr r30, r3
/* 80176CE8 00171BE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80176CEC 00171BEC  4B E8 D3 15 */	bl memcpy
/* 80176CF0 00171BF0  3B A0 00 00 */	li r29, 0
/* 80176CF4 00171BF4  38 7E 00 16 */	addi r3, r30, 0x16
/* 80176CF8 00171BF8  B3 BE 00 14 */	sth r29, 0x14(r30)
/* 80176CFC 00171BFC  38 9F 00 2E */	addi r4, r31, 0x2e
/* 80176D00 00171C00  38 A0 00 14 */	li r5, 0x14
/* 80176D04 00171C04  4B E8 D2 FD */	bl memcpy
/* 80176D08 00171C08  A0 7F 00 44 */	lhz r3, 0x44(r31)
/* 80176D0C 00171C0C  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80176D10 00171C10  50 60 80 00 */	rlwimi r0, r3, 0x10, 0, 0
/* 80176D14 00171C14  54 65 AF 3F */	rlwinm. r5, r3, 0x15, 0x1c, 0x1f
/* 80176D18 00171C18  B3 BE 00 14 */	sth r29, 0x14(r30)
/* 80176D1C 00171C1C  54 64 D6 FE */	rlwinm r4, r3, 0x1a, 0x1b, 0x1f
/* 80176D20 00171C20  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80176D24 00171C24  40 82 00 14 */	bne lbl_80176D38
/* 80176D28 00171C28  2C 04 00 00 */	cmpwi r4, 0
/* 80176D2C 00171C2C  41 82 00 0C */	beq lbl_80176D38
/* 80176D30 00171C30  38 00 00 00 */	li r0, 0
/* 80176D34 00171C34  48 00 00 54 */	b lbl_80176D88
lbl_80176D38:
/* 80176D38 00171C38  2C 05 00 00 */	cmpwi r5, 0
/* 80176D3C 00171C3C  41 82 00 14 */	beq lbl_80176D50
/* 80176D40 00171C40  2C 04 00 00 */	cmpwi r4, 0
/* 80176D44 00171C44  40 82 00 0C */	bne lbl_80176D50
/* 80176D48 00171C48  38 00 00 00 */	li r0, 0
/* 80176D4C 00171C4C  48 00 00 3C */	b lbl_80176D88
lbl_80176D50:
/* 80176D50 00171C50  28 05 00 0C */	cmplwi r5, 0xc
/* 80176D54 00171C54  41 81 00 0C */	bgt lbl_80176D60
/* 80176D58 00171C58  28 04 00 1F */	cmplwi r4, 0x1f
/* 80176D5C 00171C5C  40 81 00 0C */	ble lbl_80176D68
lbl_80176D60:
/* 80176D60 00171C60  38 00 00 00 */	li r0, 0
/* 80176D64 00171C64  48 00 00 24 */	b lbl_80176D88
lbl_80176D68:
/* 80176D68 00171C68  3C 60 80 38 */	lis r3, lbl_80381D18@ha
/* 80176D6C 00171C6C  38 63 1D 18 */	addi r3, r3, lbl_80381D18@l
/* 80176D70 00171C70  7C 63 28 AE */	lbzx r3, r3, r5
/* 80176D74 00171C74  7C 04 18 50 */	subf r0, r4, r3
/* 80176D78 00171C78  7C 63 23 38 */	orc r3, r3, r4
/* 80176D7C 00171C7C  54 00 F8 7E */	srwi r0, r0, 1
/* 80176D80 00171C80  7C 00 18 50 */	subf r0, r0, r3
/* 80176D84 00171C84  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_80176D88:
/* 80176D88 00171C88  2C 00 00 00 */	cmpwi r0, 0
/* 80176D8C 00171C8C  41 82 00 1C */	beq lbl_80176DA8
/* 80176D90 00171C90  A0 1F 00 44 */	lhz r0, 0x44(r31)
/* 80176D94 00171C94  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80176D98 00171C98  50 A3 D8 48 */	rlwimi r3, r5, 0x1b, 1, 4
/* 80176D9C 00171C9C  50 03 81 52 */	rlwimi r3, r0, 0x10, 5, 9
/* 80176DA0 00171CA0  90 7E 00 34 */	stw r3, 0x34(r30)
/* 80176DA4 00171CA4  48 00 00 10 */	b lbl_80176DB4
lbl_80176DA8:
/* 80176DA8 00171CA8  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80176DAC 00171CAC  54 00 02 80 */	rlwinm r0, r0, 0, 0xa, 0
/* 80176DB0 00171CB0  90 1E 00 34 */	stw r0, 0x34(r30)
lbl_80176DB4:
/* 80176DB4 00171CB4  88 9F 00 16 */	lbz r4, 0x16(r31)
/* 80176DB8 00171CB8  A0 7F 00 44 */	lhz r3, 0x44(r31)
/* 80176DBC 00171CBC  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80176DC0 00171CC0  28 04 00 7F */	cmplwi r4, 0x7f
/* 80176DC4 00171CC4  50 60 82 9A */	rlwimi r0, r3, 0x10, 0xa, 0xd
/* 80176DC8 00171CC8  88 DF 00 17 */	lbz r6, 0x17(r31)
/* 80176DCC 00171CCC  50 60 83 9C */	rlwimi r0, r3, 0x10, 0xe, 0xe
/* 80176DD0 00171CD0  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80176DD4 00171CD4  40 81 00 08 */	ble lbl_80176DDC
/* 80176DD8 00171CD8  38 80 00 7F */	li r4, 0x7f
lbl_80176DDC:
/* 80176DDC 00171CDC  28 06 00 7F */	cmplwi r6, 0x7f
/* 80176DE0 00171CE0  40 81 00 08 */	ble lbl_80176DE8
/* 80176DE4 00171CE4  38 C0 00 7F */	li r6, 0x7f
lbl_80176DE8:
/* 80176DE8 00171CE8  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80176DEC 00171CEC  50 80 53 EA */	rlwimi r0, r4, 0xa, 0xf, 0x15
/* 80176DF0 00171CF0  50 C0 1D B8 */	rlwimi r0, r6, 3, 0x16, 0x1c
/* 80176DF4 00171CF4  38 7E 00 2C */	addi r3, r30, 0x2c
/* 80176DF8 00171CF8  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80176DFC 00171CFC  38 9F 00 46 */	addi r4, r31, 0x46
/* 80176E00 00171D00  38 A0 00 08 */	li r5, 8
/* 80176E04 00171D04  4B E8 D1 FD */	bl memcpy
/* 80176E08 00171D08  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80176E0C 00171D0C  7F E3 FB 78 */	mr r3, r31
/* 80176E10 00171D10  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 80176E14 00171D14  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80176E18 00171D18  4B FF 63 51 */	bl RFLiGetFacelineColor
/* 80176E1C 00171D1C  54 60 46 3E */	srwi r0, r3, 0x18
/* 80176E20 00171D20  98 7E 00 3B */	stb r3, 0x3b(r30)
/* 80176E24 00171D24  98 1E 00 38 */	stb r0, 0x38(r30)
/* 80176E28 00171D28  54 60 86 3E */	rlwinm r0, r3, 0x10, 0x18, 0x1f
/* 80176E2C 00171D2C  98 1E 00 39 */	stb r0, 0x39(r30)
/* 80176E30 00171D30  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80176E34 00171D34  98 1E 00 3A */	stb r0, 0x3a(r30)
/* 80176E38 00171D38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80176E3C 00171D3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80176E40 00171D40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80176E44 00171D44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80176E48 00171D48  7C 08 03 A6 */	mtlr r0
/* 80176E4C 00171D4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80176E50 00171D50  4E 80 00 20 */	blr 

.global RFLGetAdditionalInfo
RFLGetAdditionalInfo:
/* 80176E54 00171D54  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80176E58 00171D58  7C 08 02 A6 */	mflr r0
/* 80176E5C 00171D5C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80176E60 00171D60  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80176E64 00171D64  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80176E68 00171D68  7C 7E 1B 78 */	mr r30, r3
/* 80176E6C 00171D6C  38 61 00 08 */	addi r3, r1, 8
/* 80176E70 00171D70  4B FF FD 15 */	bl RFLiPickupCharInfo
/* 80176E74 00171D74  2C 03 00 00 */	cmpwi r3, 0
/* 80176E78 00171D78  7C 7F 1B 78 */	mr r31, r3
/* 80176E7C 00171D7C  40 82 00 10 */	bne lbl_80176E8C
/* 80176E80 00171D80  7F C3 F3 78 */	mr r3, r30
/* 80176E84 00171D84  38 81 00 08 */	addi r4, r1, 8
/* 80176E88 00171D88  4B FF FE 3D */	bl copyChar2Additional_
lbl_80176E8C:
/* 80176E8C 00171D8C  7F E3 FB 78 */	mr r3, r31
/* 80176E90 00171D90  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80176E94 00171D94  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80176E98 00171D98  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80176E9C 00171D9C  7C 08 03 A6 */	mtlr r0
/* 80176EA0 00171DA0  38 21 00 60 */	addi r1, r1, 0x60
/* 80176EA4 00171DA4  4E 80 00 20 */	blr 

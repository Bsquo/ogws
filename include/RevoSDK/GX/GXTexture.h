#ifndef REVOSDK_GX_TEXTURE_H
#define REVOSDK_GX_TEXTURE_H
#include <types.h>
#include <GX.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum _GXTexMapID
{
	GX_TEXMAP_0,
	GX_TEXMAP_1,
	GX_TEXMAP_2,
	GX_TEXMAP_3,
	GX_TEXMAP_4,
	GX_TEXMAP_5,
	GX_TEXMAP_6,
	GX_TEXMAP_7,
	GX_TEXMAP_INVALID = 0xFF
} GXTexMapID;

typedef enum _GXTexFmt
{
	GX_TEX_FMT_0,
	GX_TEX_FMT_1,
	GX_TEX_FMT_2,
	GX_TEX_FMT_3,
	GX_TEX_FMT_4,
	GX_TEX_FMT_5,
	GX_TEX_FMT_6,
	GX_TEX_FMT_7,

	// CI formats
	GX_TEX_FMT_8,
	GX_TEX_FMT_9,
	GX_TEX_FMT_10,
} GXTexFmt;

typedef enum _GXTlutFmt
{
	GX_TLUT_FORMAT_0
} GXTlutFmt;

typedef enum _GXTlut
{
	GX_TLUT0,
	GX_TLUT1,
	GX_TLUT2,
	GX_TLUT3,
	GX_TLUT4,
	GX_TLUT5,
	GX_TLUT6,
	GX_TLUT7,
} GXTlut;

typedef enum _GXTexFilter
{
	GX_LINEAR = 1,
	GX_LIN_MIP_LIN = 5
} GXTexFilter;

typedef enum _GXAnisotropy
{

} GXAnisotropy;

typedef enum _GXTexWrapMode
{
	GX_TEXWRAPMODE_0,
	GX_TEXWRAPMODE_1,
	GX_TEXWRAPMODE_2,
	GX_MAX_TEXWRAPMODE
} GXTexWrapMode;

typedef enum _GXCITexFmt
{

} GXCITexFmt;

typedef enum _GXTexCoordID
{
	GX_TEX_COORD_ID_0,
	GX_TEX_COORD_ID_COUNT = 8,
	GX_TEX_COORD_ID_INVALID = 0xFF
} GXTexCoordID;

typedef enum _GXTexGenType
{
	GX_TEX_GEN_TYPE_0,
	GX_TEX_GEN_TYPE_1,
} GXTexGenType;

typedef enum _GXTexGenSrc
{
	GX_TEX_GEN_SRC_0,
	GX_TEX_GEN_SRC_1,
	GX_TEX_GEN_SRC_2,
	GX_TEX_GEN_SRC_3,
	GX_TEX_GEN_SRC_4,
} GXTexGenSrc;

typedef struct _GXTlutObj
{

} GXTlutObj;

typedef struct _GXTexObj
{
	UNKWORD mFlags; // at 0x0
	char UNK_0x4[0x4];
	UNKWORD mDimensions; // at 0x8 (Height/width are split between these bits)
	char UNK_0xC[0x4];
	UNKWORD mUserData; // at 0x10
	GXTexFmt mFormat; // at 0x14
	UNKWORD mTLUT; // at 0x18
} GXTexObj;

UNKWORD GXGetTexBufferSize(UNKWORD width, UNKWORD height, GXTexFmt format, UNKWORD, UNKWORD);

UNKTYPE GXInitTexObj(GXTexObj *, UNKTYPE *image, u16 width, UNKWORD height, UNKWORD texFormat, UNKWORD wrapModeS, UNKWORD wrapModeT, BOOL mipmap);
UNKTYPE GXInitTexObjCI(GXTexObj *, UNKTYPE *, UNKWORD width, UNKWORD height, UNKWORD texFormat, UNKWORD wrapModeS, UNKWORD wrapModeT, BOOL mipmap, UNKWORD tlut);
UNKTYPE GXInitTexObjLOD(GXTexObj *, int min_filt, int mag_filt, f32 minLod, f32 maxLod, f32 lodBias, UNKWORD biasClampEnable, UNKWORD edgeLodEnable, UNKWORD anisotropy);
UNKTYPE GXLoadTexObj(GXTexObj *, GXTexMapID texMapID);
UNKTYPE GXInitTlutObj(GXTlutObj *, UNKTYPE *palette, UNKWORD paletteFmt, UNKWORD paletteEntryNum);

UNKWORD GXGetTexObjWrapS(GXTexObj *);
UNKWORD GXGetTexObjWrapT(GXTexObj *);
UNKTYPE GXGetTexObjLODAll(GXTexObj *, int *min_filt_out, int *mag_filt_out, f32 *minLod_out, f32 *maxLod_out, f32 *lodBias_out, UNKTYPE *biasClampEnable, UNKTYPE *edgeLodEnable, UNKWORD *anisotropy);
UNKWORD GXGetTexObjTlut(GXTexObj *);

#ifdef __cplusplus
}
#endif
#endif
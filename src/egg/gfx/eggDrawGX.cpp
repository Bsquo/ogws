#pragma ipa file
#pragma use_lmw_stmw on

#include "eggDrawGX.h"
#include "eggAssert.h"
#include "eggMatrix.h"
#include "eggVector.h"
#include "eggHeap.h"
#include "eggGXUtility.h"
#include "eggStateGX.h"
#include "math_triangular.h"
#include <RevoSDK/GX/GXAttr.h>
#include <RevoSDK/GX/GXGeometry.h>
#include <RevoSDK/GX/GXVert.h>
#include <RevoSDK/GX/GXTev.h>
#include <RevoSDK/GX/GXBump.h>
#include <RevoSDK/GX/GXLight.h>
#include <RevoSDK/GX/GXTransform.h>
#include <RevoSDK/GX/GXPixel.h>
#include <RevoSDK/GX/GXDisplayList.h>
#include <RevoSDK/GX/GXDraw.h>
#include <RevoSDK/OS/OS.h>
#include <RevoSDK/OS/OSCache.h>

namespace EGG
{
    using namespace nw4r;

    namespace
    {
        static void DrawQuadNormal(u8 r3, u8 r4, u8 r5, u8 r6, u8 r7)
        {
            GXCmd1u8(r3);
            GXCmd1u8(r7);
            GXCmd1u8(r4);
            GXCmd1u8(r7);
            GXCmd1u8(r5);
            GXCmd1u8(r7);
            GXCmd1u8(r6);
            GXCmd1u8(r7);
        }

        static void DrawQuadLineStripNormal(u8 r3, u8 r4, u8 r5, u8 r6, u8 r7)
        {
            GXBegin(0xB0, 0, 5);
            {
                GXCmd1u8(r3);
                GXCmd1u8(r7);
                GXCmd1u8(r4);
                GXCmd1u8(r7);
                GXCmd1u8(r5);
                GXCmd1u8(r7);
                GXCmd1u8(r6);
                GXCmd1u8(r7);
                GXCmd1u8(r3);
                GXCmd1u8(r7);
            }
            GXEnd();
        }

        #ifdef __DECOMP_NON_MATCHING
        // https://decomp.me/scratch/DlDD1
        static void DrawCircleYPolygonFan(const math::MTX34& mtx, f32 f1, u16 divide)
        {
        }
        #else
        #error This file has yet to be decompiled accurately. Use "eggDrawGX.s" instead.
        #endif
    }

    void DrawGX::Initialize(Heap *pHeap)
    {
        if (pHeap == NULL) pHeap = Heap::sCurrentHeap;

        InitTexObj();
        math::MTX34Identity(&s_cameraMtx);
        CreateDisplayList(pHeap);
    }

    void DrawGX::InitTexObj()
    {
        GXInitTexObj(&sTexObj, &sClearTex, 4, 4, 0x16, 1, 1, FALSE);
        GXInitTexObjLOD(&sTexObj, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f);
    }

    GXTexMapID DrawGX::GetTexMapDefault()
    {
        return sTexMapDefault;
    }

    void DrawGX::BeginDrawVtxType0()
    {
        ResetMaterial(COLOR_CHANNEL_0);
        SetVtxState(VTX_TYPE_0);
    }

    void DrawGX::BeginDrawVtxType2()
    {
        ResetMaterial(COLOR_CHANNEL_0);
        SetVtxState(VTX_TYPE_2);
    }

    void DrawGX::BeginDrawLine(ColorChannel chan, ZMode zmode)
    {
        SetMat_ColorChannel(chan);
        SetMat_TexGen(TEX_GEN_0);
        SetMat_Ind();
        GXSetTevSwapModeTable(GX_TEV_SWAP_SEL_0, 0, 1, 2, 3);
        GXSetNumTevStages(1);
        SetMat_Tev(0, TEV_SETTING_0);
        SetMat_PE(zmode, BLEND_0);
        SetVtxState(VTX_TYPE_1);
    }

    void DrawGX::BeginDrawVtxType5()
    {
        ResetMaterial(COLOR_CHANNEL_0);
        SetVtxState(VTX_TYPE_5);
    }

    void DrawGX::BeginDrawCircleZ(ColorChannel chan, ZMode zmode)
    {
        SetMat_ColorChannel(chan);
        SetMat_TexGen(TEX_GEN_0);
        SetMat_Ind();
        GXSetTevSwapModeTable(GX_TEV_SWAP_SEL_0, 0, 1, 2, 3);
        GXSetNumTevStages(1);
        SetMat_Tev(0, TEV_SETTING_0);
        SetMat_PE(zmode, BLEND_0);
        SetVtxState(VTX_TYPE_4);
    }

    void DrawGX::BeginDrawPolygon(ColorChannel chan)
    {
        ResetMaterial(chan);
        
        switch(chan)
        {
            case COLOR_CHANNEL_0:
                GXSetChanCtrl(GX_CHANNEL_ID_4, 1, 0, 1, 1, 2, 2);
                break;
            case COLOR_CHANNEL_1:
                GXSetChanCtrl(GX_CHANNEL_ID_4, 0, 0, 1, 1, 2, 2);
                break;
        }

        SetVtxState(VTX_TYPE_6);

        math::MTX34 mtx;
        math::MTX34Identity(&mtx);
        GXLoadPosMtxImm(s_cameraMtx, 0);
        GXLoadNrmMtxImm(s_cameraMtx, 0);
        GXSetChanMatColor(GX_CHANNEL_ID_4, sColorWhite);
    }

    void DrawGX::BeginDrawQuad(ColorChannel chan, ZMode zmode, Blend blend, bool r6, bool alpha)
    {
        SetMat_ColorChannel(chan);
        SetMat_TexGen((r6) ? TEX_GEN_1 : TEX_GEN_0);
        SetMat_Ind();
        GXSetNumTevStages(1);
        SetMat_Tev(0, (r6) ? TEV_SETTING_1 : TEV_SETTING_0);

        if (alpha) GXSetTevAlphaIn(GX_TEV_STAGE_ID_0, 7, 7, 7, 5);

        SetMat_PE(zmode, blend);
        SetVtxState((r6) ? VTX_TYPE_7 : VTX_TYPE_8);
    }

    #ifdef __DECOMP_NON_MATCHING
    // https://decomp.me/scratch/usuhH
    void DrawGX::BeginDrawScreen(bool, bool, bool)
    {
    }
    #else
    #endif

    #ifdef __DECOMP_NON_MATCHING
    void DrawGX::FUN_80087cd4(bool)
    {
    }
    #else
    #endif

    #ifdef __DECOMP_NON_MATCHING
    // https://decomp.me/scratch/G1Nby
    void DrawGX::DrawLineStrip(const math::VEC3 *, u16, GXColor, u8)
    {
    }
    #else
    #endif

    #ifdef __DECOMP_NON_MATCHING
    // https://decomp.me/scratch/I4AX8
    void DrawGX::DrawLine(const math::VEC3 *, u16, GXColor, u8)
    {
    }
    #else
    #endif

    #ifdef __DECOMP_NON_MATCHING
    void DrawGX::DrawCircle2D(Circle, f32, f32, f32, GXColor, u8)
    {
    }
    #else
    #endif

    #ifdef __DECOMP_NON_MATCHING
    void DrawGX::DrawPoint(const math::VEC3 *, u16, GXColor, u8)
    {
    }
    #else
    #endif

    #ifdef __DECOMP_NON_MATCHING
    // https://decomp.me/scratch/WKr16
    void DrawGX::DrawPolygon(const math::VEC3&, const math::VEC3&, const math::VEC3&, GXColor)
    {
    }
    #else
    #endif

    void DrawGX::BeginDrawShadowVolumeTexture(bool r3, GXColor color, Blend blendMode)
    {
        SetMat_ColorChannel(COLOR_CHANNEL_1);
        SetMat_TexGen(TEX_GEN_1);
        SetMat_Ind();

        if (blendMode == BLEND_7)
        {
            GXColor color2 = {
                255 - color.r,
                255 - color.g,
                255 - color.b,
                255 - color.a
            };
            GXSetTevColor(GX_TEV_REG_ID_1, color2);
        }
        else
        {
            GXSetTevColor(GX_TEV_REG_ID_1, color);
        }

        GXSetNumTevStages(1);
        GXSetTevSwapMode(GX_TEV_STAGE_ID_0, 0, 0);
        GXSetTevSwapModeTable(GX_TEV_SWAP_SEL_0, 0, 1, 2, 3);
        GXSetTevDirect(0);
        GXSetTevOrder(GX_TEV_STAGE_ID_0, GX_TEX_COORD_ID_0, sTexMapDefault, 0xff);
        GXSetTevColorIn(GX_TEV_STAGE_ID_0, 8, 15, 2, 15);
        GXSetTevColorOp(GX_TEV_STAGE_ID_0, 14, 0, 0, 1, 0);
        GXSetTevAlphaIn(GX_TEV_STAGE_ID_0, 4, 7, 1, 7);
        GXSetTevAlphaOp(GX_TEV_STAGE_ID_0, 14, 0, 0, 1, 0);
        GXSetAlphaCompare(7, 0, 0, 7, 0);

        SetZMode(ZMODE_0);
        SetBlendMode(blendMode);
        SetVtxState((r3) ? VTX_TYPE_11 : VTX_TYPE_10);
    }

    #ifdef __DECOMP_NON_MATCHING
    // https://decomp.me/scratch/t9gh5
    void DrawGX::ClearEfb(const math::MTX34&, bool, bool, bool, GXColor, bool)
    {
    }
    #else
    #endif

    void DrawGX::ResetMaterial(ColorChannel chan)
    {
        SetMat_ColorChannel(chan);
        SetMat_TexGen(TEX_GEN_0);
        SetMat_Ind();
        GXSetTevSwapModeTable(GX_TEV_SWAP_SEL_0, 0, 1, 2, 3);
        GXSetNumTevStages(1);
        SetMat_Tev(0, TEV_SETTING_0);
        SetMat_PE(ZMODE_1, BLEND_0);
    }

    void DrawGX::SetMat_ColorChannel(ColorChannel chan)
    {
        switch(chan)
        {
            case COLOR_CHANNEL_0:
                GXSetNumChans(1);
                GXSetCullMode(2);
                GXSetChanCtrl(GX_CHANNEL_ID_4, 1, 0, 0, sTexMapDefault, 2, 1);
                GXSetChanCtrl(GX_CHANNEL_ID_5, 0, 1, 1, 0, 0, 2);
                break;
            case COLOR_CHANNEL_1:
                GXSetNumChans(1);
                GXSetCullMode(2);
                GXSetChanCtrl(GX_CHANNEL_ID_4, 0, 0, 0, 0, 2, 1);
                GXSetChanCtrl(GX_CHANNEL_ID_5, 0, 1, 1, 0, 0, 2);
                break;
        }
    }

    void DrawGX::SetMat_TexGen(TexGen texGen)
    {
        switch(texGen)
        {
            case TEX_GEN_0:
                GXSetNumTexGens(0);
                GXSetTexCoordGen2(GX_TEX_COORD_ID_0, GX_TEX_GEN_TYPE_1, GX_TEX_GEN_SRC_4, 60, 0, 125);
                break;
            case TEX_GEN_1:
                GXSetNumTexGens(1);
                GXSetTexCoordGen2(GX_TEX_COORD_ID_0, GX_TEX_GEN_TYPE_1, GX_TEX_GEN_SRC_4, 60, 0, 125);
                break;
        }
    }

    void DrawGX::SetMat_Ind()
    {
        GXSetNumIndStages(0);
        GXSetIndTexOrder(0, 1, 1);
        GXSetIndTexCoordScale(GX_IND_TEX_STAGE_0, GX_IND_TEX_SCALE_0,
            GX_IND_TEX_SCALE_0);
    }

    void DrawGX::SetMat_Tev(int id, TevSetting setting)
    {
        switch(setting)
        {
            case TEV_SETTING_0:
                GXSetTevDirect(id);
                GXSetTevOrder((GXTevStageID)id, GX_TEX_COORD_ID_INVALID, GX_TEX_MAP_ID_INVALID, 4);
                GXSetTevSwapMode((GXTevStageID)id, 0, 0);
                GXSetTevColorIn((GXTevStageID)id, 15, 15, 15, 10);
                GXSetTevColorOp((GXTevStageID)id, 0, 0, 0, 1, 0);
                GXSetTevAlphaIn((GXTevStageID)id, 7, 7, 7, 5);
                GXSetTevAlphaOp((GXTevStageID)id, 0, 0, 0, 1, 0);
                break;
            case TEV_SETTING_1:
                GXSetTevDirect(id);
                GXSetTevOrder((GXTevStageID)id, GX_TEX_COORD_ID_0, sTexMapDefault, 4);
                GXSetTevSwapMode((GXTevStageID)id, 0, 0);
                GXSetTevColorIn((GXTevStageID)id, 15, 8, 10, 15);
                GXSetTevColorOp((GXTevStageID)id, 0, 0, 0, 1, 0);
                GXSetTevAlphaIn((GXTevStageID)id, 7, 4, 5, 7);
                GXSetTevAlphaOp((GXTevStageID)id, 0, 0, 0, 1, 0);
                break;
        }
    }
    void DrawGX::SetMat_PE(ZMode zMode, Blend blendMode)
    {
        GXSetZCompLoc(1);
        GXSetAlphaCompare(7, 0, 1, 7, 0);
        SetZMode(zMode);
        SetBlendMode(blendMode);
    }

    void DrawGX::LoadTexture(const ResTIMG *pRes, int mapId)
    {
        #line 982
        EGG_ASSERT(pRes != NULL);

        GXTexObj obj;
        GXUtility::getTexObj(&obj, *pRes);
        GXLoadTexObj(&obj, (GXTexMapID)mapId);
    }

    #ifdef __DECOMP_NON_MATCHING
    void DrawGX::SetVtxState(VtxType)
    {
    }
    #else
    #endif

    #ifdef __DECOMP_NON_MATCHING
    // https://decomp.me/scratch/qoLRl
    void DrawGX::CreateDisplayList(Heap *)
    {
    }
    #else
    #endif

    void DrawGX::DrawDL(DL dl, const math::MTX34& posMtx)
    {
        #line 1397
        EGG_ASSERT(s_flag & FLAG_INITIALIZE_DISPLAY_LIST);

        GXLoadPosMtxImm(posMtx, 0);
        GXLoadNrmMtxImm(posMtx, 0);
        GXCallDisplayList(s_DL[dl].m_list, s_DL[dl].m_size);
    }

    void DrawGX::DrawDL(DL dl, const math::MTX34& posMtx, GXColor color)
    {
        #line 1397
        EGG_ASSERT(s_flag & FLAG_INITIALIZE_DISPLAY_LIST);

        GXLoadPosMtxImm(posMtx, 0);
        GXLoadNrmMtxImm(posMtx, 0);
        GXSetChanMatColor(GX_CHANNEL_ID_4, color);
        GXCallDisplayList(s_DL[dl].m_list, s_DL[dl].m_size);
    }

    void DrawGX::SetZMode(ZMode zMode)
    {
        #line 1417
        EGG_ASSERT(zMode < ZMODE_MAX);
        
        const ZModeEntry& entry = sZModeMap[zMode];
        GXSetZMode(entry.BYTE_0x0, entry.WORD_0x4, entry.BYTE_0x8);
    }

    void DrawGX::SetBlendMode(Blend blendMode)
    {
        #line 1438
        EGG_ASSERT(blendMode < BLEND_MAX);
        
        const BlendEntry& entry = sBlendMap[blendMode];
        GXSetBlendMode(entry.WORD_0x0, entry.WORD_0x4, entry.WORD_0x8, entry.WORD_0xC);
    }


    u8 DrawGX::sClearTex[] = {
        0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff,
        0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff,
        0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff,
        0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    };
}
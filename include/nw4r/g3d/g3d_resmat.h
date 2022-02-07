#ifndef NW4R_G3D_RESMAT_H
#define NW4R_G3D_RESMAT_H
#include "types_nw4r.h"
#include "g3d_rescommon.h"
#include "math_types.h"
#include <RevoSDK/GX/GXTexture.h>

namespace nw4r
{
    namespace g3d
    {
        struct ResTexPlttInfoData
        {
            u32 mNumOffsets; // at 0x0

            struct InfoOffset
            {
                u32 mResOffset; // at 0x0
                u32 mTexOffset; // at 0x4
            } mOffsets[]; // at 0x4
        };

        struct ResTexPlttInfo
        {
            ResCommon<ResTexPlttInfoData> mInfo;

            inline ResTexPlttInfo(void * vptr) : mInfo(vptr) {}
        };

        struct ResMatData
        {
            char UNK_0x0[0xC];
            UNKWORD mId; // at 0xC
        };

        struct ResTexObjData
        {

        };

        struct ResTlutObjData
        {

        };

        struct ResMat
        {
            ResCommon<ResMatData> mMat;

            inline ResMat(void * vptr) : mMat(vptr) {}

            bool IsValid() const
            {
                return mMat.IsValid();
            }

            UNKWORD GetID() const
            {
                return mMat.ref().mId;
            }

            bool Bind(ResFile);
            UNKTYPE Release();
            UNKTYPE Init();
        };

        struct ResTexObj
        {
            ResCommon<ResTexObjData> mTex;

            GXTexObj * GetTexObj(GXTexMapID);
        };

        struct ResTlutObj
        {
            ResCommon<ResTlutObjData> mTlut;

            GXTlutObj * GetTlut(GXTlut);
        };
    }
}

#endif
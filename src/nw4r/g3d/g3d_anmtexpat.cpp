#pragma ipa file
#include "g3d_anmtexpat.h"
#include "g3d_resmat.h"
#include "ut_algorithm.h"

namespace nw4r
{
    namespace g3d
    {
        NW4R_G3D_TYPE_OBJ_DEF(AnmObjTexPat);
        NW4R_G3D_TYPE_OBJ_DEF(AnmObjTexPatNode);
        NW4R_G3D_TYPE_OBJ_DEF(AnmObjTexPatOverride);
        NW4R_G3D_TYPE_OBJ_DEF(AnmObjTexPatRes);

        AnmObjTexPat::AnmObjTexPat(MEMAllocator *allocator, u16 *bindBuffer, int numBinds)
            : AnmObj(allocator, NULL), mBinds(bindBuffer), mNumBinds(numBinds)
        {
            Release();
        }

        bool AnmObjTexPat::TestDefined(u32 idx) const
        {
            return (mBinds[idx] & 0x8000) == 0;
        }

        bool AnmObjTexPat::TestExistence(u32 idx) const
        {
            return (mBinds[idx] & 0xC000) == 0;
        }

        void AnmObjTexPat::Release()
        {
            for (int i = 0; i < mNumBinds; i++)
            {
                mBinds[i] = 0x8000;
            }

            SetAnmFlag(ANMFLAG_ISBOUND, false);
        }

        AnmObjTexPatRes * AnmObjTexPat::Attach(int idx, AnmObjTexPatRes *pRes)
        {
            return NULL;
        }

        AnmObjTexPatRes * AnmObjTexPat::Detach(int idx)
        {
            return NULL;
        }

        void AnmObjTexPat::DetachAll()
        {
        }

        namespace
        {
            void UNUSED_FUNC_ORDER_ANMVIS_0(AnmObjTexPat *texPat)
            {
                texPat->~AnmObjTexPat();
            }
        }

        AnmObjTexPatNode::~AnmObjTexPatNode()
        {
            DetachAll();
        }

        AnmObjTexPatRes * AnmObjTexPatNode::Attach(int idx, AnmObjTexPatRes *pRes)
        {
            AnmObjTexPatRes *backup = Detach(idx);

            bool isAttach = false;
            for (u32 i = 0; i < mNumBinds; i++)
            {
                if (pRes->TestDefined(i))
                {
                    isAttach = true;
                    mBinds[i] = 0x0000;
                }
            }

            if (isAttach) SetAnmFlag(ANMFLAG_ISBOUND, true);

            SetResource(idx, pRes);
            pRes->G3dProc(G3DPROC_ATTACH_PARENT, 0, this);

            return backup;
        }

        AnmObjTexPatRes * AnmObjTexPatNode::Detach(int idx)
        {
            AnmObjTexPatRes *backup = mResources[idx];
            if (backup != NULL)
            {
                backup->G3dProc(G3DPROC_DETACH_PARENT, 0, this);
                mResources[idx] = NULL;

                bool b = false;
                for (u32 i = 0; i < mNumBinds; i++)
                {
                    u16 bind = 0x8000;
                    for (int j = 0; j < mNumResources; j++)
                    {
                        AnmObjTexPatRes *res = GetResource(j);
                        if (res != NULL && res->TestDefined(i))
                        {
                            b = true;
                            bind = 0x0000;
                            break;
                        }
                    }

                    mBinds[i] = bind;
                }

                if (!b) SetAnmFlag(ANMFLAG_ISBOUND, false);
            }

            return backup;
        }

        void AnmObjTexPatNode::DetachAll()
        {
            for (int i = 0; i < mNumResources; i++)
            {
                Detach(i);
            }
        }

        void AnmObjTexPatNode::UpdateFrame()
        {
            for (int i = 0; i < mNumResources; i++)
            {
                if (mResources[i] != NULL) mResources[i]->UpdateFrame();
            }
        }

        void AnmObjTexPatNode::SetFrame(f32 frame)
        {
            for (int i = 0; i < mNumResources; i++)
            {
                if (mResources[i] != NULL) mResources[i]->SetFrame(frame);
            }
        }

        f32 AnmObjTexPatNode::GetFrame() const
        {
            for (int i = 0; i < mNumResources; i++)
            {
                if (mResources[i] != NULL) return mResources[i]->GetFrame();
            }

            return 0.0f;
        }

        void AnmObjTexPatNode::SetUpdateRate(f32 rate)
        {
            for (int i = 0; i < mNumResources; i++)
            {
                if (mResources[i] != NULL) mResources[i]->SetUpdateRate(rate);
            }
        }

        f32 AnmObjTexPatNode::GetUpdateRate() const
        {
            for (int i = 0; i < mNumResources; i++)
            {
                if (mResources[i] != NULL) return mResources[i]->GetUpdateRate();
            }

            return 1.0f;
        }

        bool AnmObjTexPatNode::Bind(ResMdl mdl)
        {
            bool success = false;
            for (int i = 0; i < mNumResources; i++)
            {
                AnmObjTexPatRes *res = mResources[i];
                if (res != NULL)
                {
                    bool childSuccess = res->Bind(mdl);
                    success = (success || childSuccess);

                    for (u32 j = 0; j < mNumBinds; j++)
                    {
                        if (res->TestDefined(j)) mBinds[j] = 0x0000;
                    }
                }
            }

            SetAnmFlag(ANMFLAG_ISBOUND, true);
            return success;
        }

        void AnmObjTexPatNode::Release()
        {
            for (int i = 0; i < mNumResources; i++)
            {
                if (mResources[i] != NULL) mResources[i]->Release();
            }

            AnmObjTexPat::Release();
        }

        void AnmObjTexPatNode::G3dProc(u32 task, u32 taskArg1, void *taskArg2)
        {
            switch(task)
            {
                case G3DPROC_CHILD_DETACHED:
                    for (int i = 0; i < mNumResources; i++)
                    {
                        AnmObjTexPatRes *res = (AnmObjTexPatRes *)taskArg2;
                        if (mResources[i] == res)
                        {
                            Detach(i);
                            return;
                        }
                    }
                    break;
                case G3DPROC_DETACH_PARENT:
                    SetParent(NULL);
                    break;
                case G3DPROC_ATTACH_PARENT:
                    SetParent((G3dObj *)taskArg2);
                    break;
            }
        }

        // AnmObjTexPatOverride * AnmObjTexPatOverride::Construct(MEMAllocator *allocator, u32 *pSize, ResMdl mdl, int r6)
        // {
        // }

        TexPatAnmResult * AnmObjTexPatOverride::GetResult(TexPatAnmResult *result, u32 matId)
        {
            for (int i = mNumResources - 1; i >= 0; i--)
            {
                if (mResources[i] != NULL && mResources[i]->TestExistence(matId))
                {
                    TexPatAnmResult *childResult = mResources[i]->GetResult(result, matId);
                    if (childResult->mTexFlags != 0 || childResult->mPlttFlags != 0)
                        return childResult;
                }
            }

            result->mTexFlags = 0;
            result->mPlttFlags = 0;
            return result;
        }

        // AnmObjTexPatRes * AnmObjTexPatRes::Construct(MEMAllocator *, u32 *, ResAnmTexPat, ResMdl, bool)
        // {
        // }

        AnmObjTexPatRes::AnmObjTexPatRes(MEMAllocator *allocator, ResAnmTexPat texPat,
            u16 *bindBuffer, int numBinds, TexPatAnmResult *resultCache)
            : AnmObjTexPat(allocator, bindBuffer, numBinds),
            FrameCtrl(0.0f, texPat.GetNumFrame(), GetAnmPlayPolicy(texPat.GetAnmPolicy())),
            mAnmTexPat(texPat)
        {
            if (mResultCache != NULL) UpdateCache();
        }

        void AnmObjTexPatRes::SetFrame(f32 frame)
        {
            SetFrm(frame);
            if (mResultCache != NULL) UpdateCache();
        }
        
        f32 AnmObjTexPatRes::GetFrame() const
        {
            return GetFrm();
        }

        void AnmObjTexPatRes::SetUpdateRate(f32 rate)
        {
            SetRate(rate);
        }

        f32 AnmObjTexPatRes::GetUpdateRate() const
        {
            return GetRate();
        }

        void AnmObjTexPatRes::UpdateFrame()
        {
            UpdateFrm();
            if (mResultCache != NULL) UpdateCache();
        }

        bool AnmObjTexPatRes::Bind(ResMdl mdl)
        {
            int numMat = mAnmTexPat.GetNumMaterial();
            bool success = false;
            for (u16 i = 0; i < numMat; i++)
            {
                const ResAnmTexPatMatData *matData = mAnmTexPat.GetMatAnm(i);
                ResName name((char *)ut::AddOffsetToPtr(matData, matData->WORD_0x0) - 4);
                ResMat mat(mdl.GetResMat(name));
                if (mat.IsValid())
                {

                    mBinds[mat.GetID()] = i;
                    success = true;
                }
            }

            SetAnmFlag(ANMFLAG_ISBOUND, true);
            return success;
        }

        // NONMATCHING
        TexPatAnmResult * AnmObjTexPatRes::GetResult(TexPatAnmResult *result, u32 matId)
        {
            if (mBinds[matId] & 0x8000)
            {
                result->mTexFlags = 0;
                result->mPlttFlags = 0;
                return result;
            }
            
            if (mResultCache != NULL)
            {
                return &mResultCache[matId];
            }

            mAnmTexPat.GetAnmResult(result, mBinds[matId], GetFrm());
            return result;
        }

        void AnmObjTexPatRes::UpdateCache()
        {
            f32 frame = GetFrm();
            for (int i = 0; i < mNumBinds; i++)
            {
                u16 bind = mBinds[i];
                if ((bind & 0x8000) == 0)
                {
                    u32 r5 = bind & 0x3FFF;
                    mAnmTexPat.GetAnmResult(&mResultCache[r5], r5, frame);
                }
            }
        }

        void AnmObjTexPatRes::G3dProc(u32 task, u32 taskArg1, void *taskArg2)
        {
            switch(task)
            {
                case G3DPROC_UPDATEFRAME:
                    UpdateFrame();
                    break;
                case G3DPROC_DETACH_PARENT:
                    SetParent(NULL);
                    break;
                case G3DPROC_ATTACH_PARENT:
                    SetParent((G3dObj *)taskArg2);
                    break;
            }
        }

        // NONMATCHING
        void ApplyTexPatAnmResult(ResTexObj texObj, ResTlutObj tlutObj, const TexPatAnmResult *result)
        {
            int i;
            u32 texFlags = result->mTexFlags;
            for (i = 0; texFlags != 0; texFlags >>= 1, i++)
            {
                if (texFlags & 1)
                {
                    ResTex tex = result->mTexs[i];
                    GXTexObj *gxTex = texObj.GetTexObj((GXTexMapID)i);

                    int min_filt, mag_filt;
                    f32 minLod, maxLod, lodBias;
                    u8 biasClamp, edgeLod, mipmap;
                    UNKWORD anisotropy;
                    void *image;
                    u16 width, height;
                    GXTexFmt fmt;
                    GXCITexFmt ciFmt;

                    GXGetTexObjLODAll(gxTex, &min_filt, &mag_filt, &minLod, &maxLod,
                        &lodBias, &biasClamp, &edgeLod, &anisotropy);
                    
                    UNKWORD wrapS = GXGetTexObjWrapS(gxTex);
                    UNKWORD wrapT = GXGetTexObjWrapT(gxTex);

                    if (tex.IsCIFmt())
                    {
                        tex.GetTexObjCIParam(&image, &width, &height, &ciFmt, &minLod, &maxLod, &mipmap);
                        GXInitTexObjCI(gxTex, image, width, height, ciFmt, wrapS, wrapT, mipmap, (GXTlut)i);
                    }
                    else
                    {
                        tex.GetTexObjParam(&image, &width, &height, &fmt, &minLod, &maxLod, &mipmap);
                        GXInitTexObj(gxTex, image, width, height, fmt, wrapS, wrapT, mipmap);
                    }

                    GXInitTexObjLOD(gxTex, min_filt, mag_filt, minLod, maxLod,
                        lodBias, biasClamp, edgeLod, anisotropy);
                }
            }

            u32 plttFlags = result->mPlttFlags;
            for (i = 0; plttFlags != 0; plttFlags >>= 1, i++)
            {
                if (plttFlags & 1)
                {
                    ResPltt pltt = result->mPltts[i];
                    UNKTYPE *plttData = pltt.GetPlttData();
                    UNKWORD format = pltt.GetFmt();
                    u16 numEntries = pltt.GetNumEntries();
                    GXTlutObj* gxTlut = tlutObj.GetTlut((GXTlut)i);
                    GXInitTlutObj(gxTlut, plttData, format, numEntries);
                }
            }
        }

        namespace
        {
            void UNUSED_FUNC_ORDER_ANMVIS_1(AnmObjTexPat *texPat)
            {
                AnmObjTexPatRes *visRes = (AnmObjTexPatRes *)texPat;
                AnmObjTexPatOverride *visOr = (AnmObjTexPatOverride *)texPat;
                AnmObjTexPatNode *visNode = (AnmObjTexPatNode *)texPat;

                (void)visRes->IsDerivedFrom(AnmObjTexPatRes::GetTypeObjStatic());
                (void)texPat->IsDerivedFrom(AnmObjTexPat::GetTypeObjStatic());
                (void)visRes->GetTypeName();
                (void)visRes->GetTypeObj();
                visRes->~AnmObjTexPatRes();
                (void)visOr->IsDerivedFrom(AnmObjTexPatOverride::GetTypeObjStatic());
                (void)visNode->IsDerivedFrom(AnmObjTexPatNode::GetTypeObjStatic());
                (void)visOr->GetTypeName();
                (void)visOr->GetTypeObj();
                visOr->~AnmObjTexPatOverride();
                (void)visNode->GetTypeName();
                (void)visNode->GetTypeObj();
                (void)texPat->GetTypeName();
                (void)texPat->GetTypeObj();
            }
        }
    }
}
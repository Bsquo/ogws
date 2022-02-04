#pragma ipa file
#include "g3d_anmtexpat.h"
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
        //     if (!mdl.mMdl.IsValid()) return NULL;

        //     u32 numEntries = mdl.GetResMatNumEntries();
        //     u32 r4 = numEntries * 2;
        //     u32 size = r4 + sizeof(AnmObjTexPatOverride);

        //     if (pSize != NULL) *pSize = size;
        //     if (allocator == NULL) return NULL;

        //     u8 *mem = (u8 *)Alloc(allocator, size);
        //     if (mem == NULL) return NULL;

        //     u16 *bindBuffer = (u16 *)(mem + sizeof(AnmObjTexPatOverride));
        //     return new (mem) AnmObjTexPatOverride(allocator, bindBuffer, numEntries);
        // }

        // bool AnmObjTexPatOverride::GetResult(u32 idx)
        // {
        //     for (int i = 0; i < mNumResources; i++)
        //     {
        //         if (mResources[i] != NULL && mResources[i]->TestExistence(idx))
        //             if (!mResources[i]->GetResult(idx))
        //                 return false;
        //     }

        //     return true;
        // }

        // // Nonmatching
        // AnmObjTexPatRes * AnmObjTexPatRes::Construct(MEMAllocator *allocator, u32 *pSize, ResAnmVis texPat, ResMdl mdl)
        // {
        //     if (!texPat.mAnmVis.IsValid() || !mdl.mMdl.IsValid()) return NULL;
            
        //     u32 numEntries = mdl.GetResNodeNumEntries();
        //     u32 r4 = numEntries * 2;
        //     u32 size = r4 + sizeof(AnmObjTexPatRes);

        //     if (pSize != NULL) *pSize = size;
        //     if (allocator == NULL) return NULL;

        //     u8 *mem = (u8 *)Alloc(allocator, size);
        //     if (mem == NULL) return NULL;

        //     u16 *bindBuffer = (u16 *)(mem + sizeof(AnmObjTexPatRes));
        //     return new (mem) AnmObjTexPatRes(allocator, texPat, bindBuffer, numEntries);
        // }

        // AnmObjTexPatRes::AnmObjTexPatRes(MEMAllocator *allocator, ResAnmVis texPat, u16 *bindBuffer, int numBinds)
        //     : AnmObjTexPat(allocator, bindBuffer, numBinds),
        //     FrameCtrl(0.0f, texPat.GetNumFrame(), GetAnmPlayPolicy(texPat.GetAnmPolicy())),
        //     mResAnmVis(texPat)
        // {
        // }

        // void AnmObjTexPatRes::SetFrame(f32 frame)
        // {
        //     SetFrm(frame);
        //     G3dProc(G3DPROC_UPDATEFRAME, 0, NULL);
        // }
        
        // f32 AnmObjTexPatRes::GetFrame() const
        // {
        //     return GetFrm();
        // }

        // void AnmObjTexPatRes::SetUpdateRate(f32 rate)
        // {
        //     SetRate(rate);
        // }

        // f32 AnmObjTexPatRes::GetUpdateRate() const
        // {
        //     return GetRate();
        // }

        // void AnmObjTexPatRes::UpdateFrame()
        // {
        //     UpdateFrm();
        //     G3dProc(G3DPROC_UPDATEFRAME, 0, NULL);
        // }

        // bool AnmObjTexPatRes::Bind(ResMdl mdl)
        // {
        //     int numNode = mResAnmVis.GetNumNode();
        //     bool success = false;
        //     for (u16 i = 0; i < numNode; i++)
        //     {
        //         const ResAnmVisNodeData * nodeAnm = mResAnmVis.GetNodeAnm(i);
        //         ResName name((char *)ut::AddOffsetToPtr(nodeAnm, nodeAnm->WORD_0x0) - 4);
        //         ResNode node(mdl.GetResNode(name));
        //         if (node.IsValid())
        //         {

        //             mBinds[node.GetID()] = i;
        //             success = true;
        //         }
        //     }

        //     SetAnmFlag(ANMFLAG_ISBOUND, true);
        //     return success;
        // }

        // bool AnmObjTexPatRes::GetResult(u32 idx)
        // {
        //     u16 bind = mBinds[idx];
        //     if (bind & 0x4000 || bind & 0x8000) return true;

        //     return mResAnmVis.GetAnmResult(bind, GetFrm());
        // }

        // void AnmObjTexPatRes::G3dProc(u32 task, u32 taskArg1, void *taskArg2)
        // {

        // }

        // void ApplyTexPatAnmResult(ResTexObj tex, ResTlutObj tlut, const TexPatAnmResult *result)
        // {
        // }

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
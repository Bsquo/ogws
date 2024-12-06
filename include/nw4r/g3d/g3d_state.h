#ifndef NW4R_G3D_STATE_H
#define NW4R_G3D_STATE_H
#include "types_nw4r.h"

#include <revolution/GX.h>

namespace nw4r {
namespace g3d {
namespace G3DState {

struct IndMtxOp {};

enum InvalidateFlag {
    INVALIDATE_TEX = (1 << 0),
    INVALIDATE_TLUT = (1 << 1),
    INVALIDATE_TEV = (1 << 2),
    INVALIDATE_GENMODE = (1 << 3),
    INVALIDATE_SHP = (1 << 4),
    INVALIDATE_CURRMTX = (1 << 5),
    INVALIDATE_TEXMTX = (1 << 6),
    INVALIDATE_MISC = (1 << 7),
    INVALIDATE_FOG = (1 << 8),
    INVALIDATE_LIGHT = (1 << 9),
    INVALIDATE_POSMTX = (1 << 10),

    INVALIDATE_ALL = INVALIDATE_TEX | INVALIDATE_TLUT | INVALIDATE_TEV |
                     INVALIDATE_GENMODE | INVALIDATE_SHP | INVALIDATE_CURRMTX |
                     INVALIDATE_TEXMTX | INVALIDATE_MISC | INVALIDATE_FOG |
                     INVALIDATE_LIGHT | INVALIDATE_POSMTX
};

void SetViewPosNrmMtxArray(const math::MTX34*, const math::MTX33*,
                           const math::MTX34*);

void SetRenderModeObj(const GXRenderModeObj&);
GXRenderModeObj* GetRenderModeObj();
void Invalidate(u32 flag = INVALIDATE_ALL);

void LoadFog(int idx);
void LoadLightSet(int idx, u32* pDiffMask, u32* pSpecMask, AmbLightObj* pAmb);

} // namespace G3DState
} // namespace g3d
} // namespace nw4r

#endif
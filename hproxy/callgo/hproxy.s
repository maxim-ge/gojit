#include "funcdata.h"
#include "textflag.h"

TEXT ·callgofn(SB),$16-24
	NO_LOCAL_POINTERS

        MOVQ aa1+8(FP), AX
        MOVQ AX, +0(SP)

        MOVQ aa2+16(FP), AX
        MOVQ AX, +8(SP)

        MOVQ pfn+0(FP), AX
	CALL AX

        RET

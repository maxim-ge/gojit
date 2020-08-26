#include "funcdata.h"
#include "textflag.h"

TEXT ·callgofn(SB),$128-24
	NO_LOCAL_POINTERS

        MOVQ aa1+8(FP), AX
        MOVQ +0(SP), AX

        MOVQ aa2+16(FP), AX
        MOVQ +8(SP), AX

        MOVQ pfn+0(FP), AX
	CALL AX

        RET

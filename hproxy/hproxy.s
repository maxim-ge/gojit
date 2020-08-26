#include "funcdata.h"
#include "textflag.h"

TEXT ·hproxy(SB),NOSPLIT,$0
;        LEAQ argframe+0(FP), DI
        MOVQ 8(DX), AX
        JMP AX
        RET

TEXT ·callgofunc(SB),NOSPLIT,$0
        MOVQ ptr+0(FP), AX
	CALL AX
        RET

TEXT ·callgofunc2(SB),NOSPLIT|NOFRAME,$0
        MOVQ ptr+0(FP), AX
	CALL AX
        RET

TEXT ·callgofunc3(SB),NOSPLIT,$0x200-0x100
	NO_LOCAL_POINTERS
        MOVQ ptr+0(FP), AX
	CALL AX
        RET

TEXT ·hproxy2(SB),NOSPLIT,$0
        RET

TEXT ·get_runtime_morestack_noctxt(SB),0,$0-8
        LEAQ runtime·morestack_noctxt(SB), AX
        MOVQ AX, rv+0(FP)
        RET

TEXT ·get_runtime_cgocall(SB),0,$0-8
        LEAQ runtime·cgocall(SB), AX
        MOVQ AX, rv+0(FP)
        RET

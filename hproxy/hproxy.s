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
	SUBQ 0x8, SP
	CALL AX
	ADDQ 0x8, SP
        RET

TEXT ·callgofunc3(SB), $0
	SUBQ 0x8, SP
	MOVQ BP, (SP)
	LEAQ (SP), BP
	MOVQ 0x10(SP),DX
	MOVQ (DX),AX

	CALL AX

	MOVQ (SP), BP
	ADDQ 0x8, SP
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

#include "funcdata.h"
#include "textflag.h"

TEXT ·hproxy(SB),NOSPLIT,$0
;        LEAQ argframe+0(FP), DI
        MOVQ 8(DX), AX
        JMP AX


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

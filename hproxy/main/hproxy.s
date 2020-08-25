#include "funcdata.h"
#include "textflag.h"

TEXT ·hproxy(SB),NOSPLIT,$0
;        LEAQ argframe+0(FP), DI
        MOVQ 8(DX), AX
        JMP AX


TEXT ·hproxy2(SB),NOSPLIT,$0
        RET

// cgocall(*args) with jitcode in the context blob
//   -> runtime·cgocall(jitcode, frame)
TEXT ·cgocall(SB),NOSPLIT,$16
        NO_LOCAL_POINTERS
        LEAQ argframe+0(FP), AX
        MOVQ AX, 8(SP)
        MOVQ 8(DX), AX
        MOVQ AX, 0(SP)
        CALL runtime·cgocall(SB)
        RET

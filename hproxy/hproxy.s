#include "funcdata.h"
#include "textflag.h"

TEXT ·hproxy(SB),NOSPLIT,$0
;        LEAQ argframe+0(FP), DI
        MOVQ 8(DX), AX
        JMP AX


TEXT ·hproxy2(SB),NOSPLIT,$0
        RET

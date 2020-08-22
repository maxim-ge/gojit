package hproxy

import (
	"testing"

	"github.com/nelhage/gojit/amd64"
	"github.com/stretchr/testify/require"
)

func Test_gojit_proxy_reti32(t *testing.T) {
	asm := newAsmGoABI()

	var jitf func() int32
	// return 10
	{
		asm.Mov(amd64.Imm{Val: 10}, amd64.Indirect{Base: amd64.Rsp, Offset: 0x8, Bits: 32})
		asm.Ret()
		buildToInternal(asm.Buf, &jitf, HBuild)
		asm.BuildTo(&jitf)
	}

	require.Equal(t, int32(10), jitf())
}

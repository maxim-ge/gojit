package hproxy

import (
	"fmt"
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
	}

	require.Equal(t, int32(10), jitf())
}

func sgofn() {
	fmt.Println("qqqq")
	panic(1)
}

func Test_gojit_proxy_panic(t *testing.T) {
	asm := newAsmGoABI()

	fmt.Printf("ADDR= %x \n", addrOfFunc(sgofn))

	var jitf func()
	// call gofn
	{
		// asm.Sub(amd64.Imm{Val: 0x16}, amd64.Rsp)
		// asm.MovAbs(uint64(addrOfFunc(hproxy2)), amd64.Rax)
		// asm.Mov(amd64.Rax, amd64.Indirect{Base: amd64.Rsp, Offset: 0, Bits: 64})
		// asm.MovAbs(uint64(addrOfFunc(gofn)), amd64.Rax)
		// asm.JmpRax()
		// asm.Add(amd64.Imm{Val: 0x16}, amd64.Rsp)

		asm.MovAbs(uint64(addrOfFunc(sgofn)), amd64.Rax)
		asm.JmpRax()
		// asm.CallFuncGo(sgofn)
		asm.Ret()

		asm.Ret()
		buildToInternal(asm.Buf, &jitf, HBuild)
	}

	jitf()
}

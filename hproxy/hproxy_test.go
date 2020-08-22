package hproxy

import (
	"fmt"
	"reflect"
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

//go:noinline
func gofnpanic() {
	fmt.Println("*** sgofnpanic")
	panic(1)
}

func sgofn() {
	fmt.Println("*** sgofn")
}

func Test_gojit_proxy_panic(t *testing.T) {
	asm := newAsmGoABI()

	addr := addrOfFunc(gofnpanic)
	addr2 := reflect.ValueOf(gofnpanic).Pointer()

	fmt.Printf("ADDR= %v, %v, %v \n", addr, addr2, uint64(reflect.ValueOf(gofnpanic).Pointer()))
	fmt.Printf("ADDR= %x, %x, %x \n", addr, addr2, uint64(reflect.ValueOf(gofnpanic).Pointer()))

	var jitf func()
	// call gofn
	{
		// asm.Sub(amd64.Imm{Val: 0x16}, amd64.Rsp)
		// asm.MovAbs(uint64(addrOfFunc(hproxy2)), amd64.Rax)
		// asm.Mov(amd64.Rax, amd64.Indirect{Base: amd64.Rsp, Offset: 0, Bits: 64})
		// asm.MovAbs(uint64(addrOfFunc(gofn)), amd64.Rax)
		// asm.JmpRax()
		// asm.Add(amd64.Imm{Val: 0x16}, amd64.Rsp)

		//asm.MovAbs(uint64(addr), amd64.Rax)
		asm.MovAbs(uint64(reflect.ValueOf(gofnpanic).Pointer()), amd64.Rax)
		asm.JmpRax()
		// asm.CallFuncGo(gofnpanic)

		asm.Ret()
		asm.BuildTo(&jitf)
		// buildToInternal(asm.Buf, &jitf, HBuild)
	}

	jitf()
}

func Test_gojit_proxy_call(t *testing.T) {
	asm := newAsmGoABI()

	f := reflect.ValueOf(sgofn).Pointer()
	hproxy2 := reflect.ValueOf(hproxy2).Pointer()

	fmt.Printf("ADDR= %x, %x\n", f, hproxy2)

	var jitf func()
	// call gofn
	{
		asm.Sub(amd64.Imm{Val: 0x8}, amd64.Rsp)

		asm.MovAbs(uint64(hproxy2), amd64.Rax)
		asm.Mov(amd64.Rax, amd64.Indirect{Base: amd64.Rsp, Offset: 0, Bits: 64})
		// asm.MovAbs(uint64(f), amd64.Rax)
		// asm.Mov(amd64.Rax, amd64.Indirect{Base: amd64.Rsp, Offset: 8, Bits: 64})

		asm.MovAbs(uint64(f), amd64.Rax)
		asm.JmpRax()
		asm.Ret()
		asm.BuildTo(&jitf)
		// buildToInternal(asm.Buf, &jitf, HBuild)
	}

	jitf()
}

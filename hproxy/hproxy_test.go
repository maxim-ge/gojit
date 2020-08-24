package hproxy

import (
	"fmt"
	"reflect"
	"testing"
	"unsafe"

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
	var jitf func()
	// call gofn
	{
		asm.MovAbs(uint64(reflect.ValueOf(gofnpanic).Pointer()), amd64.Rax)
		asm.JmpRax()
		asm.BuildTo(&jitf)
	}

	jitf()
}

func Test_gojit_proxy_call(t *testing.T) {
	asm := newAsmGoABI()

	f := reflect.ValueOf(sgofn).Pointer()
	addrHproxy2 := reflect.ValueOf(hproxy2).Pointer()
	addrJitf := *(*uintptr)(unsafe.Pointer(&asm.Buf))

	fmt.Printf("ADDR= %x, %x\n", addrHproxy2, addrJitf)

	var offAddrJitfCalc int
	var offAfterJmp int

	var jitf func()
	// call gofn
	{
		/*
			sp    hproxy2
			sp+8  jitf
		*/

		asm.Sub(amd64.Imm{Val: 0x10}, amd64.Rsp)

		// *sp = addrHproxy2
		asm.MovAbs(uint64(addrHproxy2), amd64.Rax)
		asm.Mov(amd64.Rax, amd64.Indirect{Base: amd64.Rsp, Offset: 0, Bits: 64})

		// *sp+8 = *addrJitf + offsAfterJmp
		offAddrJitfCalc = asm.Off
		// 48BB<data>
		asm.MovAbs(uint64(addrJitf), amd64.Rax)
		asm.Mov(amd64.Rax, amd64.Indirect{Base: amd64.Rsp, Offset: 8, Bits: 64})

		asm.MovAbs(uint64(f), amd64.Rax)
		asm.JmpRax()
		offAfterJmp = asm.Off
		asm.Add(amd64.Imm{Val: 0x10}, amd64.Rsp)
		asm.Ret()

		// Correct return address
		addrAfterJmp := addrJitf + uintptr(offAfterJmp)
		asm.Int64(offAddrJitfCalc+2, uint64(addrAfterJmp))

		asm.BuildTo(&jitf)

	}

	jitf()
}

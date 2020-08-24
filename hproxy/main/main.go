package main

import (
	"fmt"
	"reflect"
	"unsafe"
	"github.com/nelhage/gojit/amd64"
	"github.com/nelhage/gojit"
)

func main() {
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
		asm.Ret()

		// Correct return address
		addrAfterJmp := addrJitf + uintptr(offAfterJmp)
		asm.Int64(offAddrJitfCalc+2, uint64(addrAfterJmp))

		asm.BuildTo(&jitf)

	}

	jitf()
}

func hproxy()
func hproxy2()

func sgofn() {
	fmt.Println("*** sgofn")
}

func newAsmGoABI() *amd64.Assembler {
	buf, e := gojit.Alloc(gojit.PageSize)
	if e != nil {
		panic(e)
	}
	return &amd64.Assembler{Buf: buf, Off: 0, ABI: amd64.GoABI}
}

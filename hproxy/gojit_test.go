package hproxy

import (
	"fmt"
	"testing"

	"github.com/nelhage/gojit"
	"github.com/nelhage/gojit/amd64"

	"github.com/stretchr/testify/require"
)

type i32sub func(i, j int32) int32

func Test_gojit_goabi_panicInCall(t *testing.T) {

	defer func() {
		if r := recover(); r != nil {
			fmt.Println("Recovered in f", r)
		}
	}()

	i32sub := func(i int32, j int32) int32 {
		panic("aaaaa!")
		// return i - j
	}
	jitf := genCalli32subNoBp(i32sub)

	require.Equal(t, int32(1), jitf(4, 3))
}

func Test_gojit_goabi_calli32sub(t *testing.T) {

	i32sub := func(i int32, j int32) int32 {
		return i - j
	}
	jitf := genCalli32sub(i32sub)

	require.Equal(t, int32(1), jitf(4, 3))
}

func Test_gojit_goabi_calli32subNoBp(t *testing.T) {

	i32sub := func(i int32, j int32) int32 {
		return i - j
	}
	jitf := genCalli32subNoBp(i32sub)

	require.Equal(t, int32(1), jitf(4, 3))
}

func Test_gojit_goabi_callgofn(t *testing.T) {

	asm := newAsmGoABI()
	var i int

	gofn := func() {
		i++
	}

	var jitf func()
	// call gofn
	{
		asm.CallFuncGo(gofn)
		asm.Ret()
		asm.BuildTo(&jitf)
	}

	jitf()
	jitf()
	require.Equal(t, 2, i)
}

func Test_gojit_goabi_subi32(t *testing.T) {
	asm := newAsmGoABI()

	var jitf func(from, val int32) int32
	// return from - val
	{
		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x8, Bits: 32}, amd64.Eax)
		asm.Sub(amd64.Indirect{Base: amd64.Rsp, Offset: 0xc, Bits: 32}, amd64.Eax)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x10, Bits: 32})
		asm.Ret()
		asm.BuildTo(&jitf)
	}

	require.Equal(t, int32(1), jitf(4, 3))
}

func genCalli32sub(f i32sub) i32sub {
	asm := newAsmGoABI()
	var jitf i32sub
	// return i + j
	{

		// ; sp = sp - 0x20 (32)
		// ; sp + 0x00 => is3sub.f1
		// ; sp + 0x04 => is3sub.f2
		// ; sp + 0x08 => res of is3sub(f1)
		// ; sp + 0x18 => rbp
		// ; sp + 0x20 => ret addr
		// ; sp + 0x28 => f1
		// ; sp + 0x2c => f2
		// ; sp + 0x30 => f3

		// Frame preparation
		asm.Sub(amd64.Imm{Val: 0x20}, amd64.Rsp)
		asm.Mov(amd64.Rbp, amd64.Indirect{Base: amd64.Rsp, Offset: 0x18, Bits: 64})
		asm.Lea(amd64.Indirect{Base: amd64.Rsp, Offset: 0x18, Bits: 64}, amd64.Rbp)

		// return i32sub(f1, f2)
		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x28, Bits: 32}, amd64.Eax)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x0, Bits: 32})
		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x2c, Bits: 32}, amd64.Eax)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x4, Bits: 32})
		asm.CallFuncGo(f)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x8, Bits: 32})
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x30, Bits: 32})

		// Restore stack and return
		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x18, Bits: 64}, amd64.Rbp)
		asm.Add(amd64.Imm{Val: 0x20}, amd64.Rsp)
		asm.Ret()
		asm.BuildTo(&jitf)
	}
	return jitf
}

func genCalli32subNoBp(f i32sub) i32sub {
	asm := newAsmGoABI()
	var jitf i32sub
	// return i + j
	{

		// ; sp = sp - 0x20 (32)
		// ; sp + 0x00 => is3sub.f1
		// ; sp + 0x04 => is3sub.f2
		// ; sp + 0x08 => res of is3sub(f1)
		// ; sp + 0x18 => rbp
		// ; sp + 0x20 => ret addr
		// ; sp + 0x28 => f1
		// ; sp + 0x2c => f2
		// ; sp + 0x30 => f3

		// Frame preparation
		asm.Sub(amd64.Imm{Val: 0x20}, amd64.Rsp)
		//		asm.Mov(amd64.Rbp, amd64.Indirect{Base: amd64.Rsp, Offset: 0x18, Bits: 64})
		//		asm.Lea(amd64.Indirect{Base: amd64.Rsp, Offset: 0x18, Bits: 64}, amd64.Rbp)

		// return i32sub(f1, f2)
		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x28, Bits: 32}, amd64.Eax)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x0, Bits: 32})
		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x2c, Bits: 32}, amd64.Eax)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x4, Bits: 32})
		asm.CallFuncGo(f)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x8, Bits: 32})
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x30, Bits: 32})

		// Restore stack and return
		//		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x18, Bits: 64}, amd64.Rbp)
		asm.Add(amd64.Imm{Val: 0x20}, amd64.Rsp)
		asm.Ret()
		asm.BuildTo(&jitf)
	}
	return jitf
}

func Benchmark_gojit_goabi_subi32(b *testing.B) {

	asm := newAsmGoABI()

	var jitf func(from, val int32) int32
	// return from - val
	{
		asm.Mov(amd64.Indirect{Base: amd64.Rsp, Offset: 0x8, Bits: 32}, amd64.Eax)
		asm.Sub(amd64.Indirect{Base: amd64.Rsp, Offset: 0xc, Bits: 32}, amd64.Eax)
		asm.Mov(amd64.Eax, amd64.Indirect{Base: amd64.Rsp, Offset: 0x10, Bits: 32})
		asm.Ret()
		asm.BuildTo(&jitf)
	}

	for i := 0; i < b.N; i++ {
		jitf(4, 3)
	}
}

func Test_gojit_goabi_reti32(t *testing.T) {
	asm := newAsmGoABI()

	var jitf func() int32
	// return 10
	{
		asm.Mov(amd64.Imm{Val: 10}, amd64.Indirect{Base: amd64.Rsp, Offset: 0x8, Bits: 32})
		asm.Ret()
		asm.BuildTo(&jitf)
	}

	require.Equal(t, int32(10), jitf())
}

func Test_gojit_cgoabi_Recursion(t *testing.T) {
	asm := newAsm(t)
	defer gojit.Release(asm.Buf)

	var jitf func(i int)
	gof := func(i int) {
		if i > 0 {
			jitf(i - 1)
		}
	}

	asm.Mov(amd64.Indirect{Base: amd64.Rdi, Offset: 0, Bits: 64}, amd64.Rax)
	asm.Push(amd64.Rax)
	asm.CallFunc(gof)
	asm.Pop(amd64.Rax)
	asm.Ret()

	asm.BuildTo(&jitf)

	jitf(1024)
}

func Test_gojit_cgoabi_Recursion_Panic(t *testing.T) {
	asm := newAsm(t)
	defer gojit.Release(asm.Buf)

	var jitf func(i int)
	gof := func(i int) {
		if i > 0 {
			panic(i)
		}
	}

	asm.Mov(amd64.Indirect{Base: amd64.Rdi, Offset: 0, Bits: 64}, amd64.Rax)
	asm.Push(amd64.Rax)
	asm.CallFunc(gof)
	asm.Pop(amd64.Rax)
	asm.Ret()

	asm.BuildTo(&jitf)

	jitf(1024)
	// require.Panics(t, func() { jitf(1024) })
}

func newAsm(t testing.TB) *amd64.Assembler {
	buf, e := gojit.Alloc(gojit.PageSize)
	if e != nil {
		t.Fatal("alloc: ", e.Error())
	}
	return &amd64.Assembler{Buf: buf, Off: 0, ABI: amd64.CgoABI}
}

func newAsmGoABI() *amd64.Assembler {
	buf, e := gojit.Alloc(gojit.PageSize)
	if e != nil {
		panic(e)
	}
	return &amd64.Assembler{Buf: buf, Off: 0, ABI: amd64.GoABI}
}

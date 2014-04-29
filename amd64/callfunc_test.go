package amd64

import (
	"github.com/nelhage/gojit"
	"runtime"
	"testing"
)

func TestCallFunc(t *testing.T) {
	asm := newAsm(t)
	defer gojit.Release(asm.Buf)

	called := false

	asm.CallFunc(func() { called = true })
	asm.Ret()

	gojit.Build(asm.Buf)()

	if !called {
		t.Error("CallFunc did not call the function")
	}
}

func TestRecursion(t *testing.T) {
	asm := newAsm(t)
	defer gojit.Release(asm.Buf)

	var jitf func(i int)
	gof := func(i int) {
		if i > 0 {
			jitf(i - 1)
		}
	}

	asm.Mov(Indirect{Rdi, 0, 64}, Rax)
	asm.Push(Rax)
	asm.CallFunc(gof)
	asm.Pop(Rax)
	asm.Ret()

	gojit.BuildTo(asm.Buf, &jitf)

	jitf(1024)
}

func TestGCInCallback(t *testing.T) {
	asm := newAsm(t)
	defer gojit.Release(asm.Buf)

	gof := func(i int) {
		runtime.GC()
	}
	var jitf func()

	asm.CallFunc(gof)
	asm.Ret()

	gojit.BuildTo(asm.Buf, &jitf)

	jitf()
}

func BenchmarkGoCall(b *testing.B) {
	asm := newAsm(b)
	defer gojit.Release(asm.Buf)

	f := func() {}
	asm.CallFunc(f)
	asm.Ret()

	jit := gojit.Build(asm.Buf)

	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		jit()
	}

}
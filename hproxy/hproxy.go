package hproxy

import (
	"reflect"
	"unsafe"

	"github.com/nelhage/gojit"
)

func hproxy()
func hproxy2()

func buildToInternal(b []byte, out interface{}, build func([]byte) func()) {
	v := reflect.ValueOf(out)
	if v.Type().Kind() != reflect.Ptr {
		panic("BuildTo: must pass a pointer")
	}
	if v.Elem().Type().Kind() != reflect.Func {
		panic("BuildTo: must pass a pointer to func")
	}

	f := build(b)

	ival := *(*struct {
		typ uintptr
		val uintptr
	})(unsafe.Pointer(&out))

	// Since we know that out has concrete type of *func(..) ...,
	// we know it fits into a word, and thus `val' is just the
	// pointer itself (http://research.swtch.com/interfaces)

	*(*func())(unsafe.Pointer(ival.val)) = f
}

// HBuild returns a nullary golang function that will result in jumping
// into the specified byte slice. The slice should in most cases be a
// slice returned by Alloc, although you could also use syscall.Mmap
// or syscall.Mprotect directly.
func HBuild(b []byte) func() {
	dummy := hproxy
	fn := &struct {
		trampoline uintptr
		jitcode    uintptr
	}{**(**uintptr)(unsafe.Pointer(&dummy)), gojit.Addr(b)}

	return *(*func())(unsafe.Pointer(&fn))
}

func addrOfFunc(f interface{}) uintptr {
	if reflect.TypeOf(f).Kind() != reflect.Func {
		panic("CallFunc: Can't call non-func")
	}
	ival := *(*struct {
		typ uintptr
		fun uintptr
	})(unsafe.Pointer(&f))
	return ival.fun
}

// https://www.felixcloutier.com/x86/jmp

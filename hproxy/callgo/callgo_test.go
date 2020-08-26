package main

import (
	"fmt"
	"testing"
	"reflect"
)

func callgofn(ptr uintptr, aa1 int64, aa2 int64)

// go:noinline
func fn(a1 int64, a2 int64){
	fmt.Println("a1=", a1, "a2=", a2)
}

// go:noinline
func pan(a1 int64, a2 int64){
	panic(1)
	fmt.Println("a1=", a1, "a2=", a2)
}

func Test_callgofn_fn(t *testing.T){
	pfn := uintptr(reflect.ValueOf(fn).Pointer())
	callgofn(pfn, 10, 20)
}

func Test_callgofn_pan(t *testing.T){
	pfn := uintptr(reflect.ValueOf(pan).Pointer())
	callgofn(pfn, 10, 20)
}

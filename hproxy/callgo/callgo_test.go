package main

import (
	"fmt"
	"testing"
	"reflect"
)

func callgofn(ptr uintptr, aa1 int64, aa2 int64)

// go:noinline
func gofn(a1 int64, a2 int64){
	fmt.Println("a1=", a1, "a2=", a2)
}

func Test_callgofn(t *testing.T){
	pfn := uintptr(reflect.ValueOf(gofn).Pointer())
	callgofn(pfn, 10, 20)
}

func Test_gofn(t *testing.T){
	gofn(1, 2)
}

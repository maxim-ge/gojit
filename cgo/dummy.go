package cgo

// int dd()
// {
// }
import "C"

//go:noinline
func DummyF() int{
	return int(C.dd())
}

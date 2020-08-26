package hproxy

import "fmt"

//go:noinline
func hargs(args [1000]int){
	fmt.Println(args)	
}

//go:noinline
func callhargs(a int, b int){
	var args [1000]int
	args[0] = a
	args[1] = b
	hargs(args)
}
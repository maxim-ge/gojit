#gdb -ex "b hproxy_test.go:32" --args o.exe -test.run Test_callgofunc3_nopanic
gdb -ex "b hproxy_test.go:33" -ex "layout split" --args o.exe -test.run Test_callgofunc2_nopanic
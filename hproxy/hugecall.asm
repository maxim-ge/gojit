os.(*File).close STEXT dupok nosplit size=26 args=0x18 locals=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0000 00000 (<autogenerated>:1)	PCDATA	$1, $-2
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals·e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0000 00000 (<autogenerated>:1)	PCDATA	$0, $1
	0x0000 00000 (<autogenerated>:1)	PCDATA	$1, $1
	0x0000 00000 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x0005 00005 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0008 00008 (<autogenerated>:1)	PCDATA	$0, $0
	0x0008 00008 (<autogenerated>:1)	PCDATA	$1, $0
	0x0008 00008 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x000d 00013 (<autogenerated>:1)	XORPS	X0, X0
	0x0010 00016 (<autogenerated>:1)	MOVUPS	X0, "".~r0+16(SP)
	0x0015 00021 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 48 8b 44 24 08 48 8b 00 48 89 44 24 08 0f 57 c0  H.D$.H..H.D$..W.
	0x0010 0f 11 44 24 10 e9 00 00 00 00                    ..D$......
	rel 22+4 t=8 os.(*file).close+0
os.(*File).isdir STEXT dupok nosplit size=23 args=0x10 locals=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).isdir(SB), DUPOK|NOSPLIT|ABIInternal, $0-16
	0x0000 00000 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0000 00000 (<autogenerated>:1)	PCDATA	$1, $-2
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0000 00000 (<autogenerated>:1)	PCDATA	$0, $1
	0x0000 00000 (<autogenerated>:1)	PCDATA	$1, $1
	0x0000 00000 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x0005 00005 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0008 00008 (<autogenerated>:1)	PCDATA	$0, $0
	0x0008 00008 (<autogenerated>:1)	PCDATA	$1, $0
	0x0008 00008 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x000d 00013 (<autogenerated>:1)	MOVB	$0, "".~r0+16(SP)
	0x0012 00018 (<autogenerated>:1)	JMP	os.(*file).isdir(SB)
	0x0000 48 8b 44 24 08 48 8b 00 48 89 44 24 08 c6 44 24  H.D$.H..H.D$..D$
	0x0010 10 00 e9 00 00 00 00                             .......
	rel 19+4 t=8 os.(*file).isdir+0
"".hargs STEXT size=248 args=0x1f40 locals=0x1f98
	0x0000 00000 (hugecall.go:6)	TEXT	"".hargs(SB), ABIInternal, $8088-8000
	0x0000 00000 (hugecall.go:6)	MOVQ	TLS, CX
	0x0009 00009 (hugecall.go:6)	PCDATA	$0, $-2
	0x0009 00009 (hugecall.go:6)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (hugecall.go:6)	PCDATA	$0, $-1
	0x0010 00016 (hugecall.go:6)	MOVQ	16(CX), SI
	0x0014 00020 (hugecall.go:6)	PCDATA	$0, $-2
	0x0014 00020 (hugecall.go:6)	CMPQ	SI, $-1314
	0x001b 00027 (hugecall.go:6)	JEQ	238
	0x0021 00033 (hugecall.go:6)	LEAQ	896(SP), AX
	0x0029 00041 (hugecall.go:6)	SUBQ	SI, AX
	0x002c 00044 (hugecall.go:6)	CMPQ	AX, $8856
	0x0032 00050 (hugecall.go:6)	JLS	238
	0x0038 00056 (hugecall.go:6)	PCDATA	$0, $-1
	0x0038 00056 (hugecall.go:6)	SUBQ	$8088, SP
	0x003f 00063 (hugecall.go:6)	MOVQ	BP, 8080(SP)
	0x0047 00071 (hugecall.go:6)	LEAQ	8080(SP), BP
	0x004f 00079 (hugecall.go:6)	PCDATA	$0, $-2
	0x004f 00079 (hugecall.go:6)	PCDATA	$1, $-2
	0x004f 00079 (hugecall.go:6)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x004f 00079 (hugecall.go:6)	FUNCDATA	$1, gclocals·568470801006e5c0dc3947ea998fe279(SB)
	0x004f 00079 (hugecall.go:6)	FUNCDATA	$2, gclocals·581714498eab24fe8bc0e4bd2b789e1c(SB)
	0x004f 00079 (hugecall.go:6)	FUNCDATA	$3, "".hargs.stkobj(SB)
	0x004f 00079 (hugecall.go:7)	PCDATA	$0, $1
	0x004f 00079 (hugecall.go:7)	PCDATA	$1, $0
	0x004f 00079 (hugecall.go:7)	LEAQ	""..autotmp_7+64(SP), DI
	0x0054 00084 (hugecall.go:7)	PCDATA	$0, $2
	0x0054 00084 (hugecall.go:7)	LEAQ	"".args+8096(SP), SI
	0x005c 00092 (hugecall.go:7)	MOVL	$1000, CX
	0x0061 00097 (hugecall.go:7)	PCDATA	$0, $0
	0x0061 00097 (hugecall.go:7)	REP
	0x0062 00098 (hugecall.go:7)	MOVSQ
	0x0064 00100 (hugecall.go:7)	PCDATA	$0, $3
	0x0064 00100 (hugecall.go:7)	LEAQ	type.[1000]int(SB), AX
	0x006b 00107 (hugecall.go:7)	PCDATA	$0, $0
	0x006b 00107 (hugecall.go:7)	MOVQ	AX, (SP)
	0x006f 00111 (hugecall.go:7)	PCDATA	$0, $3
	0x006f 00111 (hugecall.go:7)	LEAQ	""..autotmp_7+64(SP), AX
	0x0074 00116 (hugecall.go:7)	PCDATA	$0, $0
	0x0074 00116 (hugecall.go:7)	MOVQ	AX, 8(SP)
	0x0079 00121 (hugecall.go:7)	CALL	runtime.convT2Enoptr(SB)
	0x007e 00126 (hugecall.go:7)	MOVQ	16(SP), AX
	0x0083 00131 (hugecall.go:7)	PCDATA	$0, $4
	0x0083 00131 (hugecall.go:7)	MOVQ	24(SP), DX
	0x0088 00136 (hugecall.go:7)	PCDATA	$1, $1
	0x0088 00136 (hugecall.go:7)	XORPS	X0, X0
	0x008b 00139 (hugecall.go:7)	MOVUPS	X0, ""..autotmp_13+8064(SP)
	0x0093 00147 (hugecall.go:7)	MOVQ	AX, ""..autotmp_13+8064(SP)
	0x009b 00155 (hugecall.go:7)	PCDATA	$0, $0
	0x009b 00155 (hugecall.go:7)	MOVQ	DX, ""..autotmp_13+8072(SP)
	0x00a3 00163 (<unknown line number>)	NOP
	0x00a3 00163 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $3
	0x00a3 00163 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), AX
	0x00aa 00170 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $5
	0x00aa 00170 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), DX
	0x00b1 00177 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $3
	0x00b1 00177 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, (SP)
	0x00b5 00181 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $0
	0x00b5 00181 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, 8(SP)
	0x00ba 00186 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $3
	0x00ba 00186 ($GOROOT\src\fmt\print.go:274)	PCDATA	$1, $0
	0x00ba 00186 ($GOROOT\src\fmt\print.go:274)	LEAQ	""..autotmp_13+8064(SP), AX
	0x00c2 00194 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $0
	0x00c2 00194 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, 16(SP)
	0x00c7 00199 ($GOROOT\src\fmt\print.go:274)	MOVQ	$1, 24(SP)
	0x00d0 00208 ($GOROOT\src\fmt\print.go:274)	MOVQ	$1, 32(SP)
	0x00d9 00217 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x00de 00222 (hugecall.go:7)	MOVQ	8080(SP), BP
	0x00e6 00230 (hugecall.go:7)	ADDQ	$8088, SP
	0x00ed 00237 (hugecall.go:7)	RET
	0x00ee 00238 (hugecall.go:7)	NOP
	0x00ee 00238 (hugecall.go:6)	PCDATA	$1, $-1
	0x00ee 00238 (hugecall.go:6)	PCDATA	$0, $-2
	0x00ee 00238 (hugecall.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x00f3 00243 (hugecall.go:6)	PCDATA	$0, $-1
	0x00f3 00243 (hugecall.go:6)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8b 71 10 48 81 fe de fa ff ff 0f 84 cd 00 00  H.q.H...........
	0x0020 00 48 8d 84 24 80 03 00 00 48 29 f0 48 3d 98 22  .H..$....H).H=."
	0x0030 00 00 0f 86 b6 00 00 00 48 81 ec 98 1f 00 00 48  ........H......H
	0x0040 89 ac 24 90 1f 00 00 48 8d ac 24 90 1f 00 00 48  ..$....H..$....H
	0x0050 8d 7c 24 40 48 8d b4 24 a0 1f 00 00 b9 e8 03 00  .|$@H..$........
	0x0060 00 f3 48 a5 48 8d 05 00 00 00 00 48 89 04 24 48  ..H.H......H..$H
	0x0070 8d 44 24 40 48 89 44 24 08 e8 00 00 00 00 48 8b  .D$@H.D$......H.
	0x0080 44 24 10 48 8b 54 24 18 0f 57 c0 0f 11 84 24 80  D$.H.T$..W....$.
	0x0090 1f 00 00 48 89 84 24 80 1f 00 00 48 89 94 24 88  ...H..$....H..$.
	0x00a0 1f 00 00 48 8b 05 00 00 00 00 48 8d 15 00 00 00  ...H......H.....
	0x00b0 00 48 89 14 24 48 89 44 24 08 48 8d 84 24 80 1f  .H..$H.D$.H..$..
	0x00c0 00 00 48 89 44 24 10 48 c7 44 24 18 01 00 00 00  ..H.D$.H.D$.....
	0x00d0 48 c7 44 24 20 01 00 00 00 e8 00 00 00 00 48 8b  H.D$ .........H.
	0x00e0 ac 24 90 1f 00 00 48 81 c4 98 1f 00 00 c3 e8 00  .$....H.........
	0x00f0 00 00 00 e9 08 ff ff ff                          ........
	rel 12+4 t=17 TLS+0
	rel 103+4 t=16 type.[1000]int+0
	rel 122+4 t=8 runtime.convT2Enoptr+0
	rel 166+4 t=16 os.Stdout+0
	rel 173+4 t=16 go.itab.*os.File,io.Writer+0
	rel 218+4 t=8 fmt.Fprintln+0
	rel 239+4 t=8 runtime.morestack_noctxt+0
"".callhargs STEXT size=293 args=0x10 locals=0x3ed8
	0x0000 00000 (hugecall.go:10)	TEXT	"".callhargs(SB), ABIInternal, $16088-16
	0x0000 00000 (hugecall.go:10)	MOVQ	TLS, CX
	0x0009 00009 (hugecall.go:10)	PCDATA	$0, $-2
	0x0009 00009 (hugecall.go:10)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (hugecall.go:10)	PCDATA	$0, $-1
	0x0010 00016 (hugecall.go:10)	MOVQ	16(CX), SI
	0x0014 00020 (hugecall.go:10)	PCDATA	$0, $-2
	0x0014 00020 (hugecall.go:10)	CMPQ	SI, $-1314
	0x001b 00027 (hugecall.go:10)	JEQ	283
	0x0021 00033 (hugecall.go:10)	LEAQ	896(SP), AX
	0x0029 00041 (hugecall.go:10)	SUBQ	SI, AX
	0x002c 00044 (hugecall.go:10)	CMPQ	AX, $16856
	0x0032 00050 (hugecall.go:10)	JLS	283
	0x0038 00056 (hugecall.go:10)	PCDATA	$0, $-1
	0x0038 00056 (hugecall.go:10)	SUBQ	$16088, SP
	0x003f 00063 (hugecall.go:10)	MOVQ	BP, 16080(SP)
	0x0047 00071 (hugecall.go:10)	LEAQ	16080(SP), BP
	0x004f 00079 (hugecall.go:10)	PCDATA	$0, $-2
	0x004f 00079 (hugecall.go:10)	PCDATA	$1, $-2
	0x004f 00079 (hugecall.go:10)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x004f 00079 (hugecall.go:10)	FUNCDATA	$1, gclocals·568470801006e5c0dc3947ea998fe279(SB)
	0x004f 00079 (hugecall.go:10)	FUNCDATA	$2, gclocals·e0e491dc01fa5e49b45b185cc2e7d27e(SB)
	0x004f 00079 (hugecall.go:10)	FUNCDATA	$3, "".callhargs.stkobj(SB)
	0x004f 00079 (hugecall.go:11)	PCDATA	$0, $1
	0x004f 00079 (hugecall.go:11)	PCDATA	$1, $0
	0x004f 00079 (hugecall.go:11)	LEAQ	"".args+64(SP), DI
	0x0054 00084 (hugecall.go:11)	MOVL	$1000, CX
	0x0059 00089 (hugecall.go:11)	XORL	AX, AX
	0x005b 00091 (hugecall.go:11)	PCDATA	$0, $0
	0x005b 00091 (hugecall.go:11)	REP
	0x005c 00092 (hugecall.go:11)	STOSQ
	0x005e 00094 (hugecall.go:12)	MOVQ	"".a+16096(SP), DX
	0x0066 00102 (hugecall.go:12)	MOVQ	DX, "".args+64(SP)
	0x006b 00107 (hugecall.go:13)	MOVQ	"".b+16104(SP), DX
	0x0073 00115 (hugecall.go:13)	MOVQ	DX, "".args+72(SP)
	0x0078 00120 (hugecall.go:14)	XCHGL	AX, AX
	0x0079 00121 (hugecall.go:7)	PCDATA	$0, $1
	0x0079 00121 (hugecall.go:7)	LEAQ	""..autotmp_10+8064(SP), DI
	0x0081 00129 (hugecall.go:7)	PCDATA	$0, $2
	0x0081 00129 (hugecall.go:7)	LEAQ	"".args+64(SP), SI
	0x0086 00134 (hugecall.go:7)	MOVL	$1000, CX
	0x008b 00139 (hugecall.go:7)	PCDATA	$0, $0
	0x008b 00139 (hugecall.go:7)	REP
	0x008c 00140 (hugecall.go:7)	MOVSQ
	0x008e 00142 (hugecall.go:7)	PCDATA	$0, $3
	0x008e 00142 (hugecall.go:7)	LEAQ	type.[1000]int(SB), DX
	0x0095 00149 (hugecall.go:7)	PCDATA	$0, $0
	0x0095 00149 (hugecall.go:7)	MOVQ	DX, (SP)
	0x0099 00153 (hugecall.go:7)	PCDATA	$0, $3
	0x0099 00153 (hugecall.go:7)	LEAQ	""..autotmp_10+8064(SP), DX
	0x00a1 00161 (hugecall.go:7)	PCDATA	$0, $0
	0x00a1 00161 (hugecall.go:7)	MOVQ	DX, 8(SP)
	0x00a6 00166 (hugecall.go:7)	CALL	runtime.convT2Enoptr(SB)
	0x00ab 00171 (hugecall.go:7)	MOVQ	16(SP), DX
	0x00b0 00176 (hugecall.go:7)	PCDATA	$0, $4
	0x00b0 00176 (hugecall.go:7)	MOVQ	24(SP), BX
	0x00b5 00181 (hugecall.go:7)	PCDATA	$1, $1
	0x00b5 00181 (hugecall.go:7)	XORPS	X0, X0
	0x00b8 00184 (hugecall.go:7)	MOVUPS	X0, ""..autotmp_16+16064(SP)
	0x00c0 00192 (hugecall.go:7)	MOVQ	DX, ""..autotmp_16+16064(SP)
	0x00c8 00200 (hugecall.go:7)	PCDATA	$0, $0
	0x00c8 00200 (hugecall.go:7)	MOVQ	BX, ""..autotmp_16+16072(SP)
	0x00d0 00208 (<unknown line number>)	NOP
	0x00d0 00208 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $3
	0x00d0 00208 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), DX
	0x00d7 00215 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $5
	0x00d7 00215 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), BX
	0x00de 00222 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $3
	0x00de 00222 ($GOROOT\src\fmt\print.go:274)	MOVQ	BX, (SP)
	0x00e2 00226 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $0
	0x00e2 00226 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, 8(SP)
	0x00e7 00231 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $3
	0x00e7 00231 ($GOROOT\src\fmt\print.go:274)	PCDATA	$1, $0
	0x00e7 00231 ($GOROOT\src\fmt\print.go:274)	LEAQ	""..autotmp_16+16064(SP), DX
	0x00ef 00239 ($GOROOT\src\fmt\print.go:274)	PCDATA	$0, $0
	0x00ef 00239 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, 16(SP)
	0x00f4 00244 ($GOROOT\src\fmt\print.go:274)	MOVQ	$1, 24(SP)
	0x00fd 00253 ($GOROOT\src\fmt\print.go:274)	MOVQ	$1, 32(SP)
	0x0106 00262 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x010b 00267 (hugecall.go:7)	MOVQ	16080(SP), BP
	0x0113 00275 (hugecall.go:7)	ADDQ	$16088, SP
	0x011a 00282 (hugecall.go:7)	RET
	0x011b 00283 (hugecall.go:7)	NOP
	0x011b 00283 (hugecall.go:10)	PCDATA	$1, $-1
	0x011b 00283 (hugecall.go:10)	PCDATA	$0, $-2
	0x011b 00283 (hugecall.go:10)	CALL	runtime.morestack_noctxt(SB)
	0x0120 00288 (hugecall.go:10)	PCDATA	$0, $-1
	0x0120 00288 (hugecall.go:10)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8b 71 10 48 81 fe de fa ff ff 0f 84 fa 00 00  H.q.H...........
	0x0020 00 48 8d 84 24 80 03 00 00 48 29 f0 48 3d d8 41  .H..$....H).H=.A
	0x0030 00 00 0f 86 e3 00 00 00 48 81 ec d8 3e 00 00 48  ........H...>..H
	0x0040 89 ac 24 d0 3e 00 00 48 8d ac 24 d0 3e 00 00 48  ..$.>..H..$.>..H
	0x0050 8d 7c 24 40 b9 e8 03 00 00 31 c0 f3 48 ab 48 8b  .|$@.....1..H.H.
	0x0060 94 24 e0 3e 00 00 48 89 54 24 40 48 8b 94 24 e8  .$.>..H.T$@H..$.
	0x0070 3e 00 00 48 89 54 24 48 90 48 8d bc 24 80 1f 00  >..H.T$H.H..$...
	0x0080 00 48 8d 74 24 40 b9 e8 03 00 00 f3 48 a5 48 8d  .H.t$@......H.H.
	0x0090 15 00 00 00 00 48 89 14 24 48 8d 94 24 80 1f 00  .....H..$H..$...
	0x00a0 00 48 89 54 24 08 e8 00 00 00 00 48 8b 54 24 10  .H.T$......H.T$.
	0x00b0 48 8b 5c 24 18 0f 57 c0 0f 11 84 24 c0 3e 00 00  H.\$..W....$.>..
	0x00c0 48 89 94 24 c0 3e 00 00 48 89 9c 24 c8 3e 00 00  H..$.>..H..$.>..
	0x00d0 48 8b 15 00 00 00 00 48 8d 1d 00 00 00 00 48 89  H......H......H.
	0x00e0 1c 24 48 89 54 24 08 48 8d 94 24 c0 3e 00 00 48  .$H.T$.H..$.>..H
	0x00f0 89 54 24 10 48 c7 44 24 18 01 00 00 00 48 c7 44  .T$.H.D$.....H.D
	0x0100 24 20 01 00 00 00 e8 00 00 00 00 48 8b ac 24 d0  $ .........H..$.
	0x0110 3e 00 00 48 81 c4 d8 3e 00 00 c3 e8 00 00 00 00  >..H...>........
	0x0120 e9 db fe ff ff                                   .....
	rel 12+4 t=17 TLS+0
	rel 145+4 t=16 type.[1000]int+0
	rel 167+4 t=8 runtime.convT2Enoptr+0
	rel 211+4 t=16 os.Stdout+0
	rel 218+4 t=16 go.itab.*os.File,io.Writer+0
	rel 263+4 t=8 fmt.Fprintln+0
	rel 284+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 68 70 6f 78 79                                   hpoxy
go.info.fmt.Println$abstract SDWARFINFO dupok size=42
	0x0000 04 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 11  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 11 6e 00 01 00 00 00 00 11  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=24 type.[]interface {}+0
	rel 0+0 t=24 type.error+0
	rel 0+0 t=24 type.int+0
	rel 19+4 t=29 go.info.[]interface {}+0
	rel 27+4 t=29 go.info.int+0
	rel 37+4 t=29 go.info.error+0
go.info."".hargs$abstract SDWARFINFO dupok size=22
	0x0000 04 2e 68 61 72 67 73 00 01 01 11 61 72 67 73 00  ..hargs....args.
	0x0010 00 00 00 00 00 00                                ......
	rel 17+4 t=29 go.info.[1000]int+0
go.loc.os.(*File).close SDWARFLOC dupok size=0
go.info.os.(*File).close SDWARFINFO dupok size=55
	0x0000 03 6f 73 2e 28 2a 46 69 6c 65 29 2e 63 6c 6f 73  .os.(*File).clos
	0x0010 65 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  e...............
	0x0020 00 00 01 9c 00 00 00 00 01 0f 7e 72 30 00 01 c4  ..........~r0...
	0x0030 01 00 00 00 00 00 00                             .......
	rel 0+0 t=24 type.*os.File+0
	rel 0+0 t=24 type.error+0
	rel 18+8 t=1 os.(*File).close+0
	rel 26+8 t=1 os.(*File).close+26
	rel 36+4 t=30 gofile..<autogenerated>+0
	rel 49+4 t=29 go.info.error+0
go.range.os.(*File).close SDWARFRANGE dupok size=0
go.debuglines.os.(*File).close SDWARFMISC dupok size=12
	0x0000 04 01 0f 06 41 06 af 04 01 03 00 01              ....A.......
go.loc.os.(*File).isdir SDWARFLOC dupok size=0
go.info.os.(*File).isdir SDWARFINFO dupok size=54
	0x0000 03 6f 73 2e 28 2a 46 69 6c 65 29 2e 69 73 64 69  .os.(*File).isdi
	0x0010 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
	0x0020 00 00 01 9c 00 00 00 00 01 0f 7e 72 30 00 01 63  ..........~r0..c
	0x0030 00 00 00 00 00 00                                ......
	rel 0+0 t=24 type.*os.File+0
	rel 0+0 t=24 type.bool+0
	rel 18+8 t=1 os.(*File).isdir+0
	rel 26+8 t=1 os.(*File).isdir+23
	rel 36+4 t=30 gofile..<autogenerated>+0
	rel 48+4 t=29 go.info.bool+0
go.range.os.(*File).isdir SDWARFRANGE dupok size=0
go.debuglines.os.(*File).isdir SDWARFMISC dupok size=12
	0x0000 04 01 0f 06 41 06 91 04 01 03 00 01              ....A.......
go.loc."".hargs SDWARFLOC size=0
go.info."".hargs SDWARFINFO size=64
	0x0000 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 01 9c 12 00 00 00 00 01 9c 06 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 07 12 00 00 00 00 00 00 00  ................
	rel 0+0 t=24 type.[1000]int+0
	rel 0+0 t=24 type.[1]interface {}+0
	rel 1+4 t=29 go.info."".hargs$abstract+0
	rel 5+8 t=1 "".hargs+0
	rel 13+8 t=1 "".hargs+248
	rel 24+4 t=29 go.info."".hargs$abstract+10
	rel 31+4 t=29 go.info.fmt.Println$abstract+0
	rel 35+8 t=1 "".hargs+163
	rel 43+8 t=1 "".hargs+222
	rel 51+4 t=30 gofile..C:\Workspace\heeus\inv-wasm-dir\gojit\hproxy\hugecall.go+0
	rel 57+4 t=29 go.info.fmt.Println$abstract+15
go.range."".hargs SDWARFRANGE size=0
go.debuglines."".hargs SDWARFMISC size=36
	0x0000 04 02 14 0a 02 20 ff f6 06 41 04 03 06 02 38 03  ..... ...A....8.
	0x0010 86 02 fa 06 55 04 02 06 02 1c 03 f9 7d fb ae 04  ....U.......}...
	0x0020 01 03 7b 01                                      ..{.
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 08 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 08 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
go.loc."".callhargs SDWARFLOC size=157
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 25 01 00 00 00 00 00 00  ........%.......
	0x0020 04 00 91 e0 82 7f 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 ff ff ff ff ff ff ff ff 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 01  ..............%.
	0x0050 00 00 00 00 00 00 01 00 9c 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 ff ff ff ff ff ff ff  ................
	0x0070 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 25 01 00 00 00 00 00 00 02 00 91 08 00 00 00  .%..............
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00           .............
	rel 8+8 t=1 "".callhargs+0
	rel 62+8 t=1 "".callhargs+0
	rel 113+8 t=1 "".callhargs+0
go.info."".callhargs SDWARFINFO size=127
	0x0000 03 22 22 2e 63 61 6c 6c 68 61 72 67 73 00 00 00  ."".callhargs...
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c  ................
	0x0020 00 00 00 00 01 0b 61 72 67 73 00 0b 00 00 00 00  ......args......
	0x0030 00 00 00 00 10 61 00 00 0a 00 00 00 00 00 00 00  .....a..........
	0x0040 00 10 62 00 00 0a 00 00 00 00 00 00 00 00 07 00  ..b.............
	0x0050 00 00 00 00 00 00 00 00 00 00 00 0e 06 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 07 12 00 00 00 00 00 00 00 00     ...............
	rel 0+0 t=24 type.[1000]int+0
	rel 0+0 t=24 type.[1]interface {}+0
	rel 0+0 t=24 type.int+0
	rel 14+8 t=1 "".callhargs+0
	rel 22+8 t=1 "".callhargs+293
	rel 32+4 t=30 gofile..C:\Workspace\heeus\inv-wasm-dir\gojit\hproxy\hugecall.go+0
	rel 44+4 t=29 go.info.[1000]int+0
	rel 48+4 t=29 go.loc."".callhargs+0
	rel 57+4 t=29 go.info.int+0
	rel 61+4 t=29 go.loc."".callhargs+54
	rel 70+4 t=29 go.info.int+0
	rel 74+4 t=29 go.loc."".callhargs+105
	rel 79+4 t=29 go.info."".hargs$abstract+0
	rel 83+4 t=29 go.range."".callhargs+0
	rel 87+4 t=30 gofile..C:\Workspace\heeus\inv-wasm-dir\gojit\hproxy\hugecall.go+0
	rel 93+4 t=29 go.info.fmt.Println$abstract+0
	rel 97+8 t=1 "".callhargs+208
	rel 105+8 t=1 "".callhargs+267
	rel 113+4 t=30 gofile..C:\Workspace\heeus\inv-wasm-dir\gojit\hproxy\hugecall.go+0
	rel 119+4 t=29 go.info.fmt.Println$abstract+15
go.range."".callhargs SDWARFRANGE size=64
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 79 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 00  y...............
	0x0020 0b 01 00 00 00 00 00 00 1b 01 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 8+8 t=1 "".callhargs+0
go.debuglines."".callhargs SDWARFMISC size=53
	0x0000 04 02 03 04 14 0a 02 20 ff f6 06 41 06 74 06 5f  ....... ...A.t._
	0x0010 06 42 06 5f 06 42 03 7d 15 06 5f 04 03 06 02 38  .B._.B.}.._....8
	0x0020 03 86 02 fa 06 55 04 02 06 02 1c 03 f9 7d fb b2  .....U.......}..
	0x0030 04 01 03 77 01                                   ...w.
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
type..namedata.*[]int- SRODATA dupok size=9
	0x0000 00 00 06 2a 5b 5d 69 6e 74                       ...*[]int
type.*[]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 1b 31 52 88 08 08 08 36 00 00 00 00 00 00 00 00  .1R....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int-+0
	rel 48+8 t=1 type.[]int+0
type.[]int SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8e 66 f9 1b 02 08 08 17 00 00 00 00 00 00 00 00  .f..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int-+0
	rel 44+4 t=6 type.*[]int+0
	rel 48+8 t=1 type.int+0
type..eqfunc8000 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 40 1f 00 00 00 00 00 00  ........@.......
	rel 0+8 t=1 runtime.memequal_varlen+0
type..namedata.*[1000]int- SRODATA dupok size=13
	0x0000 00 00 0a 2a 5b 31 30 30 30 5d 69 6e 74           ...*[1000]int
type.*[1000]int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c7 02 81 e0 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1000]int-+0
	rel 48+8 t=1 type.[1000]int+0
runtime.gcbits. SRODATA dupok size=0
type.[1000]int SRODATA dupok size=72
	0x0000 40 1f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  @...............
	0x0010 02 70 dc 6b 0a 08 08 11 00 00 00 00 00 00 00 00  .p.k............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 e8 03 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..eqfunc8000+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[1000]int-+0
	rel 44+4 t=6 type.*[1000]int+0
	rel 48+8 t=1 type.int+0
	rel 56+8 t=1 type.[]int+0
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=1 os.(*File).Write+0
go.itablink.*os.File,io.Writer SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 go.itab.*os.File,io.Writer+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
gclocals·e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·568470801006e5c0dc3947ea998fe279 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 02                    ..........
gclocals·581714498eab24fe8bc0e4bd2b789e1c SRODATA dupok size=14
	0x0000 06 00 00 00 07 00 00 00 00 40 60 01 04 05        .........@`...
"".hargs.stkobj SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
gclocals·e0e491dc01fa5e49b45b185cc2e7d27e SRODATA dupok size=14
	0x0000 06 00 00 00 07 00 00 00 00 40 60 04 08 0c        .........@`...
"".callhargs.stkobj SRODATA size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0

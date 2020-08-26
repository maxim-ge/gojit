;TEXT ·callgofunc3(SB),$0x80(128)-8
; 0x80 - 0x8 = 0x78 = 120
00000000006a0c60 <github.com/nelhage/gojit/hproxy.callgofunc3>:
  6a0c60:	65 48 8b 0c 25 28 00 	mov    %gs:0x28,%rcx
  6a0c67:	00 00 
  6a0c69:	48 8b 89 00 00 00 00 	mov    0x0(%rcx),%rcx
  6a0c70:	48 8d 44 24 f8       	lea    -0x8(%rsp),%rax
  6a0c75:	48 3b 41 10          	cmp    0x10(%rcx),%rax
  6a0c79:	76 31                	jbe    6a0cac <github.com/nelhage/gojit/hproxy.callgofunc3+0x4c>
  6a0c7b:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  6a0c82:	48 89 ac 24 80 00 00 	mov    %rbp,0x80(%rsp)
  6a0c89:	00 
  6a0c8a:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  6a0c91:	00 
  6a0c92:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  6a0c99:	00 
  6a0c9a:	ff d0                	callq  *%rax
  6a0c9c:	48 8b ac 24 80 00 00 	mov    0x80(%rsp),%rbp
  6a0ca3:	00 
  6a0ca4:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  6a0cab:	c3                   	retq   
  6a0cac:	e8 bf 5f dc ff       	callq  466c70 <runtime.morestack_noctxt>
  6a0cb1:	eb ad                	jmp    6a0c60 <github.com/nelhage/gojit/hproxy.callgofunc3>


;TEXT ·callgofunc3(SB),$0x200(512)-8
; 0x200 - 0x188 = 0x78 = 120
00000000006a0c60 <github.com/nelhage/gojit/hproxy.callgofunc3>:
  6a0c60:	65 48 8b 0c 25 28 00 	mov    %gs:0x28,%rcx
  6a0c67:	00 00 
  6a0c69:	48 8b 89 00 00 00 00 	mov    0x0(%rcx),%rcx
  6a0c70:	48 8d 84 24 78 fe ff 	lea    -0x188(%rsp),%rax
  6a0c77:	ff 
  6a0c78:	48 3b 41 10          	cmp    0x10(%rcx),%rax
  6a0c7c:	76 31                	jbe    6a0caf <github.com/nelhage/gojit/hproxy.callgofunc3+0x4f>
  6a0c7e:	48 81 ec 08 02 00 00 	sub    $0x208,%rsp
  6a0c85:	48 89 ac 24 00 02 00 	mov    %rbp,0x200(%rsp)
  6a0c8c:	00 
  6a0c8d:	48 8d ac 24 00 02 00 	lea    0x200(%rsp),%rbp
  6a0c94:	00 
  6a0c95:	48 8b 84 24 10 02 00 	mov    0x210(%rsp),%rax
  6a0c9c:	00 
  6a0c9d:	ff d0                	callq  *%rax
  6a0c9f:	48 8b ac 24 00 02 00 	mov    0x200(%rsp),%rbp
  6a0ca6:	00 
  6a0ca7:	48 81 c4 08 02 00 00 	add    $0x208,%rsp
  6a0cae:	c3                   	retq   
  6a0caf:	e8 bc 5f dc ff       	callq  466c70 <runtime.morestack_noctxt>
  6a0cb4:	eb aa                	jmp    6a0c60 <github.com/nelhage/gojit/hproxy.callgofunc3>

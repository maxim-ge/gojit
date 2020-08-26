[!!! runtime: missing stackmap when calling Go function from asm function](https://github.com/google/gvisor/issues/2865)
  - This function has a non-empty frame, so it needs stack maps. GO_ARGS only covers arguments. You still need a stack map for locals, for which the macro NO_LOCAL_POINTERS will do.

[doc: document assembly calling convention ](https://github.com/golang/go/issues/16922)
- It looks like closures are stored as instances of the funcval struct, with the pointer to the funcval passed to the closure in the DX register (on amd64). Is that correct?
  - That is correct.
- I have written a detailed analysis of the x86-64 calling convention here:

[The Go low-level calling convention on x86-64](http://science.raphael.poss.name/go-calling-convention-x86-64.html)
- Are there callee-save registers in Go?
- So, no. The Go compiler always spills the temporaries to the stack during calls.

[!!! runtime: missing stackmap when calling Go function from asm function](https://github.com/google/gvisor/issues/2865)
  - This function has a non-empty frame, so it needs stack maps. GO_ARGS only covers arguments. You still need a stack map for locals, for which the macro NO_LOCAL_POINTERS will do.

global multiply

multiply:
  push ebp
  mov ebp, esp

  ; we don't want to corrupt registers
  ; so we will save their values to the stack
  push ebx

  mov eax, [ebp+0x8]
  mov ebx, [ebp+0xc]
  mul ebx

  ; and restore registers (or we will get segmentation fault)
  pop ebx

  mov esp, ebp
  pop ebp
  ret

global _start

_start:
  call func
  mov eax, 1
  mov ebx, 0
  int 0x80

func:
  ; ==> PROLOG OF THE FUNCTION <==
  ; someone will call as and we don't
  ; want to invalidate their ebp
  ; so we will save it
  push ebp
  ; we will edit stack, so we can
  ; save esp to ebp and with esp whatever we want
  mov ebp, esp
  ; allocate memory on the stack
  sub esp, 2

  mov [esp], byte 'H'
  mov [esp+1], byte 'i'
  
  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, 2
  int 0x80

  ; ==> EPILOG OF THE FUNCTION <==
  mov esp, ebp ; restore esp to previous value
  pop ebp ; we can restore ebp
  ret

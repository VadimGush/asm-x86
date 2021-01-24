global _start

_start:
  ; allocate 5 bytes on stack
  sub esp, 5
  ; push 'hello' to stack
  mov [esp], byte 'H'
  mov [esp+1], byte 'e'
  mov [esp+2], byte 'l'
  mov [esp+3], byte 'l'
  mov [esp+4], byte 'o'

  ; print content of the stack to stdout
  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, 5
  int 0x80

  mov eax, 1
  mov ebx, 0
  int 0x80

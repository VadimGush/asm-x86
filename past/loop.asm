global _start

section .text
_start:
  mov eax, 2    ; start ebx at 1
  mov ecx, 4    ; number of iterations
  mov ebx, 2

_pow:
  mul ebx
  dec ecx
  cmp ecx, 1
  jg _pow

  mov ebx, eax
  mov eax, 1
  int 0x80

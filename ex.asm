global _start

section .text
_start:
  mov ebx, 1    ; start ebx at 1
  mov ecx, 3    ; number of iterations
_loop:
  
_end:
  mov ebx, eax
  mov eax, 1
  int 0x80


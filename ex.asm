global _start

section .text
_start:
  ; exit(int code)
  mov ebx, 42   ; exit status is 42
  mov eax, 1    ; sys_exit system call
  ; move instruction pointer to location of this skip label
  jmp skip
  mov ebx, 13

skip:
  int 0x80      ; system call


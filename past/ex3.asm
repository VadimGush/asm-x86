global _start

section .text
_start:
  mov ecx, 100   ; exc = 99
  ; exit(int code)
  mov ebx, 42   ; exit status is 42
  mov eax, 1    ; sys_exit system call
  ; move instruction pointer to location of this skip label

  cmp ecx, 100  ; compare exc to 100
  ; jmp skip    ; unconditional jump
  ; jl skip     ; jump IF LESS
  ; jg skip     ; jump IF GREATER THAN 
  je skip       ; jump IF EQUALS

  mov ebx, 13

skip:
  int 0x80      ; system call


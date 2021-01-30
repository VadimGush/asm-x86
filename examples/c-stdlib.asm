global main
extern printf

section .data
  msg db "The value is = %i", 0x0a, 0x00

section .text
main:
  push ebp
  mov ebp, esp
  
  push 7
  push msg
  call printf

  ; return code of our program
  mov eax, 0
  mov esp, ebp
  pop ebp
  ret

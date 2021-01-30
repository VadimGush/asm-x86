; global - make it available to the linker
; _start - it's a label (location in our code)
global _start

_start:
  mov ebx, 1      ; ebx = 1
  mov ecx, 20     ; ecx = 20
  add ebx, ecx    ; ebx += ecx (1 + 20 = 21)
  mov edx, 4      ; edx = 4 
  sub ebx, edx    ; ebx -= edx (21 - 4 = 17)

  mov eax, 2
  mul ebx         ; eax *= ebx (2 * 17 = 20)
  mov ebx, eax   

  ; return control to OS (ebx will contain exit code)
  mov eax, 1
  ; interrupt handler - 0x80 system call
  ; eax - tells which system call we want to make
  int 0x80
  

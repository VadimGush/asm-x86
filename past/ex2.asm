global _start

; executable data
section .data
  ; msg = "Hello world!\n"
  msg db "Hello world!", 0x0a
  ; calculate length of the string (last string)
  ; len = 14
  len equ $ - msg

; code
section .text
_start:
  ; void write(int fd, void* data, usize len)
  mov eax, 4    ; sys_write system call
  mov ebx, 1    ; stdout file descriptor
  mov ecx, msg  ; bytes to write (pointer to message)
  mov edx, len  ; number of bytes to write (length of message)
  int 0x80      ; perform system call

  mov eax, 1    ; return
  mov ebx, 0    ; return status code
  int 0x80      ; perform system call

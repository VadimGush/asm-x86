# Assembly x86

My learning of x86 assembly language.

### GDB

```bash
# we use intel syntax
set disassemly-flavor intel

# show debug window with asm code
layout asm

# first we need to setup a break on main()
break _start

run # run the program 
ni # jump to next instruction
info registers # print registers content
print/x $eax # print value of specific register
print/d $eax # print value of specific register (as int)
```

#### General syntax

**Data:**
```nasm
section .data
; db is 1 byte
name db "string"
name db 0xff
name db 100

; dw is 2 bytes
name dw 0x1234
name dw 1000

; dd is 4 bytes 
name dd 0x12341245
name dd 10000
```

**Instructions:**
```nasm
section .text

mov eax, 3              ; move value to register
mov [addr], byte 'h'    ; move value to memory location at pointer 
mov [addr+5], byte '!'  ; memory location with pointer offset

push 1234   ; push bytes to stack
pop eax     ; pop value from the stack and saved it to eax
sub esp, 4  ; allocate 4 bytes on the stack

; function call
; pushes EIP to stack (so we can go back)
; performs a jump
call label
ret 

; same as ret
; then we can go back
pop eax ; move last location from stack to eax
jmp eax ; jmp to previous location

; same as push
sub esp, 4
mov [esp], dword 357

```

#### Registers

Registers: 
 * `ESP` - stack pointer
 * `EIP` - instruction pointer
 * `ESB` - base pointer (in order to call functions)

#### System calls

```nasm
mov eax, 1 ; return(int code)
mov eax, 4 ; write(int fd, char* ptr, int len)
```

#### Branches

```nasm
je  A, B ; if A == B
jne A, B ; if A != B (jnz - also)
jg  A, B ; if A > B
jge A, B ; if A >= B
jl  A, B ; if A < B
jle A, B ; if A <= B

; bitwise AND operation
test edx, 00800000h ; bit 23
; if we got value that is not != 0
jnz HasMMX
```

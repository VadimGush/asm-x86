# Assembly x86 / x86_64

![](https://github.com/vadimgush/asm-x86/workflows/CI/badge.svg)

My learning of x86 / x86_64 assembly language.

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

mov   eax, 3      ; Move            - move to R/M value from L/M/R
xchg  eax, ebx    ; Swap            - swaps 2 values (R/M)

inc eax           ; Increment       - adds 1
dec eax           ; Decriment       - substractcs 1
add eax, ebx      ; Add             - add two values and stores a result in the first one
sub eax, ebx      ; Sub             - sub two values and stotes a result in the first one
neg eax           ; Negative        - converts value to negative

push 1234         ; Push to stack   - push value to the stack (R/M/L)
pop eax           ; Pop from stack  - pop value from the stack (R/M)
sub esp, 4        ; Stack malloc    - allocate some amount of bytes on the stack

call label        ; Function call   - pushes RIP to stack and performs a jump
ret               ; Return          - pops RIP from stack and performs a jump

pop eax           ; Same as return
jmp eax           ;

sub esp, 4        ; Same as push eax
mov [esp], eax    ;

```

#### Registers

Registers: 
 * `ESP` - stack pointer
 * `EIP` - instruction pointer
 * `ESB` - base pointer (in order to call functions)

#### System calls

```nasm
; system calls are defined in /usr/include/asm/unistd_64.h

mov rax, 0    ; read()
mov rax, 1    ; write()
mov rax, 60   ; exit()

syscall       ; make system call
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

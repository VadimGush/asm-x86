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

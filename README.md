# Assembly x86

My learning of x86 assembly language.

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

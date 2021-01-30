#!/bin/bash
clear

# create object file from asm
# 32bit assembly
nasm -f elf32 lib.asm -o lib.o

# wrap this object file into static library
ar rsc libmultiply.a lib.o

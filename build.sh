#!/bin/bash

clear
rm ex.o
rm ex.ex

# => FOR MAKING ASM CODE EXECUTABLE <=
# make in format ELF 32bit executable
# nasm -g -f elf32 ex.asm -o ex.o

# linker will make executable file
# ld -m elf_i386 ex.o -o ex.ex

# we will use gcc instead of GNU linker just to use std library out of box
# don't forget to install gcc-multilib to compile to 32bit architecture
# -m32 it 32bit binary
# gcc -m32 ex.o -o ex.ex

# create object file from asm
nasm -f elf32 lib.asm -o lib.o

gcc -g -m32 test.c lib.o -o ex.ex

./ex.ex
printf "\nExit code: $?\n"


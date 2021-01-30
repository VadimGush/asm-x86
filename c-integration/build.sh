#!/bin/bash
clear

# create object file from asm
nasm -f elf32 lib.asm -o lib.o &&

# link this object file to our program
gcc -g -m32 test.c lib.o -o ex.ex &&

# execute
./ex.ex &&

printf "\nExit code: $?\n"


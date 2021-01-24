#!/bin/bash

clear
rm ex.o
rm ex.ex

# make in format ELF 32bit executable
nasm -g -f elf32 ex.asm -o ex.o

# linker will make executable file
ld -m elf_i386 ex.o -o ex.ex

./ex.ex
printf "\nExit code: $?\n"


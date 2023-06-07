#!/bin/sh
cd "$(dirname $0)"
nasm -f elf main.asm
ld -m elf_i386 main.o -o app

global _start

section .data
  msg db "Hello, world!", 0Ah

section .text
  _start:
    mov edx, 13
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h

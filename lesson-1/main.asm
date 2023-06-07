global _start

section .data
  msg db "Hello, world!", 0Ah

section .text
  _start:
    mov edx, 13
    mov ecx, msg
    mov ebx, 1
    ; `eax` stores system call number
    mov eax, 4 ; 4 = sys_write
    int 0x80 ; request software interrupt

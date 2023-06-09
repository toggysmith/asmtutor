global _start

section .data
  msg db "Hello, world! Goodbye, cruel world!", 0Ah

section .text
  _start:
    mov ebx, msg ; Move address of message string to EBX.
    mov eax, ebx ; Move address in EBX to EAX.

  nextchar:
    cmp byte [eax], 0 ; Compare byte pointed to by EAX to zero (end of string delimiter).
    jz finished ; Jump to the finished label, if ZF flag is set by CMP.
    inc eax ; Increment byte pointed to by EAX if ZF flag was not set by CMP.
    jmp nextchar ; Jump to the nextchar label.

  finished:
    sub eax, ebx ; Subtract the address in EBX from the address in EAX.
    mov edx, eax ; EAX is now the number of bytes in the string.
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h
    mov ebx, 0
    mov eax, 1
    int 80h

%include "io64.inc"

section .text
global CMAIN
CMAIN:

    mov ecx, 0

LOOP_LABEL:
    PRINT_DEC 1, [aa + ecx]
    NEWLINE
    inc ecx
    mov ebx, [aa + ecx]
    cmp ebx, 0x00
    jne LOOP_LABEL
    
    xor rax, rax
    ret
    
section .data
    aa db 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x00
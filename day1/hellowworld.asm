%include "io64.inc"

section .text
global CMAIN
CMAIN:    
    mov rbp, rsp; for correct debugging

    GET_DEC 1, al
    GET_DEC 1, num
    
    PRINT_DEC 1, al
    NEWLINE
    PRINT_DEC 1, num
    NEWLINE
    
    ADD al, 3
    PRINT_DEC 1, al
    NEWLINE
    
    ADD al, [num]
    PRINT_DEC 1, al
    NEWLINE
    
    ADD [num], byte 2
    PRINT_DEC 1, [num]
    NEWLINE

    xor rax, rax
    ret
    
section .bss
    num resb 12
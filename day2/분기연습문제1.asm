%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging    
    ;홀수 짝수 구분
    ;입력값
    mov ax, 1
    
    mov bl, 2
    div bl
    
    mov bl, ah
    PRINT_HEX 1, ax
    NEWLINE
    
    cmp bl, 0x01
    je NOT_PAIR
    
    mov rcx, 0
    
PAIR:
    PRINT_STRING "PAIR"
    jmp PAIR_END
NOT_PAIR:
    PRINT_STRING "NOT_PAIR"
PAIR_END:
    xor rax, rax
    ret
    
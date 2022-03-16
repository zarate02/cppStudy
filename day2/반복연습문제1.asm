%include "io64.inc"

section .text
global CMAIN
CMAIN:    
    ;반복문 : 10~0 까지 모두 덧셈   
    mov ecx, 10
    mov ebx, 0
LABEL_LOOP:
    add ebx, ecx
    dec ecx
    cmp ecx, 0
    jne LABEL_LOOP
    
    PRINT_DEC 1, ebx
    NEWLINE
        
    xor rax, rax
    ret
    
section .bss
    num resb 12
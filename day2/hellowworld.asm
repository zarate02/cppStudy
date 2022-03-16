%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging    
    ;쉬프트연산
    mov eax, 0x12345678
    PRINT_HEX 4, eax
    NEWLINE
    shl eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    shr eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    
    ;논리연산
    mov al, 0b10010101
    mov bl, 0b01111100
    
    and al, bl
    PRINT_HEX 1, al
    NEWLINE
    
    not al
    PRINT_HEX 1, al
    NEWLINE
    
    ;분기문
    mov rax, 10
    mov rbx, 10
    
    cmp rax, rbx
    je LABEL_EQUAL
    
    mov rcx, 0
    jmp LABEL_EQUAL_END
    
LABEL_EQUAL:
    mov rcx, 1
    
LABEL_EQUAL_END:
    PRINT_HEX 1, rcx
    NEWLINE
        
    ;반복문    
    mov ecx, 5
LABEL_LOOP:
    dec ecx
    cmp ecx, 0
    PRINT_STRING 'HEELO'
    NEWLINE
    jne LABEL_LOOP
    
    ;반복문2    
    mov ecx, 3    
    xor ebx, ebx
LABEL_LOOP_SUM:
    add ebx, ecx
    loop LABEL_LOOP_SUM    
    
    PRINT_DEC 1, ebx
    NEWLINE
    
    
    ;메모리
    PRINT_HEX 1, [aa]
    NEWLINE
    PRINT_HEX 1, [aa+1]
    NEWLINE
    PRINT_HEX 1, [aa+2]
    NEWLINE
        
    ;함수    
    call TEST_FUNC   
    
           
    ;스택
    push 5
    push 2
    push rbp
    mov rbp, rsp
    
    mov rax, [rbp+16]
    mov rbx, [rbp+24]
    
    PRINT_DEC 1, rax
    NEWLINE
    
    ;스택은 작업끝나면 초기화시켜줘야됨
    pop rbp
    add rsp, 16
                      
                               
                                        
                                                 
                                                                   
    xor rax, rax
    ret
    
    
TEST_FUNC:
    PRINT_STRING 'call TEST_FUNC'
    NEWLINE
    ret
    
section .data
    msg db 'HELO2', 0x00
    aa db 0x01, 0x02, 0x03, 0x04, 0x05
    
section .bss
    num resb 12
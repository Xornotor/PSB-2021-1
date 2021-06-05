;André Paiva

section .data
    num1    db      30
    num2    db      40

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ebx,    ebx     ;maior
    xor     ecx,    ecx     ;menor
    
    mov     al,     [num1]
    mov     ah,     [num2]
    cmp     al,     ah
    jge     NUM1MAIOR
    
NUM2MAIOR:
    mov     bl,     ah
    mov     cl,     al
    ret
    
NUM1MAIOR:
    mov     bl,     al
    mov     cl,     ah 
    ret
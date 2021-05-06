;André Paiva

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ebx,    ebx
    
    mov     eax,    0
    cmp     eax,    0
    jz      EBX1
    mov     ebx,    2
    ret
    
EBX1:
    mov     ebx,    1 
    ret
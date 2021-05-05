;André Paiva

%include "io.inc"

section .text

global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ebx,    ebx
    
    mov     eax,    0
    mov     ebx,    -5
    
    cmp     eax,    ebx
    jge     MAIORIGUAL
    cmp     eax,    0
    jz      ZERO    
    ret
    
MAIORIGUAL:
    mov     eax,    1
    ret

ZERO:
    mov     eax,    -1
    ret
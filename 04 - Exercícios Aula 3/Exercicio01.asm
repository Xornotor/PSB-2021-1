;André Paiva

%include "io.inc"

section .data
    Rval    DB      0
    Xval    DB      31
    Yval    DB      52
    Zval    DB      45

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ebx,    ebx
    
    mov     al,     [Yval]
    mov     bl,     -1
    imul    bl
    add     al,     [Zval]
    mov     bl,     -1
    imul    bl
    add     al,     [Xval]
    mov     [Rval], al
    
    ret
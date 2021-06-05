%include "io.inc"

section .data
    var1    dw      -60
    var2    dw      80
    var4    dw      0

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ebx,    ebx
    xor     ecx,    ecx
    
    mov     cx,     [var2]
    sub     cx,     3
    mov     ax,     [var1]
    mov     bx,     5
    imul    bx
    cwd
    idiv    cx
    mov     [var4], eax
    
    ret
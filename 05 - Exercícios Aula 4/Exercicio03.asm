%include "io.inc"

section .data
    var1    dw      60
    var2    dw      80
    var3    dw      7
    var4    dw      0

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ebx,    ebx
    xor     ecx,    ecx
    
    mov     ax,     [var2]
    mov     bx,     -1
    imul    bx
    mov     bx,     [var3]
    cwd
    idiv    bx
    mov     bx,     dx
    mov     ax,     [var1]
    mov     cx,     -5
    imul    cx
    cwd
    idiv    bx   
   
    mov     [var4], ax
    
    ret
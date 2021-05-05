;André Paiva

%include "io.inc"

section .data
    var1    db      20
    var2    db      15
    var3    db      4
    var4    db      0

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    
    ;exercício 1: var4 = (var1 * 5)/(var2 - 3)
    xor     eax,    eax
    xor     ecx,    ecx
    mov     al,     [var1]
    mov     cl,     5
    imul    cl
    mov     cl,     [var2]
    sub     cl,     3
    idiv    cl
    mov     [var4], al
    
    ;exercício 2: var4 = (var1 * -5)/(-var2 % var3)
    xor     eax,    eax
    xor     ecx,    ecx
    mov     al,     [var2]
    mov     bl,     -1
    imul    bl
    mov     bl,     [var3]
    idiv    bl
    mov     bl,     ah
    xor     eax,    eax
    mov     al,     [var1]
    mov     bh,     -5
    imul    bh
    idiv    bl
    mov     [var4], al
    
    ret
;André Paiva

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ecx,    ecx
    
    ;CF e OF permanecem em 0.
    ;Quociente: F9h = -7
    ;Resto: F5h = -11
    mov     ax,     -95
    cbw
    mov     cl,     12
    idiv    cl
    
    ret
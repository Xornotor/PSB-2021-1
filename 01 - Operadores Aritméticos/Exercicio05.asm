;André Paiva

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ecx,    ecx
    xor     edx,    edx
    
    ;CF e OF permanecem em 0.
    ;Quociente: FFEFh = -17
    ;Resto: FFD1h = -65489
    mov     ax,     -5147
    cwd
    mov     cx,     300
    idiv    cx
    
    ret
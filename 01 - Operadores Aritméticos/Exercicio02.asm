;André Paiva

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     edx,    edx
    
    ;exemplo1: multiplicação resulta em 250 < 256. CF e OF = 0.
    mov     al,     10
    mov     dl,     25
    mul     dl
    
    ;exemplo2: multiplicação resulta em 260 > 256. CF e OF = 1.
    mov     al,     10
    mov     dl,     26
    mul     dl
    
    ret
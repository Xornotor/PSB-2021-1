%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     edx,    edx
    
    ;Multiplicação resulta em -250, CF e OF = 1
    ;Provavelmente pela notação complemento de 2 de 0F6h
    ;A multiplicação deve ter resultado em um valor maior que 11111111
    mov     dl,     25
    mov     al,     0F6h
    imul    dl 
    
    ret
%include "io.inc"

section .data
    msg1    db      "Hello World"
    msg2    db      "AB"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    
    mov     esi,    msg2
    mov     edi,    msg1
    
    cld
    
    movsb
    
    ret
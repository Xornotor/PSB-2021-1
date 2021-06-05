%include "io.inc"

segment .data
    block1  db      "String1"
    block2  db      "Stling1"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     ecx,    ecx
    xor     edx,    edx
    
    cld
    mov     esi,    block1
    mov     edi,    block2
    mov     ecx,    7
    repe    cmpsb
    jne     onward
    mov     edx,    1
    jmp     finish
    
onward:
    mov     edx,    0
    
finish:    
    ret
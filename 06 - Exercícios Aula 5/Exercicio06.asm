%include "io.inc"

section .data
    array1  dd      1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    
section .bss
    array2  resd    10

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ecx,    ecx
    
    cld
    mov     esi,    array1
    mov     edi,    array2
    mov     ecx,    10
    
lp:
    lodsd
    stosd
    loop    lp    
    
    ret
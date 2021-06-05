%include "io.inc"

section .data
    array1  dd      1,2,3,4,5
    array2  dd      6,7,8,9,10

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     ecx,    ecx
    
    mov     esi,    array1
    mov     edi,    array2
    mov     ecx,    5
    
    rep     movsd
    
    ret
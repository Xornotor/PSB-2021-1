%include "io.inc"

section .data
    vet1    db              1,2,3,4,5
    
section .bss
    vet2    resb            5

section .text
global CMAIN
CMAIN:
    mov     ebp,            esp
    xor     eax,            eax
    xor     ebx,            ebx
    xor     ecx,            ecx
    xor     edx,            edx
    
    mov     bl,             5
    mov     cl,             5
    mov     edx,            0
    
LP:
    mov     dl,             5
    sub     dl,             cl
    mov     dl,             [vet1+edx]
    mov     [vet2+ecx-1],   dl
       
    loop    LP   
    
    ret
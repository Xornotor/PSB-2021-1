%include "io.inc"

section .bss
    array   resd            100

section .text
global CMAIN
CMAIN:
    mov     ebp,            esp
    xor     eax,            eax
    xor     ebx,            ebx
    xor     ecx,            ecx
    xor     edx,            edx
    
    cld
    
    mov     edi,            array
    mov     ecx,            100
    mov     eax,            12

lp:
    mov     [array+ebx],    edx
    add     ebx,            4
    inc     edx
    scasd
    je      found
    loop    lp
    
    jmp     onward

found:
    sub     edi,    4
    
onward:
    ret
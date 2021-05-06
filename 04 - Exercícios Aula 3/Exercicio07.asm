;André Paiva

%include "io.inc"

section .text

global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ebx,    ebx
    xor     ecx,    ecx
    xor     edx,    edx
    
    ;inicialização de eax, ebc e ecx
    mov     eax,    7FFFFFF8h
    mov     ebx,    0
    mov     ecx,    7FFFFFFCh
    
WHILE:
    inc     eax
    cmp     eax,    ecx
    je      EDX10
    mov     edx,    20
    jmp     CMPAXBX
      
EDX10:
    mov     edx,    10
    jmp     CMPAXBX
    
CMPAXBX:
    cmp     eax,    ebx
    jg      WHILE
    ret
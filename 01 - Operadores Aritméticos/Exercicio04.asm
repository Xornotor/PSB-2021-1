;André Paiva

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     ecx,    ecx
    
    ;o registrador dx está sendo usado para armazenar o
    ;resto da divisão. sem a limpeza de edx na
    ;inicialização, o resultado da divisão do exemplo 2
    ;estará incorreto.
    xor     edx,    edx
    
    ;exemplo 1
    ;quociente: 14h = 20
    ;resto: 0Bh = 11
    mov     ax,     251
    mov     cl,     12
    div     cl
        
    ;exemplo 2
    ;quociente: 11h = 17
    ;resto: 2fh = 47
    mov     ax,     141Bh
    mov     cx,     012Ch
    div     cx
    
    ret
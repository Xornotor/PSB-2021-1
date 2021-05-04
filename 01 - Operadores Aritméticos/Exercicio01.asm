;André Paiva
;Justificativas dos flags no .txt

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    
    ;exemplo 1
    mov     al,     -5
    sub     al,     123     ;flag SF ativo
    
    ;exemplo 2
    mov     al,     -5
    sub     al,     124     ;flag OF ativo
    
    ;exemplo 3
    mov     al,     -5
    add     al,     132     ;flags CF e OF ativos
    add     al,     1       ;flags SF e OF ativos
    
    ;exemplo 4
    sub     al,     al      ;flags PF e ZF ativos
    
    ;exemplo 5
    mov     al,     127
    add     al,     129     ;flags CF, PF e ZF ativos
    
    ret
;André Paiva

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov     ebp,    esp
    xor     eax,    eax
    xor     edx,    edx
    
    ;caso 1
    ;o resultado da subtração é -1 (11111111)
    ;causando um carry no nibble menos significativo (AF = 1)
    ;causando bit carry 1 (CF = 1)
    ;causando bit de sinal negativo 1 (SF = 1)
    ;e quantidade par de bits 1 (8) (PF = 1)
    mov     al,     56
    mov     dl,     57
    cmp     al,     dl
    
    ;caso 2
    ;o resultado da subtração é 99 (01100011)
    ;subtração: 200 + complemento de 2 de 101 > 127 (OF = 1)
    ;quantidade par de bits 1 (4) (PF = 1)
    mov     al,     200
    mov     dl,     101
    cmp     al,     dl
    
    ;caso 3
    ;o resultado da subtração é -99 (10011101)
    ;subtração: 101 + complemento de 2 de 200 > 127 (signed) (OF = 1)
    ;valor negativo (signed) (SF = 1)
    ;nibble menos significativo gerou carry (AF = 1)
    ;NÃO ENTENDI O FLAG DE CARRY
    mov     al,     101
    mov     dl,     200
    cmp     al,     dl
    
    ;caso 4
    ;o resultado da subtração é 0 (00000000)
    ;por consequência, ZF = 1 (logo, AL = DL)
    ;quantidade par de bits 1 (0) (PF = 1)
    mov     al,     200
    mov     dl,     200
    cmp     al,     dl
    
    ;caso 5
    ;o resultado da subtração é 0 (00000000)
    ;por consequência, ZF = 1 (logo, AL = DL)
    ;quantidade par de bits 1 (0) (PF = 1)
    mov     al,     -105
    mov     dl,     -105
    cmp     al,     dl
    
    ;caso 6
    ;o resultado da subtração é -1 (11111111)
    ;causando um carry no nibble menos significativo (AF = 1)
    ;causando bit carry 1 (CF = 1)
    ;causando bit de sinal negativo 1 (SF = 1)
    ;e quantidade par de bits 1 (8) (PF = 1)
    mov     al,     -125
    mov     dl,     -124
    cmp     al,     dl
    
    ;caso 7
    ;o resultado da subtração é 1 (00000001)
    ;não ouve overflow, valor maior que 127 ou menor que 128
    ;quantidade ímpar de bits 1 (1)
    ;valor positivo
    ;nibble menos significativo não gera carry
    mov     al,     -124
    mov     dl,     -125
    cmp     al,     dl
    
    ret
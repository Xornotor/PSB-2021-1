%include "io.inc"

section .data 
    opera   db              "+-*/ "
    calc    db              "-475 27 + 2 / 1345 879 - 19 / *"
    size    equ             $ - calc

section .text
global CMAIN
CMAIN:
    mov     ebp,            esp
    xor     eax,            eax
    xor     ebx,            ebx
    xor     ecx,            ecx
    xor     edx,            edx
    
    cld
    
    mov     esi,            calc
    mov     ecx,            size

lp:
    mov     edi,            opera
    
    cmpsb
    je      call_soma
    dec     esi
    
    cmpsb
    je      detec_espaco_a
    dec     esi
    
    cmpsb
    je      call_mul
    dec     esi
    
    cmpsb
    je      call_div
    dec     esi
    
    cmpsb
    je      detec_espaco_b
    dec     esi
    
    mov     edx,            10
    imul    edx
    mov     edx,            size
    sub     edx,            ecx
    mov     dl,             [calc+edx]
    sub     edx,            48
    add     eax,            edx
    inc     esi
    dec     edi
    cmpsb
    je      detec_espaco_c1
    dec     esi
    
    loop    lp    
    
    ret

volta_loop:
    loop    lp
    jmp     finish
   
         
detec_espaco_a:
    mov     edi,            opera
    add     edi,            4
    cmpsb
    je      call_sub
    dec     esi
    mov     edi,            calc
    add     edi,            size
    cmpsb
    je      call_sub
    dec     esi
    mov     ebx,            -1
    jmp     volta_loop
       
detec_espaco_b:
    jmp     volta_loop 
    
detec_espaco_c1:
    cmp     ebx,            0
    jz      detec_espaco_c2
    imul    ebx
    
detec_espaco_c2:
    push    eax
    dec     ecx
    xor     eax,            eax
    xor     ebx,            ebx
    jmp     volta_loop
    
end_call:
    xor     eax,            eax
    pop     ebx
    xor     ebx,            ebx
    jmp     volta_loop
    
call_soma:
    call    somar
    jmp     end_call
    
call_sub:
    call    subtrair
    jmp     end_call
            
call_mul:
    call    multiplicar
    jmp     end_call
    
call_div:
    call    dividir
    jmp     end_call

somar:
    push    ebp
    mov     edx,            esp
    add     edx,            16
    mov     ebp,            edx
    mov     eax,            [ebp-8]
    add     [ebp-4],        eax
    pop     ebp
    ret
    
subtrair:
    push    ebp
    mov     edx,            esp
    add     edx,            16
    mov     ebp,            edx
    mov     eax,            [ebp-8]
    sub     [ebp-4],        eax
    pop     ebp
    dec     ecx
    jnz     calc_continua
    inc     ecx
     
calc_continua:
    ret
    
multiplicar:
    push    ebp
    mov     edx,            esp
    add     edx,            16
    mov     ebp,            edx
    mov     eax,            [ebp-4]
    mov     ebx,            [ebp-8]
    imul    ebx
    mov     [ebp-4],        eax    
    pop     ebp    
    ret
    
dividir:
    push    ebp
    mov     edx,            esp
    add     edx,            16
    mov     ebp,            edx
    mov     eax,            [ebp-4]
    cdq
    mov     ebx,            [ebp-8]
    idiv    ebx
    mov     [ebp-4],        eax    
    pop     ebp    
    ret   
    
finish:
    pop     eax
    ret
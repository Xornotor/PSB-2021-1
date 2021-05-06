;André Paiva

%include "io.inc"

section .data
    RESULT  DB          0
    BLA     DB          13
    BLE     DB          21
    BLI     DB          4

section .text
global CMAIN
CMAIN:
    mov     ebp,        esp
    xor     eax,        eax
    xor     ebx,        ebx
    
    mov     al,         [BLE]
    mov     bl,         -1
    imul    bl
    mov     ah,         0
    add     al,         [BLA]
    add     al,         [BLA]
    add     al,         [BLI]
    mov     [RESULT],   al
    
    ret
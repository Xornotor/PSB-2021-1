;André Paiva

%include "io.inc"

section .data
    RESULT  DB          0
    BLA     DB          5
    BLE     DB          11
    BLI     DB          19

section .text
global CMAIN
CMAIN:
    mov     ebp,        esp
    xor     eax,        eax
    
    mov     al,         [BLI]
    add     al,         [BLE]
    add     al,         [BLA]
    mov     [RESULT],   al
    
    ret
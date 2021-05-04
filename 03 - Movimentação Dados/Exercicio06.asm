%include "io.inc"

section .data
    Byte1   DB  9Bh
    Word1   DW  0A69h 

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor     eax,    eax
    xor     edx,    edx
    xor     ecx,    ecx
    movsx   ax,     [Word1] 
    xchg    al,     dl
    movzx   dx,     [Byte1]
    movsx   cx,     [Byte1]
ret
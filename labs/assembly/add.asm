; ;A:=B
; mov eax, [num1]
; mov ebx, [num2]
; ;A:=A+B 
; add eax,ebx 




section .data
ten db 10

section .bss
input resb 4

section .text

global _start
_start:

mov eax, 3
mov ebx, 0
mov ecx, input
mov edx, 4
int 0x80

mov ebx, 10
imul ebx, ecx

mov eax, 1
int 0x80


atoi:

push ebx        ; preserve working registers
push edx
push esi

mov eax, 0        ; initialize the accumulator
nxchr:
    mov ebx, 0        ; clear all the bits in EBX
    mov bl, [esi]     ; load next character in BL
    inc esi           ; and advance source index

    cmp bl, '0'       ; does character preceed '0'?
    jb  inval         ; yes, it's not a numeral jb:jump below
    cmp bl, '9'       ; does character follow '9'?
    ja  inval         ; yes, it's not a numeral ja:jump above

    sub bl, '0'       ; else convert numeral to int
    ; mul ten          ; multiply accumulator by ten. %eax * 10
    add ebx, eax      ; and then add the new integer
    jmp nxchr         ; go back for another numeral

inval:
   pop  esi           ; recover saved registers
   pop  edx
   pop  ebx
   ret

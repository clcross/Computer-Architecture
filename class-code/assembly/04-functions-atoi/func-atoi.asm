; func-sub-vars   print an integer from storage and from a register

; Equivalent C code
; #include <stdlib.h>
; int sub(int x, int y){
; return 2*x+y;
; }

; int main(int argc, char ** argv){
;   int a;
;   a = atoi(argv[1]);
;   return sub(argc,a);
; }

; Declare some external functions
extern printf                    ; the C function, to be called
extern atoi                      ; the C function, to be called

SECTION .data                    ; Data section, initialized variables

fmt:    db "eax=%x", 10, 0 ; The printf format, "\n",'0'

SECTION .text                   ; Code section.

global main  ; the standard gcc entry point

main:    ; the program label for the entry point
    push    ebp  ; set up stack frame
    mov     ebp,esp

    mov     eax, [ebp+0Ch]
    mov     ecx, [eax+4]
    push    ecx
    call    atoi
    add     esp, 4       ; pushed once

    ; call printf on atoi
    push    eax  ; value of a+2
    push    dword fmt ; address of ctrl string
    call    printf  ; Call C function
    add     esp, 8  ; pop stack 2 push times 4 bytes

    ; exit cleanly
    mov     esp, ebp ; takedown stack frame
    pop     ebp  ; same as "leave" op
    mov eax,0  ;  normal, no error, return value
    ret   ; return

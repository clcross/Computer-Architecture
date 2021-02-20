; func   print an integer from storage and from a register
; Assemble: nasm -f elf -l func.o  func.asm
; Link:  gcc -m32 -o func  func.o
; Run:  func
; Output: eax=beef

; Equivalent C code
; /* func  print an int and an expression */
; #include <stdio.h>
; int sub() { return 0xBEEF; }
; int main()
; {
;   printf("eax=%x\n", sub());
;   return 0;
; }

; Declare some external functions
;
extern printf                    ; the C function, to be called

SECTION .data                    ; Data section, initialized variables

fmt:    db "eax=%x", 10, 0 ; The printf format, "\n",'0'

SECTION .text                   ; Code section.

global main  ; the standard gcc entry point

sub:
    push    ebp;
    mov     ebp, esp;
    mov     eax, 0BEEFh
    pop     ebp;
    ret;

main:    ; the program label for the entry point
    push    ebp  ; set up stack frame
    mov     ebp,esp

    ; Lets call sub
    call    sub

    ; call printf
    push    eax  ; value of a+2
    push    dword fmt ; address of ctrl string
    call    printf  ; Call C function
    add     esp, 8  ; pop stack 2 push times 4 bytes

    ; exit cleanly
    mov     esp, ebp ; takedown stack frame
    pop     ebp  ; same as "leave" op
    mov     eax,0  ;  normal, no error, return value
    ret     ; return

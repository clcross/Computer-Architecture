; Declare some external functions
extern printf                    ; the C function, to be called

SECTION .data                    ; Data section, initialized variables

a_fmt:   db "a = %d", 10, 0      ; print off i
b_fmt:   db "b = %d", 10, 0      ; print off i
a_value: dq 0001h           ; a's value
b_value: dq 000Fh           ; a's value

SECTION .text                    ; Code section.

global main  ; the standard gcc entry point

main:    ; the program label for the entry point
    push    ebp  ; set up stack frame
    mov     ebp,esp

    ; print off a
    mov     eax, [dword a_value]
    push    eax
    push    dword a_fmt
    call    printf
    add     esp, 8

    ; print off b
    mov     ebx, [dword b_value]
    push    ebx
    push    dword b_fmt
    call    printf
    add     esp, 8

    ; restore a and b (since printf overrides eax and ebx)
    mov     eax, [dword a_value]
    mov     ebx, [dword b_value]

    ; perform an and.
    and     eax, ebx
    cmp     eax, 0  ; compare the result of the and to 0
    je      return2 ; jump to return2 if eax is 0.
return1:    mov     eax, 1      ; NOTICE: a label doesn't need to be on its own line!
    jmp     exit
return2:
    mov     eax, 2
    jmp     exit

exit:
    ; exit cleanly
    mov     esp, ebp ; takedown stack frame
    pop     ebp  ; same as "leave" op
    ret     ; return

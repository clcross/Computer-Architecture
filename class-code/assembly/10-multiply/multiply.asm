; Declare some external functions
extern printf                    ; the C function, to be called

SECTION .data                    ; Data section, initialized variables

a_fmt:   db "a * b = %d", 10, 0

a_value: dq 0x00000040               ; a's value
b_value: dq 0x00000002               ; b's value

SECTION .text                    ; Code section.

global main  ; the standard gcc entry point

main:    ; the program label for the entry point
    push    ebp  ; set up stack frame
    mov     ebp,esp

    mov     eax, [dword a_value] ; get value of a
    mov     ecx, [dword b_value] ; get value of b

    imul    eax, ecx

    push    eax         ; push the value of a for printf
    push    dword a_fmt ; print a's value
    call    printf      ; Call C function
    add     esp, 8      ; pop stack 2 push times 4 bytes

exit:
    ; exit cleanly
    mov     esp, ebp ; takedown stack frame
    pop     ebp      ; same as "leave" op
    mov     eax, 0   ; exit cleanly
    ret

; Declare some external functions
extern printf                    ; the C function, to be called

SECTION .data                    ; Data section, initialized variables

a_fmt:   db "a = %d", 10, 0
b_fmt:   db "b = %d", 10, 0
c_fmt:   db "c = %d", 10, 0

a_value: dq 0x00000040               ; a's value

SECTION .text                    ; Code section.

global main  ; the standard gcc entry point

main:    ; the program label for the entry point
    push    ebp  ; set up stack frame
    mov     ebp,esp

    mov     eax, [dword a_value] ; get value of a

    push    eax         ; Save the value of a
    push    eax         ; push the value of a for printf
    push    dword a_fmt ; print a's value
    call    printf      ; Call C function
    add     esp, 8      ; pop stack 2 push times 4 bytes
    pop     eax         ; get the saved value back (the first push.)

    push    eax         ; Save the value of a
    shl     eax, 3      ; b (which is now eax) is a * 8 (or a << 3)
    push    eax         ; value of b
    push    dword b_fmt ; print b's value
    call    printf      ; Call C function
    add     esp, 8      ; pop stack 2 push times 4 bytes
    pop     eax         ; get the saved value back (the first push.)

    shr     eax, 4      ; c (which is now eax) is b / 16 (or b >> 4)
    push    eax         ; value of c
    push    dword c_fmt ; print c's value
    call    printf      ; Call C function
    add     esp, 8      ; pop stack 2 push times 4 bytes

exit:
    ; exit cleanly
    mov     esp, ebp ; takedown stack frame
    pop     ebp      ; same as "leave" op
    mov     eax, 0   ; exit cleanly
    ret

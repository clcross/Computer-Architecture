; Declare some external functions
extern printf                    ; C function to be called
extern scanf                     ; C function to be called

SECTION .data                    ; Data section, initialized variables

sum_fmt    : db "pi + a = %f", 10, 0
mul_fmt    : db "(pi + a)*input = %f", 10, 0
scan_fmt   : db "%f", 0

a_value    : dd 2.0                      ; a's value
pi         : dd 3.1415926                ; mmmm, pi...
single_sum : dd 0.0
user_input : dd 0.0
single_mul : dd 0.0
                                     ; also dq = 8 bytes, so this is a float, not a double!!!!
SECTION .text                    ; Code section.

global main  ; the standard gcc entry point

main:    ; the program label for the entry point
    push    ebp  ; set up stack frame
    mov     ebp,esp

    finit                      ; reset floating registers, ALWAYS START WITH THIS!
    fld     dword [pi]         ; put pi on the stack
    fld     dword [a_value]    ; put a on the stack
    fadd                       ; add the two SINGLE precision values on the stack
    fstp    dword [single_sum] ; store off the result into single_sum

    sub     esp,8            ; reserve stack for a double in stack
    mov     ebx, single_sum
    fld     dword [ebx]      ; load float
    fstp    qword [esp]      ; store float, since printf assumes a double (8 bytes), we conver to qword!
    push    dword sum_fmt    ; print a's value
    call    printf           ; Call C function
    add     esp, 12          ; subtract 8 bytes + 1 push = 12 bytes

    push user_input
    push scan_fmt
    call scanf
    add esp, 8

    finit                      ; reset floating registers, ALWAYS START WITH THIS!
    fld     dword [single_sum] ; put single_sum on the stack
    fld     dword [user_input] ; put input on the stack
    fmul                       ; add the two SINGLE precision values on the stack
    fstp    dword [single_mul] ; store off the result into single_sum

    sub     esp,8            ; reserve stack for a double in stack
    mov     ebx, single_mul
    fld     dword [ebx]      ; load float
    fstp    qword [esp]      ; store float, since printf assumes a double (8 bytes), we convert to qword!
    push    dword mul_fmt    ; print a's value
    call    printf           ; Call C function
    add     esp, 12          ; subtract 8 bytes + 1 push = 12 bytes

exit:
    ; exit cleanly
    mov     esp, ebp ; takedown stack frame
    pop     ebp      ; same as "leave" op
    mov     eax, 0   ; exit cleanly
    ret

; Declare some external functions
extern printf                    ; the C function, to be called

SECTION .data                    ; Data section, initialized variables

fmt:     db "i = %d", 10, 0      ; print off i

SECTION .text                    ; Code section.

global main  ; the standard gcc entry point

main:    ; the program label for the entry point
    push    ebp  ; set up stack frame
    mov     ebp,esp
    push    ecx;                ; ecx will be our i

    mov     dword [ebp-4], 0    ; make sure to zero out i
    jmp     loop_end            ; notice we jump to then end to do our check
loop_start:
    mov     eax, dword [ebp-4]  ; grab i
    add     eax, 1              ; add 1
    mov     dword [ebp-4], eax  ; update i to i + 1
loop_end:
    cmp     dword [ebp-4], 0Ah  ; compare against 10
    jge     exit                ; if i > 10, goto exit
    mov     ecx, dword [ebp-4]  ; get i from memory
    
    ; Now call printf
    push    ecx
    push    dword fmt
    call    printf
    add     esp, 8

    jmp     loop_start
exit:
    ; exit cleanly
    pop     ecx      ; clean up ecx
    xor     eax, eax ; zero out eax
    mov     esp, ebp ; takedown stack frame
    pop     ebp  ; same as "leave" op
    ret     ; return

        mov     1       [0+five]        load reg1 with 5 (uses symbolic address)
        mov     2       [1+1]           load reg2 with -1 (uses numeric address)
start   add     1       2       1       decrement reg1
        cmp     0       1
        je      4                       goto end of program when reg1==0
        cmp     0       0
        je      start                   go back to the beginning of the loop
        noop
done    halt                            end of program
five    dd      5
neg1    dd      -1
stAddr  dd      start                   will contain the address of start (2)

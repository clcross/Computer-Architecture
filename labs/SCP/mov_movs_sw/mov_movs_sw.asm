        mov     1       [0+five]        load reg1 with 5 (uses symbolic address)
        mov     2       [1+1]           load reg2 with -1 (uses numeric address)
start   add     1       2       1       decrement reg1
        and     3       2       3
        noop
done    halt                            end of program
five    dd      5
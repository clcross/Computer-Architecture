func-sub-vars: func-sub-vars.asm
	nasm -felf32 func-sub-vars.asm
	gcc -m32 -o func-sub-vars func-sub-vars.o
	./func-sub-vars 10
clean:
	rm func-sub-vars.o func-sub-vars

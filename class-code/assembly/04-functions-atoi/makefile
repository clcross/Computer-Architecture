func-atoi: func-atoi.asm
	nasm -felf32 func-atoi.asm
	gcc -m32 -o func-atoi func-atoi.o
	./func-atoi 10

clean:
	rm func-atoi.o func-atoi

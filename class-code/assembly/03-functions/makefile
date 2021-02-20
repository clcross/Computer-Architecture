func: func.asm
	nasm -felf32 func.asm
	gcc -m32 -o func func.o
	./func

clean:
	rm func.o func

float: float.asm
	nasm -felf32 float.asm
	gcc -m32 -o float float.o
	./float
clean:
	rm float.o float

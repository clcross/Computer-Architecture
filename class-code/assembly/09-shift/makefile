shift: shift.asm
	nasm -felf32 shift.asm
	gcc -m32 -o shift shift.o
	./shift 10
clean:
	rm shift.o shift

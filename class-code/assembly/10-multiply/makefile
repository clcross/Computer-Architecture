multiply: multiply.asm
	nasm -felf32 multiply.asm
	gcc -m32 -o multiply multiply.o
	./multiply 10
clean:
	rm multiply.o multiply

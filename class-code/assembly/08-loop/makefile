loop: loop.asm
	nasm -felf32 loop.asm
	gcc -m32 -o loop loop.o
	./loop 10
clean:
	rm loop.o loop

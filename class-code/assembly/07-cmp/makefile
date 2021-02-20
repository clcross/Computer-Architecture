cmp: cmp.asm
	nasm -felf32 cmp.asm
	gcc -m32 -o cmp cmp.o
	./cmp
clean:
	rm cmp.o cmp

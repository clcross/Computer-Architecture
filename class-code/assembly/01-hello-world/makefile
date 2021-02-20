first: first.asm
	nasm -felf32 first.asm
	ld -melf_i386 -s -o first first.o
	./first
clean:
	rm first.o first

input: input.asm
	#nasm -felf64 input.asm
	nasm -felf32 input.asm
	ld -s -o input input.o /usr/lib/x86_64-linux-gnu/libc.a
	./input

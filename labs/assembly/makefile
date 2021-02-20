add: add.asm
	#nasm -felf64 input.asm
	nasm -felf32 add.asm
	ld -s -o add add.o /usr/lib/x86_64-linux-gnu/libc.a
	./add

addMac: add.asm
	#nasm -felf64 input.asm
	nasm -fmacho32 add.asm
	ld -macosx_version_min 10.7.0 -lSystem -o add add.o
	./add
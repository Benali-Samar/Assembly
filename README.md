#Explanation of hello_world.asm

#Hello world in assembly, the lowest level of programming


This hello world programme contain two sections that define the memory layout 
where this code should be stored in.

The first section is the text ".text", that contain the main instruction in the code,
like move "mov" and interrupt "int".

And the the Data section ".data" that contains the message itself the "hello world!\n", 
and the length of the message.

And the function that define the entry point is "_start" like "main" i C language.



#To compile do:

	-$ sudo apt install nasm
	-$ nasm -f elf32 -o hello-world.o hello_world.asm
	-$ ld -m elf_i386 hello-world hello-world.o 
	-$ ./hello-world

And here it is! seems too much for a just hello world program but yeah it is just assembly!


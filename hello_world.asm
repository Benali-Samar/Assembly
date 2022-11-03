;hello world in assembly 
;
;author : Benali Samar
;date : 02-nov-2022


global_start			; the entry point function

section .text:

_start:
	mov eax, 0x4  		 ;use the write syscall in unistd_32.h
	mov ecx, 1    		 ;use stdout
	mov ecx, message 	 ;use the message as the buffer
	mov edx, message_length  ;supply the msg length
	int 0x80		 ;invoke the syscall


	; the exit syscall
	mov eax, 0x1
	mov ebx, 0
	int 0x80


section .data:
	message: db "Hello wolrd!" , 0xA  ; the msg itself with the return to the new line (0xa=\n)
	message_length equ $-message  ; it contain approximately 12 characters so the nasm  will just
				      ; know that $- means the legnt of smth.

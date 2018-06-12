section .text
extern puts
global main 

main:
	push dword msg;
	call puts;
	add esp, byte 4;
	ret;

msg:
	db "Hola Mundo!",0


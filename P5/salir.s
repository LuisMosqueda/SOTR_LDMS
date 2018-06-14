.section .data

.section .text
.globl salir
salir:
pushl %ebp
movl %esp,%ebp
movl 8(%ebp),%ebx

movl $1,%eax

int$0x80

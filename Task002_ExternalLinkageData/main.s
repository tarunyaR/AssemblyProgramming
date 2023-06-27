.section .rodata
	msg_main_printf:
	.string "In Main, Number is %d \n"

.section .text
	.globl main
	.type main, @function
	main:
		pushl %ebp
		movl %esp,%ebp
		
		movl g_iNo,%eax
		pushl %eax
		pushl $msg_main_printf
		call printf
		addl $8, %esp

		call fun
		
		movl %ebp,%esp
		popl %ebp

		pushl $0
		call exit

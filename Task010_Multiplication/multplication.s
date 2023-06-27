.section .rodata
	msg_main_printf:
	.string "Enter two numbers"
	msg_main_scanf:
	.string "%d %d"
	msg_main_print2:
	.string "Multiplication %d"

.section .text
	.globl main
	.type main,@function
	main:
		pushl %ebp
		movl %esp, %ebp
		subl $12, %esp
		pushl $msg_main_printf
		call printf
		addl $4, %esp

		leal -8(%esp),%eax
		leal -4(%esp),%edx
		pushl %eax
		pushl %edx
		pushl $msg_main_scanf
		call scanf
		addl $12,%esp

		movl -4(%ebp),%eax
		movl -8(%ebp),%ecx

		mull %ecx
		movl %eax,-12(%ebp)

		pushl %eax
		pushl $msg_main_print2
		call printf
		addl $8,%esp

		pushl $0
		call exit
		


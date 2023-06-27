.section .rodata
	msg_main_printf:
	.string "iNo1= %d\niNo2=%d\niAns1=%d\niANs2=%d\n"

.section .text
	.globl main
	.type main,@function
	main:
		pushl %ebp
		movl %esp,%ebp
		subl $16,%esp
		movl $10,-4(%ebp)
		movl $20,-8(%ebp)

		#postDecrement
		movl -4(%ebp),%eax
		movl %eax,-12(%ebp)
		subl $1,-4(%ebp)

		#preDecrement
		
		subl $1,-8(%ebp)
		movl -8(%ebp),%eax
		movl %eax,-16(%ebp)

		movl -16(%ebp),%eax
		pushl %eax
		movl -12(%ebp),%eax
		pushl %eax
		movl -8(%ebp),%eax
		pushl %eax
		movl -4(%ebp),%eax
		pushl %eax
		pushl $msg_main_printf
		
		call printf
		addl $20,%esp

		push $0
		call exit

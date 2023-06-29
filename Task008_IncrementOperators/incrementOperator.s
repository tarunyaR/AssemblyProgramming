.section .rodata
	msg_main_printf:
	.string "iNo1 =%d \niNo2 = %d \niAns = %d \n iAns2 = %d \n"

.section .text
	.globl main
	.type main,@function
	main:
		pushl %ebp
		movl %esp,%ebp
		subl $16,%esp
		movl $10,-4(%ebp)	#iNo1
		movl $20,-8(%ebp)	#iNo2
		#preIncrement
		addl $1,-4(%ebp)
		movl -4(%ebp),%eax
		movl %eax,-12(%ebp) #iAns=iNo++
		#postIncrement
		movl -8(%ebp),%eax
		movl %eax,-16(%ebp)
		addl $1, -8(%ebp)
		movl -16(%ebp),%eax
		movl -12(%ebp),%edx
		movl -8(%ebp),%ecx
		movl -4(%ebp),%ebx
		pushl %eax
		pushl %edx
		pushl %ecx
		pushl %ebx 
		pushl $msg_main_printf
		call printf
		addl $20,%esp

		pushl $0
		call exit

		

.section .data
	.globl iNo1
	.type  iNo1,@object
	.size  iNo1, 4
	.align 4
	iNo1:
	.int 4

.section .bss
	.comm iNo2,4,4

.section .rodata
	msg_one_printf1:
	.string "Enter two number \t"
		
	msg_one_scanf:
	.string "%d %d"

	msg_one_printf2:
	.string "In main: iNo1= %d iNo2= %d iNo3=%d \n"

.section .text
	.globl main
	.type main,@function
	main:
		pushl %ebp
		movl %esp,%ebp

		pushl $msg_one_printf1
		call printf
		addl $4,%esp

		leal -4(%ebp),%eax #address of iNo3
		leal iNo2,%edx
		pushl %eax
		pushl %edx
		pushl $msg_one_scanf
		call scanf
		addl $12,%esp

		movl -4(%ebp),%eax # value of iNo3
		movl iNo2,%edx
		movl iNo1,%ecx
		pushl %eax
		pushl %edx
		pushl %ecx
		pushl $msg_one_printf2
		call printf
		addl $16,%esp

		call fun1
	
		pushl $0
		call exit

		

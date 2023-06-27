.section .bss
	.lcomm iNo1,4

.section .data
	.type iNo2,@object
	.size iNo2,4
	.align 4
	iNo2:
	.int 40

.section .rodata
	msg_func1_printf:
	.string "Enter a number: \t"
	msg_func1_scanf:
	.string "%d"
	msg_func1_printf2:
	.string "In func1, iNo1 is %d \n"
	msg_func2_printf:
	.string "In static func2"

.section .text
	.globl fun1
	.type fun1,@function
	fun1:
		pushl %ebp
		movl %esp,%ebp
		
		pushl $msg_func1_printf
		call printf
		addl $4,%esp

		leal iNo1, %ebx
		pushl %ebx
		pushl $msg_func1_scanf
		call scanf
		addl $8,%esp

		movl iNo1,%eax
		movl iNo2,%edx
		pushl %edx
		pushl %eax
		pushl $msg_func1_printf2
		call printf
		addl $12, %esp

		call func2
		
		movl %ebp,%esp
		popl %ebp
		ret

	#.lcomm func2
	.type func2,@function
	func2:
		pushl %ebp
		movl %esp,%ebp

		pushl $msg_func2_printf
		call printf
		addl $4,%esp

		movl %ebp,%esp
		popl %ebp
		ret
		
	

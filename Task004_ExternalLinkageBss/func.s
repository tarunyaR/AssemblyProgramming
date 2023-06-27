.section .bss
	.comm g_iNo,4,4

.section .rodata
	msg_fun_printf1:
	.string "\nEnter number"

	msg_fun_scanf:
	.string "%d"

	msg_func_printf2:
	.string "\nin Fun g_iNo is %d"

.section .text
	.globl fun
	.type fun,@function
	fun:
		pushl %ebp
		movl %esp,%ebp
		
		pushl $msg_fun_printf1
		call printf
		addl $4, %esp

		leal g_iNo,%ebx
		pushl %ebx
		pushl $msg_fun_scanf
		call scanf
		addl $8,%esp
		
		movl g_iNo,%eax
		pushl %eax
		pushl $msg_func_printf2
		call printf
	
		movl %ebp, %esp
		popl %ebp
		
		ret

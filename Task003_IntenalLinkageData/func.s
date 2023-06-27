.section .data
	#.globl g_iNo
	.type g_iNo,@object
	.size g_iNo,4
	.align 4
     g_iNo:
	.int 10

.section .rodata
	msg_fun_printf:
	.string "In fun Number is %d"

.section .text
	.globl fun
	.type fun,@function
	fun:
		pushl %ebp
		movl %esp,%ebp
		
		movl g_iNo,%eax
		pushl %eax
		pushl $msg_fun_printf
		call printf 		
		add $8, %eax
	
		movl %ebp, %esp
		popl %ebp
		
		ret
		

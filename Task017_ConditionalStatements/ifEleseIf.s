.section .rodata	
	msg_Enter_Number:
	.string "Enter number:\t"
	msg_scanf:
	.string "%u"
	msg_Less_than:
	.string "Number is less than 2\n"
	msg_greater_than:
	.string "Number is greater than 2\n"
	msg_equal:
	.string "Number is equal to 2\n"

.section .text
.globl main
.type main,@function
main:
	pushl %ebp
	movl %esp,%ebp
	
	subl $4, %esp

	pushl $msg_Enter_Number
	call printf
	addl $4,%esp

	leal -4(%ebp),%ebx
	pushl %ebx
	pushl $msg_scanf
	call scanf
	call printf
	addl $8, %esp
	xor %eax,%eax
	xor %edx,%edx

	cmpl $2,-4(%ebp)
	je label_equalto
	jg label_greater_than  	#jnle
	pushl $msg_Less_than
	call printf
	addl $4,%ebp
	jmp label_exit

label_greater_than:
	pushl $msg_greater_than
	call printf
	addl $4,%ebp
	jmp label_exit

label_equalto:
	pushl $msg_equal
	call printf
	addl $4,%ebp
label_exit:
	pushl $0
	call exit


	
		
	

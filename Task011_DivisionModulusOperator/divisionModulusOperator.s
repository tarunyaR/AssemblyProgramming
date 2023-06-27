.section .rodata
	msg_main_enter_Numerator:
	.string "Enter Numerartor"
	msg_main_scan:
	.string "%d"
	msg_main_enter_Denominator:
	.string "Enter Denominator"
	msg_Quotient:
	.string "Quotient is %d"
	msg_Remainder:
	.string "Remainder is %d"

.section .text
	.globl main
	.type main,@function
	main:
		pushl %ebp
		movl %esp,%ebp

		subl $12,%esp
		
		pushl $msg_main_enter_Numerator
		call printf
		add $4, %esp

		leal -4(%ebp),%eax #Numerator
		xorl %edx,%edx     #zero out
		pushl %eax
		pushl $msg_main_scan
		call scanf
		addl $8,%esp
		
		leal -8(%ebp),%ecx #Denominator
		pushl %ecx
		pushl $msg_main_scan
		call scanf
		addl $8,%esp

		divl %ecx

		movl %edx,12(%ebp)	#quotient
		pushl %eax
		pushl $msg_Quotient
		call printf
		addl $8,%esp

		movl -12(%ebp),%eax	#remainder
		pushl %eax
		pushl $msg_Remainder
		call printf
		addl $8,%esp
		

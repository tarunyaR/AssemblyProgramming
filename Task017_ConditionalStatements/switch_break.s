#switch style

.section .rodata
	msg_Choice_print:
	.string "1.Addition\n2. Subtraction\n3.Multiplication\n4.Division\n"
	msg_Enter_Choice:
	.string "Enter your Choice: \t"
	msg_scanf:
	.string "%d"
	msg_Addition:
	.string "Addition\n"
	msg_Subtaction:
	.string "Subtraction\n"
	msg_Division:
	.string "Division\n"
	msg_Multiplication:
	.string "Multiplication\n"
	msg_Invalid_Choice:
	.string "Invalid Choice\n"

.section .text
.globl main
.type main,@function
main:
	pushl %ebp
	movl %esp,%ebp
	
	subl $4,%esp

	pushl $msg_Choice_print
	call printf
	addl $4,%esp

	pushl $msg_Enter_Choice
	call printf
	addl $4,%esp

	leal -4(%ebp),%ebx   #iChoice
	pushl %ebx
	pushl $msg_scanf
	call scanf
	addl $8,%esp

	xor %eax,%eax
	xor %edx,%edx

	cmpl $1,-4(%ebp)
	je label_Addition
	cmpl $2,-4(%ebp)
	je label_Subtraction
	cmpl $3,-4(%ebp)
	je label_Multiplication
	cmpl $4,-4(%ebp)
	je label_Division
	jmp label_invalid_Choice

label_invalid_Choice:
	pushl $msg_Invalid_Choice 
	call printf
	addl $4,%esp
	jmp label_exit

label_Addition:
	pushl $msg_Addition
	call printf
	addl $4,%esp
	jmp label_exit


label_Subtraction:
	pushl $msg_Subtaction
	call printf
	addl $4,%esp
	jmp label_exit

label_Multiplication:
	pushl $msg_Multiplication
	call printf
	addl $4,%esp
	jmp label_exit
	
label_Division:
	pushl $msg_Division
	call printf
	addl $4,%esp
	jmp label_exit


label_exit:
	pushl $0
	call exit

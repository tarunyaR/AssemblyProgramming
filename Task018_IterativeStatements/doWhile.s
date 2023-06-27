.section .rodata
	msg_main_print1:
	.string "Enter number: \t"
	msg_main_scanf:
	.string "%d"
	msg_main_print_statement:
	.string "%d\n"

.section .text
.globl main
.type main, @function
main:
	pushl %ebp
	movl %esp,%ebp 
	
	subl $8,%esp
	
	pushl $msg_main_print1
	call printf
	addl $4,%esp

	leal -4(%ebp),%ebx   #iNo
	pushl %ebx
	pushl $msg_main_scanf
	call scanf
	addl $8,%esp
	
	movl $0,-8(%ebp)  #assignment iCounter
	movl -8(%ebp),%eax

label_do_while_statement:
	pushl %eax
	pushl $msg_main_print_statement
	call printf
	addl $8,%esp

	#addl $1,-8(%ebp) 		#manipulation of iCounter
	addl $1,%eax		#manipulation of iCounter
	#movl %eax,-8(%ebp)


	#movl -8(%ebp),%eax	#iCounter
	movl -4(%ebp),%edx	#iNo
	cmpl %edx,%eax
	jl label_do_while_statement
	pushl $0
	call exit

	

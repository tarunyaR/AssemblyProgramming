	.file	"regesterStorageClass.c"
	.section	.rodata
.LC0:
	.string	"%d %d %d %d"
	.text
	.globl	func2
	.type	func2, @function
func2:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$190, %ebx
	movl	$170, %esi
	subl	$12, %esp
	pushl	%esi
	pushl	%ebx
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$.LC0
	call	printf
	addl	$32, %esp
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	func2, .-func2
	.globl	func
	.type	func, @function
func:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$90, %ebx
	movl	$70, %esi
	subl	$12, %esp
	pushl	%esi
	pushl	%ebx
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$.LC0
	call	printf
	addl	$32, %esp
	subl	$8, %esp
	pushl	%esi
	pushl	%ebx
	call	func
	addl	$16, %esp
	subl	$8, %esp
	pushl	%esi
	pushl	%ebx
	call	func2
	addl	$16, %esp
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	func, .-func
	.section	.rodata
.LC1:
	.string	"%d %d %d %d %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$24, %esp
	movl	$10, %ebx
	movl	$20, %esi
	movl	$30, %edi
	movl	$40, -28(%ebp)
	movl	$140, -32(%ebp)
	subl	$8, %esp
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	$.LC1
	call	printf
	addl	$32, %esp
	subl	$8, %esp
	pushl	%esi
	pushl	%ebx
	call	func
	addl	$16, %esp
	movl	$0, %eax
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

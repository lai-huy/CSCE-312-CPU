	.file	"Matrix.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$2, -20(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	matrixmult
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	matrixmult
	.type	matrixmult, @function
matrixmult:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	matrixmult, .-matrixmult
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:

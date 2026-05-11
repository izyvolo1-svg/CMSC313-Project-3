	.file	"Project_3.c"
	.text
	.section	.rodata
.LC0:
	.string	"rb"
.LC1:
	.string	"binary.out"
.LC2:
	.string	"File not found "
.LC3:
	.string	"%08X"
.LC4:
	.string	"%02X "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$16, -92(%rbp)
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -56(%rbp)
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L5:
	cmpq	%rdx, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L7
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L7:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L8
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L9
.L8:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movl	%eax, -96(%rbp)
	jmp	.L10
.L17:
	movl	-96(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	movq	$0, -88(%rbp)
	jmp	.L11
.L14:
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jbe	.L12
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	ja	.L12
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	jmp	.L13
.L12:
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
.L13:
	addq	$1, -88(%rbp)
.L11:
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L14
	movl	$124, %edi
	call	putchar@PLT
	movq	$0, -80(%rbp)
	jmp	.L15
.L16:
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addq	$1, -80(%rbp)
.L15:
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L16
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movl	%eax, -96(%rbp)
	movl	$10, %edi
	call	putchar@PLT
.L10:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L9:
	movq	%rbx, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

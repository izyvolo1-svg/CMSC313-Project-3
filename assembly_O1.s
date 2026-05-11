	.file	"Project_3.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
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
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	testq	%rax, %rax
	je	.L14
	movq	%rax, %r15
	movq	%rax, %rdi
	call	ftell@PLT
	movl	%eax, %ebx
	movq	%rsp, %r12
	leaq	.LC4(%rip), %r14
	movl	$46, %r13d
	jmp	.L4
.L14:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L1
.L16:
	movq	%r15, %rdi
	call	ftell@PLT
	movl	%eax, %ebx
	movl	$10, %edi
	call	putchar@PLT
.L4:
	movq	%r15, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%r12, %rdi
	call	fread@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L15
	movl	%ebx, %edx
	leaq	.LC3(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$32, %edi
	call	putchar@PLT
	movl	$0, %ebx
.L6:
	movzbl	(%rbx,%r12), %edx
	movq	%r14, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movzbl	(%rbx,%r12), %eax
	leal	-32(%rax), %edx
	cmpb	$95, %dl
	cmovnb	%r13d, %eax
	movb	%al, 16(%rsp,%rbx)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L6
	movl	$124, %edi
	call	putchar@PLT
	leaq	16(%rsp), %rbx
	addq	%rbx, %rbp
.L7:
	movzbl	(%rbx), %edi
	call	putchar@PLT
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L7
	jmp	.L16
.L15:
	movq	%r15, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L1:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L17
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE39:
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

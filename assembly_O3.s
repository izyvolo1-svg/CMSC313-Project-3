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
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
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
	call	fopen@PLT
	testq	%rax, %rax
	je	.L15
	movq	%rax, %rdi
	movq	%rax, %r15
	leaq	.LC4(%rip), %r13
	movq	%rsp, %rbp
	call	ftell@PLT
	leaq	16(%rsp), %r12
	movl	%eax, %r14d
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%r15, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	fread@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L16
	movl	%r14d, %edx
	leaq	.LC3(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$32, %edi
	xorl	%r14d, %r14d
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	0(%rbp,%r14), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movzbl	0(%rbp,%r14), %eax
	leal	-32(%rax), %edx
	cmpb	$94, %dl
	ja	.L5
	movb	%al, (%r14,%r12)
	addq	$1, %r14
	cmpq	%r14, %rbx
	jne	.L8
.L7:
	movl	$124, %edi
	movq	%r12, %r14
	addq	%r12, %rbx
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L9:
	movzbl	(%r14), %edi
	addq	$1, %r14
	call	putchar@PLT
	cmpq	%rbx, %r14
	jne	.L9
	movq	%r15, %rdi
	call	ftell@PLT
	movl	$10, %edi
	movl	%eax, %r14d
	call	putchar@PLT
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	movb	$46, (%r14,%r12)
	addq	$1, %r14
	cmpq	%rbx, %r14
	jne	.L8
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L16:
	movq	%r15, %rdi
	call	fclose@PLT
	xorl	%eax, %eax
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
.L15:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L1
.L17:
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

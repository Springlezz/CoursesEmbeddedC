	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.p2align 4
	.globl	task1
	.type	task1, @function
task1:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$31, %ebx
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%ebp, %edx
	movl	%ebx, %ecx
	shrl	%cl, %edx
	andl	$1, %edx
	movl	%edx, result(%rip)
	testb	$7, %bl
	jne	.L2
	testl	%ebx, %ebx
	jne	.L14
.L2:
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	subl	$1, %ebx
	jnb	.L5
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	movl	$32, %edi
	subl	$1, %ebx
	call	putchar@PLT
	movl	result(%rip), %edx
	movq	%r12, %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	jmp	.L5
	.cfi_endproc
.LFE23:
	.size	task1, .-task1
	.p2align 4
	.globl	task2
	.type	task2, @function
task2:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$31, %ebx
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%ebp, %edx
	movl	%ebx, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	movl	%edx, result(%rip)
	testb	$7, %bl
	jne	.L16
	testl	%ebx, %ebx
	jne	.L27
.L16:
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	subl	$1, %ebx
	jnb	.L19
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	.cfi_restore_state
	movl	$32, %edi
	subl	$1, %ebx
	call	putchar@PLT
	movl	result(%rip), %edx
	movq	%r12, %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	jmp	.L19
	.cfi_endproc
.LFE24:
	.size	task2, .-task2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"\320\232\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \320\265\320\264\320\270\320\275\320\270\321\206: %d"
	.text
	.p2align 4
	.globl	task3
	.type	task3, @function
task3:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	.LC0(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	$31, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L33:
	movl	%r12d, %edx
	movl	%ebx, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	cmpl	$1, %edx
	movl	%edx, result(%rip)
	sbbl	$-1, %ebp
	testb	$7, %bl
	jne	.L30
	testl	%ebx, %ebx
	jne	.L43
.L30:
	xorl	%eax, %eax
	movq	%r13, %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	subl	$1, %ebx
	jnb	.L33
	movl	$10, %edi
	call	putchar@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ebp, %edx
	movl	$2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 32
	leaq	.LC1(%rip), %rsi
	popq	%rbp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
	movl	$32, %edi
	subl	$1, %ebx
	call	putchar@PLT
	movl	result(%rip), %edx
	movq	%r13, %rsi
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	jmp	.L33
	.cfi_endproc
.LFE25:
	.size	task3, .-task3
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276 \320\264\320\273\321\217 \320\267\320\260\320\274\320\265\320\275\321\213, 255 - \320\274\320\260\320\272\321\201\320\270\320\274\320\260\320\273\321\214\320\275\320\276\320\265 \320\267\320\275\320\260\321\207\320\265\320\275\320\270\320\265, \321\207\321\202\320\276 \320\277\320\276\320\274\320\265\321\211\320\260\320\265\321\202\321\201\321\217 \320\262 1 \320\261\320\260\320\271\321\202: "
	.align 8
.LC3:
	.string	"\320\236\321\210\320\270\320\261\320\272\320\260! \320\262\320\262\320\265\320\264\320\270\321\202\320\265 \320\261\320\260\320\271\321\202 \320\276\321\202 0 \320\264\320\276 255"
	.text
	.p2align 4
	.globl	task4
	.type	task4, @function
task4:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC2(%rip), %rsi
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebx
	movl	$2, %edi
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	$0, 4(%rsp)
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	4(%rsp), %ebp
	cmpl	$255, %ebp
	ja	.L62
	movl	%ebx, %edi
	sall	$24, %ebp
	movl	$31, %ebx
	andl	$16777215, %edi
	orl	%edi, %ebp
	.p2align 4,,10
	.p2align 3
.L50:
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	movq	%r12, %rsi
	shrl	%cl, %edx
	movl	$2, %edi
	andl	$1, %edx
	movl	%edx, result(%rip)
	call	__printf_chk@PLT
	testb	$7, %bl
	jne	.L47
	testl	%ebx, %ebx
	jne	.L63
.L47:
	subl	$1, %ebx
	jnb	.L50
.L44:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L64
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	.cfi_restore_state
	movl	$32, %edi
	subl	$1, %ebx
	call	putchar@PLT
	jmp	.L50
.L62:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L44
.L64:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE26:
	.size	task4, .-task4
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\275\320\276\320\274\320\265\321\200 \320\267\320\260\320\264\320\260\321\207\320\270: "
	.section	.rodata.str1.1
.LC5:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276: "
.LC6:
	.string	"%u"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"\320\247\320\270\321\201\320\273\320\276 \320\264\320\276\320\273\320\266\320\275\320\276 \320\261\321\213\321\202\321\214 \321\206\320\265\320\273\321\213\320\274 \320\270 \320\276\321\202\321\200\320\270\321\206\320\260\321\202\320\265\320\273\321\214\320\275\321\213\320\274"
	.align 8
.LC8:
	.string	"\320\247\320\270\321\201\320\273\320\276 \320\264\320\276\320\273\320\266\320\275\320\276 \320\261\321\213\321\202\321\214 \321\206\320\265\320\273\321\213\320\274 \320\270 \320\277\320\276\320\273\320\276\320\266\320\270\321\202\320\265\320\273\321\214\320\275\321\213\320\274"
	.align 8
.LC9:
	.string	"\320\242\320\260\320\272\320\276\320\270\314\206 \320\267\320\260\320\264\320\260\321\207\320\270 \320\275\320\265\321\202"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC4(%rip), %rsi
	movl	$2, %edi
	leaq	.LC0(%rip), %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	20(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	20(%rsp), %eax
	cmpl	$3, %eax
	je	.L66
	jg	.L67
	cmpl	$1, %eax
	je	.L68
	cmpl	$2, %eax
	jne	.L70
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rdi
	leaq	12(%rsp), %rsi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	12(%rsp), %edi
	testl	%edi, %edi
	js	.L77
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L72
.L67:
	cmpl	$4, %eax
	jne	.L70
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC6(%rip), %rdi
	leaq	16(%rsp), %rsi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	16(%rsp), %edi
	call	task4
.L72:
	movl	$10, %edi
	call	putchar@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L78
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L70:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	jmp	.L72
.L66:
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rdi
	leaq	12(%rsp), %rsi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	12(%rsp), %edi
	testl	%edi, %edi
	js	.L74
	call	task3
	jmp	.L72
.L68:
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	16(%rsp), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	16(%rsp), %edi
	call	task1
	jmp	.L72
.L77:
	call	task2
	jmp	.L72
.L74:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L72
.L78:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE27:
	.size	main, .-main
	.globl	result
	.bss
	.align 4
	.type	result, @object
	.size	result, 4
result:
	.zero	4
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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

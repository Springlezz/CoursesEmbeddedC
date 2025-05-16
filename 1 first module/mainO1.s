	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.globl	task1
	.type	task1, @function
task1:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebp
	movl	$31, %ebx
	leaq	.LC0(%rip), %r12
	jmp	.L5
.L2:
	movl	result(%rip), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	subl	$1, %ebx
	cmpl	$-1, %ebx
	je	.L7
.L5:
	movl	%ebp, %eax
	movl	%ebx, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	testb	$7, %bl
	jne	.L2
	testl	%ebx, %ebx
	je	.L2
	movl	$32, %edi
	call	putchar@PLT
	movl	result(%rip), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	subl	$1, %ebx
	jmp	.L5
.L7:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	task1, .-task1
	.globl	task2
	.type	task2, @function
task2:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebp
	movl	$31, %ebx
	leaq	.LC0(%rip), %r12
	jmp	.L12
.L9:
	movl	result(%rip), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	subl	$1, %ebx
	cmpl	$-1, %ebx
	je	.L14
.L12:
	movl	%ebp, %eax
	movl	%ebx, %ecx
	sarl	%cl, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	testb	$7, %bl
	jne	.L9
	testl	%ebx, %ebx
	je	.L9
	movl	$32, %edi
	call	putchar@PLT
	movl	result(%rip), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	subl	$1, %ebx
	jmp	.L12
.L14:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	task2, .-task2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"\320\232\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \320\265\320\264\320\270\320\275\320\270\321\206: %d"
	.text
	.globl	task3
	.type	task3, @function
task3:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, %r12d
	movl	$31, %ebx
	movl	$0, %ebp
	leaq	.LC0(%rip), %r13
	jmp	.L20
.L17:
	movl	result(%rip), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	subl	$1, %ebx
	cmpl	$-1, %ebx
	je	.L22
.L20:
	movl	%r12d, %eax
	movl	%ebx, %ecx
	sarl	%cl, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	cmpl	$1, %eax
	sbbl	$-1, %ebp
	testb	$7, %bl
	jne	.L17
	testl	%ebx, %ebx
	je	.L17
	movl	$32, %edi
	call	putchar@PLT
	movl	result(%rip), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	subl	$1, %ebx
	jmp	.L20
.L22:
	movl	$10, %edi
	call	putchar@PLT
	movl	%ebp, %edx
	leaq	.LC1(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
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
	.globl	task4
	.type	task4, @function
task4:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, %ebx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	$0, 4(%rsp)
	leaq	.LC2(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	4(%rsp), %ebp
	cmpl	$255, %ebp
	ja	.L31
	movl	%ebx, %edi
	andl	$16777215, %edi
	sall	$24, %ebp
	orl	%edi, %ebp
	movl	$31, %ebx
	leaq	.LC0(%rip), %r12
	jmp	.L28
.L31:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L23:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L32
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
.L26:
	.cfi_restore_state
	subl	$1, %ebx
	cmpl	$-1, %ebx
	je	.L23
.L28:
	movl	%ebp, %edx
	movl	%ebx, %ecx
	shrl	%cl, %edx
	andl	$1, %edx
	movl	%edx, result(%rip)
	movq	%r12, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	testb	$7, %bl
	jne	.L26
	testl	%ebx, %ebx
	je	.L26
	movl	$32, %edi
	call	putchar@PLT
	subl	$1, %ebx
	jmp	.L28
.L32:
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB27:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	leaq	20(%rsp), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	20(%rsp), %eax
	cmpl	$3, %eax
	je	.L34
	jg	.L35
	cmpl	$1, %eax
	je	.L36
	cmpl	$2, %eax
	jne	.L38
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	12(%rsp), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	12(%rsp), %edi
	testl	%edi, %edi
	js	.L45
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L40
.L35:
	cmpl	$4, %eax
	jne	.L38
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	16(%rsp), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	16(%rsp), %edi
	call	task4
	jmp	.L40
.L36:
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	16(%rsp), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	16(%rsp), %edi
	call	task1
.L40:
	movl	$10, %edi
	call	putchar@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L45:
	.cfi_restore_state
	call	task2
	jmp	.L40
.L34:
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	12(%rsp), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	12(%rsp), %edi
	testl	%edi, %edi
	js	.L42
	call	task3
	jmp	.L40
.L42:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L40
.L38:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	jmp	.L40
.L46:
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

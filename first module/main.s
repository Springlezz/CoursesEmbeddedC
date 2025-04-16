	.file	"main.c"
	.text
	.globl	result
	.bss
	.align 4
	.type	result, @object
	.size	result, 4
result:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	task1
	.type	task1, @function
task1:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$31, -4(%rbp)
	jmp	.L2
.L4:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L3
	cmpl	$0, -4(%rbp)
	je	.L3
	movl	$32, %edi
	call	putchar@PLT
.L3:
	movl	result(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -4(%rbp)
.L2:
	cmpl	$0, -4(%rbp)
	jns	.L4
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	task1, .-task1
	.globl	task2
	.type	task2, @function
task2:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$31, -4(%rbp)
	jmp	.L6
.L8:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L7
	cmpl	$0, -4(%rbp)
	je	.L7
	movl	$32, %edi
	call	putchar@PLT
.L7:
	movl	result(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -4(%rbp)
.L6:
	cmpl	$0, -4(%rbp)
	jns	.L8
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	task2, .-task2
	.section	.rodata
	.align 8
.LC1:
	.string	"\320\232\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \320\265\320\264\320\270\320\275\320\270\321\206: %d"
	.text
	.globl	task3
	.type	task3, @function
task3:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$31, -4(%rbp)
	jmp	.L10
.L13:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	movl	result(%rip), %eax
	cmpl	$1, %eax
	jne	.L11
	addl	$1, -8(%rbp)
.L11:
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L12
	cmpl	$0, -4(%rbp)
	je	.L12
	movl	$32, %edi
	call	putchar@PLT
.L12:
	movl	result(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -4(%rbp)
.L10:
	cmpl	$0, -4(%rbp)
	jns	.L13
	movl	$10, %edi
	call	putchar@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	task3, .-task3
	.section	.rodata
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
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	js	.L15
	movl	-16(%rbp), %eax
	cmpl	$255, %eax
	jle	.L16
.L15:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L14
.L16:
	andl	$16777215, -20(%rbp)
	movl	-16(%rbp), %eax
	sall	$24, %eax
	orl	%eax, -20(%rbp)
	movl	$31, -12(%rbp)
	jmp	.L18
.L20:
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	movl	result(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L19
	cmpl	$0, -12(%rbp)
	je	.L19
	movl	$32, %edi
	call	putchar@PLT
.L19:
	subl	$1, -12(%rbp)
.L18:
	cmpl	$0, -12(%rbp)
	jns	.L20
	movl	$10, %edi
	call	putchar@PLT
.L14:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	task4, .-task4
	.section	.rodata
	.align 8
.LC4:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\275\320\276\320\274\320\265\321\200 \320\267\320\260\320\264\320\260\321\207\320\270: "
.LC5:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276: "
.LC6:
	.string	"%u"
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
.LFB4:
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
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	cmpl	$4, %eax
	je	.L23
	cmpl	$4, %eax
	jg	.L24
	cmpl	$3, %eax
	je	.L25
	cmpl	$3, %eax
	jg	.L24
	cmpl	$1, %eax
	je	.L26
	cmpl	$2, %eax
	je	.L27
	jmp	.L24
.L26:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	task1
	jmp	.L28
.L27:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jns	.L29
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	task2
	jmp	.L28
.L29:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L28
.L25:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	js	.L31
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	task3
	jmp	.L28
.L31:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L28
.L23:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	task4
	jmp	.L28
.L24:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L28:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
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

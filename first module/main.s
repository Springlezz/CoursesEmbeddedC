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
	sarl	%cl, %edx
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
.L7:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	movl	result(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -4(%rbp)
.L6:
	cmpl	$0, -4(%rbp)
	jns	.L7
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
	movl	$31, -4(%rbp)
	jmp	.L9
.L12:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, result(%rip)
	movl	result(%rip), %eax
	cmpl	$1, %eax
	jne	.L10
	addl	$1, -8(%rbp)
.L10:
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L11
	cmpl	$0, -4(%rbp)
	je	.L11
	movl	$32, %edi
	call	putchar@PLT
.L11:
	movl	result(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -4(%rbp)
.L9:
	cmpl	$0, -4(%rbp)
	jns	.L12
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	task4, .-task4
	.section	.rodata
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\275\320\276\320\274\320\265\321\200 \320\267\320\260\320\264\320\260\321\207\320\270: "
.LC3:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276: "
	.align 8
.LC4:
	.string	"\320\247\320\270\321\201\320\273\320\276 \320\264\320\276\320\273\320\266\320\275\320\276 \320\261\321\213\321\202\321\214 \321\206\320\265\320\273\321\213\320\274 \320\270 \320\277\320\276\320\273\320\276\320\266\320\270\321\202\320\265\320\273\321\214\320\275\321\213\320\274"
	.align 8
.LC5:
	.string	"\320\247\320\270\321\201\320\273\320\276 \320\264\320\276\320\273\320\266\320\275\320\276 \320\261\321\213\321\202\321\214 \321\206\320\265\320\273\321\213\320\274 \320\270 \320\276\321\202\321\200\320\270\321\206\320\260\321\202\320\265\320\273\321\214\320\275\321\213\320\274"
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
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rax
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
	cmpl	$3, %eax
	je	.L15
	cmpl	$3, %eax
	jg	.L28
	cmpl	$1, %eax
	je	.L17
	cmpl	$2, %eax
	je	.L18
	jmp	.L28
.L17:
	leaq	.LC3(%rip), %rax
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
	js	.L19
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	task1
	jmp	.L21
.L19:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L21
.L18:
	leaq	.LC3(%rip), %rax
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
	jns	.L22
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	task2
	jmp	.L21
.L22:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L21
.L15:
	leaq	.LC3(%rip), %rax
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
	js	.L24
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	task3
	jmp	.L21
.L24:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L21
.L28:
	nop
.L21:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
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

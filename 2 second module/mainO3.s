	.file	"main.c"
	.text
	.p2align 4
	.globl	createMatrix
	.type	createMatrix, @function
createMatrix:
.LFB23:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L15
	movl	%edi, %r10d
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movslq	%edi, %r11
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	shrl	$2, %r10d
	movl	%edi, %ebp
	movdqa	.LC1(%rip), %xmm4
	movdqa	.LC2(%rip), %xmm3
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rcx
	salq	$2, %r11
	leal	-1(%rdi), %ebx
	salq	$4, %r10
	andl	$-4, %r12d
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	andl	$3, %ebp
	.p2align 4,,10
	.p2align 3
.L3:
	cmpl	$2, %ebx
	jbe	.L8
	movd	%esi, %xmm5
	movdqa	.LC0(%rip), %xmm1
	leaq	(%r10,%rcx), %rdx
	movq	%rcx, %rax
	pshufd	$0, %xmm5, %xmm2
	.p2align 4,,10
	.p2align 3
.L5:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm4, %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L5
	movl	%r12d, %eax
	testl	%ebp, %ebp
	je	.L4
.L7:
	movslq	%eax, %rdx
	leal	1(%rax,%rsi), %r9d
	leaq	(%rcx,%rdx,4), %rdx
	movl	%r9d, (%rdx)
	leal	1(%rax), %r9d
	cmpl	%r9d, %edi
	jle	.L4
	leal	1(%r9,%rsi), %r9d
	addl	$2, %eax
	movl	%r9d, 4(%rdx)
	cmpl	%eax, %edi
	jle	.L4
	leal	1(%rax,%rsi), %eax
	movl	%eax, 8(%rdx)
.L4:
	addl	$1, %r8d
	addl	%edi, %esi
	addq	%r11, %rcx
	cmpl	%r8d, %edi
	jne	.L3
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
.L8:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L7
.L15:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	ret
	.cfi_endproc
.LFE23:
	.size	createMatrix, .-createMatrix
	.p2align 4
	.globl	createArray
	.type	createArray, @function
createArray:
.LFB24:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L19
	leal	-1(%rdi), %eax
	cmpl	$2, %eax
	jbe	.L24
	movl	%edi, %edx
	movdqa	.LC0(%rip), %xmm1
	movq	%rsi, %rax
	movdqa	.LC1(%rip), %xmm3
	shrl	$2, %edx
	movdqa	.LC2(%rip), %xmm2
	salq	$4, %rdx
	addq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L22:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm3, %xmm1
	paddd	%xmm2, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L22
	movl	%edi, %eax
	andl	$-4, %eax
	testb	$3, %dil
	je	.L26
.L21:
	movslq	%eax, %rcx
	leal	1(%rax), %edx
	movl	%edx, (%rsi,%rcx,4)
	leaq	0(,%rcx,4), %r8
	cmpl	%edx, %edi
	jle	.L19
	leal	2(%rax), %edx
	movl	%edx, 4(%rsi,%r8)
	cmpl	%edx, %edi
	jle	.L19
	addl	$3, %eax
	movl	%eax, 8(%rsi,%r8)
.L19:
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	ret
.L24:
	xorl	%eax, %eax
	jmp	.L21
	.cfi_endproc
.LFE24:
	.size	createArray, .-createArray
	.p2align 4
	.globl	sortTask2
	.type	sortTask2, @function
sortTask2:
.LFB25:
	.cfi_startproc
	endbr64
	movss	.LC3(%rip), %xmm1
	movl	%edi, %r10d
	.p2align 4,,10
	.p2align 3
.L34:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%r10d, %xmm0
	divss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %r10d
	cmpl	$1, %r10d
	jle	.L37
	cmpl	%r10d, %edi
	jle	.L34
	xorl	%r9d, %r9d
.L29:
	movslq	%r10d, %rax
	movq	%rax, %rdx
	negq	%rdx
	leaq	(%rsi,%rdx,4), %r8
	.p2align 4,,10
	.p2align 3
.L33:
	movl	(%r8,%rax,4), %edx
	movl	(%rsi,%rax,4), %ecx
	cmpl	%ecx, %edx
	jge	.L32
	movl	%ecx, (%r8,%rax,4)
	xorl	%r9d, %r9d
	movl	%edx, (%rsi,%rax,4)
.L32:
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L33
	testl	%r9d, %r9d
	je	.L34
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	cmpl	$1, %edi
	jle	.L38
	movl	$1, %r9d
	movl	$1, %r10d
	jmp	.L29
.L38:
	ret
	.cfi_endproc
.LFE25:
	.size	sortTask2, .-sortTask2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%d\t"
	.text
	.p2align 4
	.globl	task1
	.type	task1, @function
task1:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	movslq	%edi, %r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%r13, %rax
	movq	%rsp, %rcx
	imulq	%r13, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	cmpq	%rcx, %rsp
	je	.L41
.L65:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L65
.L41:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L66
.L42:
	movq	%rsp, %rbx
	testl	%edi, %edi
	jle	.L39
	movl	%edi, %r8d
	movl	%edi, %r11d
	movl	%edi, %r10d
	salq	$2, %r13
	shrl	$2, %r8d
	leal	-1(%rdi), %r9d
	andl	$-4, %r11d
	movq	%rbx, %rsi
	salq	$4, %r8
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	andl	$3, %r10d
	movdqa	.LC1(%rip), %xmm4
	movdqa	.LC2(%rip), %xmm3
	cmpl	$2, %r9d
	jbe	.L54
	.p2align 4,,10
	.p2align 3
.L68:
	movd	%ecx, %xmm5
	movdqa	.LC0(%rip), %xmm1
	leaq	(%r8,%rsi), %rdx
	movq	%rsi, %rax
	pshufd	$0, %xmm5, %xmm2
	.p2align 4,,10
	.p2align 3
.L46:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm4, %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L46
	movl	%r11d, %eax
	testl	%r10d, %r10d
	je	.L45
.L50:
	movslq	%eax, %rdx
	leal	1(%rax,%rcx), %r12d
	leaq	(%rsi,%rdx,4), %rdx
	movl	%r12d, (%rdx)
	leal	1(%rax), %r12d
	cmpl	%r12d, %edi
	jle	.L45
	leal	1(%r12,%rcx), %r12d
	addl	$2, %eax
	movl	%r12d, 4(%rdx)
	cmpl	%eax, %edi
	jle	.L45
	leal	1(%rax,%rcx), %eax
	movl	%eax, 8(%rdx)
.L45:
	leal	1(%r14), %eax
	addl	%edi, %ecx
	addq	%r13, %rsi
	cmpl	%eax, %edi
	je	.L67
	movl	%eax, %r14d
	cmpl	$2, %r9d
	ja	.L68
.L54:
	xorl	%eax, %eax
	jmp	.L50
.L39:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L69
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L67:
	.cfi_restore_state
	movl	$0, -68(%rbp)
	addq	%r13, %rbx
	leaq	.LC4(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L49:
	movq	%rbx, %r15
	subq	%r13, %r15
	.p2align 4,,10
	.p2align 3
.L51:
	movl	(%r15), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %r15
	call	__printf_chk@PLT
	cmpq	%rbx, %r15
	jne	.L51
	movl	$10, %edi
	addq	%r13, %rbx
	call	putchar@PLT
	movl	-68(%rbp), %ecx
	leal	1(%rcx), %eax
	cmpl	%r14d, %ecx
	je	.L39
	movl	%eax, -68(%rbp)
	jmp	.L49
.L66:
	orq	$0, -8(%rsp,%rdx)
	jmp	.L42
.L69:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE26:
	.size	task1, .-task1
	.p2align 4
	.globl	task2
	.type	task2, @function
task2:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movslq	%edi, %r12
	pushq	%rbx
	movq	%r12, %r8
	salq	$2, %r12
	subq	$24, %rsp
	.cfi_offset 3, -40
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	leaq	15(%r12), %rax
	movq	%rsp, %rcx
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	cmpq	%rcx, %rsp
	je	.L72
.L102:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L102
.L72:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L103
.L73:
	movq	%rsp, %rsi
	testl	%r8d, %r8d
	jle	.L74
	leal	-1(%r8), %eax
	cmpl	$2, %eax
	jbe	.L89
	movl	%r8d, %edx
	movdqa	.LC0(%rip), %xmm1
	movq	%rsi, %rax
	movdqa	.LC1(%rip), %xmm3
	shrl	$2, %edx
	movdqa	.LC2(%rip), %xmm2
	salq	$4, %rdx
	addq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L76:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm3, %xmm1
	paddd	%xmm2, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L76
	testb	$3, %r8b
	je	.L74
	movl	%r8d, %eax
	andl	$-4, %eax
.L75:
	movslq	%eax, %rcx
	leal	1(%rax), %edx
	movl	%edx, (%rsi,%rcx,4)
	leaq	0(,%rcx,4), %rdi
	cmpl	%edx, %r8d
	jle	.L74
	leal	2(%rax), %edx
	movl	%edx, 4(%rsi,%rdi)
	cmpl	%edx, %r8d
	jle	.L74
	addl	$3, %eax
	movl	%eax, 8(%rsi,%rdi)
.L74:
	movss	.LC3(%rip), %xmm1
	movl	%r8d, %r10d
	.p2align 4,,10
	.p2align 3
.L85:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%r10d, %xmm0
	divss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %r10d
	cmpl	$1, %r10d
	jle	.L104
	cmpl	%r10d, %r8d
	jle	.L85
	xorl	%r9d, %r9d
.L79:
	movslq	%r10d, %rax
	movq	%rax, %rdx
	negq	%rdx
	leaq	(%rsi,%rdx,4), %rdi
	.p2align 4,,10
	.p2align 3
.L83:
	movl	(%rdi,%rax,4), %edx
	movl	(%rsi,%rax,4), %ecx
	cmpl	%ecx, %edx
	jge	.L82
	movl	%ecx, (%rdi,%rax,4)
	xorl	%r9d, %r9d
	movl	%edx, (%rsi,%rax,4)
.L82:
	addq	$1, %rax
	cmpl	%eax, %r8d
	jg	.L83
	testl	%r9d, %r9d
	je	.L85
.L84:
	movq	%rsi, %rbx
	addq	%rsi, %r12
	leaq	.LC4(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L87:
	movl	(%rbx), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %rbx
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L87
.L86:
	movl	$10, %edi
	call	putchar@PLT
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L105
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	.cfi_restore_state
	cmpl	$1, %r8d
	jle	.L106
	movl	$1, %r9d
	movl	$1, %r10d
	jmp	.L79
.L106:
	je	.L84
	jmp	.L86
.L103:
	orq	$0, -8(%rsp,%rdx)
	jmp	.L73
.L89:
	xorl	%eax, %eax
	jmp	.L75
.L105:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE27:
	.size	task2, .-task2
	.p2align 4
	.globl	triangle
	.type	triangle, @function
triangle:
.LFB28:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L124
	leal	-1(%rdi), %r9d
	movl	%edi, %r11d
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %r10d
	movd	%r9d, %xmm7
	movslq	%edi, %rbx
	shrl	$2, %r11d
	andl	$-4, %r10d
	salq	$2, %rbx
	pshufd	$0, %xmm7, %xmm6
	salq	$4, %r11
	xorl	%ecx, %ecx
	movdqa	.LC0(%rip), %xmm7
	movdqa	.LC1(%rip), %xmm5
	movdqa	.LC2(%rip), %xmm4
	.p2align 4,,10
	.p2align 3
.L115:
	movq	%rsi, %r8
	cmpl	$2, %r9d
	jbe	.L109
.L114:
	movd	%ecx, %xmm3
	leaq	(%r11,%rsi), %rdx
	movdqa	%xmm7, %xmm2
	movq	%rsi, %rax
	pshufd	$0, %xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L110:
	movdqa	%xmm2, %xmm1
	movdqa	%xmm6, %xmm0
	paddd	%xmm5, %xmm2
	addq	$16, %rax
	paddd	%xmm3, %xmm1
	pcmpgtd	%xmm1, %xmm0
	pandn	%xmm4, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L110
	cmpl	%r10d, %edi
	je	.L111
	leal	(%rcx,%r10), %eax
	xorl	%edx, %edx
	cmpl	%r9d, %eax
	movl	%r10d, %eax
	setge	%dl
.L117:
	movslq	%eax, %r8
	leaq	(%rsi,%r8,4), %r8
	movl	%edx, (%r8)
	leal	1(%rax), %edx
	cmpl	%edx, %edi
	jle	.L112
.L116:
	addl	%ecx, %edx
	cmpl	%edx, %r9d
	setle	%dl
	addl	$2, %eax
	movzbl	%dl, %edx
	movl	%edx, 4(%r8)
	cmpl	%eax, %edi
	jle	.L112
	addl	%ecx, %eax
	cmpl	%eax, %r9d
	setle	%al
	movzbl	%al, %eax
	movl	%eax, 8(%r8)
.L112:
	addl	$1, %ecx
	addq	%rbx, %rsi
	cmpl	%ecx, %edi
	jne	.L115
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	.cfi_restore_state
	addl	$1, %ecx
	addq	%rbx, %rsi
	cmpl	%ecx, %edi
	jne	.L114
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	.cfi_restore_state
	cmpl	%ecx, %r9d
	jg	.L127
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L117
.L127:
	movl	$0, (%rsi)
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L116
.L124:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE28:
	.size	triangle, .-triangle
	.p2align 4
	.globl	task3
	.type	task3, @function
task3:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	movslq	%edi, %r14
	pushq	%r13
	movq	%r14, %rsi
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	movq	%r14, %rax
	movq	%rsp, %rcx
	imulq	%r14, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	cmpq	%rcx, %rsp
	je	.L130
.L157:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L157
.L130:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L158
.L131:
	movq	%rsp, %rbx
	testl	%esi, %esi
	jle	.L128
	leal	-1(%rsi), %edi
	movl	%esi, %r9d
	movl	%esi, %r8d
	salq	$2, %r14
	movd	%edi, %xmm7
	shrl	$2, %r9d
	andl	$-4, %r8d
	movq	%rbx, %rcx
	pshufd	$0, %xmm7, %xmm6
	movdqa	.LC1(%rip), %xmm5
	salq	$4, %r9
	xorl	%r13d, %r13d
	movdqa	.LC0(%rip), %xmm7
	movdqa	.LC2(%rip), %xmm4
	.p2align 4,,10
	.p2align 3
.L141:
	movq	%rcx, %r10
	cmpl	$2, %edi
	jbe	.L134
.L140:
	movd	%r13d, %xmm3
	leaq	(%r9,%rcx), %rdx
	movdqa	%xmm7, %xmm2
	movq	%rcx, %rax
	pshufd	$0, %xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L135:
	movdqa	%xmm2, %xmm1
	movdqa	%xmm6, %xmm0
	paddd	%xmm5, %xmm2
	addq	$16, %rax
	paddd	%xmm3, %xmm1
	pcmpgtd	%xmm1, %xmm0
	pandn	%xmm4, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L135
	cmpl	%r8d, %esi
	je	.L136
	leal	0(%r13,%r8), %eax
	xorl	%edx, %edx
	cmpl	%eax, %edi
	movl	%r8d, %eax
	setle	%dl
.L145:
	movslq	%eax, %r10
	leaq	(%rcx,%r10,4), %r10
	movl	%edx, (%r10)
	leal	1(%rax), %edx
	cmpl	%edx, %esi
	jle	.L137
.L144:
	addl	%r13d, %edx
	cmpl	%edx, %edi
	setle	%dl
	addl	$2, %eax
	movzbl	%dl, %edx
	movl	%edx, 4(%r10)
	cmpl	%eax, %esi
	jle	.L137
	addl	%r13d, %eax
	cmpl	%eax, %edi
	setle	%al
	movzbl	%al, %eax
	movl	%eax, 8(%r10)
.L137:
	addl	$1, %r13d
	addq	%r14, %rcx
	cmpl	%r13d, %esi
	jne	.L141
.L139:
	movl	$0, -68(%rbp)
	addq	%r14, %rbx
	leaq	.LC4(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L142:
	movq	%rbx, %r15
	subq	%r14, %r15
	.p2align 4,,10
	.p2align 3
.L143:
	movl	(%r15), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %r15
	call	__printf_chk@PLT
	cmpq	%r15, %rbx
	jne	.L143
	movl	$10, %edi
	addq	%r14, %rbx
	call	putchar@PLT
	addl	$1, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	%r13d, %eax
	jne	.L142
.L128:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L159
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	.cfi_restore_state
	addl	$1, %r13d
	addq	%r14, %rcx
	cmpl	%r13d, %esi
	jne	.L140
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L134:
	cmpl	%edi, %r13d
	jl	.L160
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L145
.L160:
	movl	$0, (%rcx)
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L144
.L158:
	orq	$0, -8(%rsp,%rdx)
	jmp	.L131
.L159:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE29:
	.size	task3, .-task3
	.p2align 4
	.globl	task4
	.type	task4, @function
task4:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movl	%edi, %r12d
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %rax
	movq	%rsp, %rcx
	leaq	0(,%rax,4), %r14
	imulq	%rax, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	cmpq	%rcx, %rsp
	je	.L163
.L219:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L219
.L163:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L220
.L164:
	movl	%r12d, %eax
	movq	%rsp, %rcx
	leal	-1(%r12), %r9d
	imull	%r12d, %eax
	movl	%eax, -100(%rbp)
	testl	%r12d, %r12d
	jle	.L221
	movl	%r12d, %r10d
	movl	%r12d, %ebx
	movl	%r12d, %r11d
	movq	%rcx, %rdi
	shrl	$2, %r10d
	andl	$-4, %ebx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	movdqa	.LC1(%rip), %xmm4
	movdqa	.LC2(%rip), %xmm3
	salq	$4, %r10
	andl	$3, %r11d
	.p2align 4,,10
	.p2align 3
.L170:
	cmpl	$2, %r9d
	jbe	.L193
	movd	%esi, %xmm5
	movdqa	.LC0(%rip), %xmm1
	leaq	(%r10,%rdi), %rdx
	movq	%rdi, %rax
	pshufd	$0, %xmm5, %xmm2
	.p2align 4,,10
	.p2align 3
.L168:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm4, %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L168
	movl	%ebx, %eax
	testl	%r11d, %r11d
	je	.L167
.L172:
	movslq	%eax, %rdx
	leal	1(%rax,%rsi), %r13d
	leaq	(%rdi,%rdx,4), %rdx
	movl	%r13d, (%rdx)
	leal	1(%rax), %r13d
	cmpl	%r13d, %r12d
	jle	.L167
	leal	1(%r13,%rsi), %r13d
	addl	$2, %eax
	movl	%r13d, 4(%rdx)
	cmpl	%eax, %r12d
	jle	.L167
	leal	1(%rax,%rsi), %eax
	movl	%eax, 8(%rdx)
.L167:
	addl	$1, %r8d
	addl	%r12d, %esi
	addq	%r14, %rdi
	cmpl	%r8d, %r12d
	jne	.L170
.L173:
	movslq	%r9d, %rax
	movq	%r14, %rsi
	movq	%r14, -112(%rbp)
	movl	%r12d, %ebx
	movq	%rax, -72(%rbp)
	shrq	$2, %rsi
	leaq	4(%r14), %rax
	movl	%r9d, %r11d
	movq	%rax, -96(%rbp)
	leaq	1(%rsi), %rdx
	leaq	-4(%r14), %rax
	movq	%rcx, %r15
	imulq	%rdx, %rax
	movl	%r12d, -104(%rbp)
	xorl	%edi, %edi
	xorl	%r13d, %r13d
	movdqa	.LC0(%rip), %xmm3
	movdqa	.LC1(%rip), %xmm2
	movl	$1, %r8d
	leaq	-16(%rcx,%rax), %rax
	movq	%rax, -80(%rbp)
	.p2align 4,,10
	.p2align 3
.L171:
	cmpl	%r9d, %r13d
	jg	.L189
	leal	1(%r11), %eax
	cmpl	$2, %r11d
	jbe	.L194
	movl	%eax, %r10d
	movd	%r8d, %xmm6
	movq	%r15, %rdx
	shrl	$2, %r10d
	pshufd	$0, %xmm6, %xmm0
	salq	$4, %r10
	paddd	%xmm3, %xmm0
	addq	%r15, %r10
	.p2align 4,,10
	.p2align 3
.L176:
	movdqa	%xmm0, %xmm1
	addq	$16, %rdx
	paddd	%xmm2, %xmm0
	movups	%xmm1, -16(%rdx)
	cmpq	%r10, %rdx
	jne	.L176
	testb	$3, %al
	je	.L177
	andl	$-4, %eax
	leal	(%r8,%rax), %r10d
	addl	%r13d, %eax
.L175:
	movslq	%r13d, %r12
	movslq	%eax, %rdx
	leal	1(%r10), %r14d
	imulq	%rsi, %r12
	addq	%r12, %rdx
	movl	%r10d, (%rcx,%rdx,4)
	leal	1(%rax), %edx
	cmpl	%edx, %r9d
	jl	.L177
	movslq	%edx, %rdx
	addl	$2, %eax
	addl	$2, %r10d
	addq	%r12, %rdx
	movl	%r14d, (%rcx,%rdx,4)
	cmpl	%r9d, %eax
	jg	.L177
	cltq
	addq	%r12, %rax
	movl	%r10d, (%rcx,%rax,4)
.L177:
	leal	1(%r8,%r11), %r8d
.L189:
	leal	1(%r13), %r10d
	cmpl	%r9d, %r10d
	jg	.L178
	movl	%r8d, %r12d
	movl	%r9d, -84(%rbp)
	movl	%r10d, %edx
	movslq	%r9d, %r14
	subl	%edi, %r12d
	subl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L179:
	movslq	%edx, %rax
	leal	(%r12,%rdx), %r9d
	addl	$1, %edx
	imulq	%rsi, %rax
	addq	%r14, %rax
	movl	%r9d, (%rcx,%rax,4)
	cmpl	%ebx, %edx
	jne	.L179
	movl	-84(%rbp), %r9d
	addl	%r11d, %r8d
.L178:
	leal	-1(%r9), %edx
	cmpl	%edi, %edx
	jl	.L180
	leal	-1(%r11), %eax
	cmpl	$2, %eax
	jbe	.L195
	movq	-80(%rbp), %r14
	movl	%r11d, %eax
	movd	%r8d, %xmm7
	shrl	$2, %eax
	pshufd	$0, %xmm7, %xmm1
	salq	$4, %rax
	movq	%r14, %r12
	paddd	%xmm3, %xmm1
	subq	%rax, %r12
	movq	%r14, %rax
	.p2align 4,,10
	.p2align 3
.L182:
	movdqa	%xmm1, %xmm0
	subq	$16, %rax
	paddd	%xmm2, %xmm1
	pshufd	$27, %xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	cmpq	%r12, %rax
	jne	.L182
	testb	$3, %r11b
	je	.L184
	movl	%r11d, %r12d
	movl	%edx, %eax
	andl	$-4, %r12d
	leal	(%r12,%r8), %r14d
	subl	%r12d, %eax
.L181:
	movslq	%r9d, %r9
	leal	1(%r14), %r12d
	imulq	%rsi, %r9
	movl	%r12d, -84(%rbp)
	movslq	%eax, %r12
	addq	%r9, %r12
	movl	%r14d, (%rcx,%r12,4)
	leal	-1(%rax), %r12d
	cmpl	%edi, %r12d
	jl	.L184
	addl	$2, %r14d
	movslq	%r12d, %r12
	subl	$2, %eax
	movl	%r14d, -88(%rbp)
	movl	-84(%rbp), %r14d
	addq	%r9, %r12
	movl	%r14d, (%rcx,%r12,4)
	cmpl	%edi, %eax
	jl	.L184
	movl	-88(%rbp), %r14d
	cltq
	addq	%r9, %rax
	movl	%r14d, (%rcx,%rax,4)
.L184:
	addl	%r11d, %r8d
.L180:
	cmpl	%edx, %r10d
	jg	.L185
	movq	-72(%rbp), %rax
	movl	%edx, %r9d
	movslq	%r13d, %r12
	leal	-1(%r8,%rax), %r14d
	.p2align 4,,10
	.p2align 3
.L186:
	movslq	%r9d, %rax
	movl	%r14d, %r13d
	imulq	%rsi, %rax
	subl	%r9d, %r13d
	subl	$1, %r9d
	addq	%r12, %rax
	movl	%r13d, (%rcx,%rax,4)
	cmpl	%edi, %r9d
	jne	.L186
	leal	-1(%r8,%r11), %r8d
.L185:
	movq	-96(%rbp), %rax
	subq	$1, -72(%rbp)
	addl	$1, %edi
	subl	$1, %ebx
	subq	%rax, -80(%rbp)
	subl	$2, %r11d
	addq	%rax, %r15
	cmpl	%r8d, -100(%rbp)
	jl	.L187
	movl	%edx, %r9d
	movl	%r10d, %r13d
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L187:
	movl	-104(%rbp), %r12d
	movq	-112(%rbp), %r14
	testl	%r12d, %r12d
	jle	.L161
	movl	%r12d, -72(%rbp)
	leaq	(%rcx,%r14), %rbx
	xorl	%r15d, %r15d
	leaq	.LC4(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L190:
	movq	%rbx, %r12
	subq	%r14, %r12
	.p2align 4,,10
	.p2align 3
.L191:
	movl	(%r12), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %r12
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L191
	movl	$10, %edi
	addl	$1, %r15d
	addq	%r14, %rbx
	call	putchar@PLT
	cmpl	%r15d, -72(%rbp)
	jne	.L190
.L161:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L222
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L193:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L172
.L195:
	movl	%edx, %eax
	movl	%r8d, %r14d
	jmp	.L181
.L194:
	movl	%r13d, %eax
	movl	%r8d, %r10d
	jmp	.L175
.L220:
	orq	$0, -8(%rsp,%rdx)
	jmp	.L164
.L221:
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	jne	.L173
	jmp	.L161
.L222:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE30:
	.size	task4, .-task4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\275\320\276\320\274\320\265\321\200 \320\267\320\260\320\264\320\260\321\207\320\270: "
	.section	.rodata.str1.1
.LC6:
	.string	"%d"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\200\320\260\320\267\320\274\320\265\321\200 \320\274\320\260\321\202\321\200\320\270\321\206\321\213: "
	.align 8
.LC8:
	.string	"\320\242\320\260\320\272\320\276\320\270\314\206 \320\267\320\260\320\264\320\260\321\207\320\270 \320\275\320\265\321\202"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	leaq	.LC6(%rip), %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC7(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	4(%rsp), %eax
	cmpl	$3, %eax
	je	.L224
	jg	.L225
	cmpl	$1, %eax
	je	.L226
	cmpl	$2, %eax
	jne	.L228
	movl	(%rsp), %edi
	call	task2
	jmp	.L230
.L225:
	cmpl	$4, %eax
	jne	.L228
	movl	(%rsp), %edi
	call	task4
.L230:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L233
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L228:
	.cfi_restore_state
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L230
.L224:
	movl	(%rsp), %edi
	call	task3
	jmp	.L230
.L226:
	movl	(%rsp), %edi
	call	task1
	jmp	.L230
.L233:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE31:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC2:
	.long	1
	.long	1
	.long	1
	.long	1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.long	1067425202
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

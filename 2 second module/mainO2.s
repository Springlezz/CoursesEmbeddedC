	.file	"main.c"
	.text
	.p2align 4
	.globl	createMatrix
	.type	createMatrix, @function
createMatrix:
.LFB23:
	.cfi_startproc
	endbr64
	movslq	%edi, %r10
	testl	%edi, %edi
	jle	.L1
	salq	$2, %r10
	leal	1(%rdi), %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rsi, %rdx
	movl	%r8d, %eax
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$4, %rdx
	cmpl	%ecx, %eax
	jne	.L4
	addl	$1, %r9d
	addl	%edi, %r8d
	addq	%r10, %rsi
	addl	%edi, %ecx
	cmpl	%r9d, %edi
	jne	.L3
.L1:
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
	jle	.L7
	movslq	%edi, %rdi
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%rax, %rdx
	movl	%eax, -4(%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rdi, %rdx
	jne	.L9
.L7:
	ret
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
	movss	.LC0(%rip), %xmm1
	movl	%edi, %r10d
	.p2align 4,,10
	.p2align 3
.L18:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%r10d, %xmm0
	divss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %r10d
	cmpl	$1, %r10d
	jle	.L21
	cmpl	%r10d, %edi
	jle	.L18
	xorl	%r9d, %r9d
.L13:
	movslq	%r10d, %rax
	movq	%rax, %rdx
	negq	%rdx
	leaq	(%rsi,%rdx,4), %r8
	.p2align 4,,10
	.p2align 3
.L17:
	movl	(%r8,%rax,4), %edx
	movl	(%rsi,%rax,4), %ecx
	cmpl	%ecx, %edx
	jge	.L16
	movl	%ecx, (%r8,%rax,4)
	xorl	%r9d, %r9d
	movl	%edx, (%rsi,%rax,4)
.L16:
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L17
	testl	%r9d, %r9d
	je	.L18
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	cmpl	$1, %edi
	jle	.L22
	movl	$1, %r9d
	movl	$1, %r10d
	jmp	.L13
.L22:
	ret
	.cfi_endproc
.LFE25:
	.size	sortTask2, .-sortTask2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
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
	movq	%r13, %rsi
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	movq	%r13, %rax
	movq	%rsp, %rcx
	imulq	%r13, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	cmpq	%rcx, %rsp
	je	.L25
.L41:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L41
.L25:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L42
.L26:
	movq	%rsp, %rbx
	testl	%esi, %esi
	jle	.L23
	salq	$2, %r13
	leal	1(%rsi), %ecx
	movq	%rbx, %r8
	movl	$1, %edi
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L30:
	movq	%r8, %rdx
	movl	%edi, %eax
	.p2align 4,,10
	.p2align 3
.L29:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$4, %rdx
	cmpl	%ecx, %eax
	jne	.L29
	leal	1(%r14), %edx
	addl	%esi, %edi
	leal	(%rax,%rsi), %ecx
	addq	%r13, %r8
	cmpl	%edx, %esi
	je	.L43
	movl	%edx, %r14d
	jmp	.L30
.L23:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L44
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
.L43:
	.cfi_restore_state
	movl	$0, -68(%rbp)
	addq	%r13, %rbx
	leaq	.LC1(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L31:
	movq	%rbx, %r15
	subq	%r13, %r15
	.p2align 4,,10
	.p2align 3
.L32:
	movl	(%r15), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %r15
	call	__printf_chk@PLT
	cmpq	%rbx, %r15
	jne	.L32
	movl	$10, %edi
	addq	%r13, %rbx
	call	putchar@PLT
	movl	-68(%rbp), %ecx
	leal	1(%rcx), %eax
	cmpl	%r14d, %ecx
	je	.L23
	movl	%eax, -68(%rbp)
	jmp	.L31
.L42:
	orq	$0, -8(%rsp,%rdx)
	jmp	.L26
.L44:
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
	movslq	%edi, %rcx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	leaq	0(,%rcx,4), %r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -40
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	leaq	15(%r12), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rsi
	andq	$-16, %rdx
	cmpq	%rsi, %rsp
	je	.L47
.L62:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rsi, %rsp
	jne	.L62
.L47:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L63
.L48:
	movq	%rsp, %rbx
	testl	%edi, %edi
	jle	.L49
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L50:
	movq	%rax, %rdx
	movl	%eax, -4(%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rdx, %rcx
	jne	.L50
	movq	%rbx, %rsi
	addq	%rbx, %r12
	leaq	.LC1(%rip), %r13
	call	sortTask2
	.p2align 4,,10
	.p2align 3
.L53:
	movl	(%rbx), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %rbx
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L53
.L52:
	movl	$10, %edi
	call	putchar@PLT
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L64
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
.L63:
	.cfi_restore_state
	orq	$0, -8(%rsp,%rdx)
	jmp	.L48
.L49:
	movq	%rbx, %rsi
	call	sortTask2
	jmp	.L52
.L64:
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
	movslq	%edi, %r11
	testl	%edi, %edi
	jle	.L65
	leal	-1(%rdi), %r9d
	movl	%edi, %r8d
	salq	$2, %r11
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L68:
	movl	%r10d, %eax
	movq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L67:
	xorl	%ecx, %ecx
	cmpl	%eax, %r9d
	setle	%cl
	addl	$1, %eax
	addq	$4, %rdx
	movl	%ecx, -4(%rdx)
	cmpl	%eax, %r8d
	jne	.L67
	addl	$1, %r10d
	addl	$1, %r8d
	addq	%r11, %rsi
	cmpl	%r10d, %edi
	jne	.L68
.L65:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -68(%rbp)
	movq	%rsp, %rcx
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %rax
	leaq	0(,%rax,4), %r14
	imulq	%rax, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	cmpq	%rcx, %rsp
	je	.L73
.L84:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L84
.L73:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L85
.L74:
	movl	-68(%rbp), %edi
	movq	%rsp, %rbx
	movq	%rbx, %rsi
	call	triangle
	testl	%edi, %edi
	jle	.L71
	addq	%r14, %rbx
	xorl	%r13d, %r13d
	leaq	.LC1(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L76:
	movq	%rbx, %r15
	subq	%r14, %r15
	.p2align 4,,10
	.p2align 3
.L77:
	movl	(%r15), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %r15
	call	__printf_chk@PLT
	cmpq	%rbx, %r15
	jne	.L77
	movl	$10, %edi
	addl	$1, %r13d
	addq	%r14, %rbx
	call	putchar@PLT
	cmpl	%r13d, -68(%rbp)
	jne	.L76
.L71:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L86
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
.L85:
	.cfi_restore_state
	orq	$0, -8(%rsp,%rdx)
	jmp	.L74
.L86:
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
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, %ebx
	subq	$72, %rsp
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %rax
	movq	%rsp, %rcx
	leaq	0(,%rax,4), %r15
	imulq	%rax, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	cmpq	%rcx, %rsp
	je	.L89
.L124:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rcx, %rsp
	jne	.L124
.L89:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	jne	.L125
.L90:
	movl	%ebx, %eax
	movq	%rsp, %rsi
	leal	-1(%rbx), %r12d
	imull	%ebx, %eax
	movl	%eax, -88(%rbp)
	testl	%ebx, %ebx
	jle	.L126
	movq	%rsi, %r8
	leal	1(%rbx), %ecx
	movl	$1, %edi
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L94:
	movq	%r8, %rdx
	movl	%edi, %eax
	.p2align 4,,10
	.p2align 3
.L93:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$4, %rdx
	cmpl	%ecx, %eax
	jne	.L93
	addl	$1, %r9d
	addl	%ebx, %edi
	addq	%r15, %r8
	addl	%ebx, %ecx
	cmpl	%r9d, %ebx
	jne	.L94
.L96:
	movq	%r15, %rdi
	leaq	4(%r15), %rax
	movq	%rsi, -72(%rbp)
	movslq	%r12d, %rcx
	shrq	$2, %rdi
	movq	%rax, -96(%rbp)
	leaq	-4(%r15), %rax
	movl	%ebx, %r11d
	leaq	1(%rdi), %rdx
	movl	%ebx, -108(%rbp)
	movl	%r12d, %r13d
	xorl	%r9d, %r9d
	imulq	%rdx, %rax
	movq	%r15, -104(%rbp)
	xorl	%r8d, %r8d
	movq	%rcx, %r15
	leaq	-4(%rsi,%rax), %rax
	movq	%rax, -80(%rbp)
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L95:
	cmpl	%r12d, %r8d
	jg	.L107
	leal	1(%rax), %ecx
	movq	-72(%rbp), %rdx
	movl	%eax, %r14d
	leal	(%rcx,%r12), %ebx
	subl	%r8d, %ebx
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L127:
	addl	$1, %ecx
.L98:
	movl	%eax, %r10d
	addq	$4, %rdx
	movl	%ecx, %eax
	movl	%r10d, -4(%rdx)
	cmpl	%ebx, %ecx
	jne	.L127
	leal	1(%r14,%r13), %eax
.L107:
	leal	1(%r8), %r10d
	cmpl	%r12d, %r10d
	jg	.L99
	movl	%eax, %ebx
	movl	%r10d, -84(%rbp)
	movl	%r10d, %ecx
	movslq	%r12d, %r14
	subl	%r9d, %ebx
	subl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L100:
	movslq	%ecx, %rdx
	leal	(%rbx,%rcx), %r10d
	addl	$1, %ecx
	imulq	%rdi, %rdx
	addq	%r14, %rdx
	movl	%r10d, (%rsi,%rdx,4)
	cmpl	%r11d, %ecx
	jne	.L100
	movl	-84(%rbp), %r10d
	addl	%r13d, %eax
.L99:
	subl	$1, %r12d
	cmpl	%r9d, %r12d
	jl	.L101
	movl	%r15d, %ebx
	movq	-80(%rbp), %rdx
	movl	%eax, %r14d
	subl	%r9d, %ebx
	addl	%eax, %ebx
	.p2align 4,,10
	.p2align 3
.L102:
	movl	%eax, %ecx
	addl	$1, %eax
	subq	$4, %rdx
	movl	%ecx, 4(%rdx)
	cmpl	%ebx, %eax
	jne	.L102
	leal	(%r14,%r13), %eax
.L101:
	cmpl	%r12d, %r10d
	jg	.L103
	movl	%r12d, %ecx
	leal	-1(%rax,%r15), %r14d
	.p2align 4,,10
	.p2align 3
.L104:
	movslq	%ecx, %rdx
	movl	%r14d, %ebx
	imulq	%rdi, %rdx
	subl	%ecx, %ebx
	subl	$1, %ecx
	addq	%r8, %rdx
	movl	%ebx, (%rsi,%rdx,4)
	cmpl	%r9d, %ecx
	jne	.L104
	leal	-1(%rax,%r13), %eax
.L103:
	movl	-88(%rbp), %ebx
	movq	-96(%rbp), %rcx
	addl	$1, %r9d
	subq	$1, %r15
	addq	%rcx, -72(%rbp)
	subl	$1, %r11d
	subl	$2, %r13d
	subq	%rcx, -80(%rbp)
	cmpl	%ebx, %eax
	jg	.L105
	movslq	%r10d, %r8
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L105:
	movl	-108(%rbp), %ebx
	movq	-104(%rbp), %r15
	testl	%ebx, %ebx
	jle	.L87
	movl	%ebx, -72(%rbp)
	leaq	(%rsi,%r15), %r12
	xorl	%r14d, %r14d
	leaq	.LC1(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L108:
	movq	%r12, %rbx
	subq	%r15, %rbx
	.p2align 4,,10
	.p2align 3
.L109:
	movl	(%rbx), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$4, %rbx
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L109
	movl	$10, %edi
	addl	$1, %r14d
	addq	%r15, %r12
	call	putchar@PLT
	cmpl	%r14d, -72(%rbp)
	jne	.L108
.L87:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L128
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
.L125:
	.cfi_restore_state
	orq	$0, -8(%rsp,%rdx)
	jmp	.L90
.L126:
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jne	.L96
	jmp	.L87
.L128:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE30:
	.size	task4, .-task4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\275\320\276\320\274\320\265\321\200 \320\267\320\260\320\264\320\260\321\207\320\270: "
	.section	.rodata.str1.1
.LC3:
	.string	"%d"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\200\320\260\320\267\320\274\320\265\321\200 \320\274\320\260\321\202\321\200\320\270\321\206\321\213: "
	.align 8
.LC5:
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
	leaq	.LC2(%rip), %rsi
	movl	$2, %edi
	leaq	.LC3(%rip), %rbx
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
	leaq	.LC4(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	4(%rsp), %eax
	cmpl	$3, %eax
	je	.L130
	jg	.L131
	cmpl	$1, %eax
	je	.L132
	cmpl	$2, %eax
	jne	.L134
	movl	(%rsp), %edi
	call	task2
	jmp	.L136
.L131:
	cmpl	$4, %eax
	jne	.L134
	movl	(%rsp), %edi
	call	task4
.L136:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L139
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L134:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	jmp	.L136
.L130:
	movl	(%rsp), %edi
	call	task3
	jmp	.L136
.L132:
	movl	(%rsp), %edi
	call	task1
	jmp	.L136
.L139:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE31:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
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

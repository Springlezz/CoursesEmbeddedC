	.file	"main.c"
	.text
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
	movl	$1, %r9d
	movl	$0, %r8d
.L3:
	movq	%rsi, %rdx
	movl	%r9d, %eax
.L4:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$4, %rdx
	cmpl	%ecx, %eax
	jne	.L4
	addl	$1, %r8d
	addl	%edi, %r9d
	addq	%r10, %rsi
	addl	%edi, %ecx
	cmpl	%r8d, %edi
	jne	.L3
.L1:
	ret
	.cfi_endproc
.LFE23:
	.size	createMatrix, .-createMatrix
	.globl	createArray
	.type	createArray, @function
createArray:
.LFB24:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L6
	movslq	%edi, %rdi
	movl	$1, %eax
.L8:
	movl	%eax, -4(%rsi,%rax,4)
	movq	%rax, %rdx
	addq	$1, %rax
	cmpq	%rdi, %rdx
	jne	.L8
.L6:
	ret
	.cfi_endproc
.LFE24:
	.size	createArray, .-createArray
	.globl	sortTask2
	.type	sortTask2, @function
sortTask2:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	movl	%edi, %r11d
	movss	.LC0(%rip), %xmm1
	movl	$0, %esi
	movl	$1, %ebp
	jmp	.L16
.L13:
	addq	$4, %rax
	cmpq	%r9, %rax
	je	.L24
.L14:
	movl	(%rax), %edx
	movl	(%rax,%r8,4), %ecx
	cmpl	%ecx, %edx
	jge	.L13
	movl	%ecx, (%rax)
	movl	%edx, (%rax,%r8,4)
	movl	%esi, %r10d
	jmp	.L13
.L24:
	testl	%r10d, %r10d
	jne	.L10
.L16:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%r11d, %xmm0
	divss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %r11d
	cmpl	$1, %r11d
	jle	.L25
	movl	%esi, %r10d
	cmpl	%r11d, %edi
	jle	.L16
.L17:
	movq	%rbx, %rax
	movl	%edi, %edx
	subl	%r11d, %edx
	leaq	(%rbx,%rdx,4), %r9
	movslq	%r11d, %r8
	jmp	.L14
.L25:
	cmpl	$1, %edi
	jle	.L10
	movl	%ebp, %r10d
	movl	%ebp, %r11d
	jmp	.L17
.L10:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	sortTask2, .-sortTask2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d\t"
	.text
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
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %rbx
	leaq	0(,%rbx,4), %r15
	movq	%rbx, %rax
	imulq	%rbx, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rcx
	andq	$-16, %rcx
	andq	$-4096, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
.L27:
	cmpq	%rdx, %rsp
	je	.L28
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L27
.L28:
	movq	%rcx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L29
	orq	$0, -8(%rsp,%rax)
.L29:
	movq	%rsp, %r12
	movq	%r12, %rsi
	movl	-68(%rbp), %r14d
	movl	%r14d, %edi
	call	createMatrix
	testl	%r14d, %r14d
	jle	.L26
	addq	%r15, %r12
	negq	%rbx
	leaq	0(,%rbx,4), %rax
	movq	%rax, -80(%rbp)
	movl	$0, %r14d
	leaq	.LC1(%rip), %r13
.L31:
	movq	-80(%rbp), %rax
	leaq	(%r12,%rax), %rbx
.L32:
	movl	(%rbx), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$4, %rbx
	cmpq	%r12, %rbx
	jne	.L32
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, %r14d
	addq	%r15, %r12
	cmpl	%r14d, -68(%rbp)
	jne	.L31
.L26:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L36
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
.L36:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE26:
	.size	task1, .-task1
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
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, %ebx
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %r13
	salq	$2, %r13
	leaq	15(%r13), %rax
	movq	%rax, %rcx
	andq	$-16, %rcx
	andq	$-4096, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
.L38:
	cmpq	%rdx, %rsp
	je	.L39
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L38
.L39:
	movq	%rcx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L40
	orq	$0, -8(%rsp,%rax)
.L40:
	movq	%rsp, %r12
	movq	%r12, %rsi
	movl	%ebx, %edi
	call	createArray
	movq	%r12, %rsi
	movl	%ebx, %edi
	call	sortTask2
	testl	%ebx, %ebx
	jle	.L41
	movq	%r12, %rbx
	addq	%r13, %r12
	leaq	.LC1(%rip), %r13
.L42:
	movl	(%rbx), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$4, %rbx
	cmpq	%r12, %rbx
	jne	.L42
.L41:
	movl	$10, %edi
	call	putchar@PLT
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L46
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L46:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE27:
	.size	task2, .-task2
	.globl	triangle
	.type	triangle, @function
triangle:
.LFB28:
	.cfi_startproc
	endbr64
	movslq	%edi, %r9
	testl	%edi, %edi
	jle	.L47
	leaq	0(,%r9,4), %r11
	movl	$0, %ecx
	leal	-1(%rdi), %r10d
.L49:
	movq	%rsi, %r8
	movl	$0, %eax
.L50:
	leal	(%rcx,%rax), %edx
	cmpl	%edx, %r10d
	setle	%dl
	movzbl	%dl, %edx
	movl	%edx, (%r8,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r9
	jne	.L50
	addl	$1, %ecx
	addq	%r11, %rsi
	cmpl	%ecx, %edi
	jne	.L49
.L47:
	ret
	.cfi_endproc
.LFE28:
	.size	triangle, .-triangle
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
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %rbx
	leaq	0(,%rbx,4), %r15
	movq	%rbx, %rax
	imulq	%rbx, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rcx
	andq	$-16, %rcx
	andq	$-4096, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
.L53:
	cmpq	%rdx, %rsp
	je	.L54
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L53
.L54:
	movq	%rcx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L55
	orq	$0, -8(%rsp,%rax)
.L55:
	movq	%rsp, %r12
	movq	%r12, %rsi
	movl	-68(%rbp), %r14d
	movl	%r14d, %edi
	call	triangle
	testl	%r14d, %r14d
	jle	.L52
	addq	%r15, %r12
	negq	%rbx
	leaq	0(,%rbx,4), %rax
	movq	%rax, -80(%rbp)
	movl	$0, %r14d
	leaq	.LC1(%rip), %r13
.L57:
	movq	-80(%rbp), %rax
	leaq	(%r12,%rax), %rbx
.L58:
	movl	(%rbx), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$4, %rbx
	cmpq	%r12, %rbx
	jne	.L58
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, %r14d
	addq	%r15, %r12
	cmpl	%r14d, -68(%rbp)
	jne	.L57
.L52:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L62
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
.L62:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE29:
	.size	task3, .-task3
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
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movslq	%edi, %r13
	leaq	0(,%r13,4), %rax
	movq	%rax, -88(%rbp)
	movq	%r13, %rax
	imulq	%r13, %rax
	leaq	15(,%rax,4), %rax
	movq	%rax, %rcx
	andq	$-16, %rcx
	andq	$-4096, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
.L64:
	cmpq	%rdx, %rsp
	je	.L65
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L64
.L65:
	movq	%rcx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L66
	orq	$0, -8(%rsp,%rax)
.L66:
	movq	%rsp, %rbx
	movq	%rbx, %rsi
	movl	-80(%rbp), %r15d
	movl	%r15d, %edi
	call	createMatrix
	movl	%r15d, %eax
	leal	-1(%r15), %edi
	imull	%r15d, %eax
	movl	%eax, -108(%rbp)
	testl	%eax, %eax
	jle	.L67
	movl	%edi, %r15d
	movq	-88(%rbp), %rax
	leaq	4(%rax), %rsi
	movq	%rsi, -96(%rbp)
	movq	%rax, %rsi
	shrq	$2, %rsi
	movq	%rax, %rdx
	xorq	$-4, %rdx
	movq	%rdx, -104(%rbp)
	subq	$4, %rax
	leaq	1(%rsi), %rdx
	imulq	%rdx, %rax
	leaq	-4(%rbx,%rax), %rdx
	movl	%edi, %r11d
	movl	$0, %ecx
	movl	$1, %eax
	movq	%r13, -120(%rbp)
	movq	%rdx, %r8
	movq	%rbx, %rdx
	movq	%r8, %r14
	jmp	.L68
.L76:
	movl	%eax, %r12d
	leal	1(%rdi,%rax), %r10d
	subl	%ecx, %r10d
	movq	%rdx, %r8
.L69:
	movl	%eax, %r9d
	addl	$1, %eax
	movl	%r9d, (%r8)
	addq	$4, %r8
	cmpl	%r10d, %eax
	jne	.L69
	leal	1(%r12,%r11), %eax
.L77:
	movl	%ecx, -68(%rbp)
	leal	1(%rcx), %r8d
	cmpl	%r8d, %edi
	jl	.L70
	movl	%eax, %r13d
	movl	%edi, %r9d
	subl	%ecx, %r9d
	addl	%eax, %r9d
	movl	%r8d, %r12d
	subl	%eax, %r12d
	movslq	%edi, %r10
	movl	%edi, -72(%rbp)
	movl	%ecx, -76(%rbp)
.L71:
	leal	(%r12,%rax), %ecx
	movl	%eax, %edi
	addl	$1, %eax
	movslq	%ecx, %rcx
	imulq	%rsi, %rcx
	addq	%r10, %rcx
	movl	%edi, (%rbx,%rcx,4)
	cmpl	%r9d, %eax
	jne	.L71
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %ecx
	leal	0(%r13,%r11), %eax
.L70:
	subl	$1, %edi
	cmpl	%ecx, %edi
	jl	.L72
	movl	%eax, %r12d
	movl	%r15d, %r13d
	movl	-68(%rbp), %r10d
	subl	%r10d, %r13d
	addl	%eax, %r13d
	movq	%r14, %r9
.L73:
	movl	%eax, %r10d
	addl	$1, %eax
	movl	%r10d, (%r9)
	subq	$4, %r9
	cmpl	%r13d, %eax
	jne	.L73
	leal	(%r12,%r11), %eax
.L72:
	cmpl	%r8d, %edi
	jl	.L74
	movl	%edi, %r9d
	movslq	%ecx, %r13
	leal	-1(%rax,%r15), %r12d
.L75:
	movslq	%r9d, %r8
	imulq	%rsi, %r8
	addq	%r13, %r8
	movl	%r12d, %r10d
	subl	%r9d, %r10d
	movl	%r10d, (%rbx,%r8,4)
	subl	$1, %r9d
	cmpl	%ecx, %r9d
	jne	.L75
	leal	-1(%rax,%r11), %eax
.L74:
	addl	$1, %ecx
	subl	$1, %r15d
	subl	$2, %r11d
	movq	-96(%rbp), %r8
	addq	%r8, %rdx
	movq	-104(%rbp), %r10
	addq	%r10, %r14
	cmpl	%eax, -108(%rbp)
	jl	.L87
.L68:
	cmpl	%edi, %ecx
	jle	.L76
	jmp	.L77
.L87:
	movq	-120(%rbp), %r13
.L67:
	cmpl	$0, -80(%rbp)
	jle	.L63
	movq	-88(%rbp), %rax
	addq	%rax, %rbx
	negq	%r13
	leaq	0(,%r13,4), %r15
	movl	$0, %r14d
	leaq	.LC1(%rip), %r13
.L79:
	leaq	(%rbx,%r15), %r12
.L80:
	movl	(%r12), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$4, %r12
	cmpq	%rbx, %r12
	jne	.L80
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, %r14d
	movq	-88(%rbp), %rax
	addq	%rax, %rbx
	cmpl	%r14d, -80(%rbp)
	jne	.L79
.L63:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L89
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
.L89:
	.cfi_restore_state
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	leaq	.LC3(%rip), %rbx
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	4(%rsp), %eax
	cmpl	$3, %eax
	je	.L91
	jg	.L92
	cmpl	$1, %eax
	je	.L93
	cmpl	$2, %eax
	jne	.L95
	movl	(%rsp), %edi
	call	task2
	jmp	.L97
.L92:
	cmpl	$4, %eax
	jne	.L95
	movl	(%rsp), %edi
	call	task4
	jmp	.L97
.L93:
	movl	(%rsp), %edi
	call	task1
.L97:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L100
	movl	$0, %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L91:
	.cfi_restore_state
	movl	(%rsp), %edi
	call	task3
	jmp	.L97
.L95:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	jmp	.L97
.L100:
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

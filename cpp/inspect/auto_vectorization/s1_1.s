	.file	"s1.cc"
	.text
	.p2align 4
	.globl	foo(int*, int*, int*)
	.type	foo(int*, int*, int*), @function
foo(int*, int*, int*):
.LFB0:
	.cfi_startproc
	endbr64
	leaq	4(%rsi), %rcx
	movq	%rdi, %rax
	subq	%rcx, %rax
	cmpq	$24, %rax
	jbe	.L5
	leaq	4(%rdx), %rcx
	movq	%rdi, %rax
	subq	%rcx, %rax
	cmpq	$24, %rax
	jbe	.L5
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	vmovdqu	(%rsi,%rax), %ymm1
	vpaddd	(%rdx,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rdi,%rax)
	addq	$32, %rax
	cmpq	$1024, %rax
	jne	.L3
	vzeroupper
	ret
.L5:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movl	(%rdx,%rax), %ecx
	addl	(%rsi,%rax), %ecx
	movl	%ecx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	$1024, %rax
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	foo(int*, int*, int*), .-foo(int*, int*, int*)
	.ident	"GCC: (Ubuntu 12.1.0-2ubuntu1~22.04) 12.1.0"
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

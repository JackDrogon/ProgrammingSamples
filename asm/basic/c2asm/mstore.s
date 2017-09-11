	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_mutlstore
	.p2align	4, 0x90
_mutlstore:                             ## @mutlstore
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Lcfi3:
	.cfi_offset %rbx, -24
	movq	%rdx, %rbx
	callq	_mult2
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols

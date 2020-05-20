	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	leaq	-8(%rbp), %rdi
	movl	$10, %eax
	movl	%eax, %esi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	callq	__ZN7RawBaseC1Ei
	leaq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi         ## 4-byte Reload
	callq	__ZN4BaseC1Ei
Ltmp0:
	leaq	-40(%rbp), %rdi
	movl	-56(%rbp), %esi         ## 4-byte Reload
	callq	__ZN7DerivedC1Ei
Ltmp1:
	jmp	LBB0_1
LBB0_1:
	movl	$0, -4(%rbp)
	leaq	-40(%rbp), %rdi
	callq	__ZN7DerivedD1Ev
	leaq	-24(%rbp), %rdi
	callq	__ZN4BaseD1Ev
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB0_2:
Ltmp2:
                                        ## kill: def $edx killed $edx killed $rdx
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZN4BaseD1Ev
## %bb.3:
	movq	-48(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0            ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0     ##     jumps to Ltmp2
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1       ##   Call between Ltmp1 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN7RawBaseC1Ei        ## -- Begin function _ZN7RawBaseC1Ei
	.weak_def_can_be_hidden	__ZN7RawBaseC1Ei
	.p2align	4, 0x90
__ZN7RawBaseC1Ei:                       ## @_ZN7RawBaseC1Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	__ZN7RawBaseC2Ei
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseC1Ei           ## -- Begin function _ZN4BaseC1Ei
	.weak_def_can_be_hidden	__ZN4BaseC1Ei
	.p2align	4, 0x90
__ZN4BaseC1Ei:                          ## @_ZN4BaseC1Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	__ZN4BaseC2Ei
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedC1Ei        ## -- Begin function _ZN7DerivedC1Ei
	.weak_def_can_be_hidden	__ZN7DerivedC1Ei
	.p2align	4, 0x90
__ZN7DerivedC1Ei:                       ## @_ZN7DerivedC1Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	__ZN7DerivedC2Ei
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD1Ev        ## -- Begin function _ZN7DerivedD1Ev
	.weak_def_can_be_hidden	__ZN7DerivedD1Ev
	.p2align	4, 0x90
__ZN7DerivedD1Ev:                       ## @_ZN7DerivedD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN7DerivedD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD1Ev           ## -- Begin function _ZN4BaseD1Ev
	.weak_def_can_be_hidden	__ZN4BaseD1Ev
	.p2align	4, 0x90
__ZN4BaseD1Ev:                          ## @_ZN4BaseD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN4BaseD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7RawBaseC2Ei        ## -- Begin function _ZN7RawBaseC2Ei
	.weak_def_can_be_hidden	__ZN7RawBaseC2Ei
	.p2align	4, 0x90
__ZN7RawBaseC2Ei:                       ## @_ZN7RawBaseC2Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseC2Ei           ## -- Begin function _ZN4BaseC2Ei
	.weak_def_can_be_hidden	__ZN4BaseC2Ei
	.p2align	4, 0x90
__ZN4BaseC2Ei:                          ## @_ZN4BaseC2Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZTV4Base@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD0Ev           ## -- Begin function _ZN4BaseD0Ev
	.weak_def_can_be_hidden	__ZN4BaseD0Ev
	.p2align	4, 0x90
__ZN4BaseD0Ev:                          ## @_ZN4BaseD0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	__ZN4BaseD1Ev
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4Base3getEv         ## -- Begin function _ZN4Base3getEv
	.weak_def_can_be_hidden	__ZN4Base3getEv
	.p2align	4, 0x90
__ZN4Base3getEv:                        ## @_ZN4Base3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedC2Ei        ## -- Begin function _ZN7DerivedC2Ei
	.weak_def_can_be_hidden	__ZN7DerivedC2Ei
	.p2align	4, 0x90
__ZN7DerivedC2Ei:                       ## @_ZN7DerivedC2Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	-12(%rbp), %esi
	movq	%rcx, %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	__ZN4BaseC2Ei
	movq	__ZTV7Derived@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD0Ev        ## -- Begin function _ZN7DerivedD0Ev
	.weak_def_can_be_hidden	__ZN7DerivedD0Ev
	.p2align	4, 0x90
__ZN7DerivedD0Ev:                       ## @_ZN7DerivedD0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	__ZN7DerivedD1Ev
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7Derived3getEv      ## -- Begin function _ZN7Derived3getEv
	.weak_def_can_be_hidden	__ZN7Derived3getEv
	.p2align	4, 0x90
__ZN7Derived3getEv:                     ## @_ZN7Derived3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$10, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD2Ev        ## -- Begin function _ZN7DerivedD2Ev
	.weak_def_can_be_hidden	__ZN7DerivedD2Ev
	.p2align	4, 0x90
__ZN7DerivedD2Ev:                       ## @_ZN7DerivedD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN4BaseD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD2Ev           ## -- Begin function _ZN4BaseD2Ev
	.weak_def_can_be_hidden	__ZN4BaseD2Ev
	.p2align	4, 0x90
__ZN4BaseD2Ev:                          ## @_ZN4BaseD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__const
	.globl	__ZTV4Base              ## @_ZTV4Base
	.weak_def_can_be_hidden	__ZTV4Base
	.p2align	3
__ZTV4Base:
	.quad	0
	.quad	__ZTI4Base
	.quad	__ZN4BaseD1Ev
	.quad	__ZN4BaseD0Ev
	.quad	__ZN4Base3getEv

	.section	__TEXT,__const
	.globl	__ZTS4Base              ## @_ZTS4Base
	.weak_definition	__ZTS4Base
__ZTS4Base:
	.asciz	"4Base"

	.section	__DATA,__const
	.globl	__ZTI4Base              ## @_ZTI4Base
	.weak_definition	__ZTI4Base
	.p2align	3
__ZTI4Base:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS4Base

	.globl	__ZTV7Derived           ## @_ZTV7Derived
	.weak_def_can_be_hidden	__ZTV7Derived
	.p2align	3
__ZTV7Derived:
	.quad	0
	.quad	__ZTI7Derived
	.quad	__ZN7DerivedD1Ev
	.quad	__ZN7DerivedD0Ev
	.quad	__ZN7Derived3getEv

	.section	__TEXT,__const
	.globl	__ZTS7Derived           ## @_ZTS7Derived
	.weak_definition	__ZTS7Derived
__ZTS7Derived:
	.asciz	"7Derived"

	.section	__DATA,__const
	.globl	__ZTI7Derived           ## @_ZTI7Derived
	.weak_definition	__ZTI7Derived
	.p2align	3
__ZTI7Derived:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS7Derived
	.quad	__ZTI4Base

.subsections_via_symbols

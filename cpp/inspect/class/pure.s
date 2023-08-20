	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z3getP4Base                   ## -- Begin function _Z3getP4Base
	.p2align	4, 0x90
__Z3getP4Base:                          ## @_Z3getP4Base
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	callq	*16(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
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
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	leaq	-24(%rbp), %rbx
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	__ZN7DerivedC1Ei
Ltmp0:
	movq	%rbx, %rdi
	callq	__Z3getP4Base
Ltmp1:
## %bb.1:
	leaq	-24(%rbp), %rdi
	callq	__ZN7DerivedD1Ev
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB1_2:
Ltmp2:
	movq	%rax, %rbx
	leaq	-24(%rbp), %rdi
	callq	__ZN7DerivedD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ##     jumps to Ltmp2
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1               ##   Call between Ltmp1 and Lfunc_end0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN7DerivedC1Ei                ## -- Begin function _ZN7DerivedC1Ei
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
	callq	__ZN7DerivedC2Ei
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD1Ev                ## -- Begin function _ZN7DerivedD1Ev
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
	callq	__ZN7DerivedD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedC2Ei                ## -- Begin function _ZN7DerivedC2Ei
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZN4BaseC2Ei
	movq	__ZTV7Derived@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseC2Ei                   ## -- Begin function _ZN4BaseC2Ei
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
	movq	%rax, (%rdi)
	movl	%esi, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD0Ev                ## -- Begin function _ZN7DerivedD0Ev
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZN7DerivedD1Ev
	movq	%rbx, %rdi
	callq	__ZdlPv
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7Derived3getEv              ## -- Begin function _ZN7Derived3getEv
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
	movl	8(%rdi), %eax
	addl	$10, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD1Ev                   ## -- Begin function _ZN4BaseD1Ev
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
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD0Ev                   ## -- Begin function _ZN4BaseD0Ev
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
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD2Ev                ## -- Begin function _ZN7DerivedD2Ev
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
	callq	__ZN4BaseD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD2Ev                   ## -- Begin function _ZN4BaseD2Ev
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
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__const
	.globl	__ZTV7Derived                   ## @_ZTV7Derived
	.weak_def_can_be_hidden	__ZTV7Derived
	.p2align	3
__ZTV7Derived:
	.quad	0
	.quad	__ZTI7Derived
	.quad	__ZN7DerivedD1Ev
	.quad	__ZN7DerivedD0Ev
	.quad	__ZN7Derived3getEv

	.section	__TEXT,__const
	.globl	__ZTS7Derived                   ## @_ZTS7Derived
	.weak_definition	__ZTS7Derived
__ZTS7Derived:
	.asciz	"7Derived"

	.globl	__ZTS4Base                      ## @_ZTS4Base
	.weak_definition	__ZTS4Base
__ZTS4Base:
	.asciz	"4Base"

	.section	__DATA,__const
	.globl	__ZTI4Base                      ## @_ZTI4Base
	.weak_definition	__ZTI4Base
	.p2align	3
__ZTI4Base:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS4Base

	.globl	__ZTI7Derived                   ## @_ZTI7Derived
	.weak_definition	__ZTI7Derived
	.p2align	3
__ZTI7Derived:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS7Derived
	.quad	__ZTI4Base

	.globl	__ZTV4Base                      ## @_ZTV4Base
	.weak_def_can_be_hidden	__ZTV4Base
	.p2align	3
__ZTV4Base:
	.quad	0
	.quad	__ZTI4Base
	.quad	__ZN4BaseD1Ev
	.quad	__ZN4BaseD0Ev
	.quad	___cxa_pure_virtual

.subsections_via_symbols

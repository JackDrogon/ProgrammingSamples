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
	callq	RawBase::RawBase(int)
	leaq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi         ## 4-byte Reload
	callq	Base::Base(int)
Ltmp0:
	leaq	-40(%rbp), %rdi
	movl	-56(%rbp), %esi         ## 4-byte Reload
	callq	Derived::Derived(int)
Ltmp1:
	jmp	LBB0_1
LBB0_1:
	movl	$0, -4(%rbp)
	leaq	-40(%rbp), %rdi
	callq	Derived::~Derived()
	leaq	-24(%rbp), %rdi
	callq	Base::~Base()
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
	callq	Base::~Base()
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
	.globl	RawBase::RawBase(int)        ## -- Begin function _ZN7RawBaseC1Ei
	.weak_def_can_be_hidden	RawBase::RawBase(int)
	.p2align	4, 0x90
RawBase::RawBase(int):                       ## @_ZN7RawBaseC1Ei
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
	callq	RawBase::RawBase(int)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Base::Base(int)           ## -- Begin function _ZN4BaseC1Ei
	.weak_def_can_be_hidden	Base::Base(int)
	.p2align	4, 0x90
Base::Base(int):                          ## @_ZN4BaseC1Ei
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
	callq	Base::Base(int)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::Derived(int)        ## -- Begin function _ZN7DerivedC1Ei
	.weak_def_can_be_hidden	Derived::Derived(int)
	.p2align	4, 0x90
Derived::Derived(int):                       ## @_ZN7DerivedC1Ei
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
	callq	Derived::Derived(int)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::~Derived()        ## -- Begin function _ZN7DerivedD1Ev
	.weak_def_can_be_hidden	Derived::~Derived()
	.p2align	4, 0x90
Derived::~Derived():                       ## @_ZN7DerivedD1Ev
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
	callq	Derived::~Derived()
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Base::~Base()           ## -- Begin function _ZN4BaseD1Ev
	.weak_def_can_be_hidden	Base::~Base()
	.p2align	4, 0x90
Base::~Base():                          ## @_ZN4BaseD1Ev
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
	callq	Base::~Base()
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	RawBase::RawBase(int)        ## -- Begin function _ZN7RawBaseC2Ei
	.weak_def_can_be_hidden	RawBase::RawBase(int)
	.p2align	4, 0x90
RawBase::RawBase(int):                       ## @_ZN7RawBaseC2Ei
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
	.globl	Base::Base(int)           ## -- Begin function _ZN4BaseC2Ei
	.weak_def_can_be_hidden	Base::Base(int)
	.p2align	4, 0x90
Base::Base(int):                          ## @_ZN4BaseC2Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	vtable for Base@GOTPCREL(%rip), %rax
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
	.globl	Base::~Base()           ## -- Begin function _ZN4BaseD0Ev
	.weak_def_can_be_hidden	Base::~Base()
	.p2align	4, 0x90
Base::~Base():                          ## @_ZN4BaseD0Ev
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
	callq	Base::~Base()
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	operator delete(void*)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Base::get()         ## -- Begin function _ZN4Base3getEv
	.weak_def_can_be_hidden	Base::get()
	.p2align	4, 0x90
Base::get():                        ## @_ZN4Base3getEv
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
	.globl	Derived::Derived(int)        ## -- Begin function _ZN7DerivedC2Ei
	.weak_def_can_be_hidden	Derived::Derived(int)
	.p2align	4, 0x90
Derived::Derived(int):                       ## @_ZN7DerivedC2Ei
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
	callq	Base::Base(int)
	movq	vtable for Derived@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::~Derived()        ## -- Begin function _ZN7DerivedD0Ev
	.weak_def_can_be_hidden	Derived::~Derived()
	.p2align	4, 0x90
Derived::~Derived():                       ## @_ZN7DerivedD0Ev
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
	callq	Derived::~Derived()
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	operator delete(void*)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::get()      ## -- Begin function _ZN7Derived3getEv
	.weak_def_can_be_hidden	Derived::get()
	.p2align	4, 0x90
Derived::get():                     ## @_ZN7Derived3getEv
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
	.globl	Derived::~Derived()        ## -- Begin function _ZN7DerivedD2Ev
	.weak_def_can_be_hidden	Derived::~Derived()
	.p2align	4, 0x90
Derived::~Derived():                       ## @_ZN7DerivedD2Ev
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
	callq	Base::~Base()
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Base::~Base()           ## -- Begin function _ZN4BaseD2Ev
	.weak_def_can_be_hidden	Base::~Base()
	.p2align	4, 0x90
Base::~Base():                          ## @_ZN4BaseD2Ev
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
	.globl	vtable for Base              ## @_ZTV4Base
	.weak_def_can_be_hidden	vtable for Base
	.p2align	3
vtable for Base:
	.quad	0
	.quad	typeinfo for Base
	.quad	Base::~Base()
	.quad	Base::~Base()
	.quad	Base::get()

	.section	__TEXT,__const
	.globl	typeinfo name for Base              ## @_ZTS4Base
	.weak_definition	typeinfo name for Base
typeinfo name for Base:
	.asciz	"4Base"

	.section	__DATA,__const
	.globl	typeinfo for Base              ## @_ZTI4Base
	.weak_definition	typeinfo for Base
	.p2align	3
typeinfo for Base:
	.quad	vtable for __cxxabiv1::__class_type_info+16
	.quad	typeinfo name for Base

	.globl	vtable for Derived           ## @_ZTV7Derived
	.weak_def_can_be_hidden	vtable for Derived
	.p2align	3
vtable for Derived:
	.quad	0
	.quad	typeinfo for Derived
	.quad	Derived::~Derived()
	.quad	Derived::~Derived()
	.quad	Derived::get()

	.section	__TEXT,__const
	.globl	typeinfo name for Derived           ## @_ZTS7Derived
	.weak_definition	typeinfo name for Derived
typeinfo name for Derived:
	.asciz	"7Derived"

	.section	__DATA,__const
	.globl	typeinfo for Derived           ## @_ZTI7Derived
	.weak_definition	typeinfo for Derived
	.p2align	3
typeinfo for Derived:
	.quad	vtable for __cxxabiv1::__si_class_type_info+16
	.quad	typeinfo name for Derived
	.quad	typeinfo for Base

.subsections_via_symbols

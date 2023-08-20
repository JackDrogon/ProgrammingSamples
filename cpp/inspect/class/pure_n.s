	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	get(Base*)                   ## -- Begin function _Z3getP4Base
	.p2align	4, 0x90
get(Base*):                          ## @get(Base*)
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
	callq	Derived::Derived(int)
Ltmp0:
	movq	%rbx, %rdi
	callq	get(Base*)
Ltmp1:
## %bb.1:
	leaq	-24(%rbp), %rdi
	callq	Derived::~Derived()
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB1_2:
Ltmp2:
	movq	%rax, %rbx
	leaq	-24(%rbp), %rdi
	callq	Derived::~Derived()
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
	.globl	Derived::Derived(int)                ## -- Begin function _ZN7DerivedC1Ei
	.weak_def_can_be_hidden	Derived::Derived(int)
	.p2align	4, 0x90
Derived::Derived(int):                       ## @Derived::Derived(int)
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	Derived::Derived(int)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::~Derived()                ## -- Begin function _ZN7DerivedD1Ev
	.weak_def_can_be_hidden	Derived::~Derived()
	.p2align	4, 0x90
Derived::~Derived():                       ## @Derived::~Derived()
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	Derived::~Derived()
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::Derived(int)                ## -- Begin function _ZN7DerivedC2Ei
	.weak_def_can_be_hidden	Derived::Derived(int)
	.p2align	4, 0x90
Derived::Derived(int):                       ## @Derived::Derived(int)
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
	callq	Base::Base(int)
	movq	vtable for Derived@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Base::Base(int)                   ## -- Begin function _ZN4BaseC2Ei
	.weak_def_can_be_hidden	Base::Base(int)
	.p2align	4, 0x90
Base::Base(int):                          ## @Base::Base(int)
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	vtable for Base@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	movl	%esi, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::~Derived()                ## -- Begin function _ZN7DerivedD0Ev
	.weak_def_can_be_hidden	Derived::~Derived()
	.p2align	4, 0x90
Derived::~Derived():                       ## @Derived::~Derived()
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
	callq	Derived::~Derived()
	movq	%rbx, %rdi
	callq	operator delete(void*)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Derived::get()              ## -- Begin function _ZN7Derived3getEv
	.weak_def_can_be_hidden	Derived::get()
	.p2align	4, 0x90
Derived::get():                     ## @Derived::get()
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
	.globl	Base::~Base()                   ## -- Begin function _ZN4BaseD1Ev
	.weak_def_can_be_hidden	Base::~Base()
	.p2align	4, 0x90
Base::~Base():                          ## @Base::~Base()
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
	.globl	Base::~Base()                   ## -- Begin function _ZN4BaseD0Ev
	.weak_def_can_be_hidden	Base::~Base()
	.p2align	4, 0x90
Base::~Base():                          ## @Base::~Base()
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
	.globl	Derived::~Derived()                ## -- Begin function _ZN7DerivedD2Ev
	.weak_def_can_be_hidden	Derived::~Derived()
	.p2align	4, 0x90
Derived::~Derived():                       ## @Derived::~Derived()
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	Base::~Base()
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	Base::~Base()                   ## -- Begin function _ZN4BaseD2Ev
	.weak_def_can_be_hidden	Base::~Base()
	.p2align	4, 0x90
Base::~Base():                          ## @Base::~Base()
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
	.globl	vtable for Derived                   ## @vtable for Derived
	.weak_def_can_be_hidden	vtable for Derived
	.p2align	3
vtable for Derived:
	.quad	0
	.quad	typeinfo for Derived
	.quad	Derived::~Derived()
	.quad	Derived::~Derived()
	.quad	Derived::get()

	.section	__TEXT,__const
	.globl	typeinfo name for Derived                   ## @typeinfo name for Derived
	.weak_definition	typeinfo name for Derived
typeinfo name for Derived:
	.asciz	"7Derived"

	.globl	typeinfo name for Base                      ## @typeinfo name for Base
	.weak_definition	typeinfo name for Base
typeinfo name for Base:
	.asciz	"4Base"

	.section	__DATA,__const
	.globl	typeinfo for Base                      ## @typeinfo for Base
	.weak_definition	typeinfo for Base
	.p2align	3
typeinfo for Base:
	.quad	vtable for __cxxabiv1::__class_type_info+16
	.quad	typeinfo name for Base

	.globl	typeinfo for Derived                   ## @typeinfo for Derived
	.weak_definition	typeinfo for Derived
	.p2align	3
typeinfo for Derived:
	.quad	vtable for __cxxabiv1::__si_class_type_info+16
	.quad	typeinfo name for Derived
	.quad	typeinfo for Base

	.globl	vtable for Base                      ## @vtable for Base
	.weak_def_can_be_hidden	vtable for Base
	.p2align	3
vtable for Base:
	.quad	0
	.quad	typeinfo for Base
	.quad	Base::~Base()
	.quad	Base::~Base()
	.quad	___cxa_pure_virtual

.subsections_via_symbols

	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.file	1 "/Users/Nepenthe/Program/GitHub/ProgrammingSamples/cpp/inspect/class" "vtable.cc"
	.globl	__Z3getP4Base                   ## -- Begin function _Z3getP4Base
	.p2align	4, 0x90
__Z3getP4Base:                          ## @_Z3getP4Base
Lfunc_begin0:
	.loc	1 15 0                          ## vtable.cc:15:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: get:b <- $rdi
	##DEBUG_VALUE: get:b <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp0:
	.loc	1 15 30 prologue_end            ## vtable.cc:15:30
	movq	(%rdi), %rax
	callq	*16(%rax)
Ltmp1:
	##DEBUG_VALUE: get:b <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	1 15 20 is_stmt 0               ## vtable.cc:15:20
	popq	%rbp
	retq
Ltmp2:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3setP4Base                   ## -- Begin function _Z3setP4Base
	.p2align	4, 0x90
__Z3setP4Base:                          ## @_Z3setP4Base
Lfunc_begin1:
	.loc	1 16 0 is_stmt 1                ## vtable.cc:16:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: set:b <- $rdi
	##DEBUG_VALUE: set:b <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp3:
	.loc	1 16 24 prologue_end            ## vtable.cc:16:24
	movq	(%rdi), %rax
	movl	$110, %esi
	callq	*24(%rax)
Ltmp4:
	##DEBUG_VALUE: set:b <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	1 16 34 is_stmt 0               ## vtable.cc:16:34
	popq	%rbp
	retq
Ltmp5:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin2:
	.loc	1 19 0 is_stmt 1                ## vtable.cc:19:0
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
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	leaq	-72(%rbp), %rbx
Ltmp24:
	.loc	1 20 7 prologue_end             ## vtable.cc:20:7
	movq	%rbx, %rdi
	movl	$11, %esi
	callq	__ZN4BaseC1Ei
Ltmp25:
Ltmp6:
	.loc	1 21 2                          ## vtable.cc:21:2
	movq	%rbx, %rdi
	callq	__Z3getP4Base
Ltmp26:
Ltmp7:
## %bb.1:
Ltmp9:
	.loc	1 0 2 is_stmt 0                 ## vtable.cc:0:2
	leaq	-56(%rbp), %rdi
	.loc	1 23 7 is_stmt 1                ## vtable.cc:23:7
	movl	$12, %esi
	callq	__ZN4BaseC1Ei
Ltmp27:
Ltmp10:
## %bb.2:
Ltmp12:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	.loc	1 0 7 is_stmt 0                 ## vtable.cc:0:7
	leaq	-24(%rbp), %rdi
	.loc	1 26 10 is_stmt 1               ## vtable.cc:26:10
	movl	$21, %esi
	callq	__ZN7DerivedC1Ei
Ltmp28:
Ltmp13:
## %bb.3:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
Ltmp15:
	.loc	1 0 10 is_stmt 0                ## vtable.cc:0:10
	leaq	-24(%rbp), %rdi
	.loc	1 27 2 is_stmt 1                ## vtable.cc:27:2
	callq	__Z3getP4Base
Ltmp29:
Ltmp16:
## %bb.4:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
Ltmp18:
	.loc	1 0 2 is_stmt 0                 ## vtable.cc:0:2
	leaq	-40(%rbp), %rdi
	.loc	1 29 10 is_stmt 1               ## vtable.cc:29:10
	movl	$22, %esi
	callq	__ZN7DerivedC1Ei
Ltmp30:
Ltmp19:
## %bb.5:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
Ltmp21:
	##DEBUG_VALUE: main:pd <- [DW_OP_LLVM_fragment 0 64] 17
	##DEBUG_VALUE: main:pd <- [DW_OP_LLVM_fragment 64 64] 0
	.loc	1 0 10 is_stmt 0                ## vtable.cc:0:10
	leaq	-24(%rbp), %rdi
	.loc	1 33 2 is_stmt 1                ## vtable.cc:33:2
	callq	__Z3setP4Base
Ltmp31:
Ltmp22:
## %bb.6:
	##DEBUG_VALUE: main:pd <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pd <- [DW_OP_LLVM_fragment 0 64] 17
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
	.loc	1 0 2 is_stmt 0                 ## vtable.cc:0:2
	leaq	-40(%rbp), %rdi
	.loc	1 36 1 is_stmt 1                ## vtable.cc:36:1
	callq	__ZN7DerivedD1Ev
Ltmp32:
	.loc	1 0 1 is_stmt 0                 ## vtable.cc:0:1
	leaq	-24(%rbp), %rdi
	.loc	1 36 1                          ## vtable.cc:36:1
	callq	__ZN7DerivedD1Ev
Ltmp33:
	.loc	1 0 1                           ## vtable.cc:0:1
	leaq	-56(%rbp), %rdi
	.loc	1 36 1                          ## vtable.cc:36:1
	callq	__ZN4BaseD1Ev
Ltmp34:
	.loc	1 0 1                           ## vtable.cc:0:1
	leaq	-72(%rbp), %rdi
	.loc	1 36 1                          ## vtable.cc:36:1
	callq	__ZN4BaseD1Ev
Ltmp35:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
Ltmp36:
LBB2_7:
	##DEBUG_VALUE: main:pd <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pd <- [DW_OP_LLVM_fragment 0 64] 17
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
Ltmp23:
	.loc	1 0 1                           ## vtable.cc:0:1
	movq	%rax, %rbx
	leaq	-40(%rbp), %rdi
	.loc	1 36 1                          ## vtable.cc:36:1
	callq	__ZN7DerivedD1Ev
Ltmp37:
	.loc	1 0 1                           ## vtable.cc:0:1
	jmp	LBB2_11
Ltmp38:
LBB2_8:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
Ltmp20:
	jmp	LBB2_10
Ltmp39:
LBB2_9:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
Ltmp17:
LBB2_10:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
	movq	%rax, %rbx
Ltmp40:
LBB2_11:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
	leaq	-24(%rbp), %rdi
	.loc	1 36 1                          ## vtable.cc:36:1
	callq	__ZN7DerivedD1Ev
Ltmp41:
	.loc	1 0 1                           ## vtable.cc:0:1
	jmp	LBB2_13
Ltmp42:
LBB2_12:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
Ltmp14:
	movq	%rax, %rbx
Ltmp43:
LBB2_13:
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 64 64] 0
	##DEBUG_VALUE: main:pb <- [DW_OP_LLVM_fragment 0 64] 17
	leaq	-56(%rbp), %rdi
	.loc	1 36 1                          ## vtable.cc:36:1
	callq	__ZN4BaseD1Ev
Ltmp44:
	.loc	1 0 1                           ## vtable.cc:0:1
	jmp	LBB2_17
Ltmp45:
LBB2_14:
Ltmp11:
	jmp	LBB2_16
LBB2_15:
Ltmp8:
LBB2_16:
	movq	%rax, %rbx
LBB2_17:
	leaq	-72(%rbp), %rdi
	.loc	1 36 1                          ## vtable.cc:36:1
	callq	__ZN4BaseD1Ev
Ltmp46:
	.loc	1 0 1                           ## vtable.cc:0:1
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Ltmp47:
	ud2
Ltmp48:
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.uleb128 Ltmp6-Lfunc_begin2             ##   Call between Lfunc_begin2 and Ltmp6
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin2             ## >> Call Site 2 <<
	.uleb128 Ltmp7-Ltmp6                    ##   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin2             ##     jumps to Ltmp8
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin2             ## >> Call Site 3 <<
	.uleb128 Ltmp10-Ltmp9                   ##   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin2            ##     jumps to Ltmp11
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin2            ## >> Call Site 4 <<
	.uleb128 Ltmp13-Ltmp12                  ##   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin2            ##     jumps to Ltmp14
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin2            ## >> Call Site 5 <<
	.uleb128 Ltmp16-Ltmp15                  ##   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin2            ##     jumps to Ltmp17
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin2            ## >> Call Site 6 <<
	.uleb128 Ltmp19-Ltmp18                  ##   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin2            ##     jumps to Ltmp20
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin2            ## >> Call Site 7 <<
	.uleb128 Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin2            ##     jumps to Ltmp23
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin2            ## >> Call Site 8 <<
	.uleb128 Lfunc_end2-Ltmp22              ##   Call between Ltmp22 and Lfunc_end2
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4BaseC1Ei                   ## -- Begin function _ZN4BaseC1Ei
	.weak_def_can_be_hidden	__ZN4BaseC1Ei
	.p2align	4, 0x90
__ZN4BaseC1Ei:                          ## @_ZN4BaseC1Ei
Lfunc_begin3:
	.loc	1 2 0 is_stmt 1                 ## vtable.cc:2:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: Base:this <- $rdi
	##DEBUG_VALUE: Base:this <- $rdi
	##DEBUG_VALUE: Base:n_arg <- $esi
	##DEBUG_VALUE: Base:n_arg <- $esi
	##DEBUG_VALUE: Base:n_arg <- $esi
	##DEBUG_VALUE: Base:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp49:
	.loc	1 2 29 prologue_end             ## vtable.cc:2:29
	callq	__ZN4BaseC2Ei
Ltmp50:
	##DEBUG_VALUE: Base:this <- [DW_OP_LLVM_entry_value 1] $rdi
	##DEBUG_VALUE: Base:n_arg <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	1 2 30 is_stmt 0                ## vtable.cc:2:30
	popq	%rbp
	retq
Ltmp51:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedC1Ei                ## -- Begin function _ZN7DerivedC1Ei
	.weak_def_can_be_hidden	__ZN7DerivedC1Ei
	.p2align	4, 0x90
__ZN7DerivedC1Ei:                       ## @_ZN7DerivedC1Ei
Lfunc_begin4:
	.loc	1 11 0 is_stmt 1                ## vtable.cc:11:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: Derived:this <- $rdi
	##DEBUG_VALUE: Derived:this <- $rdi
	##DEBUG_VALUE: Derived:n_arg <- $esi
	##DEBUG_VALUE: Derived:n_arg <- $esi
	##DEBUG_VALUE: Derived:n_arg <- $esi
	##DEBUG_VALUE: Derived:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp52:
	.loc	1 11 35 prologue_end            ## vtable.cc:11:35
	callq	__ZN7DerivedC2Ei
Ltmp53:
	##DEBUG_VALUE: Derived:this <- [DW_OP_LLVM_entry_value 1] $rdi
	##DEBUG_VALUE: Derived:n_arg <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	1 11 36 is_stmt 0               ## vtable.cc:11:36
	popq	%rbp
	retq
Ltmp54:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD1Ev                ## -- Begin function _ZN7DerivedD1Ev
	.weak_def_can_be_hidden	__ZN7DerivedD1Ev
	.p2align	4, 0x90
__ZN7DerivedD1Ev:                       ## @_ZN7DerivedD1Ev
Lfunc_begin5:
	.loc	1 10 0 is_stmt 1                ## vtable.cc:10:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: ~Derived:this <- $rdi
	##DEBUG_VALUE: ~Derived:this <- $rdi
	##DEBUG_VALUE: ~Derived:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp55:
	.loc	1 10 8 prologue_end             ## vtable.cc:10:8
	callq	__ZN7DerivedD2Ev
Ltmp56:
	##DEBUG_VALUE: ~Derived:this <- [DW_OP_LLVM_entry_value 1] $rdi
	popq	%rbp
	retq
Ltmp57:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD1Ev                   ## -- Begin function _ZN4BaseD1Ev
	.weak_def_can_be_hidden	__ZN4BaseD1Ev
	.p2align	4, 0x90
__ZN4BaseD1Ev:                          ## @_ZN4BaseD1Ev
Lfunc_begin6:
	.loc	1 3 0                           ## vtable.cc:3:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: ~Base:this <- $rdi
	##DEBUG_VALUE: ~Base:this <- $rdi
	##DEBUG_VALUE: ~Base:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp58:
	.loc	1 3 26 prologue_end             ## vtable.cc:3:26
	callq	__ZN4BaseD2Ev
Ltmp59:
	##DEBUG_VALUE: ~Base:this <- [DW_OP_LLVM_entry_value 1] $rdi
	popq	%rbp
	retq
Ltmp60:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseC2Ei                   ## -- Begin function _ZN4BaseC2Ei
	.weak_def_can_be_hidden	__ZN4BaseC2Ei
	.p2align	4, 0x90
__ZN4BaseC2Ei:                          ## @_ZN4BaseC2Ei
Lfunc_begin7:
	.loc	1 2 0                           ## vtable.cc:2:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: Base:this <- $rdi
	##DEBUG_VALUE: Base:this <- $rdi
	##DEBUG_VALUE: Base:n_arg <- $esi
	##DEBUG_VALUE: Base:n_arg <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp61:
	.loc	1 2 29 prologue_end             ## vtable.cc:2:29
	movq	__ZTV4Base@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	.loc	1 2 20 is_stmt 0                ## vtable.cc:2:20
	movl	%esi, 8(%rdi)
	.loc	1 2 30                          ## vtable.cc:2:30
	popq	%rbp
	retq
Ltmp62:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD0Ev                   ## -- Begin function _ZN4BaseD0Ev
	.weak_def_can_be_hidden	__ZN4BaseD0Ev
	.p2align	4, 0x90
__ZN4BaseD0Ev:                          ## @_ZN4BaseD0Ev
Lfunc_begin8:
	.loc	1 3 0 is_stmt 1                 ## vtable.cc:3:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: ~Base:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
Ltmp63:
	##DEBUG_VALUE: ~Base:this <- $rbx
	.loc	1 3 26 prologue_end             ## vtable.cc:3:26
	callq	__ZN4BaseD1Ev
Ltmp64:
	movq	%rbx, %rdi
	callq	__ZdlPv
Ltmp65:
	addq	$8, %rsp
	popq	%rbx
Ltmp66:
	##DEBUG_VALUE: ~Base:this <- [DW_OP_LLVM_entry_value 1] $rdi
	popq	%rbp
	retq
Ltmp67:
Lfunc_end8:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4Base3getEv                 ## -- Begin function _ZN4Base3getEv
	.weak_def_can_be_hidden	__ZN4Base3getEv
	.p2align	4, 0x90
__ZN4Base3getEv:                        ## @_ZN4Base3getEv
Lfunc_begin9:
	.loc	1 5 0                           ## vtable.cc:5:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: get:this <- $rdi
	##DEBUG_VALUE: get:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp68:
	.loc	1 5 29 prologue_end             ## vtable.cc:5:29
	movl	8(%rdi), %eax
	.loc	1 5 22 is_stmt 0                ## vtable.cc:5:22
	popq	%rbp
	retq
Ltmp69:
Lfunc_end9:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4Base3setEi                 ## -- Begin function _ZN4Base3setEi
	.weak_def_can_be_hidden	__ZN4Base3setEi
	.p2align	4, 0x90
__ZN4Base3setEi:                        ## @_ZN4Base3setEi
Lfunc_begin10:
	.loc	1 6 0 is_stmt 1                 ## vtable.cc:6:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: set:this <- $rdi
	##DEBUG_VALUE: set:this <- $rdi
	##DEBUG_VALUE: set:n_arg <- $esi
	##DEBUG_VALUE: set:n_arg <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp70:
	.loc	1 6 34 prologue_end             ## vtable.cc:6:34
	movl	%esi, 8(%rdi)
	.loc	1 6 43 is_stmt 0                ## vtable.cc:6:43
	popq	%rbp
	retq
Ltmp71:
Lfunc_end10:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedC2Ei                ## -- Begin function _ZN7DerivedC2Ei
	.weak_def_can_be_hidden	__ZN7DerivedC2Ei
	.p2align	4, 0x90
__ZN7DerivedC2Ei:                       ## @_ZN7DerivedC2Ei
Lfunc_begin11:
	.loc	1 11 0 is_stmt 1                ## vtable.cc:11:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: Derived:this <- $rdi
	##DEBUG_VALUE: Derived:n_arg <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	##DEBUG_VALUE: Derived:n_arg <- $esi
Ltmp72:
	##DEBUG_VALUE: Derived:this <- $rbx
	##DEBUG_VALUE: Derived:n_arg <- $esi
	.loc	1 11 23 prologue_end            ## vtable.cc:11:23
	callq	__ZN4BaseC2Ei
Ltmp73:
	##DEBUG_VALUE: Derived:n_arg <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	1 11 35 is_stmt 0               ## vtable.cc:11:35
	movq	__ZTV7Derived@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	.loc	1 11 36                         ## vtable.cc:11:36
	addq	$8, %rsp
	popq	%rbx
Ltmp74:
	popq	%rbp
	retq
Ltmp75:
Lfunc_end11:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD0Ev                ## -- Begin function _ZN7DerivedD0Ev
	.weak_def_can_be_hidden	__ZN7DerivedD0Ev
	.p2align	4, 0x90
__ZN7DerivedD0Ev:                       ## @_ZN7DerivedD0Ev
Lfunc_begin12:
	.loc	1 10 0 is_stmt 1                ## vtable.cc:10:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: ~Derived:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
Ltmp76:
	##DEBUG_VALUE: ~Derived:this <- $rbx
	.loc	1 10 8 prologue_end             ## vtable.cc:10:8
	callq	__ZN7DerivedD1Ev
Ltmp77:
	movq	%rbx, %rdi
	callq	__ZdlPv
Ltmp78:
	addq	$8, %rsp
	popq	%rbx
Ltmp79:
	##DEBUG_VALUE: ~Derived:this <- [DW_OP_LLVM_entry_value 1] $rdi
	popq	%rbp
	retq
Ltmp80:
Lfunc_end12:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7Derived3getEv              ## -- Begin function _ZN7Derived3getEv
	.weak_def_can_be_hidden	__ZN7Derived3getEv
	.p2align	4, 0x90
__ZN7Derived3getEv:                     ## @_ZN7Derived3getEv
Lfunc_begin13:
	.loc	1 12 0                          ## vtable.cc:12:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: get:this <- $rdi
	##DEBUG_VALUE: get:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp81:
	.loc	1 12 38 prologue_end            ## vtable.cc:12:38
	movl	8(%rdi), %eax
	.loc	1 12 40 is_stmt 0               ## vtable.cc:12:40
	addl	$10, %eax
	.loc	1 12 31                         ## vtable.cc:12:31
	popq	%rbp
	retq
Ltmp82:
Lfunc_end13:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7DerivedD2Ev                ## -- Begin function _ZN7DerivedD2Ev
	.weak_def_can_be_hidden	__ZN7DerivedD2Ev
	.p2align	4, 0x90
__ZN7DerivedD2Ev:                       ## @_ZN7DerivedD2Ev
Lfunc_begin14:
	.loc	1 10 0 is_stmt 1                ## vtable.cc:10:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: ~Derived:this <- $rdi
	##DEBUG_VALUE: ~Derived:this <- $rdi
	##DEBUG_VALUE: ~Derived:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp83:
	.loc	1 10 8 prologue_end             ## vtable.cc:10:8
	callq	__ZN4BaseD2Ev
Ltmp84:
	##DEBUG_VALUE: ~Derived:this <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	1 10 8 is_stmt 0                ## vtable.cc:10:8
	popq	%rbp
	retq
Ltmp85:
Lfunc_end14:
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4BaseD2Ev                   ## -- Begin function _ZN4BaseD2Ev
	.weak_def_can_be_hidden	__ZN4BaseD2Ev
	.p2align	4, 0x90
__ZN4BaseD2Ev:                          ## @_ZN4BaseD2Ev
Lfunc_begin15:
	.loc	1 3 0 is_stmt 1                 ## vtable.cc:3:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: ~Base:this <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp86:
	.loc	1 3 26 prologue_end             ## vtable.cc:3:26
	popq	%rbp
	retq
Ltmp87:
Lfunc_end15:
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__const
	.globl	__ZTV4Base                      ## @_ZTV4Base
	.weak_def_can_be_hidden	__ZTV4Base
	.p2align	3
__ZTV4Base:
	.quad	0
	.quad	__ZTI4Base
	.quad	__ZN4BaseD1Ev
	.quad	__ZN4BaseD0Ev
	.quad	__ZN4Base3getEv
	.quad	__ZN4Base3setEi

	.section	__TEXT,__const
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

	.globl	__ZTV7Derived                   ## @_ZTV7Derived
	.weak_def_can_be_hidden	__ZTV7Derived
	.p2align	3
__ZTV7Derived:
	.quad	0
	.quad	__ZTI7Derived
	.quad	__ZN7DerivedD1Ev
	.quad	__ZN7DerivedD0Ev
	.quad	__ZN7Derived3getEv
	.quad	__ZN4Base3setEi

	.section	__TEXT,__const
	.globl	__ZTS7Derived                   ## @_ZTS7Derived
	.weak_definition	__ZTS7Derived
__ZTS7Derived:
	.asciz	"7Derived"

	.section	__DATA,__const
	.globl	__ZTI7Derived                   ## @_ZTI7Derived
	.weak_definition	__ZTI7Derived
	.p2align	3
__ZTI7Derived:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS7Derived
	.quad	__ZTI4Base

	.file	2 "<stdin>"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp1-Lfunc_begin0
	.quad	Lset1
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset2, Ltmp1-Lfunc_begin0
	.quad	Lset2
.set Lset3, Lfunc_end0-Lfunc_begin0
	.quad	Lset3
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset4, Lfunc_begin1-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp4-Lfunc_begin0
	.quad	Lset5
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset6, Ltmp4-Lfunc_begin0
	.quad	Lset6
.set Lset7, Lfunc_end1-Lfunc_begin0
	.quad	Lset7
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset8, Ltmp27-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp45-Lfunc_begin0
	.quad	Lset9
	.short	8                               ## Loc expr size
	.byte	65                              ## DW_OP_lit17
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	8                               ## 8
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	8                               ## 8
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset10, Ltmp30-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp38-Lfunc_begin0
	.quad	Lset11
	.short	8                               ## Loc expr size
	.byte	65                              ## DW_OP_lit17
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	8                               ## 8
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	8                               ## 8
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset12, Lfunc_begin3-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp50-Lfunc_begin0
	.quad	Lset13
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset14, Ltmp50-Lfunc_begin0
	.quad	Lset14
.set Lset15, Lfunc_end3-Lfunc_begin0
	.quad	Lset15
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset16, Lfunc_begin3-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp50-Lfunc_begin0
	.quad	Lset17
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset18, Ltmp50-Lfunc_begin0
	.quad	Lset18
.set Lset19, Lfunc_end3-Lfunc_begin0
	.quad	Lset19
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	84                              ## super-register DW_OP_reg4
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset20, Lfunc_begin4-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp53-Lfunc_begin0
	.quad	Lset21
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset22, Ltmp53-Lfunc_begin0
	.quad	Lset22
.set Lset23, Lfunc_end4-Lfunc_begin0
	.quad	Lset23
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset24, Lfunc_begin4-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp53-Lfunc_begin0
	.quad	Lset25
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset26, Ltmp53-Lfunc_begin0
	.quad	Lset26
.set Lset27, Lfunc_end4-Lfunc_begin0
	.quad	Lset27
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	84                              ## super-register DW_OP_reg4
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset28, Lfunc_begin5-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp56-Lfunc_begin0
	.quad	Lset29
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset30, Ltmp56-Lfunc_begin0
	.quad	Lset30
.set Lset31, Lfunc_end5-Lfunc_begin0
	.quad	Lset31
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset32, Lfunc_begin6-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp59-Lfunc_begin0
	.quad	Lset33
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset34, Ltmp59-Lfunc_begin0
	.quad	Lset34
.set Lset35, Lfunc_end6-Lfunc_begin0
	.quad	Lset35
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset36, Lfunc_begin8-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp63-Lfunc_begin0
	.quad	Lset37
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset38, Ltmp63-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp66-Lfunc_begin0
	.quad	Lset39
	.short	1                               ## Loc expr size
	.byte	83                              ## DW_OP_reg3
.set Lset40, Ltmp66-Lfunc_begin0
	.quad	Lset40
.set Lset41, Lfunc_end8-Lfunc_begin0
	.quad	Lset41
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset42, Lfunc_begin11-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp72-Lfunc_begin0
	.quad	Lset43
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset44, Ltmp72-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp74-Lfunc_begin0
	.quad	Lset45
	.short	1                               ## Loc expr size
	.byte	83                              ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset46, Lfunc_begin11-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp73-Lfunc_begin0
	.quad	Lset47
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset48, Ltmp73-Lfunc_begin0
	.quad	Lset48
.set Lset49, Lfunc_end11-Lfunc_begin0
	.quad	Lset49
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	84                              ## super-register DW_OP_reg4
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset50, Lfunc_begin12-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp76-Lfunc_begin0
	.quad	Lset51
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset52, Ltmp76-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp79-Lfunc_begin0
	.quad	Lset53
	.short	1                               ## Loc expr size
	.byte	83                              ## DW_OP_reg3
.set Lset54, Ltmp79-Lfunc_begin0
	.quad	Lset54
.set Lset55, Lfunc_end12-Lfunc_begin0
	.quad	Lset55
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset56, Lfunc_begin14-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp84-Lfunc_begin0
	.quad	Lset57
	.short	1                               ## Loc expr size
	.byte	85                              ## DW_OP_reg5
.set Lset58, Ltmp84-Lfunc_begin0
	.quad	Lset58
.set Lset59, Lfunc_end14-Lfunc_begin0
	.quad	Lset59
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ## Abbreviation Code
	.byte	17                              ## DW_TAG_compile_unit
	.byte	1                               ## DW_CHILDREN_yes
	.byte	37                              ## DW_AT_producer
	.byte	14                              ## DW_FORM_strp
	.byte	19                              ## DW_AT_language
	.byte	5                               ## DW_FORM_data2
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.ascii	"\202|"                         ## DW_AT_LLVM_sysroot
	.byte	14                              ## DW_FORM_strp
	.ascii	"\357\177"                      ## DW_AT_APPLE_sdk
	.byte	14                              ## DW_FORM_strp
	.byte	16                              ## DW_AT_stmt_list
	.byte	23                              ## DW_FORM_sec_offset
	.byte	27                              ## DW_AT_comp_dir
	.byte	14                              ## DW_FORM_strp
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	19                              ## DW_TAG_structure_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	29                              ## DW_AT_containing_type
	.byte	19                              ## DW_FORM_ref4
	.byte	54                              ## DW_AT_calling_convention
	.byte	11                              ## DW_FORM_data1
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	4                               ## Abbreviation Code
	.byte	13                              ## DW_TAG_member
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	52                              ## DW_AT_artificial
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	5                               ## Abbreviation Code
	.byte	13                              ## DW_TAG_member
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	60                              ## DW_AT_declaration
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	52                              ## DW_AT_artificial
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	8                               ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	9                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	76                              ## DW_AT_virtuality
	.byte	11                              ## DW_FORM_data1
	.byte	77                              ## DW_AT_vtable_elem_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	60                              ## DW_AT_declaration
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	29                              ## DW_AT_containing_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	10                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	110                             ## DW_AT_linkage_name
	.byte	14                              ## DW_FORM_strp
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	76                              ## DW_AT_virtuality
	.byte	11                              ## DW_FORM_data1
	.byte	77                              ## DW_AT_vtable_elem_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	60                              ## DW_AT_declaration
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	29                              ## DW_AT_containing_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	11                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	110                             ## DW_AT_linkage_name
	.byte	14                              ## DW_FORM_strp
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	76                              ## DW_AT_virtuality
	.byte	11                              ## DW_FORM_data1
	.byte	77                              ## DW_AT_vtable_elem_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	60                              ## DW_AT_declaration
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	29                              ## DW_AT_containing_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	12                              ## Abbreviation Code
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	13                              ## Abbreviation Code
	.byte	21                              ## DW_TAG_subroutine_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	14                              ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	15                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	110                             ## DW_AT_linkage_name
	.byte	14                              ## DW_FORM_strp
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	16                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	23                              ## DW_FORM_sec_offset
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	17                              ## Abbreviation Code
	.byte	72                              ## DW_TAG_call_site
	.byte	1                               ## DW_CHILDREN_yes
	.ascii	"\203\001"                      ## DW_AT_call_target
	.byte	24                              ## DW_FORM_exprloc
	.byte	125                             ## DW_AT_call_return_pc
	.byte	1                               ## DW_FORM_addr
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	18                              ## Abbreviation Code
	.byte	73                              ## DW_TAG_call_site_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	126                             ## DW_AT_call_value
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	19                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	110                             ## DW_AT_linkage_name
	.byte	14                              ## DW_FORM_strp
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	20                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	21                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	22                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	23                              ## DW_FORM_sec_offset
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	23                              ## Abbreviation Code
	.byte	72                              ## DW_TAG_call_site
	.byte	1                               ## DW_CHILDREN_yes
	.byte	127                             ## DW_AT_call_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	125                             ## DW_AT_call_return_pc
	.byte	1                               ## DW_FORM_addr
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	24                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	100                             ## DW_AT_object_pointer
	.byte	19                              ## DW_FORM_ref4
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	110                             ## DW_AT_linkage_name
	.byte	14                              ## DW_FORM_strp
	.byte	71                              ## DW_AT_specification
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	25                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	23                              ## DW_FORM_sec_offset
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	52                              ## DW_AT_artificial
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	26                              ## Abbreviation Code
	.byte	28                              ## DW_TAG_inheritance
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	27                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	76                              ## DW_AT_virtuality
	.byte	11                              ## DW_FORM_data1
	.byte	77                              ## DW_AT_vtable_elem_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	60                              ## DW_AT_declaration
	.byte	25                              ## DW_FORM_flag_present
	.byte	52                              ## DW_AT_artificial
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	29                              ## DW_AT_containing_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	28                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	100                             ## DW_AT_object_pointer
	.byte	19                              ## DW_FORM_ref4
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	110                             ## DW_AT_linkage_name
	.byte	14                              ## DW_FORM_strp
	.byte	71                              ## DW_AT_specification
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	29                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	52                              ## DW_AT_artificial
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	30                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	31                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	100                             ## DW_AT_object_pointer
	.byte	19                              ## DW_FORM_ref4
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	71                              ## DW_AT_specification
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	32                              ## Abbreviation Code
	.byte	31                              ## DW_TAG_ptr_to_member_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	29                              ## DW_AT_containing_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	33                              ## Abbreviation Code
	.byte	21                              ## DW_TAG_subroutine_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset60, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset60
Ldebug_info_start0:
	.short	4                               ## DWARF version number
.set Lset61, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset61
	.byte	8                               ## Address Size (in bytes)
	.byte	1                               ## Abbrev [1] 0xb:0x698 DW_TAG_compile_unit
	.long	0                               ## DW_AT_producer
	.short	26                              ## DW_AT_language
	.long	48                              ## DW_AT_name
	.long	58                              ## DW_AT_LLVM_sysroot
	.long	153                             ## DW_AT_APPLE_sdk
.set Lset62, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset62
	.long	164                             ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset63, Lfunc_end15-Lfunc_begin0   ## DW_AT_high_pc
	.long	Lset63
	.byte	2                               ## Abbrev [2] 0x32:0x5 DW_TAG_pointer_type
	.long	55                              ## DW_AT_type
	.byte	3                               ## Abbrev [3] 0x37:0x86 DW_TAG_structure_type
	.long	55                              ## DW_AT_containing_type
	.byte	4                               ## DW_AT_calling_convention
	.long	232                             ## DW_AT_name
	.byte	16                              ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	1                               ## DW_AT_decl_line
	.byte	4                               ## Abbrev [4] 0x44:0xa DW_TAG_member
	.long	237                             ## DW_AT_name
	.long	189                             ## DW_AT_type
	.byte	0                               ## DW_AT_data_member_location
                                        ## DW_AT_artificial
	.byte	5                               ## Abbrev [5] 0x4e:0xc DW_TAG_member
	.long	268                             ## DW_AT_name
	.long	208                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	7                               ## DW_AT_decl_line
	.byte	8                               ## DW_AT_data_member_location
	.byte	6                               ## Abbrev [6] 0x5a:0x12 DW_TAG_subprogram
	.long	232                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	2                               ## DW_AT_decl_line
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	7                               ## Abbrev [7] 0x61:0x5 DW_TAG_formal_parameter
	.long	215                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	8                               ## Abbrev [8] 0x66:0x5 DW_TAG_formal_parameter
	.long	208                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	9                               ## Abbrev [9] 0x6c:0x15 DW_TAG_subprogram
	.long	270                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	3                               ## DW_AT_decl_line
	.byte	1                               ## DW_AT_virtuality
	.byte	2                               ## DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.long	55                              ## DW_AT_containing_type
	.byte	7                               ## Abbrev [7] 0x7b:0x5 DW_TAG_formal_parameter
	.long	215                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x81:0x1d DW_TAG_subprogram
	.long	276                             ## DW_AT_linkage_name
	.long	291                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	5                               ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
	.byte	1                               ## DW_AT_virtuality
	.byte	2                               ## DW_AT_vtable_elem_location
	.byte	16
	.byte	2
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.long	55                              ## DW_AT_containing_type
	.byte	7                               ## Abbrev [7] 0x98:0x5 DW_TAG_formal_parameter
	.long	215                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	11                              ## Abbrev [11] 0x9e:0x1e DW_TAG_subprogram
	.long	295                             ## DW_AT_linkage_name
	.long	310                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	6                               ## DW_AT_decl_line
	.byte	1                               ## DW_AT_virtuality
	.byte	2                               ## DW_AT_vtable_elem_location
	.byte	16
	.byte	3
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.long	55                              ## DW_AT_containing_type
	.byte	7                               ## Abbrev [7] 0xb1:0x5 DW_TAG_formal_parameter
	.long	215                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	8                               ## Abbrev [8] 0xb6:0x5 DW_TAG_formal_parameter
	.long	208                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0xbd:0x5 DW_TAG_pointer_type
	.long	194                             ## DW_AT_type
	.byte	12                              ## Abbrev [12] 0xc2:0x9 DW_TAG_pointer_type
	.long	203                             ## DW_AT_type
	.long	248                             ## DW_AT_name
	.byte	13                              ## Abbrev [13] 0xcb:0x5 DW_TAG_subroutine_type
	.long	208                             ## DW_AT_type
	.byte	14                              ## Abbrev [14] 0xd0:0x7 DW_TAG_base_type
	.long	264                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	2                               ## Abbrev [2] 0xd7:0x5 DW_TAG_pointer_type
	.long	55                              ## DW_AT_type
	.byte	15                              ## Abbrev [15] 0xdc:0x40 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset64, Lfunc_end0-Lfunc_begin0    ## DW_AT_high_pc
	.long	Lset64
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	314                             ## DW_AT_linkage_name
	.long	291                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	15                              ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	16                              ## Abbrev [16] 0xf9:0xf DW_TAG_formal_parameter
.set Lset65, Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset65
	.long	525                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	15                              ## DW_AT_decl_line
	.long	50                              ## DW_AT_type
	.byte	17                              ## Abbrev [17] 0x108:0x13 DW_TAG_call_site
	.byte	1                               ## DW_AT_call_target
	.byte	80
	.quad	Ltmp1                           ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x113:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	19                              ## Abbrev [19] 0x11c:0x42 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ## DW_AT_low_pc
.set Lset66, Lfunc_end1-Lfunc_begin1    ## DW_AT_high_pc
	.long	Lset66
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	327                             ## DW_AT_linkage_name
	.long	310                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	16                              ## DW_AT_decl_line
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	16                              ## Abbrev [16] 0x135:0xf DW_TAG_formal_parameter
.set Lset67, Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset67
	.long	525                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	16                              ## DW_AT_decl_line
	.long	50                              ## DW_AT_type
	.byte	17                              ## Abbrev [17] 0x144:0x19 DW_TAG_call_site
	.byte	1                               ## DW_AT_call_target
	.byte	80
	.quad	Ltmp4                           ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x14f:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	2                               ## DW_AT_call_value
	.byte	16
	.byte	110
	.byte	18                              ## Abbrev [18] 0x155:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	20                              ## Abbrev [20] 0x15e:0x1b3 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ## DW_AT_low_pc
.set Lset68, Lfunc_end2-Lfunc_begin2    ## DW_AT_high_pc
	.long	Lset68
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	340                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	18                              ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	21                              ## Abbrev [21] 0x177:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	527                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	20                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	21                              ## Abbrev [21] 0x186:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	72
	.long	530                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	23                              ## DW_AT_decl_line
	.long	55                              ## DW_AT_type
	.byte	21                              ## Abbrev [21] 0x194:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	104
	.long	533                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	26                              ## DW_AT_decl_line
	.long	869                             ## DW_AT_type
	.byte	21                              ## Abbrev [21] 0x1a2:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	88
	.long	536                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	29                              ## DW_AT_decl_line
	.long	869                             ## DW_AT_type
	.byte	22                              ## Abbrev [22] 0x1b0:0xf DW_TAG_variable
.set Lset69, Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset69
	.long	539                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	24                              ## DW_AT_decl_line
	.long	1653                            ## DW_AT_type
	.byte	22                              ## Abbrev [22] 0x1bf:0xf DW_TAG_variable
.set Lset70, Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset70
	.long	542                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.long	1673                            ## DW_AT_type
	.byte	23                              ## Abbrev [23] 0x1ce:0x19 DW_TAG_call_site
	.long	785                             ## DW_AT_call_origin
	.quad	Ltmp25                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x1db:0x5 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	1                               ## DW_AT_call_value
	.byte	59
	.byte	18                              ## Abbrev [18] 0x1e0:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x1e7:0x14 DW_TAG_call_site
	.long	220                             ## DW_AT_call_origin
	.quad	Ltmp26                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x1f4:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x1fb:0x19 DW_TAG_call_site
	.long	785                             ## DW_AT_call_origin
	.quad	Ltmp27                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x208:0x5 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	1                               ## DW_AT_call_value
	.byte	60
	.byte	18                              ## Abbrev [18] 0x20d:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	72
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x214:0x19 DW_TAG_call_site
	.long	960                             ## DW_AT_call_origin
	.quad	Ltmp28                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x221:0x5 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	1                               ## DW_AT_call_value
	.byte	69
	.byte	18                              ## Abbrev [18] 0x226:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	104
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x22d:0x14 DW_TAG_call_site
	.long	220                             ## DW_AT_call_origin
	.quad	Ltmp29                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x23a:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	104
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x241:0x19 DW_TAG_call_site
	.long	960                             ## DW_AT_call_origin
	.quad	Ltmp30                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x24e:0x5 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	1                               ## DW_AT_call_value
	.byte	70
	.byte	18                              ## Abbrev [18] 0x253:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	88
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x25a:0x14 DW_TAG_call_site
	.long	284                             ## DW_AT_call_origin
	.quad	Ltmp31                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x267:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	104
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x26e:0x14 DW_TAG_call_site
	.long	1044                            ## DW_AT_call_origin
	.quad	Ltmp32                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x27b:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	88
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x282:0x14 DW_TAG_call_site
	.long	1044                            ## DW_AT_call_origin
	.quad	Ltmp33                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x28f:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	104
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x296:0x14 DW_TAG_call_site
	.long	1108                            ## DW_AT_call_origin
	.quad	Ltmp34                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x2a3:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	72
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x2aa:0x15 DW_TAG_call_site
	.long	1108                            ## DW_AT_call_origin
	.quad	Ltmp35                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x2b7:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	145
	.ascii	"\270\177"
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x2bf:0x14 DW_TAG_call_site
	.long	1044                            ## DW_AT_call_origin
	.quad	Ltmp37                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x2cc:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	88
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x2d3:0x14 DW_TAG_call_site
	.long	1044                            ## DW_AT_call_origin
	.quad	Ltmp41                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x2e0:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	104
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x2e7:0x14 DW_TAG_call_site
	.long	1108                            ## DW_AT_call_origin
	.quad	Ltmp44                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x2f4:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	145
	.byte	72
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x2fb:0x15 DW_TAG_call_site
	.long	1108                            ## DW_AT_call_origin
	.quad	Ltmp46                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x308:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	145
	.ascii	"\270\177"
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	24                              ## Abbrev [24] 0x311:0x54 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ## DW_AT_low_pc
.set Lset71, Lfunc_end3-Lfunc_begin3    ## DW_AT_high_pc
	.long	Lset71
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	812                             ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	380                             ## DW_AT_linkage_name
	.long	90                              ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x32c:0xd DW_TAG_formal_parameter
.set Lset72, Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset72
	.long	545                             ## DW_AT_name
	.long	50                              ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	16                              ## Abbrev [16] 0x339:0xf DW_TAG_formal_parameter
.set Lset73, Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset73
	.long	550                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	2                               ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
	.byte	23                              ## Abbrev [23] 0x348:0x1c DW_TAG_call_site
	.long	1170                            ## DW_AT_call_origin
	.quad	Ltmp50                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x355:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	18                              ## Abbrev [18] 0x35c:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	84
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	3                               ## Abbrev [3] 0x365:0x56 DW_TAG_structure_type
	.long	55                              ## DW_AT_containing_type
	.byte	4                               ## DW_AT_calling_convention
	.long	345                             ## DW_AT_name
	.byte	16                              ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.byte	26                              ## Abbrev [26] 0x372:0x6 DW_TAG_inheritance
	.long	55                              ## DW_AT_type
	.byte	0                               ## DW_AT_data_member_location
	.byte	6                               ## Abbrev [6] 0x378:0x12 DW_TAG_subprogram
	.long	345                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	11                              ## DW_AT_decl_line
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	7                               ## Abbrev [7] 0x37f:0x5 DW_TAG_formal_parameter
	.long	955                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	8                               ## Abbrev [8] 0x384:0x5 DW_TAG_formal_parameter
	.long	208                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x38a:0x1d DW_TAG_subprogram
	.long	353                             ## DW_AT_linkage_name
	.long	291                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	12                              ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
	.byte	1                               ## DW_AT_virtuality
	.byte	2                               ## DW_AT_vtable_elem_location
	.byte	16
	.byte	2
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.long	869                             ## DW_AT_containing_type
	.byte	7                               ## Abbrev [7] 0x3a1:0x5 DW_TAG_formal_parameter
	.long	955                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	27                              ## Abbrev [27] 0x3a7:0x13 DW_TAG_subprogram
	.long	371                             ## DW_AT_name
	.byte	1                               ## DW_AT_virtuality
	.byte	2                               ## DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        ## DW_AT_declaration
                                        ## DW_AT_artificial
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.long	869                             ## DW_AT_containing_type
	.byte	7                               ## Abbrev [7] 0x3b4:0x5 DW_TAG_formal_parameter
	.long	955                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x3bb:0x5 DW_TAG_pointer_type
	.long	869                             ## DW_AT_type
	.byte	24                              ## Abbrev [24] 0x3c0:0x54 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ## DW_AT_low_pc
.set Lset74, Lfunc_end4-Lfunc_begin4    ## DW_AT_high_pc
	.long	Lset74
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	987                             ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	393                             ## DW_AT_linkage_name
	.long	888                             ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x3db:0xd DW_TAG_formal_parameter
.set Lset75, Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset75
	.long	545                             ## DW_AT_name
	.long	1693                            ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	16                              ## Abbrev [16] 0x3e8:0xf DW_TAG_formal_parameter
.set Lset76, Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset76
	.long	550                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	11                              ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
	.byte	23                              ## Abbrev [23] 0x3f7:0x1c DW_TAG_call_site
	.long	1222                            ## DW_AT_call_origin
	.quad	Ltmp53                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x404:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	18                              ## Abbrev [18] 0x40b:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	84
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	28                              ## Abbrev [28] 0x414:0x40 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ## DW_AT_low_pc
.set Lset77, Lfunc_end5-Lfunc_begin5    ## DW_AT_high_pc
	.long	Lset77
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1073                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.byte	1                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.long	409                             ## DW_AT_linkage_name
	.long	935                             ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x431:0xd DW_TAG_formal_parameter
.set Lset78, Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset78
	.long	545                             ## DW_AT_name
	.long	1693                            ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	23                              ## Abbrev [23] 0x43e:0x15 DW_TAG_call_site
	.long	1306                            ## DW_AT_call_origin
	.quad	Ltmp56                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x44b:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	24                              ## Abbrev [24] 0x454:0x3e DW_TAG_subprogram
	.quad	Lfunc_begin6                    ## DW_AT_low_pc
.set Lset79, Lfunc_end6-Lfunc_begin6    ## DW_AT_high_pc
	.long	Lset79
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1135                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	425                             ## DW_AT_linkage_name
	.long	108                             ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x46f:0xd DW_TAG_formal_parameter
.set Lset80, Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset80
	.long	545                             ## DW_AT_name
	.long	50                              ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	23                              ## Abbrev [23] 0x47c:0x15 DW_TAG_call_site
	.long	1370                            ## DW_AT_call_origin
	.quad	Ltmp59                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x489:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	24                              ## Abbrev [24] 0x492:0x34 DW_TAG_subprogram
	.quad	Lfunc_begin7                    ## DW_AT_low_pc
.set Lset81, Lfunc_end7-Lfunc_begin7    ## DW_AT_high_pc
	.long	Lset81
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1197                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	438                             ## DW_AT_linkage_name
	.long	90                              ## DW_AT_specification
	.byte	29                              ## Abbrev [29] 0x4ad:0xb DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	545                             ## DW_AT_name
	.long	50                              ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	30                              ## Abbrev [30] 0x4b8:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.long	550                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	2                               ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	24                              ## Abbrev [24] 0x4c6:0x54 DW_TAG_subprogram
	.quad	Lfunc_begin11                   ## DW_AT_low_pc
.set Lset82, Lfunc_end11-Lfunc_begin11  ## DW_AT_high_pc
	.long	Lset82
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1249                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	464                             ## DW_AT_linkage_name
	.long	888                             ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x4e1:0xd DW_TAG_formal_parameter
.set Lset83, Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset83
	.long	545                             ## DW_AT_name
	.long	1693                            ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	16                              ## Abbrev [16] 0x4ee:0xf DW_TAG_formal_parameter
.set Lset84, Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset84
	.long	550                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	11                              ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
	.byte	23                              ## Abbrev [23] 0x4fd:0x1c DW_TAG_call_site
	.long	1170                            ## DW_AT_call_origin
	.quad	Ltmp73                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x50a:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	18                              ## Abbrev [18] 0x511:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	84
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	28                              ## Abbrev [28] 0x51a:0x40 DW_TAG_subprogram
	.quad	Lfunc_begin14                   ## DW_AT_low_pc
.set Lset85, Lfunc_end14-Lfunc_begin14  ## DW_AT_high_pc
	.long	Lset85
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1335                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.byte	1                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.long	496                             ## DW_AT_linkage_name
	.long	935                             ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x537:0xd DW_TAG_formal_parameter
.set Lset86, Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset86
	.long	545                             ## DW_AT_name
	.long	1693                            ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	23                              ## Abbrev [23] 0x544:0x15 DW_TAG_call_site
	.long	1370                            ## DW_AT_call_origin
	.quad	Ltmp84                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x551:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	24                              ## Abbrev [24] 0x55a:0x27 DW_TAG_subprogram
	.quad	Lfunc_begin15                   ## DW_AT_low_pc
.set Lset87, Lfunc_end15-Lfunc_begin15  ## DW_AT_high_pc
	.long	Lset87
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1397                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	512                             ## DW_AT_linkage_name
	.long	108                             ## DW_AT_specification
	.byte	29                              ## Abbrev [29] 0x575:0xb DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	545                             ## DW_AT_name
	.long	50                              ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	24                              ## Abbrev [24] 0x581:0x3e DW_TAG_subprogram
	.quad	Lfunc_begin8                    ## DW_AT_low_pc
.set Lset88, Lfunc_end8-Lfunc_begin8    ## DW_AT_high_pc
	.long	Lset88
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1436                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	451                             ## DW_AT_linkage_name
	.long	108                             ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x59c:0xd DW_TAG_formal_parameter
.set Lset89, Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset89
	.long	545                             ## DW_AT_name
	.long	50                              ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	23                              ## Abbrev [23] 0x5a9:0x15 DW_TAG_call_site
	.long	1108                            ## DW_AT_call_origin
	.quad	Ltmp64                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x5b6:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	31                              ## Abbrev [31] 0x5bf:0x23 DW_TAG_subprogram
	.quad	Lfunc_begin9                    ## DW_AT_low_pc
.set Lset90, Lfunc_end9-Lfunc_begin9    ## DW_AT_high_pc
	.long	Lset90
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1494                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	129                             ## DW_AT_specification
	.byte	29                              ## Abbrev [29] 0x5d6:0xb DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	545                             ## DW_AT_name
	.long	50                              ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	31                              ## Abbrev [31] 0x5e2:0x30 DW_TAG_subprogram
	.quad	Lfunc_begin10                   ## DW_AT_low_pc
.set Lset91, Lfunc_end10-Lfunc_begin10  ## DW_AT_high_pc
	.long	Lset91
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1529                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	158                             ## DW_AT_specification
	.byte	29                              ## Abbrev [29] 0x5f9:0xb DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	545                             ## DW_AT_name
	.long	50                              ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	30                              ## Abbrev [30] 0x604:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.long	550                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	6                               ## DW_AT_decl_line
	.long	208                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	28                              ## Abbrev [28] 0x612:0x40 DW_TAG_subprogram
	.quad	Lfunc_begin12                   ## DW_AT_low_pc
.set Lset92, Lfunc_end12-Lfunc_begin12  ## DW_AT_high_pc
	.long	Lset92
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1583                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.byte	1                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.long	480                             ## DW_AT_linkage_name
	.long	935                             ## DW_AT_specification
	.byte	25                              ## Abbrev [25] 0x62f:0xd DW_TAG_formal_parameter
.set Lset93, Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset93
	.long	545                             ## DW_AT_name
	.long	1693                            ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	23                              ## Abbrev [23] 0x63c:0x15 DW_TAG_call_site
	.long	1044                            ## DW_AT_call_origin
	.quad	Ltmp77                          ## DW_AT_call_return_pc
	.byte	18                              ## Abbrev [18] 0x649:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	31                              ## Abbrev [31] 0x652:0x23 DW_TAG_subprogram
	.quad	Lfunc_begin13                   ## DW_AT_low_pc
.set Lset94, Lfunc_end13-Lfunc_begin13  ## DW_AT_high_pc
	.long	Lset94
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	1641                            ## DW_AT_object_pointer
                                        ## DW_AT_call_all_calls
	.long	906                             ## DW_AT_specification
	.byte	29                              ## Abbrev [29] 0x669:0xb DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	545                             ## DW_AT_name
	.long	1693                            ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	32                              ## Abbrev [32] 0x675:0x9 DW_TAG_ptr_to_member_type
	.long	1662                            ## DW_AT_type
	.long	55                              ## DW_AT_containing_type
	.byte	33                              ## Abbrev [33] 0x67e:0xb DW_TAG_subroutine_type
	.long	208                             ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0x683:0x5 DW_TAG_formal_parameter
	.long	215                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	32                              ## Abbrev [32] 0x689:0x9 DW_TAG_ptr_to_member_type
	.long	1682                            ## DW_AT_type
	.long	869                             ## DW_AT_containing_type
	.byte	33                              ## Abbrev [33] 0x692:0xb DW_TAG_subroutine_type
	.long	208                             ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0x697:0x5 DW_TAG_formal_parameter
	.long	955                             ## DW_AT_type
                                        ## DW_AT_artificial
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x69d:0x5 DW_TAG_pointer_type
	.long	869                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 12.0.5 (clang-1205.0.22.11)" ## string offset=0
	.asciz	"vtable.cc"                     ## string offset=48
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk" ## string offset=58
	.asciz	"MacOSX.sdk"                    ## string offset=153
	.asciz	"/Users/Nepenthe/Program/GitHub/ProgrammingSamples/cpp/inspect/class" ## string offset=164
	.asciz	"Base"                          ## string offset=232
	.asciz	"_vptr$Base"                    ## string offset=237
	.asciz	"__vtbl_ptr_type"               ## string offset=248
	.asciz	"int"                           ## string offset=264
	.asciz	"n"                             ## string offset=268
	.asciz	"~Base"                         ## string offset=270
	.asciz	"_ZN4Base3getEv"                ## string offset=276
	.asciz	"get"                           ## string offset=291
	.asciz	"_ZN4Base3setEi"                ## string offset=295
	.asciz	"set"                           ## string offset=310
	.asciz	"_Z3getP4Base"                  ## string offset=314
	.asciz	"_Z3setP4Base"                  ## string offset=327
	.asciz	"main"                          ## string offset=340
	.asciz	"Derived"                       ## string offset=345
	.asciz	"_ZN7Derived3getEv"             ## string offset=353
	.asciz	"~Derived"                      ## string offset=371
	.asciz	"_ZN4BaseC1Ei"                  ## string offset=380
	.asciz	"_ZN7DerivedC1Ei"               ## string offset=393
	.asciz	"_ZN7DerivedD1Ev"               ## string offset=409
	.asciz	"_ZN4BaseD1Ev"                  ## string offset=425
	.asciz	"_ZN4BaseC2Ei"                  ## string offset=438
	.asciz	"_ZN4BaseD0Ev"                  ## string offset=451
	.asciz	"_ZN7DerivedC2Ei"               ## string offset=464
	.asciz	"_ZN7DerivedD0Ev"               ## string offset=480
	.asciz	"_ZN7DerivedD2Ev"               ## string offset=496
	.asciz	"_ZN4BaseD2Ev"                  ## string offset=512
	.asciz	"b"                             ## string offset=525
	.asciz	"b1"                            ## string offset=527
	.asciz	"b2"                            ## string offset=530
	.asciz	"d1"                            ## string offset=533
	.asciz	"d2"                            ## string offset=536
	.asciz	"pb"                            ## string offset=539
	.asciz	"pd"                            ## string offset=542
	.asciz	"this"                          ## string offset=545
	.asciz	"n_arg"                         ## string offset=550
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	11                              ## Header Bucket Count
	.long	22                              ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	0                               ## Bucket 0
	.long	7                               ## Bucket 1
	.long	-1                              ## Bucket 2
	.long	8                               ## Bucket 3
	.long	9                               ## Bucket 4
	.long	10                              ## Bucket 5
	.long	11                              ## Bucket 6
	.long	14                              ## Bucket 7
	.long	-1                              ## Bucket 8
	.long	15                              ## Bucket 9
	.long	20                              ## Bucket 10
	.long	1902002762                      ## Hash in Bucket 0
	.long	1902003851                      ## Hash in Bucket 0
	.long	1902004940                      ## Hash in Bucket 0
	.long	-410873104                      ## Hash in Bucket 0
	.long	-237508363                      ## Hash in Bucket 0
	.long	-237507274                      ## Hash in Bucket 0
	.long	-237506185                      ## Hash in Bucket 0
	.long	1780173000                      ## Hash in Bucket 1
	.long	522076360                       ## Hash in Bucket 3
	.long	286059646                       ## Hash in Bucket 4
	.long	507845321                       ## Hash in Bucket 5
	.long	193492613                       ## Hash in Bucket 6
	.long	193505681                       ## Hash in Bucket 6
	.long	712358950                       ## Hash in Bucket 6
	.long	2090499946                      ## Hash in Bucket 7
	.long	1901967901                      ## Hash in Bucket 9
	.long	1901968990                      ## Hash in Bucket 9
	.long	2088954976                      ## Hash in Bucket 9
	.long	-237543224                      ## Hash in Bucket 9
	.long	-237542135                      ## Hash in Bucket 9
	.long	1566039804                      ## Hash in Bucket 10
	.long	-1547495372                     ## Hash in Bucket 10
.set Lset95, LNames7-Lnames_begin       ## Offset in Bucket 0
	.long	Lset95
.set Lset96, LNames5-Lnames_begin       ## Offset in Bucket 0
	.long	Lset96
.set Lset97, LNames12-Lnames_begin      ## Offset in Bucket 0
	.long	Lset97
.set Lset98, LNames10-Lnames_begin      ## Offset in Bucket 0
	.long	Lset98
.set Lset99, LNames14-Lnames_begin      ## Offset in Bucket 0
	.long	Lset99
.set Lset100, LNames15-Lnames_begin     ## Offset in Bucket 0
	.long	Lset100
.set Lset101, LNames16-Lnames_begin     ## Offset in Bucket 0
	.long	Lset101
.set Lset102, LNames2-Lnames_begin      ## Offset in Bucket 1
	.long	Lset102
.set Lset103, LNames8-Lnames_begin      ## Offset in Bucket 3
	.long	Lset103
.set Lset104, LNames19-Lnames_begin     ## Offset in Bucket 4
	.long	Lset104
.set Lset105, LNames6-Lnames_begin      ## Offset in Bucket 5
	.long	Lset105
.set Lset106, LNames0-Lnames_begin      ## Offset in Bucket 6
	.long	Lset106
.set Lset107, LNames11-Lnames_begin     ## Offset in Bucket 6
	.long	Lset107
.set Lset108, LNames1-Lnames_begin      ## Offset in Bucket 6
	.long	Lset108
.set Lset109, LNames4-Lnames_begin      ## Offset in Bucket 7
	.long	Lset109
.set Lset110, LNames18-Lnames_begin     ## Offset in Bucket 9
	.long	Lset110
.set Lset111, LNames20-Lnames_begin     ## Offset in Bucket 9
	.long	Lset111
.set Lset112, LNames21-Lnames_begin     ## Offset in Bucket 9
	.long	Lset112
.set Lset113, LNames3-Lnames_begin      ## Offset in Bucket 9
	.long	Lset113
.set Lset114, LNames9-Lnames_begin      ## Offset in Bucket 9
	.long	Lset114
.set Lset115, LNames17-Lnames_begin     ## Offset in Bucket 10
	.long	Lset115
.set Lset116, LNames13-Lnames_begin     ## Offset in Bucket 10
	.long	Lset116
LNames7:
	.long	451                             ## _ZN4BaseD0Ev
	.long	1                               ## Num DIEs
	.long	1409
	.long	0
LNames5:
	.long	425                             ## _ZN4BaseD1Ev
	.long	1                               ## Num DIEs
	.long	1108
	.long	0
LNames12:
	.long	512                             ## _ZN4BaseD2Ev
	.long	1                               ## Num DIEs
	.long	1370
	.long	0
LNames10:
	.long	314                             ## _Z3getP4Base
	.long	1                               ## Num DIEs
	.long	220
	.long	0
LNames14:
	.long	480                             ## _ZN7DerivedD0Ev
	.long	1                               ## Num DIEs
	.long	1554
	.long	0
LNames15:
	.long	409                             ## _ZN7DerivedD1Ev
	.long	1                               ## Num DIEs
	.long	1044
	.long	0
LNames16:
	.long	496                             ## _ZN7DerivedD2Ev
	.long	1                               ## Num DIEs
	.long	1306
	.long	0
LNames2:
	.long	345                             ## Derived
	.long	2                               ## Num DIEs
	.long	960
	.long	1222
	.long	0
LNames8:
	.long	295                             ## _ZN4Base3setEi
	.long	1                               ## Num DIEs
	.long	1506
	.long	0
LNames19:
	.long	270                             ## ~Base
	.long	3                               ## Num DIEs
	.long	1108
	.long	1370
	.long	1409
	.long	0
LNames6:
	.long	276                             ## _ZN4Base3getEv
	.long	1                               ## Num DIEs
	.long	1471
	.long	0
LNames0:
	.long	291                             ## get
	.long	3                               ## Num DIEs
	.long	220
	.long	1471
	.long	1618
	.long	0
LNames11:
	.long	310                             ## set
	.long	2                               ## Num DIEs
	.long	284
	.long	1506
	.long	0
LNames1:
	.long	371                             ## ~Derived
	.long	3                               ## Num DIEs
	.long	1044
	.long	1306
	.long	1554
	.long	0
LNames4:
	.long	340                             ## main
	.long	1                               ## Num DIEs
	.long	350
	.long	0
LNames18:
	.long	380                             ## _ZN4BaseC1Ei
	.long	1                               ## Num DIEs
	.long	785
	.long	0
LNames20:
	.long	438                             ## _ZN4BaseC2Ei
	.long	1                               ## Num DIEs
	.long	1170
	.long	0
LNames21:
	.long	232                             ## Base
	.long	2                               ## Num DIEs
	.long	785
	.long	1170
	.long	0
LNames3:
	.long	393                             ## _ZN7DerivedC1Ei
	.long	1                               ## Num DIEs
	.long	960
	.long	0
LNames9:
	.long	464                             ## _ZN7DerivedC2Ei
	.long	1                               ## Num DIEs
	.long	1222
	.long	0
LNames17:
	.long	327                             ## _Z3setP4Base
	.long	1                               ## Num DIEs
	.long	284
	.long	0
LNames13:
	.long	353                             ## _ZN7Derived3getEv
	.long	1                               ## Num DIEs
	.long	1618
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	4                               ## Header Bucket Count
	.long	4                               ## Header Hash Count
	.long	20                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	3                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.short	3                               ## DW_ATOM_die_tag
	.short	5                               ## DW_FORM_data2
	.short	4                               ## DW_ATOM_type_flags
	.short	11                              ## DW_FORM_data1
	.long	0                               ## Bucket 0
	.long	3                               ## Bucket 1
	.long	-1                              ## Bucket 2
	.long	-1                              ## Bucket 3
	.long	193495088                       ## Hash in Bucket 0
	.long	1780173000                      ## Hash in Bucket 0
	.long	2088954976                      ## Hash in Bucket 0
	.long	1019679825                      ## Hash in Bucket 1
.set Lset117, Ltypes3-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset117
.set Lset118, Ltypes0-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset118
.set Lset119, Ltypes1-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset119
.set Lset120, Ltypes2-Ltypes_begin      ## Offset in Bucket 1
	.long	Lset120
Ltypes3:
	.long	264                             ## int
	.long	1                               ## Num DIEs
	.long	208
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	345                             ## Derived
	.long	1                               ## Num DIEs
	.long	869
	.short	19
	.byte	0
	.long	0
Ltypes1:
	.long	232                             ## Base
	.long	1                               ## Num DIEs
	.long	55
	.short	19
	.byte	0
	.long	0
Ltypes2:
	.long	248                             ## __vtbl_ptr_type
	.long	1                               ## Num DIEs
	.long	194
	.short	15
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:

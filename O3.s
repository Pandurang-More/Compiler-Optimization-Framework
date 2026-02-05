	.file	"matrix_multiply.cpp"
	.text
	.section	.rodata._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC5EmRKS1_RKS2_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_, @function
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_:
.LFB2521:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2521
	endbr64
	movabsq	$384307168202282325, %rax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	cmpq	%rax, %rsi
	ja	.L35
	pxor	%xmm0, %xmm0
	leaq	(%rsi,%rsi,2), %rbp
	movq	%rdi, %r13
	movq	%rsi, %rbx
	movq	$0, 16(%rdi)
	salq	$3, %rbp
	movups	%xmm0, (%rdi)
	testq	%rsi, %rsi
	je	.L3
	movq	%rbp, %rdi
	movq	%rdx, %r14
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	(%r14), %rsi
	movq	8(%r14), %r8
	movq	%rax, %xmm0
	addq	%rax, %rbp
	movq	%rax, %r15
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 16(%r13)
	movq	%rax, %rbp
	movups	%xmm0, 0(%r13)
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%r8, %r12
	pxor	%xmm0, %xmm0
	movq	$0, 16(%rbp)
	subq	%rsi, %r12
	movups	%xmm0, 0(%rbp)
	movq	%r12, %rax
	sarq	$2, %rax
	je	.L36
	movabsq	$2305843009213693951, %rdi
	cmpq	%rdi, %rax
	ja	.L37
	movq	%r12, %rdi
.LEHB1:
	call	_Znwm@PLT
	movq	8(%r14), %r8
	movq	(%r14), %rsi
	movq	%rax, %rcx
	movq	%r8, %rdx
	subq	%rsi, %rdx
.L5:
	movq	%rcx, %xmm0
	addq	%rcx, %r12
	punpcklqdq	%xmm0, %xmm0
	movq	%r12, 16(%rbp)
	movups	%xmm0, 0(%rbp)
	cmpq	%rsi, %r8
	je	.L7
	movq	%rcx, %rdi
	movq	%r8, 24(%rsp)
	addq	$24, %rbp
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	call	memmove@PLT
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rax, %rcx
	movq	24(%rsp), %r8
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	subq	$1, %rbx
	jne	.L10
.L17:
	movq	%rbp, 8(%r13)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	addq	%rdx, %rcx
	addq	$24, %rbp
	movq	%rcx, -16(%rbp)
	subq	$1, %rbx
	jne	.L10
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L36:
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L3:
	xorl	%ebp, %ebp
	jmp	.L17
.L37:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE1:
.L35:
	leaq	.LC0(%rip), %rdi
.LEHB2:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE2:
.L19:
	endbr64
	movq	%rax, %rdi
.L11:
	call	__cxa_begin_catch@PLT
.L14:
	cmpq	%rbp, %r15
	jne	.L38
.LEHB3:
	call	__cxa_rethrow@PLT
.LEHE3:
.L38:
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.L13
	call	_ZdlPv@PLT
.L13:
	addq	$24, %r15
	jmp	.L14
.L18:
	endbr64
	movq	%rax, %rbp
.L15:
	call	__cxa_end_catch@PLT
	movq	0(%r13), %rdi
	testq	%rdi, %rdi
	je	.L16
	call	_ZdlPv@PLT
.L16:
	movq	%rbp, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE2521:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_,"aG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC5EmRKS1_RKS2_,comdat
	.align 4
.LLSDA2521:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2521-.LLSDATTD2521
.LLSDATTD2521:
	.byte	0x1
	.uleb128 .LLSDACSE2521-.LLSDACSB2521
.LLSDACSB2521:
	.uleb128 .LEHB0-.LFB2521
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2521
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L19-.LFB2521
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB2521
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2521
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L18-.LFB2521
	.uleb128 0
	.uleb128 .LEHB4-.LFB2521
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2521:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2521:
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC5EmRKS1_RKS2_,comdat
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, @function
_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:
.LFB2524:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	8(%rdi), %rbx
	movq	(%rdi), %rbp
	cmpq	%rbp, %rbx
	je	.L40
	.p2align 4,,10
	.p2align 3
.L44:
	movq	0(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L41
	call	_ZdlPv@PLT
	addq	$24, %rbp
	cmpq	%rbp, %rbx
	jne	.L44
.L42:
	movq	(%r12), %rbp
.L40:
	testq	%rbp, %rbp
	je	.L39
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	addq	$24, %rbp
	cmpq	%rbp, %rbx
	jne	.L44
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L39:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2524:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Execution time: "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2234:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2234
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movl	$1600, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	movaps	%xmm0, 128(%rsp)
	movq	$0, 144(%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	leaq	1600(%rax), %rdx
	movq	%rax, 128(%rsp)
	movq	%rdx, 144(%rsp)
.L48:
	movdqa	.LC1(%rip), %xmm1
	addq	$16, %rax
	movups	%xmm1, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L48
	leaq	96(%rsp), %rbp
	leaq	128(%rsp), %r14
	movq	%rdx, 136(%rsp)
	movl	$400, %esi
	leaq	32(%rsp), %r12
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movq	%r12, %rdi
.LEHB6:
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
.LEHE6:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L49
	call	_ZdlPv@PLT
.L49:
	pxor	%xmm0, %xmm0
	movl	$1600, %edi
	movq	$0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	leaq	1600(%rax), %rdx
	movq	%rax, 128(%rsp)
	movq	%rdx, 144(%rsp)
.L50:
	movdqa	.LC1(%rip), %xmm2
	addq	$16, %rax
	movups	%xmm2, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L50
	leaq	64(%rsp), %r13
	movq	%rdx, 136(%rsp)
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movl	$400, %esi
	movq	%r13, %rdi
.LEHB8:
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
.LEHE8:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L51
	call	_ZdlPv@PLT
.L51:
	pxor	%xmm0, %xmm0
	movl	$1600, %edi
	movq	$0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	leaq	8(%rax), %rdi
	leaq	1600(%rax), %rdx
	movl	$400, %esi
	movq	%rax, 128(%rsp)
	andq	$-8, %rdi
	movq	%rdx, 144(%rsp)
	movq	$0, (%rax)
	movq	$0, 1592(%rax)
	subq	%rdi, %rax
	movq	%rax, %rcx
	xorl	%eax, %eax
	addl	$1600, %ecx
	shrl	$3, %ecx
	rep stosq
	movq	%rdx, 136(%rsp)
	leaq	31(%rsp), %rcx
	movq	%r14, %rdx
	movq	%rbp, %rdi
.LEHB10:
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1EmRKS1_RKS2_
.LEHE10:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L52
	call	_ZdlPv@PLT
.L52:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	64(%rsp), %r10
	movq	32(%rsp), %r15
	xorl	%ebx, %ebx
	movq	%rax, 8(%rsp)
	movq	96(%rsp), %r14
	leaq	9600(%r10), %r9
.L55:
	movq	(%r15,%rbx), %r11
	movq	(%r14,%rbx), %r8
	xorl	%edi, %edi
.L54:
	movl	(%r8), %esi
	movq	%r11, %rcx
	movq	%r10, %rax
	.p2align 4,,10
	.p2align 3
.L53:
	movq	(%rax), %rdx
	addq	$24, %rax
	addq	$4, %rcx
	movl	(%rdx,%rdi), %edx
	imull	-4(%rcx), %edx
	addl	%edx, %esi
	movl	%esi, (%r8)
	cmpq	%r9, %rax
	jne	.L53
	addq	$4, %rdi
	addq	$4, %r8
	cmpq	$1600, %rdi
	jne	.L54
	addq	$24, %rbx
	cmpq	$9600, %rbx
	jne	.L55
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	8(%rsp), %rax
	movl	$16, %edx
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC2(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
.LEHB11:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE11:
	movq	%rbp, %rdi
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	movq	%r13, %rdi
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	movq	%r12, %rdi
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	movq	152(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L97
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L97:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L71:
	endbr64
	movq	%rax, %rbx
	jmp	.L64
.L69:
	endbr64
	movq	%rax, %rbp
	jmp	.L61
.L70:
	endbr64
	movq	%rax, %rbp
	jmp	.L63
.L67:
	endbr64
	movq	%rax, %rbp
	jmp	.L58
.L68:
	endbr64
	movq	%rax, %rbp
	jmp	.L60
.L66:
	endbr64
	movq	%rax, %rbp
	jmp	.L56
	.section	.gcc_except_table,"a",@progbits
.LLSDA2234:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2234-.LLSDACSB2234
.LLSDACSB2234:
	.uleb128 .LEHB5-.LFB2234
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2234
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L66-.LFB2234
	.uleb128 0
	.uleb128 .LEHB7-.LFB2234
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L68-.LFB2234
	.uleb128 0
	.uleb128 .LEHB8-.LFB2234
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L67-.LFB2234
	.uleb128 0
	.uleb128 .LEHB9-.LFB2234
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L70-.LFB2234
	.uleb128 0
	.uleb128 .LEHB10-.LFB2234
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L69-.LFB2234
	.uleb128 0
	.uleb128 .LEHB11-.LFB2234
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L71-.LFB2234
	.uleb128 0
.LLSDACSE2234:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2234
	.type	main.cold, @function
main.cold:
.LFSB2234:
.L64:
	.cfi_def_cfa_offset 224
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
.L63:
	movq	%r13, %rdi
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
.L60:
	movq	%r12, %rdi
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	movq	%rbp, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.L61:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L63
	call	_ZdlPv@PLT
	jmp	.L63
.L58:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L60
	call	_ZdlPv@PLT
	jmp	.L60
.L56:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L57
	call	_ZdlPv@PLT
.L57:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE12:
	.cfi_endproc
.LFE2234:
	.section	.gcc_except_table
.LLSDAC2234:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2234-.LLSDACSBC2234
.LLSDACSBC2234:
	.uleb128 .LEHB12-.LCOLDB4
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC2234:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2905:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2905:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1
	.long	1
	.long	1
	.long	1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:

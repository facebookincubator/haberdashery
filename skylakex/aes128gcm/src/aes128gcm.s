# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_0:
	.quad	-4467570830351532032
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
.LCPI0_3:
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
.LCPI0_4:
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
.LCPI0_5:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI0_6:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI0_7:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI0_8:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_9:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI0_10:
	.long	5
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_11:
	.long	1
	.section	.text.haberdashery_aes128gcm_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylakex_decrypt
	.p2align	4
	.type	haberdashery_aes128gcm_skylakex_decrypt,@function
haberdashery_aes128gcm_skylakex_decrypt:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_69
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$896, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r12
	testq	%rdx, %rdx
	setne	%r8b
	testq	%rsi, %rsi
	sete	%r10b
	testb	%r8b, %r10b
	jne	.LBB0_68
	testq	%r12, %r12
	setne	%r8b
	testq	%rcx, %rcx
	sete	%r10b
	testb	%r8b, %r10b
	jne	.LBB0_68
	movq	48(%rbp), %r13
	movq	32(%rbp), %r8
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	sete	%r10b
	movq	16(%rbp), %r11
	xorq	%r13, %r11
	xorq	$16, %r8
	orq	%r11, %r8
	setne	%r8b
	orb	%r10b, %r8b
	jne	.LBB0_68
	movabsq	$2305843009213693824, %r8
	addq	$127, %r8
	cmpq	%r8, %r12
	seta	%r8b
	movabsq	$68719476704, %r10
	cmpq	%r10, %r13
	seta	%r10b
	orb	%r8b, %r10b
	jne	.LBB0_68
	movq	40(%rbp), %r11
	testq	%r13, %r13
	je	.LBB0_6
	testq	%r9, %r9
	je	.LBB0_68
	testq	%r11, %r11
	je	.LBB0_68
.LBB0_6:
	testq	%rdx, %rdx
	movl	$1, %eax
	movq	%rsi, %r14
	cmoveq	%rax, %r14
	testq	%r12, %r12
	cmovneq	%rcx, %rax
	vmovdqu	(%rbx), %xmm0
	vmovdqa	%xmm0, 272(%rsp)
	cmpq	$12, %rdx
	movq	%rdi, 64(%rsp)
	jne	.LBB0_8
	vmovq	(%rsi), %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	vpblendd	$8, .LCPI0_4(%rip), %xmm0, %xmm0
	jmp	.LBB0_18
.LBB0_8:
	vmovdqa	176(%rdi), %xmm7
	movq	%rdx, %r10
	shrq	$7, %r10
	je	.LBB0_9
	vmovdqa	192(%rdi), %xmm1
	vmovdqa	208(%rdi), %xmm14
	vmovdqa	224(%rdi), %xmm5
	vmovdqa	240(%rdi), %xmm9
	vmovdqa	256(%rdi), %xmm10
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpbroadcastq	.LCPI0_0(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm4, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm15
	vpternlogq	$150, %xmm2, %xmm3, %xmm15
	vpblendd	$12, %xmm1, %xmm7, %xmm0
	vpalignr	$8, %xmm7, %xmm1, %xmm2
	vpblendd	$12, %xmm5, %xmm14, %xmm3
	vmovdqa	%xmm5, %xmm6
	valignq	$1, %xmm14, %xmm5, %xmm20
	vpblendd	$12, %xmm10, %xmm9, %xmm5
	vmovdqa64	%xmm9, %xmm16
	vmovdqa64	%xmm10, %xmm17
	vpalignr	$8, %xmm9, %xmm10, %xmm9
	vmovdqu	(%r14), %ymm11
	vbroadcasti32x4	.LCPI0_2(%rip), %ymm23
	vpblendd	$12, %xmm15, %xmm4, %xmm10
	vpshufb	%ymm23, %ymm11, %ymm11
	vmovdqa	%ymm11, 384(%rsp)
	vmovdqu	32(%r14), %ymm12
	vmovdqa64	%xmm15, %xmm18
	vmovdqa64	%xmm4, %xmm19
	vpalignr	$8, %xmm4, %xmm15, %xmm11
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 416(%rsp)
	vmovdqu	64(%r14), %ymm12
	leaq	544(%rsp), %r8
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 448(%rsp)
	vmovdqu	96(%r14), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 480(%rsp)
	leaq	384(%rsp), %r13
	#APP

	# r13 

	#NO_APP
	cmpq	$1, %r10
	je	.LBB0_30
	vmovdqu	128(%r14), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 544(%rsp)
	vmovdqu	160(%r14), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 576(%rsp)
	vmovdqu	192(%r14), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 608(%rsp)
	vmovdqu	224(%r14), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 640(%rsp)
	#APP

	# r8 

	#NO_APP
.LBB0_30:
	vmovdqa	%xmm14, %xmm15
	vmovdqa	%xmm7, 16(%rsp)
	movq	%r12, 32(%rsp)
	vpxor	%xmm2, %xmm0, %xmm0
	vpxorq	%xmm20, %xmm3, %xmm3
	vpxor	%xmm5, %xmm9, %xmm4
	vpxor	%xmm11, %xmm10, %xmm2
	vpxor	%xmm14, %xmm14, %xmm14
	cmpq	$384, %rdx
	movq	%r10, 96(%rsp)
	vmovdqa	%xmm3, (%rsp)
	vmovdqa	%xmm4, 48(%rsp)
	jb	.LBB0_31
	leaq	704(%rsp), %r15
	addq	$256, %rsi
	leaq	-2(%r10), %rbx
	leaq	384(%rsp), %r10
	vmovdqa64	%xmm1, %xmm25
	vmovdqa64	16(%rsp), %xmm21
	vmovdqa64	%xmm15, %xmm20
	vmovdqa64	%xmm6, %xmm24
	vmovdqa64	%xmm16, %xmm26
	vmovdqa64	%xmm17, %xmm22
	vmovdqa64	%xmm18, %xmm27
	vmovdqa64	%xmm0, %xmm28
	vmovdqa64	%xmm2, %xmm29
.LBB0_35:
	vmovdqu	(%rsi), %ymm0
	vpshufb	%ymm23, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r15)
	vmovdqu	32(%rsi), %ymm0
	vpshufb	%ymm23, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%r15)
	vmovdqu	64(%rsi), %ymm0
	vpshufb	%ymm23, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%r15)
	vmovdqu	96(%rsi), %ymm0
	vpshufb	%ymm23, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%r15)
	#APP

	# r15 

	#NO_APP
	movq	%r10, %r12
	vmovdqu	112(%r10), %xmm0
	vmovdqu	96(%r10), %xmm1
	vmovdqu	80(%r10), %xmm2
	vmovdqu	16(%r10), %xmm11
	vmovdqu	32(%r10), %xmm4
	vmovdqu	48(%r10), %xmm3
	vmovdqu	64(%r10), %xmm15
	vpxorq	24(%r10), %xmm11, %xmm30
	vmovdqa64	%xmm19, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm10
	vmovdqa64	%xmm22, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm4, %xmm7
	vmovdqa64	%xmm4, %xmm17
	vmovdqa64	%xmm8, %xmm16
	vmovdqa64	%xmm26, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm8
	vmovdqa64	%xmm3, %xmm31
	vpxor	%xmm7, %xmm10, %xmm10
	vmovdqa64	%xmm24, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm15, %xmm7
	vpternlogq	$150, %xmm8, %xmm7, %xmm10
	vmovdqa64	%xmm20, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm7
	vmovdqa64	%xmm25, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm8
	vmovdqa	%xmm1, %xmm3
	vpternlogq	$150, %xmm7, %xmm8, %xmm10
	vmovdqa64	%xmm21, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm7
	vpxor	(%r10), %xmm14, %xmm14
	vmovdqa64	%xmm27, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm7
	vmovdqa64	%xmm17, %xmm6
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa64	%xmm31, %xmm13
	vmovdqa64	%xmm26, %xmm8
	vpclmulqdq	$17, %xmm8, %xmm13, %xmm8
	vpclmulqdq	$17, %xmm9, %xmm15, %xmm11
	vpternlogq	$150, %xmm8, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm3, %xmm11
	vmovdqa64	%xmm3, %xmm17
	vpternlogq	$150, %xmm8, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm8
	vmovdqa	%xmm0, %xmm12
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm11
	vpternlogq	$150, %xmm8, %xmm11, %xmm7
	vmovdqa64	%xmm29, %xmm11
	vmovdqa64	%xmm30, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	40(%r10), %xmm6, %xmm8
	vmovdqa	48(%rsp), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqa64	%xmm16, %xmm8
	vpxorq	56(%r10), %xmm31, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm5
	vpxor	72(%r10), %xmm15, %xmm3
	vmovdqa	(%rsp), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm3
	vpternlogq	$150, %xmm5, %xmm3, %xmm4
	vpxor	88(%r10), %xmm2, %xmm0
	vpxorq	104(%r10), %xmm17, %xmm2
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm0
	vmovdqa64	%xmm28, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpshufd	$238, %xmm14, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpxor	120(%r10), %xmm12, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm10, %xmm0
	vpshufd	$78, %xmm10, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpternlogq	$150, %xmm10, %xmm7, %xmm4
	vpshufd	$78, %xmm4, %xmm14
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm0
	vpternlogq	$150, %xmm0, %xmm7, %xmm14
	subq	$-128, %rsi
	movq	%r15, %rdi
	movq	%r8, %r13
	movq	%r8, %r10
	movq	%r15, %r8
	movq	%r12, %r15
	decq	%rbx
	jne	.LBB0_35
	jmp	.LBB0_32
.LBB0_9:
	vpxor	%xmm13, %xmm13, %xmm13
	movq	%rdx, %rsi
	jmp	.LBB0_10
.LBB0_31:
	movq	%r8, %rdi
	vmovdqa64	%xmm1, %xmm25
	vmovdqa64	16(%rsp), %xmm21
	vmovdqa64	%xmm15, %xmm20
	vmovdqa64	%xmm6, %xmm24
	vmovdqa64	%xmm16, %xmm26
	vmovdqa64	%xmm17, %xmm22
	vmovdqa64	%xmm18, %xmm27
	vmovdqa64	%xmm0, %xmm28
	vmovdqa64	%xmm2, %xmm29
.LBB0_32:
	vmovdqu	112(%r13), %xmm10
	vmovdqu	96(%r13), %xmm1
	vmovdqu	80(%r13), %xmm12
	vmovdqu	16(%r13), %xmm13
	vmovdqu	32(%r13), %xmm2
	vmovdqu	48(%r13), %xmm7
	vmovdqu	64(%r13), %xmm5
	vmovdqa64	%xmm19, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm4
	vmovdqa64	%xmm22, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm3
	vmovdqa64	%xmm2, %xmm22
	vmovdqa64	%xmm26, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm2
	vmovdqa64	%xmm7, %xmm26
	vmovdqa64	%xmm0, %xmm19
	vmovdqa64	%xmm24, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm0
	vmovdqa64	%xmm5, %xmm23
	vmovdqa64	%xmm24, %xmm30
	vpxor	%xmm4, %xmm3, %xmm15
	vmovdqa64	%xmm20, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm15
	vmovdqa64	%xmm25, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm0
	vmovdqa64	%xmm21, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm2
	vpternlogq	$150, %xmm4, %xmm0, %xmm15
	vpxor	(%r13), %xmm14, %xmm4
	vmovdqa64	%xmm27, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm0
	vmovdqa64	%xmm27, %xmm14
	vpternlogq	$150, %xmm2, %xmm0, %xmm15
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm0
	vmovdqa64	%xmm13, %xmm24
	vmovdqa64	%xmm11, %xmm16
	vmovdqa64	%xmm22, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm2
	vmovdqa64	%xmm9, %xmm21
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa64	%xmm19, %xmm2
	vmovdqa64	%xmm26, %xmm13
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vmovdqa64	%xmm23, %xmm26
	vmovdqa64	%xmm30, %xmm9
	vmovdqa64	%xmm23, %xmm11
	vpclmulqdq	$17, %xmm9, %xmm11, %xmm11
	vpternlogq	$150, %xmm2, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm11
	vmovdqa64	%xmm25, %xmm23
	vpternlogq	$150, %xmm2, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm11
	vpternlogq	$150, %xmm2, %xmm11, %xmm0
	vpxorq	24(%r13), %xmm24, %xmm2
	vmovdqa64	%xmm29, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm2
	vpxorq	40(%r13), %xmm22, %xmm9
	vmovdqa	48(%rsp), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm9, %xmm9
	vpxor	%xmm2, %xmm9, %xmm2
	vpxor	56(%r13), %xmm13, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm5
	vpxorq	72(%r13), %xmm26, %xmm3
	vmovdqa	(%rsp), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm3
	vpternlogq	$150, %xmm5, %xmm3, %xmm2
	vpxor	88(%r13), %xmm12, %xmm3
	vpxor	104(%r13), %xmm1, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm3
	vmovdqa64	%xmm28, %xmm11
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	vpxor	120(%r13), %xmm10, %xmm3
	vpshufd	$238, %xmm4, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm15, %xmm3
	vpshufd	$78, %xmm15, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpternlogq	$150, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm2
	vpternlogq	$150, %xmm2, %xmm0, %xmm13
	cmpq	$1, 96(%rsp)
	jne	.LBB0_36
	vmovdqa	%xmm6, %xmm7
	jmp	.LBB0_37
.LBB0_36:
	vmovdqa64	%xmm23, %xmm9
	vmovdqa64	%xmm19, %xmm5
	vmovdqa64	%xmm21, %xmm0
	vmovdqa64	%xmm16, %xmm1
	vmovdqu	16(%rdi), %xmm3
	vmovdqu	32(%rdi), %xmm7
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm2
	vmovdqa64	%xmm3, %xmm16
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm4
	vmovdqa64	%xmm7, %xmm21
	vpxor	%xmm2, %xmm4, %xmm2
	vmovdqu	96(%rdi), %xmm4
	vmovdqa64	%xmm30, %xmm12
	vmovdqa64	%xmm19, %xmm15
	vmovdqa64	%xmm0, %xmm17
	vmovdqa64	%xmm27, %xmm3
	vmovdqa	%xmm1, %xmm6
	vmovdqa64	%xmm14, %xmm19
	vmovdqu	48(%rdi), %xmm14
	vmovdqa64	%xmm11, %xmm22
	vmovdqu	64(%rdi), %xmm11
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm11, %xmm7
	vpternlogq	$150, %xmm5, %xmm7, %xmm2
	vmovdqu	80(%rdi), %xmm10
	vmovdqa64	%xmm20, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm7
	vmovdqa64	%xmm4, %xmm20
	vpternlogq	$150, %xmm5, %xmm7, %xmm2
	vmovdqu	112(%rdi), %xmm0
	vpclmulqdq	$0, 16(%rsp), %xmm0, %xmm7
	vmovdqa64	%xmm0, %xmm23
	vpxor	(%rdi), %xmm13, %xmm5
	vmovdqa	%xmm8, %xmm13
	vpclmulqdq	$0, %xmm3, %xmm5, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm2
	vmovdqa64	%xmm16, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm7
	vmovdqa64	%xmm21, %xmm0
	vmovdqa64	%xmm17, %xmm6
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm15, %xmm14, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm11, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm7
	vmovdqa64	%xmm20, %xmm12
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm6
	vmovdqa64	%xmm23, %xmm15
	vpclmulqdq	$17, 16(%rsp), %xmm15, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm5, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm6
	vpxorq	40(%rdi), %xmm21, %xmm3
	vmovdqa	48(%rsp), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	56(%rdi), %xmm14, %xmm7
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm7
	vpxorq	24(%rdi), %xmm16, %xmm0
	vmovdqa64	%xmm19, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm0
	vpxor	72(%rdi), %xmm11, %xmm8
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	(%rsp), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm3
	vpternlogq	$150, %xmm7, %xmm3, %xmm0
	vmovdqa	16(%rsp), %xmm7
	vpxor	88(%rdi), %xmm10, %xmm3
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm3
	vpxorq	104(%rdi), %xmm20, %xmm4
	vmovdqa64	%xmm22, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpxorq	120(%rdi), %xmm23, %xmm3
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm3
	vpshufd	$238, %xmm5, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$150, %xmm2, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm13
	vpternlogq	$150, %xmm2, %xmm6, %xmm13
.LBB0_37:
	movq	32(%rsp), %r12
	movq	48(%rbp), %r13
	movq	64(%rsp), %rdi
	movabsq	$9223372036854775680, %r8
	andq	%rdx, %r8
	movl	%edx, %esi
	andl	$127, %esi
	addq	%r8, %r14
.LBB0_10:
	vmovdqa64	%xmm7, %xmm16
	cmpq	$96, %rsi
	jb	.LBB0_13
	vmovdqa	256(%rdi), %xmm0
	vmovdqa	192(%rdi), %xmm2
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm4
	vmovdqa	240(%rdi), %xmm5
	vmovdqa64	.LCPI0_2(%rip), %xmm17
	vpbroadcastq	.LCPI0_0(%rip), %xmm18
	vmovdqa64	%xmm16, %xmm6
	.p2align	4
.LBB0_12:
	vmovdqu	(%r14), %xmm8
	vmovdqu	16(%r14), %xmm9
	vmovdqu	32(%r14), %xmm10
	vmovdqu	48(%r14), %xmm11
	vpshufb	%xmm17, %xmm8, %xmm12
	vpshufb	%xmm17, %xmm9, %xmm14
	vpshufb	%xmm17, %xmm10, %xmm15
	vpshufb	%xmm17, %xmm11, %xmm10
	vmovdqu	64(%r14), %xmm8
	vmovdqu	80(%r14), %xmm11
	vpshufb	%xmm17, %xmm8, %xmm9
	vpshufb	%xmm17, %xmm11, %xmm8
	vpxor	%xmm12, %xmm13, %xmm11
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm12
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm13
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm11
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm12
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm14
	vpternlogq	$150, %xmm13, %xmm7, %xmm14
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm15
	vpternlogq	$150, %xmm1, %xmm14, %xmm15
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm1
	vpternlogq	$150, %xmm7, %xmm11, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm7
	vpternlogq	$150, %xmm13, %xmm12, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm11
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm11, %xmm15, %xmm10
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm11
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm12
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm13
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm9
	vpternlogq	$150, %xmm13, %xmm10, %xmm9
	vpclmulqdq	$0, %xmm6, %xmm8, %xmm10
	vpternlogq	$150, %xmm11, %xmm1, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm8, %xmm1
	vpternlogq	$150, %xmm12, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vmovdqa64	%xmm18, %xmm11
	vpclmulqdq	$16, %xmm11, %xmm10, %xmm7
	vpshufd	$78, %xmm10, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm9, %xmm7
	vpshufd	$78, %xmm9, %xmm13
	vpternlogq	$150, %xmm7, %xmm1, %xmm13
	addq	$-96, %rsi
	addq	$96, %r14
	cmpq	$95, %rsi
	ja	.LBB0_12
.LBB0_13:
	cmpq	$16, %rsi
	jb	.LBB0_14
	leaq	-16(%rsi), %r8
	testb	$16, %r8b
	jne	.LBB0_40
	vmovdqu	(%r14), %xmm0
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vmovdqa64	%xmm16, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpbroadcastq	.LCPI0_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm0
	vpshufd	$78, %xmm2, %xmm13
	vpternlogq	$150, %xmm3, %xmm0, %xmm13
	addq	$16, %r14
	movq	%r8, %rsi
.LBB0_40:
	cmpq	$16, %r8
	jb	.LBB0_15
	vmovdqa64	%xmm16, %xmm7
	vmovdqa	.LCPI0_2(%rip), %xmm0
	vpbroadcastq	.LCPI0_0(%rip), %xmm2
	movq	%rsi, %r8
.LBB0_42:
	vmovdqu	(%r14), %xmm1
	vmovdqu	16(%r14), %xmm3
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm4
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm5
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm6, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm1
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm5, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm3
	vpternlogq	$150, %xmm4, %xmm1, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm5, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm13
	vpternlogq	$150, %xmm4, %xmm3, %xmm13
	addq	$-32, %r8
	addq	$32, %r14
	cmpq	$15, %r8
	ja	.LBB0_42
	jmp	.LBB0_15
.LBB0_14:
	movq	%rsi, %r8
.LBB0_15:
	testq	%r8, %r8
	je	.LBB0_17
	movl	$-1, %esi
	shlxl	%r8d, %esi, %esi
	notl	%esi
	kmovd	%esi, %k1
	vmovdqu8	(%r14), %xmm0 {%k1} {z}
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vmovdqa64	%xmm16, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpbroadcastq	.LCPI0_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm0
	vpshufd	$78, %xmm1, %xmm13
	vpternlogq	$150, %xmm2, %xmm0, %xmm13
.LBB0_17:
	vmovq	%rdx, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vmovdqa64	%xmm16, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpbroadcastq	.LCPI0_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI0_3(%rip), %xmm1, %xmm1
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
.LBB0_18:
	vmovdqa64	(%rdi), %xmm29
	vmovdqa	16(%rdi), %xmm1
	vmovdqa	32(%rdi), %xmm2
	vmovdqa	48(%rdi), %xmm3
	vmovdqa	%xmm3, 208(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	vpxorq	%xmm0, %xmm29, %xmm0
	vmovdqa	%xmm1, 240(%rsp)
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm2, 224(%rsp)
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	64(%rdi), %xmm1
	vmovdqa	%xmm1, 192(%rsp)
	vmovdqa	80(%rdi), %xmm2
	vmovaps	96(%rdi), %xmm3
	vmovaps	%xmm3, 112(%rsp)
	vmovaps	112(%rdi), %xmm3
	vmovaps	%xmm3, 144(%rsp)
	vmovaps	128(%rdi), %xmm3
	vmovaps	%xmm3, 128(%rsp)
	vmovdqa	144(%rdi), %xmm3
	vmovdqa	%xmm3, 48(%rsp)
	vaesenc	%xmm1, %xmm0, %xmm1
	vmovdqa	160(%rdi), %xmm0
	vmovdqa	%xmm0, 176(%rsp)
	vmovdqa	176(%rdi), %xmm14
	movq	%r12, %rdx
	shrq	$7, %rdx
	vmovdqa	%xmm14, (%rsp)
	vmovdqa	%xmm2, 80(%rsp)
	je	.LBB0_19
	vmovdqa	%xmm1, 160(%rsp)
	vmovdqa	192(%rdi), %xmm7
	vmovdqa	208(%rdi), %xmm8
	vmovdqa	224(%rdi), %xmm9
	vmovdqa	240(%rdi), %xmm13
	vmovdqa	256(%rdi), %xmm4
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI0_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm6
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm11
	vpternlogq	$150, %xmm1, %xmm2, %xmm11
	vpblendd	$12, %xmm7, %xmm14, %xmm1
	vmovdqa	%xmm7, %xmm5
	vpalignr	$8, %xmm14, %xmm7, %xmm2
	vmovdqa	%xmm4, %xmm14
	vpblendd	$12, %xmm9, %xmm8, %xmm3
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm9, %xmm12
	vpalignr	$8, %xmm8, %xmm9, %xmm7
	vpblendd	$12, %xmm14, %xmm13, %xmm8
	vpalignr	$8, %xmm13, %xmm14, %xmm10
	vmovdqu	(%rax), %ymm9
	vbroadcasti32x4	.LCPI0_2(%rip), %ymm25
	vpblendd	$12, %xmm11, %xmm6, %xmm0
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 384(%rsp)
	vmovdqu	32(%rax), %ymm9
	vmovdqa64	%xmm11, %xmm19
	vmovdqa64	%xmm6, %xmm20
	vpalignr	$8, %xmm6, %xmm11, %xmm11
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 416(%rsp)
	vmovdqu	64(%rax), %ymm9
	leaq	544(%rsp), %r14
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 448(%rsp)
	vmovdqu	96(%rax), %ymm9
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 480(%rsp)
	leaq	384(%rsp), %r15
	#APP

	# r15 

	#NO_APP
	cmpq	$1, %rdx
	je	.LBB0_44
	vmovdqu	128(%rax), %ymm9
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 544(%rsp)
	vmovdqu	160(%rax), %ymm9
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 576(%rsp)
	vmovdqu	192(%rax), %ymm9
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 608(%rsp)
	vmovdqu	224(%rax), %ymm9
	vpshufb	%ymm25, %ymm9, %ymm9
	vmovdqa	%ymm9, 640(%rsp)
	#APP

	# r14 

	#NO_APP
.LBB0_44:
	vpxor	%xmm2, %xmm1, %xmm9
	vpxorq	%xmm7, %xmm3, %xmm18
	vpxorq	%xmm10, %xmm8, %xmm16
	vpxor	%xmm0, %xmm11, %xmm0
	vpxord	%xmm17, %xmm17, %xmm17
	movq	%r12, %r8
	cmpq	$384, %r12
	vmovdqa	%xmm13, 16(%rsp)
	vmovdqa	%xmm14, 32(%rsp)
	jb	.LBB0_45
	leaq	704(%rsp), %r10
	addq	$256, %rcx
	leaq	-2(%rdx), %rbx
	leaq	384(%rsp), %rdi
	vmovdqa64	%xmm5, %xmm24
	vmovdqa64	%xmm4, %xmm28
	vmovdqa64	%xmm12, %xmm27
	vmovdqa64	%xmm19, %xmm30
	vmovdqa64	%xmm20, %xmm31
	vmovdqa64	%xmm0, %xmm20
	.p2align	4
.LBB0_49:
	vmovdqu	(%rcx), %ymm0
	vpshufb	%ymm25, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	vmovdqu	32(%rcx), %ymm0
	vpshufb	%ymm25, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%r10)
	vmovdqu	64(%rcx), %ymm0
	vpshufb	%ymm25, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%r10)
	vmovdqu	96(%rcx), %ymm0
	vpshufb	%ymm25, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%r10)
	#APP

	# r10 

	#NO_APP
	movq	%rdi, %r12
	vmovdqu	112(%rdi), %xmm5
	vmovdqu	96(%rdi), %xmm1
	vmovdqu	80(%rdi), %xmm14
	vmovdqu	16(%rdi), %xmm8
	vmovdqu	32(%rdi), %xmm3
	vmovdqu	48(%rdi), %xmm2
	vmovdqu	64(%rdi), %xmm13
	vpxorq	24(%rdi), %xmm8, %xmm21
	vmovdqa64	%xmm31, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm8, %xmm0
	vmovdqa	32(%rsp), %xmm10
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm12
	vmovdqa64	%xmm3, %xmm26
	vmovdqa64	%xmm9, %xmm19
	vmovdqa	16(%rsp), %xmm11
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm9
	vmovdqa64	%xmm2, %xmm23
	vpxor	%xmm0, %xmm12, %xmm12
	vmovdqa64	%xmm27, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm0
	vpternlogq	$150, %xmm9, %xmm0, %xmm12
	vmovdqa64	%xmm28, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm4
	vmovdqa64	%xmm24, %xmm15
	vmovdqa	%xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm9
	vpternlogq	$150, %xmm4, %xmm9, %xmm12
	vmovdqa	(%rsp), %xmm6
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm9
	vmovdqa64	%xmm5, %xmm22
	vpxorq	(%rdi), %xmm17, %xmm4
	vmovdqa64	%xmm30, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm5
	vpternlogq	$150, %xmm9, %xmm5, %xmm12
	vpclmulqdq	$17, %xmm7, %xmm8, %xmm5
	vmovdqa64	%xmm26, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vmovdqa64	%xmm23, %xmm10
	vpclmulqdq	$17, %xmm11, %xmm10, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm9
	vpternlogq	$150, %xmm8, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm8
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm9
	vpternlogq	$150, %xmm8, %xmm9, %xmm5
	vmovdqa64	%xmm22, %xmm11
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm9, %xmm5
	vmovdqa64	%xmm19, %xmm9
	vmovdqa64	%xmm20, %xmm8
	vmovdqa64	%xmm21, %xmm1
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm3
	vpxorq	40(%rdi), %xmm26, %xmm1
	vmovdqa64	%xmm16, %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm1
	vpxor	%xmm3, %xmm1, %xmm1
	vpxorq	56(%rdi), %xmm23, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm3
	vpxor	72(%rdi), %xmm13, %xmm2
	vmovdqa64	%xmm18, %xmm6
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vpxor	88(%rdi), %xmm14, %xmm2
	vpxor	104(%rdi), %xmm0, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm3
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vpshufd	$238, %xmm4, %xmm2
	vpxor	%xmm2, %xmm4, %xmm0
	vpxorq	120(%rdi), %xmm22, %xmm2
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vpbroadcastq	.LCPI0_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm0
	vpshufd	$78, %xmm12, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm12, %xmm5, %xmm1
	vpshufd	$78, %xmm1, %xmm17
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm0
	vpternlogq	$150, %xmm0, %xmm5, %xmm17
	subq	$-128, %rcx
	movq	%r10, %rsi
	movq	%r14, %r15
	movq	%r14, %rdi
	movq	%r10, %r14
	movq	%r12, %r10
	decq	%rbx
	jne	.LBB0_49
	jmp	.LBB0_46
.LBB0_19:
	vpxor	%xmm15, %xmm15, %xmm15
	movq	%r12, %rcx
	jmp	.LBB0_20
.LBB0_45:
	movq	%r14, %rsi
	vmovdqa64	%xmm5, %xmm24
	vmovdqa64	%xmm4, %xmm28
	vmovdqa64	%xmm12, %xmm27
	vmovdqa64	%xmm19, %xmm30
	vmovdqa64	%xmm20, %xmm31
	vmovdqa64	%xmm0, %xmm20
.LBB0_46:
	vmovdqu	112(%r15), %xmm7
	vmovdqu	96(%r15), %xmm1
	vmovdqu	80(%r15), %xmm6
	vmovdqu	16(%r15), %xmm3
	vmovdqu	32(%r15), %xmm4
	vmovdqu	48(%r15), %xmm5
	vmovdqu	64(%r15), %xmm10
	vmovdqa64	%xmm31, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm0
	vmovdqa64	%xmm3, %xmm19
	vmovdqa	32(%rsp), %xmm12
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm3
	vmovdqa64	%xmm4, %xmm23
	vmovdqa	16(%rsp), %xmm14
	vpclmulqdq	$0, %xmm14, %xmm5, %xmm8
	vmovdqa64	%xmm5, %xmm22
	vmovdqa64	%xmm27, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm10, %xmm2
	vmovdqa64	%xmm10, %xmm21
	vpxor	%xmm0, %xmm3, %xmm15
	vmovdqa64	%xmm28, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm0
	vpternlogq	$150, %xmm8, %xmm2, %xmm15
	vmovdqa64	%xmm24, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vmovdqa	(%rsp), %xmm10
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm8
	vmovdqa64	%xmm7, %xmm26
	vpternlogq	$150, %xmm0, %xmm2, %xmm15
	vpxorq	(%r15), %xmm17, %xmm7
	vmovdqa64	%xmm30, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm7, %xmm0
	vpternlogq	$150, %xmm8, %xmm0, %xmm15
	vmovdqa64	%xmm19, %xmm3
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm0
	vmovdqa64	%xmm23, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm11, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa64	%xmm22, %xmm12
	vpclmulqdq	$17, %xmm14, %xmm12, %xmm2
	vmovdqa64	%xmm21, %xmm14
	vmovdqa64	%xmm27, %xmm8
	vpclmulqdq	$17, %xmm8, %xmm14, %xmm8
	vpternlogq	$150, %xmm2, %xmm8, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm2
	vmovdqa64	%xmm6, %xmm22
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm8
	vmovdqa64	%xmm1, %xmm17
	vpternlogq	$150, %xmm2, %xmm8, %xmm0
	vmovdqa64	%xmm26, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm7, %xmm8
	vpternlogq	$150, %xmm2, %xmm8, %xmm0
	vpxorq	24(%r15), %xmm19, %xmm2
	vmovdqa64	%xmm20, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm2
	vpxorq	40(%r15), %xmm23, %xmm1
	vmovdqa64	%xmm16, %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	56(%r15), %xmm12, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm2, %xmm2
	vpxorq	72(%r15), %xmm21, %xmm3
	vmovdqa64	%xmm18, %xmm8
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm3
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vpxorq	88(%r15), %xmm22, %xmm2
	vpxorq	104(%r15), %xmm17, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm3
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vpxorq	120(%r15), %xmm26, %xmm2
	vpshufd	$238, %xmm7, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm3
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vpbroadcastq	.LCPI0_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm2
	vpshufd	$78, %xmm15, %xmm3
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vpternlogq	$150, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm1
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	cmpq	$1, %rdx
	jne	.LBB0_50
	movq	64(%rsp), %rdi
	movq	%r8, %r12
	movabsq	$2305843009213693824, %rdx
	vmovdqa	(%rsp), %xmm14
	jmp	.LBB0_51
.LBB0_50:
	vmovdqa	%xmm4, %xmm0
	vmovdqa64	%xmm28, %xmm14
	vmovdqa	%xmm9, %xmm1
	vmovdqa64	%xmm27, %xmm9
	vmovdqa64	%xmm31, %xmm4
	vmovdqa64	%xmm16, %xmm2
	vmovdqu	16(%rsi), %xmm3
	vmovdqu	32(%rsi), %xmm6
	vmovdqa64	%xmm0, %xmm16
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm0
	vmovdqa64	%xmm3, %xmm19
	vmovdqa	32(%rsp), %xmm7
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm3
	vmovdqa64	%xmm7, %xmm25
	vmovdqa64	%xmm6, %xmm21
	vpxor	%xmm0, %xmm3, %xmm3
	vmovdqu	96(%rsi), %xmm0
	vmovdqu	48(%rsi), %xmm13
	vmovdqu	64(%rsi), %xmm7
	vmovdqa64	%xmm18, %xmm23
	vmovdqa64	%xmm1, %xmm22
	vmovdqa	16(%rsp), %xmm1
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpternlogq	$150, %xmm5, %xmm8, %xmm3
	vmovdqu	80(%rsi), %xmm12
	vpclmulqdq	$0, %xmm14, %xmm12, %xmm5
	vmovdqa64	%xmm24, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm8
	vmovdqa64	%xmm0, %xmm24
	vpternlogq	$150, %xmm5, %xmm8, %xmm3
	vmovdqu	112(%rsi), %xmm11
	vmovdqa	(%rsp), %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm5
	vmovdqa64	%xmm6, %xmm18
	vpxor	(%rsi), %xmm15, %xmm8
	vmovdqa64	%xmm28, %xmm15
	vmovdqa64	%xmm27, %xmm6
	vmovdqa64	%xmm30, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm8, %xmm9
	vpternlogq	$150, %xmm5, %xmm9, %xmm3
	vmovdqa64	%xmm19, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm5
	vmovdqa64	%xmm21, %xmm0
	vmovdqa64	%xmm25, %xmm4
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm5
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm12, %xmm5
	vmovdqa64	%xmm24, %xmm15
	vpclmulqdq	$17, %xmm10, %xmm15, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vmovdqa64	%xmm18, %xmm10
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm14, %xmm8, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vpxorq	40(%rsi), %xmm21, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm1
	vpxor	56(%rsi), %xmm13, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm5
	vpxorq	24(%rsi), %xmm19, %xmm2
	vmovdqa64	%xmm20, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm2, %xmm2
	vpxor	72(%rsi), %xmm7, %xmm0
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm23, %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm0
	vpternlogq	$150, %xmm5, %xmm0, %xmm1
	vpxor	88(%rsi), %xmm12, %xmm0
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm0
	vpxorq	104(%rsi), %xmm24, %xmm2
	vmovdqa64	%xmm22, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpxor	120(%rsi), %xmm11, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm0
	vpshufd	$238, %xmm8, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vmovdqa64	%xmm16, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm0
	vpshufd	$78, %xmm3, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm0
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm0, %xmm4, %xmm15
	movq	64(%rsp), %rdi
	movq	%r8, %r12
	movabsq	$2305843009213693824, %rdx
	vmovdqa64	%xmm18, %xmm14
.LBB0_51:
	vmovdqa	80(%rsp), %xmm2
	vmovdqa	160(%rsp), %xmm1
	andq	%r12, %rdx
	movl	%r12d, %ecx
	andl	$127, %ecx
	addq	%rdx, %rax
.LBB0_20:
	vaesenc	%xmm2, %xmm1, %xmm0
	vmovdqa64	%xmm0, %xmm16
	vmovdqa64	.LCPI0_2(%rip), %xmm19
	cmpq	$96, %rcx
	jb	.LBB0_23
	vmovdqa	256(%rdi), %xmm3
	vmovdqa	192(%rdi), %xmm4
	vmovdqa	208(%rdi), %xmm5
	vmovdqa	224(%rdi), %xmm6
	vmovdqa	240(%rdi), %xmm7
	vpbroadcastq	.LCPI0_0(%rip), %xmm8
	.p2align	4
.LBB0_22:
	vmovdqu	(%rax), %xmm1
	vmovdqu	16(%rax), %xmm2
	vmovdqu	32(%rax), %xmm9
	vmovdqu	48(%rax), %xmm10
	vpshufb	%xmm19, %xmm1, %xmm11
	vpshufb	%xmm19, %xmm2, %xmm12
	vpshufb	%xmm19, %xmm9, %xmm13
	vpshufb	%xmm19, %xmm10, %xmm9
	vmovdqu	64(%rax), %xmm1
	vmovdqu	80(%rax), %xmm10
	vpshufb	%xmm19, %xmm1, %xmm2
	vpshufb	%xmm19, %xmm10, %xmm1
	vpxor	%xmm11, %xmm15, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm11
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm14
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm15
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm10
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm15
	vpxor	%xmm11, %xmm15, %xmm11
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm15
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm12
	vpternlogq	$150, %xmm15, %xmm10, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm13, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm13, %xmm15
	vpclmulqdq	$1, %xmm6, %xmm13, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm13, %xmm13
	vpternlogq	$150, %xmm0, %xmm12, %xmm13
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm0
	vpternlogq	$150, %xmm10, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm10
	vpternlogq	$150, %xmm15, %xmm14, %xmm10
	vmovdqa	(%rsp), %xmm14
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm12
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpternlogq	$150, %xmm13, %xmm9, %xmm2
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm9
	vpternlogq	$150, %xmm11, %xmm0, %xmm9
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm0
	vpternlogq	$150, %xmm12, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm10
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpternlogq	$150, %xmm10, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm2
	vpshufd	$78, %xmm9, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm1
	vpshufd	$78, %xmm9, %xmm15
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	addq	$-96, %rcx
	addq	$96, %rax
	cmpq	$95, %rcx
	ja	.LBB0_22
.LBB0_23:
	vmovdqa64	%xmm16, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vmovdqa	96(%rsp), %xmm1
	vpshufb	%xmm19, %xmm1, %xmm3
	cmpq	$16, %rcx
	jb	.LBB0_24
	leaq	-16(%rcx), %rdx
	testb	$16, %dl
	jne	.LBB0_54
	vmovdqu	(%rax), %xmm1
	vpshufb	.LCPI0_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm4
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpbroadcastq	.LCPI0_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm6, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm15
	vpternlogq	$150, %xmm4, %xmm1, %xmm15
	addq	$16, %rax
	movq	%rdx, %rcx
.LBB0_54:
	cmpq	$16, %rdx
	jb	.LBB0_25
	vpbroadcastq	.LCPI0_0(%rip), %xmm1
	movq	%rcx, %rdx
	.p2align	4
.LBB0_56:
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm4
	vpshufb	%xmm19, %xmm2, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm5
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm6
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm2
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm2, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm2
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm6, %xmm2, %xmm2
	vpshufb	%xmm19, %xmm4, %xmm4
	vpternlogq	$150, %xmm5, %xmm2, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm6, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm15
	vpternlogq	$150, %xmm5, %xmm4, %xmm15
	addq	$-32, %rdx
	addq	$32, %rax
	cmpq	$15, %rdx
	ja	.LBB0_56
	jmp	.LBB0_25
.LBB0_24:
	movq	%rcx, %rdx
.LBB0_25:
	vaesenc	144(%rsp), %xmm0, %xmm0
	vpaddd	.LCPI0_5(%rip), %xmm3, %xmm31
	testq	%rdx, %rdx
	je	.LBB0_27
	movl	$-1, %ecx
	shlxl	%edx, %ecx, %ecx
	notl	%ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rax), %xmm1 {%k1} {z}
	vpshufb	.LCPI0_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpbroadcastq	.LCPI0_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm15
	vpternlogq	$150, %xmm3, %xmm1, %xmm15
.LBB0_27:
	vmovdqa	240(%rsp), %xmm12
	vmovdqa	224(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm7
	vaesenc	128(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 256(%rsp)
	vpshufb	%xmm19, %xmm31, %xmm20
	cmpq	$96, %r13
	jb	.LBB0_28
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovdqa	240(%rdi), %xmm0
	vmovdqa	%xmm0, 288(%rsp)
	movq	%r13, %rax
	.p2align	4
.LBB0_58:
	vpaddd	.LCPI0_5(%rip), %xmm31, %xmm0
	vpshufb	%xmm19, %xmm0, %xmm0
	vpaddd	.LCPI0_7(%rip), %xmm31, %xmm1
	vpshufb	%xmm19, %xmm1, %xmm1
	vpaddd	.LCPI0_8(%rip), %xmm31, %xmm2
	vpshufb	%xmm19, %xmm2, %xmm2
	vpaddd	.LCPI0_9(%rip), %xmm31, %xmm3
	vpshufb	%xmm19, %xmm3, %xmm3
	vpaddd	.LCPI0_10(%rip), %xmm31, %xmm4
	vpshufb	%xmm19, %xmm4, %xmm6
	vpxorq	%xmm29, %xmm20, %xmm5
	vpxorq	%xmm0, %xmm29, %xmm4
	vpxorq	%xmm1, %xmm29, %xmm13
	vpxorq	%xmm2, %xmm29, %xmm10
	vpxorq	%xmm3, %xmm29, %xmm9
	vpxorq	%xmm6, %xmm29, %xmm11
	vmovdqu	(%r9), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqu	16(%r9), %xmm2
	vmovdqa	%xmm2, 96(%rsp)
	vmovdqu	32(%r9), %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqu	48(%r9), %xmm6
	vmovdqa	%xmm6, 16(%rsp)
	vmovdqu64	64(%r9), %xmm20
	vmovdqu64	80(%r9), %xmm24
	vpshufb	%xmm19, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm3
	vpshufb	%xmm19, %xmm2, %xmm2
	vpshufb	%xmm19, %xmm1, %xmm1
	vpshufb	%xmm19, %xmm6, %xmm25
	#APP
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm11
	#NO_APP
	vmovaps	352(%rsp), %xmm8
	#APP
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm12
	#NO_APP
	vmovaps	%xmm12, 368(%rsp)
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	288(%rsp), %xmm12
	vmovaps	208(%rsp), %xmm14
	#APP
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm15
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm8
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm0
	#NO_APP
	vmovdqa64	%xmm0, %xmm22
	vmovdqa64	%xmm15, %xmm23
	vpxor	%xmm6, %xmm3, %xmm3
	vpxorq	%xmm7, %xmm8, %xmm17
	vmovaps	304(%rsp), %xmm2
	vmovaps	192(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm12
	#NO_APP
	vmovdqa64	%xmm8, %xmm28
	vmovdqa64	%xmm12, %xmm21
	vmovdqa64	%xmm0, %xmm18
	vmovaps	320(%rsp), %xmm7
	vmovaps	80(%rsp), %xmm12
	vmovdqa64	%xmm25, %xmm15
	#APP
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm7, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm15, %xmm14
	#NO_APP
	vmovdqa64	%xmm14, %xmm25
	vmovdqa64	%xmm29, %xmm30
	vmovdqa64	%xmm0, %xmm29
	vpternlogq	$150, %xmm6, %xmm3, %xmm1
	vpshufb	%xmm19, %xmm20, %xmm0
	vmovaps	336(%rsp), %xmm3
	vmovaps	112(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm15
	#NO_APP
	vmovdqa64	%xmm7, %xmm16
	vmovdqa64	%xmm15, %xmm27
	vmovdqa64	%xmm14, %xmm26
	vmovaps	144(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm11, %xmm11
	#NO_APP
	vpshufb	%xmm19, %xmm24, %xmm15
	vmovaps	(%rsp), %xmm12
	vmovaps	128(%rsp), %xmm14
	#APP
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm12, %xmm15, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm15, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm12, %xmm15, %xmm7
	#NO_APP
	vmovdqa	%xmm7, %xmm14
	vpternlogq	$150, %xmm6, %xmm1, %xmm0
	vpternlogq	$150, %xmm28, %xmm17, %xmm2
	vpternlogq	$150, %xmm16, %xmm2, %xmm3
	vmovdqa	48(%rsp), %xmm7
	vmovdqa	368(%rsp), %xmm1
	vpxor	160(%rsp), %xmm1, %xmm1
	vpternlogq	$150, %xmm23, %xmm22, %xmm1
	vpternlogq	$150, %xmm18, %xmm21, %xmm1
	vpternlogq	$150, %xmm29, %xmm25, %xmm1
	vmovdqa64	%xmm30, %xmm29
	vpternlogq	$150, %xmm26, %xmm27, %xmm1
	vpternlogq	$150, %xmm8, %xmm14, %xmm1
	vmovdqa	224(%rsp), %xmm14
	vmovdqa	240(%rsp), %xmm12
	vpshufd	$78, %xmm0, %xmm2
	vpbroadcastq	.LCPI0_0(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vpshufd	$78, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm15
	#APP
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm11, %xmm11
	#NO_APP
	vmovdqa	176(%rsp), %xmm6
	vaesenclast	%xmm6, %xmm5, %xmm0
	vpxor	64(%rsp), %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm4, %xmm1
	vpxor	96(%rsp), %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm13, %xmm2
	vpxor	32(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm10, %xmm3
	vpxor	16(%rsp), %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm9, %xmm4
	vpxorq	%xmm20, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm11, %xmm5
	vpxorq	%xmm24, %xmm5, %xmm5
	vmovdqu	%xmm0, (%r11)
	vmovdqu	%xmm1, 16(%r11)
	vmovdqu	%xmm2, 32(%r11)
	vmovdqu	%xmm3, 48(%r11)
	vmovdqu	%xmm4, 64(%r11)
	vmovdqu	%xmm5, 80(%r11)
	vpaddd	.LCPI0_6(%rip), %xmm31, %xmm31
	vpshufb	%xmm19, %xmm31, %xmm20
	addq	$96, %r9
	addq	$96, %r11
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB0_58
	jmp	.LBB0_59
.LBB0_28:
	movq	%r13, %rax
.LBB0_59:
	vmovdqa	256(%rsp), %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa64	%xmm0, %xmm18
	cmpq	$16, %rax
	jb	.LBB0_60
	vpbroadcastq	.LCPI0_0(%rip), %xmm1
	vmovd	.LCPI0_11(%rip), %xmm16
	vmovdqa	(%rsp), %xmm8
	vmovdqa	208(%rsp), %xmm9
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm0
	vmovdqa	128(%rsp), %xmm2
	vmovdqa	176(%rsp), %xmm13
	.p2align	4
.LBB0_65:
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm19, %xmm3, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vmovdqa64	%xmm5, %xmm17
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm7
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm4, %xmm5
	vmovdqa	48(%rsp), %xmm7
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm4
	vpshufd	$78, %xmm5, %xmm15
	vmovdqa64	%xmm17, %xmm5
	vpternlogq	$150, %xmm6, %xmm4, %xmm15
	vpxorq	%xmm29, %xmm20, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenclast	%xmm13, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vmovdqu	%xmm3, (%r11)
	vpshufb	%xmm19, %xmm20, %xmm3
	vpaddd	%xmm16, %xmm3, %xmm3
	vpshufb	%xmm19, %xmm3, %xmm20
	addq	$16, %r9
	addq	$16, %r11
	addq	$-16, %rax
	cmpq	$15, %rax
	ja	.LBB0_65
	jmp	.LBB0_61
.LBB0_60:
	vmovdqa	(%rsp), %xmm8
	vmovdqa	208(%rsp), %xmm9
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm13
.LBB0_61:
	vmovdqa64	%xmm18, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm0
	testq	%rax, %rax
	je	.LBB0_63
	movl	$-1, %ecx
	shlxl	%eax, %ecx, %eax
	notl	%eax
	kmovd	%eax, %k1
	vmovdqu8	(%r9), %xmm1 {%k1} {z}
	vpshufb	.LCPI0_2(%rip), %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm4
	vmovdqa64	%xmm0, %xmm16
	vmovdqa	%xmm5, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm2
	vpxor	%xmm5, %xmm2, %xmm2
	vpbroadcastq	.LCPI0_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm6, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm2
	vpshufd	$78, %xmm3, %xmm15
	vpternlogq	$150, %xmm4, %xmm2, %xmm15
	vpxorq	%xmm29, %xmm20, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vmovdqa64	%xmm16, %xmm0
	vaesenc	144(%rsp), %xmm2, %xmm2
	vaesenc	128(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm13, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqu8	%xmm1, (%r11) {%k1}
.LBB0_63:
	vmovq	%r12, %xmm1
	vmovq	%r13, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpbroadcastq	.LCPI0_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	.LCPI0_3(%rip), %xmm2, %xmm2
	vpshufb	.LCPI0_2(%rip), %xmm1, %xmm1
	vpxor	272(%rsp), %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB0_68:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB0_69:
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes128gcm_skylakex_decrypt, .Lfunc_end0-haberdashery_aes128gcm_skylakex_decrypt
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_0:
	.quad	-4467570830351532032
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_1:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_2:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
.LCPI1_3:
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
.LCPI1_4:
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
.LCPI1_5:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_6:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_7:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_8:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_9:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI1_10:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_11:
	.long	6
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_12:
	.long	1
	.section	.text.haberdashery_aes128gcm_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylakex_encrypt
	.p2align	4
	.type	haberdashery_aes128gcm_skylakex_encrypt,@function
haberdashery_aes128gcm_skylakex_encrypt:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB1_74
	testq	%rdx, %rdx
	setne	%r11b
	testq	%rsi, %rsi
	sete	%r10b
	testb	%r11b, %r10b
	jne	.LBB1_74
	testq	%r8, %r8
	setne	%r11b
	testq	%rcx, %rcx
	sete	%r10b
	testb	%r11b, %r10b
	jne	.LBB1_74
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$832, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	32(%rbp), %r11
	cmpq	16(%rbp), %r11
	jne	.LBB1_73
	movq	40(%rbp), %r13
	testq	%r13, %r13
	je	.LBB1_73
	cmpq	$16, 48(%rbp)
	jne	.LBB1_73
	movabsq	$2305843009213693824, %r10
	addq	$128, %r10
	cmpq	%r10, %r8
	setae	%bl
	movabsq	$68719476704, %r10
	cmpq	%r10, %r11
	seta	%r10b
	orb	%bl, %r10b
	jne	.LBB1_73
	movq	24(%rbp), %rbx
	testq	%r11, %r11
	je	.LBB1_8
	testq	%r9, %r9
	je	.LBB1_73
	testq	%rbx, %rbx
	je	.LBB1_73
.LBB1_8:
	testq	%rdx, %rdx
	movl	$1, %eax
	movq	%rsi, %r15
	cmoveq	%rax, %r15
	testq	%r8, %r8
	cmovneq	%rcx, %rax
	cmpq	$12, %rdx
	movq	%r8, 40(%rsp)
	movq	%rdi, 32(%rsp)
	jne	.LBB1_10
	vmovq	(%rsi), %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	vpblendd	$8, .LCPI1_4(%rip), %xmm0, %xmm0
	jmp	.LBB1_35
.LBB1_10:
	vmovdqa	176(%rdi), %xmm7
	movq	%rdx, %r14
	shrq	$7, %r14
	je	.LBB1_11
	vmovdqa	192(%rdi), %xmm0
	vmovdqa	208(%rdi), %xmm14
	vmovdqa	224(%rdi), %xmm5
	vmovdqa	240(%rdi), %xmm9
	vmovdqa	256(%rdi), %xmm10
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpbroadcastq	.LCPI1_0(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm2, %xmm3, %xmm15
	vpblendd	$12, %xmm0, %xmm7, %xmm1
	vpalignr	$8, %xmm7, %xmm0, %xmm2
	vpblendd	$12, %xmm5, %xmm14, %xmm3
	vmovdqa	%xmm5, %xmm6
	valignq	$1, %xmm14, %xmm5, %xmm20
	vpblendd	$12, %xmm10, %xmm9, %xmm5
	vmovdqa64	%xmm9, %xmm16
	vmovdqa64	%xmm10, %xmm17
	vpalignr	$8, %xmm9, %xmm10, %xmm9
	vmovdqu	(%r15), %ymm11
	vbroadcasti32x4	.LCPI1_2(%rip), %ymm23
	vpblendd	$12, %xmm15, %xmm4, %xmm10
	vpshufb	%ymm23, %ymm11, %ymm11
	vmovdqa	%ymm11, 320(%rsp)
	vmovdqu	32(%r15), %ymm12
	vmovdqa64	%xmm15, %xmm18
	vmovdqa64	%xmm4, %xmm19
	vpalignr	$8, %xmm4, %xmm15, %xmm11
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 352(%rsp)
	vmovdqu	64(%r15), %ymm12
	leaq	480(%rsp), %rdi
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 384(%rsp)
	vmovdqu	96(%r15), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 416(%rsp)
	leaq	320(%rsp), %r13
	#APP

	# r13 

	#NO_APP
	cmpq	$1, %r14
	je	.LBB1_20
	vmovdqu	128(%r15), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 480(%rsp)
	vmovdqu	160(%r15), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 512(%rsp)
	vmovdqu	192(%r15), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 544(%rsp)
	vmovdqu	224(%r15), %ymm12
	vpshufb	%ymm23, %ymm12, %ymm12
	vmovdqa	%ymm12, 576(%rsp)
	#APP

	# rdi 

	#NO_APP
.LBB1_20:
	vmovdqa	%xmm14, %xmm15
	vmovdqa	%xmm7, 16(%rsp)
	vpxor	%xmm2, %xmm1, %xmm1
	vpxorq	%xmm20, %xmm3, %xmm3
	vpxor	%xmm5, %xmm9, %xmm4
	vpxor	%xmm11, %xmm10, %xmm2
	vpxor	%xmm14, %xmm14, %xmm14
	cmpq	$384, %rdx
	movq	%r14, 80(%rsp)
	vmovdqa	%xmm3, 64(%rsp)
	vmovdqa	%xmm4, 48(%rsp)
	jb	.LBB1_21
	leaq	640(%rsp), %r12
	addq	$256, %rsi
	addq	$-2, %r14
	leaq	320(%rsp), %r11
	vmovdqa64	%xmm0, %xmm25
	vmovdqa64	16(%rsp), %xmm21
	vmovdqa64	%xmm15, %xmm20
	vmovdqa64	%xmm6, %xmm24
	vmovdqa64	%xmm16, %xmm26
	vmovdqa64	%xmm17, %xmm22
	vmovdqa64	%xmm18, %xmm27
	vmovdqa64	%xmm1, %xmm28
	vmovdqa64	%xmm2, %xmm29
.LBB1_25:
	vmovdqu	(%rsi), %ymm1
	vpshufb	%ymm23, %ymm1, %ymm1
	vmovdqu	%ymm1, (%r12)
	vmovdqu	32(%rsi), %ymm1
	vpshufb	%ymm23, %ymm1, %ymm1
	vmovdqu	%ymm1, 32(%r12)
	vmovdqu	64(%rsi), %ymm1
	vpshufb	%ymm23, %ymm1, %ymm1
	vmovdqu	%ymm1, 64(%r12)
	vmovdqu	96(%rsi), %ymm1
	vpshufb	%ymm23, %ymm1, %ymm1
	vmovdqu	%ymm1, 96(%r12)
	#APP

	# r12 

	#NO_APP
	movq	%r11, %r10
	vmovdqu	112(%r11), %xmm0
	vmovdqu	96(%r11), %xmm1
	vmovdqu	80(%r11), %xmm2
	vmovdqu	16(%r11), %xmm11
	vmovdqu	32(%r11), %xmm4
	vmovdqu	48(%r11), %xmm3
	vmovdqu	64(%r11), %xmm15
	vpxorq	24(%r11), %xmm11, %xmm30
	vmovdqa64	%xmm19, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm10
	vmovdqa64	%xmm22, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm4, %xmm7
	vmovdqa64	%xmm4, %xmm17
	vmovdqa64	%xmm8, %xmm16
	vmovdqa64	%xmm26, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm8
	vmovdqa64	%xmm3, %xmm31
	vpxor	%xmm7, %xmm10, %xmm10
	vmovdqa64	%xmm24, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm7
	vpternlogq	$150, %xmm8, %xmm7, %xmm10
	vmovdqa64	%xmm20, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm7
	vmovdqa64	%xmm25, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm8
	vmovdqa	%xmm1, %xmm3
	vpternlogq	$150, %xmm7, %xmm8, %xmm10
	vmovdqa64	%xmm21, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm7
	vpxor	(%r11), %xmm14, %xmm14
	vmovdqa64	%xmm27, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm7
	vmovdqa64	%xmm17, %xmm6
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa64	%xmm31, %xmm13
	vmovdqa64	%xmm26, %xmm8
	vpclmulqdq	$17, %xmm8, %xmm13, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm11
	vpternlogq	$150, %xmm8, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm3, %xmm11
	vmovdqa64	%xmm3, %xmm17
	vpternlogq	$150, %xmm8, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm8
	vmovdqa	%xmm0, %xmm12
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm11
	vpternlogq	$150, %xmm8, %xmm11, %xmm7
	vmovdqa64	%xmm29, %xmm11
	vmovdqa64	%xmm30, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	40(%r11), %xmm6, %xmm8
	vmovdqa	48(%rsp), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqa64	%xmm16, %xmm8
	vpxorq	56(%r11), %xmm31, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm5
	vpxor	72(%r11), %xmm15, %xmm3
	vmovdqa	64(%rsp), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm3
	vpternlogq	$150, %xmm5, %xmm3, %xmm4
	vpxor	88(%r11), %xmm2, %xmm2
	vpxorq	104(%r11), %xmm17, %xmm1
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm2
	vmovdqa64	%xmm28, %xmm0
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm4
	vpshufd	$238, %xmm14, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
	vpxor	120(%r11), %xmm12, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm10, %xmm1
	vpshufd	$78, %xmm10, %xmm2
	vpternlogq	$150, %xmm1, %xmm2, %xmm4
	vpternlogq	$150, %xmm10, %xmm7, %xmm4
	vpshufd	$78, %xmm4, %xmm14
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm1
	vpternlogq	$150, %xmm1, %xmm7, %xmm14
	subq	$-128, %rsi
	movq	%r12, %r8
	movq	%rdi, %r13
	movq	%rdi, %r11
	movq	%r12, %rdi
	movq	%r10, %r12
	decq	%r14
	jne	.LBB1_25
	jmp	.LBB1_22
.LBB1_11:
	vpxor	%xmm13, %xmm13, %xmm13
	movq	%rdx, %rsi
	jmp	.LBB1_12
.LBB1_21:
	movq	%rdi, %r8
	vmovdqa64	%xmm0, %xmm25
	vmovdqa64	16(%rsp), %xmm21
	vmovdqa64	%xmm15, %xmm20
	vmovdqa64	%xmm6, %xmm24
	vmovdqa64	%xmm16, %xmm26
	vmovdqa64	%xmm17, %xmm22
	vmovdqa64	%xmm18, %xmm27
	vmovdqa64	%xmm1, %xmm28
	vmovdqa64	%xmm2, %xmm29
.LBB1_22:
	vmovdqu	112(%r13), %xmm10
	vmovdqu	96(%r13), %xmm0
	vmovdqu	80(%r13), %xmm12
	vmovdqu	16(%r13), %xmm13
	vmovdqu	32(%r13), %xmm2
	vmovdqu	48(%r13), %xmm7
	vmovdqu	64(%r13), %xmm5
	vmovdqa64	%xmm19, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm4
	vmovdqa64	%xmm22, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm3
	vmovdqa64	%xmm2, %xmm22
	vmovdqa64	%xmm26, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm2
	vmovdqa64	%xmm7, %xmm26
	vmovdqa64	%xmm1, %xmm19
	vmovdqa64	%xmm24, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm1
	vmovdqa64	%xmm5, %xmm23
	vmovdqa64	%xmm24, %xmm30
	vpxor	%xmm4, %xmm3, %xmm15
	vmovdqa64	%xmm20, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm4
	vpternlogq	$150, %xmm2, %xmm1, %xmm15
	vmovdqa64	%xmm25, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm1
	vmovdqa64	%xmm21, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm2
	vpternlogq	$150, %xmm4, %xmm1, %xmm15
	vpxor	(%r13), %xmm14, %xmm4
	vmovdqa64	%xmm27, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm1
	vmovdqa64	%xmm27, %xmm14
	vpternlogq	$150, %xmm2, %xmm1, %xmm15
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm1
	vmovdqa64	%xmm13, %xmm24
	vmovdqa64	%xmm11, %xmm16
	vmovdqa64	%xmm22, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm2
	vmovdqa64	%xmm9, %xmm21
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa64	%xmm19, %xmm2
	vmovdqa64	%xmm26, %xmm13
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vmovdqa64	%xmm23, %xmm26
	vmovdqa64	%xmm30, %xmm9
	vmovdqa64	%xmm23, %xmm11
	vpclmulqdq	$17, %xmm9, %xmm11, %xmm11
	vpternlogq	$150, %xmm2, %xmm11, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm11
	vmovdqa64	%xmm25, %xmm23
	vpternlogq	$150, %xmm2, %xmm11, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm11
	vpternlogq	$150, %xmm2, %xmm11, %xmm1
	vpxorq	24(%r13), %xmm24, %xmm2
	vmovdqa64	%xmm29, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm2
	vpxorq	40(%r13), %xmm22, %xmm9
	vmovdqa	48(%rsp), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm9, %xmm9
	vpxor	%xmm2, %xmm9, %xmm2
	vpxor	56(%r13), %xmm13, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm5
	vpxorq	72(%r13), %xmm26, %xmm3
	vmovdqa	64(%rsp), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm3
	vpternlogq	$150, %xmm5, %xmm3, %xmm2
	vpxor	88(%r13), %xmm12, %xmm3
	vpxor	104(%r13), %xmm0, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm3
	vmovdqa64	%xmm28, %xmm11
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	vpxor	120(%r13), %xmm10, %xmm3
	vpshufd	$238, %xmm4, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm15, %xmm3
	vpshufd	$78, %xmm15, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpternlogq	$150, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm2
	vpternlogq	$150, %xmm2, %xmm1, %xmm13
	cmpq	$1, 80(%rsp)
	jne	.LBB1_26
	vmovdqa	%xmm6, %xmm7
	jmp	.LBB1_27
.LBB1_26:
	vmovdqa64	%xmm23, %xmm9
	vmovdqa64	%xmm19, %xmm5
	vmovdqa64	%xmm21, %xmm1
	vmovdqa64	%xmm16, %xmm0
	vmovdqu	16(%r8), %xmm3
	vmovdqu	32(%r8), %xmm7
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm2
	vmovdqa64	%xmm3, %xmm16
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm4
	vmovdqa64	%xmm7, %xmm21
	vpxor	%xmm2, %xmm4, %xmm2
	vmovdqu	96(%r8), %xmm4
	vmovdqa64	%xmm30, %xmm12
	vmovdqa64	%xmm19, %xmm15
	vmovdqa64	%xmm1, %xmm17
	vmovdqa64	%xmm27, %xmm3
	vmovdqa	%xmm0, %xmm6
	vmovdqa64	%xmm14, %xmm19
	vmovdqu	48(%r8), %xmm14
	vmovdqa64	%xmm11, %xmm22
	vmovdqu	64(%r8), %xmm11
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm11, %xmm7
	vpternlogq	$150, %xmm5, %xmm7, %xmm2
	vmovdqu	80(%r8), %xmm10
	vmovdqa64	%xmm20, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm7
	vmovdqa64	%xmm4, %xmm20
	vpternlogq	$150, %xmm5, %xmm7, %xmm2
	vmovdqu	112(%r8), %xmm0
	vpclmulqdq	$0, 16(%rsp), %xmm0, %xmm7
	vmovdqa64	%xmm0, %xmm23
	vpxor	(%r8), %xmm13, %xmm5
	vmovdqa	%xmm8, %xmm13
	vpclmulqdq	$0, %xmm3, %xmm5, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm2
	vmovdqa64	%xmm16, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm7
	vmovdqa64	%xmm21, %xmm0
	vmovdqa64	%xmm17, %xmm6
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm15, %xmm14, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm11, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm7
	vmovdqa64	%xmm20, %xmm12
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm6
	vmovdqa64	%xmm23, %xmm15
	vpclmulqdq	$17, 16(%rsp), %xmm15, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm5, %xmm8
	vpternlogq	$150, %xmm7, %xmm8, %xmm6
	vpxorq	40(%r8), %xmm21, %xmm3
	vmovdqa	48(%rsp), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	56(%r8), %xmm14, %xmm7
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm7
	vpxorq	24(%r8), %xmm16, %xmm1
	vmovdqa64	%xmm19, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm1, %xmm1
	vpxor	72(%r8), %xmm11, %xmm8
	vpxor	%xmm1, %xmm3, %xmm1
	vmovdqa	64(%rsp), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpternlogq	$150, %xmm7, %xmm3, %xmm1
	vmovdqa	16(%rsp), %xmm7
	vpxor	88(%r8), %xmm10, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm3
	vpxorq	104(%r8), %xmm20, %xmm4
	vmovdqa64	%xmm22, %xmm0
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	vpxorq	120(%r8), %xmm23, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm3
	vpshufd	$238, %xmm5, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	vpternlogq	$150, %xmm2, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm13
	vpternlogq	$150, %xmm2, %xmm6, %xmm13
.LBB1_27:
	movq	40(%rsp), %r8
	movq	40(%rbp), %r13
	movq	32(%rbp), %r11
	movq	32(%rsp), %rdi
	movabsq	$9223372036854775680, %r10
	andq	%rdx, %r10
	movl	%edx, %esi
	andl	$127, %esi
	addq	%r10, %r15
.LBB1_12:
	vmovdqa64	%xmm7, %xmm16
	cmpq	$96, %rsi
	jb	.LBB1_15
	vmovdqa	256(%rdi), %xmm1
	vmovdqa	192(%rdi), %xmm2
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm4
	vmovdqa	240(%rdi), %xmm5
	vmovdqa64	.LCPI1_2(%rip), %xmm17
	vpbroadcastq	.LCPI1_0(%rip), %xmm18
	vmovdqa64	%xmm16, %xmm6
	.p2align	4
.LBB1_14:
	vmovdqu	(%r15), %xmm8
	vmovdqu	16(%r15), %xmm9
	vmovdqu	32(%r15), %xmm10
	vmovdqu	48(%r15), %xmm11
	vpshufb	%xmm17, %xmm8, %xmm12
	vpshufb	%xmm17, %xmm9, %xmm14
	vpshufb	%xmm17, %xmm10, %xmm15
	vpshufb	%xmm17, %xmm11, %xmm10
	vmovdqu	64(%r15), %xmm8
	vmovdqu	80(%r15), %xmm11
	vpshufb	%xmm17, %xmm8, %xmm9
	vpshufb	%xmm17, %xmm11, %xmm8
	vpxor	%xmm12, %xmm13, %xmm11
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm12
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm13
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm11
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm12
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm14
	vpternlogq	$150, %xmm13, %xmm7, %xmm14
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm15
	vpternlogq	$150, %xmm0, %xmm14, %xmm15
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm0
	vpternlogq	$150, %xmm7, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm7
	vpternlogq	$150, %xmm13, %xmm12, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm11
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm11, %xmm15, %xmm10
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm11
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm12
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm13
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm9
	vpternlogq	$150, %xmm13, %xmm10, %xmm9
	vpclmulqdq	$0, %xmm6, %xmm8, %xmm10
	vpternlogq	$150, %xmm11, %xmm0, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm8, %xmm0
	vpternlogq	$150, %xmm12, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vmovdqa64	%xmm18, %xmm11
	vpclmulqdq	$16, %xmm11, %xmm10, %xmm7
	vpshufd	$78, %xmm10, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm9, %xmm7
	vpshufd	$78, %xmm9, %xmm13
	vpternlogq	$150, %xmm7, %xmm0, %xmm13
	addq	$-96, %rsi
	addq	$96, %r15
	cmpq	$95, %rsi
	ja	.LBB1_14
.LBB1_15:
	cmpq	$16, %rsi
	jb	.LBB1_16
	leaq	-16(%rsi), %r10
	testb	$16, %r10b
	jne	.LBB1_30
	vmovdqu	(%r15), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vmovdqa64	%xmm16, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm13
	vpternlogq	$150, %xmm3, %xmm1, %xmm13
	addq	$16, %r15
	movq	%r10, %rsi
.LBB1_30:
	cmpq	$16, %r10
	jb	.LBB1_17
	vmovdqa64	%xmm16, %xmm7
	vmovdqa	.LCPI1_2(%rip), %xmm1
	vpbroadcastq	.LCPI1_0(%rip), %xmm2
	movq	%rsi, %r10
.LBB1_32:
	vmovdqu	(%r15), %xmm0
	vmovdqu	16(%r15), %xmm3
	vpshufb	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm5
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm6, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm0
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm5, %xmm0, %xmm0
	vpshufb	%xmm1, %xmm3, %xmm3
	vpternlogq	$150, %xmm4, %xmm0, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm5, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm13
	vpternlogq	$150, %xmm4, %xmm3, %xmm13
	addq	$-32, %r10
	addq	$32, %r15
	cmpq	$15, %r10
	ja	.LBB1_32
	jmp	.LBB1_17
.LBB1_16:
	movq	%rsi, %r10
.LBB1_17:
	testq	%r10, %r10
	je	.LBB1_18
	movl	$-1, %esi
	shlxl	%r10d, %esi, %esi
	notl	%esi
	kmovd	%esi, %k1
	vmovdqu8	(%r15), %xmm0 {%k1} {z}
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vmovdqa64	%xmm16, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm0
	vpshufd	$78, %xmm1, %xmm13
	vpternlogq	$150, %xmm2, %xmm0, %xmm13
	jmp	.LBB1_34
.LBB1_18:
	vmovdqa64	%xmm16, %xmm5
.LBB1_34:
	vmovq	%rdx, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_3(%rip), %xmm1, %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
.LBB1_35:
	vmovdqa64	(%rdi), %xmm28
	vmovdqa	16(%rdi), %xmm1
	vmovdqa	%xmm1, 160(%rsp)
	vmovdqa	32(%rdi), %xmm2
	vmovdqa	%xmm2, 176(%rsp)
	vmovdqa	48(%rdi), %xmm3
	vmovdqa	%xmm3, 256(%rsp)
	vmovdqa	%xmm0, 224(%rsp)
	vpxorq	%xmm0, %xmm28, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	64(%rdi), %xmm2
	vmovdqa	%xmm2, 112(%rsp)
	vmovdqa	80(%rdi), %xmm3
	vmovaps	96(%rdi), %xmm4
	vmovaps	%xmm4, 240(%rsp)
	vmovaps	112(%rdi), %xmm4
	vmovaps	%xmm4, 128(%rsp)
	vmovdqa	128(%rdi), %xmm4
	vmovdqa	%xmm4, 192(%rsp)
	vmovaps	144(%rdi), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa	160(%rdi), %xmm1
	vmovdqa	%xmm1, 48(%rsp)
	vmovdqa	176(%rdi), %xmm15
	movq	%r8, %rdx
	shrq	$7, %rdx
	vmovdqa	%xmm3, 96(%rsp)
	je	.LBB1_36
	vmovdqa	%xmm0, 144(%rsp)
	vmovdqa	192(%rdi), %xmm6
	vmovdqa	208(%rdi), %xmm7
	vmovdqa	224(%rdi), %xmm8
	vmovdqa	240(%rdi), %xmm4
	vmovdqa	256(%rdi), %xmm9
	vpclmulqdq	$0, %xmm15, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm15, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm9, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm12
	vpternlogq	$150, %xmm1, %xmm2, %xmm12
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm11
	vpternlogq	$150, %xmm1, %xmm2, %xmm11
	vpblendd	$12, %xmm6, %xmm15, %xmm0
	vmovdqa64	%xmm6, %xmm22
	vpalignr	$8, %xmm15, %xmm6, %xmm1
	vmovdqa	%xmm4, %xmm6
	vpblendd	$12, %xmm8, %xmm7, %xmm3
	vmovdqa	%xmm7, %xmm4
	vmovdqa	%xmm8, %xmm14
	vpalignr	$8, %xmm7, %xmm8, %xmm7
	vpblendd	$12, %xmm9, %xmm6, %xmm8
	vmovdqa64	%xmm9, %xmm19
	vpalignr	$8, %xmm6, %xmm9, %xmm10
	vmovdqu	(%rax), %ymm9
	vbroadcasti32x4	.LCPI1_2(%rip), %ymm27
	vpblendd	$12, %xmm11, %xmm12, %xmm2
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 320(%rsp)
	vmovdqu	32(%rax), %ymm9
	vmovdqa64	%xmm11, %xmm20
	vmovdqa64	%xmm12, %xmm21
	vpalignr	$8, %xmm12, %xmm11, %xmm11
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 352(%rsp)
	vmovdqu	64(%rax), %ymm9
	leaq	480(%rsp), %r10
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 384(%rsp)
	vmovdqu	96(%rax), %ymm9
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 416(%rsp)
	leaq	320(%rsp), %r15
	#APP

	# r15 

	#NO_APP
	cmpq	$1, %rdx
	je	.LBB1_47
	vmovdqu	128(%rax), %ymm9
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 480(%rsp)
	vmovdqu	160(%rax), %ymm9
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 512(%rsp)
	vmovdqu	192(%rax), %ymm9
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 544(%rsp)
	vmovdqu	224(%rax), %ymm9
	vpshufb	%ymm27, %ymm9, %ymm9
	vmovdqa	%ymm9, 576(%rsp)
	#APP

	# r10 

	#NO_APP
.LBB1_47:
	vmovdqa	%xmm6, %xmm9
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm7, %xmm3, %xmm6
	vpxorq	%xmm10, %xmm8, %xmm31
	vpxorq	%xmm11, %xmm2, %xmm17
	vpxord	%xmm16, %xmm16, %xmm16
	cmpq	$384, %r8
	vmovdqa	%xmm15, 16(%rsp)
	vmovdqa	%xmm9, 80(%rsp)
	vmovdqa	%xmm0, 208(%rsp)
	jb	.LBB1_48
	leaq	640(%rsp), %r11
	addq	$256, %rcx
	leaq	-2(%rdx), %r14
	leaq	320(%rsp), %rdi
	vmovdqa64	%xmm22, %xmm29
	vmovdqa64	%xmm4, %xmm25
	vmovdqa64	%xmm14, %xmm26
	vmovdqa64	%xmm19, %xmm30
	.p2align	4
.LBB1_52:
	vmovdqu	(%rcx), %ymm0
	vpshufb	%ymm27, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11)
	vmovdqu	32(%rcx), %ymm0
	vpshufb	%ymm27, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%r11)
	vmovdqu	64(%rcx), %ymm0
	vpshufb	%ymm27, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%r11)
	vmovdqu	96(%rcx), %ymm0
	vpshufb	%ymm27, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%r11)
	#APP

	# r11 

	#NO_APP
	movq	%rdi, %r12
	vmovdqu	112(%rdi), %xmm0
	vmovdqu	96(%rdi), %xmm5
	vmovdqu	80(%rdi), %xmm1
	vmovdqu	16(%rdi), %xmm8
	vmovdqu	32(%rdi), %xmm12
	vmovdqu	48(%rdi), %xmm14
	vmovdqu	64(%rdi), %xmm15
	vpxorq	24(%rdi), %xmm8, %xmm22
	vmovdqa64	%xmm21, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm2
	vmovdqa64	%xmm30, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm7
	vmovdqa	80(%rsp), %xmm11
	vpclmulqdq	$0, %xmm11, %xmm14, %xmm9
	vpxor	%xmm2, %xmm7, %xmm7
	vmovdqa64	%xmm26, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm15, %xmm2
	vpternlogq	$150, %xmm9, %xmm2, %xmm7
	vmovdqa64	%xmm25, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm2
	vmovdqa64	%xmm1, %xmm18
	vmovdqa64	%xmm29, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm9
	vmovdqa64	%xmm5, %xmm24
	vpternlogq	$150, %xmm2, %xmm9, %xmm7
	vmovdqa64	%xmm6, %xmm19
	vmovdqa	16(%rsp), %xmm6
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm9
	vmovdqa64	%xmm0, %xmm23
	vpxorq	(%rdi), %xmm16, %xmm2
	vmovdqa64	%xmm20, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm5
	vpternlogq	$150, %xmm9, %xmm5, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm14, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm15, %xmm9
	vpternlogq	$150, %xmm8, %xmm9, %xmm5
	vmovdqa64	%xmm18, %xmm11
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm8
	vmovdqa64	%xmm24, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm9, %xmm5
	vmovdqa64	%xmm23, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm8
	vmovdqa64	%xmm19, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm9
	vpternlogq	$150, %xmm8, %xmm9, %xmm5
	vmovdqa64	%xmm17, %xmm9
	vmovdqa64	%xmm22, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm0
	vpxor	40(%rdi), %xmm12, %xmm3
	vmovdqa64	%xmm31, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	56(%rdi), %xmm14, %xmm3
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm3
	vpxor	72(%rdi), %xmm15, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm8
	vpternlogq	$150, %xmm3, %xmm8, %xmm0
	vpxorq	88(%rdi), %xmm18, %xmm3
	vpxorq	104(%rdi), %xmm24, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm3
	vmovdqa	208(%rsp), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm1
	vpternlogq	$150, %xmm3, %xmm1, %xmm0
	vpshufd	$238, %xmm2, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxorq	120(%rdi), %xmm23, %xmm2
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm1
	vpshufd	$78, %xmm7, %xmm2
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	vpternlogq	$150, %xmm7, %xmm5, %xmm0
	vpshufd	$78, %xmm0, %xmm16
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm5, %xmm16
	subq	$-128, %rcx
	movq	%r11, %rsi
	movq	%r10, %r15
	movq	%r10, %rdi
	movq	%r11, %r10
	movq	%r12, %r11
	decq	%r14
	jne	.LBB1_52
	jmp	.LBB1_49
.LBB1_36:
	vpxor	%xmm13, %xmm13, %xmm13
	movq	%r8, %rcx
	jmp	.LBB1_37
.LBB1_48:
	movq	%r10, %rsi
	vmovdqa64	%xmm22, %xmm29
	vmovdqa64	%xmm4, %xmm25
	vmovdqa64	%xmm14, %xmm26
	vmovdqa64	%xmm19, %xmm30
.LBB1_49:
	vmovdqu	112(%r15), %xmm4
	vmovdqu64	96(%r15), %xmm19
	vmovdqu	80(%r15), %xmm9
	vmovdqu	16(%r15), %xmm2
	vmovdqu	32(%r15), %xmm3
	vmovdqu	48(%r15), %xmm10
	vmovdqu	64(%r15), %xmm7
	vmovdqa64	%xmm21, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm0
	vmovdqa64	%xmm2, %xmm23
	vmovdqa64	%xmm30, %xmm8
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm2
	vmovdqa64	%xmm3, %xmm18
	vmovdqa	80(%rsp), %xmm14
	vpclmulqdq	$0, %xmm14, %xmm10, %xmm5
	vmovdqa64	%xmm10, %xmm22
	vmovdqa64	%xmm26, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm1
	vmovdqa64	%xmm7, %xmm21
	vpxor	%xmm0, %xmm2, %xmm15
	vmovdqa64	%xmm25, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm9, %xmm3
	vmovdqa	%xmm9, %xmm7
	vpternlogq	$150, %xmm5, %xmm1, %xmm15
	vmovdqa64	%xmm29, %xmm12
	vmovdqa64	%xmm19, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm1
	vmovdqa	16(%rsp), %xmm13
	vpclmulqdq	$0, %xmm13, %xmm4, %xmm2
	vpternlogq	$150, %xmm3, %xmm1, %xmm15
	vpxorq	(%r15), %xmm16, %xmm9
	vmovdqa64	%xmm20, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm15
	vmovdqa64	%xmm23, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm5, %xmm1
	vmovdqa64	%xmm11, %xmm19
	vmovdqa64	%xmm18, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm11, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa64	%xmm22, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm2
	vmovdqa64	%xmm26, %xmm8
	vmovdqa64	%xmm21, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm14, %xmm8
	vpternlogq	$150, %xmm2, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm2
	vmovdqa	%xmm7, %xmm14
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm8
	vpternlogq	$150, %xmm2, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm13, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm8
	vmovdqa64	%xmm20, %xmm10
	vpternlogq	$150, %xmm2, %xmm8, %xmm1
	vpxorq	24(%r15), %xmm23, %xmm2
	vmovdqa64	%xmm17, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm2
	vpxor	40(%r15), %xmm11, %xmm3
	vmovdqa64	%xmm31, %xmm11
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpxorq	56(%r15), %xmm22, %xmm3
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm3
	vpxorq	72(%r15), %xmm21, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm7
	vpternlogq	$150, %xmm3, %xmm7, %xmm2
	vpxor	88(%r15), %xmm14, %xmm3
	vpxor	104(%r15), %xmm0, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm3
	vmovdqa	208(%rsp), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm7
	vpternlogq	$150, %xmm3, %xmm7, %xmm2
	vpxor	120(%r15), %xmm4, %xmm3
	vpshufd	$238, %xmm9, %xmm7
	vpxor	%xmm7, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm0
	vpshufd	$78, %xmm15, %xmm3
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	vpternlogq	$150, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm0
	vpternlogq	$150, %xmm0, %xmm1, %xmm13
	cmpq	$1, %rdx
	jne	.LBB1_53
	movq	32(%rbp), %r11
	movq	32(%rsp), %rdi
	movq	40(%rsp), %r8
	vmovdqa	16(%rsp), %xmm15
	jmp	.LBB1_54
.LBB1_53:
	vmovdqa64	%xmm4, %xmm16
	vmovdqa64	%xmm25, %xmm4
	vmovdqa	%xmm6, %xmm0
	vmovdqa64	%xmm30, %xmm6
	vmovdqa64	%xmm19, %xmm1
	vmovdqa	%xmm8, %xmm7
	vmovdqa64	%xmm17, %xmm8
	vmovdqa64	%xmm26, %xmm9
	vmovdqu	16(%rsi), %xmm2
	vmovdqu	32(%rsi), %xmm5
	vmovdqa64	%xmm0, %xmm17
	vpclmulqdq	$0, %xmm1, %xmm2, %xmm0
	vmovdqa64	%xmm2, %xmm19
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm2
	vmovdqa64	%xmm5, %xmm20
	vpxor	%xmm0, %xmm2, %xmm11
	vmovdqu	96(%rsi), %xmm0
	vmovdqu	48(%rsi), %xmm14
	vmovdqu	64(%rsi), %xmm2
	vmovdqa	80(%rsp), %xmm15
	vpclmulqdq	$0, %xmm15, %xmm14, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm5
	vpternlogq	$150, %xmm3, %xmm5, %xmm11
	vmovdqa64	%xmm7, %xmm22
	vmovdqa64	%xmm8, %xmm21
	vmovdqu	80(%rsi), %xmm8
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm5, %xmm11
	vmovdqu	112(%rsi), %xmm7
	vmovdqa	16(%rsp), %xmm3
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm5
	vmovdqa64	%xmm3, %xmm18
	vpxor	(%rsi), %xmm13, %xmm3
	vmovdqa64	%xmm25, %xmm13
	vmovdqa64	%xmm26, %xmm6
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm9
	vpternlogq	$150, %xmm5, %xmm9, %xmm11
	vmovdqa64	%xmm19, %xmm9
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm5
	vmovdqa64	%xmm20, %xmm1
	vmovdqa64	%xmm30, %xmm4
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm14, %xmm5
	vpclmulqdq	$17, %xmm6, %xmm2, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm13, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vmovdqa64	%xmm18, %xmm15
	vpclmulqdq	$17, %xmm15, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vpxorq	40(%rsi), %xmm20, %xmm5
	vmovdqa64	%xmm31, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm5
	vpxor	56(%rsi), %xmm14, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm6
	vpxorq	24(%rsi), %xmm19, %xmm1
	vmovdqa64	%xmm21, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm1, %xmm1
	vpxor	72(%rsi), %xmm2, %xmm2
	vpxor	%xmm1, %xmm5, %xmm1
	vmovdqa64	%xmm17, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm2
	vpternlogq	$150, %xmm6, %xmm2, %xmm1
	vpxor	88(%rsi), %xmm8, %xmm2
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm2
	vpxor	104(%rsi), %xmm0, %xmm0
	vmovdqa64	%xmm22, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vpxor	120(%rsi), %xmm7, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm0
	vpshufd	$238, %xmm3, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vmovdqa64	%xmm16, %xmm3
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm0
	vpshufd	$78, %xmm11, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm0
	vpshufd	$78, %xmm1, %xmm13
	vpternlogq	$150, %xmm0, %xmm4, %xmm13
	movq	32(%rbp), %r11
	movq	32(%rsp), %rdi
	movq	40(%rsp), %r8
.LBB1_54:
	vmovdqa	96(%rsp), %xmm3
	movabsq	$2305843009213693824, %rdx
	vmovdqa	144(%rsp), %xmm0
	andq	%r8, %rdx
	movl	%r8d, %ecx
	andl	$127, %ecx
	addq	%rdx, %rax
.LBB1_37:
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa64	%xmm0, %xmm18
	vmovdqa64	.LCPI1_2(%rip), %xmm17
	cmpq	$96, %rcx
	jb	.LBB1_40
	vmovdqa	256(%rdi), %xmm3
	vmovdqa	192(%rdi), %xmm4
	vmovdqa	208(%rdi), %xmm5
	vmovdqa	224(%rdi), %xmm6
	vmovdqa	240(%rdi), %xmm7
	vpbroadcastq	.LCPI1_0(%rip), %xmm8
	.p2align	4
.LBB1_39:
	vmovdqu	(%rax), %xmm0
	vmovdqu	16(%rax), %xmm1
	vmovdqu	32(%rax), %xmm9
	vmovdqu	48(%rax), %xmm10
	vpshufb	%xmm17, %xmm0, %xmm11
	vpshufb	%xmm17, %xmm1, %xmm12
	vpshufb	%xmm17, %xmm9, %xmm14
	vpshufb	%xmm17, %xmm10, %xmm9
	vmovdqu	64(%rax), %xmm0
	vmovdqu	80(%rax), %xmm10
	vpshufb	%xmm17, %xmm0, %xmm1
	vpshufb	%xmm17, %xmm10, %xmm0
	vpxor	%xmm11, %xmm13, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm11
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm13
	vmovdqa64	%xmm15, %xmm16
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm15
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm10
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm15
	vpxor	%xmm11, %xmm15, %xmm11
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm15
	vpxor	%xmm13, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm15
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm12
	vpternlogq	$150, %xmm15, %xmm10, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm14, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm14, %xmm15
	vpclmulqdq	$1, %xmm6, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm14, %xmm14
	vpternlogq	$150, %xmm2, %xmm12, %xmm14
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm2
	vpternlogq	$150, %xmm10, %xmm11, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm10
	vpternlogq	$150, %xmm15, %xmm13, %xmm10
	vmovdqa64	%xmm16, %xmm15
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm14, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm13
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm1
	vpternlogq	$150, %xmm13, %xmm9, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm9
	vpternlogq	$150, %xmm11, %xmm2, %xmm9
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm2
	vpternlogq	$150, %xmm12, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm10
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpternlogq	$150, %xmm10, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm1
	vpshufd	$78, %xmm9, %xmm9
	vpternlogq	$150, %xmm1, %xmm0, %xmm9
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm0
	vpshufd	$78, %xmm9, %xmm13
	vpternlogq	$150, %xmm0, %xmm2, %xmm13
	addq	$-96, %rcx
	addq	$96, %rax
	cmpq	$95, %rcx
	ja	.LBB1_39
.LBB1_40:
	vmovdqa	240(%rsp), %xmm12
	vmovdqa64	%xmm18, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm2
	vmovdqa	224(%rsp), %xmm0
	vpshufb	%xmm17, %xmm0, %xmm3
	cmpq	$16, %rcx
	jb	.LBB1_41
	leaq	-16(%rcx), %rdx
	testb	$16, %dl
	jne	.LBB1_57
	vmovdqu	(%rax), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm6, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm0
	vpshufd	$78, %xmm1, %xmm13
	vpternlogq	$150, %xmm4, %xmm0, %xmm13
	addq	$16, %rax
	movq	%rdx, %rcx
.LBB1_57:
	vmovdqa	160(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm10
	cmpq	$16, %rdx
	vmovdqa	96(%rsp), %xmm11
	jb	.LBB1_42
	vpbroadcastq	.LCPI1_0(%rip), %xmm0
	movq	%rcx, %rdx
	.p2align	4
.LBB1_59:
	vmovdqu	(%rax), %xmm1
	vmovdqu	16(%rax), %xmm4
	vpshufb	%xmm17, %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm5
	vpclmulqdq	$17, %xmm15, %xmm1, %xmm6
	vpclmulqdq	$1, %xmm15, %xmm1, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm1
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm6, %xmm1, %xmm1
	vpshufb	%xmm17, %xmm4, %xmm4
	vpternlogq	$150, %xmm5, %xmm1, %xmm4
	vpclmulqdq	$0, %xmm15, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm15, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm6, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm13
	vpternlogq	$150, %xmm5, %xmm4, %xmm13
	addq	$-32, %rdx
	addq	$32, %rax
	cmpq	$15, %rdx
	ja	.LBB1_59
	jmp	.LBB1_42
.LBB1_41:
	movq	%rcx, %rdx
	vmovdqa	160(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	96(%rsp), %xmm11
.LBB1_42:
	vaesenc	128(%rsp), %xmm2, %xmm0
	vpaddd	.LCPI1_5(%rip), %xmm3, %xmm1
	testq	%rdx, %rdx
	je	.LBB1_44
	movl	$-1, %ecx
	shlxl	%edx, %ecx, %ecx
	notl	%ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rax), %xmm2 {%k1} {z}
	vpshufb	.LCPI1_2(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm13, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm2, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm2, %xmm5
	vpclmulqdq	$1, %xmm15, %xmm2, %xmm6
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm2
	vpxor	%xmm6, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm2
	vpshufd	$78, %xmm4, %xmm13
	vpternlogq	$150, %xmm5, %xmm2, %xmm13
.LBB1_44:
	vmovdqa	192(%rsp), %xmm2
	vaesenc	%xmm2, %xmm0, %xmm6
	vpshufb	%xmm17, %xmm1, %xmm4
	cmpq	$96, %r11
	jb	.LBB1_45
	vmovdqa	%xmm6, 272(%rsp)
	vmovdqa64	%xmm2, %xmm16
	vpaddd	.LCPI1_6(%rip), %xmm3, %xmm0
	vpshufb	%xmm17, %xmm0, %xmm2
	vpaddd	.LCPI1_7(%rip), %xmm3, %xmm0
	vpaddd	.LCPI1_8(%rip), %xmm3, %xmm1
	vpshufb	%xmm17, %xmm0, %xmm0
	vpshufb	%xmm17, %xmm1, %xmm1
	vpaddd	.LCPI1_9(%rip), %xmm3, %xmm5
	vpaddd	.LCPI1_10(%rip), %xmm3, %xmm6
	vpshufb	%xmm17, %xmm5, %xmm5
	vpshufb	%xmm17, %xmm6, %xmm9
	vpaddd	.LCPI1_11(%rip), %xmm3, %xmm3
	vpshufb	%xmm17, %xmm3, %xmm3
	vpxorq	%xmm4, %xmm28, %xmm8
	vpxorq	%xmm0, %xmm28, %xmm7
	vpxorq	%xmm1, %xmm28, %xmm6
	vpxorq	%xmm5, %xmm28, %xmm5
	vpxorq	%xmm9, %xmm28, %xmm4
	vpxorq	%xmm3, %xmm28, %xmm3
	#APP
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm3, %xmm3
	#NO_APP
	vmovaps	176(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovaps	256(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm3, %xmm3
	#NO_APP
	vmovaps	128(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovdqa64	%xmm16, %xmm0
	#APP
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovaps	64(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovdqa	48(%rsp), %xmm1
	vaesenclast	%xmm1, %xmm8, %xmm0
	vpxorq	(%r9), %xmm0, %xmm20
	vaesenclast	%xmm1, %xmm7, %xmm0
	vpxorq	16(%r9), %xmm0, %xmm22
	vaesenclast	%xmm1, %xmm6, %xmm0
	vpxorq	32(%r9), %xmm0, %xmm25
	vaesenclast	%xmm1, %xmm5, %xmm0
	vpxorq	48(%r9), %xmm0, %xmm27
	vaesenclast	%xmm1, %xmm4, %xmm0
	vpxorq	64(%r9), %xmm0, %xmm19
	vaesenclast	%xmm1, %xmm3, %xmm0
	vpxorq	80(%r9), %xmm0, %xmm18
	vmovdqu64	%xmm20, (%rbx)
	vmovdqu64	%xmm22, 16(%rbx)
	vmovdqu64	%xmm25, 32(%rbx)
	vmovdqu64	%xmm27, 48(%rbx)
	vmovdqu64	%xmm19, 64(%rbx)
	vmovdqu64	%xmm18, 80(%rbx)
	addq	$96, %r9
	addq	$96, %rbx
	leaq	-96(%r11), %rax
	cmpq	$192, %r11
	jb	.LBB1_64
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovdqa	240(%rdi), %xmm0
	vmovdqa	%xmm0, 288(%rsp)
	vmovdqa	%xmm15, 16(%rsp)
	.p2align	4
.LBB1_62:
	vpshufb	%xmm17, %xmm2, %xmm30
	vpaddd	.LCPI1_5(%rip), %xmm30, %xmm0
	vpshufb	%xmm17, %xmm0, %xmm0
	vpaddd	.LCPI1_7(%rip), %xmm30, %xmm1
	vpshufb	%xmm17, %xmm1, %xmm1
	vpaddd	.LCPI1_8(%rip), %xmm30, %xmm3
	vpshufb	%xmm17, %xmm3, %xmm5
	vpaddd	.LCPI1_9(%rip), %xmm30, %xmm3
	vpshufb	%xmm17, %xmm3, %xmm6
	vpaddd	.LCPI1_10(%rip), %xmm30, %xmm3
	vpshufb	%xmm17, %xmm3, %xmm7
	vpxorq	%xmm28, %xmm2, %xmm4
	vpxorq	%xmm0, %xmm28, %xmm3
	vpxorq	%xmm1, %xmm28, %xmm15
	vpxorq	%xmm5, %xmm28, %xmm10
	vpxorq	%xmm6, %xmm28, %xmm9
	vpxorq	%xmm7, %xmm28, %xmm8
	vpshufb	%xmm17, %xmm20, %xmm0
	vpxor	%xmm0, %xmm13, %xmm5
	vpshufb	%xmm17, %xmm22, %xmm0
	vpshufb	%xmm17, %xmm25, %xmm1
	vpshufb	%xmm17, %xmm27, %xmm16
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm15, %xmm15
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rsp), %xmm11
	vmovdqa64	%xmm28, %xmm29
	vmovdqa64	%xmm12, %xmm28
	vmovaps	176(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm13
	vpclmulqdq	$0, %xmm11, %xmm5, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm5, %xmm12
	#NO_APP
	vmovaps	%xmm13, 80(%rsp)
	vmovdqa64	%xmm12, %xmm25
	vmovaps	288(%rsp), %xmm13
	vmovaps	256(%rsp), %xmm14
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm15, %xmm15
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm5
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm11
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm2
	#NO_APP
	vmovdqa64	%xmm2, %xmm22
	vmovdqa64	%xmm12, %xmm27
	vpxor	%xmm6, %xmm5, %xmm5
	vpxorq	%xmm7, %xmm11, %xmm20
	vmovaps	304(%rsp), %xmm0
	vmovaps	112(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm11
	#NO_APP
	vmovdqa64	%xmm12, %xmm24
	vmovdqa64	%xmm11, %xmm21
	vmovdqa64	%xmm2, %xmm31
	vmovaps	144(%rsp), %xmm7
	vmovaps	96(%rsp), %xmm2
	vmovdqa64	%xmm16, %xmm13
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm11
	vpclmulqdq	$0, %xmm7, %xmm13, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm7, %xmm13, %xmm12
	#NO_APP
	vmovdqa64	%xmm12, %xmm26
	vmovdqa64	%xmm11, %xmm23
	vpternlogq	$150, %xmm6, %xmm5, %xmm0
	vpshufb	%xmm17, %xmm19, %xmm2
	vmovaps	224(%rsp), %xmm5
	vmovdqa64	%xmm28, %xmm13
	vmovdqa64	%xmm29, %xmm28
	#APP
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm11
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm6
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm12
	#NO_APP
	vmovdqa64	%xmm7, %xmm29
	vmovdqa64	%xmm12, %xmm16
	vmovdqa64	%xmm11, %xmm19
	vmovaps	128(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm17, %xmm18, %xmm14
	vmovaps	16(%rsp), %xmm13
	vmovdqa	192(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm7
	#NO_APP
	vmovdqa	160(%rsp), %xmm14
	vpternlogq	$150, %xmm6, %xmm0, %xmm2
	vmovdqa	48(%rsp), %xmm6
	vpternlogq	$150, %xmm24, %xmm20, %xmm1
	vpternlogq	$150, %xmm29, %xmm1, %xmm5
	vpxorq	80(%rsp), %xmm25, %xmm0
	vpternlogq	$150, %xmm27, %xmm22, %xmm0
	vpternlogq	$150, %xmm31, %xmm21, %xmm0
	vpternlogq	$150, %xmm23, %xmm26, %xmm0
	vpternlogq	$150, %xmm19, %xmm16, %xmm0
	vpternlogq	$150, %xmm12, %xmm7, %xmm0
	vmovdqa	240(%rsp), %xmm12
	vpshufd	$78, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_0(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	vpshufd	$78, %xmm0, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm5, %xmm13
	vmovaps	64(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm8, %xmm8
	#NO_APP
	vaesenclast	%xmm6, %xmm4, %xmm0
	vpxorq	(%r9), %xmm0, %xmm20
	vaesenclast	%xmm6, %xmm3, %xmm0
	vpxorq	16(%r9), %xmm0, %xmm22
	vaesenclast	%xmm6, %xmm15, %xmm0
	vpxorq	32(%r9), %xmm0, %xmm25
	vaesenclast	%xmm6, %xmm10, %xmm0
	vpxorq	48(%r9), %xmm0, %xmm27
	vaesenclast	%xmm6, %xmm9, %xmm0
	vpxorq	64(%r9), %xmm0, %xmm19
	vaesenclast	%xmm6, %xmm8, %xmm0
	vpxorq	80(%r9), %xmm0, %xmm18
	vpaddd	.LCPI1_11(%rip), %xmm30, %xmm0
	vpshufb	%xmm17, %xmm0, %xmm2
	vmovdqu64	%xmm20, (%rbx)
	vmovdqu64	%xmm22, 16(%rbx)
	vmovdqu64	%xmm25, 32(%rbx)
	vmovdqu64	%xmm27, 48(%rbx)
	vmovdqu64	%xmm19, 64(%rbx)
	vmovdqu64	%xmm18, 80(%rbx)
	addq	$96, %r9
	addq	$96, %rbx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB1_62
	vmovdqa	16(%rsp), %xmm15
.LBB1_64:
	vpshufb	%xmm17, %xmm20, %xmm4
	vpshufb	%xmm17, %xmm22, %xmm5
	vpshufb	%xmm17, %xmm25, %xmm6
	vpshufb	%xmm17, %xmm27, %xmm3
	vpshufb	%xmm17, %xmm19, %xmm1
	vpshufb	%xmm17, %xmm18, %xmm0
	vpxor	%xmm4, %xmm13, %xmm4
	vmovdqa	256(%rdi), %xmm7
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm8
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm4
	vmovdqa	192(%rdi), %xmm7
	vmovdqa	208(%rdi), %xmm11
	vmovdqa	224(%rdi), %xmm12
	vpxor	%xmm4, %xmm10, %xmm4
	vmovdqa	240(%rdi), %xmm10
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm13
	vpxor	%xmm8, %xmm13, %xmm8
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm13
	vpxor	%xmm9, %xmm13, %xmm9
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm5
	vpternlogq	$150, %xmm13, %xmm4, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm12, %xmm6, %xmm10
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm6
	vpternlogq	$150, %xmm13, %xmm5, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm5
	vpternlogq	$150, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm4
	vpternlogq	$150, %xmm10, %xmm9, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm3
	vpternlogq	$150, %xmm8, %xmm6, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpternlogq	$150, %xmm9, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm3
	vpternlogq	$150, %xmm6, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm5
	vpternlogq	$150, %xmm8, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpternlogq	$150, %xmm4, %xmm1, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm4, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm0
	vpshufd	$78, %xmm3, %xmm13
	vpternlogq	$150, %xmm0, %xmm5, %xmm13
	vmovdqa	%xmm2, %xmm4
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	96(%rsp), %xmm11
	vmovdqa	240(%rsp), %xmm12
	vmovdqa	272(%rsp), %xmm6
	jmp	.LBB1_65
.LBB1_45:
	movq	%r11, %rax
	vmovdqa	176(%rsp), %xmm8
.LBB1_65:
	vmovdqa64	%xmm12, %xmm19
	vmovdqa64	%xmm14, %xmm18
	vmovdqa64	%xmm11, %xmm22
	vmovdqa64	%xmm10, %xmm16
	vmovdqa	64(%rsp), %xmm5
	vaesenc	%xmm5, %xmm6, %xmm0
	vmovdqa64	%xmm0, %xmm21
	cmpq	$16, %rax
	vmovdqa	256(%rsp), %xmm9
	vmovdqa	48(%rsp), %xmm6
	jb	.LBB1_68
	vpbroadcastq	.LCPI1_0(%rip), %xmm2
	vmovd	.LCPI1_12(%rip), %xmm20
	vmovdqa	128(%rsp), %xmm1
	vmovdqa	192(%rsp), %xmm10
	vmovdqa64	%xmm16, %xmm11
	vmovdqa64	%xmm22, %xmm14
	vmovdqa64	%xmm18, %xmm12
	vmovdqa64	%xmm19, %xmm3
	.p2align	4
.LBB1_67:
	vpxorq	%xmm28, %xmm4, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm0, %xmm0
	vpxor	(%r9), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rbx)
	vpshufb	%xmm17, %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm5
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm6
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm0
	vpshufd	$78, %xmm5, %xmm13
	vmovdqa	64(%rsp), %xmm5
	vpternlogq	$150, %xmm6, %xmm0, %xmm13
	vmovdqa	48(%rsp), %xmm6
	vpshufb	%xmm17, %xmm4, %xmm0
	vpaddd	%xmm20, %xmm0, %xmm0
	vpshufb	%xmm17, %xmm0, %xmm4
	addq	$16, %r9
	addq	$16, %rbx
	addq	$-16, %rax
	cmpq	$15, %rax
	ja	.LBB1_67
.LBB1_68:
	vmovdqa64	%xmm21, %xmm0
	vaesenclast	%xmm6, %xmm0, %xmm1
	testq	%rax, %rax
	je	.LBB1_70
	movl	$-1, %ecx
	shlxl	%eax, %ecx, %eax
	notl	%eax
	kmovd	%eax, %k1
	vmovdqu8	(%r9), %xmm0 {%k1} {z}
	vpxorq	%xmm28, %xmm4, %xmm2
	vmovdqa64	%xmm18, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vmovdqa64	%xmm16, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vmovdqa64	%xmm22, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vmovdqa64	%xmm19, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	128(%rsp), %xmm2, %xmm2
	vaesenc	192(%rsp), %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rbx) {%k1}
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm0
	vpshufd	$78, %xmm2, %xmm13
	vpternlogq	$150, %xmm3, %xmm0, %xmm13
.LBB1_70:
	vmovq	%r8, %xmm0
	vmovq	%r11, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpshufb	.LCPI1_3(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqu	%xmm1, (%r13)
	movl	$1, %eax
.LBB1_73:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB1_74:
	vzeroupper
	retq
.Lfunc_end1:
	.size	haberdashery_aes128gcm_skylakex_encrypt, .Lfunc_end1-haberdashery_aes128gcm_skylakex_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
.LCPI2_1:
	.quad	1
	.quad	-4467570830351532032
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylakex_init
	.p2align	4
	.type	haberdashery_aes128gcm_skylakex_init,@function
haberdashery_aes128gcm_skylakex_init:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB2_3
	testq	%rsi, %rsi
	sete	%cl
	cmpq	$16, %rdx
	setne	%dl
	orb	%cl, %dl
	jne	.LBB2_3
	vmovdqu	(%rsi), %xmm0
	vaeskeygenassist	$1, %xmm0, %xmm1
	vpshufd	$255, %xmm1, %xmm2
	vpslldq	$4, %xmm0, %xmm3
	vpslldq	$8, %xmm0, %xmm4
	vpslldq	$12, %xmm0, %xmm1
	vpternlogq	$150, %xmm4, %xmm3, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vaeskeygenassist	$2, %xmm1, %xmm2
	vpshufd	$255, %xmm2, %xmm3
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm5
	vpslldq	$12, %xmm1, %xmm2
	vpternlogq	$150, %xmm5, %xmm4, %xmm2
	vpternlogq	$150, %xmm3, %xmm1, %xmm2
	vaeskeygenassist	$4, %xmm2, %xmm3
	vpshufd	$255, %xmm3, %xmm4
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm6
	vpslldq	$12, %xmm2, %xmm3
	vpternlogq	$150, %xmm6, %xmm5, %xmm3
	vpternlogq	$150, %xmm4, %xmm2, %xmm3
	vaeskeygenassist	$8, %xmm3, %xmm4
	vpshufd	$255, %xmm4, %xmm5
	vpslldq	$4, %xmm3, %xmm6
	vpslldq	$8, %xmm3, %xmm7
	vpslldq	$12, %xmm3, %xmm4
	vpternlogq	$150, %xmm7, %xmm6, %xmm4
	vpternlogq	$150, %xmm5, %xmm3, %xmm4
	vaeskeygenassist	$16, %xmm4, %xmm5
	vpshufd	$255, %xmm5, %xmm6
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm5
	vpternlogq	$150, %xmm8, %xmm7, %xmm5
	vpternlogq	$150, %xmm6, %xmm4, %xmm5
	vaeskeygenassist	$32, %xmm5, %xmm6
	vpshufd	$255, %xmm6, %xmm7
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm6
	vpternlogq	$150, %xmm9, %xmm8, %xmm6
	vpternlogq	$150, %xmm7, %xmm5, %xmm6
	vaeskeygenassist	$64, %xmm6, %xmm7
	vpshufd	$255, %xmm7, %xmm8
	vpslldq	$4, %xmm6, %xmm9
	vpslldq	$8, %xmm6, %xmm10
	vpslldq	$12, %xmm6, %xmm7
	vpternlogq	$150, %xmm10, %xmm9, %xmm7
	vpternlogq	$150, %xmm8, %xmm6, %xmm7
	vaeskeygenassist	$128, %xmm7, %xmm8
	vpshufd	$255, %xmm8, %xmm9
	vpslldq	$4, %xmm7, %xmm10
	vpslldq	$8, %xmm7, %xmm11
	vpslldq	$12, %xmm7, %xmm8
	vpternlogq	$150, %xmm11, %xmm10, %xmm8
	vpternlogq	$150, %xmm9, %xmm7, %xmm8
	vaeskeygenassist	$27, %xmm8, %xmm9
	vpshufd	$255, %xmm9, %xmm10
	vpslldq	$4, %xmm8, %xmm11
	vpslldq	$8, %xmm8, %xmm12
	vpslldq	$12, %xmm8, %xmm9
	vpternlogq	$150, %xmm12, %xmm11, %xmm9
	vpternlogq	$150, %xmm10, %xmm8, %xmm9
	vaeskeygenassist	$54, %xmm9, %xmm10
	vpshufd	$255, %xmm10, %xmm11
	vpslldq	$4, %xmm9, %xmm12
	vpslldq	$8, %xmm9, %xmm13
	vpslldq	$12, %xmm9, %xmm10
	vpternlogq	$150, %xmm13, %xmm12, %xmm10
	vpternlogq	$150, %xmm11, %xmm9, %xmm10
	vaesenc	%xmm1, %xmm0, %xmm11
	vmovapd	%xmm1, %xmm18
	vmovapd	%xmm0, %xmm17
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenclast	%xmm10, %xmm11, %xmm11
	vpshufb	.LCPI2_0(%rip), %xmm11, %xmm11
	vpsrlq	$63, %xmm11, %xmm12
	vpaddq	%xmm11, %xmm11, %xmm13
	vpslldq	$8, %xmm12, %xmm12
	vpor	%xmm12, %xmm13, %xmm12
	vpshufd	$255, %xmm11, %xmm11
	vpsrad	$31, %xmm11, %xmm11
	vpternlogq	$108, .LCPI2_1(%rip), %xmm12, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm13
	vpbroadcastq	.LCPI2_2(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm13, %xmm14
	vpshufd	$78, %xmm13, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm13, %xmm14
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm15
	vpshufd	$78, %xmm13, %xmm13
	vpternlogq	$150, %xmm14, %xmm15, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm13, %xmm14
	vpclmulqdq	$1, %xmm11, %xmm13, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm15
	vpshufd	$78, %xmm15, %xmm16
	vpclmulqdq	$16, %xmm12, %xmm15, %xmm15
	vpternlogq	$150, %xmm16, %xmm14, %xmm15
	vpclmulqdq	$16, %xmm12, %xmm15, %xmm0
	vpshufd	$78, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm15
	vpternlogq	$150, %xmm0, %xmm15, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpshufd	$78, %xmm0, %xmm15
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm16
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm15
	vpternlogq	$150, %xmm0, %xmm15, %xmm16
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm0
	vpshufd	$78, %xmm0, %xmm15
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm15
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	vmovapd	%xmm17, (%rdi)
	vmovapd	%xmm18, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm4, 64(%rdi)
	vmovdqa	%xmm5, 80(%rdi)
	vmovdqa	%xmm6, 96(%rdi)
	vmovdqa	%xmm7, 112(%rdi)
	vmovdqa	%xmm8, 128(%rdi)
	vmovdqa	%xmm9, 144(%rdi)
	vmovdqa	%xmm10, 160(%rdi)
	vpclmulqdq	$16, %xmm11, %xmm15, %xmm0
	vmovdqa	%xmm11, 176(%rdi)
	vmovdqa	%xmm13, 192(%rdi)
	vpclmulqdq	$1, %xmm11, %xmm15, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm15, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vmovdqa	%xmm14, 208(%rdi)
	vpclmulqdq	$17, %xmm11, %xmm15, %xmm2
	vmovdqa	%xmm15, 224(%rdi)
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vmovdqa	%xmm1, 240(%rdi)
	vmovdqa64	%xmm16, 256(%rdi)
	movl	$1, %eax
.LBB2_3:
	retq
.Lfunc_end2:
	.size	haberdashery_aes128gcm_skylakex_init, .Lfunc_end2-haberdashery_aes128gcm_skylakex_init
	.cfi_endproc

	.section	.text.haberdashery_aes128gcm_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylakex_is_supported
	.p2align	4
	.type	haberdashery_aes128gcm_skylakex_is_supported,@function
haberdashery_aes128gcm_skylakex_is_supported:
	.cfi_startproc
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	cmpl	$7, %eax
	jb	.LBB3_4
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	$1, %eax
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	notl	%edx
	notl	%ecx
	andl	$2128097795, %ecx
	andl	$117440512, %edx
	orl	%ecx, %edx
	jne	.LBB3_4
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xgetbv
	notl	%eax
	testb	$-26, %al
	jne	.LBB3_4
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	notl	%edi
	xorl	%esi, %esi
	testl	$-804323032, %edi
	sete	%sil
.LBB3_4:
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes128gcm_skylakex_is_supported, .Lfunc_end3-haberdashery_aes128gcm_skylakex_is_supported
	.cfi_endproc

	.type	HABERDASHERY_AES128GCM_SKYLAKEX_KEY_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_SKYLAKEX_KEY_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_SKYLAKEX_KEY_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_SKYLAKEX_KEY_SIZE:
	.asciz	"\020\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_SKYLAKEX_KEY_SIZE, 8

	.type	HABERDASHERY_AES128GCM_SKYLAKEX_NONCE_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_SKYLAKEX_NONCE_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_SKYLAKEX_NONCE_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_SKYLAKEX_NONCE_SIZE:
	.asciz	"\f\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_SKYLAKEX_NONCE_SIZE, 8

	.type	HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN,@object
	.section	.rodata.HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN:
	.asciz	"\020\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_ALIGN, 8

	.type	HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE:
	.asciz	"\020\001\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_SKYLAKEX_STRUCT_SIZE, 8

	.type	HABERDASHERY_AES128GCM_SKYLAKEX_TAG_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_SKYLAKEX_TAG_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_SKYLAKEX_TAG_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_SKYLAKEX_TAG_SIZE:
	.asciz	"\020\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_SKYLAKEX_TAG_SIZE, 8

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01)"
	.section	".note.GNU-stack","",@progbits

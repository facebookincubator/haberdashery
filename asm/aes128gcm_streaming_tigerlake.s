# @generated
# https://github.com/facebookincubator/haberdashery/
	.text
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_init_key,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_init_key
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_init_key,@function
haberdashery_aes128gcm_streaming_tigerlake_init_key:
	.cfi_startproc
	cmpq	$16, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm0
	vaeskeygenassist	$1, %xmm0, %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	vaeskeygenassist	$2, %xmm1, %xmm2
	vpslldq	$4, %xmm1, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm1, %xmm2
	vaeskeygenassist	$4, %xmm2, %xmm3
	vpslldq	$4, %xmm2, %xmm4
	vpslldq	$8, %xmm2, %xmm5
	vpslldq	$12, %xmm2, %xmm6
	vpternlogq	$150, %xmm5, %xmm4, %xmm6
	vpshufd	$255, %xmm3, %xmm3
	vpternlogq	$150, %xmm6, %xmm2, %xmm3
	vaeskeygenassist	$8, %xmm3, %xmm4
	vpslldq	$4, %xmm3, %xmm5
	vpslldq	$8, %xmm3, %xmm6
	vpslldq	$12, %xmm3, %xmm7
	vpternlogq	$150, %xmm6, %xmm5, %xmm7
	vpshufd	$255, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm3, %xmm4
	vaeskeygenassist	$16, %xmm4, %xmm5
	vpslldq	$4, %xmm4, %xmm6
	vpslldq	$8, %xmm4, %xmm7
	vpslldq	$12, %xmm4, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm5, %xmm5
	vpternlogq	$150, %xmm8, %xmm4, %xmm5
	vaeskeygenassist	$32, %xmm5, %xmm6
	vpslldq	$4, %xmm5, %xmm7
	vpslldq	$8, %xmm5, %xmm8
	vpslldq	$12, %xmm5, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufd	$255, %xmm6, %xmm6
	vpternlogq	$150, %xmm9, %xmm5, %xmm6
	vpslldq	$4, %xmm6, %xmm7
	vaeskeygenassist	$64, %xmm6, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpslldq	$12, %xmm6, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	vpshufd	$255, %xmm8, %xmm7
	vpternlogq	$150, %xmm10, %xmm6, %xmm7
	vpslldq	$4, %xmm7, %xmm8
	vpslldq	$8, %xmm7, %xmm9
	vaeskeygenassist	$128, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm9, %xmm8, %xmm11
	vpshufd	$255, %xmm10, %xmm8
	vpternlogq	$150, %xmm11, %xmm7, %xmm8
	vpslldq	$4, %xmm8, %xmm9
	vpslldq	$8, %xmm8, %xmm10
	vpslldq	$12, %xmm8, %xmm11
	vaeskeygenassist	$27, %xmm8, %xmm12
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufd	$255, %xmm12, %xmm9
	vpternlogq	$150, %xmm11, %xmm8, %xmm9
	vpslldq	$4, %xmm9, %xmm10
	vpslldq	$8, %xmm9, %xmm11
	vpslldq	$12, %xmm9, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vaeskeygenassist	$54, %xmm9, %xmm10
	vpshufd	$255, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm9, %xmm10
	vaesenc	%xmm1, %xmm0, %xmm11
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenclast	%xmm10, %xmm11, %xmm11
	vpshufb	.LCPI0_0(%rip), %xmm11, %xmm11
	vpsrlq	$63, %xmm11, %xmm12
	vpaddq	%xmm11, %xmm11, %xmm11
	vpshufd	$78, %xmm12, %xmm13
	vpxor	%xmm14, %xmm14, %xmm14
	vpblendd	$12, %xmm12, %xmm14, %xmm12
	vpsllq	$63, %xmm12, %xmm14
	vpternlogq	$30, %xmm13, %xmm11, %xmm14
	vpsllq	$62, %xmm12, %xmm13
	vpsllq	$57, %xmm12, %xmm11
	vpternlogq	$150, %xmm13, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm12
	vpbroadcastq	.LCPI0_1(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm12, %xmm14
	vpshufd	$78, %xmm12, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$16, %xmm13, %xmm12, %xmm14
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm15
	vpshufd	$78, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm15, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm12, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm12, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm12, %xmm16
	vpxorq	%xmm15, %xmm16, %xmm15
	vpslldq	$8, %xmm15, %xmm16
	vpxorq	%xmm16, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm16
	vpshufd	$78, %xmm14, %xmm14
	vpxorq	%xmm14, %xmm16, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm16
	vpclmulqdq	$17, %xmm11, %xmm12, %xmm17
	vpxorq	%xmm16, %xmm17, %xmm16
	vpsrldq	$8, %xmm15, %xmm15
	vpshufd	$78, %xmm14, %xmm14
	vpternlogq	$150, %xmm15, %xmm16, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm16
	vpshufd	$78, %xmm15, %xmm15
	vpxorq	%xmm15, %xmm16, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm16
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm17
	vpshufd	$78, %xmm15, %xmm15
	vpternlogq	$150, %xmm16, %xmm17, %xmm15
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm16
	vpclmulqdq	$16, %xmm13, %xmm16, %xmm17
	vpshufd	$78, %xmm16, %xmm16
	vpxorq	%xmm16, %xmm17, %xmm16
	vpclmulqdq	$16, %xmm13, %xmm16, %xmm17
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm18
	vpshufd	$78, %xmm16, %xmm16
	vpternlogq	$150, %xmm17, %xmm18, %xmm16
	vpclmulqdq	$0, %xmm11, %xmm16, %xmm17
	vpclmulqdq	$16, %xmm11, %xmm16, %xmm18
	vpclmulqdq	$1, %xmm11, %xmm16, %xmm19
	vpxorq	%xmm18, %xmm19, %xmm18
	vpslldq	$8, %xmm18, %xmm19
	vpxorq	%xmm19, %xmm17, %xmm17
	vpclmulqdq	$16, %xmm13, %xmm17, %xmm19
	vpshufd	$78, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm19, %xmm17
	vpclmulqdq	$16, %xmm13, %xmm17, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm16, %xmm19
	vpxorq	%xmm13, %xmm19, %xmm13
	vpsrldq	$8, %xmm18, %xmm18
	vpshufd	$78, %xmm17, %xmm17
	vpternlogq	$150, %xmm18, %xmm13, %xmm17
	vmovdqa	%xmm0, (%rdi)
	vmovdqa	%xmm1, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm4, 64(%rdi)
	vmovdqa	%xmm5, 80(%rdi)
	vmovdqa	%xmm6, 96(%rdi)
	vmovdqa	%xmm7, 112(%rdi)
	vmovdqa	%xmm8, 128(%rdi)
	vmovdqa	%xmm9, 144(%rdi)
	vmovdqa	%xmm10, 160(%rdi)
	vmovdqa	%xmm11, 176(%rdi)
	vmovdqa	%xmm12, 192(%rdi)
	vmovdqa	%xmm14, 208(%rdi)
	vmovdqa64	%xmm16, 224(%rdi)
	vmovdqa64	%xmm17, 240(%rdi)
	vmovdqa	%xmm15, 256(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$16, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes128gcm_streaming_tigerlake_init_key, .Lfunc_end0-haberdashery_aes128gcm_streaming_tigerlake_init_key
	.cfi_endproc

	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_is_supported,@function
haberdashery_aes128gcm_streaming_tigerlake_is_supported:
	.cfi_startproc
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %edi
	movl	%edx, %r8d
	notl	%r8d
	notl	%edi
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	andl	$1993871875, %edi
	andl	$125829120, %r8d
	orl	%edi, %r8d
	jne	.LBB1_3
	notl	%r9d
	andl	$-240189143, %r9d
	notl	%ecx
	andl	$415260490, %ecx
	orl	%r9d, %ecx
	jne	.LBB1_3
	shrl	$8, %edx
	andl	$1, %edx
	movl	%edx, %esi
.LBB1_3:
	movl	%esi, %eax
	retq
.Lfunc_end1:
	.size	haberdashery_aes128gcm_streaming_tigerlake_is_supported, .Lfunc_end1-haberdashery_aes128gcm_streaming_tigerlake_is_supported
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.byte	15
	.byte	128
	.byte	128
	.byte	128
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
	.long	1
	.long	0
	.long	0
	.long	0
	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_init_state,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_init_state
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_init_state,@function
haberdashery_aes128gcm_streaming_tigerlake_init_state:
	.cfi_startproc
	cmpq	$12, %rcx
	jne	.LBB2_2
	vmovd	(%rdx), %xmm0
	vpinsrd	$1, 4(%rdx), %xmm0, %xmm0
	vpinsrd	$2, 8(%rdx), %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI2_1(%rip), %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vmovups	%ymm2, -56(%rsp)
	vmovups	%ymm2, -88(%rsp)
	movq	$0, -24(%rsp)
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, (%rdi)
	vmovdqa	%xmm0, 16(%rdi)
	vmovdqa	%xmm1, 32(%rdi)
	vmovups	-56(%rsp), %ymm0
	vmovups	-40(%rsp), %xmm1
	movq	-24(%rsp), %rax
	movq	-16(%rsp), %rdx
	vmovups	%ymm0, 48(%rdi)
	vmovups	%xmm1, 64(%rdi)
	movq	%rax, 80(%rdi)
	movq	%rdx, 88(%rdi)
	vmovaps	%xmm2, 96(%rdi)
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$12, %rcx
	sete	%al
	vzeroupper
	retq
.Lfunc_end2:
	.size	haberdashery_aes128gcm_streaming_tigerlake_init_state, .Lfunc_end2-haberdashery_aes128gcm_streaming_tigerlake_init_state
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_1:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_aad_update,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_aad_update
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_aad_update,@function
haberdashery_aes128gcm_streaming_tigerlake_aad_update:
	.cfi_startproc
	movabsq	$-2305843009213693951, %rax
	leaq	(%rcx,%rax), %r8
	incq	%rax
	cmpq	%rax, %r8
	jae	.LBB3_3
	xorl	%eax, %eax
	retq
.LBB3_3:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	96(%rdi), %rbx
	addq	%rcx, %rbx
	xorl	%eax, %eax
	movabsq	$2305843009213693950, %r8
	cmpq	%r8, %rbx
	ja	.LBB3_25
	cmpq	$0, 104(%rdi)
	jne	.LBB3_25
	movq	80(%rdi), %r8
	testq	%r8, %r8
	je	.LBB3_6
	leaq	(%r8,%rcx), %r14
	cmpq	$15, %r14
	ja	.LBB3_9
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%r8), %rax
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rcx, %r12
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r15, %rdi
	movq	%r12, %rcx
	vmovdqa	64(%r15), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%r15)
	movq	%r14, 80(%r15)
	jmp	.LBB3_24
.LBB3_6:
	movq	%rcx, %r14
	cmpq	$96, %r14
	jae	.LBB3_11
	jmp	.LBB3_14
.LBB3_9:
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	movl	$16, %eax
	subq	%r8, %rax
	addq	%rsp, %r8
	leaq	(%rdx,%rax), %r15
	movq	%rcx, %r14
	subq	%rax, %r14
	movq	%rdi, %r12
	movq	%r8, %rdi
	movq	%rsi, %r13
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rbp
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	%rbp, %rcx
	vmovdqa	(%rsp), %xmm0
	vmovdqa	176(%r13), %xmm1
	movq	$0, 80(%r12)
	vpshufb	.LCPI3_0(%rip), %xmm0, %xmm0
	vpxor	(%r12), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI3_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqa	%xmm1, (%r12)
	movq	%r15, %rdx
	cmpq	$96, %r14
	jb	.LBB3_14
.LBB3_11:
	vmovdqa	(%rdi), %xmm8
	vmovdqa	176(%rsi), %xmm0
	vmovdqa	192(%rsi), %xmm1
	vmovdqa	208(%rsi), %xmm2
	vmovdqa	224(%rsi), %xmm3
	vmovdqa	240(%rsi), %xmm4
	vmovdqa	256(%rsi), %xmm5
	vmovdqa	.LCPI3_0(%rip), %xmm6
	vpbroadcastq	.LCPI3_1(%rip), %xmm7
	.p2align	4, 0x90
.LBB3_12:
	vmovdqu	(%rdx), %xmm9
	vmovdqu	16(%rdx), %xmm10
	vmovdqu	32(%rdx), %xmm11
	vmovdqu	48(%rdx), %xmm12
	vmovdqu	64(%rdx), %xmm13
	vmovdqu	80(%rdx), %xmm14
	addq	$96, %rdx
	addq	$-96, %r14
	vpshufb	%xmm6, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufb	%xmm6, %xmm10, %xmm9
	vpshufb	%xmm6, %xmm11, %xmm10
	vpshufb	%xmm6, %xmm12, %xmm11
	vpshufb	%xmm6, %xmm13, %xmm12
	vpshufb	%xmm6, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm14
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm16
	vpxorq	%xmm15, %xmm16, %xmm15
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm16
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm17
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm18
	vpternlogq	$150, %xmm17, %xmm15, %xmm18
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm15
	vpternlogq	$150, %xmm14, %xmm16, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm16
	vpternlogq	$150, %xmm14, %xmm18, %xmm16
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpternlogq	$150, %xmm13, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm14
	vpternlogq	$150, %xmm13, %xmm16, %xmm14
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm13
	vpternlogq	$150, %xmm12, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm15
	vpternlogq	$150, %xmm12, %xmm14, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpternlogq	$150, %xmm10, %xmm11, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm12
	vpternlogq	$150, %xmm11, %xmm15, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm8
	vpslldq	$8, %xmm12, %xmm11
	vpternlogq	$150, %xmm10, %xmm13, %xmm11
	vpsrldq	$8, %xmm12, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm11, %xmm12
	vpshufd	$78, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm11, %xmm12
	vpternlogq	$150, %xmm8, %xmm9, %xmm12
	vpshufd	$78, %xmm11, %xmm8
	vpternlogq	$150, %xmm10, %xmm12, %xmm8
	cmpq	$95, %r14
	ja	.LBB3_12
	vmovdqa	%xmm8, (%rdi)
.LBB3_14:
	cmpq	$16, %r14
	jae	.LBB3_15
	testq	%r14, %r14
	je	.LBB3_24
.LBB3_23:
	movl	$-1, %eax
	bzhil	%r14d, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rdx), %xmm0 {%k1} {z}
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, 48(%rdi)
	vmovdqa	%xmm0, 64(%rdi)
	movq	%r14, 80(%rdi)
.LBB3_24:
	movq	%rbx, 96(%rdi)
	movq	%rcx, %rax
.LBB3_25:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.LBB3_15:
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovdqa	(%rdi), %xmm1
	vmovdqa	176(%rsi), %xmm0
	leaq	-16(%r14), %rax
	testb	$16, %al
	jne	.LBB3_17
	vmovdqu	(%rdx), %xmm2
	addq	$16, %rdx
	vpshufb	.LCPI3_0(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI3_1(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	movq	%rax, %r14
.LBB3_17:
	cmpq	$16, %rax
	jb	.LBB3_21
	vmovdqa	.LCPI3_0(%rip), %xmm2
	vpbroadcastq	.LCPI3_1(%rip), %xmm3
	.p2align	4, 0x90
.LBB3_19:
	vmovdqu	(%rdx), %xmm4
	vmovdqu	16(%rdx), %xmm5
	vpshufb	%xmm2, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufd	$78, %xmm4, %xmm1
	addq	$32, %rdx
	addq	$-32, %r14
	vpshufb	%xmm2, %xmm5, %xmm4
	vpternlogq	$150, %xmm1, %xmm7, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	cmpq	$15, %r14
	ja	.LBB3_19
	movq	%r14, %rax
.LBB3_21:
	vmovdqa	%xmm1, (%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	jne	.LBB3_23
	jmp	.LBB3_24
.Lfunc_end3:
	.size	haberdashery_aes128gcm_streaming_tigerlake_aad_update, .Lfunc_end3-haberdashery_aes128gcm_streaming_tigerlake_aad_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_0:
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
.LCPI4_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI4_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI4_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI4_5:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI4_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI4_7:
	.long	6
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_1:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI4_8:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_encrypt_update,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_encrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_encrypt_update,@function
haberdashery_aes128gcm_streaming_tigerlake_encrypt_update:
	.cfi_startproc
	cmpq	%r9, %rcx
	jne	.LBB4_3
	movq	%rcx, %rax
	movabsq	$-68719476704, %rcx
	leaq	(%rax,%rcx), %r9
	incq	%rcx
	cmpq	%rcx, %r9
	jb	.LBB4_3
	movq	104(%rdi), %rcx
	leaq	(%rcx,%rax), %r11
	movq	%r11, %r9
	shrq	$5, %r9
	cmpq	$2147483646, %r9
	jbe	.LBB4_6
.LBB4_3:
	xorl	%eax, %eax
	retq
.LBB4_6:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testq	%rcx, %rcx
	setne	%r9b
	movq	80(%rdi), %rcx
	testq	%rcx, %rcx
	sete	%r10b
	orb	%r9b, %r10b
	je	.LBB4_10
	testq	%rcx, %rcx
	je	.LBB4_11
	movq	%r11, 16(%rsp)
	movq	%rdi, %rbp
	leaq	(%rcx,%rax), %r13
	cmpq	$15, %r13
	ja	.LBB4_12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r14
	movq	memcpy@GOTPCREL(%rip), %r12
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rax, %rbx
	movq	%r8, %r15
	callq	*%r12
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%rbp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rbp)
	vmovdqa	%xmm0, (%rsp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r12
	movq	%rbp, %rdi
	movq	%rbx, %rax
	movq	16(%rsp), %r11
	jmp	.LBB4_24
.LBB4_10:
	vmovdqa	176(%rsi), %xmm0
	vmovdqa	64(%rdi), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm1, %xmm1
	vpxor	(%rdi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI4_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqa	%xmm1, (%rdi)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB4_11:
	movq	%rax, %r13
	cmpq	$96, %r13
	jb	.LBB4_14
.LBB4_16:
	leaq	96(%rdx), %r9
	leaq	96(%r8), %rcx
	vmovdqu64	(%rdx), %xmm21
	vmovdqu	16(%rdx), %xmm4
	vmovdqu	32(%rdx), %xmm5
	vmovdqu64	48(%rdx), %xmm19
	vmovdqu64	64(%rdx), %xmm20
	vmovdqu64	80(%rdx), %xmm17
	addq	$-96, %r13
	vmovdqa	32(%rdi), %xmm1
	vmovdqa	.LCPI4_0(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm8
	vpaddd	.LCPI4_2(%rip), %xmm1, %xmm9
	vpshufb	%xmm0, %xmm9, %xmm10
	vpaddd	.LCPI4_3(%rip), %xmm1, %xmm9
	vpshufb	%xmm0, %xmm9, %xmm11
	vpaddd	.LCPI4_4(%rip), %xmm1, %xmm9
	vpshufb	%xmm0, %xmm9, %xmm12
	vpaddd	.LCPI4_5(%rip), %xmm1, %xmm9
	vpshufb	%xmm0, %xmm9, %xmm14
	vpaddd	.LCPI4_6(%rip), %xmm1, %xmm9
	vpaddd	.LCPI4_7(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rdi)
	vmovdqa	(%rsi), %xmm1
	vmovaps	16(%rsi), %xmm16
	vmovaps	32(%rsi), %xmm2
	vpshufb	%xmm0, %xmm9, %xmm15
	vmovdqa64	48(%rsi), %xmm18
	vpxor	%xmm1, %xmm8, %xmm9
	vpxor	%xmm1, %xmm10, %xmm10
	vpxor	%xmm1, %xmm11, %xmm11
	vpxor	%xmm1, %xmm12, %xmm13
	vpxor	%xmm1, %xmm14, %xmm14
	vpxor	%xmm1, %xmm15, %xmm8
	vmovaps	%xmm16, %xmm15
	#APP
	vaesenc	%xmm15, %xmm9, %xmm9
	vaesenc	%xmm15, %xmm10, %xmm10
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm14, %xmm14
	vaesenc	%xmm15, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm2, 144(%rsp)
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovdqa64	%xmm18, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	64(%rsi), %xmm12
	vmovaps	%xmm12, 128(%rsp)
	#APP
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rsi), %xmm12
	vmovaps	%xmm12, 112(%rsp)
	#APP
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%rsi), %xmm12
	vmovaps	%xmm12, 96(%rsp)
	#APP
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm8, %xmm8
	#NO_APP
	vmovapd	112(%rsi), %xmm12
	vmovapd	%xmm12, %xmm18
	#APP
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm8, %xmm8
	#NO_APP
	vmovdqa	128(%rsi), %xmm12
	vmovdqa64	%xmm12, %xmm23
	#APP
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm8, %xmm8
	#NO_APP
	vmovdqa	144(%rsi), %xmm12
	vmovdqa	%xmm12, %xmm6
	#APP
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%rsi), %xmm12
	vmovaps	%xmm12, %xmm24
	#APP
	vaesenclast	%xmm12, %xmm9, %xmm9
	vaesenclast	%xmm12, %xmm10, %xmm10
	vaesenclast	%xmm12, %xmm11, %xmm11
	vaesenclast	%xmm12, %xmm13, %xmm13
	vaesenclast	%xmm12, %xmm14, %xmm14
	vaesenclast	%xmm12, %xmm8, %xmm8
	#NO_APP
	vpxorq	%xmm21, %xmm9, %xmm12
	vpxorq	%xmm4, %xmm10, %xmm25
	vpxorq	%xmm5, %xmm11, %xmm26
	vpxorq	%xmm19, %xmm13, %xmm27
	vpxorq	%xmm20, %xmm14, %xmm28
	vmovdqu	%xmm12, (%r8)
	vmovdqu64	%xmm25, 16(%r8)
	vmovdqu64	%xmm26, 32(%r8)
	vmovdqu64	%xmm27, 48(%r8)
	vmovdqu64	%xmm28, 64(%r8)
	vpxorq	%xmm17, %xmm8, %xmm5
	vmovdqu	%xmm5, 80(%r8)
	vmovdqa64	(%rdi), %xmm16
	cmpq	$96, %r13
	jb	.LBB4_19
	vmovaps	176(%rsi), %xmm4
	vmovaps	%xmm4, 16(%rsp)
	vmovaps	192(%rsi), %xmm4
	vmovaps	%xmm4, 80(%rsp)
	vmovaps	208(%rsi), %xmm4
	vmovaps	%xmm4, 64(%rsp)
	vmovaps	224(%rsi), %xmm4
	vmovaps	%xmm4, 48(%rsp)
	vmovaps	240(%rsi), %xmm4
	vmovaps	%xmm4, 32(%rsp)
	vmovdqa	256(%rsi), %xmm4
	vmovdqa	%xmm4, 160(%rsp)
	vmovaps	%xmm15, %xmm30
	vmovaps	144(%rsp), %xmm31
	vmovdqa64	%xmm2, %xmm21
	vmovaps	128(%rsp), %xmm22
	vmovdqa64	112(%rsp), %xmm17
	vmovdqa64	96(%rsp), %xmm20
	vmovdqa64	%xmm6, %xmm19
	.p2align	4, 0x90
.LBB4_18:
	vmovdqa64	32(%rdi), %xmm29
	vpshufb	%xmm0, %xmm29, %xmm6
	vpaddd	.LCPI4_2(%rip), %xmm29, %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpaddd	.LCPI4_3(%rip), %xmm29, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm9
	vpaddd	.LCPI4_4(%rip), %xmm29, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm11
	vpaddd	.LCPI4_5(%rip), %xmm29, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm13
	vpaddd	.LCPI4_6(%rip), %xmm29, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm14
	vpshufb	%xmm0, %xmm5, %xmm15
	vpxor	%xmm6, %xmm1, %xmm10
	vpxor	%xmm7, %xmm1, %xmm8
	vpxor	%xmm1, %xmm9, %xmm9
	vpxor	%xmm1, %xmm11, %xmm6
	vpxor	%xmm1, %xmm13, %xmm7
	vpxor	%xmm1, %xmm14, %xmm5
	vmovaps	%xmm30, %xmm2
	#APP
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm13, %xmm13, %xmm13
	vpxor	%xmm14, %xmm14, %xmm14
	vpxor	%xmm11, %xmm11, %xmm11
	vmovaps	16(%rsp), %xmm3
	vmovaps	%xmm31, %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm0, %xmm28, %xmm2
	vmovdqa64	%xmm21, %xmm4
	vmovaps	80(%rsp), %xmm3
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm0, %xmm27, %xmm2
	vmovaps	%xmm22, %xmm4
	vmovaps	64(%rsp), %xmm3
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm0, %xmm26, %xmm2
	vmovdqa64	%xmm17, %xmm4
	vmovaps	48(%rsp), %xmm3
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm0, %xmm25, %xmm2
	vmovaps	32(%rsp), %xmm3
	vmovdqa64	%xmm20, %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm0, %xmm12, %xmm2
	vpxorq	%xmm2, %xmm16, %xmm2
	vmovapd	%xmm18, %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm5, %xmm5
	#NO_APP
	vmovdqa	160(%rsp), %xmm3
	vmovdqa64	%xmm23, %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm12
	vpxor	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm14, %xmm3, %xmm2
	vpxor	%xmm2, %xmm13, %xmm2
	vpunpckhqdq	%xmm3, %xmm14, %xmm12
	vpxorq	%xmm12, %xmm11, %xmm16
	vmovdqu	(%r9), %xmm11
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm24, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm10, %xmm10
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm9, %xmm9
	vaesenclast	%xmm3, %xmm6, %xmm6
	vaesenclast	%xmm3, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm11, %xmm10, %xmm12
	vmovdqu	16(%r9), %xmm10
	vmovdqu	32(%r9), %xmm11
	vpxorq	%xmm10, %xmm8, %xmm25
	vpxorq	%xmm11, %xmm9, %xmm26
	vmovdqu	48(%r9), %xmm8
	vmovdqu	64(%r9), %xmm9
	vpxorq	%xmm8, %xmm6, %xmm27
	vpxorq	%xmm9, %xmm7, %xmm28
	vmovdqu	80(%r9), %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpbroadcastq	.LCPI4_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm6, %xmm2, %xmm16
	vpaddd	.LCPI4_7(%rip), %xmm29, %xmm2
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqu	%xmm12, (%rcx)
	vmovdqu64	%xmm25, 16(%rcx)
	vmovdqu64	%xmm26, 32(%rcx)
	vmovdqu64	%xmm27, 48(%rcx)
	vmovdqu64	%xmm28, 64(%rcx)
	addq	$96, %r9
	vmovdqu	%xmm5, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %r13
	cmpq	$95, %r13
	ja	.LBB4_18
.LBB4_19:
	vpshufb	%xmm0, %xmm12, %xmm1
	vpxorq	%xmm1, %xmm16, %xmm1
	vpshufb	%xmm0, %xmm25, %xmm2
	vpshufb	%xmm0, %xmm26, %xmm3
	vpshufb	%xmm0, %xmm27, %xmm4
	vpshufb	%xmm0, %xmm28, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm0
	vmovdqa	176(%rsi), %xmm5
	vmovdqa	192(%rsi), %xmm7
	vmovdqa	208(%rsi), %xmm8
	vmovdqa	224(%rsi), %xmm9
	vmovdqa	240(%rsi), %xmm10
	vmovdqa	256(%rsi), %xmm11
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm12
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm13
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm14
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm15
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm7
	vpternlogq	$150, %xmm12, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm12
	vpternlogq	$150, %xmm5, %xmm15, %xmm12
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpternlogq	$150, %xmm0, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm6
	vpternlogq	$150, %xmm5, %xmm12, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm10, %xmm5
	vpternlogq	$150, %xmm0, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm10, %xmm7
	vpternlogq	$150, %xmm0, %xmm6, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm10, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm4
	vpternlogq	$150, %xmm3, %xmm7, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpslldq	$8, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm5, %xmm3
	vpsrldq	$8, %xmm4, %xmm2
	vpbroadcastq	.LCPI4_1(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$78, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	vmovdqa	%xmm0, (%rdi)
	movq	%rcx, %r8
	movq	%r9, %rdx
	cmpq	$16, %r13
	jae	.LBB4_20
.LBB4_15:
	testq	%r13, %r13
	jne	.LBB4_23
	jmp	.LBB4_25
.LBB4_12:
	movl	$16, %ebx
	subq	%rcx, %rbx
	leaq	(%rdx,%rbx), %rdi
	movq	%rdi, 64(%rsp)
	leaq	(%r8,%rbx), %rdi
	movq	%rdi, 48(%rsp)
	movq	%rax, %r13
	subq	%rbx, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r14
	movq	%r14, %rdi
	movq	%rsi, 80(%rsp)
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%rax, %r12
	movq	%r8, %r15
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	(%rsp), %xmm0
	vxorps	64(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	%xmm0, 64(%rbp)
	vmovaps	%xmm0, (%rsp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r12, %rax
	vmovdqa	176(%rsi), %xmm0
	movq	$0, 80(%rbp)
	vmovdqa	32(%rsp), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm1, %xmm1
	vpxor	(%rbp), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI4_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqa	%xmm1, (%rbp)
	movq	48(%rsp), %r8
	movq	64(%rsp), %rdx
	movq	16(%rsp), %r11
	cmpq	$96, %r13
	jae	.LBB4_16
.LBB4_14:
	cmpq	$16, %r13
	jb	.LBB4_15
.LBB4_20:
	vmovdqa	(%rdi), %xmm10
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	(%rsi), %xmm1
	vmovdqa	16(%rsi), %xmm2
	vmovdqa	32(%rsi), %xmm3
	vmovdqa	48(%rsi), %xmm4
	vmovdqa	64(%rsi), %xmm5
	vmovdqa	80(%rsi), %xmm6
	vmovdqa	96(%rsi), %xmm7
	vmovdqa	112(%rsi), %xmm8
	vmovdqa	128(%rsi), %xmm9
	vmovdqa	144(%rsi), %xmm11
	vmovdqa	160(%rsi), %xmm12
	vmovdqa	176(%rsi), %xmm13
	vmovdqa	.LCPI4_0(%rip), %xmm14
	vpmovsxbq	.LCPI4_8(%rip), %xmm15
	vpbroadcastq	.LCPI4_1(%rip), %xmm16
	.p2align	4, 0x90
.LBB4_21:
	vpshufb	%xmm14, %xmm0, %xmm17
	vpxorq	%xmm17, %xmm1, %xmm17
	vaesenc	%xmm2, %xmm17, %xmm17
	vaesenc	%xmm3, %xmm17, %xmm17
	vaesenc	%xmm4, %xmm17, %xmm17
	vaesenc	%xmm5, %xmm17, %xmm17
	vaesenc	%xmm6, %xmm17, %xmm17
	vaesenc	%xmm7, %xmm17, %xmm17
	vaesenc	%xmm8, %xmm17, %xmm17
	vaesenc	%xmm9, %xmm17, %xmm17
	vaesenc	%xmm11, %xmm17, %xmm17
	vaesenclast	%xmm12, %xmm17, %xmm17
	vpxorq	(%rdx), %xmm17, %xmm17
	addq	$16, %rdx
	vmovdqu64	%xmm17, (%r8)
	addq	$16, %r8
	addq	$-16, %r13
	vpaddd	%xmm0, %xmm15, %xmm0
	vpshufb	%xmm14, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm13, %xmm17
	vpclmulqdq	$1, %xmm10, %xmm13, %xmm18
	vpclmulqdq	$16, %xmm10, %xmm13, %xmm19
	vpxorq	%xmm18, %xmm19, %xmm18
	vpclmulqdq	$17, %xmm10, %xmm13, %xmm10
	vpslldq	$8, %xmm18, %xmm19
	vpxorq	%xmm19, %xmm17, %xmm17
	vpsrldq	$8, %xmm18, %xmm18
	vpclmulqdq	$16, %xmm16, %xmm17, %xmm19
	vpshufd	$78, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm19, %xmm17
	vpclmulqdq	$16, %xmm16, %xmm17, %xmm19
	vpxorq	%xmm10, %xmm19, %xmm19
	vpshufd	$78, %xmm17, %xmm10
	vpternlogq	$150, %xmm18, %xmm19, %xmm10
	cmpq	$15, %r13
	ja	.LBB4_21
	vmovdqa	%xmm0, 32(%rdi)
	vmovdqa	%xmm10, (%rdi)
	testq	%r13, %r13
	je	.LBB4_25
.LBB4_23:
	movl	$-1, %ecx
	bzhil	%r13d, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdx), %xmm0 {%k1} {z}
	vmovdqa	32(%rdi), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm1, %xmm2
	vpaddd	.LCPI4_2(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rdi)
	vpxor	(%rsi), %xmm2, %xmm1
	vaesenc	16(%rsi), %xmm1, %xmm1
	vaesenc	32(%rsi), %xmm1, %xmm1
	vaesenc	48(%rsi), %xmm1, %xmm1
	vaesenc	64(%rsi), %xmm1, %xmm1
	vaesenc	80(%rsi), %xmm1, %xmm1
	vaesenc	96(%rsi), %xmm1, %xmm1
	vaesenc	112(%rsi), %xmm1, %xmm1
	vaesenc	128(%rsi), %xmm1, %xmm1
	vaesenc	144(%rsi), %xmm1, %xmm1
	vaesenclast	160(%rsi), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu8	%xmm0, (%r8) {%k1}
	vmovdqa	%xmm1, 48(%rdi)
	vmovdqa	%xmm0, 64(%rdi)
.LBB4_24:
	movq	%r13, 80(%rdi)
.LBB4_25:
	movq	%r11, 104(%rdi)
	addq	$184, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	vzeroupper
	retq
.Lfunc_end4:
	.size	haberdashery_aes128gcm_streaming_tigerlake_encrypt_update, .Lfunc_end4-haberdashery_aes128gcm_streaming_tigerlake_encrypt_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_1:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_encrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_encrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_encrypt_finalize,@function
haberdashery_aes128gcm_streaming_tigerlake_encrypt_finalize:
	.cfi_startproc
	movq	%rcx, %rax
	movq	80(%rdi), %r8
	movq	104(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB5_1
	testq	%r8, %r8
	je	.LBB5_4
	movl	$-1, %r9d
	bzhil	%r8d, %r9d, %r8d
	kmovd	%r8d, %k1
	vmovdqu8	64(%rdi), %xmm0 {%k1} {z}
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vmovdqa	176(%rsi), %xmm1
	jmp	.LBB5_6
.LBB5_1:
	vmovdqa	(%rdi), %xmm0
	testq	%r8, %r8
	je	.LBB5_8
	vmovdqa	176(%rsi), %xmm1
	vmovdqa	64(%rdi), %xmm2
	vpshufb	.LCPI5_0(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
.LBB5_6:
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI5_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	jmp	.LBB5_7
.LBB5_4:
	vmovdqa	(%rdi), %xmm0
.LBB5_7:
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB5_8:
	vmovdqa	176(%rsi), %xmm1
	vmovq	96(%rdi), %xmm2
	vmovq	%rcx, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpsllq	$3, %xmm2, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI5_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vmovdqa	%xmm0, (%rdi)
	testq	%rax, %rax
	je	.LBB5_9
	vmovdqa	(%rsi), %xmm1
	vpxor	16(%rdi), %xmm1, %xmm1
	vaesenc	16(%rsi), %xmm1, %xmm1
	vaesenc	32(%rsi), %xmm1, %xmm1
	vaesenc	48(%rsi), %xmm1, %xmm1
	vaesenc	64(%rsi), %xmm1, %xmm1
	vaesenc	80(%rsi), %xmm1, %xmm1
	vaesenc	96(%rsi), %xmm1, %xmm1
	vaesenc	112(%rsi), %xmm1, %xmm1
	vaesenc	128(%rsi), %xmm1, %xmm1
	vaesenc	144(%rsi), %xmm1, %xmm1
	vaesenclast	160(%rsi), %xmm1, %xmm1
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	cmpq	$16, %rax
	jae	.LBB5_11
	movl	$-1, %ecx
	bzhil	%eax, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	%xmm0, (%rdx) {%k1}
	vzeroupper
	retq
.LBB5_9:
	xorl	%eax, %eax
	vzeroupper
	retq
.LBB5_11:
	vmovdqu	%xmm0, (%rdx)
	movl	$16, %eax
	vzeroupper
	retq
.Lfunc_end5:
	.size	haberdashery_aes128gcm_streaming_tigerlake_encrypt_finalize, .Lfunc_end5-haberdashery_aes128gcm_streaming_tigerlake_encrypt_finalize
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_0:
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
.LCPI6_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI6_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI6_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI6_5:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI6_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI6_7:
	.long	6
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI6_1:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI6_8:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_decrypt_update,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_decrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_decrypt_update,@function
haberdashery_aes128gcm_streaming_tigerlake_decrypt_update:
	.cfi_startproc
	cmpq	%r9, %rcx
	jne	.LBB6_2
	movq	%rcx, %rax
	movabsq	$-68719476704, %rcx
	leaq	(%rax,%rcx), %r9
	incq	%rcx
	cmpq	%rcx, %r9
	jae	.LBB6_3
.LBB6_2:
	xorl	%eax, %eax
	retq
.LBB6_3:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	104(%rdi), %rcx
	leaq	(%rcx,%rax), %r12
	movq	%r12, %r9
	shrq	$5, %r9
	cmpq	$2147483646, %r9
	jbe	.LBB6_5
	xorl	%eax, %eax
	jmp	.LBB6_24
.LBB6_5:
	testq	%rcx, %rcx
	setne	%r9b
	movq	80(%rdi), %rcx
	testq	%rcx, %rcx
	sete	%r10b
	orb	%r9b, %r10b
	je	.LBB6_9
	testq	%rcx, %rcx
	je	.LBB6_10
	movq	%rdi, %rbp
	leaq	(%rcx,%rax), %r13
	cmpq	$15, %r13
	ja	.LBB6_11
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r14
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rax, %rbx
	movq	%r8, %r15
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%rbp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rbp)
	vmovdqa	%xmm0, (%rsp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	%rbp, %rdi
	movq	%rbx, %rax
	jmp	.LBB6_22
.LBB6_9:
	vmovdqa	176(%rsi), %xmm0
	vmovdqa	64(%rdi), %xmm1
	vpshufb	.LCPI6_0(%rip), %xmm1, %xmm1
	vpxor	(%rdi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI6_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqa	%xmm1, (%rdi)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB6_10:
	movq	%rax, %r13
	cmpq	$96, %r13
	jb	.LBB6_13
.LBB6_15:
	vmovdqa64	(%rdi), %xmm24
	vmovdqa	(%rsi), %xmm0
	vmovaps	16(%rsi), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovaps	32(%rsi), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	48(%rsi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovaps	64(%rsi), %xmm1
	vmovaps	%xmm1, 32(%rsp)
	vmovaps	80(%rsi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	96(%rsi), %xmm1
	vmovaps	%xmm1, 144(%rsp)
	vmovaps	112(%rsi), %xmm1
	vmovaps	%xmm1, 128(%rsp)
	vmovaps	128(%rsi), %xmm1
	vmovaps	%xmm1, 112(%rsp)
	vmovaps	144(%rsi), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	160(%rsi), %xmm22
	vmovapd	176(%rsi), %xmm18
	vmovdqa64	192(%rsi), %xmm19
	vmovaps	208(%rsi), %xmm20
	vmovdqa64	224(%rsi), %xmm21
	vmovdqa	240(%rsi), %xmm15
	vmovdqa	256(%rsi), %xmm1
	vmovdqa64	.LCPI6_0(%rip), %xmm16
	vpxord	%xmm23, %xmm23, %xmm23
	vpbroadcastq	.LCPI6_1(%rip), %xmm25
	.p2align	4, 0x90
.LBB6_16:
	vmovdqu64	(%rdx), %xmm27
	vmovdqu64	16(%rdx), %xmm28
	vmovdqu64	32(%rdx), %xmm29
	vmovdqu64	48(%rdx), %xmm30
	vmovdqu64	64(%rdx), %xmm31
	vmovdqu64	80(%rdx), %xmm17
	vmovdqa64	32(%rdi), %xmm26
	vpshufb	%xmm16, %xmm26, %xmm2
	vpaddd	.LCPI6_2(%rip), %xmm26, %xmm3
	vpshufb	%xmm16, %xmm3, %xmm3
	vpaddd	.LCPI6_3(%rip), %xmm26, %xmm4
	vpshufb	%xmm16, %xmm4, %xmm4
	vpaddd	.LCPI6_4(%rip), %xmm26, %xmm5
	vpshufb	%xmm16, %xmm5, %xmm5
	vpaddd	.LCPI6_5(%rip), %xmm26, %xmm6
	vpshufb	%xmm16, %xmm6, %xmm6
	vpaddd	.LCPI6_6(%rip), %xmm26, %xmm7
	vpshufb	%xmm16, %xmm7, %xmm7
	vpshufb	%xmm16, %xmm17, %xmm11
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm0, %xmm3
	vpxor	%xmm4, %xmm0, %xmm4
	vpxor	%xmm5, %xmm0, %xmm5
	vpxor	%xmm6, %xmm0, %xmm6
	vpxor	%xmm7, %xmm0, %xmm7
	vmovaps	80(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vxorps	%xmm9, %xmm9, %xmm9
	vxorps	%xmm10, %xmm10, %xmm10
	vxorps	%xmm8, %xmm8, %xmm8
	vmovaps	64(%rsp), %xmm13
	vmovapd	%xmm18, %xmm14
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm31, %xmm11
	vmovaps	48(%rsp), %xmm13
	vmovdqa64	%xmm19, %xmm14
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm30, %xmm11
	vmovaps	32(%rsp), %xmm13
	vmovaps	%xmm20, %xmm14
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm29, %xmm11
	vmovaps	16(%rsp), %xmm13
	vmovdqa64	%xmm21, %xmm14
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm28, %xmm11
	vmovaps	144(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm15, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm15, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm15, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm27, %xmm11
	vpxorq	%xmm11, %xmm24, %xmm11
	vmovaps	128(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovdqa	112(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpunpcklqdq	%xmm10, %xmm23, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpunpckhqdq	%xmm23, %xmm10, %xmm10
	vpxorq	%xmm10, %xmm8, %xmm24
	vmovaps	96(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm22, %xmm8
	#APP
	vaesenclast	%xmm8, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm4, %xmm4
	vaesenclast	%xmm8, %xmm5, %xmm5
	vaesenclast	%xmm8, %xmm6, %xmm6
	vaesenclast	%xmm8, %xmm7, %xmm7
	#NO_APP
	vpxorq	%xmm27, %xmm2, %xmm2
	vpxorq	%xmm28, %xmm3, %xmm3
	vpxorq	%xmm29, %xmm4, %xmm4
	vpxorq	%xmm30, %xmm5, %xmm5
	vpxorq	%xmm31, %xmm6, %xmm6
	vpxorq	%xmm17, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm25, %xmm9, %xmm8
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm25, %xmm8, %xmm9
	vpshufd	$78, %xmm8, %xmm8
	vpternlogq	$150, %xmm9, %xmm8, %xmm24
	vpaddd	.LCPI6_7(%rip), %xmm26, %xmm8
	vmovdqa	%xmm8, 32(%rdi)
	vmovdqu	%xmm2, (%r8)
	vmovdqu	%xmm3, 16(%r8)
	vmovdqu	%xmm4, 32(%r8)
	vmovdqu	%xmm5, 48(%r8)
	vmovdqu	%xmm6, 64(%r8)
	vmovdqu	%xmm7, 80(%r8)
	addq	$96, %rdx
	addq	$96, %r8
	addq	$-96, %r13
	cmpq	$95, %r13
	ja	.LBB6_16
	vmovdqa64	%xmm24, (%rdi)
	cmpq	$16, %r13
	jae	.LBB6_18
.LBB6_14:
	testq	%r13, %r13
	jne	.LBB6_21
	jmp	.LBB6_23
.LBB6_11:
	movl	$16, %ebx
	subq	%rcx, %rbx
	leaq	(%rdx,%rbx), %rdi
	movq	%rdi, 48(%rsp)
	leaq	(%r8,%rbx), %rdi
	movq	%rdi, 32(%rsp)
	movq	%rax, %r13
	subq	%rbx, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r14
	movq	%r14, %rdi
	movq	%rsi, 80(%rsp)
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%rax, 64(%rsp)
	movq	%r8, %r15
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	(%rsp), %xmm0
	vxorps	64(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	%xmm0, 64(%rbp)
	vmovaps	%xmm0, (%rsp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	movq	64(%rsp), %rax
	movq	$0, 80(%rbp)
	vmovdqa	16(%rsp), %xmm0
	vpxor	48(%rbp), %xmm0, %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vmovdqa	176(%rsi), %xmm1
	vpxor	(%rbp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI6_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqa	%xmm1, (%rbp)
	movq	32(%rsp), %r8
	movq	48(%rsp), %rdx
	cmpq	$96, %r13
	jae	.LBB6_15
.LBB6_13:
	cmpq	$16, %r13
	jb	.LBB6_14
.LBB6_18:
	vmovdqa	(%rdi), %xmm10
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	176(%rsi), %xmm1
	vmovdqa	(%rsi), %xmm2
	vmovdqa	16(%rsi), %xmm3
	vmovdqa	32(%rsi), %xmm4
	vmovdqa	48(%rsi), %xmm5
	vmovdqa	64(%rsi), %xmm6
	vmovdqa	80(%rsi), %xmm7
	vmovdqa	96(%rsi), %xmm8
	vmovdqa	112(%rsi), %xmm9
	vmovdqa	128(%rsi), %xmm11
	vmovdqa	144(%rsi), %xmm12
	vmovdqa	160(%rsi), %xmm13
	vmovdqa	.LCPI6_0(%rip), %xmm14
	vpbroadcastq	.LCPI6_1(%rip), %xmm15
	vpmovsxbq	.LCPI6_8(%rip), %xmm16
	.p2align	4, 0x90
.LBB6_19:
	vmovdqu64	(%rdx), %xmm17
	vpshufb	%xmm14, %xmm0, %xmm18
	vpxorq	%xmm18, %xmm2, %xmm18
	vaesenc	%xmm3, %xmm18, %xmm18
	vaesenc	%xmm4, %xmm18, %xmm18
	vaesenc	%xmm5, %xmm18, %xmm18
	vaesenc	%xmm6, %xmm18, %xmm18
	vaesenc	%xmm7, %xmm18, %xmm18
	vaesenc	%xmm8, %xmm18, %xmm18
	vaesenc	%xmm9, %xmm18, %xmm18
	vaesenc	%xmm11, %xmm18, %xmm18
	vaesenc	%xmm12, %xmm18, %xmm18
	vaesenclast	%xmm13, %xmm18, %xmm18
	vpxorq	%xmm17, %xmm18, %xmm18
	vmovdqu64	%xmm18, (%r8)
	addq	$16, %r8
	addq	$-16, %r13
	addq	$16, %rdx
	vpshufb	%xmm14, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm17
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm18
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm19
	vpxorq	%xmm18, %xmm19, %xmm18
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm10
	vpslldq	$8, %xmm18, %xmm19
	vpxorq	%xmm19, %xmm17, %xmm17
	vpsrldq	$8, %xmm18, %xmm18
	vpclmulqdq	$16, %xmm15, %xmm17, %xmm19
	vpshufd	$78, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm19, %xmm17
	vpclmulqdq	$16, %xmm15, %xmm17, %xmm19
	vpxorq	%xmm10, %xmm19, %xmm19
	vpshufd	$78, %xmm17, %xmm10
	vpternlogq	$150, %xmm18, %xmm19, %xmm10
	vpaddd	%xmm16, %xmm0, %xmm0
	cmpq	$15, %r13
	ja	.LBB6_19
	vmovdqa	%xmm0, 32(%rdi)
	vmovdqa	%xmm10, (%rdi)
	testq	%r13, %r13
	je	.LBB6_23
.LBB6_21:
	movl	$-1, %ecx
	bzhil	%r13d, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdx), %xmm0 {%k1} {z}
	vmovdqa	32(%rdi), %xmm1
	vpshufb	.LCPI6_0(%rip), %xmm1, %xmm2
	vpaddd	.LCPI6_2(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rdi)
	vpxor	(%rsi), %xmm2, %xmm1
	vaesenc	16(%rsi), %xmm1, %xmm1
	vaesenc	32(%rsi), %xmm1, %xmm1
	vaesenc	48(%rsi), %xmm1, %xmm1
	vaesenc	64(%rsi), %xmm1, %xmm1
	vaesenc	80(%rsi), %xmm1, %xmm1
	vaesenc	96(%rsi), %xmm1, %xmm1
	vaesenc	112(%rsi), %xmm1, %xmm1
	vaesenc	128(%rsi), %xmm1, %xmm1
	vaesenc	144(%rsi), %xmm1, %xmm1
	vaesenclast	160(%rsi), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu8	%xmm0, (%r8) {%k1}
	vmovdqa	%xmm1, 48(%rdi)
	vmovdqa	%xmm0, 64(%rdi)
.LBB6_22:
	movq	%r13, 80(%rdi)
.LBB6_23:
	movq	%r12, 104(%rdi)
.LBB6_24:
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	vzeroupper
	retq
.Lfunc_end6:
	.size	haberdashery_aes128gcm_streaming_tigerlake_decrypt_update, .Lfunc_end6-haberdashery_aes128gcm_streaming_tigerlake_decrypt_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_tigerlake_decrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_tigerlake_decrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_tigerlake_decrypt_finalize,@function
haberdashery_aes128gcm_streaming_tigerlake_decrypt_finalize:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$16, %rcx
	jne	.LBB7_10
	vmovdqu	(%rdx), %xmm0
	movq	104(%rdi), %rax
	testq	%rax, %rax
	je	.LBB7_2
	leaq	48(%rdi), %rcx
	movq	80(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB7_5
	vmovdqa	48(%rdi), %xmm1
	vpxor	64(%rdi), %xmm1, %xmm1
	movl	$-1, %r8d
	bzhil	%edx, %r8d, %edx
	kmovd	%edx, %k1
	vmovdqu8	%xmm1, %xmm1 {%k1} {z}
	vpshufb	.LCPI7_0(%rip), %xmm1, %xmm1
	vpxor	(%rdi), %xmm1, %xmm1
	vmovdqa	176(%rsi), %xmm2
	jmp	.LBB7_7
.LBB7_2:
	cmpq	$0, 80(%rdi)
	vmovdqa	(%rdi), %xmm1
	je	.LBB7_9
	vmovdqa	176(%rsi), %xmm2
	leaq	48(%rdi), %rcx
	vmovdqa	64(%rdi), %xmm3
	vpshufb	.LCPI7_0(%rip), %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
.LBB7_7:
	vpclmulqdq	$0, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm4, %xmm3
	vpbroadcastq	.LCPI7_1(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	jmp	.LBB7_8
.LBB7_5:
	vmovdqa	(%rdi), %xmm1
.LBB7_8:
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqu	%ymm2, (%rcx)
	movq	$0, 32(%rcx)
.LBB7_9:
	vmovdqa	176(%rsi), %xmm2
	vmovq	96(%rdi), %xmm3
	vmovq	%rax, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3
	vpsllq	$3, %xmm3, %xmm3
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI7_1(%rip), %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm1, %xmm2
	vmovdqa	%xmm2, (%rdi)
	vmovdqa	(%rsi), %xmm1
	vpxor	16(%rdi), %xmm1, %xmm1
	vaesenc	16(%rsi), %xmm1, %xmm1
	vaesenc	32(%rsi), %xmm1, %xmm1
	vaesenc	48(%rsi), %xmm1, %xmm1
	vaesenc	64(%rsi), %xmm1, %xmm1
	vaesenc	80(%rsi), %xmm1, %xmm1
	vaesenc	96(%rsi), %xmm1, %xmm1
	vaesenc	112(%rsi), %xmm1, %xmm1
	vaesenc	128(%rsi), %xmm1, %xmm1
	vaesenc	144(%rsi), %xmm1, %xmm1
	vaesenclast	160(%rsi), %xmm1, %xmm1
	vpshufb	.LCPI7_0(%rip), %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	xorl	%eax, %eax
	vptest	%xmm2, %xmm2
	sete	%al
.LBB7_10:
	vzeroupper
	retq
.Lfunc_end7:
	.size	haberdashery_aes128gcm_streaming_tigerlake_decrypt_finalize, .Lfunc_end7-haberdashery_aes128gcm_streaming_tigerlake_decrypt_finalize
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

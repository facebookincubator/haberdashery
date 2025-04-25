# @generated
# https://github.com/facebookincubator/haberdashery/
	.text
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	12
.LCPI0_9:
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
	.quad	4294967297
.LCPI0_8:
	.quad	274877907008
.LCPI0_10:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.long	0x00000002
.LCPI0_3:
	.long	0x0c0f0e0d
.LCPI0_4:
	.long	0x00000004
.LCPI0_5:
	.long	0x00000008
.LCPI0_6:
	.long	0x00000010
.LCPI0_7:
	.long	0x00000020
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_init_key,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_init_key
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_init_key,@function
haberdashery_aes256gcm_streaming_skylakex_init_key:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm5
	vmovdqu	16(%rsi), %xmm4
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI0_3(%rip), %xmm16
	vpshufb	%xmm16, %xmm4, %xmm0
	vpbroadcastq	.LCPI0_1(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm6
	vpternlogq	$150, %xmm2, %xmm5, %xmm6
	vaesenc	%xmm4, %xmm5, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm6, %xmm1
	vmovdqa	%xmm6, %xmm7
	vpxor	%xmm15, %xmm15, %xmm15
	vaesenclast	%xmm15, %xmm1, %xmm6
	vbroadcastss	.LCPI0_2(%rip), %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vbroadcastss	.LCPI0_3(%rip), %xmm1
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm8
	vpslldq	$12, %xmm7, %xmm9
	vpternlogq	$150, %xmm3, %xmm8, %xmm9
	vpshufb	%xmm1, %xmm6, %xmm10
	vaesenclast	%xmm2, %xmm10, %xmm10
	vpternlogq	$150, %xmm7, %xmm9, %xmm10
	#NO_APP
	vmovdqa64	%xmm7, %xmm17
	vbroadcastss	.LCPI0_4(%rip), %xmm2
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm8
	vpslldq	$12, %xmm6, %xmm9
	vpternlogq	$150, %xmm3, %xmm8, %xmm9
	vpshufd	$255, %xmm10, %xmm7
	vaesenclast	%xmm15, %xmm7, %xmm7
	vpternlogq	$150, %xmm6, %xmm9, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm8
	vpslldq	$12, %xmm10, %xmm9
	vpternlogq	$150, %xmm3, %xmm8, %xmm9
	vpshufb	%xmm1, %xmm7, %xmm11
	vaesenclast	%xmm2, %xmm11, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	#NO_APP
	vmovaps	%xmm10, %xmm18
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm2
	vpslldq	$8, %xmm7, %xmm3
	vpslldq	$12, %xmm7, %xmm8
	vpternlogq	$150, %xmm2, %xmm3, %xmm8
	vpshufd	$255, %xmm11, %xmm9
	vaesenclast	%xmm15, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	#NO_APP
	vmovaps	%xmm7, %xmm19
	vbroadcastss	.LCPI0_5(%rip), %xmm2
	vmovaps	%xmm9, %xmm7
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm9
	vpslldq	$12, %xmm11, %xmm10
	vpternlogq	$150, %xmm3, %xmm9, %xmm10
	vpshufb	%xmm1, %xmm7, %xmm8
	vaesenclast	%xmm2, %xmm8, %xmm8
	vpternlogq	$150, %xmm11, %xmm10, %xmm8
	#NO_APP
	vmovaps	%xmm11, %xmm20
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm2
	vpslldq	$8, %xmm7, %xmm3
	vpslldq	$12, %xmm7, %xmm10
	vpternlogq	$150, %xmm2, %xmm3, %xmm10
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm15, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm10, %xmm9
	#NO_APP
	vmovaps	%xmm7, %xmm21
	vbroadcastss	.LCPI0_6(%rip), %xmm2
	vmovaps	%xmm9, %xmm7
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm3, %xmm11, %xmm12
	vpshufb	%xmm1, %xmm7, %xmm9
	vaesenclast	%xmm2, %xmm9, %xmm9
	vpternlogq	$150, %xmm8, %xmm12, %xmm9
	#NO_APP
	vmovaps	%xmm8, %xmm22
	vbroadcastss	.LCPI0_7(%rip), %xmm2
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm12
	vpslldq	$12, %xmm7, %xmm13
	vpternlogq	$150, %xmm3, %xmm12, %xmm13
	vpshufd	$255, %xmm9, %xmm11
	vaesenclast	%xmm15, %xmm11, %xmm11
	vpternlogq	$150, %xmm7, %xmm13, %xmm11
	#NO_APP
	vmovaps	%xmm7, %xmm23
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm13
	vpslldq	$12, %xmm9, %xmm14
	vpternlogq	$150, %xmm3, %xmm13, %xmm14
	vpshufb	%xmm1, %xmm11, %xmm12
	vaesenclast	%xmm2, %xmm12, %xmm12
	vpternlogq	$150, %xmm9, %xmm14, %xmm12
	#NO_APP
	vmovaps	%xmm9, %xmm24
	vpslldq	$4, %xmm11, %xmm1
	vpunpcklqdq	%xmm11, %xmm15, %xmm2
	vinsertps	$55, %xmm11, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm12, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm13
	vpternlogq	$150, %xmm3, %xmm11, %xmm13
	vpshufb	%xmm16, %xmm13, %xmm1
	vpbroadcastq	.LCPI0_8(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm14
	vpslldq	$4, %xmm12, %xmm1
	vpunpcklqdq	%xmm12, %xmm15, %xmm2
	vinsertps	$55, %xmm12, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm12, %xmm14
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpblendd	$12, %xmm1, %xmm15, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpsllq	$63, %xmm1, %xmm3
	vpternlogq	$30, %xmm2, %xmm0, %xmm3
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm15
	vpternlogq	$150, %xmm0, %xmm3, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpbroadcastq	.LCPI0_10(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm0, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vpshufd	$78, %xmm2, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm15, %xmm1, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm0
	vpshufd	$78, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$78, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm9
	vpternlogq	$150, %xmm0, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpshufd	$78, %xmm0, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm9
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm10
	vpternlogq	$150, %xmm9, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm9
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpshufd	$78, %xmm7, %xmm10
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$78, %xmm7, %xmm7
	vmovdqa	%xmm5, (%rdi)
	vmovdqa	%xmm4, 16(%rdi)
	vmovdqa64	%xmm17, 32(%rdi)
	vmovdqa	%xmm6, 48(%rdi)
	vmovaps	%xmm18, 64(%rdi)
	vmovaps	%xmm19, 80(%rdi)
	vmovaps	%xmm20, 96(%rdi)
	vmovaps	%xmm21, 112(%rdi)
	vmovaps	%xmm22, 128(%rdi)
	vmovaps	%xmm23, 144(%rdi)
	vmovaps	%xmm24, 160(%rdi)
	vmovaps	%xmm11, 176(%rdi)
	vmovaps	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovdqa	%xmm14, 224(%rdi)
	vmovdqa	%xmm15, 240(%rdi)
	vmovdqa	%xmm1, 256(%rdi)
	vmovdqa	%xmm2, 272(%rdi)
	vmovdqa	%xmm0, 288(%rdi)
	vpsrldq	$8, %xmm9, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm7
	vmovdqa	%xmm7, 304(%rdi)
	vmovdqa	%xmm8, 320(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_streaming_skylakex_init_key, .Lfunc_end0-haberdashery_aes256gcm_streaming_skylakex_init_key
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_streaming_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_is_supported,@function
haberdashery_aes256gcm_streaming_skylakex_is_supported:
	.cfi_startproc
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rsi
	cpuid
	xchgq	%rbx, %rsi

	#NO_APP
	movl	%ecx, %esi
	movl	%edx, %edi
	notl	%edi
	notl	%esi
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r8
	cpuid
	xchgq	%rbx, %r8

	#NO_APP
	andl	$1993871875, %esi
	andl	$125829120, %edi
	orl	%esi, %edi
	notl	%r8d
	andl	$-779157207, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcm_streaming_skylakex_is_supported, .Lfunc_end1-haberdashery_aes256gcm_streaming_skylakex_is_supported
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_init_state,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_init_state
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_init_state,@function
haberdashery_aes256gcm_streaming_skylakex_init_state:
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
	.size	haberdashery_aes256gcm_streaming_skylakex_init_state, .Lfunc_end2-haberdashery_aes256gcm_streaming_skylakex_init_state
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_aad_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_aad_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_aad_update,@function
haberdashery_aes256gcm_streaming_skylakex_aad_update:
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
	vmovdqa	240(%r13), %xmm1
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
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, (%r12)
	movq	%r15, %rdx
	cmpq	$96, %r14
	jb	.LBB3_14
.LBB3_11:
	vmovdqa	(%rdi), %xmm8
	vmovdqa64	240(%rsi), %xmm18
	vmovdqa64	256(%rsi), %xmm19
	vmovdqa64	272(%rsi), %xmm20
	vmovdqa64	288(%rsi), %xmm21
	vmovdqa	304(%rsi), %xmm4
	vmovdqa	320(%rsi), %xmm5
	vmovdqa64	.LCPI3_0(%rip), %xmm16
	vpbroadcastq	.LCPI3_1(%rip), %xmm22
	.p2align	4, 0x90
.LBB3_12:
	vmovdqu64	(%rdx), %xmm17
	vmovdqu	16(%rdx), %xmm10
	vmovdqu	32(%rdx), %xmm11
	vmovdqu	48(%rdx), %xmm12
	vmovdqu	64(%rdx), %xmm13
	vmovdqu	80(%rdx), %xmm14
	vpshufb	%xmm16, %xmm12, %xmm12
	vpshufb	%xmm16, %xmm13, %xmm13
	vpshufb	%xmm16, %xmm14, %xmm14
	vmovdqa64	%xmm18, %xmm1
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm15
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa64	%xmm19, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm2, %xmm7
	vpclmulqdq	$1, %xmm13, %xmm2, %xmm9
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm0
	vpternlogq	$150, %xmm9, %xmm6, %xmm0
	vmovdqa64	%xmm20, %xmm3
	vpclmulqdq	$0, %xmm12, %xmm3, %xmm6
	vpternlogq	$150, %xmm15, %xmm7, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm3, %xmm7
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm9
	vpternlogq	$150, %xmm7, %xmm0, %xmm9
	vpshufb	%xmm16, %xmm10, %xmm0
	vpshufb	%xmm16, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm10
	vpclmulqdq	$17, %xmm13, %xmm2, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm3, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	vmovdqa64	%xmm21, %xmm1
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm9
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm10
	vpternlogq	$150, %xmm9, %xmm6, %xmm10
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm9
	vpternlogq	$150, %xmm6, %xmm11, %xmm9
	vpshufb	%xmm16, %xmm17, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpternlogq	$150, %xmm7, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm11
	vpternlogq	$150, %xmm7, %xmm9, %xmm11
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm7
	vpslldq	$8, %xmm11, %xmm8
	vpternlogq	$150, %xmm7, %xmm10, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm6
	vmovdqa64	%xmm22, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm7
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm8
	vpternlogq	$150, %xmm6, %xmm0, %xmm8
	vpsrldq	$8, %xmm11, %xmm0
	vpshufd	$78, %xmm7, %xmm6
	addq	$96, %rdx
	addq	$-96, %r14
	vpternlogq	$150, %xmm0, %xmm6, %xmm8
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
	vmovdqa	240(%rsi), %xmm0
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
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
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
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	addq	$32, %rdx
	addq	$-32, %r14
	vpshufb	%xmm2, %xmm5, %xmm1
	vpternlogq	$150, %xmm4, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm1, %xmm6, %xmm1
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
	.size	haberdashery_aes256gcm_streaming_skylakex_aad_update, .Lfunc_end3-haberdashery_aes256gcm_streaming_skylakex_aad_update
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_encrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_encrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_encrypt_update,@function
haberdashery_aes256gcm_streaming_skylakex_encrypt_update:
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
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
	vmovdqa	240(%rsi), %xmm0
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
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, (%rdi)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB4_11:
	movq	%rax, %r13
	cmpq	$96, %r13
	jb	.LBB4_14
.LBB4_16:
	vmovdqu64	(%rdx), %xmm16
	vmovdqu	16(%rdx), %xmm4
	vmovdqa	32(%rdi), %xmm2
	vmovdqa	.LCPI4_0(%rip), %xmm0
	vpshufb	%xmm0, %xmm2, %xmm5
	vpaddd	.LCPI4_2(%rip), %xmm2, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm6
	vpaddd	.LCPI4_3(%rip), %xmm2, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm7
	vpaddd	.LCPI4_4(%rip), %xmm2, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm8
	vpaddd	.LCPI4_5(%rip), %xmm2, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm11
	vpaddd	.LCPI4_6(%rip), %xmm2, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm12
	vmovdqa	(%rsi), %xmm1
	vmovdqa	16(%rsi), %xmm3
	vmovdqa	32(%rsi), %xmm13
	vmovdqa	48(%rsi), %xmm14
	vpxor	%xmm5, %xmm1, %xmm9
	vpxor	%xmm6, %xmm1, %xmm10
	vpxor	%xmm7, %xmm1, %xmm7
	vpxor	%xmm1, %xmm8, %xmm8
	vpxor	%xmm1, %xmm11, %xmm5
	vpxor	%xmm1, %xmm12, %xmm6
	vmovdqa64	%xmm3, %xmm18
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm13, %xmm19
	#APP
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	#NO_APP
	vmovdqa	64(%rsi), %xmm11
	#APP
	vaesenc	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	#NO_APP
	vmovdqa	80(%rsi), %xmm12
	#APP
	vaesenc	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	#NO_APP
	vmovaps	96(%rsi), %xmm3
	vmovaps	%xmm3, 16(%rsp)
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovaps	112(%rsi), %xmm3
	vmovaps	%xmm3, 128(%rsp)
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovaps	128(%rsi), %xmm3
	vmovaps	%xmm3, 112(%rsp)
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovaps	144(%rsi), %xmm3
	vmovaps	%xmm3, 96(%rsp)
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovaps	160(%rsi), %xmm3
	vmovaps	%xmm3, %xmm31
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa	176(%rsi), %xmm3
	vmovdqa64	%xmm3, %xmm24
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa	192(%rsi), %xmm3
	vmovdqa64	%xmm3, %xmm27
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa	208(%rsi), %xmm3
	vmovdqa	%xmm3, %xmm13
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa	224(%rsi), %xmm3
	vmovdqa64	%xmm3, %xmm23
	#APP
	vaesenclast	%xmm3, %xmm9, %xmm9
	vaesenclast	%xmm3, %xmm10, %xmm10
	vaesenclast	%xmm3, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm5, %xmm5
	vaesenclast	%xmm3, %xmm6, %xmm6
	#NO_APP
	vpxorq	%xmm16, %xmm9, %xmm16
	vpxorq	%xmm4, %xmm10, %xmm25
	vmovdqu	32(%rdx), %xmm3
	vmovdqu	48(%rdx), %xmm4
	vpxorq	%xmm3, %xmm7, %xmm26
	vpxorq	%xmm4, %xmm8, %xmm28
	vmovdqu	64(%rdx), %xmm3
	vmovdqu	80(%rdx), %xmm4
	vpxorq	%xmm3, %xmm5, %xmm29
	vpxor	%xmm4, %xmm6, %xmm9
	addq	$96, %rdx
	leaq	96(%r8), %rcx
	vpaddd	.LCPI4_7(%rip), %xmm2, %xmm2
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqu64	%xmm16, (%r8)
	vmovdqu64	%xmm25, 16(%r8)
	vmovdqu64	%xmm26, 32(%r8)
	vmovdqu64	%xmm28, 48(%r8)
	vmovdqu64	%xmm29, 64(%r8)
	addq	$-96, %r13
	vmovdqu	%xmm9, 80(%r8)
	vmovdqa64	(%rdi), %xmm17
	cmpq	$96, %r13
	jb	.LBB4_19
	vmovaps	240(%rsi), %xmm2
	vmovaps	%xmm2, 80(%rsp)
	vmovaps	256(%rsi), %xmm2
	vmovaps	%xmm2, 64(%rsp)
	vmovaps	272(%rsi), %xmm2
	vmovaps	%xmm2, 48(%rsp)
	vmovaps	288(%rsi), %xmm2
	vmovaps	%xmm2, 32(%rsp)
	vmovaps	304(%rsi), %xmm2
	vmovaps	%xmm2, 224(%rsp)
	vmovdqa	320(%rsi), %xmm2
	vmovdqa	%xmm2, 208(%rsp)
	vmovdqa64	%xmm18, 192(%rsp)
	vmovdqa64	%xmm19, 176(%rsp)
	vmovdqa	%xmm14, 160(%rsp)
	vmovdqa	%xmm11, %xmm6
	vmovdqa	%xmm12, 144(%rsp)
	vmovdqa64	128(%rsp), %xmm21
	vmovdqa64	112(%rsp), %xmm18
	vmovdqa64	96(%rsp), %xmm22
	vmovdqa64	%xmm27, %xmm20
	vmovdqa64	%xmm13, %xmm19
	.p2align	4, 0x90
.LBB4_18:
	vmovdqa64	32(%rdi), %xmm27
	vpshufb	%xmm0, %xmm27, %xmm2
	vpaddd	.LCPI4_2(%rip), %xmm27, %xmm3
	vpshufb	%xmm0, %xmm3, %xmm3
	vpaddd	.LCPI4_3(%rip), %xmm27, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm10
	vpaddd	.LCPI4_4(%rip), %xmm27, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm11
	vpaddd	.LCPI4_5(%rip), %xmm27, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm15
	vpaddd	.LCPI4_6(%rip), %xmm27, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm30
	vpshufb	%xmm0, %xmm9, %xmm4
	vpxor	%xmm2, %xmm1, %xmm14
	vpxor	%xmm3, %xmm1, %xmm12
	vpxor	%xmm1, %xmm10, %xmm13
	vpxor	%xmm1, %xmm11, %xmm10
	vpxor	%xmm1, %xmm15, %xmm11
	vpxorq	%xmm30, %xmm1, %xmm9
	vmovaps	192(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm15, %xmm15, %xmm15
	vpxor	%xmm3, %xmm3, %xmm3
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	80(%rsp), %xmm7
	vmovaps	176(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm29, %xmm4
	vmovaps	160(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm9, %xmm9
	#NO_APP
	vmovaps	64(%rsp), %xmm7
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm28, %xmm4
	vmovaps	144(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm9, %xmm9
	#NO_APP
	vmovaps	48(%rsp), %xmm7
	vmovaps	16(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm26, %xmm4
	vmovdqa64	%xmm21, %xmm5
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm9, %xmm9
	#NO_APP
	vmovaps	32(%rsp), %xmm7
	vmovdqa64	%xmm18, %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm25, %xmm4
	vmovdqa64	%xmm22, %xmm5
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm9, %xmm9
	#NO_APP
	vmovaps	224(%rsp), %xmm7
	vmovaps	%xmm31, %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm16, %xmm4
	vpxorq	%xmm4, %xmm17, %xmm4
	vmovdqa64	%xmm24, %xmm5
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm9, %xmm9
	#NO_APP
	vmovdqa	208(%rsp), %xmm7
	vmovdqa64	%xmm20, %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpunpcklqdq	%xmm3, %xmm5, %xmm4
	vpunpckhqdq	%xmm5, %xmm3, %xmm3
	vpxorq	%xmm3, %xmm2, %xmm17
	vpxor	%xmm4, %xmm15, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpbroadcastq	.LCPI4_1(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpternlogq	$150, %xmm2, %xmm3, %xmm17
	vmovdqu	(%rdx), %xmm2
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm23, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm12, %xmm12
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm10, %xmm10
	vaesenclast	%xmm3, %xmm11, %xmm11
	vaesenclast	%xmm3, %xmm9, %xmm9
	#NO_APP
	vpxorq	%xmm2, %xmm14, %xmm16
	vmovdqu	16(%rdx), %xmm2
	vmovdqu	32(%rdx), %xmm3
	vpxorq	%xmm2, %xmm12, %xmm25
	vpxorq	%xmm3, %xmm13, %xmm26
	vmovdqu	48(%rdx), %xmm2
	vmovdqu	64(%rdx), %xmm3
	vpxorq	%xmm2, %xmm10, %xmm28
	vpxorq	%xmm3, %xmm11, %xmm29
	vmovdqu	80(%rdx), %xmm2
	vpxor	%xmm2, %xmm9, %xmm9
	vpaddd	.LCPI4_7(%rip), %xmm27, %xmm2
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqu64	%xmm16, (%rcx)
	vmovdqu64	%xmm25, 16(%rcx)
	vmovdqu64	%xmm26, 32(%rcx)
	vmovdqu64	%xmm28, 48(%rcx)
	vmovdqu64	%xmm29, 64(%rcx)
	addq	$96, %rdx
	vmovdqu	%xmm9, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %r13
	cmpq	$95, %r13
	ja	.LBB4_18
.LBB4_19:
	vpshufb	%xmm0, %xmm16, %xmm2
	vpshufb	%xmm0, %xmm25, %xmm1
	vpshufb	%xmm0, %xmm26, %xmm3
	vpshufb	%xmm0, %xmm28, %xmm4
	vpshufb	%xmm0, %xmm29, %xmm5
	vpshufb	%xmm0, %xmm9, %xmm6
	vpxorq	%xmm2, %xmm17, %xmm0
	vmovdqa	240(%rsi), %xmm7
	vmovdqa	256(%rsi), %xmm8
	vmovdqa	272(%rsi), %xmm9
	vmovdqa	288(%rsi), %xmm10
	vmovdqa	304(%rsi), %xmm11
	vmovdqa	320(%rsi), %xmm2
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm12
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm13
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm14
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm15
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm5
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm13
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm14
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpternlogq	$150, %xmm12, %xmm7, %xmm8
	vpternlogq	$150, %xmm13, %xmm15, %xmm14
	vpternlogq	$150, %xmm6, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm3
	vpternlogq	$150, %xmm6, %xmm14, %xmm7
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpternlogq	$150, %xmm5, %xmm8, %xmm6
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpternlogq	$150, %xmm4, %xmm10, %xmm5
	vpslldq	$8, %xmm5, %xmm2
	vpternlogq	$150, %xmm3, %xmm6, %xmm2
	vpsrldq	$8, %xmm5, %xmm3
	vpbroadcastq	.LCPI4_1(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vmovdqa	%xmm4, (%rdi)
	movq	%rcx, %r8
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
	vmovdqa	240(%rsi), %xmm0
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
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, (%rbp)
	movq	48(%rsp), %r8
	movq	64(%rsp), %rdx
	movq	16(%rsp), %r11
	cmpq	$96, %r13
	jae	.LBB4_16
.LBB4_14:
	cmpq	$16, %r13
	jb	.LBB4_15
.LBB4_20:
	vmovdqa	(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm0
	vmovdqa64	(%rsi), %xmm16
	vmovdqa64	16(%rsi), %xmm20
	vmovdqa64	32(%rsi), %xmm21
	vmovdqa64	48(%rsi), %xmm22
	vmovdqa64	64(%rsi), %xmm23
	vmovdqa64	80(%rsi), %xmm24
	vmovdqa64	96(%rsi), %xmm25
	vmovdqa	112(%rsi), %xmm8
	vmovdqa	128(%rsi), %xmm9
	vmovdqa	144(%rsi), %xmm10
	vmovdqa	160(%rsi), %xmm12
	vmovdqa	176(%rsi), %xmm13
	vmovdqa	192(%rsi), %xmm14
	vmovdqa	208(%rsi), %xmm15
	vmovdqa	224(%rsi), %xmm1
	vmovdqa	240(%rsi), %xmm2
	vmovdqa64	.LCPI4_0(%rip), %xmm17
	vpmovsxbq	.LCPI4_8(%rip), %xmm18
	vpbroadcastq	.LCPI4_1(%rip), %xmm3
	.p2align	4, 0x90
.LBB4_21:
	vpshufb	%xmm17, %xmm0, %xmm19
	vpxorq	%xmm19, %xmm16, %xmm4
	vmovdqa64	%xmm20, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm21, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm22, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm23, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm24, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm25, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenclast	%xmm1, %xmm4, %xmm4
	vpxor	(%rdx), %xmm4, %xmm4
	vpshufb	%xmm17, %xmm4, %xmm19
	vpxorq	%xmm19, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpslldq	$8, %xmm5, %xmm19
	vpxorq	%xmm19, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm7
	vpxor	%xmm7, %xmm11, %xmm11
	vpshufd	$78, %xmm6, %xmm6
	addq	$16, %rdx
	vmovdqu	%xmm4, (%r8)
	addq	$16, %r8
	addq	$-16, %r13
	vpaddd	%xmm18, %xmm0, %xmm0
	vpsrldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm4, %xmm6, %xmm11
	cmpq	$15, %r13
	ja	.LBB4_21
	vmovdqa	%xmm0, 32(%rdi)
	vmovdqa	%xmm11, (%rdi)
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
	vaesenc	160(%rsi), %xmm1, %xmm1
	vaesenc	176(%rsi), %xmm1, %xmm1
	vaesenc	192(%rsi), %xmm1, %xmm1
	vaesenc	208(%rsi), %xmm1, %xmm1
	vaesenclast	224(%rsi), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu8	%xmm0, (%r8) {%k1}
	vmovdqa	%xmm1, 48(%rdi)
	vmovdqa	%xmm0, 64(%rdi)
.LBB4_24:
	movq	%r13, 80(%rdi)
.LBB4_25:
	movq	%r11, 104(%rdi)
	addq	$248, %rsp
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
	.size	haberdashery_aes256gcm_streaming_skylakex_encrypt_update, .Lfunc_end4-haberdashery_aes256gcm_streaming_skylakex_encrypt_update
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize,@function
haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize:
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
	vmovdqa	240(%rsi), %xmm1
	jmp	.LBB5_6
.LBB5_1:
	vmovdqa	(%rdi), %xmm0
	testq	%r8, %r8
	je	.LBB5_8
	vmovdqa	240(%rsi), %xmm1
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
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	jmp	.LBB5_7
.LBB5_4:
	vmovdqa	(%rdi), %xmm0
.LBB5_7:
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB5_8:
	vmovdqa	240(%rsi), %xmm1
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
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
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
	vaesenc	160(%rsi), %xmm1, %xmm1
	vaesenc	176(%rsi), %xmm1, %xmm1
	vaesenc	192(%rsi), %xmm1, %xmm1
	vaesenc	208(%rsi), %xmm1, %xmm1
	vaesenclast	224(%rsi), %xmm1, %xmm1
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
	.size	haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize, .Lfunc_end5-haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_decrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_decrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_decrypt_update,@function
haberdashery_aes256gcm_streaming_skylakex_decrypt_update:
	.cfi_startproc
	cmpq	%r9, %rcx
	jne	.LBB6_3
	movq	%rcx, %rax
	movabsq	$-68719476704, %rcx
	leaq	(%rax,%rcx), %r9
	incq	%rcx
	cmpq	%rcx, %r9
	jb	.LBB6_3
	movq	104(%rdi), %rcx
	leaq	(%rcx,%rax), %r11
	movq	%r11, %r9
	shrq	$5, %r9
	cmpq	$2147483646, %r9
	jbe	.LBB6_6
.LBB6_3:
	xorl	%eax, %eax
	retq
.LBB6_6:
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
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
	je	.LBB6_10
	testq	%rcx, %rcx
	je	.LBB6_11
	movq	%r11, 16(%rsp)
	movq	%rdi, %rbp
	leaq	(%rcx,%rax), %r13
	cmpq	$15, %r13
	ja	.LBB6_12
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
	jmp	.LBB6_23
.LBB6_10:
	vmovdqa	240(%rsi), %xmm0
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
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, (%rdi)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB6_11:
	movq	%rax, %r13
	cmpq	$96, %r13
	jb	.LBB6_14
.LBB6_16:
	vmovdqa64	(%rdi), %xmm24
	vmovdqa	(%rsi), %xmm0
	vmovaps	16(%rsi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	32(%rsi), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovaps	48(%rsi), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	64(%rsi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovaps	80(%rsi), %xmm1
	vmovaps	%xmm1, 32(%rsp)
	vmovaps	96(%rsi), %xmm1
	vmovaps	%xmm1, 208(%rsp)
	vmovaps	112(%rsi), %xmm1
	vmovaps	%xmm1, 192(%rsp)
	vmovaps	128(%rsi), %xmm1
	vmovaps	%xmm1, 176(%rsp)
	vmovaps	144(%rsi), %xmm1
	vmovaps	%xmm1, 160(%rsp)
	vmovaps	160(%rsi), %xmm1
	vmovaps	%xmm1, 144(%rsp)
	vmovaps	176(%rsi), %xmm1
	vmovaps	%xmm1, 128(%rsp)
	vmovaps	192(%rsi), %xmm1
	vmovaps	%xmm1, 112(%rsp)
	vmovdqa	208(%rsi), %xmm1
	vmovdqa	%xmm1, 96(%rsp)
	vmovdqa64	224(%rsi), %xmm18
	vmovdqa64	240(%rsi), %xmm19
	vmovapd	256(%rsi), %xmm20
	vmovdqa64	.LCPI6_0(%rip), %xmm16
	vpxord	%xmm23, %xmm23, %xmm23
	vmovdqa64	272(%rsi), %xmm21
	vmovdqa64	288(%rsi), %xmm22
	vmovdqa64	304(%rsi), %xmm17
	vmovapd	320(%rsi), %xmm5
	vpbroadcastq	.LCPI6_1(%rip), %xmm6
	.p2align	4, 0x90
.LBB6_17:
	vmovdqu64	(%rdx), %xmm25
	vmovdqu64	16(%rdx), %xmm26
	vmovdqu64	32(%rdx), %xmm27
	vmovdqu64	48(%rdx), %xmm28
	vmovdqu64	64(%rdx), %xmm29
	vmovdqu64	80(%rdx), %xmm30
	vmovdqa64	32(%rdi), %xmm31
	vpshufb	%xmm16, %xmm31, %xmm7
	vpaddd	.LCPI6_2(%rip), %xmm31, %xmm8
	vpshufb	%xmm16, %xmm8, %xmm8
	vpaddd	.LCPI6_3(%rip), %xmm31, %xmm9
	vpshufb	%xmm16, %xmm9, %xmm9
	vpaddd	.LCPI6_4(%rip), %xmm31, %xmm10
	vpshufb	%xmm16, %xmm10, %xmm10
	vpaddd	.LCPI6_5(%rip), %xmm31, %xmm11
	vpshufb	%xmm16, %xmm11, %xmm11
	vpaddd	.LCPI6_6(%rip), %xmm31, %xmm12
	vpshufb	%xmm16, %xmm12, %xmm12
	vpshufb	%xmm16, %xmm30, %xmm1
	vpxor	%xmm7, %xmm0, %xmm7
	vpxor	%xmm0, %xmm8, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vpxor	%xmm0, %xmm10, %xmm10
	vpxor	%xmm0, %xmm11, %xmm11
	vpxor	%xmm0, %xmm12, %xmm12
	vmovaps	16(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	#NO_APP
	vxorps	%xmm15, %xmm15, %xmm15
	vxorps	%xmm13, %xmm13, %xmm13
	vxorps	%xmm14, %xmm14, %xmm14
	vmovaps	80(%rsp), %xmm3
	vmovdqa64	%xmm19, %xmm4
	#APP
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm16, %xmm29, %xmm1
	vmovaps	64(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	48(%rsp), %xmm3
	vmovapd	%xmm20, %xmm4
	#APP
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm16, %xmm28, %xmm1
	vmovaps	32(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	208(%rsp), %xmm3
	vmovdqa64	%xmm21, %xmm4
	#APP
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm16, %xmm27, %xmm1
	vmovaps	192(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	176(%rsp), %xmm3
	vmovdqa64	%xmm22, %xmm4
	#APP
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm16, %xmm26, %xmm1
	vmovaps	160(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	144(%rsp), %xmm3
	vmovdqa64	%xmm17, %xmm4
	#APP
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm16, %xmm25, %xmm1
	vpxorq	%xmm1, %xmm24, %xmm1
	vmovaps	128(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovdqa	112(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm2
	vpxor	%xmm2, %xmm15, %xmm15
	#NO_APP
	vpunpcklqdq	%xmm15, %xmm23, %xmm1
	vpunpckhqdq	%xmm23, %xmm15, %xmm2
	vpxorq	%xmm2, %xmm13, %xmm24
	vpxor	%xmm1, %xmm14, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpternlogq	$150, %xmm1, %xmm2, %xmm24
	vmovaps	96(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm18, %xmm1
	#APP
	vaesenclast	%xmm1, %xmm7, %xmm7
	vaesenclast	%xmm1, %xmm8, %xmm8
	vaesenclast	%xmm1, %xmm9, %xmm9
	vaesenclast	%xmm1, %xmm10, %xmm10
	vaesenclast	%xmm1, %xmm11, %xmm11
	vaesenclast	%xmm1, %xmm12, %xmm12
	#NO_APP
	vpxorq	%xmm25, %xmm7, %xmm1
	vpxorq	%xmm26, %xmm8, %xmm2
	vpxorq	%xmm27, %xmm9, %xmm7
	vpxorq	%xmm28, %xmm10, %xmm8
	vpxorq	%xmm29, %xmm11, %xmm9
	vpxorq	%xmm30, %xmm12, %xmm10
	vpaddd	.LCPI6_7(%rip), %xmm31, %xmm11
	vmovdqa	%xmm11, 32(%rdi)
	vmovdqu	%xmm1, (%r8)
	vmovdqu	%xmm2, 16(%r8)
	vmovdqu	%xmm7, 32(%r8)
	vmovdqu	%xmm8, 48(%r8)
	vmovdqu	%xmm9, 64(%r8)
	vmovdqu	%xmm10, 80(%r8)
	addq	$96, %rdx
	addq	$96, %r8
	addq	$-96, %r13
	cmpq	$95, %r13
	ja	.LBB6_17
	vmovdqa64	%xmm24, (%rdi)
	cmpq	$16, %r13
	jae	.LBB6_19
.LBB6_15:
	testq	%r13, %r13
	jne	.LBB6_22
	jmp	.LBB6_24
.LBB6_12:
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
	movq	$0, 80(%rbp)
	vmovdqa	32(%rsp), %xmm0
	vpxor	48(%rbp), %xmm0, %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vmovdqa	240(%rsi), %xmm1
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
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, (%rbp)
	movq	48(%rsp), %r8
	movq	64(%rsp), %rdx
	movq	16(%rsp), %r11
	cmpq	$96, %r13
	jae	.LBB6_16
.LBB6_14:
	cmpq	$16, %r13
	jb	.LBB6_15
.LBB6_19:
	vmovdqa	(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	240(%rsi), %xmm1
	vmovdqa64	(%rsi), %xmm16
	vmovdqa64	16(%rsi), %xmm21
	vmovdqa64	32(%rsi), %xmm22
	vmovdqa64	48(%rsi), %xmm23
	vmovdqa64	64(%rsi), %xmm24
	vmovdqa64	80(%rsi), %xmm25
	vmovdqa64	96(%rsi), %xmm26
	vmovdqa	112(%rsi), %xmm9
	vmovdqa	128(%rsi), %xmm10
	vmovdqa	144(%rsi), %xmm12
	vmovdqa	160(%rsi), %xmm13
	vmovdqa	176(%rsi), %xmm14
	vmovdqa	192(%rsi), %xmm15
	vmovdqa	208(%rsi), %xmm2
	vmovdqa	224(%rsi), %xmm3
	vmovdqa64	.LCPI6_0(%rip), %xmm17
	vpbroadcastq	.LCPI6_1(%rip), %xmm4
	vpmovsxbq	.LCPI6_8(%rip), %xmm18
	.p2align	4, 0x90
.LBB6_20:
	vmovdqu64	(%rdx), %xmm19
	vpshufb	%xmm17, %xmm19, %xmm20
	vpxorq	%xmm20, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm11
	vpslldq	$8, %xmm5, %xmm20
	vpxorq	%xmm20, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm7
	vpxor	%xmm7, %xmm11, %xmm11
	vpshufd	$78, %xmm6, %xmm6
	vpshufb	%xmm17, %xmm0, %xmm7
	vpxorq	%xmm7, %xmm16, %xmm7
	vmovdqa64	%xmm21, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm22, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm23, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm24, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm25, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm26, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxorq	%xmm19, %xmm7, %xmm7
	vmovdqu	%xmm7, (%r8)
	addq	$16, %r8
	addq	$-16, %r13
	addq	$16, %rdx
	vpsrldq	$8, %xmm5, %xmm5
	vpternlogq	$150, %xmm5, %xmm6, %xmm11
	vpaddd	%xmm18, %xmm0, %xmm0
	cmpq	$15, %r13
	ja	.LBB6_20
	vmovdqa	%xmm0, 32(%rdi)
	vmovdqa	%xmm11, (%rdi)
	testq	%r13, %r13
	je	.LBB6_24
.LBB6_22:
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
	vaesenc	160(%rsi), %xmm1, %xmm1
	vaesenc	176(%rsi), %xmm1, %xmm1
	vaesenc	192(%rsi), %xmm1, %xmm1
	vaesenc	208(%rsi), %xmm1, %xmm1
	vaesenclast	224(%rsi), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu8	%xmm0, (%r8) {%k1}
	vmovdqa	%xmm1, 48(%rdi)
	vmovdqa	%xmm0, 64(%rdi)
.LBB6_23:
	movq	%r13, 80(%rdi)
.LBB6_24:
	movq	%r11, 104(%rdi)
	addq	$232, %rsp
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
	.size	haberdashery_aes256gcm_streaming_skylakex_decrypt_update, .Lfunc_end6-haberdashery_aes256gcm_streaming_skylakex_decrypt_update
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize,@function
haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize:
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
	vmovdqa	240(%rsi), %xmm2
	jmp	.LBB7_7
.LBB7_2:
	cmpq	$0, 80(%rdi)
	vmovdqa	(%rdi), %xmm1
	je	.LBB7_9
	vmovdqa	240(%rsi), %xmm2
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
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	jmp	.LBB7_8
.LBB7_5:
	vmovdqa	(%rdi), %xmm1
.LBB7_8:
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqu	%ymm2, (%rcx)
	movq	$0, 32(%rcx)
.LBB7_9:
	vmovdqa	240(%rsi), %xmm2
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
	vpsrldq	$8, %xmm4, %xmm3
	vpbroadcastq	.LCPI7_1(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vmovdqa	%xmm1, (%rdi)
	vmovdqa	(%rsi), %xmm2
	vpxor	16(%rdi), %xmm2, %xmm2
	vaesenc	16(%rsi), %xmm2, %xmm2
	vaesenc	32(%rsi), %xmm2, %xmm2
	vaesenc	48(%rsi), %xmm2, %xmm2
	vaesenc	64(%rsi), %xmm2, %xmm2
	vaesenc	80(%rsi), %xmm2, %xmm2
	vaesenc	96(%rsi), %xmm2, %xmm2
	vaesenc	112(%rsi), %xmm2, %xmm2
	vaesenc	128(%rsi), %xmm2, %xmm2
	vaesenc	144(%rsi), %xmm2, %xmm2
	vaesenc	160(%rsi), %xmm2, %xmm2
	vaesenc	176(%rsi), %xmm2, %xmm2
	vaesenc	192(%rsi), %xmm2, %xmm2
	vaesenc	208(%rsi), %xmm2, %xmm2
	vaesenclast	224(%rsi), %xmm2, %xmm2
	vpshufb	.LCPI7_0(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	xorl	%eax, %eax
	vptest	%xmm1, %xmm1
	sete	%al
.LBB7_10:
	vzeroupper
	retq
.Lfunc_end7:
	.size	haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize, .Lfunc_end7-haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

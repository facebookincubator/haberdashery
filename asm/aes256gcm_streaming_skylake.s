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
.LCPI0_1:
	.quad	4294967297
	.quad	4294967297
.LCPI0_8:
	.quad	274877907008
	.quad	274877907008
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
.LCPI0_10:
	.zero	8
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_11:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_skylake_init_key,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_init_key
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_init_key,@function
haberdashery_aes256gcm_streaming_skylake_init_key:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpbroadcastd	.LCPI0_3(%rip), %xmm12
	vpshufb	%xmm12, %xmm1, %xmm3
	vaesenclast	.LCPI0_1(%rip), %xmm3, %xmm3
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm4
	vmovdqa	%xmm4, -24(%rsp)
	vaesenc	%xmm1, %xmm0, %xmm14
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpslldq	$12, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$255, %xmm4, %xmm2
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm2, %xmm2
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	vmovdqa	%xmm5, -40(%rsp)
	vbroadcastss	.LCPI0_2(%rip), %xmm1
	vbroadcastss	.LCPI0_3(%rip), %xmm0
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vpslldq	$4, %xmm4, %xmm2
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm6
	vaesenclast	%xmm1, %xmm6, %xmm6
	vpxor	%xmm2, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm6, %xmm3
	vmovaps	%xmm6, -56(%rsp)
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm4
	vaesenclast	%xmm13, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm4
	#NO_APP
	vmovaps	%xmm4, -72(%rsp)
	vbroadcastss	.LCPI0_4(%rip), %xmm1
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vpslldq	$4, %xmm3, %xmm2
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpslldq	$12, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm6
	vaesenclast	%xmm1, %xmm6, %xmm6
	vpxor	%xmm2, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm6, %xmm3
	vmovaps	%xmm6, -88(%rsp)
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm5
	vaesenclast	%xmm13, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm5
	#NO_APP
	vbroadcastss	.LCPI0_5(%rip), %xmm1
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vpslldq	$4, %xmm3, %xmm2
	vpslldq	$8, %xmm3, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpslldq	$12, %xmm3, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm6
	vaesenclast	%xmm1, %xmm6, %xmm6
	vpxor	%xmm2, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm7
	vaesenclast	%xmm13, %xmm7, %xmm7
	vpxor	%xmm1, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI0_6(%rip), %xmm1
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vpslldq	$4, %xmm6, %xmm2
	vpslldq	$8, %xmm6, %xmm9
	vpxor	%xmm2, %xmm9, %xmm2
	vpslldq	$12, %xmm6, %xmm9
	vpxor	%xmm2, %xmm9, %xmm2
	vpxor	%xmm6, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm7, %xmm8
	vaesenclast	%xmm1, %xmm8, %xmm8
	vpxor	%xmm2, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm14, %xmm14
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm7, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm13, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI0_7(%rip), %xmm1
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vpslldq	$4, %xmm8, %xmm2
	vpslldq	$8, %xmm8, %xmm11
	vpxor	%xmm2, %xmm11, %xmm2
	vpslldq	$12, %xmm8, %xmm11
	vpxor	%xmm2, %xmm11, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vpshufb	%xmm0, %xmm9, %xmm10
	vaesenclast	%xmm1, %xmm10, %xmm10
	vpxor	%xmm2, %xmm10, %xmm10
	#NO_APP
	vpslldq	$4, %xmm9, %xmm0
	vpunpcklqdq	%xmm9, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vinsertps	$55, %xmm9, %xmm0, %xmm1
	vxorps	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm10, %xmm1
	vaesenclast	%xmm13, %xmm1, %xmm1
	vxorps	%xmm0, %xmm9, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpunpcklqdq	%xmm10, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vinsertps	$55, %xmm10, %xmm0, %xmm1
	vxorps	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm12, %xmm11, %xmm1
	vaesenclast	.LCPI0_8(%rip), %xmm1, %xmm1
	vxorps	%xmm0, %xmm10, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vmovdqa	%xmm1, -104(%rsp)
	vaesenc	%xmm9, %xmm14, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm13, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm0
	vpbroadcastq	.LCPI0_11(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm2
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm3
	vpshufd	$78, %xmm0, %xmm12
	vpxor	%xmm3, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm12
	vpxor	%xmm3, %xmm12, %xmm3
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm12
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm12
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm12, %xmm4
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm12
	vpxor	%xmm3, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm12
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm12, %xmm3
	vmovups	(%rsi), %ymm4
	vmovups	%ymm4, (%rdi)
	vmovaps	-24(%rsp), %xmm4
	vmovaps	%xmm4, 32(%rdi)
	vmovaps	-40(%rsp), %xmm4
	vmovaps	%xmm4, 48(%rdi)
	vmovaps	-56(%rsp), %xmm4
	vmovaps	%xmm4, 64(%rdi)
	vmovaps	-72(%rsp), %xmm4
	vmovaps	%xmm4, 80(%rdi)
	vmovaps	-88(%rsp), %xmm4
	vmovaps	%xmm4, 96(%rdi)
	vmovaps	%xmm5, 112(%rdi)
	vmovaps	%xmm6, 128(%rdi)
	vmovaps	%xmm7, 144(%rdi)
	vmovaps	%xmm8, 160(%rdi)
	vmovaps	%xmm9, 176(%rdi)
	vmovaps	%xmm10, 192(%rdi)
	vmovdqa	%xmm11, 208(%rdi)
	vmovaps	-104(%rsp), %xmm4
	vmovaps	%xmm4, 224(%rdi)
	vmovdqa	%xmm13, 240(%rdi)
	vmovdqa	%xmm14, 256(%rdi)
	vmovdqa	%xmm1, 272(%rdi)
	vmovdqa	%xmm0, 288(%rdi)
	vmovdqa	%xmm3, 304(%rdi)
	vmovdqa	%xmm2, 320(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_streaming_skylake_init_key, .Lfunc_end0-haberdashery_aes256gcm_streaming_skylake_init_key
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_streaming_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_is_supported,@function
haberdashery_aes256gcm_streaming_skylake_is_supported:
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
	andl	$9175337, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcm_streaming_skylake_is_supported, .Lfunc_end1-haberdashery_aes256gcm_streaming_skylake_is_supported
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI2_1:
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
.LCPI2_2:
	.long	1
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_3:
	.long	16777216
	.section	.text.haberdashery_aes256gcm_streaming_skylake_init_state,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_init_state
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_init_state,@function
haberdashery_aes256gcm_streaming_skylake_init_state:
	.cfi_startproc
	cmpq	$12, %rcx
	jne	.LBB2_2
	vmovq	4(%rdx), %xmm0
	vpbroadcastd	.LCPI2_3(%rip), %xmm1
	vpinsrd	$0, (%rdx), %xmm1, %xmm1
	vpshufd	$80, %xmm0, %xmm0
	vpblendd	$6, %xmm0, %xmm1, %xmm0
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm1
	vpaddd	.LCPI2_2(%rip), %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vmovups	%ymm2, -56(%rsp)
	vmovups	%ymm2, -88(%rsp)
	movq	$0, -24(%rsp)
	vmovups	%ymm2, 48(%rdi)
	vmovups	-40(%rsp), %xmm2
	vmovups	%xmm2, 64(%rdi)
	movq	-24(%rsp), %rax
	movq	%rax, 80(%rdi)
	movq	-16(%rsp), %rax
	movq	%rax, 88(%rdi)
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, (%rdi)
	vmovdqa	%xmm0, 16(%rdi)
	vmovdqa	%xmm1, 32(%rdi)
	vmovaps	%xmm2, 96(%rdi)
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$12, %rcx
	sete	%al
	vzeroupper
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcm_streaming_skylake_init_state, .Lfunc_end2-haberdashery_aes256gcm_streaming_skylake_init_state
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
.LCPI3_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI3_2:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_3:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_skylake_aad_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_aad_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_aad_update,@function
haberdashery_aes256gcm_streaming_skylake_aad_update:
	.cfi_startproc
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movabsq	$-2305843009213693951, %rax
	addq	%rax, %rcx
	incq	%rax
	cmpq	%rax, %rcx
	jae	.LBB3_2
	xorl	%eax, %eax
	jmp	.LBB3_9
.LBB3_2:
	movq	%rdi, %r14
	movq	96(%rdi), %r12
	addq	%rbx, %r12
	xorl	%eax, %eax
	movabsq	$2305843009213693950, %rcx
	cmpq	%rcx, %r12
	ja	.LBB3_9
	cmpq	$0, 104(%r14)
	jne	.LBB3_9
	movq	%rsi, %r15
	vmovdqa	240(%rsi), %xmm13
	vmovdqa	(%r14), %xmm9
	movq	80(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB3_5
	leaq	(%rcx,%rbx), %r13
	cmpq	$15, %r13
	vmovdqa	%xmm9, 16(%rsp)
	ja	.LBB3_10
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	64(%r14), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%r14)
	movq	%r13, 80(%r14)
	jmp	.LBB3_8
.LBB3_5:
	movq	%rbx, %r13
	cmpq	$96, %r13
	jae	.LBB3_12
.LBB3_15:
	cmpq	$16, %r13
	jae	.LBB3_19
	jmp	.LBB3_16
.LBB3_10:
	vmovaps	64(%r14), %xmm0
	vmovaps	%xmm0, (%rsp)
	movl	$16, %eax
	subq	%rcx, %rax
	leaq	(%rsp,%rcx), %rdi
	leaq	(%rdx,%rax), %rbp
	movq	%rbx, %r13
	subq	%rax, %r13
	movq	%rdx, %rsi
	movq	%rax, %rdx
	vmovdqa	%xmm13, 32(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm13
	movq	$0, 80(%r14)
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI3_0(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI3_3(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm9
	movq	%rbp, %rdx
	cmpq	$96, %r13
	jb	.LBB3_15
.LBB3_12:
	vmovdqu	(%rdx), %xmm1
	vmovdqu	16(%rdx), %xmm2
	vmovdqu	32(%rdx), %xmm3
	vmovdqu	48(%rdx), %xmm4
	vmovdqu	64(%rdx), %xmm5
	vmovdqu	80(%rdx), %xmm8
	vmovdqa	.LCPI3_0(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm2, %xmm6
	vpshufb	%xmm0, %xmm3, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm10
	vpshufb	%xmm0, %xmm5, %xmm4
	vpshufb	%xmm0, %xmm8, %xmm5
	vpxor	%xmm1, %xmm9, %xmm9
	vmovdqa	256(%r15), %xmm1
	vmovdqa	272(%r15), %xmm2
	vmovdqa	288(%r15), %xmm3
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm8
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vmovdqa	%xmm13, %xmm14
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm12
	vpxor	%xmm8, %xmm12, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm4, %xmm12
	vpclmulqdq	$0, %xmm10, %xmm2, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm2, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm13
	vpxor	%xmm5, %xmm13, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm13
	vpxor	%xmm4, %xmm13, %xmm13
	vmovdqa	304(%r15), %xmm4
	vpxor	%xmm13, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm13
	vpxor	%xmm5, %xmm13, %xmm13
	vmovdqa	320(%r15), %xmm5
	vpclmulqdq	$17, %xmm10, %xmm2, %xmm10
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm13
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm12, %xmm10
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpxor	%xmm6, %xmm10, %xmm9
	addq	$96, %rdx
	addq	$-96, %r13
	vmovdqa	%xmm14, %xmm6
	cmpq	$96, %r13
	jb	.LBB3_14
	.p2align	4, 0x90
.LBB3_13:
	vmovdqu	(%rdx), %xmm10
	vmovdqu	32(%rdx), %xmm11
	vmovdqu	48(%rdx), %xmm12
	vmovdqu	64(%rdx), %xmm13
	vmovdqu	80(%rdx), %xmm14
	vpslldq	$8, %xmm8, %xmm15
	vpxor	%xmm7, %xmm15, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpbroadcastq	.LCPI3_3(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm10, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm11, %xmm7
	vpshufb	%xmm0, %xmm12, %xmm8
	vpshufb	%xmm0, %xmm13, %xmm10
	vpshufb	%xmm0, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm10
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm8
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vmovdqu	16(%rdx), %xmm13
	vpshufb	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm7
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm4, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm13, %xmm4, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm7, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm4, %xmm7
	vpxor	%xmm7, %xmm8, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm9
	vpxor	%xmm9, %xmm12, %xmm9
	addq	$96, %rdx
	addq	$-96, %r13
	cmpq	$95, %r13
	ja	.LBB3_13
.LBB3_14:
	vpslldq	$8, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpbroadcastq	.LCPI3_3(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm9
	vmovdqa	%xmm6, %xmm13
	cmpq	$16, %r13
	jb	.LBB3_16
.LBB3_19:
	leaq	-16(%r13), %r15
	testb	$16, %r15b
	je	.LBB3_20
	cmpq	$16, %r15
	jae	.LBB3_22
.LBB3_17:
	testq	%r15, %r15
	je	.LBB3_8
.LBB3_18:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rdx, %rsi
	movq	%r15, %rdx
	vmovdqa	%xmm9, 16(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, 48(%r14)
	vmovdqa	%xmm0, 64(%r14)
	movq	%r15, 80(%r14)
.LBB3_8:
	vmovdqa	%xmm9, (%r14)
	movq	%r12, 96(%r14)
	movq	%rbx, %rax
.LBB3_9:
	addq	$56, %rsp
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
	retq
.LBB3_20:
	.cfi_def_cfa_offset 112
	vmovdqu	(%rdx), %xmm0
	addq	$16, %rdx
	vpshufb	.LCPI3_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI3_3(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm9
	movq	%r15, %r13
	cmpq	$16, %r15
	jb	.LBB3_17
.LBB3_22:
	vmovdqa	.LCPI3_0(%rip), %xmm0
	vpbroadcastq	.LCPI3_3(%rip), %xmm1
	.p2align	4, 0x90
.LBB3_23:
	vmovdqu	(%rdx), %xmm2
	vmovdqu	16(%rdx), %xmm3
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm9, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	addq	$32, %rdx
	addq	$-32, %r13
	vpshufb	%xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm9
	cmpq	$15, %r13
	ja	.LBB3_23
.LBB3_16:
	movq	%r13, %r15
	testq	%r15, %r15
	jne	.LBB3_18
	jmp	.LBB3_8
.Lfunc_end3:
	.size	haberdashery_aes256gcm_streaming_skylake_aad_update, .Lfunc_end3-haberdashery_aes256gcm_streaming_skylake_aad_update
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
.LCPI4_1:
	.zero	8
	.quad	-4467570830351532032
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
.LCPI4_8:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_skylake_encrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_encrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_encrypt_update,@function
haberdashery_aes256gcm_streaming_skylake_encrypt_update:
	.cfi_startproc
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
	subq	$520, %rsp
	.cfi_def_cfa_offset 576
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpq	%r9, %rcx
	jne	.LBB4_3
	movq	%rcx, %rbx
	movabsq	$-68719476720, %rax
	addq	%rax, %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB4_3
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	104(%rdi), %rax
	leaq	(%rax,%rbx), %rsi
	movabsq	$68719476719, %rcx
	cmpq	%rcx, %rsi
	jbe	.LBB4_7
.LBB4_3:
	xorl	%ebx, %ebx
.LBB4_4:
	movq	%rbx, %rax
	addq	$520, %rsp
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
	vzeroupper
	retq
.LBB4_7:
	.cfi_def_cfa_offset 576
	movq	%r8, %r13
	testq	%rax, %rax
	je	.LBB4_9
	vmovdqa	(%r14), %xmm3
	movq	80(%r14), %rax
	jmp	.LBB4_12
.LBB4_9:
	cmpq	$0, 80(%r14)
	vmovdqa	(%r14), %xmm3
	je	.LBB4_11
	vmovdqa	64(%r14), %xmm0
	vmovdqa	240(%r15), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vmovdqa	%xmm3, (%r14)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%r14)
	movq	$0, 80(%r14)
.LBB4_11:
	xorl	%eax, %eax
.LBB4_12:
	movq	%rsi, 216(%rsp)
	vmovdqa	240(%r15), %xmm15
	vmovdqa	256(%r15), %xmm0
	vmovdqa	272(%r15), %xmm7
	vmovdqa	288(%r15), %xmm6
	vmovdqa	304(%r15), %xmm5
	vmovdqa	320(%r15), %xmm4
	testq	%rax, %rax
	vmovdqa	%xmm15, 64(%rsp)
	je	.LBB4_15
	leaq	(%rax,%rbx), %r12
	cmpq	$15, %r12
	vmovdqa	%xmm3, (%rsp)
	ja	.LBB4_16
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	(%rsp,%rax), %r15
	addq	$16, %r15
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r15, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	vzeroupper
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm0
	vpxor	64(%r14), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%r14)
	vmovdqa	%xmm0, 16(%rsp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	(%rsp), %xmm3
	jmp	.LBB4_28
.LBB4_15:
	movq	%rbx, %r12
	cmpq	$96, %r12
	jae	.LBB4_17
.LBB4_22:
	cmpq	$16, %r12
	jb	.LBB4_23
.LBB4_24:
	vmovaps	(%r15), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	16(%r15), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	32(%r15), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	48(%r15), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	64(%r15), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	80(%r15), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	96(%r15), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovdqa	112(%r15), %xmm7
	vmovdqa	128(%r15), %xmm8
	vmovdqa	144(%r15), %xmm9
	vmovdqa	160(%r15), %xmm10
	vmovdqa	176(%r15), %xmm11
	vmovdqa	192(%r15), %xmm12
	vmovdqa	208(%r15), %xmm14
	vmovdqa	224(%r15), %xmm6
	vmovdqa	32(%r14), %xmm13
	vmovdqa	.LCPI4_0(%rip), %xmm0
	vpbroadcastq	.LCPI4_8(%rip), %xmm1
	.p2align	4, 0x90
.LBB4_25:
	vpshufb	%xmm0, %xmm13, %xmm2
	vpxor	64(%rsp), %xmm2, %xmm2
	vaesenc	(%rsp), %xmm2, %xmm2
	vaesenc	32(%rsp), %xmm2, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenc	160(%rsp), %xmm2, %xmm2
	vaesenc	144(%rsp), %xmm2, %xmm2
	vaesenc	192(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	(%rdx), %xmm2, %xmm2
	vmovdqu	%xmm2, (%r13)
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	addq	$16, %rdx
	addq	$16, %r13
	addq	$-16, %r12
	vpaddd	.LCPI4_2(%rip), %xmm13, %xmm13
	cmpq	$15, %r12
	ja	.LBB4_25
	vmovdqa	%xmm13, 32(%r14)
	testq	%r12, %r12
	jne	.LBB4_27
	jmp	.LBB4_29
.LBB4_16:
	movl	$16, %ebp
	subq	%rax, %rbp
	leaq	(%rdx,%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%r13, %rcx
	addq	%rbp, %rcx
	movq	%rcx, 48(%rsp)
	movq	%rbx, %r12
	subq	%rbp, %r12
	vmovdqa	%xmm0, 176(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	(%rsp,%rax), %rdi
	addq	$16, %rdi
	movq	%rdi, 160(%rsp)
	movq	%rdx, %rsi
	movq	%rbp, %rdx
	vmovdqa	%xmm4, 128(%rsp)
	vmovdqa	%xmm5, 112(%rsp)
	vmovdqa	%xmm6, 96(%rsp)
	vmovdqa	%xmm7, 80(%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	16(%rsp), %xmm0
	vxorps	64(%r14), %xmm0, %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	%xmm0, 64(%r14)
	vmovaps	%xmm0, 16(%rsp)
	movq	%r13, %rdi
	movq	160(%rsp), %rsi
	movq	%rbp, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	80(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm6
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm4
	vmovdqa	64(%rsp), %xmm15
	movq	$0, 80(%r14)
	vmovdqa	144(%rsp), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vmovdqa	176(%rsp), %xmm0
	movq	48(%rsp), %r13
	movq	32(%rsp), %rdx
	cmpq	$96, %r12
	jb	.LBB4_22
.LBB4_17:
	vmovdqa	%xmm0, 176(%rsp)
	vmovdqa	%xmm7, 80(%rsp)
	vmovdqa	%xmm6, 96(%rsp)
	vmovdqa	%xmm5, 112(%rsp)
	vmovdqa	%xmm3, (%rsp)
	vmovdqa	%xmm4, 128(%rsp)
	vmovups	(%rdx), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovdqu	32(%rdx), %xmm3
	vmovdqu	48(%rdx), %xmm5
	vmovdqu	64(%rdx), %xmm6
	vmovdqu	80(%rdx), %xmm7
	vmovdqa	32(%r14), %xmm0
	vmovdqa	.LCPI4_0(%rip), %xmm14
	vpshufb	%xmm14, %xmm0, %xmm8
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm1
	vpaddd	.LCPI4_3(%rip), %xmm0, %xmm9
	vpshufb	%xmm14, %xmm1, %xmm10
	vpshufb	%xmm14, %xmm9, %xmm11
	vpaddd	.LCPI4_4(%rip), %xmm0, %xmm1
	vpaddd	.LCPI4_5(%rip), %xmm0, %xmm9
	vpshufb	%xmm14, %xmm1, %xmm12
	vpshufb	%xmm14, %xmm9, %xmm13
	vpaddd	.LCPI4_6(%rip), %xmm0, %xmm1
	vpaddd	.LCPI4_7(%rip), %xmm0, %xmm0
	vpshufb	%xmm14, %xmm1, %xmm14
	vmovdqa	%xmm0, 32(%r14)
	vmovdqa	(%r15), %xmm4
	vmovaps	16(%r15), %xmm2
	vmovdqa	32(%r15), %xmm1
	vpxor	%xmm4, %xmm8, %xmm0
	vpxor	%xmm4, %xmm10, %xmm9
	vpxor	%xmm4, %xmm11, %xmm10
	vpxor	%xmm4, %xmm12, %xmm11
	vpxor	%xmm4, %xmm13, %xmm12
	vpxor	%xmm4, %xmm14, %xmm8
	vmovaps	%xmm2, %xmm14
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovdqa	48(%r15), %xmm13
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm12, %xmm12
	vaesenc	%xmm13, %xmm8, %xmm8
	#NO_APP
	vmovaps	64(%r15), %xmm2
	vmovaps	%xmm2, 448(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%r15), %xmm2
	vmovaps	%xmm2, 432(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%r15), %xmm2
	vmovaps	%xmm2, 416(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	112(%r15), %xmm2
	vmovaps	%xmm2, 400(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%r15), %xmm2
	vmovaps	%xmm2, 384(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	144(%r15), %xmm2
	vmovaps	%xmm2, 368(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%r15), %xmm2
	vmovaps	%xmm2, 352(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	176(%r15), %xmm2
	vmovaps	%xmm2, 336(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%r15), %xmm2
	vmovaps	%xmm2, 320(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%r15), %xmm2
	vmovaps	%xmm2, 304(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	vmovaps	224(%r15), %xmm2
	vmovaps	%xmm2, 288(%rsp)
	#APP
	vaesenclast	%xmm2, %xmm0, %xmm0
	vaesenclast	%xmm2, %xmm9, %xmm9
	vaesenclast	%xmm2, %xmm10, %xmm10
	vaesenclast	%xmm2, %xmm11, %xmm11
	vaesenclast	%xmm2, %xmm12, %xmm12
	vaesenclast	%xmm2, %xmm8, %xmm8
	#NO_APP
	vpxor	%xmm7, %xmm8, %xmm8
	vpxor	%xmm6, %xmm12, %xmm7
	vpxor	%xmm5, %xmm11, %xmm5
	vpxor	%xmm3, %xmm10, %xmm3
	vpxor	48(%rsp), %xmm9, %xmm2
	vpxor	32(%rsp), %xmm0, %xmm11
	leaq	96(%rdx), %rcx
	leaq	96(%r13), %rax
	vmovdqu	%xmm11, (%r13)
	vmovdqu	%xmm2, 16(%r13)
	vmovdqu	%xmm3, 32(%r13)
	vmovdqu	%xmm5, 48(%r13)
	addq	$-96, %r12
	vmovdqu	%xmm7, 64(%r13)
	vmovdqu	%xmm8, 80(%r13)
	cmpq	$96, %r12
	jb	.LBB4_21
	vmovdqa	%xmm4, 256(%rsp)
	vmovdqa	%xmm1, 240(%rsp)
	vmovdqa	(%rsp), %xmm1
	vmovdqa	%xmm13, 224(%rsp)
	vmovaps	%xmm14, 272(%rsp)
	.p2align	4, 0x90
.LBB4_19:
	vmovdqa	%xmm3, 464(%rsp)
	vmovdqa	%xmm2, 480(%rsp)
	vmovups	(%rcx), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovups	16(%rcx), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovups	32(%rcx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovups	48(%rcx), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovups	64(%rcx), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovups	80(%rcx), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovdqa	32(%r14), %xmm0
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm4
	vmovdqa	.LCPI4_0(%rip), %xmm2
	vpshufb	%xmm2, %xmm4, %xmm4
	vpaddd	.LCPI4_7(%rip), %xmm0, %xmm6
	vmovdqa	%xmm6, 32(%r14)
	vpaddd	.LCPI4_3(%rip), %xmm0, %xmm6
	vpshufb	%xmm2, %xmm6, %xmm6
	vpshufb	%xmm2, %xmm11, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vmovdqa	%xmm1, 496(%rsp)
	vpaddd	.LCPI4_4(%rip), %xmm0, %xmm9
	vpshufb	%xmm2, %xmm9, %xmm9
	vpaddd	.LCPI4_5(%rip), %xmm0, %xmm10
	vpshufb	%xmm2, %xmm10, %xmm10
	vpshufb	%xmm2, %xmm0, %xmm11
	vpaddd	.LCPI4_6(%rip), %xmm0, %xmm0
	vpshufb	%xmm2, %xmm0, %xmm13
	vpshufb	%xmm2, %xmm8, %xmm15
	vmovdqa	256(%rsp), %xmm1
	vpxor	%xmm1, %xmm11, %xmm11
	vpxor	%xmm4, %xmm1, %xmm4
	vpxor	%xmm6, %xmm1, %xmm6
	vpxor	%xmm1, %xmm9, %xmm0
	vpxor	%xmm1, %xmm10, %xmm9
	vpxor	%xmm1, %xmm13, %xmm8
	#APP
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm8, %xmm8
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm13, %xmm13, %xmm13
	vxorps	%xmm14, %xmm14, %xmm14
	vmovaps	64(%rsp), %xmm1
	vmovaps	240(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm12
	vpxor	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm12
	vpxor	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm12
	vpxor	%xmm12, %xmm13, %xmm13
	#NO_APP
	vmovdqa	64(%rsp), %xmm15
	vpshufb	%xmm2, %xmm7, %xmm7
	vmovaps	224(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	448(%rsp), %xmm1
	vmovaps	176(%rsp), %xmm3
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm12
	vpxor	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm12
	vpxor	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm12
	vpxor	%xmm12, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm2, %xmm5, %xmm5
	vmovaps	432(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	416(%rsp), %xmm1
	vmovdqa	80(%rsp), %xmm12
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm5, %xmm7
	vpxor	%xmm7, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm5, %xmm7
	vpxor	%xmm7, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm12, %xmm5, %xmm7
	vpxor	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm12, %xmm5, %xmm7
	vpxor	%xmm7, %xmm13, %xmm13
	#NO_APP
	vmovdqa	464(%rsp), %xmm1
	vpshufb	%xmm2, %xmm1, %xmm3
	vmovaps	400(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	384(%rsp), %xmm1
	vmovaps	96(%rsp), %xmm7
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm13, %xmm13
	#NO_APP
	vmovdqa	480(%rsp), %xmm1
	vpshufb	%xmm2, %xmm1, %xmm2
	vmovaps	368(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	352(%rsp), %xmm1
	vmovaps	112(%rsp), %xmm5
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm3
	vpxor	%xmm3, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm3
	vpxor	%xmm3, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovaps	336(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	320(%rsp), %xmm1
	vmovaps	128(%rsp), %xmm3
	vmovaps	496(%rsp), %xmm5
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm3, %xmm5, %xmm2
	vpxor	%xmm2, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm3, %xmm5, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm3, %xmm5, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovaps	304(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovdqa	288(%rsp), %xmm1
	#APP
	vaesenclast	%xmm1, %xmm11, %xmm11
	vaesenclast	%xmm1, %xmm4, %xmm4
	vaesenclast	%xmm1, %xmm6, %xmm6
	vaesenclast	%xmm1, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm9, %xmm9
	vaesenclast	%xmm1, %xmm8, %xmm8
	#NO_APP
	vpxor	192(%rsp), %xmm8, %xmm8
	vpxor	144(%rsp), %xmm9, %xmm7
	vpxor	160(%rsp), %xmm0, %xmm5
	vpxor	48(%rsp), %xmm6, %xmm3
	vpxor	32(%rsp), %xmm4, %xmm2
	vpxor	(%rsp), %xmm11, %xmm11
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm13, %xmm1, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpunpckhqdq	%xmm1, %xmm13, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vmovaps	272(%rsp), %xmm14
	vpbroadcastq	.LCPI4_8(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm0, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm1
	vmovdqu	%xmm11, (%rax)
	vmovdqu	%xmm2, 16(%rax)
	vmovdqu	%xmm3, 32(%rax)
	vmovdqu	%xmm5, 48(%rax)
	vmovdqu	%xmm7, 64(%rax)
	addq	$96, %rcx
	vmovdqu	%xmm8, 80(%rax)
	addq	$96, %rax
	addq	$-96, %r12
	cmpq	$95, %r12
	ja	.LBB4_19
	vmovdqa	%xmm1, (%rsp)
.LBB4_21:
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm13
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	.LCPI4_0(%rip), %xmm0
	vmovdqa	%xmm0, %xmm6
	vpshufb	%xmm0, %xmm11, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpshufb	%xmm6, %xmm2, %xmm1
	vpshufb	%xmm6, %xmm3, %xmm2
	vpshufb	%xmm6, %xmm5, %xmm3
	vpshufb	%xmm6, %xmm7, %xmm4
	vpshufb	%xmm6, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vmovdqa	176(%rsp), %xmm11
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	movq	%rax, %r13
	movq	%rcx, %rdx
	cmpq	$16, %r12
	jae	.LBB4_24
.LBB4_23:
	testq	%r12, %r12
	je	.LBB4_29
.LBB4_27:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rdx, %rsi
	movq	%r12, %rdx
	vmovdqa	%xmm3, (%rsp)
	vzeroupper
	callq	*%rbp
	vmovdqa	32(%r14), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%r14)
	vpxor	(%r15), %xmm1, %xmm0
	vaesenc	16(%r15), %xmm0, %xmm0
	vaesenc	32(%r15), %xmm0, %xmm0
	vaesenc	48(%r15), %xmm0, %xmm0
	vaesenc	64(%r15), %xmm0, %xmm0
	vaesenc	80(%r15), %xmm0, %xmm0
	vaesenc	96(%r15), %xmm0, %xmm0
	vaesenc	112(%r15), %xmm0, %xmm0
	vaesenc	128(%r15), %xmm0, %xmm0
	vaesenc	144(%r15), %xmm0, %xmm0
	vaesenc	160(%r15), %xmm0, %xmm0
	vaesenc	176(%r15), %xmm0, %xmm0
	vaesenc	192(%r15), %xmm0, %xmm0
	vaesenc	208(%r15), %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm1
	vaesenclast	224(%r15), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%rbp
	vmovdqa	(%rsp), %xmm3
	vmovaps	64(%rsp), %xmm0
	vmovaps	%xmm0, 48(%r14)
	vmovdqa	32(%rsp), %xmm0
	vmovdqa	%xmm0, 64(%r14)
.LBB4_28:
	movq	%r12, 80(%r14)
.LBB4_29:
	vmovdqa	%xmm3, (%r14)
	movq	216(%rsp), %rax
	movq	%rax, 104(%r14)
	jmp	.LBB4_4
.Lfunc_end4:
	.size	haberdashery_aes256gcm_streaming_skylake_encrypt_update, .Lfunc_end4-haberdashery_aes256gcm_streaming_skylake_encrypt_update
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
.LCPI5_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI5_2:
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
.LCPI5_3:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_4:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_skylake_encrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_encrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_encrypt_finalize,@function
haberdashery_aes256gcm_streaming_skylake_encrypt_finalize:
	.cfi_startproc
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	vmovdqa	240(%rsi), %xmm4
	vmovdqa	(%rdi), %xmm5
	movq	104(%rdi), %rbp
	testq	%rbp, %rbp
	je	.LBB5_1
	vmovdqa	%xmm5, 16(%rsp)
	vmovdqa	%xmm4, 32(%rsp)
	vmovdqa	64(%r12), %xmm0
	movq	80(%r12), %r13
	vmovdqa	%xmm0, 48(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	48(%rsp), %rsi
	movq	%r13, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r13, %r13
	je	.LBB5_4
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_4(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	jmp	.LBB5_6
.LBB5_1:
	cmpq	$0, 80(%r12)
	je	.LBB5_7
	vmovdqa	64(%r12), %xmm0
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_4(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%r12)
	jmp	.LBB5_6
.LBB5_4:
	vmovdqa	32(%rsp), %xmm4
	vmovdqa	16(%rsp), %xmm5
.LBB5_6:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%r12)
	movq	$0, 80(%r12)
.LBB5_7:
	testq	%rbx, %rbx
	je	.LBB5_8
	vmovq	96(%r12), %xmm0
	vmovq	%rbp, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI5_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	(%r15), %xmm3
	vpxor	16(%r12), %xmm3, %xmm3
	vaesenc	16(%r15), %xmm3, %xmm3
	vaesenc	32(%r15), %xmm3, %xmm3
	vaesenc	48(%r15), %xmm3, %xmm3
	vaesenc	64(%r15), %xmm3, %xmm3
	vaesenc	80(%r15), %xmm3, %xmm3
	vaesenc	96(%r15), %xmm3, %xmm3
	vaesenc	112(%r15), %xmm3, %xmm3
	vaesenc	128(%r15), %xmm3, %xmm3
	vaesenc	144(%r15), %xmm3, %xmm3
	vaesenc	160(%r15), %xmm3, %xmm3
	vaesenc	176(%r15), %xmm3, %xmm3
	vaesenc	192(%r15), %xmm3, %xmm3
	vaesenc	208(%r15), %xmm3, %xmm3
	vaesenclast	224(%r15), %xmm3, %xmm3
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpshufb	.LCPI5_2(%rip), %xmm2, %xmm2
	vpshufb	.LCPI5_3(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	cmpq	$16, %rbx
	jae	.LBB5_10
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB5_12
.LBB5_8:
	xorl	%ebx, %ebx
	jmp	.LBB5_12
.LBB5_10:
	vmovdqu	%xmm0, (%r14)
	movl	$16, %ebx
.LBB5_12:
	movq	%rbx, %rax
	addq	$72, %rsp
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
	vzeroupper
	retq
.Lfunc_end5:
	.size	haberdashery_aes256gcm_streaming_skylake_encrypt_finalize, .Lfunc_end5-haberdashery_aes256gcm_streaming_skylake_encrypt_finalize
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
.LCPI6_1:
	.zero	8
	.quad	-4467570830351532032
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
.LCPI6_8:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_skylake_decrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_decrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_decrypt_update,@function
haberdashery_aes256gcm_streaming_skylake_decrypt_update:
	.cfi_startproc
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
	subq	$472, %rsp
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpq	%r9, %rcx
	jne	.LBB6_3
	movq	%rcx, %rbx
	movabsq	$-68719476720, %rax
	addq	%rax, %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB6_3
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	104(%rdi), %rax
	leaq	(%rax,%rbx), %rsi
	movabsq	$68719476719, %rcx
	cmpq	%rcx, %rsi
	jbe	.LBB6_6
.LBB6_3:
	xorl	%ebx, %ebx
.LBB6_27:
	movq	%rbx, %rax
	addq	$472, %rsp
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
	vzeroupper
	retq
.LBB6_6:
	.cfi_def_cfa_offset 528
	movq	%r8, %r12
	testq	%rax, %rax
	je	.LBB6_8
	vmovdqa	(%r14), %xmm5
	movq	80(%r14), %rax
	jmp	.LBB6_11
.LBB6_8:
	cmpq	$0, 80(%r14)
	vmovdqa	(%r14), %xmm5
	je	.LBB6_10
	vmovdqa	64(%r14), %xmm0
	vmovdqa	240(%r15), %xmm1
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI6_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	vmovdqa	%xmm5, (%r14)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%r14)
	movq	$0, 80(%r14)
.LBB6_10:
	xorl	%eax, %eax
.LBB6_11:
	movq	%rsi, 184(%rsp)
	vmovdqa	240(%r15), %xmm6
	vmovaps	256(%r15), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	272(%r15), %xmm0
	vmovaps	%xmm0, 448(%rsp)
	vmovaps	288(%r15), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovdqa	304(%r15), %xmm4
	vmovdqa	320(%r15), %xmm0
	testq	%rax, %rax
	vmovdqa	%xmm6, 48(%rsp)
	je	.LBB6_14
	leaq	(%rax,%rbx), %r13
	cmpq	$15, %r13
	vmovdqa	%xmm5, 16(%rsp)
	ja	.LBB6_15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	leaq	(%rsp,%rax), %r15
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r15, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	vzeroupper
	callq	*%rbp
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%r14), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%r14)
	vmovdqa	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm5
	jmp	.LBB6_25
.LBB6_14:
	movq	%rbx, %r13
	cmpq	$96, %r13
	jae	.LBB6_16
.LBB6_19:
	cmpq	$16, %r13
	jb	.LBB6_20
.LBB6_21:
	vmovaps	(%r15), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	16(%r15), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	32(%r15), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	48(%r15), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	64(%r15), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	80(%r15), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	96(%r15), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovdqa	112(%r15), %xmm7
	vmovdqa	128(%r15), %xmm8
	vmovdqa	144(%r15), %xmm9
	vmovdqa	160(%r15), %xmm10
	vmovdqa	176(%r15), %xmm11
	vmovdqa	192(%r15), %xmm12
	vmovdqa	208(%r15), %xmm14
	vmovdqa	224(%r15), %xmm15
	vmovdqa	32(%r14), %xmm13
	vmovdqa	.LCPI6_0(%rip), %xmm0
	vpbroadcastq	.LCPI6_8(%rip), %xmm1
	.p2align	4, 0x90
.LBB6_22:
	vmovdqu	(%rdx), %xmm2
	vpshufb	%xmm0, %xmm2, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm6, %xmm5
	vpclmulqdq	$1, 48(%rsp), %xmm3, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	48(%rsp), %xmm6
	vpclmulqdq	$17, %xmm3, %xmm6, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm13, %xmm5
	vpxor	16(%rsp), %xmm5, %xmm5
	vaesenc	32(%rsp), %xmm5, %xmm5
	vaesenc	96(%rsp), %xmm5, %xmm5
	vaesenc	80(%rsp), %xmm5, %xmm5
	vaesenc	64(%rsp), %xmm5, %xmm5
	vaesenc	160(%rsp), %xmm5, %xmm5
	vaesenc	144(%rsp), %xmm5, %xmm5
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenclast	%xmm15, %xmm5, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vmovdqu	%xmm2, (%r12)
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm2
	vpxor	%xmm3, %xmm2, %xmm5
	addq	$16, %r12
	addq	$-16, %r13
	addq	$16, %rdx
	vpaddd	.LCPI6_2(%rip), %xmm13, %xmm13
	cmpq	$15, %r13
	ja	.LBB6_22
	vmovdqa	%xmm13, 32(%r14)
	testq	%r13, %r13
	jne	.LBB6_24
	jmp	.LBB6_26
.LBB6_15:
	movl	$16, %ebp
	subq	%rax, %rbp
	leaq	(%rdx,%rbp), %rcx
	movq	%rcx, 32(%rsp)
	leaq	(%r12,%rbp), %rcx
	movq	%rcx, 96(%rsp)
	movq	%rbx, %r13
	subq	%rbp, %r13
	vmovdqa	%xmm0, 112(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	leaq	(%rsp,%rax), %rdi
	movq	%rdi, 80(%rsp)
	movq	%rdx, %rsi
	movq	%rbp, %rdx
	vmovdqa	%xmm4, 128(%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	(%rsp), %xmm0
	vxorps	64(%r14), %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	%xmm0, 64(%r14)
	vmovaps	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	80(%rsp), %rsi
	movq	%rbp, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	128(%rsp), %xmm4
	vmovdqa	48(%rsp), %xmm6
	movq	$0, 80(%r14)
	vmovdqa	64(%rsp), %xmm0
	vpxor	48(%r14), %xmm0, %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI6_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	vmovdqa	112(%rsp), %xmm0
	movq	96(%rsp), %r12
	movq	32(%rsp), %rdx
	cmpq	$96, %r13
	jb	.LBB6_19
.LBB6_16:
	vmovaps	(%r15), %xmm1
	vmovaps	%xmm1, 416(%rsp)
	vmovaps	16(%r15), %xmm1
	vmovaps	%xmm1, 400(%rsp)
	vmovaps	32(%r15), %xmm1
	vmovaps	%xmm1, 384(%rsp)
	vmovaps	48(%r15), %xmm1
	vmovaps	%xmm1, 368(%rsp)
	vmovaps	64(%r15), %xmm1
	vmovaps	%xmm1, 352(%rsp)
	vmovaps	80(%r15), %xmm1
	vmovaps	%xmm1, 336(%rsp)
	vmovaps	96(%r15), %xmm1
	vmovaps	%xmm1, 320(%rsp)
	vmovaps	112(%r15), %xmm1
	vmovaps	%xmm1, 304(%rsp)
	vmovaps	128(%r15), %xmm1
	vmovaps	%xmm1, 288(%rsp)
	vmovaps	144(%r15), %xmm1
	vmovaps	%xmm1, 272(%rsp)
	vmovaps	160(%r15), %xmm1
	vmovaps	%xmm1, 256(%rsp)
	vmovaps	176(%r15), %xmm1
	vmovaps	%xmm1, 240(%rsp)
	vmovaps	192(%r15), %xmm1
	vmovaps	%xmm1, 224(%rsp)
	vmovaps	208(%r15), %xmm1
	vmovaps	%xmm1, 208(%rsp)
	vmovdqa	224(%r15), %xmm1
	vmovdqa	%xmm1, 192(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	vmovdqa	%xmm4, 128(%rsp)
	.p2align	4, 0x90
.LBB6_17:
	vmovdqu	(%rdx), %xmm3
	vmovdqa	%xmm3, 32(%rsp)
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovups	32(%rdx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	48(%rdx), %xmm8
	vmovdqu	64(%rdx), %xmm7
	vmovdqa	%xmm7, 160(%rsp)
	vmovdqu	80(%rdx), %xmm6
	vmovdqa	%xmm6, 96(%rsp)
	vmovdqa	32(%r14), %xmm0
	vmovdqa	.LCPI6_0(%rip), %xmm4
	vpshufb	%xmm4, %xmm0, %xmm1
	vpaddd	.LCPI6_2(%rip), %xmm0, %xmm2
	vpshufb	%xmm4, %xmm2, %xmm2
	vpaddd	.LCPI6_3(%rip), %xmm0, %xmm9
	vpshufb	%xmm4, %xmm9, %xmm11
	vpaddd	.LCPI6_4(%rip), %xmm0, %xmm9
	vpshufb	%xmm4, %xmm9, %xmm12
	vpaddd	.LCPI6_5(%rip), %xmm0, %xmm9
	vpshufb	%xmm4, %xmm9, %xmm13
	vpaddd	.LCPI6_6(%rip), %xmm0, %xmm9
	vpshufb	%xmm4, %xmm9, %xmm14
	vpaddd	.LCPI6_7(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%r14)
	vpshufb	%xmm4, %xmm3, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	vpshufb	%xmm4, %xmm6, %xmm3
	vmovdqa	416(%rsp), %xmm0
	vpxor	%xmm1, %xmm0, %xmm9
	vpxor	%xmm2, %xmm0, %xmm10
	vpxor	%xmm0, %xmm11, %xmm11
	vpxor	%xmm0, %xmm12, %xmm12
	vpxor	%xmm0, %xmm13, %xmm13
	vpxor	%xmm0, %xmm14, %xmm14
	vmovaps	400(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm2, %xmm2, %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	vmovaps	384(%rsp), %xmm6
	vmovaps	48(%rsp), %xmm15
	#APP
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	368(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm4, %xmm7, %xmm3
	vmovaps	352(%rsp), %xmm6
	vmovaps	144(%rsp), %xmm7
	#APP
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	336(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm4, %xmm8, %xmm3
	vmovdqa	%xmm8, %xmm7
	vmovaps	320(%rsp), %xmm6
	vmovaps	448(%rsp), %xmm8
	#APP
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	304(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vmovdqa	16(%rsp), %xmm3
	vpshufb	%xmm4, %xmm3, %xmm3
	vmovaps	288(%rsp), %xmm6
	vmovdqa	432(%rsp), %xmm15
	#APP
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	272(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vmovdqa	64(%rsp), %xmm8
	vpshufb	%xmm4, %xmm8, %xmm3
	vmovaps	256(%rsp), %xmm6
	vmovaps	128(%rsp), %xmm4
	#APP
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm3, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	240(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vmovaps	224(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm4
	vmovaps	80(%rsp), %xmm6
	#APP
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm6, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm6, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpunpcklqdq	%xmm2, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpunpckhqdq	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI6_8(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm4
	vmovaps	208(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovaps	192(%rsp), %xmm0
	#APP
	vaesenclast	%xmm0, %xmm9, %xmm9
	vaesenclast	%xmm0, %xmm10, %xmm10
	vaesenclast	%xmm0, %xmm11, %xmm11
	vaesenclast	%xmm0, %xmm12, %xmm12
	vaesenclast	%xmm0, %xmm13, %xmm13
	vaesenclast	%xmm0, %xmm14, %xmm14
	#NO_APP
	vpxor	32(%rsp), %xmm9, %xmm0
	vpxor	%xmm8, %xmm10, %xmm1
	vpxor	16(%rsp), %xmm11, %xmm2
	vpxor	%xmm7, %xmm12, %xmm3
	vpxor	160(%rsp), %xmm13, %xmm5
	vpxor	96(%rsp), %xmm14, %xmm6
	vmovdqu	%xmm0, (%r12)
	vmovdqu	%xmm1, 16(%r12)
	vmovdqu	%xmm2, 32(%r12)
	vmovdqu	%xmm3, 48(%r12)
	vmovdqu	%xmm5, 64(%r12)
	vmovdqa	%xmm4, %xmm5
	vmovdqu	%xmm6, 80(%r12)
	addq	$96, %rdx
	addq	$96, %r12
	addq	$-96, %r13
	cmpq	$95, %r13
	ja	.LBB6_17
	vmovdqa	48(%rsp), %xmm6
	cmpq	$16, %r13
	jae	.LBB6_21
.LBB6_20:
	testq	%r13, %r13
	je	.LBB6_26
.LBB6_24:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rdx, %rsi
	movq	%r13, %rdx
	vmovdqa	%xmm5, 16(%rsp)
	vzeroupper
	callq	*%rbp
	vmovdqa	32(%r14), %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI6_2(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%r14)
	vpxor	(%r15), %xmm1, %xmm0
	vaesenc	16(%r15), %xmm0, %xmm0
	vaesenc	32(%r15), %xmm0, %xmm0
	vaesenc	48(%r15), %xmm0, %xmm0
	vaesenc	64(%r15), %xmm0, %xmm0
	vaesenc	80(%r15), %xmm0, %xmm0
	vaesenc	96(%r15), %xmm0, %xmm0
	vaesenc	112(%r15), %xmm0, %xmm0
	vaesenc	128(%r15), %xmm0, %xmm0
	vaesenc	144(%r15), %xmm0, %xmm0
	vaesenc	160(%r15), %xmm0, %xmm0
	vaesenc	176(%r15), %xmm0, %xmm0
	vaesenc	192(%r15), %xmm0, %xmm0
	vaesenc	208(%r15), %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm1
	vaesenclast	224(%r15), %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm5
	vmovaps	48(%rsp), %xmm0
	vmovaps	%xmm0, 48(%r14)
	vmovdqa	32(%rsp), %xmm0
	vmovdqa	%xmm0, 64(%r14)
.LBB6_25:
	movq	%r13, 80(%r14)
.LBB6_26:
	vmovdqa	%xmm5, (%r14)
	movq	184(%rsp), %rax
	movq	%rax, 104(%r14)
	jmp	.LBB6_27
.Lfunc_end6:
	.size	haberdashery_aes256gcm_streaming_skylake_decrypt_update, .Lfunc_end6-haberdashery_aes256gcm_streaming_skylake_decrypt_update
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
.LCPI7_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI7_2:
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
.LCPI7_3:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_4:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_skylake_decrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylake_decrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylake_decrypt_finalize,@function
haberdashery_aes256gcm_streaming_skylake_decrypt_finalize:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$16, %rcx
	jne	.LBB7_9
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	vmovdqu	(%rdx), %xmm5
	vmovdqa	240(%rsi), %xmm4
	vmovdqa	(%rdi), %xmm6
	movq	104(%rdi), %r12
	testq	%r12, %r12
	je	.LBB7_2
	vmovdqa	%xmm6, (%rsp)
	vmovdqa	%xmm4, 16(%rsp)
	vmovdqa	%xmm5, 32(%rsp)
	leaq	48(%r14), %r13
	vmovdqa	48(%r14), %xmm0
	vpxor	64(%r14), %xmm0, %xmm0
	movq	80(%r14), %r15
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.LBB7_5
	vmovdqa	48(%rsp), %xmm0
	vpshufb	.LCPI7_0(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI7_4(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm6
	vmovdqa	32(%rsp), %xmm5
	jmp	.LBB7_7
.LBB7_2:
	cmpq	$0, 80(%r14)
	je	.LBB7_8
	leaq	48(%r14), %r13
	vmovdqa	64(%r14), %xmm0
	vpshufb	.LCPI7_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI7_4(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%r14)
	jmp	.LBB7_7
.LBB7_5:
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm6
.LBB7_7:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, (%r13)
	movq	$0, 32(%r13)
.LBB7_8:
	vmovq	96(%r14), %xmm0
	vmovq	%r12, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI7_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	(%rbx), %xmm3
	vpxor	16(%r14), %xmm3, %xmm3
	vaesenc	16(%rbx), %xmm3, %xmm3
	vaesenc	32(%rbx), %xmm3, %xmm3
	vaesenc	48(%rbx), %xmm3, %xmm3
	vaesenc	64(%rbx), %xmm3, %xmm3
	vaesenc	80(%rbx), %xmm3, %xmm3
	vaesenc	96(%rbx), %xmm3, %xmm3
	vaesenc	112(%rbx), %xmm3, %xmm3
	vaesenc	128(%rbx), %xmm3, %xmm3
	vaesenc	144(%rbx), %xmm3, %xmm3
	vaesenc	160(%rbx), %xmm3, %xmm3
	vaesenc	176(%rbx), %xmm3, %xmm3
	vaesenc	192(%rbx), %xmm3, %xmm3
	vaesenc	208(%rbx), %xmm3, %xmm3
	vaesenclast	224(%rbx), %xmm3, %xmm3
	vpshufb	.LCPI7_0(%rip), %xmm0, %xmm0
	vpshufb	.LCPI7_2(%rip), %xmm2, %xmm2
	vpshufb	.LCPI7_3(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
	addq	$80, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.LBB7_9:
	vzeroupper
	retq
.Lfunc_end7:
	.size	haberdashery_aes256gcm_streaming_skylake_decrypt_finalize, .Lfunc_end7-haberdashery_aes256gcm_streaming_skylake_decrypt_finalize
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

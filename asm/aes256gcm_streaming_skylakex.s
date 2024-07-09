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
	vmovupd	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI0_3(%rip), %xmm16
	vpshufb	%xmm16, %xmm1, %xmm2
	vpbroadcastq	.LCPI0_1(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm3
	vpternlogq	$150, %xmm4, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm0, %xmm14
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm2
	vpslldq	$12, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	vpshufd	$255, %xmm3, %xmm0
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm0, %xmm2
	vbroadcastss	.LCPI0_2(%rip), %xmm5
	vpternlogq	$150, %xmm4, %xmm1, %xmm2
	vbroadcastss	.LCPI0_3(%rip), %xmm0
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpslldq	$12, %xmm3, %xmm6
	vpternlogq	$150, %xmm1, %xmm4, %xmm6
	vpshufb	%xmm0, %xmm2, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm3, %xmm6, %xmm8
	#NO_APP
	vbroadcastss	.LCPI0_4(%rip), %xmm1
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vpslldq	$4, %xmm2, %xmm4
	vpslldq	$8, %xmm2, %xmm5
	vpslldq	$12, %xmm2, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm8, %xmm7
	vaesenclast	%xmm13, %xmm7, %xmm7
	vpternlogq	$150, %xmm2, %xmm6, %xmm7
	#NO_APP
	vmovaps	%xmm7, %xmm4
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vpslldq	$4, %xmm8, %xmm5
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm9
	vaesenclast	%xmm1, %xmm9, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	#NO_APP
	vmovaps	%xmm8, %xmm17
	vmovaps	%xmm9, %xmm5
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm6
	vpslldq	$12, %xmm4, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufd	$255, %xmm9, %xmm8
	vaesenclast	%xmm13, %xmm8, %xmm8
	vpternlogq	$150, %xmm4, %xmm7, %xmm8
	#NO_APP
	vmovaps	%xmm4, %xmm18
	vbroadcastss	.LCPI0_5(%rip), %xmm1
	vmovaps	%xmm8, %xmm4
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vpslldq	$4, %xmm5, %xmm7
	vpslldq	$8, %xmm5, %xmm8
	vpslldq	$12, %xmm5, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpshufb	%xmm0, %xmm4, %xmm6
	vaesenclast	%xmm1, %xmm6, %xmm6
	vpternlogq	$150, %xmm5, %xmm9, %xmm6
	#NO_APP
	vmovaps	%xmm5, %xmm19
	vmovaps	%xmm6, %xmm5
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm1, %xmm8, %xmm9
	vpshufd	$255, %xmm5, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm6
	vpternlogq	$150, %xmm4, %xmm9, %xmm6
	#NO_APP
	vmovaps	%xmm4, %xmm20
	vbroadcastss	.LCPI0_6(%rip), %xmm1
	vmovaps	%xmm6, %xmm4
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vpslldq	$4, %xmm5, %xmm9
	vpslldq	$8, %xmm5, %xmm10
	vpslldq	$12, %xmm5, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm0, %xmm6, %xmm8
	vaesenclast	%xmm1, %xmm8, %xmm8
	vpternlogq	$150, %xmm5, %xmm11, %xmm8
	#NO_APP
	vmovaps	%xmm5, %xmm21
	vbroadcastss	.LCPI0_7(%rip), %xmm1
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vpslldq	$4, %xmm6, %xmm10
	vpslldq	$8, %xmm6, %xmm11
	vpslldq	$12, %xmm6, %xmm15
	vpternlogq	$150, %xmm10, %xmm11, %xmm15
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm13, %xmm9, %xmm9
	vpternlogq	$150, %xmm6, %xmm15, %xmm9
	#NO_APP
	vmovaps	%xmm6, %xmm22
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vpslldq	$4, %xmm8, %xmm11
	vpslldq	$8, %xmm8, %xmm15
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm15, %xmm12
	vpshufb	%xmm0, %xmm9, %xmm10
	vaesenclast	%xmm1, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm12, %xmm10
	#NO_APP
	vpslldq	$4, %xmm9, %xmm0
	vpunpcklqdq	%xmm9, %xmm13, %xmm1
	vinsertps	$55, %xmm9, %xmm0, %xmm12
	vpternlogq	$150, %xmm1, %xmm0, %xmm12
	vpshufd	$255, %xmm10, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm11
	vpternlogq	$150, %xmm12, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpunpcklqdq	%xmm10, %xmm13, %xmm1
	vinsertps	$55, %xmm10, %xmm0, %xmm15
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	vpshufb	%xmm16, %xmm11, %xmm0
	vpbroadcastq	.LCPI0_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm12
	vpternlogq	$150, %xmm15, %xmm10, %xmm12
	vaesenc	%xmm9, %xmm14, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm14
	vpblendd	$12, %xmm1, %xmm13, %xmm1
	vpsllq	$63, %xmm1, %xmm15
	vpternlogq	$30, %xmm14, %xmm0, %xmm15
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm13
	vpternlogq	$150, %xmm0, %xmm15, %xmm13
	vpbroadcastq	.LCPI0_10(%rip), %xmm0
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm1
	vpshufd	$78, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm15
	vpshufd	$78, %xmm1, %xmm14
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm1
	vpternlogq	$150, %xmm15, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm15
	vpxor	%xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vpshufd	$78, %xmm4, %xmm15
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm15
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm5
	vpxor	%xmm5, %xmm15, %xmm5
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm4, %xmm15
	vpternlogq	$150, %xmm1, %xmm5, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm5
	vpternlogq	$150, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm1
	vpshufd	$78, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpshufd	$78, %xmm6, %xmm6
	vmovups	(%rsi), %ymm7
	vmovups	%ymm7, (%rdi)
	vmovdqa	%xmm3, 32(%rdi)
	vmovdqa	%xmm2, 48(%rdi)
	vmovaps	%xmm17, 64(%rdi)
	vmovaps	%xmm18, 80(%rdi)
	vmovaps	%xmm19, 96(%rdi)
	vmovaps	%xmm20, 112(%rdi)
	vmovaps	%xmm21, 128(%rdi)
	vmovaps	%xmm22, 144(%rdi)
	vmovaps	%xmm8, 160(%rdi)
	vmovaps	%xmm9, 176(%rdi)
	vmovaps	%xmm10, 192(%rdi)
	vmovdqa	%xmm11, 208(%rdi)
	vmovdqa	%xmm12, 224(%rdi)
	vmovdqa	%xmm13, 240(%rdi)
	vmovdqa	%xmm14, 256(%rdi)
	vmovdqa	%xmm15, 272(%rdi)
	vmovdqa	%xmm1, 288(%rdi)
	vpsrldq	$8, %xmm5, %xmm1
	vpternlogq	$150, %xmm1, %xmm0, %xmm6
	vmovdqa	%xmm6, 304(%rdi)
	vmovdqa	%xmm4, 320(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
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
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI2_1:
	.long	0
	.long	4
	.long	5
	.long	3
.LCPI2_2:
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
.LCPI2_3:
	.long	1
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_4:
	.long	16777216
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_init_state,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_init_state
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_init_state,@function
haberdashery_aes256gcm_streaming_skylakex_init_state:
	.cfi_startproc
	cmpq	$12, %rcx
	jne	.LBB2_2
	vmovq	4(%rdx), %xmm0
	vpbroadcastd	.LCPI2_4(%rip), %xmm1
	vpinsrd	$0, (%rdx), %xmm1, %xmm1
	vmovdqa	.LCPI2_1(%rip), %xmm2
	vpermi2d	%xmm0, %xmm1, %xmm2
	vpshufb	.LCPI2_2(%rip), %xmm2, %xmm0
	vpaddd	.LCPI2_3(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, -56(%rsp)
	vmovdqu	%ymm1, -88(%rsp)
	vmovdqu	%ymm1, 48(%rdi)
	movq	$0, -24(%rsp)
	vmovups	-40(%rsp), %xmm1
	vmovups	%xmm1, 64(%rdi)
	movq	-24(%rsp), %rax
	movq	%rax, 80(%rdi)
	movq	-16(%rsp), %rax
	movq	%rax, 88(%rdi)
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%xmm1, (%rdi)
	vmovdqa	%xmm2, 16(%rdi)
	vmovdqa	%xmm0, 32(%rdi)
	vmovaps	%xmm1, 96(%rdi)
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
	subq	$128, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
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
	movq	96(%rdi), %r15
	addq	%rbx, %r15
	xorl	%eax, %eax
	movabsq	$2305843009213693950, %rcx
	cmpq	%rcx, %r15
	ja	.LBB3_9
	cmpq	$0, 104(%r14)
	jne	.LBB3_9
	vmovdqa	240(%rsi), %xmm13
	vmovdqa	256(%rsi), %xmm15
	vmovdqa	272(%rsi), %xmm11
	vmovdqa	288(%rsi), %xmm12
	vmovdqa	304(%rsi), %xmm10
	vmovdqa	320(%rsi), %xmm7
	vmovdqa	(%r14), %xmm14
	movq	80(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB3_5
	leaq	(%rcx,%rbx), %r12
	cmpq	$15, %r12
	vmovdqa	%xmm14, 16(%rsp)
	ja	.LBB3_10
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm14
	vmovdqa	64(%r14), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%r14)
	movq	%r12, 80(%r14)
	jmp	.LBB3_8
.LBB3_5:
	movq	%rbx, %r12
	cmpq	$96, %r12
	jae	.LBB3_12
	jmp	.LBB3_14
.LBB3_10:
	vmovaps	64(%r14), %xmm0
	vmovaps	%xmm0, (%rsp)
	movl	$16, %eax
	subq	%rcx, %rax
	leaq	(%rsp,%rcx), %rdi
	leaq	(%rdx,%rax), %r13
	movq	%rbx, %r12
	subq	%rax, %r12
	movq	%rdx, %rsi
	movq	%rax, %rdx
	vmovdqa	%xmm13, 112(%rsp)
	vmovdqa	%xmm15, 96(%rsp)
	vmovdqa	%xmm11, 80(%rsp)
	vmovdqa	%xmm12, 64(%rsp)
	vmovdqa	%xmm10, 48(%rsp)
	vmovdqa	%xmm7, 32(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	64(%rsp), %xmm12
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	112(%rsp), %xmm13
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
	vpbroadcastq	.LCPI3_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm14
	vpternlogq	$150, %xmm2, %xmm1, %xmm14
	movq	%r13, %rdx
	cmpq	$96, %r12
	jb	.LBB3_14
.LBB3_12:
	vmovdqa	.LCPI3_0(%rip), %xmm0
	vpbroadcastq	.LCPI3_1(%rip), %xmm1
	.p2align	4, 0x90
.LBB3_13:
	vmovdqu	(%rdx), %xmm2
	vmovdqu	16(%rdx), %xmm3
	vmovdqu	32(%rdx), %xmm4
	vmovdqu	48(%rdx), %xmm5
	vmovdqu	64(%rdx), %xmm6
	vmovdqa64	%xmm7, %xmm19
	vmovdqu	80(%rdx), %xmm7
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm13, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm13, %xmm9
	vmovdqa64	%xmm10, %xmm18
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm10
	vmovdqa64	%xmm11, %xmm16
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm11
	vmovdqa64	%xmm12, %xmm17
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm12
	vpternlogq	$150, %xmm11, %xmm9, %xmm12
	vmovdqa64	%xmm16, %xmm11
	vpclmulqdq	$0, %xmm5, %xmm11, %xmm9
	vpternlogq	$150, %xmm8, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm11, %xmm10
	vpternlogq	$150, %xmm8, %xmm12, %xmm10
	vmovdqa64	%xmm17, %xmm12
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm7, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm6
	vpclmulqdq	$17, %xmm5, %xmm11, %xmm5
	vpternlogq	$150, %xmm7, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm7
	vpternlogq	$150, %xmm6, %xmm10, %xmm7
	vmovdqa64	%xmm18, %xmm10
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm8
	vpternlogq	$150, %xmm6, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm9
	vpternlogq	$150, %xmm6, %xmm7, %xmm9
	vmovdqa64	%xmm19, %xmm7
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm14, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm3
	vpternlogq	$150, %xmm4, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm5
	vpternlogq	$150, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm4
	vpslldq	$8, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm4
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm14
	vpternlogq	$150, %xmm2, %xmm3, %xmm14
	vpsrldq	$8, %xmm5, %xmm2
	vpshufd	$78, %xmm4, %xmm3
	addq	$96, %rdx
	addq	$-96, %r12
	vpternlogq	$150, %xmm2, %xmm3, %xmm14
	cmpq	$95, %r12
	ja	.LBB3_13
.LBB3_14:
	cmpq	$16, %r12
	jb	.LBB3_15
	leaq	-16(%r12), %rax
	testb	$16, %al
	je	.LBB3_19
	cmpq	$16, %rax
	jae	.LBB3_21
.LBB3_16:
	testq	%rax, %rax
	je	.LBB3_8
.LBB3_17:
	movl	$-1, %ecx
	bzhil	%eax, %ecx, %ecx
	kmovd	%ecx, %k1
	#APP

	vmovdqu8	(%rdx), %xmm0 {%k1} {z}

	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, 48(%r14)
	vmovdqa	%xmm0, 64(%r14)
	movq	%rax, 80(%r14)
.LBB3_8:
	vmovdqa	%xmm14, (%r14)
	movq	%r15, 96(%r14)
	movq	%rbx, %rax
.LBB3_9:
	addq	$128, %rsp
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
	retq
.LBB3_19:
	.cfi_def_cfa_offset 176
	vmovdqu	(%rdx), %xmm0
	addq	$16, %rdx
	vpshufb	.LCPI3_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI3_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm14
	vpternlogq	$150, %xmm2, %xmm1, %xmm14
	movq	%rax, %r12
	cmpq	$16, %rax
	jb	.LBB3_16
.LBB3_21:
	vmovdqa	.LCPI3_0(%rip), %xmm0
	vpbroadcastq	.LCPI3_1(%rip), %xmm1
	.p2align	4, 0x90
.LBB3_22:
	vmovdqu	(%rdx), %xmm2
	vmovdqu	16(%rdx), %xmm3
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm14, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm5, %xmm6
	addq	$32, %rdx
	addq	$-32, %r12
	vpshufb	%xmm0, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm2, %xmm5, %xmm14
	vpternlogq	$150, %xmm4, %xmm3, %xmm14
	cmpq	$15, %r12
	ja	.LBB3_22
.LBB3_15:
	movq	%r12, %rax
	testq	%rax, %rax
	jne	.LBB3_17
	jmp	.LBB3_8
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_encrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_encrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_encrypt_update,@function
haberdashery_aes256gcm_streaming_skylakex_encrypt_update:
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpq	%r9, %rcx
	jne	.LBB4_3
	movq	%rcx, %rbp
	movabsq	$-68719476720, %rax
	addq	%rax, %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB4_3
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	104(%rdi), %rax
	leaq	(%rax,%rbp), %rsi
	movabsq	$68719476719, %rcx
	cmpq	%rcx, %rsi
	jbe	.LBB4_7
.LBB4_3:
	xorl	%ebp, %ebp
.LBB4_4:
	movq	%rbp, %rax
	addq	$216, %rsp
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
	.cfi_def_cfa_offset 272
	movq	%r8, %r12
	testq	%rax, %rax
	je	.LBB4_9
	vmovdqa	(%r14), %xmm5
	movq	80(%r14), %rax
	jmp	.LBB4_12
.LBB4_9:
	cmpq	$0, 80(%r14)
	vmovdqa	(%r14), %xmm5
	je	.LBB4_11
	vmovdqa	64(%r14), %xmm0
	vmovdqa	240(%r15), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI4_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm5
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	vmovdqa	%xmm5, (%r14)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%r14)
	movq	$0, 80(%r14)
.LBB4_11:
	xorl	%eax, %eax
.LBB4_12:
	vmovdqa	240(%r15), %xmm12
	vmovdqa64	256(%r15), %xmm29
	vmovdqa64	272(%r15), %xmm30
	vmovdqa	288(%r15), %xmm14
	vmovdqa64	304(%r15), %xmm25
	vmovdqa	320(%r15), %xmm15
	testq	%rax, %rax
	je	.LBB4_15
	leaq	(%rax,%rbp), %rbx
	cmpq	$15, %rbx
	vmovdqa	%xmm5, 32(%rsp)
	ja	.LBB4_16
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	leaq	(%rsp,%rax), %r15
	movq	%r15, %rdi
	movq	%rsi, %r13
	movq	%rdx, %rsi
	movq	%rbp, %rdx
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%r14), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%r14)
	vmovdqa	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm5
	movq	%r13, %rsi
	jmp	.LBB4_29
.LBB4_15:
	movq	%rbp, %rbx
	cmpq	$96, %rbx
	jae	.LBB4_17
.LBB4_23:
	cmpq	$16, %rbx
	jb	.LBB4_24
.LBB4_25:
	vmovdqa64	(%r15), %xmm18
	vmovdqa64	16(%r15), %xmm20
	vmovdqa64	32(%r15), %xmm21
	vmovdqa64	48(%r15), %xmm22
	vmovdqa64	64(%r15), %xmm23
	vmovdqa64	80(%r15), %xmm24
	vmovdqa64	96(%r15), %xmm25
	vmovdqa	112(%r15), %xmm7
	vmovdqa	128(%r15), %xmm8
	vmovdqa	144(%r15), %xmm9
	vmovdqa	160(%r15), %xmm10
	vmovdqa	176(%r15), %xmm11
	vmovdqa	192(%r15), %xmm6
	vmovdqa	208(%r15), %xmm14
	vmovdqa	224(%r15), %xmm15
	vmovdqa	32(%r14), %xmm13
	vmovdqa64	.LCPI4_0(%rip), %xmm16
	vmovdqa64	.LCPI4_2(%rip), %xmm17
	vpbroadcastq	.LCPI4_1(%rip), %xmm0
	.p2align	4, 0x90
.LBB4_26:
	vpshufb	%xmm16, %xmm13, %xmm19
	vpxorq	%xmm19, %xmm18, %xmm1
	vmovdqa64	%xmm20, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm21, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm22, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm23, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm24, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm25, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm1
	vpxor	(%rdx), %xmm1, %xmm1
	vpshufb	%xmm16, %xmm1, %xmm19
	vpxorq	%xmm19, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpslldq	$8, %xmm3, %xmm19
	vpxorq	%xmm19, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm5
	vpxor	%xmm2, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm2
	addq	$16, %rdx
	vmovdqu	%xmm1, (%r12)
	addq	$16, %r12
	addq	$-16, %rbx
	vpaddd	%xmm17, %xmm13, %xmm13
	vpsrldq	$8, %xmm3, %xmm1
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	cmpq	$15, %rbx
	ja	.LBB4_26
	vmovdqa	%xmm13, 32(%r14)
	testq	%rbx, %rbx
	jne	.LBB4_28
	jmp	.LBB4_30
.LBB4_16:
	movl	$16, %r13d
	subq	%rax, %r13
	leaq	(%rdx,%r13), %rcx
	movq	%rcx, 96(%rsp)
	leaq	(%r12,%r13), %rcx
	movq	%rcx, 80(%rsp)
	movq	%rbp, %rbx
	subq	%r13, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	leaq	(%rsp,%rax), %rdi
	movq	%rdi, 64(%rsp)
	movq	%rsi, 192(%rsp)
	movq	%rdx, %rsi
	movq	%r13, %rdx
	vmovdqa	%xmm12, 176(%rsp)
	vmovdqa	%xmm15, 160(%rsp)
	vmovdqa	%xmm14, 144(%rsp)
	vmovdqa64	%xmm25, 128(%rsp)
	vmovdqa64	%xmm29, 112(%rsp)
	vmovdqa64	%xmm30, 16(%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	(%rsp), %xmm0
	vxorps	64(%r14), %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	%xmm0, 64(%r14)
	vmovaps	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	64(%rsp), %rsi
	movq	%r13, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa64	16(%rsp), %xmm30
	vmovdqa64	112(%rsp), %xmm29
	vmovdqa64	128(%rsp), %xmm25
	vmovdqa	144(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	176(%rsp), %xmm12
	movq	192(%rsp), %rsi
	movq	$0, 80(%r14)
	vmovdqa	48(%rsp), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI4_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm5
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	movq	80(%rsp), %r12
	movq	96(%rsp), %rdx
	cmpq	$96, %rbx
	jb	.LBB4_23
.LBB4_17:
	vmovdqa64	%xmm30, 16(%rsp)
	vmovdqa64	%xmm5, %xmm28
	vmovdqu64	(%rdx), %xmm23
	vmovdqa	32(%r14), %xmm4
	vmovdqa	.LCPI4_0(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm2
	vpaddd	.LCPI4_2(%rip), %xmm4, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm3
	vpaddd	.LCPI4_3(%rip), %xmm4, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm7
	vpaddd	.LCPI4_4(%rip), %xmm4, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm8
	vpaddd	.LCPI4_5(%rip), %xmm4, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm9
	vpaddd	.LCPI4_6(%rip), %xmm4, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm10
	vmovdqa	(%r15), %xmm1
	vmovdqa	16(%r15), %xmm6
	vmovdqa64	32(%r15), %xmm16
	vmovaps	48(%r15), %xmm11
	vpxor	%xmm2, %xmm1, %xmm5
	vmovdqa	%xmm6, %xmm2
	vpxor	%xmm3, %xmm1, %xmm6
	vpxor	%xmm7, %xmm1, %xmm7
	vpxor	%xmm1, %xmm8, %xmm8
	vpxor	%xmm1, %xmm9, %xmm9
	vpxor	%xmm1, %xmm10, %xmm3
	vmovdqa64	%xmm16, %xmm10
	#APP
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm3, %xmm3
	#NO_APP
	vmovaps	%xmm11, 32(%rsp)
	#APP
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm3, %xmm3
	#NO_APP
	vmovdqa	64(%r15), %xmm11
	#APP
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm3, %xmm3
	#NO_APP
	vmovaps	80(%r15), %xmm13
	vmovaps	%xmm13, 192(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	96(%r15), %xmm13
	vmovaps	%xmm13, 176(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	112(%r15), %xmm13
	vmovaps	%xmm13, 160(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	128(%r15), %xmm13
	vmovaps	%xmm13, 144(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	144(%r15), %xmm13
	vmovaps	%xmm13, 128(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	160(%r15), %xmm13
	vmovaps	%xmm13, 112(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	176(%r15), %xmm13
	vmovaps	%xmm13, 96(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	192(%r15), %xmm13
	vmovaps	%xmm13, 80(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	208(%r15), %xmm13
	vmovaps	%xmm13, 64(%rsp)
	#APP
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	224(%r15), %xmm13
	vmovaps	%xmm13, 48(%rsp)
	#APP
	vaesenclast	%xmm13, %xmm5, %xmm5
	vaesenclast	%xmm13, %xmm6, %xmm6
	vaesenclast	%xmm13, %xmm7, %xmm7
	vaesenclast	%xmm13, %xmm8, %xmm8
	vaesenclast	%xmm13, %xmm9, %xmm9
	vaesenclast	%xmm13, %xmm3, %xmm3
	#NO_APP
	vpxorq	%xmm23, %xmm5, %xmm13
	vmovdqu	16(%rdx), %xmm5
	vpxorq	%xmm5, %xmm6, %xmm16
	vmovdqu	32(%rdx), %xmm5
	vpxorq	%xmm5, %xmm7, %xmm24
	vmovdqu	48(%rdx), %xmm5
	vpxorq	%xmm5, %xmm8, %xmm26
	vmovdqu	64(%rdx), %xmm5
	vpxorq	%xmm5, %xmm9, %xmm27
	vmovdqu	80(%rdx), %xmm5
	vpxor	%xmm5, %xmm3, %xmm5
	addq	$96, %rdx
	leaq	96(%r12), %rax
	vpaddd	.LCPI4_7(%rip), %xmm4, %xmm3
	vmovdqa	%xmm3, 32(%r14)
	vmovdqu	%xmm13, (%r12)
	vmovdqu64	%xmm16, 16(%r12)
	vmovdqu64	%xmm24, 32(%r12)
	vmovdqu64	%xmm26, 48(%r12)
	addq	$-96, %rbx
	vmovdqu64	%xmm27, 64(%r12)
	vmovdqu	%xmm5, 80(%r12)
	cmpq	$96, %rbx
	jb	.LBB4_21
	vpbroadcastq	.LCPI4_1(%rip), %xmm31
	vmovdqa64	%xmm12, %xmm21
	vmovdqa64	%xmm2, %xmm17
	vmovdqa64	%xmm14, %xmm19
	vmovdqa64	%xmm25, %xmm22
	vmovdqa64	%xmm29, %xmm20
	vmovdqa64	16(%rsp), %xmm18
	vmovdqa64	%xmm10, %xmm30
	vmovdqa64	%xmm11, %xmm23
	.p2align	4, 0x90
.LBB4_19:
	vmovdqa64	32(%r14), %xmm25
	vpshufb	%xmm0, %xmm25, %xmm4
	vpaddd	.LCPI4_2(%rip), %xmm25, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm7
	vpaddd	.LCPI4_3(%rip), %xmm25, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm8
	vpaddd	.LCPI4_4(%rip), %xmm25, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm9
	vpaddd	.LCPI4_5(%rip), %xmm25, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm10
	vpaddd	.LCPI4_6(%rip), %xmm25, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm11
	vpshufb	%xmm0, %xmm5, %xmm14
	vpxor	%xmm4, %xmm1, %xmm6
	vpxor	%xmm7, %xmm1, %xmm4
	vpxor	%xmm1, %xmm8, %xmm7
	vpxor	%xmm1, %xmm9, %xmm5
	vpxor	%xmm1, %xmm10, %xmm8
	vpxor	%xmm1, %xmm11, %xmm9
	vmovdqa64	%xmm17, %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm11, %xmm11, %xmm11
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm10, %xmm10, %xmm10
	vmovdqa64	%xmm15, %xmm29
	vmovdqa64	%xmm21, %xmm2
	vmovdqa64	%xmm30, %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm0, %xmm27, %xmm14
	vmovaps	32(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm20, %xmm2
	vmovdqa64	%xmm23, %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm0, %xmm26, %xmm14
	vmovaps	192(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovaps	176(%rsp), %xmm2
	vmovdqa64	%xmm18, %xmm3
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm0, %xmm24, %xmm14
	vmovaps	160(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm19, %xmm3
	vmovaps	144(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm0, %xmm16, %xmm14
	vmovaps	128(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rsp), %xmm2
	vmovdqa64	%xmm22, %xmm3
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm29, %xmm15
	vpshufb	%xmm0, %xmm13, %xmm13
	vpxorq	%xmm13, %xmm28, %xmm13
	vmovaps	96(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovdqa	80(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm2, %xmm2, %xmm2
	vpunpcklqdq	%xmm12, %xmm2, %xmm13
	vpunpckhqdq	%xmm2, %xmm12, %xmm12
	vpxor	%xmm13, %xmm11, %xmm11
	vpshufd	$78, %xmm11, %xmm13
	vmovdqa64	%xmm31, %xmm2
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm11
	vpxor	%xmm13, %xmm11, %xmm11
	vpxorq	%xmm12, %xmm10, %xmm28
	vpshufd	$78, %xmm11, %xmm10
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm11
	vpternlogq	$150, %xmm11, %xmm10, %xmm28
	vmovdqu	(%rdx), %xmm10
	vmovaps	64(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovdqa	48(%rsp), %xmm2
	#APP
	vaesenclast	%xmm2, %xmm6, %xmm6
	vaesenclast	%xmm2, %xmm4, %xmm4
	vaesenclast	%xmm2, %xmm7, %xmm7
	vaesenclast	%xmm2, %xmm5, %xmm5
	vaesenclast	%xmm2, %xmm8, %xmm8
	vaesenclast	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm6, %xmm10, %xmm13
	vmovdqu	16(%rdx), %xmm6
	vmovdqu	32(%rdx), %xmm10
	vpxorq	%xmm6, %xmm4, %xmm16
	vpxorq	%xmm10, %xmm7, %xmm24
	vmovdqu	48(%rdx), %xmm4
	vmovdqu	64(%rdx), %xmm6
	vpxorq	%xmm4, %xmm5, %xmm26
	vpxorq	%xmm6, %xmm8, %xmm27
	vmovdqu	80(%rdx), %xmm4
	vpxor	%xmm4, %xmm9, %xmm5
	vpaddd	.LCPI4_7(%rip), %xmm25, %xmm4
	vmovdqa	%xmm4, 32(%r14)
	vmovdqu	%xmm13, (%rax)
	vmovdqu64	%xmm16, 16(%rax)
	vmovdqu64	%xmm24, 32(%rax)
	vmovdqu64	%xmm26, 48(%rax)
	vmovdqu64	%xmm27, 64(%rax)
	addq	$96, %rdx
	vmovdqu	%xmm5, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	cmpq	$95, %rbx
	ja	.LBB4_19
	vmovdqa64	%xmm21, %xmm12
	vmovdqa64	%xmm19, %xmm14
	vmovdqa64	%xmm22, %xmm8
	vmovdqa64	%xmm20, %xmm9
	vmovdqa64	%xmm18, %xmm10
	jmp	.LBB4_22
.LBB4_21:
	vmovdqa64	%xmm25, %xmm8
	vmovdqa64	%xmm29, %xmm9
	vmovdqa	16(%rsp), %xmm10
.LBB4_22:
	vpshufb	%xmm0, %xmm26, %xmm1
	vpshufb	%xmm0, %xmm27, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm7
	vpternlogq	$150, %xmm6, %xmm5, %xmm7
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm5
	vpternlogq	$150, %xmm4, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm2
	vpshufb	%xmm0, %xmm16, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
	vpshufb	%xmm0, %xmm24, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm7, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm14, %xmm3
	vpternlogq	$150, %xmm2, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm14, %xmm2
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm5
	vpternlogq	$150, %xmm2, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm6
	vpternlogq	$150, %xmm2, %xmm3, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm14, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm3
	vpshufb	%xmm0, %xmm13, %xmm0
	vmovdqa64	%xmm28, %xmm11
	vpxorq	%xmm0, %xmm28, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm2
	vpternlogq	$150, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpslldq	$8, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpbroadcastq	.LCPI4_1(%rip), %xmm1
	vpshufd	$78, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpternlogq	$150, %xmm0, %xmm3, %xmm5
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm4, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	movq	%rax, %r12
	cmpq	$16, %rbx
	jae	.LBB4_25
.LBB4_24:
	testq	%rbx, %rbx
	je	.LBB4_30
.LBB4_28:
	movl	$-1, %eax
	bzhil	%ebx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rdx), %xmm0 {%k1} {z}

	#NO_APP
	vmovdqa	32(%r14), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm1, %xmm2
	vpaddd	.LCPI4_2(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%r14)
	vpxor	(%r15), %xmm2, %xmm1
	vaesenc	16(%r15), %xmm1, %xmm1
	vaesenc	32(%r15), %xmm1, %xmm1
	vaesenc	48(%r15), %xmm1, %xmm1
	vaesenc	64(%r15), %xmm1, %xmm1
	vaesenc	80(%r15), %xmm1, %xmm1
	vaesenc	96(%r15), %xmm1, %xmm1
	vaesenc	112(%r15), %xmm1, %xmm1
	vaesenc	128(%r15), %xmm1, %xmm1
	vaesenc	144(%r15), %xmm1, %xmm1
	vaesenc	160(%r15), %xmm1, %xmm1
	vaesenc	176(%r15), %xmm1, %xmm1
	vaesenc	192(%r15), %xmm1, %xmm1
	vaesenc	208(%r15), %xmm1, %xmm1
	vaesenclast	224(%r15), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	#APP

	vmovdqu8	%xmm0, (%r12) {%k1}

	#NO_APP
	vmovdqa	%xmm1, 48(%r14)
	vmovdqa	%xmm0, 64(%r14)
.LBB4_29:
	movq	%rbx, 80(%r14)
.LBB4_30:
	vmovdqa	%xmm5, (%r14)
	movq	%rsi, 104(%r14)
	jmp	.LBB4_4
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
.LCPI5_1:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize,@function
haberdashery_aes256gcm_streaming_skylakex_encrypt_finalize:
	.cfi_startproc
	vmovdqa	240(%rsi), %xmm0
	movq	%rcx, %rax
	vmovdqa	(%rdi), %xmm1
	movq	104(%rdi), %rcx
	movq	80(%rdi), %r8
	testq	%rcx, %rcx
	je	.LBB5_1
	testq	%r8, %r8
	je	.LBB5_5
	movl	$-1, %r9d
	bzhil	%r8d, %r9d, %r8d
	kmovd	%r8d, %k1
	vmovdqu8	64(%rdi), %xmm2 {%k1} {z}
	vpshufb	.LCPI5_0(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI5_1(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	jmp	.LBB5_5
.LBB5_1:
	testq	%r8, %r8
	je	.LBB5_6
	vmovdqa	64(%rdi), %xmm2
	vpshufb	.LCPI5_0(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpbroadcastq	.LCPI5_1(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm2, %xmm5, %xmm2
	vpternlogq	$150, %xmm4, %xmm3, %xmm2
	vmovdqa	%xmm2, (%rdi)
.LBB5_5:
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqu	%ymm2, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB5_6:
	testq	%rax, %rax
	je	.LBB5_7
	vmovq	96(%rdi), %xmm2
	vmovq	%rcx, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpsllq	$3, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpbroadcastq	.LCPI5_1(%rip), %xmm4
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
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
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpshufb	.LCPI5_2(%rip), %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm3
	vpshufb	.LCPI5_3(%rip), %xmm1, %xmm0
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	cmpq	$16, %rax
	jae	.LBB5_9
	movl	$-1, %ecx
	bzhil	%eax, %ecx, %ecx
	kmovd	%ecx, %k1
	#APP

	vmovdqu8	%xmm0, (%rdx) {%k1}

	#NO_APP
	vzeroupper
	retq
.LBB5_7:
	xorl	%eax, %eax
	vzeroupper
	retq
.LBB5_9:
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
	.section	.text.haberdashery_aes256gcm_streaming_skylakex_decrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_skylakex_decrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_streaming_skylakex_decrypt_update,@function
haberdashery_aes256gcm_streaming_skylakex_decrypt_update:
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpq	%r9, %rcx
	jne	.LBB6_3
	movq	%rcx, %rbp
	movabsq	$-68719476720, %rax
	addq	%rax, %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB6_3
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	104(%rdi), %rax
	leaq	(%rax,%rbp), %rsi
	movabsq	$68719476719, %rcx
	cmpq	%rcx, %rsi
	jbe	.LBB6_6
.LBB6_3:
	xorl	%ebp, %ebp
.LBB6_27:
	movq	%rbp, %rax
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
	vzeroupper
	retq
.LBB6_6:
	.cfi_def_cfa_offset 288
	movq	%r8, %r12
	testq	%rax, %rax
	je	.LBB6_8
	vmovdqa64	(%r14), %xmm30
	movq	80(%r14), %rax
	jmp	.LBB6_11
.LBB6_8:
	cmpq	$0, 80(%r14)
	vmovdqa64	(%r14), %xmm30
	je	.LBB6_10
	vmovdqa	64(%r14), %xmm0
	vmovdqa	240(%r15), %xmm1
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vpxorq	%xmm0, %xmm30, %xmm0
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
	vpxorq	%xmm0, %xmm3, %xmm30
	vpternlogq	$150, %xmm2, %xmm1, %xmm30
	vmovdqa64	%xmm30, (%r14)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%r14)
	movq	$0, 80(%r14)
.LBB6_10:
	xorl	%eax, %eax
.LBB6_11:
	vmovdqa	240(%r15), %xmm5
	vmovdqa	256(%r15), %xmm0
	vmovdqa64	272(%r15), %xmm17
	vmovdqa64	288(%r15), %xmm18
	vmovdqa64	304(%r15), %xmm19
	vmovapd	320(%r15), %xmm20
	testq	%rax, %rax
	je	.LBB6_14
	leaq	(%rax,%rbp), %rbx
	cmpq	$15, %rbx
	vmovdqa64	%xmm30, 16(%rsp)
	ja	.LBB6_15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	leaq	(%rsp,%rax), %r15
	movq	%r15, %rdi
	movq	%rsi, %r13
	movq	%rdx, %rsi
	movq	%rbp, %rdx
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%r14), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%r14)
	vmovdqa	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa64	16(%rsp), %xmm30
	movq	%r13, %rsi
	jmp	.LBB6_25
.LBB6_14:
	movq	%rbp, %rbx
	cmpq	$96, %rbx
	jae	.LBB6_16
.LBB6_19:
	cmpq	$16, %rbx
	jb	.LBB6_20
.LBB6_21:
	vmovdqa64	(%r15), %xmm17
	vmovdqa64	16(%r15), %xmm21
	vmovdqa64	32(%r15), %xmm22
	vmovdqa64	48(%r15), %xmm23
	vmovdqa64	64(%r15), %xmm24
	vmovdqa64	80(%r15), %xmm25
	vmovdqa	96(%r15), %xmm6
	vmovdqa	112(%r15), %xmm7
	vmovdqa	128(%r15), %xmm8
	vmovdqa	144(%r15), %xmm9
	vmovdqa	160(%r15), %xmm10
	vmovdqa	176(%r15), %xmm11
	vmovdqa	192(%r15), %xmm12
	vmovdqa	208(%r15), %xmm14
	vmovdqa	224(%r15), %xmm15
	vmovdqa	32(%r14), %xmm13
	vmovdqa64	.LCPI6_0(%rip), %xmm16
	vpbroadcastq	.LCPI6_1(%rip), %xmm0
	vmovdqa64	.LCPI6_2(%rip), %xmm18
	.p2align	4, 0x90
.LBB6_22:
	vmovdqu64	(%rdx), %xmm19
	vpshufb	%xmm16, %xmm19, %xmm20
	vpxorq	%xmm20, %xmm30, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpslldq	$8, %xmm2, %xmm20
	vpxorq	%xmm20, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpxorq	%xmm1, %xmm4, %xmm30
	vpshufd	$78, %xmm3, %xmm1
	vpshufb	%xmm16, %xmm13, %xmm3
	vpxorq	%xmm3, %xmm17, %xmm3
	vmovdqa64	%xmm21, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm22, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm23, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm25, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpxorq	%xmm19, %xmm3, %xmm3
	vmovdqu	%xmm3, (%r12)
	addq	$16, %r12
	addq	$-16, %rbx
	addq	$16, %rdx
	vpsrldq	$8, %xmm2, %xmm2
	vpternlogq	$150, %xmm2, %xmm1, %xmm30
	vpaddd	%xmm18, %xmm13, %xmm13
	cmpq	$15, %rbx
	ja	.LBB6_22
	vmovdqa	%xmm13, 32(%r14)
	testq	%rbx, %rbx
	jne	.LBB6_24
	jmp	.LBB6_26
.LBB6_15:
	movl	$16, %r13d
	subq	%rax, %r13
	leaq	(%rdx,%r13), %rcx
	movq	%rcx, 80(%rsp)
	leaq	(%r12,%r13), %rcx
	movq	%rcx, 64(%rsp)
	movq	%rbp, %rbx
	subq	%r13, %rbx
	vmovdqa	%xmm0, 192(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	leaq	(%rsp,%rax), %rdi
	movq	%rdi, 48(%rsp)
	movq	%rsi, 176(%rsp)
	movq	%rdx, %rsi
	movq	%r13, %rdx
	vmovdqa	%xmm5, 160(%rsp)
	vmovdqa64	%xmm17, 144(%rsp)
	vmovdqa64	%xmm18, 128(%rsp)
	vmovdqa64	%xmm19, 112(%rsp)
	vmovapd	%xmm20, 96(%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	(%rsp), %xmm0
	vxorps	64(%r14), %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	%xmm0, 64(%r14)
	vmovaps	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	48(%rsp), %rsi
	movq	%r13, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	160(%rsp), %xmm5
	movq	176(%rsp), %rsi
	movq	$0, 80(%r14)
	vmovdqa	32(%rsp), %xmm0
	vpxor	48(%r14), %xmm0, %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI6_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxorq	%xmm0, %xmm3, %xmm30
	vmovapd	96(%rsp), %xmm20
	vmovdqa	192(%rsp), %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm30
	vmovdqa64	112(%rsp), %xmm19
	vmovdqa64	128(%rsp), %xmm18
	vmovdqa64	144(%rsp), %xmm17
	movq	64(%rsp), %r12
	movq	80(%rsp), %rdx
	cmpq	$96, %rbx
	jb	.LBB6_19
.LBB6_16:
	vmovdqa	%xmm0, 192(%rsp)
	vmovdqa	(%r15), %xmm0
	vmovaps	16(%r15), %xmm4
	vmovaps	%xmm4, 16(%rsp)
	vmovaps	32(%r15), %xmm4
	vmovaps	%xmm4, 176(%rsp)
	vmovaps	48(%r15), %xmm4
	vmovaps	%xmm4, 160(%rsp)
	vmovaps	64(%r15), %xmm4
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	80(%r15), %xmm4
	vmovaps	%xmm4, 128(%rsp)
	vmovaps	96(%r15), %xmm4
	vmovaps	%xmm4, 112(%rsp)
	vmovaps	112(%r15), %xmm4
	vmovaps	%xmm4, 96(%rsp)
	vmovaps	128(%r15), %xmm4
	vmovaps	%xmm4, 80(%rsp)
	vmovaps	144(%r15), %xmm4
	vmovaps	%xmm4, 64(%rsp)
	vmovaps	160(%r15), %xmm4
	vmovaps	%xmm4, 48(%rsp)
	vmovaps	176(%r15), %xmm4
	vmovaps	%xmm4, 32(%rsp)
	vmovdqa	192(%r15), %xmm4
	vmovdqa	%xmm4, 208(%rsp)
	vmovdqa64	208(%r15), %xmm21
	vmovaps	224(%r15), %xmm31
	vmovdqa	.LCPI6_0(%rip), %xmm15
	vpxord	%xmm22, %xmm22, %xmm22
	vpbroadcastq	.LCPI6_1(%rip), %xmm1
	vmovdqa64	%xmm5, %xmm16
	.p2align	4, 0x90
.LBB6_17:
	vmovdqu64	(%rdx), %xmm23
	vmovdqu64	16(%rdx), %xmm24
	vmovdqu64	32(%rdx), %xmm25
	vmovdqu64	48(%rdx), %xmm26
	vmovdqu64	64(%rdx), %xmm27
	vmovdqu64	80(%rdx), %xmm28
	vmovdqa64	32(%r14), %xmm29
	vpshufb	%xmm15, %xmm29, %xmm2
	vpaddd	.LCPI6_2(%rip), %xmm29, %xmm3
	vpshufb	%xmm15, %xmm3, %xmm3
	vpaddd	.LCPI6_3(%rip), %xmm29, %xmm4
	vpshufb	%xmm15, %xmm4, %xmm4
	vpaddd	.LCPI6_4(%rip), %xmm29, %xmm5
	vpshufb	%xmm15, %xmm5, %xmm5
	vpaddd	.LCPI6_5(%rip), %xmm29, %xmm6
	vpshufb	%xmm15, %xmm6, %xmm6
	vpaddd	.LCPI6_6(%rip), %xmm29, %xmm7
	vpshufb	%xmm15, %xmm7, %xmm7
	vpshufb	%xmm15, %xmm28, %xmm11
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm0, %xmm3
	vpxor	%xmm4, %xmm0, %xmm4
	vpxor	%xmm5, %xmm0, %xmm5
	vpxor	%xmm6, %xmm0, %xmm6
	vpxor	%xmm7, %xmm0, %xmm7
	vmovaps	16(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vxorps	%xmm8, %xmm8, %xmm8
	vxorps	%xmm10, %xmm10, %xmm10
	vxorps	%xmm9, %xmm9, %xmm9
	vmovaps	176(%rsp), %xmm13
	vmovdqa64	%xmm16, %xmm14
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
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm15, %xmm27, %xmm11
	vmovaps	160(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	192(%rsp), %xmm14
	vmovaps	144(%rsp), %xmm13
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
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm15, %xmm26, %xmm11
	vmovaps	128(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	112(%rsp), %xmm13
	vmovdqa64	%xmm17, %xmm14
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
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm15, %xmm25, %xmm11
	vmovaps	96(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	80(%rsp), %xmm13
	vmovdqa64	%xmm18, %xmm14
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
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm15, %xmm24, %xmm11
	vmovaps	64(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
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
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm15, %xmm23, %xmm11
	vpxorq	%xmm11, %xmm30, %xmm11
	vmovaps	32(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm20, %xmm14
	vmovdqa	208(%rsp), %xmm13
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
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpunpcklqdq	%xmm10, %xmm22, %xmm11
	vpunpckhqdq	%xmm22, %xmm10, %xmm10
	vpxorq	%xmm10, %xmm9, %xmm30
	vpxor	%xmm11, %xmm8, %xmm8
	vpshufd	$78, %xmm8, %xmm9
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm8
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$78, %xmm8, %xmm9
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm8
	vpternlogq	$150, %xmm8, %xmm9, %xmm30
	vmovdqa64	%xmm21, %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm31, %xmm8
	#APP
	vaesenclast	%xmm8, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm4, %xmm4
	vaesenclast	%xmm8, %xmm5, %xmm5
	vaesenclast	%xmm8, %xmm6, %xmm6
	vaesenclast	%xmm8, %xmm7, %xmm7
	#NO_APP
	vpxorq	%xmm23, %xmm2, %xmm2
	vpxorq	%xmm24, %xmm3, %xmm3
	vpxorq	%xmm25, %xmm4, %xmm4
	vpxorq	%xmm26, %xmm5, %xmm5
	vpxorq	%xmm27, %xmm6, %xmm6
	vpxorq	%xmm28, %xmm7, %xmm7
	vpaddd	.LCPI6_7(%rip), %xmm29, %xmm8
	vmovdqa	%xmm8, 32(%r14)
	vmovdqu	%xmm2, (%r12)
	vmovdqu	%xmm3, 16(%r12)
	vmovdqu	%xmm4, 32(%r12)
	vmovdqu	%xmm5, 48(%r12)
	vmovdqu	%xmm6, 64(%r12)
	vmovdqu	%xmm7, 80(%r12)
	addq	$96, %rdx
	addq	$96, %r12
	addq	$-96, %rbx
	cmpq	$95, %rbx
	ja	.LBB6_17
	vmovdqa64	%xmm16, %xmm5
	cmpq	$16, %rbx
	jae	.LBB6_21
.LBB6_20:
	testq	%rbx, %rbx
	je	.LBB6_26
.LBB6_24:
	movl	$-1, %eax
	bzhil	%ebx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rdx), %xmm0 {%k1} {z}

	#NO_APP
	vmovdqa	32(%r14), %xmm1
	vpshufb	.LCPI6_0(%rip), %xmm1, %xmm2
	vpaddd	.LCPI6_2(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%r14)
	vpxor	(%r15), %xmm2, %xmm1
	vaesenc	16(%r15), %xmm1, %xmm1
	vaesenc	32(%r15), %xmm1, %xmm1
	vaesenc	48(%r15), %xmm1, %xmm1
	vaesenc	64(%r15), %xmm1, %xmm1
	vaesenc	80(%r15), %xmm1, %xmm1
	vaesenc	96(%r15), %xmm1, %xmm1
	vaesenc	112(%r15), %xmm1, %xmm1
	vaesenc	128(%r15), %xmm1, %xmm1
	vaesenc	144(%r15), %xmm1, %xmm1
	vaesenc	160(%r15), %xmm1, %xmm1
	vaesenc	176(%r15), %xmm1, %xmm1
	vaesenc	192(%r15), %xmm1, %xmm1
	vaesenc	208(%r15), %xmm1, %xmm1
	vaesenclast	224(%r15), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	#APP

	vmovdqu8	%xmm0, (%r12) {%k1}

	#NO_APP
	vmovdqa	%xmm1, 48(%r14)
	vmovdqa	%xmm0, 64(%r14)
.LBB6_25:
	movq	%rbx, 80(%r14)
.LBB6_26:
	vmovdqa64	%xmm30, (%r14)
	movq	%rsi, 104(%r14)
	jmp	.LBB6_27
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
.LCPI7_2:
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
.LCPI7_3:
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
	jne	.LBB7_8
	vmovdqu	(%rdx), %xmm0
	vmovdqa	240(%rsi), %xmm1
	vmovdqa	(%rdi), %xmm2
	movq	104(%rdi), %rax
	testq	%rax, %rax
	je	.LBB7_2
	leaq	48(%rdi), %rcx
	movq	80(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB7_6
	vmovdqa	48(%rdi), %xmm3
	vpxor	64(%rdi), %xmm3, %xmm3
	movl	$-1, %r8d
	bzhil	%edx, %r8d, %edx
	kmovd	%edx, %k1
	vmovdqu8	%xmm3, %xmm3 {%k1} {z}
	vpshufb	.LCPI7_0(%rip), %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpbroadcastq	.LCPI7_1(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm2, %xmm5, %xmm2
	vpternlogq	$150, %xmm4, %xmm3, %xmm2
	jmp	.LBB7_6
.LBB7_2:
	cmpq	$0, 80(%rdi)
	je	.LBB7_7
	leaq	48(%rdi), %rcx
	vmovdqa	64(%rdi), %xmm3
	vpshufb	.LCPI7_0(%rip), %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpbroadcastq	.LCPI7_1(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm3, %xmm6, %xmm3
	vpternlogq	$150, %xmm5, %xmm4, %xmm3
	vmovdqa	%xmm3, (%rdi)
.LBB7_6:
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqu	%ymm3, (%rcx)
	movq	$0, 32(%rcx)
.LBB7_7:
	vmovq	96(%rdi), %xmm3
	vmovq	%rax, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3
	vpsllq	$3, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI7_1(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpxor	%xmm1, %xmm3, %xmm1
	vmovdqa	(%rsi), %xmm3
	vpxor	16(%rdi), %xmm3, %xmm3
	vaesenc	16(%rsi), %xmm3, %xmm3
	vaesenc	32(%rsi), %xmm3, %xmm3
	vaesenc	48(%rsi), %xmm3, %xmm3
	vaesenc	64(%rsi), %xmm3, %xmm3
	vaesenc	80(%rsi), %xmm3, %xmm3
	vaesenc	96(%rsi), %xmm3, %xmm3
	vaesenc	112(%rsi), %xmm3, %xmm3
	vaesenc	128(%rsi), %xmm3, %xmm3
	vaesenc	144(%rsi), %xmm3, %xmm3
	vaesenc	160(%rsi), %xmm3, %xmm3
	vaesenc	176(%rsi), %xmm3, %xmm3
	vaesenc	192(%rsi), %xmm3, %xmm3
	vaesenc	208(%rsi), %xmm3, %xmm3
	vaesenclast	224(%rsi), %xmm3, %xmm3
	vpshufb	.LCPI7_2(%rip), %xmm2, %xmm2
	vpshufb	.LCPI7_0(%rip), %xmm1, %xmm1
	vpshufb	.LCPI7_3(%rip), %xmm4, %xmm4
	vpternlogq	$150, %xmm1, %xmm2, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	xorl	%eax, %eax
	vptest	%xmm4, %xmm4
	sete	%al
.LBB7_8:
	vzeroupper
	retq
.Lfunc_end7:
	.size	haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize, .Lfunc_end7-haberdashery_aes256gcm_streaming_skylakex_decrypt_finalize
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

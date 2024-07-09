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
	.section	.text.haberdashery_aes256gcm_haswell_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_init,@function
haberdashery_aes256gcm_haswell_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	pushq	%rax
	.cfi_def_cfa_offset 16
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm0, %xmm3
	vpbroadcastd	.LCPI0_3(%rip), %xmm12
	vpshufb	%xmm12, %xmm1, %xmm4
	vaesenclast	.LCPI0_1(%rip), %xmm4, %xmm4
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm5
	vmovdqa	%xmm5, -16(%rsp)
	vaesenc	%xmm1, %xmm0, %xmm14
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpslldq	$12, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$255, %xmm5, %xmm2
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm2, %xmm2
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqa	%xmm2, -32(%rsp)
	vbroadcastss	.LCPI0_2(%rip), %xmm1
	vbroadcastss	.LCPI0_3(%rip), %xmm0
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vpslldq	$4, %xmm5, %xmm3
	vpslldq	$8, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm2, %xmm6
	vaesenclast	%xmm1, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm6, %xmm3
	vmovaps	%xmm6, -48(%rsp)
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vpslldq	$4, %xmm2, %xmm1
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$12, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm5
	vaesenclast	%xmm13, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm5
	#NO_APP
	vbroadcastss	.LCPI0_4(%rip), %xmm1
	vmovaps	%xmm5, %xmm2
	vmovaps	%xmm5, -64(%rsp)
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vpslldq	$4, %xmm3, %xmm5
	vpslldq	$8, %xmm3, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm3, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm3, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm4
	vaesenclast	%xmm1, %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	#NO_APP
	vmovaps	%xmm4, %xmm3
	vmovaps	%xmm4, -80(%rsp)
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vpslldq	$4, %xmm2, %xmm1
	vpslldq	$8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpslldq	$12, %xmm2, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm4
	vaesenclast	%xmm13, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm4
	#NO_APP
	vbroadcastss	.LCPI0_5(%rip), %xmm1
	vmovaps	%xmm4, %xmm2
	vmovaps	%xmm4, -96(%rsp)
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vpslldq	$4, %xmm3, %xmm7
	vpslldq	$8, %xmm3, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$12, %xmm3, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm2, %xmm4
	vaesenclast	%xmm1, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovaps	%xmm4, -112(%rsp)
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vpslldq	$4, %xmm2, %xmm1
	vpslldq	$8, %xmm2, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpslldq	$12, %xmm2, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm7
	vaesenclast	%xmm13, %xmm7, %xmm7
	vpxor	%xmm1, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI0_6(%rip), %xmm1
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vpslldq	$4, %xmm4, %xmm9
	vpslldq	$8, %xmm4, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpslldq	$12, %xmm4, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm4, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm7, %xmm8
	vaesenclast	%xmm1, %xmm8, %xmm8
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm14, %xmm14
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpslldq	$12, %xmm7, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm13, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI0_7(%rip), %xmm1
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vpslldq	$4, %xmm8, %xmm11
	vpslldq	$8, %xmm8, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpslldq	$12, %xmm8, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm8, %xmm11, %xmm11
	vpshufb	%xmm0, %xmm9, %xmm10
	vaesenclast	%xmm1, %xmm10, %xmm10
	vpxor	%xmm11, %xmm10, %xmm10
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
	vmovdqa	%xmm1, -128(%rsp)
	vaesenc	%xmm9, %xmm14, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm14
	vpor	%xmm0, %xmm14, %xmm0
	vpblendd	$12, %xmm1, %xmm13, %xmm1
	vpsllq	$63, %xmm1, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpsllq	$62, %xmm1, %xmm13
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm0
	vpbroadcastq	.LCPI0_11(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm1
	vpshufd	$78, %xmm0, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm1
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm3
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm5
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm3
	vpslldq	$8, %xmm1, %xmm12
	vpxor	%xmm3, %xmm12, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm12
	vpshufd	$78, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpxor	%xmm2, %xmm12, %xmm2
	vpxor	%xmm5, %xmm2, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vmovups	(%rsi), %ymm3
	vmovups	%ymm3, (%rdi)
	vmovaps	-16(%rsp), %xmm3
	vmovaps	%xmm3, 32(%rdi)
	vmovaps	-32(%rsp), %xmm3
	vmovaps	%xmm3, 48(%rdi)
	vmovaps	-48(%rsp), %xmm3
	vmovaps	%xmm3, 64(%rdi)
	vmovaps	-64(%rsp), %xmm3
	vmovaps	%xmm3, 80(%rdi)
	vmovaps	-80(%rsp), %xmm3
	vmovaps	%xmm3, 96(%rdi)
	vmovaps	-96(%rsp), %xmm3
	vmovaps	%xmm3, 112(%rdi)
	vmovaps	-112(%rsp), %xmm3
	vmovaps	%xmm3, 128(%rdi)
	vmovaps	%xmm7, 144(%rdi)
	vmovaps	%xmm8, 160(%rdi)
	vmovaps	%xmm9, 176(%rdi)
	vmovaps	%xmm10, 192(%rdi)
	vmovdqa	%xmm11, 208(%rdi)
	vmovaps	-128(%rsp), %xmm3
	vmovaps	%xmm3, 224(%rdi)
	vmovdqa	%xmm13, 240(%rdi)
	vmovdqa	%xmm14, 256(%rdi)
	vmovdqa	%xmm6, 272(%rdi)
	vmovdqa	%xmm0, 288(%rdi)
	vmovdqa	%xmm1, 304(%rdi)
	vmovdqa	%xmm2, 320(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_haswell_init, .Lfunc_end0-haberdashery_aes256gcm_haswell_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
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
.LCPI1_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_3:
	.zero	8
	.quad	-4467570830351532032
.LCPI1_4:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_5:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_6:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI1_7:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_8:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_9:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_10:
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
.LCPI1_11:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_12:
	.long	16777216
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_13:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_haswell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_encrypt,@function
haberdashery_aes256gcm_haswell_encrypt:
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
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	512(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	528(%rsp), %r13
	jne	.LBB1_45
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_45
	cmpq	$16, 544(%rsp)
	jne	.LBB1_45
	cmpq	$12, %rdx
	jne	.LBB1_45
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_45
	movq	%r9, %r15
	movq	%rdi, %rbx
	vpbroadcastd	.LCPI1_12(%rip), %xmm0
	vpinsrd	$0, (%rsi), %xmm0, %xmm0
	vmovq	4(%rsi), %xmm1
	vpshufd	$80, %xmm1, %xmm1
	vpblendd	$6, %xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 128(%rsp)
	testq	%r14, %r14
	je	.LBB1_10
	vmovdqa	240(%rbx), %xmm12
	vpxor	%xmm3, %xmm3, %xmm3
	cmpq	$96, %r14
	vmovdqa	%xmm12, 16(%rsp)
	jb	.LBB1_11
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm9
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm6
	vpshufb	%xmm0, %xmm2, %xmm8
	vpshufb	%xmm0, %xmm3, %xmm7
	vpshufb	%xmm0, %xmm9, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm9
	vpshufb	%xmm0, %xmm4, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm4
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm11
	vmovdqa	256(%rbx), %xmm1
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm12
	vmovdqa	272(%rbx), %xmm2
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm13
	vmovdqa	288(%rbx), %xmm3
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm14
	vpxor	%xmm4, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm15
	vmovdqa	304(%rbx), %xmm4
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm5
	vpxor	%xmm9, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm10, %xmm2, %xmm13
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm10, %xmm2, %xmm15
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm14
	vpxor	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm10, %xmm2, %xmm10
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm5
	vpxor	%xmm5, %xmm13, %xmm5
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm13
	vpxor	%xmm5, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm15
	vmovdqa	320(%rbx), %xmm5
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm7
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm14
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm13
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm10
	vpxor	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm7
	vpxor	%xmm13, %xmm15, %xmm13
	vpxor	%xmm10, %xmm13, %xmm10
	vpxor	%xmm7, %xmm14, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm12, %xmm8
	addq	$96, %rcx
	leaq	-96(%r14), %rax
	cmpq	$96, %rax
	jb	.LBB1_9
	.p2align	4, 0x90
.LBB1_8:
	vmovdqu	(%rcx), %xmm10
	vmovdqu	32(%rcx), %xmm11
	vmovdqu	48(%rcx), %xmm12
	vmovdqu	64(%rcx), %xmm13
	vmovdqu	80(%rcx), %xmm14
	vpslldq	$8, %xmm9, %xmm15
	vpxor	%xmm7, %xmm15, %xmm7
	vpsrldq	$8, %xmm9, %xmm9
	vpbroadcastq	.LCPI1_13(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm15
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm15
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufb	%xmm0, %xmm14, %xmm9
	vmovdqa	16(%rsp), %xmm6
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm10
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm14
	vpxor	%xmm7, %xmm15, %xmm8
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm7
	vpshufb	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm9
	vpshufb	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm15
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm14
	vpxor	%xmm10, %xmm15, %xmm10
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm15
	vpshufb	%xmm0, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm13
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm15
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm14
	vpxor	%xmm9, %xmm13, %xmm9
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm12
	vpxor	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm14
	vpxor	%xmm7, %xmm13, %xmm7
	vpxor	%xmm14, %xmm12, %xmm12
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm11
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm13, %xmm4, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm13, %xmm4, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpxor	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm4, %xmm7
	vpxor	%xmm7, %xmm9, %xmm12
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm8
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB1_8
.LBB1_9:
	vpslldq	$8, %xmm9, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpsrldq	$8, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm1
	vpxor	%xmm2, %xmm8, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm0, %xmm3
	vmovdqa	16(%rsp), %xmm12
	cmpq	$16, %rax
	jae	.LBB1_12
	jmp	.LBB1_21
.LBB1_10:
	vmovdqa	240(%rbx), %xmm12
	vpxor	%xmm3, %xmm3, %xmm3
	testq	%r13, %r13
	jne	.LBB1_24
	jmp	.LBB1_44
.LBB1_11:
	movq	%r14, %rax
	cmpq	$16, %rax
	jb	.LBB1_21
.LBB1_12:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_13
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_14
.LBB1_19:
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	.p2align	4, 0x90
.LBB1_20:
	vmovdqu	(%rcx), %xmm2
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm4
	vmovdqu	16(%rcx), %xmm5
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm3
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm4
	addq	$-32, %rax
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
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
	vpxor	%xmm2, %xmm4, %xmm3
	cmpq	$15, %rax
	ja	.LBB1_20
.LBB1_21:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_15
.LBB1_22:
	testq	%r13, %r13
	je	.LBB1_44
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB1_45
	jmp	.LBB1_24
.LBB1_13:
	cmpq	$16, %rdx
	jae	.LBB1_19
.LBB1_14:
	testq	%rdx, %rdx
	je	.LBB1_22
.LBB1_15:
	vmovdqa	%xmm3, (%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_39
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovdqa	16(%rsp), %xmm12
	vmovdqa	(%rsp), %xmm1
	jb	.LBB1_45
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
.LBB1_24:
	vmovdqa	128(%rsp), %xmm0
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm1
	movq	520(%rsp), %rdx
	vpaddd	.LCPI1_2(%rip), %xmm1, %xmm13
	cmpq	$96, %r13
	jb	.LBB1_29
	vmovdqa	%xmm3, (%rsp)
	leaq	96(%r15), %rax
	vmovdqa	.LCPI1_1(%rip), %xmm8
	vpshufb	%xmm8, %xmm13, %xmm2
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm8, %xmm3, %xmm3
	vpshufb	%xmm8, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpshufb	%xmm8, %xmm5, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm6
	vpshufb	%xmm8, %xmm6, %xmm6
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm7
	vpaddd	.LCPI1_9(%rip), %xmm1, %xmm13
	vpshufb	%xmm8, %xmm7, %xmm8
	vmovdqa	(%rbx), %xmm14
	vmovaps	16(%rbx), %xmm0
	vmovaps	32(%rbx), %xmm9
	vmovaps	48(%rbx), %xmm11
	vpxor	%xmm2, %xmm14, %xmm2
	vpxor	%xmm3, %xmm14, %xmm3
	vpxor	%xmm4, %xmm14, %xmm4
	vpxor	%xmm5, %xmm14, %xmm5
	vpxor	%xmm6, %xmm14, %xmm7
	vpxor	%xmm8, %xmm14, %xmm8
	vmovaps	%xmm0, 224(%rsp)
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm9, 416(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm11, 240(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	#NO_APP
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, %xmm11
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rbx), %xmm6
	vmovaps	%xmm6, 400(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%rbx), %xmm6
	vmovaps	%xmm6, 384(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	112(%rbx), %xmm6
	vmovaps	%xmm6, 368(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%rbx), %xmm6
	vmovaps	%xmm6, 352(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	144(%rbx), %xmm6
	vmovaps	%xmm6, 336(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%rbx), %xmm6
	vmovaps	%xmm6, 320(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	176(%rbx), %xmm6
	vmovaps	%xmm6, 304(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%rbx), %xmm6
	vmovaps	%xmm6, 288(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rbx), %xmm6
	vmovaps	%xmm6, 272(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm7
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	vmovaps	224(%rbx), %xmm6
	vmovaps	%xmm6, 256(%rsp)
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm7, %xmm7
	vaesenclast	%xmm6, %xmm8, %xmm8
	#NO_APP
	vpxor	(%r15), %xmm2, %xmm6
	vpxor	16(%r15), %xmm3, %xmm1
	vxorps	32(%r15), %xmm4, %xmm0
	vpxor	48(%r15), %xmm5, %xmm10
	vpxor	64(%r15), %xmm7, %xmm9
	vpxor	80(%r15), %xmm8, %xmm8
	leaq	96(%rdx), %rcx
	vmovdqa	256(%rbx), %xmm5
	vmovdqa	272(%rbx), %xmm4
	vmovdqa	288(%rbx), %xmm3
	vmovdqa	304(%rbx), %xmm2
	vmovdqa	320(%rbx), %xmm15
	vmovdqu	%xmm6, (%rdx)
	vmovdqa	%xmm1, %xmm7
	vmovdqu	%xmm1, 16(%rdx)
	vmovaps	%xmm0, 64(%rsp)
	vmovups	%xmm0, 32(%rdx)
	vmovdqa	%xmm10, %xmm0
	vmovdqu	%xmm10, 48(%rdx)
	vmovdqu	%xmm9, 64(%rdx)
	leaq	-96(%r13), %r12
	vmovdqu	%xmm8, 80(%rdx)
	cmpq	$96, %r12
	vmovdqa	%xmm2, 192(%rsp)
	vmovdqa	%xmm3, 176(%rsp)
	vmovdqa	%xmm4, 160(%rsp)
	jb	.LBB1_31
	vmovdqa	%xmm12, 16(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	vmovdqa	(%rsp), %xmm0
	vmovdqa	%xmm5, 144(%rsp)
	vmovdqa	64(%rsp), %xmm1
	vmovdqa	%xmm14, 208(%rsp)
	.p2align	4, 0x90
.LBB1_27:
	vmovdqa	%xmm7, 112(%rsp)
	vmovdqa	%xmm1, 64(%rsp)
	vmovdqa	%xmm13, 48(%rsp)
	vmovdqa	.LCPI1_1(%rip), %xmm1
	vpshufb	%xmm1, %xmm13, %xmm2
	vpaddd	.LCPI1_2(%rip), %xmm13, %xmm4
	vpshufb	%xmm1, %xmm4, %xmm4
	vpaddd	.LCPI1_4(%rip), %xmm13, %xmm5
	vpshufb	%xmm1, %xmm5, %xmm5
	vpaddd	.LCPI1_5(%rip), %xmm13, %xmm7
	vpshufb	%xmm1, %xmm7, %xmm10
	vpaddd	.LCPI1_6(%rip), %xmm13, %xmm7
	vpshufb	%xmm1, %xmm7, %xmm12
	vpaddd	.LCPI1_7(%rip), %xmm13, %xmm7
	vpshufb	%xmm1, %xmm7, %xmm13
	vpshufb	%xmm1, %xmm6, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpshufb	%xmm1, %xmm8, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	vpxor	%xmm2, %xmm14, %xmm6
	vpxor	%xmm4, %xmm14, %xmm8
	vpxor	%xmm5, %xmm14, %xmm4
	vpxor	%xmm10, %xmm14, %xmm10
	vpxor	%xmm12, %xmm14, %xmm5
	vpxor	%xmm13, %xmm14, %xmm12
	vmovaps	224(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm13, %xmm13, %xmm13
	vpxor	%xmm14, %xmm14, %xmm14
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqa	%xmm15, %xmm3
	vmovaps	%xmm11, %xmm15
	vmovdqa	%xmm9, %xmm11
	vmovaps	416(%rsp), %xmm9
	vmovaps	16(%rsp), %xmm0
	vmovaps	96(%rsp), %xmm1
	#APP
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm7
	vpxor	%xmm7, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm7
	vpxor	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm7
	vpxor	%xmm7, %xmm13, %xmm13
	#NO_APP
	vmovaps	240(%rsp), %xmm7
	vmovaps	%xmm15, %xmm9
	vmovdqa	%xmm3, %xmm15
	vmovdqa	.LCPI1_1(%rip), %xmm1
	vpshufb	%xmm1, %xmm11, %xmm0
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovaps	144(%rsp), %xmm7
	vmovaps	%xmm9, %xmm11
	#APP
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm3
	vpxor	%xmm3, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovdqa	80(%rsp), %xmm0
	vpshufb	%xmm1, %xmm0, %xmm0
	vmovaps	400(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	384(%rsp), %xmm7
	vmovaps	160(%rsp), %xmm9
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovdqa	64(%rsp), %xmm0
	vpshufb	%xmm1, %xmm0, %xmm0
	vmovaps	368(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	352(%rsp), %xmm7
	vmovaps	176(%rsp), %xmm9
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovdqa	112(%rsp), %xmm0
	vpshufb	%xmm1, %xmm0, %xmm0
	vmovaps	336(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	320(%rsp), %xmm7
	vmovaps	192(%rsp), %xmm1
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm3
	vpxor	%xmm3, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovaps	304(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm12, %xmm12
	#NO_APP
	vmovaps	288(%rsp), %xmm3
	vmovdqa	(%rsp), %xmm1
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm0
	vpxor	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm1, %xmm0
	vpxor	%xmm0, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm15, %xmm1, %xmm0
	vpxor	%xmm0, %xmm13, %xmm13
	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm13, %xmm1, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpunpckhqdq	%xmm1, %xmm13, %xmm2
	vmovdqa	48(%rsp), %xmm13
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm3
	vpxor	%xmm2, %xmm14, %xmm2
	vmovdqa	208(%rsp), %xmm14
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm0
	vmovaps	272(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	256(%rsp), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm6, %xmm6
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm4, %xmm4
	vaesenclast	%xmm3, %xmm10, %xmm10
	vaesenclast	%xmm3, %xmm5, %xmm5
	vaesenclast	%xmm3, %xmm12, %xmm12
	#NO_APP
	vpxor	(%rax), %xmm6, %xmm6
	vpxor	16(%rax), %xmm8, %xmm7
	vpxor	32(%rax), %xmm4, %xmm1
	vpxor	48(%rax), %xmm10, %xmm3
	vpxor	64(%rax), %xmm5, %xmm9
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	80(%rax), %xmm12, %xmm8
	addq	$96, %rax
	vmovdqu	%xmm6, (%rcx)
	vmovdqu	%xmm7, 16(%rcx)
	vmovdqu	%xmm1, 32(%rcx)
	vmovdqa	%xmm3, 80(%rsp)
	vmovdqu	%xmm3, 48(%rcx)
	vmovdqu	%xmm9, 64(%rcx)
	vmovdqu	%xmm8, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %r12
	vpaddd	.LCPI1_8(%rip), %xmm13, %xmm13
	cmpq	$95, %r12
	ja	.LBB1_27
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	16(%rsp), %xmm12
	vmovdqa	.LCPI1_1(%rip), %xmm14
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	%xmm7, %xmm10
	vmovdqa	%xmm1, %xmm11
	vmovdqa	80(%rsp), %xmm0
	jmp	.LBB1_32
.LBB1_29:
	movq	%r13, %r12
	movq	%r13, %rbp
	cmpq	$16, %r12
	jae	.LBB1_33
.LBB1_30:
	movq	%rdx, %r13
	movq	%r15, %rsi
	jmp	.LBB1_35
.LBB1_31:
	vmovdqa	.LCPI1_1(%rip), %xmm14
	vmovdqa	%xmm7, %xmm10
	vmovdqa	64(%rsp), %xmm11
.LBB1_32:
	vpshufb	%xmm14, %xmm8, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm4
	vpshufb	%xmm14, %xmm9, %xmm3
	vmovdqa	%xmm5, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm5, %xmm5
	vpshufb	%xmm14, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm6
	vpxor	(%rsp), %xmm1, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm7
	vpshufb	%xmm14, %xmm10, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vpshufb	%xmm14, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm10
	vpshufb	%xmm14, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm11
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vmovdqa	160(%rsp), %xmm11
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm5
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm7
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm10
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpxor	%xmm7, %xmm10, %xmm3
	vmovdqa	176(%rsp), %xmm10
	vpclmulqdq	$0, %xmm9, %xmm10, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm10, %xmm7
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm10, %xmm5
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm9, %xmm10, %xmm7
	vpxor	%xmm3, %xmm6, %xmm3
	vmovdqa	192(%rsp), %xmm9
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm6
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm7
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm2
	vpxor	%xmm6, %xmm4, %xmm4
	vpxor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm3
	movq	%rcx, %rdx
	movq	%rax, %r15
	movq	%r13, %rbp
	cmpq	$16, %r12
	jb	.LBB1_30
.LBB1_33:
	vmovaps	(%rbx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	32(%rbx), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	48(%rbx), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	80(%rbx), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovaps	96(%rbx), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovdqa	112(%rbx), %xmm7
	vmovdqa	128(%rbx), %xmm8
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm10
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm5
	vmovdqa	208(%rbx), %xmm6
	vmovdqa	224(%rbx), %xmm14
	vmovdqa	.LCPI1_1(%rip), %xmm15
	vpbroadcastq	.LCPI1_13(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_34:
	vpshufb	%xmm15, %xmm13, %xmm1
	vpxor	16(%rsp), %xmm1, %xmm1
	vaesenc	48(%rsp), %xmm1, %xmm1
	vaesenc	64(%rsp), %xmm1, %xmm1
	vaesenc	80(%rsp), %xmm1, %xmm1
	vaesenc	(%rsp), %xmm1, %xmm1
	vaesenc	112(%rsp), %xmm1, %xmm1
	vaesenc	96(%rsp), %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm1
	vpxor	(%r15), %xmm1, %xmm1
	vpshufb	%xmm15, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm4
	vmovdqu	%xmm1, (%rdx)
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm1
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	leaq	16(%r15), %rsi
	leaq	16(%rdx), %r13
	addq	$-16, %r12
	vpaddd	.LCPI1_2(%rip), %xmm13, %xmm13
	movq	%r13, %rdx
	movq	%rsi, %r15
	cmpq	$15, %r12
	ja	.LBB1_34
.LBB1_35:
	vmovdqa	%xmm13, 48(%rsp)
	testq	%r12, %r12
	vmovdqa	%xmm3, (%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	je	.LBB1_40
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%r12, %rdx
	callq	*%r15
	vmovdqa	48(%rsp), %xmm0
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	(%rbx), %xmm0, %xmm0
	vaesenc	16(%rbx), %xmm0, %xmm0
	vaesenc	32(%rbx), %xmm0, %xmm0
	vaesenc	48(%rbx), %xmm0, %xmm0
	vaesenc	64(%rbx), %xmm0, %xmm0
	vaesenc	80(%rbx), %xmm0, %xmm0
	vaesenc	96(%rbx), %xmm0, %xmm0
	vaesenc	112(%rbx), %xmm0, %xmm0
	vaesenc	128(%rbx), %xmm0, %xmm0
	vaesenc	144(%rbx), %xmm0, %xmm0
	vaesenc	160(%rbx), %xmm0, %xmm0
	vaesenc	176(%rbx), %xmm0, %xmm0
	vaesenc	192(%rbx), %xmm0, %xmm0
	vaesenc	208(%rbx), %xmm0, %xmm0
	vaesenclast	224(%rbx), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	movq	%rbp, %r13
	vmovdqa	240(%rbx), %xmm12
	testq	%rbp, %rbp
	jne	.LBB1_37
	jmp	.LBB1_43
.LBB1_40:
	vmovdqa	%xmm0, 48(%rsp)
	movq	%rbp, %r13
	vmovdqa	240(%rbx), %xmm12
	testq	%rbp, %rbp
	je	.LBB1_43
.LBB1_37:
	vmovdqa	%xmm12, 16(%rsp)
	vmovdqa	48(%rsp), %xmm0
	vmovdqa	%xmm0, 432(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	432(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB1_42
	vmovdqa	32(%rsp), %xmm0
.LBB1_39:
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm2
	vmovdqa	16(%rsp), %xmm12
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	jmp	.LBB1_44
.LBB1_42:
	vmovdqa	16(%rsp), %xmm12
.LBB1_43:
	vmovdqa	(%rsp), %xmm3
.LBB1_44:
	vmovq	%r14, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	movq	536(%rsp), %rax
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	128(%rsp), %xmm3
	vpxor	(%rbx), %xmm3, %xmm3
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
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqu	%xmm0, (%rax)
	movl	$1, %ebp
.LBB1_45:
	movl	%ebp, %eax
	addq	$456, %rsp
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
.Lfunc_end1:
	.size	haberdashery_aes256gcm_haswell_encrypt, .Lfunc_end1-haberdashery_aes256gcm_haswell_encrypt
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
.LCPI2_3:
	.zero	8
	.quad	-4467570830351532032
.LCPI2_4:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_6:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI2_7:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_8:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_9:
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
.LCPI2_10:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_11:
	.long	16777216
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_12:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_haswell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_decrypt,@function
haberdashery_aes256gcm_haswell_decrypt:
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
	subq	$504, %rsp
	.cfi_def_cfa_offset 560
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	560(%rsp), %rbp
	xorl	%eax, %eax
	cmpq	592(%rsp), %rbp
	jne	.LBB2_47
	cmpq	$12, %rdx
	jne	.LBB2_47
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %rbp
	ja	.LBB2_47
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_47
	cmpq	$16, 576(%rsp)
	jne	.LBB2_47
	movq	%r9, %r15
	movq	%rdi, %rbx
	vmovq	4(%rsi), %xmm0
	vpbroadcastd	.LCPI2_11(%rip), %xmm1
	vpinsrd	$0, (%rsi), %xmm1, %xmm9
	vpshufd	$80, %xmm0, %xmm0
	testq	%r14, %r14
	je	.LBB2_6
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	240(%rbx), %xmm0
	vpxor	%xmm8, %xmm8, %xmm8
	cmpq	$96, %r14
	vmovdqa	%xmm9, 16(%rsp)
	jb	.LBB2_8
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vmovdqu	32(%rcx), %xmm4
	vmovdqu	48(%rcx), %xmm5
	vmovdqu	64(%rcx), %xmm6
	vmovdqu	80(%rcx), %xmm10
	vmovdqa	.LCPI2_1(%rip), %xmm1
	vpshufb	%xmm1, %xmm2, %xmm13
	vpshufb	%xmm1, %xmm3, %xmm9
	vpshufb	%xmm1, %xmm4, %xmm8
	vpshufb	%xmm1, %xmm10, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm10
	vpshufb	%xmm1, %xmm5, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vpshufb	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm12
	vmovdqa	256(%rbx), %xmm2
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vmovdqa	%xmm3, (%rsp)
	vmovdqa	272(%rbx), %xmm3
	vpclmulqdq	$0, %xmm6, %xmm2, %xmm14
	vmovdqa	288(%rbx), %xmm4
	vpclmulqdq	$1, %xmm6, %xmm2, %xmm15
	vpxor	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm7
	vmovdqa	304(%rbx), %xmm5
	vpclmulqdq	$17, %xmm6, %xmm2, %xmm6
	vpxor	%xmm10, %xmm14, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm14
	vpxor	%xmm7, %xmm15, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm15
	vpxor	%xmm7, %xmm12, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm12
	vpxor	(%rsp), %xmm6, %xmm6
	vmovdqa	%xmm6, (%rsp)
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm11
	vpxor	%xmm12, %xmm15, %xmm12
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm14, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm15
	vmovdqa	320(%rbx), %xmm6
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm8
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm14
	vpxor	%xmm7, %xmm12, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm12
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm11
	vpxor	(%rsp), %xmm8, %xmm8
	vmovdqa	%xmm8, (%rsp)
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm8
	vpxor	%xmm12, %xmm15, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm8, %xmm14, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpxor	(%rsp), %xmm7, %xmm13
	addq	$96, %rcx
	leaq	-96(%r14), %rax
	cmpq	$96, %rax
	jb	.LBB2_15
	.p2align	4, 0x90
.LBB2_14:
	vmovdqu	(%rcx), %xmm11
	vmovdqu	32(%rcx), %xmm12
	vmovups	48(%rcx), %xmm7
	vmovaps	%xmm7, (%rsp)
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vpslldq	$8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm10, %xmm8
	vpbroadcastq	.LCPI2_12(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm10
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm10
	vpxor	%xmm8, %xmm13, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm1, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufb	%xmm1, %xmm15, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm15
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm8
	vpxor	%xmm7, %xmm10, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm7
	vpshufb	%xmm1, %xmm12, %xmm10
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm11
	vpshufb	%xmm1, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm14
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm8
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm15
	vmovdqa	(%rsp), %xmm13
	vpshufb	%xmm1, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm12
	vpxor	%xmm15, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm3, %xmm15
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm13, %xmm3, %xmm8
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm12
	vpxor	%xmm12, %xmm15, %xmm12
	vpclmulqdq	$17, %xmm13, %xmm3, %xmm13
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm14
	vpxor	%xmm14, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm14
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm14, %xmm13, %xmm8
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm1, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm10
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm10
	vpxor	%xmm10, %xmm8, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm7
	vpxor	%xmm7, %xmm12, %xmm13
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB2_14
.LBB2_15:
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxor	%xmm3, %xmm13, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm2, %xmm1, %xmm8
	vmovdqa	16(%rsp), %xmm9
	cmpq	$16, %rax
	jae	.LBB2_16
	jmp	.LBB2_10
.LBB2_6:
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r12d, %r12d
	vpxor	%xmm8, %xmm8, %xmm8
	vpblendd	$6, %xmm0, %xmm9, %xmm5
	movq	568(%rsp), %rsi
	testq	%rbp, %rbp
	jne	.LBB2_26
.LBB2_24:
	testq	%r12, %r12
	je	.LBB2_25
	vmovdqa	240(%rbx), %xmm6
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm8
	jmp	.LBB2_43
.LBB2_8:
	movq	%r14, %rax
	cmpq	$16, %rax
	jb	.LBB2_10
.LBB2_16:
	leaq	-16(%rax), %r12
	testb	$16, %r12b
	je	.LBB2_17
	cmpq	$16, %r12
	jae	.LBB2_19
.LBB2_11:
	testq	%r12, %r12
	je	.LBB2_12
.LBB2_21:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r12, %rdx
	vmovdqa	%xmm8, (%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm1
	jmp	.LBB2_22
.LBB2_17:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_12(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm8
	movq	%r12, %rax
	cmpq	$16, %r12
	jb	.LBB2_11
.LBB2_19:
	vmovdqa	.LCPI2_1(%rip), %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm3
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vmovdqu	16(%rcx), %xmm6
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufb	%xmm1, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	addq	$-32, %rax
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm8
	cmpq	$15, %rax
	ja	.LBB2_20
.LBB2_10:
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB2_21
.LBB2_12:
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r12d, %r12d
.LBB2_22:
	vmovdqa	48(%rsp), %xmm0
	vpblendd	$6, %xmm0, %xmm9, %xmm5
	movq	568(%rsp), %rsi
	testq	%rbp, %rbp
	je	.LBB2_24
.LBB2_26:
	movabsq	$-68719476720, %rcx
	leaq	(%rcx,%rbp), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_47
	vpshufb	.LCPI2_1(%rip), %xmm5, %xmm0
	testq	%r12, %r12
	je	.LBB2_28
	vmovdqa	240(%rbx), %xmm10
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm8
	vpxor	%xmm1, %xmm1, %xmm1
	jmp	.LBB2_30
.LBB2_25:
	vmovdqa	240(%rbx), %xmm6
.LBB2_43:
	vmovdqu	(%rsi), %xmm7
	xorl	%ebp, %ebp
	jmp	.LBB2_46
.LBB2_28:
	vmovdqa	240(%rbx), %xmm10
.LBB2_30:
	movq	584(%rsp), %rax
	vpaddd	.LCPI2_2(%rip), %xmm0, %xmm0
	cmpq	$96, %rbp
	vmovdqa	%xmm10, 48(%rsp)
	vmovdqa	%xmm5, 160(%rsp)
	vmovdqa	%xmm1, 176(%rsp)
	jb	.LBB2_31
	vmovaps	256(%rbx), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovaps	272(%rbx), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	288(%rbx), %xmm1
	vmovaps	%xmm1, 464(%rsp)
	vmovaps	304(%rbx), %xmm1
	vmovaps	%xmm1, 448(%rsp)
	vmovaps	320(%rbx), %xmm1
	vmovaps	%xmm1, 432(%rsp)
	vmovaps	(%rbx), %xmm1
	vmovaps	%xmm1, 256(%rsp)
	vmovaps	16(%rbx), %xmm1
	vmovaps	%xmm1, 416(%rsp)
	vmovaps	32(%rbx), %xmm1
	vmovaps	%xmm1, 400(%rsp)
	vmovaps	48(%rbx), %xmm1
	vmovaps	%xmm1, 384(%rsp)
	vmovaps	64(%rbx), %xmm1
	vmovaps	%xmm1, 368(%rsp)
	vmovaps	80(%rbx), %xmm1
	vmovaps	%xmm1, 352(%rsp)
	vmovaps	96(%rbx), %xmm1
	vmovaps	%xmm1, 336(%rsp)
	vmovaps	112(%rbx), %xmm1
	vmovaps	%xmm1, 320(%rsp)
	vmovaps	128(%rbx), %xmm1
	vmovaps	%xmm1, 304(%rsp)
	vmovaps	144(%rbx), %xmm1
	vmovaps	%xmm1, 288(%rsp)
	vmovaps	160(%rbx), %xmm1
	vmovaps	%xmm1, 272(%rsp)
	movq	%rbp, %r12
	vmovaps	176(%rbx), %xmm1
	vmovaps	%xmm1, 240(%rsp)
	vmovaps	192(%rbx), %xmm1
	vmovaps	%xmm1, 224(%rsp)
	vmovaps	208(%rbx), %xmm1
	vmovaps	%xmm1, 208(%rsp)
	vmovdqa	224(%rbx), %xmm1
	vmovdqa	%xmm1, 192(%rsp)
	.p2align	4, 0x90
.LBB2_35:
	vmovdqu	(%r15), %xmm7
	vmovdqa	%xmm7, 128(%rsp)
	vmovups	32(%r15), %xmm1
	vmovaps	%xmm1, (%rsp)
	vmovups	48(%r15), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovdqu	64(%r15), %xmm10
	vmovdqa	%xmm10, 96(%rsp)
	vmovdqu	80(%r15), %xmm11
	vmovdqa	%xmm11, 144(%rsp)
	vmovdqa	%xmm0, %xmm9
	vmovdqa	.LCPI2_1(%rip), %xmm4
	vpshufb	%xmm4, %xmm0, %xmm0
	vpaddd	.LCPI2_2(%rip), %xmm9, %xmm1
	vpshufb	%xmm4, %xmm1, %xmm1
	vpaddd	.LCPI2_4(%rip), %xmm9, %xmm2
	vpshufb	%xmm4, %xmm2, %xmm2
	vpaddd	.LCPI2_5(%rip), %xmm9, %xmm3
	vpshufb	%xmm4, %xmm3, %xmm3
	vpaddd	.LCPI2_6(%rip), %xmm9, %xmm5
	vpshufb	%xmm4, %xmm5, %xmm5
	vpaddd	.LCPI2_7(%rip), %xmm9, %xmm6
	vpshufb	%xmm4, %xmm6, %xmm6
	vpshufb	%xmm4, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	%xmm7, 112(%rsp)
	vpshufb	%xmm4, %xmm11, %xmm8
	vmovdqa	256(%rsp), %xmm7
	vpxor	%xmm0, %xmm7, %xmm14
	vpxor	%xmm1, %xmm7, %xmm15
	vpxor	%xmm2, %xmm7, %xmm0
	vpxor	%xmm3, %xmm7, %xmm1
	vpxor	%xmm5, %xmm7, %xmm2
	vpxor	%xmm6, %xmm7, %xmm13
	vmovaps	416(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm13, %xmm13
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vxorps	%xmm3, %xmm3, %xmm3
	vmovaps	400(%rsp), %xmm12
	vmovaps	48(%rsp), %xmm11
	#APP
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm5
	vpxor	%xmm5, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm5
	vpxor	%xmm5, %xmm7, %xmm7
	#NO_APP
	vpshufb	%xmm4, %xmm10, %xmm5
	vmovaps	384(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vmovaps	80(%rsp), %xmm10
	vmovaps	368(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vmovdqa	16(%rsp), %xmm5
	vpshufb	%xmm4, %xmm5, %xmm5
	vmovaps	352(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vmovaps	64(%rsp), %xmm10
	vmovaps	336(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vmovdqa	(%rsp), %xmm5
	vpshufb	%xmm4, %xmm5, %xmm5
	vmovaps	320(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vmovaps	464(%rsp), %xmm10
	vmovaps	304(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vmovdqu	16(%r15), %xmm5
	vmovaps	288(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm4, %xmm5, %xmm8
	vmovaps	448(%rsp), %xmm12
	vmovaps	272(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm8, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm8, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm12, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vmovdqa	48(%rsp), %xmm10
	vmovaps	240(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vmovdqa	432(%rsp), %xmm12
	vmovdqa	224(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm4
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vpxor	%xmm11, %xmm11, %xmm11
	vpunpcklqdq	%xmm7, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpunpckhqdq	%xmm11, %xmm7, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_12(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm8
	vmovaps	208(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovaps	192(%rsp), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm13, %xmm13
	#NO_APP
	vpxor	128(%rsp), %xmm14, %xmm3
	vpxor	%xmm5, %xmm15, %xmm5
	vxorps	(%rsp), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm1, %xmm1
	vpxor	96(%rsp), %xmm2, %xmm2
	vmovdqu	%xmm3, (%rax)
	vmovdqu	%xmm5, 16(%rax)
	vmovups	%xmm0, 32(%rax)
	vmovdqu	%xmm1, 48(%rax)
	vmovdqu	%xmm2, 64(%rax)
	vpxor	144(%rsp), %xmm13, %xmm0
	vmovdqu	%xmm0, 80(%rax)
	vmovdqa	%xmm9, %xmm0
	addq	$96, %r15
	addq	$96, %rax
	addq	$-96, %r12
	vpaddd	.LCPI2_8(%rip), %xmm9, %xmm0
	cmpq	$95, %r12
	ja	.LBB2_35
	cmpq	$16, %r12
	jb	.LBB2_33
.LBB2_36:
	vmovaps	(%rbx), %xmm1
	vmovaps	%xmm1, (%rsp)
	vmovaps	16(%rbx), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	32(%rbx), %xmm1
	vmovaps	%xmm1, 144(%rsp)
	vmovaps	48(%rbx), %xmm1
	vmovaps	%xmm1, 128(%rsp)
	vmovaps	64(%rbx), %xmm1
	vmovaps	%xmm1, 112(%rsp)
	vmovaps	80(%rbx), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	96(%rbx), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovdqa	112(%rbx), %xmm1
	vmovdqa	%xmm1, 64(%rsp)
	vmovdqa	%xmm8, %xmm3
	vmovdqa	128(%rbx), %xmm8
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm6
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm12
	vmovdqa	208(%rbx), %xmm13
	vmovdqa	224(%rbx), %xmm14
	vmovdqa	.LCPI2_1(%rip), %xmm15
	vpbroadcastq	.LCPI2_12(%rip), %xmm7
	.p2align	4, 0x90
.LBB2_37:
	vmovdqu	(%r15), %xmm1
	vpshufb	%xmm15, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm10, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm10, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	vpshufb	%xmm15, %xmm0, %xmm2
	vpxor	(%rsp), %xmm2, %xmm2
	vaesenc	16(%rsp), %xmm2, %xmm2
	vaesenc	144(%rsp), %xmm2, %xmm2
	vaesenc	128(%rsp), %xmm2, %xmm2
	vaesenc	112(%rsp), %xmm2, %xmm2
	vaesenc	96(%rsp), %xmm2, %xmm2
	vaesenc	80(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqu	%xmm1, (%rax)
	leaq	16(%rax), %r13
	addq	$-16, %r12
	addq	$16, %r15
	vpaddd	.LCPI2_2(%rip), %xmm0, %xmm0
	movq	%r13, %rax
	cmpq	$15, %r12
	ja	.LBB2_37
	jmp	.LBB2_38
.LBB2_31:
	movq	%rbp, %r12
	cmpq	$16, %r12
	jae	.LBB2_36
.LBB2_33:
	movq	%rax, %r13
	vmovdqa	%xmm8, %xmm3
.LBB2_38:
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm3, (%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB2_40
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rax
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%rax, %r15
	callq	*%rax
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpxor	(%rbx), %xmm0, %xmm0
	vaesenc	16(%rbx), %xmm0, %xmm0
	vaesenc	32(%rbx), %xmm0, %xmm0
	vaesenc	48(%rbx), %xmm0, %xmm0
	vaesenc	64(%rbx), %xmm0, %xmm0
	vaesenc	80(%rbx), %xmm0, %xmm0
	vaesenc	96(%rbx), %xmm0, %xmm0
	vaesenc	112(%rbx), %xmm0, %xmm0
	vaesenc	128(%rbx), %xmm0, %xmm0
	vaesenc	144(%rbx), %xmm0, %xmm0
	vaesenc	160(%rbx), %xmm0, %xmm0
	vaesenc	176(%rbx), %xmm0, %xmm0
	vaesenc	192(%rbx), %xmm0, %xmm0
	vaesenc	208(%rbx), %xmm0, %xmm0
	vaesenclast	224(%rbx), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 176(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	vmovdqa	16(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	568(%rsp), %rsi
.LBB2_40:
	vpxor	176(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	%xmm0, 480(%rsp)
	vmovdqa	%xmm2, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	480(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB2_41
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm6
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm8
	vmovdqa	160(%rsp), %xmm5
	jmp	.LBB2_45
.LBB2_41:
	vmovdqa	160(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	(%rsp), %xmm8
.LBB2_45:
	shlq	$3, %rbp
	vmovdqa	16(%rsp), %xmm7
.LBB2_46:
	shlq	$3, %r14
	vmovq	%rbp, %xmm0
	vmovq	%r14, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	(%rbx), %xmm5, %xmm3
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
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_9(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_10(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_47:
	addq	$504, %rsp
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
.Lfunc_end2:
	.size	haberdashery_aes256gcm_haswell_decrypt, .Lfunc_end2-haberdashery_aes256gcm_haswell_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_haswell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_is_supported,@function
haberdashery_aes256gcm_haswell_is_supported:
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
	andl	$297, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcm_haswell_is_supported, .Lfunc_end3-haberdashery_aes256gcm_haswell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	vmovdqu	(%rsi), %xmm4
	vmovdqa	%xmm4, (%rsp)
	vmovdqu	16(%rsi), %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm4, %xmm2
	vpbroadcastd	.LCPI0_3(%rip), %xmm14
	vpshufb	%xmm14, %xmm5, %xmm3
	vaesenclast	.LCPI0_1(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm1
	vaesenc	%xmm5, %xmm4, %xmm15
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm2
	vmovdqa	%xmm5, -16(%rsp)
	vpxor	%xmm2, %xmm0, %xmm2
	vmovdqa	%xmm1, -32(%rsp)
	vpshufd	$255, %xmm1, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	vaesenclast	%xmm0, %xmm3, %xmm3
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm4
	vmovdqa	%xmm4, -48(%rsp)
	vbroadcastss	.LCPI0_2(%rip), %xmm3
	vbroadcastss	.LCPI0_3(%rip), %xmm2
	#APP
	vaesenc	%xmm1, %xmm15, %xmm15
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm1, %xmm6, %xmm6
	vpshufb	%xmm2, %xmm4, %xmm5
	vaesenclast	%xmm3, %xmm5, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm5, %xmm1
	vmovaps	%xmm5, -64(%rsp)
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vpslldq	$4, %xmm4, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpslldq	$12, %xmm4, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufd	$255, %xmm1, %xmm5
	vaesenclast	%xmm0, %xmm5, %xmm5
	vpxor	%xmm3, %xmm5, %xmm5
	#NO_APP
	vbroadcastss	.LCPI0_4(%rip), %xmm3
	vmovaps	%xmm5, %xmm4
	vmovaps	%xmm5, -80(%rsp)
	#APP
	vaesenc	%xmm1, %xmm15, %xmm15
	vpslldq	$4, %xmm1, %xmm7
	vpslldq	$8, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$12, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm1, %xmm7, %xmm7
	vpshufb	%xmm2, %xmm4, %xmm5
	vaesenclast	%xmm3, %xmm5, %xmm5
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm5, %xmm1
	vmovaps	%xmm5, -96(%rsp)
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vpslldq	$4, %xmm4, %xmm3
	vpslldq	$8, %xmm4, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpslldq	$12, %xmm4, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufd	$255, %xmm1, %xmm5
	vaesenclast	%xmm0, %xmm5, %xmm5
	vpxor	%xmm3, %xmm5, %xmm5
	#NO_APP
	vbroadcastss	.LCPI0_5(%rip), %xmm3
	vmovaps	%xmm5, -112(%rsp)
	#APP
	vaesenc	%xmm1, %xmm15, %xmm15
	vpslldq	$4, %xmm1, %xmm9
	vpslldq	$8, %xmm1, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpslldq	$12, %xmm1, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm9
	vpshufb	%xmm2, %xmm5, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm5, %xmm15, %xmm15
	vpslldq	$4, %xmm5, %xmm3
	vpslldq	$8, %xmm5, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpslldq	$12, %xmm5, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm0, %xmm9, %xmm9
	vpxor	%xmm3, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI0_6(%rip), %xmm3
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vpslldq	$4, %xmm8, %xmm11
	vpslldq	$8, %xmm8, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpxor	%xmm8, %xmm11, %xmm11
	vpshufb	%xmm2, %xmm9, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm11, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm12
	vpxor	%xmm3, %xmm12, %xmm3
	vpslldq	$12, %xmm9, %xmm12
	vpxor	%xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm0, %xmm11, %xmm11
	vpxor	%xmm3, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI0_7(%rip), %xmm3
	#APP
	vaesenc	%xmm10, %xmm15, %xmm15
	vpslldq	$4, %xmm10, %xmm13
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm13, %xmm13
	vpslldq	$12, %xmm10, %xmm1
	vpxor	%xmm1, %xmm13, %xmm13
	vpxor	%xmm10, %xmm13, %xmm13
	vpshufb	%xmm2, %xmm11, %xmm12
	vaesenclast	%xmm3, %xmm12, %xmm12
	vpxor	%xmm13, %xmm12, %xmm12
	#NO_APP
	vpslldq	$4, %xmm11, %xmm1
	vpunpcklqdq	%xmm11, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vinsertps	$55, %xmm11, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm12, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm13
	vpslldq	$4, %xmm12, %xmm1
	vpunpcklqdq	%xmm12, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vinsertps	$55, %xmm12, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm14, %xmm13, %xmm2
	vaesenclast	.LCPI0_8(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	%xmm2, -128(%rsp)
	vaesenc	%xmm11, %xmm15, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI0_9(%rip), %xmm1, %xmm1
	vpsrlq	$63, %xmm1, %xmm2
	vpaddq	%xmm1, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm3
	vpor	%xmm3, %xmm1, %xmm1
	vpblendd	$12, %xmm2, %xmm0, %xmm0
	vpsllq	$63, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsllq	$62, %xmm0, %xmm2
	vpsllq	$57, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpbroadcastq	.LCPI0_11(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm3
	vpslldq	$8, %xmm0, %xmm14
	vpxor	%xmm3, %xmm14, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm14
	vpshufd	$78, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm15, %xmm1, %xmm2
	vpxor	%xmm3, %xmm14, %xmm3
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm3
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	vpshufd	$78, %xmm14, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm2
	vpshufd	$78, %xmm0, %xmm14
	vpxor	%xmm2, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm4
	vpshufd	$78, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpxor	%xmm4, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm14
	vpxor	%xmm2, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm14
	vpslldq	$8, %xmm2, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm7, %xmm14
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm7, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm7
	vpxor	%xmm2, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm5, %xmm2, %xmm2
	vmovaps	(%rsp), %xmm4
	vmovaps	%xmm4, (%rdi)
	vmovaps	-16(%rsp), %xmm4
	vmovaps	%xmm4, 16(%rdi)
	vmovaps	-32(%rsp), %xmm4
	vmovaps	%xmm4, 32(%rdi)
	vmovaps	-48(%rsp), %xmm4
	vmovaps	%xmm4, 48(%rdi)
	vmovaps	-64(%rsp), %xmm4
	vmovaps	%xmm4, 64(%rdi)
	vmovaps	-80(%rsp), %xmm4
	vmovaps	%xmm4, 80(%rdi)
	vmovaps	-96(%rsp), %xmm4
	vmovaps	%xmm4, 96(%rdi)
	vmovaps	-112(%rsp), %xmm4
	vmovaps	%xmm4, 112(%rdi)
	vmovaps	%xmm8, 128(%rdi)
	vmovaps	%xmm9, 144(%rdi)
	vmovaps	%xmm10, 160(%rdi)
	vmovaps	%xmm11, 176(%rdi)
	vmovaps	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovaps	-128(%rsp), %xmm4
	vmovaps	%xmm4, 224(%rdi)
	vmovdqa	%xmm15, 240(%rdi)
	vmovdqa	%xmm1, 256(%rdi)
	vmovdqa	%xmm6, 272(%rdi)
	vmovdqa	%xmm0, 288(%rdi)
	vmovdqa	%xmm2, 304(%rdi)
	vmovdqa	%xmm3, 320(%rdi)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_haswell_init, .Lfunc_end0-haberdashery_aes256gcm_haswell_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
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
.LCPI1_1:
	.long	1
	.long	0
	.long	0
	.long	0
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
.LCPI1_12:
	.zero	16
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
	movq	512(%rsp), %r15
	xorl	%eax, %eax
	cmpq	528(%rsp), %r15
	jne	.LBB1_41
	cmpq	$16, 544(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	orb	%r10b, %r11b
	jne	.LBB1_41
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483647, %r10
	setae	%r10b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r10b, %dl
	jne	.LBB1_41
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vpxor	%xmm4, %xmm4, %xmm4
	testq	%r8, %r8
	je	.LBB1_20
	cmpq	$96, %r8
	jb	.LBB1_5
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm9
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm13
	vpshufb	%xmm0, %xmm2, %xmm8
	vpshufb	%xmm0, %xmm3, %xmm6
	vpshufb	%xmm0, %xmm9, %xmm3
	vmovdqa	240(%rdi), %xmm1
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm9
	vpshufb	%xmm0, %xmm4, %xmm10
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm11
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm12
	vmovdqa	256(%rdi), %xmm2
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm7
	vmovdqa	272(%rdi), %xmm4
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm14
	vmovdqa	288(%rdi), %xmm3
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm15
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm12
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm5
	vpxor	%xmm12, %xmm15, %xmm12
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm14
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm12
	vpxor	%xmm7, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm15
	vmovdqa	304(%rdi), %xmm5
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm10
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm15
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm14
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm12
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm10
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqa	%xmm6, (%rsp)
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm15
	vmovdqa	320(%rdi), %xmm6
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm7
	vpxor	%xmm10, %xmm14, %xmm10
	vpxor	%xmm15, %xmm10, %xmm10
	vpxor	%xmm7, %xmm12, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	(%rsp), %xmm7, %xmm8
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB1_19
	vmovdqa	%xmm6, (%rsp)
	vmovdqa	%xmm5, %xmm6
	vmovdqa	%xmm3, %xmm5
	vmovdqa	%xmm2, %xmm3
	.p2align	4, 0x90
.LBB1_18:
	vmovdqu	(%rcx), %xmm12
	vmovdqu	32(%rcx), %xmm13
	vmovdqu	48(%rcx), %xmm11
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vpslldq	$8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm10, %xmm9
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm10
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm10
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufb	%xmm0, %xmm15, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm15
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	%xmm1, %xmm2
	vmovdqa	%xmm0, %xmm1
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm0
	vpxor	%xmm7, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm7
	vpshufb	%xmm1, %xmm13, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm10
	vpshufb	%xmm1, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm3, %xmm13
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm3, %xmm7
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm14
	vpshufb	%xmm1, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm3, %xmm12
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm14
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm7
	vpxor	%xmm10, %xmm12, %xmm10
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm12
	vpxor	%xmm7, %xmm12, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm13
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm13, %xmm11, %xmm7
	vmovdqu	16(%rcx), %xmm11
	vpshufb	%xmm1, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm9
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vmovdqa	(%rsp), %xmm11
	vpclmulqdq	$0, %xmm8, %xmm11, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm11, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm10
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm8, %xmm11, %xmm0
	vpxor	%xmm0, %xmm7, %xmm8
	vmovdqa	%xmm1, %xmm0
	vmovdqa	%xmm2, %xmm1
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB1_18
.LBB1_19:
	vpslldq	$8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpsrldq	$8, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm1
	vpxor	%xmm2, %xmm8, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm0, %xmm4
	cmpq	$16, %rsi
	jae	.LBB1_7
	jmp	.LBB1_12
.LBB1_20:
	testq	%r15, %r15
	jne	.LBB1_25
	jmp	.LBB1_40
.LBB1_5:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB1_12
.LBB1_7:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB1_8
	cmpq	$16, %rdx
	jae	.LBB1_10
.LBB1_13:
	testq	%rdx, %rdx
	je	.LBB1_21
.LBB1_14:
	vmovdqa	%xmm4, 32(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	movq	%rdi, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm0
	testq	%r15, %r15
	je	.LBB1_15
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	32(%rsp), %xmm2
	jb	.LBB1_41
	movq	%r12, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	240(%r12), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm4
	jmp	.LBB1_25
.LBB1_8:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm4
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
	vpxor	%xmm1, %xmm4, %xmm4
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB1_13
.LBB1_10:
	vmovdqa	.LCPI1_2(%rip), %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	.p2align	4, 0x90
.LBB1_11:
	vmovdqu	(%rcx), %xmm3
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
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
	addq	$-32, %rsi
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
	vpxor	%xmm3, %xmm5, %xmm4
	cmpq	$15, %rsi
	ja	.LBB1_11
.LBB1_12:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_14
.LBB1_21:
	testq	%r15, %r15
	je	.LBB1_40
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_41
.LBB1_25:
	vmovdqa	144(%rsp), %xmm0
	vpshufb	.LCPI1_0(%rip), %xmm0, %xmm1
	movq	520(%rsp), %rdx
	vpaddd	.LCPI1_1(%rip), %xmm1, %xmm0
	cmpq	$96, %r15
	jb	.LBB1_26
	vmovdqa	%xmm4, %xmm8
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vmovdqa	.LCPI1_2(%rip), %xmm9
	vpshufb	%xmm9, %xmm0, %xmm2
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm6
	vpshufb	%xmm9, %xmm5, %xmm5
	vpshufb	%xmm9, %xmm6, %xmm6
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm7
	vpshufb	%xmm9, %xmm7, %xmm7
	vpaddd	.LCPI1_9(%rip), %xmm1, %xmm0
	vmovdqa	(%rdi), %xmm10
	vmovaps	16(%rdi), %xmm1
	vmovaps	32(%rdi), %xmm12
	vmovaps	48(%rdi), %xmm11
	vpxor	%xmm2, %xmm10, %xmm2
	vpxor	%xmm3, %xmm10, %xmm3
	vpxor	%xmm4, %xmm10, %xmm4
	vpxor	%xmm5, %xmm10, %xmm5
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm7, %xmm10, %xmm7
	vmovaps	%xmm1, 304(%rsp)
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm12, 288(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm11, 96(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	64(%rdi), %xmm11
	vmovaps	%xmm11, 80(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	80(%rdi), %xmm11
	vmovaps	%xmm11, 64(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	96(%rdi), %xmm11
	vmovaps	%xmm11, 416(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	112(%rdi), %xmm11
	vmovaps	%xmm11, 400(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	128(%rdi), %xmm11
	vmovaps	%xmm11, 384(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	144(%rdi), %xmm11
	vmovaps	%xmm11, 368(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	160(%rdi), %xmm11
	vmovaps	%xmm11, 352(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	176(%rdi), %xmm11
	vmovaps	%xmm11, 336(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	192(%rdi), %xmm11
	vmovaps	%xmm11, 320(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovdqa	208(%rdi), %xmm11
	vmovdqa	%xmm11, %xmm12
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	224(%rdi), %xmm11
	#APP
	vaesenclast	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm11, %xmm3, %xmm3
	vaesenclast	%xmm11, %xmm4, %xmm4
	vaesenclast	%xmm11, %xmm5, %xmm5
	vaesenclast	%xmm11, %xmm6, %xmm6
	vaesenclast	%xmm11, %xmm7, %xmm7
	#NO_APP
	vpxor	(%r9), %xmm2, %xmm15
	vpxor	16(%r9), %xmm3, %xmm3
	vpxor	32(%r9), %xmm4, %xmm4
	vpxor	48(%r9), %xmm5, %xmm5
	vpxor	64(%r9), %xmm6, %xmm13
	vpxor	80(%r9), %xmm7, %xmm14
	vmovdqu	%xmm15, (%rdx)
	vmovdqu	%xmm3, 16(%rdx)
	vmovdqu	%xmm4, 32(%rdx)
	vmovdqu	%xmm5, 48(%rdx)
	vmovdqu	%xmm13, 64(%rdx)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm14, 80(%rdx)
	cmpq	$96, %rbx
	jb	.LBB1_33
	vmovaps	240(%rdi), %xmm2
	vmovaps	%xmm2, 272(%rsp)
	vmovaps	256(%rdi), %xmm2
	vmovaps	%xmm2, 256(%rsp)
	vmovaps	272(%rdi), %xmm2
	vmovaps	%xmm2, 240(%rsp)
	vmovaps	288(%rdi), %xmm2
	vmovaps	%xmm2, 224(%rsp)
	vmovaps	304(%rdi), %xmm2
	vmovaps	%xmm2, 208(%rsp)
	vmovdqa	320(%rdi), %xmm2
	vmovdqa	%xmm2, 192(%rsp)
	vmovdqa	%xmm12, 176(%rsp)
	vmovaps	%xmm11, 160(%rsp)
	.p2align	4, 0x90
.LBB1_35:
	vmovdqa	%xmm5, 112(%rsp)
	vmovdqa	%xmm4, 128(%rsp)
	vmovdqa	%xmm3, 48(%rsp)
	vmovdqa	%xmm0, (%rsp)
	vpshufb	%xmm9, %xmm0, %xmm3
	vmovdqa	%xmm8, %xmm12
	vpaddd	.LCPI1_1(%rip), %xmm0, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm4
	vpaddd	.LCPI1_4(%rip), %xmm0, %xmm5
	vpshufb	%xmm9, %xmm5, %xmm5
	vpaddd	.LCPI1_5(%rip), %xmm0, %xmm6
	vpshufb	%xmm9, %xmm6, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm0, %xmm7
	vpshufb	%xmm9, %xmm7, %xmm8
	vpaddd	.LCPI1_7(%rip), %xmm0, %xmm7
	vmovdqa	%xmm9, %xmm1
	vpshufb	%xmm9, %xmm7, %xmm9
	vpshufb	%xmm1, %xmm15, %xmm7
	vpxor	%xmm7, %xmm12, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vpshufb	%xmm1, %xmm14, %xmm0
	vpxor	%xmm3, %xmm10, %xmm15
	vpxor	%xmm4, %xmm10, %xmm3
	vpxor	%xmm5, %xmm10, %xmm4
	vpxor	%xmm6, %xmm10, %xmm5
	vpxor	%xmm8, %xmm10, %xmm6
	vpxor	%xmm9, %xmm10, %xmm14
	vmovaps	304(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm9, %xmm9, %xmm9
	vmovaps	272(%rsp), %xmm2
	vmovaps	288(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm1, %xmm13, %xmm0
	vmovaps	96(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm14, %xmm14
	#NO_APP
	vmovaps	256(%rsp), %xmm2
	vmovaps	80(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovdqa	112(%rsp), %xmm0
	vpshufb	%xmm1, %xmm0, %xmm0
	vmovaps	64(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm14, %xmm14
	#NO_APP
	vmovaps	240(%rsp), %xmm2
	vmovaps	416(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovdqa	128(%rsp), %xmm0
	vpshufb	%xmm1, %xmm0, %xmm0
	vmovaps	400(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm14, %xmm14
	#NO_APP
	vmovaps	224(%rsp), %xmm2
	vmovaps	384(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovdqa	48(%rsp), %xmm0
	vpshufb	%xmm1, %xmm0, %xmm0
	vmovaps	368(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm14, %xmm14
	#NO_APP
	vmovaps	208(%rsp), %xmm7
	vmovaps	352(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm2
	vpxor	%xmm2, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm2
	vpxor	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	336(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovdqa	192(%rsp), %xmm2
	vmovaps	320(%rsp), %xmm7
	vmovaps	32(%rsp), %xmm11
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm0
	vpxor	%xmm0, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm0
	vpxor	%xmm0, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm2, %xmm2, %xmm2
	vpunpcklqdq	%xmm12, %xmm2, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpunpckhqdq	%xmm2, %xmm12, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm7
	vpxor	%xmm2, %xmm9, %xmm2
	vmovdqa	%xmm1, %xmm9
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpshufd	$78, %xmm0, %xmm7
	vpxor	%xmm7, %xmm2, %xmm7
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm0
	vmovaps	176(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vmovaps	160(%rsp), %xmm1
	#APP
	vaesenclast	%xmm1, %xmm15, %xmm15
	vaesenclast	%xmm1, %xmm3, %xmm3
	vaesenclast	%xmm1, %xmm4, %xmm4
	vaesenclast	%xmm1, %xmm5, %xmm5
	vaesenclast	%xmm1, %xmm6, %xmm6
	vaesenclast	%xmm1, %xmm14, %xmm14
	#NO_APP
	vpxor	(%rcx), %xmm15, %xmm15
	vpxor	16(%rcx), %xmm3, %xmm3
	vpxor	32(%rcx), %xmm4, %xmm4
	vpxor	48(%rcx), %xmm5, %xmm5
	vpxor	64(%rcx), %xmm6, %xmm13
	vpxor	%xmm0, %xmm7, %xmm8
	vmovdqa	(%rsp), %xmm0
	vpxor	80(%rcx), %xmm14, %xmm14
	addq	$96, %rcx
	vmovdqu	%xmm15, (%rax)
	vmovdqu	%xmm3, 16(%rax)
	vmovdqu	%xmm4, 32(%rax)
	vmovdqu	%xmm5, 48(%rax)
	vmovdqu	%xmm13, 64(%rax)
	vmovdqu	%xmm14, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI1_8(%rip), %xmm0, %xmm0
	cmpq	$95, %rbx
	ja	.LBB1_35
.LBB1_33:
	vmovdqa	%xmm0, (%rsp)
	vpshufb	%xmm9, %xmm15, %xmm1
	vpxor	%xmm1, %xmm8, %xmm2
	vpshufb	%xmm9, %xmm3, %xmm1
	vpshufb	%xmm9, %xmm4, %xmm3
	vpshufb	%xmm9, %xmm5, %xmm5
	vpshufb	%xmm9, %xmm14, %xmm4
	vmovdqa	240(%rdi), %xmm6
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm9, %xmm13, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm6, %xmm9
	vmovdqa	256(%rdi), %xmm10
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm11
	vmovdqa	272(%rdi), %xmm12
	vpclmulqdq	$17, %xmm4, %xmm6, %xmm6
	vmovdqa	288(%rdi), %xmm13
	vpclmulqdq	$0, %xmm8, %xmm10, %xmm14
	vmovdqa	304(%rdi), %xmm0
	vpclmulqdq	$1, %xmm8, %xmm10, %xmm15
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm8, %xmm10, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm10, %xmm8
	vmovdqa	320(%rdi), %xmm4
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm10
	vpxor	%xmm11, %xmm15, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm14
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm11
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm5
	vpxor	%xmm11, %xmm14, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm11
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm10
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm3
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm9
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm5
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm7, %xmm9, %xmm7
	vpxor	%xmm5, %xmm10, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm2, %xmm1
	vpclmulqdq	$0, %xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm4
	movq	%rax, %rdx
	movq	%rcx, %r9
	cmpq	$16, %rbx
	jae	.LBB1_36
.LBB1_28:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	(%rsp), %xmm6
	jmp	.LBB1_29
.LBB1_26:
	vmovdqa	%xmm0, (%rsp)
	movq	%r15, %rbx
	cmpq	$16, %rbx
	jb	.LBB1_28
.LBB1_36:
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovdqa	112(%rdi), %xmm7
	vmovdqa	128(%rdi), %xmm8
	vmovdqa	144(%rdi), %xmm9
	vmovdqa	160(%rdi), %xmm10
	vmovdqa	176(%rdi), %xmm11
	vmovdqa	192(%rdi), %xmm12
	vmovdqa	208(%rdi), %xmm13
	vmovdqa	224(%rdi), %xmm14
	vmovdqa	240(%rdi), %xmm15
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	vmovdqa	(%rsp), %xmm6
	.p2align	4, 0x90
.LBB1_37:
	vpshufb	%xmm0, %xmm6, %xmm2
	vpxor	32(%rsp), %xmm2, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenc	128(%rsp), %xmm2, %xmm2
	vaesenc	112(%rsp), %xmm2, %xmm2
	vaesenc	96(%rsp), %xmm2, %xmm2
	vaesenc	80(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vpshufb	%xmm0, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm5
	vmovdqu	%xmm2, (%rdx)
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm2, %xmm4, %xmm4
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_1(%rip), %xmm6, %xmm6
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB1_37
.LBB1_29:
	vmovdqa	%xmm6, (%rsp)
	testq	%rbx, %rbx
	je	.LBB1_40
	vmovdqa	%xmm4, 32(%rsp)
	movq	%r8, 48(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rax
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rdi, %r13
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%r13), %xmm0, %xmm0
	vaesenc	16(%r13), %xmm0, %xmm0
	vaesenc	32(%r13), %xmm0, %xmm0
	vaesenc	48(%r13), %xmm0, %xmm0
	vaesenc	64(%r13), %xmm0, %xmm0
	vaesenc	80(%r13), %xmm0, %xmm0
	vaesenc	96(%r13), %xmm0, %xmm0
	vaesenc	112(%r13), %xmm0, %xmm0
	vaesenc	128(%r13), %xmm0, %xmm0
	vaesenc	144(%r13), %xmm0, %xmm0
	vaesenc	160(%r13), %xmm0, %xmm0
	vaesenc	176(%r13), %xmm0, %xmm0
	vaesenc	192(%r13), %xmm0, %xmm0
	vaesenc	208(%r13), %xmm0, %xmm0
	movq	%r13, %r12
	vaesenclast	224(%r13), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	testq	%r15, %r15
	je	.LBB1_31
	vmovaps	(%rsp), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	432(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	movq	%r12, %rdi
	vmovdqa	240(%r12), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	jmp	.LBB1_39
.LBB1_15:
	movq	%r12, %rdi
	vmovdqa	240(%r12), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm4
	movq	%rbx, %r8
	jmp	.LBB1_40
.LBB1_31:
	movq	%r12, %rdi
	vmovdqa	240(%r12), %xmm0
	vmovdqa	(%rsp), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	vpxor	32(%rsp), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
.LBB1_39:
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm4
	movq	48(%rsp), %r8
.LBB1_40:
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm4, %xmm1
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	movq	536(%rsp), %rax
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	144(%rsp), %xmm3
	vpxor	(%rdi), %xmm3, %xmm3
	vaesenc	16(%rdi), %xmm3, %xmm3
	vaesenc	32(%rdi), %xmm3, %xmm3
	vaesenc	48(%rdi), %xmm3, %xmm3
	vaesenc	64(%rdi), %xmm3, %xmm3
	vaesenc	80(%rdi), %xmm3, %xmm3
	vaesenc	96(%rdi), %xmm3, %xmm3
	vaesenc	112(%rdi), %xmm3, %xmm3
	vaesenc	128(%rdi), %xmm3, %xmm3
	vaesenc	144(%rdi), %xmm3, %xmm3
	vaesenc	160(%rdi), %xmm3, %xmm3
	vaesenc	176(%rdi), %xmm3, %xmm3
	vaesenc	192(%rdi), %xmm3, %xmm3
	vaesenc	208(%rdi), %xmm3, %xmm3
	vaesenclast	224(%rdi), %xmm3, %xmm3
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm1, %xmm1
	vpshufb	.LCPI1_11(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqu	%xmm0, (%rax)
	movl	$1, %eax
.LBB1_41:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_11:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI2_12:
	.byte	5
	.byte	0
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
	subq	$488, %rsp
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	544(%rsp), %r15
	xorl	%eax, %eax
	cmpq	576(%rsp), %r15
	jne	.LBB2_39
	cmpq	$16, 560(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	movq	%r15, %rbx
	shrq	$5, %rbx
	cmpq	$2147483647, %rbx
	setae	%bl
	orb	%r10b, %r11b
	orb	%bl, %r11b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r11b, %dl
	jne	.LBB2_39
	movq	552(%rsp), %r13
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vpxor	%xmm7, %xmm7, %xmm7
	testq	%r8, %r8
	je	.LBB2_3
	cmpq	$96, %r8
	jb	.LBB2_6
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm9
	vmovdqa	.LCPI2_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm13
	vpshufb	%xmm0, %xmm2, %xmm8
	vpshufb	%xmm0, %xmm3, %xmm6
	vpshufb	%xmm0, %xmm9, %xmm3
	vmovdqa	240(%rdi), %xmm1
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm9
	vpshufb	%xmm0, %xmm4, %xmm10
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm11
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm12
	vmovdqa	256(%rdi), %xmm2
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm7
	vmovdqa	272(%rdi), %xmm4
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm14
	vmovdqa	288(%rdi), %xmm3
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm15
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm12
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm5
	vpxor	%xmm12, %xmm15, %xmm12
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm14
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm12
	vpxor	%xmm7, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm15
	vmovdqa	304(%rdi), %xmm5
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm10
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm15
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm14
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm12
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm10
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqa	%xmm6, (%rsp)
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm15
	vmovdqa	320(%rdi), %xmm6
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm7
	vpxor	%xmm10, %xmm14, %xmm10
	vpxor	%xmm15, %xmm10, %xmm10
	vpxor	%xmm7, %xmm12, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	(%rsp), %xmm7, %xmm8
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB2_16
	vmovdqa	%xmm6, (%rsp)
	vmovdqa	%xmm5, %xmm6
	vmovdqa	%xmm3, %xmm5
	vmovdqa	%xmm2, %xmm3
	.p2align	4, 0x90
.LBB2_15:
	vmovdqu	(%rcx), %xmm12
	vmovdqu	32(%rcx), %xmm13
	vmovdqu	48(%rcx), %xmm11
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vpslldq	$8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm10, %xmm9
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm10
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm10
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufb	%xmm0, %xmm15, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm15
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	%xmm1, %xmm2
	vmovdqa	%xmm0, %xmm1
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm0
	vpxor	%xmm7, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm7
	vpshufb	%xmm1, %xmm13, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm10
	vpshufb	%xmm1, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm3, %xmm13
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm3, %xmm7
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm14
	vpshufb	%xmm1, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm3, %xmm12
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm14
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm7
	vpxor	%xmm10, %xmm12, %xmm10
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm12
	vpxor	%xmm7, %xmm12, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm13
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm13, %xmm11, %xmm7
	vmovdqu	16(%rcx), %xmm11
	vpshufb	%xmm1, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm9
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vmovdqa	(%rsp), %xmm11
	vpclmulqdq	$0, %xmm8, %xmm11, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm11, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm10
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm8, %xmm11, %xmm0
	vpxor	%xmm0, %xmm7, %xmm8
	vmovdqa	%xmm1, %xmm0
	vmovdqa	%xmm2, %xmm1
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB2_15
.LBB2_16:
	vpslldq	$8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpsrldq	$8, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm1
	vpxor	%xmm2, %xmm8, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm0, %xmm7
	cmpq	$16, %rsi
	jae	.LBB2_17
	jmp	.LBB2_8
.LBB2_6:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB2_8
.LBB2_17:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB2_18
	cmpq	$16, %rdx
	jae	.LBB2_20
.LBB2_9:
	testq	%rdx, %rdx
	je	.LBB2_3
.LBB2_10:
	vmovdqa	%xmm7, 16(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	movq	%rdi, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r15, %r15
	je	.LBB2_11
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	16(%rsp), %xmm2
	jb	.LBB2_39
	movq	%r12, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	240(%r12), %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_11(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm7
	jmp	.LBB2_24
.LBB2_18:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_11(%rip), %xmm4
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
	vpxor	%xmm1, %xmm4, %xmm7
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB2_9
.LBB2_20:
	vmovdqa	.LCPI2_2(%rip), %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	.p2align	4, 0x90
.LBB2_21:
	vmovdqu	(%rcx), %xmm3
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
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
	addq	$-32, %rsi
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
	vpxor	%xmm3, %xmm5, %xmm7
	cmpq	$15, %rsi
	ja	.LBB2_21
.LBB2_8:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_10
.LBB2_3:
	testq	%r15, %r15
	je	.LBB2_12
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_39
.LBB2_24:
	vmovdqa	144(%rsp), %xmm0
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm0
	movq	568(%rsp), %rax
	vpaddd	.LCPI2_1(%rip), %xmm0, %xmm8
	cmpq	$96, %r15
	jb	.LBB2_25
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 448(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vmovaps	128(%rdi), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vmovaps	144(%rdi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	160(%rdi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	176(%rdi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	movq	%r15, %rbx
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	288(%rdi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	304(%rdi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovdqa	320(%rdi), %xmm0
	vmovdqa	%xmm0, 176(%rsp)
	.p2align	4, 0x90
.LBB2_29:
	vmovdqa	%xmm8, (%rsp)
	vmovdqu	(%r9), %xmm9
	vmovdqa	%xmm9, 112(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	48(%r9), %xmm12
	vmovdqa	%xmm12, 80(%rsp)
	vmovdqu	64(%r9), %xmm10
	vmovdqu	80(%r9), %xmm11
	vmovdqa	%xmm11, 128(%rsp)
	vmovdqa	.LCPI2_2(%rip), %xmm6
	vpshufb	%xmm6, %xmm8, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm8, %xmm1
	vpshufb	%xmm6, %xmm1, %xmm1
	vpaddd	.LCPI2_4(%rip), %xmm8, %xmm2
	vpshufb	%xmm6, %xmm2, %xmm2
	vpaddd	.LCPI2_5(%rip), %xmm8, %xmm3
	vpshufb	%xmm6, %xmm3, %xmm3
	vpaddd	.LCPI2_6(%rip), %xmm8, %xmm4
	vpshufb	%xmm6, %xmm4, %xmm4
	vpmovsxbq	.LCPI2_12(%rip), %xmm5
	vpaddd	(%rsp), %xmm5, %xmm5
	vpshufb	%xmm6, %xmm5, %xmm5
	vmovdqa	%xmm7, %xmm8
	vpshufb	%xmm6, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	%xmm7, 96(%rsp)
	vpshufb	%xmm6, %xmm11, %xmm9
	vmovdqa	160(%rsp), %xmm7
	vpxor	%xmm0, %xmm7, %xmm15
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm2, %xmm7, %xmm2
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm5, %xmm7, %xmm14
	vmovaps	64(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm8, %xmm8, %xmm8
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	48(%rsp), %xmm11
	vmovaps	256(%rsp), %xmm13
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm9, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm9, %xmm5
	vpxor	%xmm5, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm9, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm9, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm6, %xmm10, %xmm5
	vmovaps	448(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovaps	432(%rsp), %xmm11
	vmovaps	240(%rsp), %xmm13
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm6, %xmm12, %xmm5
	vmovaps	416(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovaps	400(%rsp), %xmm11
	vmovaps	224(%rsp), %xmm13
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovdqa	16(%rsp), %xmm5
	vpshufb	%xmm6, %xmm5, %xmm5
	vmovaps	384(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovaps	368(%rsp), %xmm11
	vmovaps	208(%rsp), %xmm13
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovdqu	16(%r9), %xmm5
	vmovaps	352(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm6, %xmm5, %xmm9
	vmovdqa	336(%rsp), %xmm13
	vmovaps	192(%rsp), %xmm12
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm12, %xmm9, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm9, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm9, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm9, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	#NO_APP
	vmovaps	320(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovdqa	304(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm6
	#APP
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vpxor	%xmm11, %xmm11, %xmm11
	vpunpcklqdq	%xmm8, %xmm11, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpunpckhqdq	%xmm11, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm7
	vmovaps	288(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovaps	272(%rsp), %xmm0
	#APP
	vaesenclast	%xmm0, %xmm15, %xmm15
	vaesenclast	%xmm0, %xmm1, %xmm1
	vaesenclast	%xmm0, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm3, %xmm3
	vaesenclast	%xmm0, %xmm4, %xmm4
	vaesenclast	%xmm0, %xmm14, %xmm14
	#NO_APP
	vpxor	112(%rsp), %xmm15, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vmovdqa	(%rsp), %xmm8
	vpxor	16(%rsp), %xmm2, %xmm2
	vpxor	80(%rsp), %xmm3, %xmm3
	vpxor	%xmm4, %xmm10, %xmm4
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm2, 32(%rax)
	vmovdqu	%xmm3, 48(%rax)
	vmovdqu	%xmm4, 64(%rax)
	vpxor	128(%rsp), %xmm14, %xmm0
	vmovdqu	%xmm0, 80(%rax)
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI2_8(%rip), %xmm8, %xmm8
	cmpq	$95, %rbx
	ja	.LBB2_29
	cmpq	$16, %rbx
	jb	.LBB2_27
.LBB2_30:
	vmovdqa	240(%rdi), %xmm0
	vmovaps	(%rdi), %xmm1
	vmovaps	%xmm1, (%rsp)
	vmovaps	16(%rdi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	32(%rdi), %xmm1
	vmovaps	%xmm1, 128(%rsp)
	vmovaps	48(%rdi), %xmm1
	vmovaps	%xmm1, 112(%rsp)
	vmovaps	64(%rdi), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	80(%rdi), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovaps	96(%rdi), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	112(%rdi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovdqa	128(%rdi), %xmm9
	vmovdqa	144(%rdi), %xmm10
	vmovdqa	160(%rdi), %xmm11
	vmovdqa	176(%rdi), %xmm12
	vmovdqa	192(%rdi), %xmm13
	vmovdqa	208(%rdi), %xmm14
	movq	%rdi, %r13
	vmovdqa	224(%rdi), %xmm15
	vmovdqa	.LCPI2_2(%rip), %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	.p2align	4, 0x90
.LBB2_31:
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm5
	vpxor	%xmm4, %xmm5, %xmm7
	vpshufb	%xmm1, %xmm8, %xmm4
	vpxor	(%rsp), %xmm4, %xmm4
	vaesenc	16(%rsp), %xmm4, %xmm4
	vaesenc	128(%rsp), %xmm4, %xmm4
	vaesenc	112(%rsp), %xmm4, %xmm4
	vaesenc	96(%rsp), %xmm4, %xmm4
	vaesenc	80(%rsp), %xmm4, %xmm4
	vaesenc	64(%rsp), %xmm4, %xmm4
	vaesenc	48(%rsp), %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenclast	%xmm15, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vmovdqu	%xmm3, (%rax)
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI2_1(%rip), %xmm8, %xmm8
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB2_31
	jmp	.LBB2_32
.LBB2_25:
	movq	%r15, %rbx
	cmpq	$16, %rbx
	jae	.LBB2_30
.LBB2_27:
	movq	%rdi, %r13
	movq	%rax, %r14
.LBB2_32:
	vmovdqa	%xmm7, 16(%rsp)
	movq	%r8, %rbp
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	testq	%rbx, %rbx
	je	.LBB2_34
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r12
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm8, (%rsp)
	callq	*%r12
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	(%r13), %xmm0, %xmm0
	vaesenc	16(%r13), %xmm0, %xmm0
	vaesenc	32(%r13), %xmm0, %xmm0
	vaesenc	48(%r13), %xmm0, %xmm0
	vaesenc	64(%r13), %xmm0, %xmm0
	vaesenc	80(%r13), %xmm0, %xmm0
	vaesenc	96(%r13), %xmm0, %xmm0
	vaesenc	112(%r13), %xmm0, %xmm0
	vaesenc	128(%r13), %xmm0, %xmm0
	vaesenc	144(%r13), %xmm0, %xmm0
	vaesenc	160(%r13), %xmm0, %xmm0
	vaesenc	176(%r13), %xmm0, %xmm0
	vaesenc	192(%r13), %xmm0, %xmm0
	vaesenc	208(%r13), %xmm0, %xmm0
	vaesenclast	224(%r13), %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	%xmm1, (%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r12
	vmovdqa	(%rsp), %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
.LBB2_34:
	movq	552(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	%xmm2, 464(%rsp)
	vmovdqa	%xmm1, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	464(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.LBB2_35
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	movq	%r13, %rdi
	vmovdqa	240(%r13), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_11(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm7
	movq	%rbp, %r8
	jmp	.LBB2_37
.LBB2_11:
	movq	%r12, %rdi
	vmovdqa	240(%r12), %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_11(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm7
	movq	%rbx, %r8
.LBB2_12:
	vmovdqu	(%r13), %xmm5
	jmp	.LBB2_38
.LBB2_35:
	movq	%r13, %rdi
	movq	%rbp, %r8
	vmovdqa	16(%rsp), %xmm7
.LBB2_37:
	vmovdqa	(%rsp), %xmm5
.LBB2_38:
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm4, %xmm1
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_11(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	144(%rsp), %xmm3
	vpxor	(%rdi), %xmm3, %xmm3
	vaesenc	16(%rdi), %xmm3, %xmm3
	vaesenc	32(%rdi), %xmm3, %xmm3
	vaesenc	48(%rdi), %xmm3, %xmm3
	vaesenc	64(%rdi), %xmm3, %xmm3
	vaesenc	80(%rdi), %xmm3, %xmm3
	vaesenc	96(%rdi), %xmm3, %xmm3
	vaesenc	112(%rdi), %xmm3, %xmm3
	vaesenc	128(%rdi), %xmm3, %xmm3
	vaesenc	144(%rdi), %xmm3, %xmm3
	vaesenc	160(%rdi), %xmm3, %xmm3
	vaesenc	176(%rdi), %xmm3, %xmm3
	vaesenc	192(%rdi), %xmm3, %xmm3
	vaesenc	208(%rdi), %xmm3, %xmm3
	vaesenclast	224(%rdi), %xmm3, %xmm3
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_9(%rip), %xmm1, %xmm1
	vpshufb	.LCPI2_10(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_39:
	addq	$488, %rsp
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

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	4294967297
.LCPI0_2:
	.quad	8589934594
.LCPI0_3:
	.quad	17179869188
.LCPI0_4:
	.quad	34359738376
.LCPI0_5:
	.quad	68719476752
.LCPI0_6:
	.quad	137438953504
.LCPI0_7:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_init,@function
haberdashery_aes256gcmsiv_tigerlake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovups	(%rsi), %ymm0
	vmovupd	(%rsi), %xmm1
	vmovdqu	16(%rsi), %xmm3
	vpslldq	$4, %xmm1, %xmm2
	vpslldq	$8, %xmm1, %xmm4
	vxorpd	%xmm4, %xmm2, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpbroadcastd	.LCPI0_8(%rip), %xmm2
	vpshufb	%xmm2, %xmm3, %xmm6
	vpbroadcastq	.LCPI0_1(%rip), %xmm7
	vaesenclast	%xmm7, %xmm6, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	vpslldq	$4, %xmm3, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vxorpd	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm3, %xmm6
	vpshufd	$255, %xmm1, %xmm7
	vxorpd	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm3
	vpternlogq	$150, %xmm6, %xmm4, %xmm3
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm6, %xmm4, %xmm7
	vpshufb	%xmm2, %xmm3, %xmm4
	vpbroadcastq	.LCPI0_2(%rip), %xmm6
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm1, %xmm4
	vpslldq	$4, %xmm3, %xmm6
	vpslldq	$8, %xmm3, %xmm7
	vpslldq	$12, %xmm3, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm4, %xmm6
	vaesenclast	%xmm5, %xmm6, %xmm6
	vpternlogq	$150, %xmm8, %xmm3, %xmm6
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufb	%xmm2, %xmm6, %xmm7
	vpbroadcastq	.LCPI0_3(%rip), %xmm8
	vaesenclast	%xmm8, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm4, %xmm7
	vpslldq	$4, %xmm6, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpslldq	$12, %xmm6, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpshufd	$255, %xmm7, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm6, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufb	%xmm2, %xmm8, %xmm9
	vpbroadcastq	.LCPI0_4(%rip), %xmm10
	vaesenclast	%xmm10, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm7, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vpshufd	$255, %xmm9, %xmm10
	vaesenclast	%xmm5, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpslldq	$12, %xmm9, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	vpshufb	%xmm2, %xmm10, %xmm11
	vpbroadcastq	.LCPI0_5(%rip), %xmm12
	vaesenclast	%xmm12, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpslldq	$12, %xmm10, %xmm14
	vpternlogq	$150, %xmm13, %xmm12, %xmm14
	vpshufd	$255, %xmm11, %xmm12
	vaesenclast	%xmm5, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpslldq	$12, %xmm11, %xmm15
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpshufb	%xmm2, %xmm12, %xmm13
	vpbroadcastq	.LCPI0_6(%rip), %xmm14
	vaesenclast	%xmm14, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpslldq	$12, %xmm12, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufd	$255, %xmm13, %xmm14
	vaesenclast	%xmm5, %xmm14, %xmm5
	vpternlogq	$150, %xmm16, %xmm12, %xmm5
	vpslldq	$4, %xmm13, %xmm14
	vpslldq	$8, %xmm13, %xmm15
	vpslldq	$12, %xmm13, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufb	%xmm2, %xmm5, %xmm2
	vpbroadcastq	.LCPI0_7(%rip), %xmm14
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpternlogq	$150, %xmm16, %xmm13, %xmm2
	vmovups	%ymm0, (%rdi)
	vmovdqa	%xmm1, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm4, 64(%rdi)
	vmovdqa	%xmm6, 80(%rdi)
	vmovdqa	%xmm7, 96(%rdi)
	vmovdqa	%xmm8, 112(%rdi)
	vmovdqa	%xmm9, 128(%rdi)
	vmovdqa	%xmm10, 144(%rdi)
	vmovdqa	%xmm11, 160(%rdi)
	vmovdqa	%xmm12, 176(%rdi)
	vmovdqa	%xmm13, 192(%rdi)
	vmovdqa	%xmm5, 208(%rdi)
	vmovdqa	%xmm2, 224(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmsiv_tigerlake_init, .Lfunc_end0-haberdashery_aes256gcmsiv_tigerlake_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	0
	.long	4
	.long	5
	.long	3
.LCPI1_1:
	.long	1
	.long	0
	.long	4
	.long	5
.LCPI1_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_5:
	.quad	4
	.quad	0
.LCPI1_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_8:
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
.LCPI1_16:
	.quad	-1
	.quad	9223372036854775807
.LCPI1_17:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
.LCPI1_18:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	8
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_7:
	.quad	-4467570830351532032
.LCPI1_9:
	.quad	4294967297
.LCPI1_10:
	.quad	8589934594
.LCPI1_11:
	.quad	17179869188
.LCPI1_12:
	.quad	34359738376
.LCPI1_13:
	.quad	68719476752
.LCPI1_14:
	.quad	137438953504
.LCPI1_15:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_21:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_encrypt,@function
haberdashery_aes256gcmsiv_tigerlake_encrypt:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	96(%rsp), %r10
	xorl	%eax, %eax
	cmpq	112(%rsp), %r10
	jne	.LBB1_28
	cmpq	$12, %rdx
	jne	.LBB1_28
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB1_28
	cmpq	%rdx, %r10
	jae	.LBB1_28
	cmpq	$16, 128(%rsp)
	jne	.LBB1_28
	vmovq	4(%rsi), %xmm1
	vmovd	(%rsi), %xmm18
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vmovdqa	%xmm1, 48(%rsp)
	vpermi2d	%xmm1, %xmm18, %xmm0
	vpxor	(%rdi), %xmm0, %xmm4
	vpxor	.LCPI1_2(%rip), %xmm4, %xmm5
	vpxor	.LCPI1_3(%rip), %xmm4, %xmm2
	vpxor	.LCPI1_4(%rip), %xmm4, %xmm0
	vpxor	.LCPI1_5(%rip), %xmm4, %xmm3
	vpxor	.LCPI1_6(%rip), %xmm4, %xmm1
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm1, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm1, %xmm1
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm17
	vpclmulqdq	$0, %xmm17, %xmm17, %xmm4
	vpbroadcastq	.LCPI1_7(%rip), %xmm16
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm17, %xmm17, %xmm6
	vpshufd	$78, %xmm4, %xmm15
	vpternlogq	$150, %xmm5, %xmm6, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm6
	vpshufd	$78, %xmm4, %xmm19
	vpternlogq	$150, %xmm5, %xmm6, %xmm19
	vpclmulqdq	$0, %xmm19, %xmm19, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm19, %xmm19, %xmm6
	vpshufd	$78, %xmm4, %xmm20
	vpternlogq	$150, %xmm5, %xmm6, %xmm20
	vpclmulqdq	$0, %xmm17, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm15, %xmm5
	vpclmulqdq	$1, %xmm17, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm17, %xmm15, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm21
	vpternlogq	$150, %xmm5, %xmm6, %xmm21
	vpclmulqdq	$0, %xmm21, %xmm21, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm21, %xmm21, %xmm6
	vpshufd	$78, %xmm4, %xmm22
	vpternlogq	$150, %xmm5, %xmm6, %xmm22
	vpclmulqdq	$0, %xmm17, %xmm22, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm22, %xmm5
	vpclmulqdq	$1, %xmm17, %xmm22, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm17, %xmm22, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm23
	vpternlogq	$150, %xmm5, %xmm6, %xmm23
	vpclmulqdq	$0, %xmm17, %xmm19, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm19, %xmm5
	vpclmulqdq	$1, %xmm17, %xmm19, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm17, %xmm19, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm24
	vpternlogq	$150, %xmm5, %xmm6, %xmm24
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpunpcklqdq	%xmm1, %xmm3, %xmm13
	vpslldq	$4, %xmm0, %xmm1
	vxorpd	%xmm14, %xmm14, %xmm14
	vpunpcklqdq	%xmm2, %xmm14, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm1, %xmm2
	vpbroadcastd	.LCPI1_21(%rip), %xmm7
	vpshufb	%xmm7, %xmm13, %xmm1
	vpbroadcastq	.LCPI1_9(%rip), %xmm4
	vaesenclast	%xmm4, %xmm1, %xmm8
	vpternlogq	$150, %xmm2, %xmm0, %xmm8
	vpslldq	$4, %xmm13, %xmm1
	vpunpcklqdq	%xmm3, %xmm14, %xmm2
	vinsertps	$55, %xmm3, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm8, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm9
	vpternlogq	$150, %xmm3, %xmm13, %xmm9
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm2
	vpslldq	$12, %xmm8, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpbroadcastq	.LCPI1_10(%rip), %xmm1
	vpshufb	%xmm7, %xmm9, %xmm2
	vaesenclast	%xmm1, %xmm2, %xmm10
	vpternlogq	$150, %xmm3, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm2
	vpslldq	$12, %xmm9, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm10, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm11
	vpternlogq	$150, %xmm3, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm2
	vpslldq	$12, %xmm10, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufb	%xmm7, %xmm11, %xmm1
	vpbroadcastq	.LCPI1_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm25
	vpternlogq	$150, %xmm3, %xmm10, %xmm25
	vpslldq	$4, %xmm11, %xmm1
	vpslldq	$8, %xmm11, %xmm2
	vpslldq	$12, %xmm11, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm25, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm11, %xmm4
	vmovdqa	%xmm4, -16(%rsp)
	vpslldq	$4, %xmm25, %xmm1
	vpslldq	$8, %xmm25, %xmm2
	vpslldq	$12, %xmm25, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufb	%xmm7, %xmm4, %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm5
	vpternlogq	$150, %xmm3, %xmm25, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm5, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	vpshufb	%xmm7, %xmm6, %xmm2
	vaesenclast	%xmm1, %xmm2, %xmm4
	vmovaps	%xmm5, 64(%rsp)
	vpternlogq	$150, %xmm3, %xmm5, %xmm4
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm2
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm4, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm12
	vmovaps	%xmm6, -64(%rsp)
	vpternlogq	$150, %xmm3, %xmm6, %xmm12
	vmovdqa	%xmm4, -96(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufb	%xmm7, %xmm12, %xmm1
	vpbroadcastq	.LCPI1_14(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpslldq	$4, %xmm12, %xmm1
	vpslldq	$8, %xmm12, %xmm2
	vpslldq	$12, %xmm12, %xmm27
	vpshufd	$255, %xmm5, %xmm3
	cmpq	$128, %r8
	vmovdqa	%xmm5, -112(%rsp)
	vmovaps	%xmm12, -32(%rsp)
	vmovdqa64	%xmm18, -48(%rsp)
	jb	.LBB1_6
	vmovaps	%xmm1, -80(%rsp)
	vmovaps	%xmm25, -128(%rsp)
	vmovapd	%xmm11, %xmm12
	vmovapd	%xmm10, %xmm11
	vmovapd	%xmm9, %xmm10
	vmovapd	%xmm8, %xmm9
	vmovapd	%xmm13, %xmm8
	vpxord	%xmm26, %xmm26, %xmm26
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB1_30:
	vmovdqu	16(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu64	80(%rcx), %xmm28
	vmovdqu64	96(%rcx), %xmm29
	vmovdqu64	112(%rcx), %xmm30
	vpxorq	(%rcx), %xmm26, %xmm26
	addq	$128, %rcx
	addq	$-128, %rax
	vpclmulqdq	$0, %xmm30, %xmm17, %xmm31
	vpclmulqdq	$1, %xmm30, %xmm17, %xmm18
	vpclmulqdq	$16, %xmm30, %xmm17, %xmm13
	vpxorq	%xmm18, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm30, %xmm17, %xmm18
	vpclmulqdq	$0, %xmm29, %xmm15, %xmm30
	vpclmulqdq	$1, %xmm29, %xmm15, %xmm25
	vpclmulqdq	$16, %xmm29, %xmm15, %xmm1
	vpternlogq	$150, %xmm25, %xmm13, %xmm1
	vpclmulqdq	$17, %xmm29, %xmm15, %xmm13
	vpclmulqdq	$0, %xmm28, %xmm21, %xmm25
	vpternlogq	$150, %xmm31, %xmm30, %xmm25
	vpclmulqdq	$1, %xmm28, %xmm21, %xmm29
	vpclmulqdq	$16, %xmm28, %xmm21, %xmm30
	vpternlogq	$150, %xmm29, %xmm1, %xmm30
	vpclmulqdq	$17, %xmm28, %xmm21, %xmm1
	vpternlogq	$150, %xmm18, %xmm13, %xmm1
	vpclmulqdq	$0, %xmm7, %xmm19, %xmm13
	vpclmulqdq	$1, %xmm7, %xmm19, %xmm18
	vpclmulqdq	$16, %xmm7, %xmm19, %xmm28
	vpternlogq	$150, %xmm18, %xmm30, %xmm28
	vpclmulqdq	$17, %xmm7, %xmm19, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm24, %xmm18
	vpternlogq	$150, %xmm13, %xmm25, %xmm18
	vpclmulqdq	$1, %xmm6, %xmm24, %xmm13
	vpclmulqdq	$16, %xmm6, %xmm24, %xmm25
	vpternlogq	$150, %xmm13, %xmm28, %xmm25
	vpclmulqdq	$17, %xmm6, %xmm24, %xmm6
	vpternlogq	$150, %xmm7, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm22, %xmm1
	vpclmulqdq	$1, %xmm5, %xmm22, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm22, %xmm13
	vpternlogq	$150, %xmm7, %xmm25, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm22, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm23, %xmm7
	vpternlogq	$150, %xmm1, %xmm18, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm23, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm23, %xmm18
	vpternlogq	$150, %xmm1, %xmm13, %xmm18
	vpclmulqdq	$17, %xmm4, %xmm23, %xmm1
	vpternlogq	$150, %xmm5, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm26, %xmm20, %xmm4
	vpclmulqdq	$1, %xmm26, %xmm20, %xmm5
	vpclmulqdq	$16, %xmm26, %xmm20, %xmm6
	vpternlogq	$150, %xmm5, %xmm18, %xmm6
	vpclmulqdq	$17, %xmm26, %xmm20, %xmm5
	vpslldq	$8, %xmm6, %xmm13
	vpternlogq	$150, %xmm4, %xmm7, %xmm13
	vpsrldq	$8, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm13, %xmm6
	vpshufd	$78, %xmm13, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm16, %xmm6, %xmm7
	vpternlogq	$150, %xmm5, %xmm1, %xmm7
	vpshufd	$78, %xmm6, %xmm26
	vpternlogq	$150, %xmm4, %xmm7, %xmm26
	cmpq	$127, %rax
	ja	.LBB1_30
	vmovapd	%xmm8, %xmm13
	vmovapd	%xmm9, %xmm8
	vmovapd	%xmm10, %xmm9
	vmovapd	%xmm11, %xmm10
	vmovapd	%xmm12, %xmm11
	vmovapd	-128(%rsp), %xmm25
	vmovapd	-32(%rsp), %xmm12
	vmovdqa	-112(%rsp), %xmm5
	vmovdqa64	-48(%rsp), %xmm18
	vpbroadcastd	.LCPI1_21(%rip), %xmm7
	vmovdqa	-80(%rsp), %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm27
	vaesenclast	%xmm14, %xmm3, %xmm6
	cmpq	$16, %rax
	jae	.LBB1_9
.LBB1_8:
	movq	%rax, %rdx
	vmovdqa	-64(%rsp), %xmm14
	vpternlogq	$150, %xmm27, %xmm12, %xmm6
	testq	%rdx, %rdx
	jne	.LBB1_13
	jmp	.LBB1_14
.LBB1_6:
	vpxord	%xmm26, %xmm26, %xmm26
	movq	%r8, %rax
	vpternlogq	$150, %xmm2, %xmm1, %xmm27
	vaesenclast	%xmm14, %xmm3, %xmm6
	cmpq	$16, %rax
	jb	.LBB1_8
.LBB1_9:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	vmovdqa	-64(%rsp), %xmm14
	je	.LBB1_10
	cmpq	$16, %rdx
	jae	.LBB1_32
.LBB1_12:
	vpternlogq	$150, %xmm27, %xmm12, %xmm6
	testq	%rdx, %rdx
	je	.LBB1_14
.LBB1_13:
	movl	$-1, %eax
	bzhil	%edx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm1 {%k1} {z}

	#NO_APP
	vpxorq	%xmm26, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm17, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm17, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm17, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm17, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm2, %xmm26
	vpternlogq	$150, %xmm3, %xmm1, %xmm26
.LBB1_14:
	vpslldq	$4, %xmm5, %xmm2
	vpslldq	$8, %xmm5, %xmm3
	vpslldq	$12, %xmm5, %xmm27
	vmovdqa	%xmm6, -128(%rsp)
	vpshufb	%xmm7, %xmm6, %xmm4
	vpbroadcastq	.LCPI1_15(%rip), %xmm28
	vmovq	%r10, %xmm6
	vmovq	%r8, %xmm7
	cmpq	$128, %r10
	jb	.LBB1_15
	vmovdqa64	%xmm28, (%rsp)
	vmovdqa	%xmm4, 16(%rsp)
	vmovapd	%xmm3, 32(%rsp)
	vmovapd	%xmm2, -80(%rsp)
	vmovapd	%xmm25, %xmm14
	vmovapd	%xmm11, %xmm12
	vmovapd	%xmm10, %xmm11
	vmovapd	%xmm9, %xmm10
	vmovapd	%xmm8, %xmm9
	vmovapd	%xmm13, %xmm8
	movq	%r9, %rax
	movq	%r10, %rcx
	.p2align	4, 0x90
.LBB1_40:
	vmovdqu	16(%rax), %xmm1
	vmovdqu	32(%rax), %xmm13
	vmovdqu64	48(%rax), %xmm18
	vmovdqu64	64(%rax), %xmm25
	vmovdqu64	80(%rax), %xmm28
	vmovdqu64	96(%rax), %xmm29
	vmovdqu64	112(%rax), %xmm30
	vpxorq	(%rax), %xmm26, %xmm26
	addq	$128, %rax
	addq	$-128, %rcx
	vpclmulqdq	$0, %xmm30, %xmm17, %xmm31
	vpclmulqdq	$1, %xmm30, %xmm17, %xmm2
	vpclmulqdq	$16, %xmm30, %xmm17, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm30, %xmm17, %xmm3
	vpclmulqdq	$0, %xmm29, %xmm15, %xmm30
	vpclmulqdq	$1, %xmm29, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm29, %xmm15, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpclmulqdq	$17, %xmm29, %xmm15, %xmm2
	vpclmulqdq	$0, %xmm28, %xmm21, %xmm4
	vpternlogq	$150, %xmm31, %xmm30, %xmm4
	vpclmulqdq	$1, %xmm28, %xmm21, %xmm29
	vpclmulqdq	$16, %xmm28, %xmm21, %xmm30
	vpternlogq	$150, %xmm29, %xmm5, %xmm30
	vpclmulqdq	$17, %xmm28, %xmm21, %xmm5
	vpternlogq	$150, %xmm3, %xmm2, %xmm5
	vpclmulqdq	$0, %xmm25, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm25, %xmm19, %xmm3
	vpclmulqdq	$16, %xmm25, %xmm19, %xmm28
	vpternlogq	$150, %xmm3, %xmm30, %xmm28
	vpclmulqdq	$17, %xmm25, %xmm19, %xmm3
	vpclmulqdq	$0, %xmm18, %xmm24, %xmm25
	vpternlogq	$150, %xmm2, %xmm4, %xmm25
	vpclmulqdq	$1, %xmm18, %xmm24, %xmm2
	vpclmulqdq	$16, %xmm18, %xmm24, %xmm4
	vpternlogq	$150, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$17, %xmm18, %xmm24, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm22, %xmm3
	vpclmulqdq	$1, %xmm13, %xmm22, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm22, %xmm18
	vpternlogq	$150, %xmm5, %xmm4, %xmm18
	vpclmulqdq	$17, %xmm13, %xmm22, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm23, %xmm5
	vpternlogq	$150, %xmm3, %xmm25, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm23, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm23, %xmm13
	vpternlogq	$150, %xmm3, %xmm18, %xmm13
	vpclmulqdq	$17, %xmm1, %xmm23, %xmm1
	vpternlogq	$150, %xmm4, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm26, %xmm20, %xmm2
	vpclmulqdq	$1, %xmm26, %xmm20, %xmm3
	vpclmulqdq	$16, %xmm26, %xmm20, %xmm4
	vpternlogq	$150, %xmm3, %xmm13, %xmm4
	vpclmulqdq	$17, %xmm26, %xmm20, %xmm3
	vpslldq	$8, %xmm4, %xmm13
	vpternlogq	$150, %xmm2, %xmm5, %xmm13
	vpsrldq	$8, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm13, %xmm4
	vpshufd	$78, %xmm13, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm1, %xmm5
	vpshufd	$78, %xmm4, %xmm26
	vpternlogq	$150, %xmm2, %xmm5, %xmm26
	cmpq	$127, %rcx
	ja	.LBB1_40
	vmovapd	%xmm8, %xmm13
	vmovapd	%xmm9, %xmm8
	vmovapd	%xmm10, %xmm9
	vmovapd	%xmm11, %xmm10
	vmovapd	%xmm12, %xmm11
	vmovapd	%xmm14, %xmm25
	vmovdqa	-64(%rsp), %xmm14
	vmovapd	-32(%rsp), %xmm12
	vmovapd	-112(%rsp), %xmm5
	vmovdqa64	-48(%rsp), %xmm18
	vmovapd	-80(%rsp), %xmm2
	vmovapd	32(%rsp), %xmm3
	vmovdqa	16(%rsp), %xmm4
	vmovdqa64	(%rsp), %xmm28
	jmp	.LBB1_16
.LBB1_15:
	movq	%r10, %rcx
	movq	%r9, %rax
.LBB1_16:
	vmovdqa	.LCPI1_0(%rip), %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm27
	vaesenclast	%xmm28, %xmm4, %xmm19
	vpunpcklqdq	%xmm6, %xmm7, %xmm2
	cmpq	$16, %rcx
	vmovdqa	64(%rsp), %xmm15
	jb	.LBB1_17
	leaq	-16(%rcx), %rdx
	testb	$16, %dl
	vmovdqa	-16(%rsp), %xmm7
	jne	.LBB1_36
	vpxorq	(%rax), %xmm26, %xmm3
	addq	$16, %rax
	vpclmulqdq	$0, %xmm3, %xmm17, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm17, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm17, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm17, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm26
	vpternlogq	$150, %xmm5, %xmm3, %xmm26
	vmovapd	-112(%rsp), %xmm5
	movq	%rdx, %rcx
.LBB1_36:
	vmovdqa	-96(%rsp), %xmm6
	cmpq	$16, %rdx
	jb	.LBB1_18
	.p2align	4, 0x90
.LBB1_37:
	vpxorq	(%rax), %xmm26, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm17, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm17, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm17, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm17, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpternlogq	$150, %xmm3, %xmm5, %xmm6
	vpshufd	$78, %xmm4, %xmm3
	vpternlogq	$150, 16(%rax), %xmm6, %xmm3
	addq	$-32, %rcx
	addq	$32, %rax
	vpclmulqdq	$0, %xmm3, %xmm17, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm17, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm17, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm17, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm26
	vpternlogq	$150, %xmm5, %xmm3, %xmm26
	cmpq	$15, %rcx
	ja	.LBB1_37
	movq	%rcx, %rdx
	vmovdqa	-96(%rsp), %xmm6
	vmovapd	-112(%rsp), %xmm5
	jmp	.LBB1_18
.LBB1_17:
	movq	%rcx, %rdx
	vmovdqa	-16(%rsp), %xmm7
	vmovdqa	-96(%rsp), %xmm6
.LBB1_18:
	movq	120(%rsp), %rcx
	vpermt2d	48(%rsp), %xmm1, %xmm18
	vpternlogq	$150, %xmm27, %xmm5, %xmm19
	vpsllq	$3, %xmm2, %xmm1
	testq	%rdx, %rdx
	je	.LBB1_20
	movl	$-1, %esi
	bzhil	%edx, %esi, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rax), %xmm2 {%k1} {z}

	#NO_APP
	vpxorq	%xmm26, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm17, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm17, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm17, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm17, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vmovapd	-112(%rsp), %xmm5
	vpshufd	$78, %xmm3, %xmm26
	vpternlogq	$150, %xmm4, %xmm2, %xmm26
.LBB1_20:
	vpxorq	%xmm1, %xmm26, %xmm1
	movq	104(%rsp), %rax
	vpclmulqdq	$0, %xmm1, %xmm17, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm17, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm17, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm17, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpternlogq	$150, %xmm18, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	vpternlogq	$108, .LCPI1_16(%rip), %xmm0, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm25, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	-128(%rsp), %xmm1, %xmm1
	vmovdqa64	%xmm19, %xmm3
	vaesenclast	%xmm19, %xmm1, %xmm1
	vmovdqu	%xmm1, (%rcx)
	vporq	.LCPI1_17(%rip), %xmm1, %xmm23
	cmpq	$128, %r10
	jb	.LBB1_24
	vmovdqa64	.LCPI1_4(%rip), %xmm17
	vmovdqa64	.LCPI1_5(%rip), %xmm18
	vmovdqa64	.LCPI1_6(%rip), %xmm19
	vmovdqa64	.LCPI1_18(%rip), %xmm20
	vmovdqa64	.LCPI1_19(%rip), %xmm21
	vmovdqa64	.LCPI1_20(%rip), %xmm22
	vmovapd	%xmm25, %xmm26
	vmovapd	%xmm11, %xmm28
	vmovapd	%xmm10, %xmm11
	vmovapd	%xmm9, %xmm10
	vmovapd	%xmm8, %xmm9
	vmovapd	%xmm13, %xmm8
	vmovdqa64	%xmm14, %xmm24
	vmovdqa64	%xmm15, %xmm27
	vmovdqa	%xmm7, %xmm15
	vmovapd	%xmm12, %xmm29
	vmovdqa64	%xmm6, %xmm31
	vmovapd	%xmm5, %xmm16
	vmovaps	-128(%rsp), %xmm12
	vmovdqa64	%xmm3, %xmm30
	.p2align	4, 0x90
.LBB1_22:
	vpaddd	.LCPI1_2(%rip), %xmm23, %xmm2
	vpaddd	.LCPI1_3(%rip), %xmm23, %xmm3
	vpaddd	%xmm17, %xmm23, %xmm4
	vpaddd	%xmm18, %xmm23, %xmm5
	vpaddd	%xmm19, %xmm23, %xmm6
	vpaddd	%xmm20, %xmm23, %xmm7
	vpaddd	%xmm21, %xmm23, %xmm25
	vpxorq	%xmm0, %xmm23, %xmm1
	vpxor	%xmm2, %xmm0, %xmm13
	vpxor	%xmm3, %xmm0, %xmm2
	vpxor	%xmm4, %xmm0, %xmm3
	vpxor	%xmm5, %xmm0, %xmm4
	vpxor	%xmm6, %xmm0, %xmm5
	vpxor	%xmm7, %xmm0, %xmm6
	vpxorq	%xmm25, %xmm0, %xmm7
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm28, %xmm14
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm26, %xmm14
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	#NO_APP
	vmovdqa64	%xmm27, %xmm14
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	vmovdqa64	%xmm24, %xmm14
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	vmovdqa64	%xmm31, %xmm14
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm29, %xmm14
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm16, %xmm14
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovdqa64	%xmm30, %xmm14
	#APP
	vaesenclast	%xmm14, %xmm1, %xmm1
	vaesenclast	%xmm14, %xmm13, %xmm13
	vaesenclast	%xmm14, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm3, %xmm3
	vaesenclast	%xmm14, %xmm4, %xmm4
	vaesenclast	%xmm14, %xmm5, %xmm5
	vaesenclast	%xmm14, %xmm6, %xmm6
	vaesenclast	%xmm14, %xmm7, %xmm7
	#NO_APP
	vpxor	(%r9), %xmm1, %xmm1
	vxorpd	16(%r9), %xmm13, %xmm13
	vpxor	32(%r9), %xmm2, %xmm2
	vpxor	48(%r9), %xmm3, %xmm3
	vpxor	64(%r9), %xmm4, %xmm4
	vxorpd	80(%r9), %xmm5, %xmm5
	vpxor	96(%r9), %xmm6, %xmm6
	vpxor	112(%r9), %xmm7, %xmm7
	leaq	128(%r9), %r9
	vmovdqu	%xmm1, (%rax)
	vmovupd	%xmm13, 16(%rax)
	vmovdqu	%xmm2, 32(%rax)
	vmovdqu	%xmm3, 48(%rax)
	vmovdqu	%xmm4, 64(%rax)
	vmovupd	%xmm5, 80(%rax)
	vmovdqu	%xmm6, 96(%rax)
	vmovdqu	%xmm7, 112(%rax)
	addq	$128, %rax
	addq	$-128, %r10
	vpaddd	%xmm22, %xmm23, %xmm23
	cmpq	$127, %r10
	ja	.LBB1_22
	vmovapd	%xmm8, %xmm13
	vmovapd	%xmm9, %xmm8
	vmovapd	%xmm10, %xmm9
	vmovapd	%xmm11, %xmm10
	vmovapd	%xmm28, %xmm11
	vmovapd	%xmm26, %xmm25
	vmovdqa	%xmm15, %xmm7
	vmovdqa64	%xmm27, %xmm15
	vmovdqa64	%xmm24, %xmm14
	vmovdqa64	%xmm31, %xmm6
	vmovapd	%xmm29, %xmm12
	vmovapd	%xmm16, %xmm5
	vmovdqa64	%xmm30, %xmm3
.LBB1_24:
	cmpq	$16, %r10
	jb	.LBB1_25
	leaq	-16(%r10), %rdx
	testb	$16, %dl
	jne	.LBB1_43
	leaq	16(%r9), %rsi
	leaq	16(%rax), %rcx
	vpaddd	.LCPI1_2(%rip), %xmm23, %xmm1
	vpxorq	%xmm0, %xmm23, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm25, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	-128(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rax)
	movq	%rcx, %rax
	vmovdqa64	%xmm1, %xmm23
	movq	%rdx, %r10
	movq	%rsi, %r9
	jmp	.LBB1_45
.LBB1_25:
	movq	%r9, %rsi
	movq	%rax, %rcx
	movq	%r10, %rdx
	vmovdqa64	%xmm23, %xmm1
	jmp	.LBB1_26
.LBB1_10:
	vpxorq	(%rcx), %xmm26, %xmm1
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm1, %xmm17, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm17, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm17, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm17, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm2, %xmm26
	vpternlogq	$150, %xmm3, %xmm1, %xmm26
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_12
	.p2align	4, 0x90
.LBB1_32:
	vpxorq	(%rcx), %xmm26, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm17, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm17, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm17, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm17, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, 16(%rcx), %xmm4, %xmm1
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm1, %xmm17, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm17, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm17, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm17, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm2, %xmm26
	vpternlogq	$150, %xmm3, %xmm1, %xmm26
	cmpq	$15, %rax
	ja	.LBB1_32
	movq	%rax, %rdx
	vpternlogq	$150, %xmm27, %xmm12, %xmm6
	testq	%rdx, %rdx
	jne	.LBB1_13
	jmp	.LBB1_14
.LBB1_43:
.LBB1_45:
	cmpq	$16, %rdx
	jb	.LBB1_26
	vmovdqa	.LCPI1_2(%rip), %xmm1
	vmovdqa	.LCPI1_3(%rip), %xmm2
	vmovdqa64	-128(%rsp), %xmm16
	vmovdqa64	%xmm3, %xmm17
	.p2align	4, 0x90
.LBB1_47:
	vpaddd	%xmm1, %xmm23, %xmm3
	vpxorq	%xmm0, %xmm23, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm25, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm16, %xmm4, %xmm4
	vaesenclast	%xmm17, %xmm4, %xmm4
	vpxor	(%r9), %xmm4, %xmm4
	vmovdqu	%xmm4, (%rax)
	vpxor	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm25, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm16, %xmm3, %xmm3
	vaesenclast	%xmm17, %xmm3, %xmm3
	vpxor	16(%r9), %xmm3, %xmm3
	addq	$32, %r9
	vmovdqu	%xmm3, 16(%rax)
	addq	$32, %rax
	addq	$-32, %r10
	vpaddd	%xmm2, %xmm23, %xmm23
	cmpq	$15, %r10
	ja	.LBB1_47
	movq	%r9, %rsi
	movq	%rax, %rcx
	movq	%r10, %rdx
	vmovdqa64	%xmm23, %xmm1
	vmovdqa64	%xmm17, %xmm3
.LBB1_26:
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB1_28
	movl	$-1, %edi
	bzhil	%edx, %edi, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rsi), %xmm2 {%k1} {z}

	#NO_APP
	vpxor	%xmm0, %xmm1, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm25, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	-128(%rsp), %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	#APP

	vmovdqu8	%xmm0, (%rcx) {%k1}

	#NO_APP
.LBB1_28:
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_tigerlake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.long	0
	.long	4
	.long	5
	.long	3
.LCPI2_1:
	.long	1
	.long	0
	.long	4
	.long	5
.LCPI2_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.quad	4
	.quad	0
.LCPI2_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_8:
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
.LCPI2_16:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
.LCPI2_17:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	10
	.long	0
	.long	0
	.long	0
.LCPI2_22:
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI2_23:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_7:
	.quad	-4467570830351532032
.LCPI2_9:
	.quad	4294967297
.LCPI2_10:
	.quad	8589934594
.LCPI2_11:
	.quad	17179869188
.LCPI2_12:
	.quad	34359738376
.LCPI2_13:
	.quad	68719476752
.LCPI2_14:
	.quad	137438953504
.LCPI2_15:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_24:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_decrypt,@function
haberdashery_aes256gcmsiv_tigerlake_decrypt:
	.cfi_startproc
	subq	$264, %rsp
	.cfi_def_cfa_offset 272
	movq	272(%rsp), %r10
	xorl	%eax, %eax
	cmpq	304(%rsp), %r10
	jne	.LBB2_35
	cmpq	$12, %rdx
	jne	.LBB2_35
	movabsq	$68719476736, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_35
	cmpq	%rdx, %r10
	ja	.LBB2_35
	cmpq	$16, 288(%rsp)
	jb	.LBB2_35
	vmovq	4(%rsi), %xmm14
	vmovd	(%rsi), %xmm30
	vmovdqa	.LCPI2_1(%rip), %xmm0
	vpermi2d	%xmm14, %xmm30, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vpxor	.LCPI2_2(%rip), %xmm0, %xmm2
	vpxor	.LCPI2_3(%rip), %xmm0, %xmm9
	vpxor	.LCPI2_4(%rip), %xmm0, %xmm4
	vpxor	.LCPI2_5(%rip), %xmm0, %xmm1
	vpxor	.LCPI2_6(%rip), %xmm0, %xmm10
	vmovaps	16(%rdi), %xmm5
	vmovaps	32(%rdi), %xmm6
	vmovaps	48(%rdi), %xmm7
	vmovaps	64(%rdi), %xmm3
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	80(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	96(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	112(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	128(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	144(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	160(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	176(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	192(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	208(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm10, %xmm10
	#NO_APP
	vmovaps	224(%rdi), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm9, %xmm9
	vaesenclast	%xmm3, %xmm4, %xmm4
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm10, %xmm10
	#NO_APP
	vpunpcklqdq	%xmm2, %xmm0, %xmm3
	vpbroadcastq	.LCPI2_7(%rip), %xmm20
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm6
	vpshufd	$78, %xmm0, %xmm2
	vpternlogq	$150, %xmm5, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm0, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm5
	vmovdqa	%xmm7, 32(%rsp)
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm5, %xmm6, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm5
	vmovdqa	%xmm2, -16(%rsp)
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm6
	vpshufd	$78, %xmm0, %xmm2
	vpternlogq	$150, %xmm5, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm6
	vmovdqa	%xmm2, 16(%rsp)
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm0, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpunpcklqdq	%xmm4, %xmm9, %xmm16
	vpunpcklqdq	%xmm10, %xmm1, %xmm15
	vpslldq	$4, %xmm16, %xmm0
	vxorpd	%xmm18, %xmm18, %xmm18
	vpunpcklqdq	%xmm9, %xmm18, %xmm4
	vinsertps	$55, %xmm9, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm0, %xmm5
	vpbroadcastd	.LCPI2_24(%rip), %xmm9
	vpshufb	%xmm9, %xmm15, %xmm0
	vpbroadcastq	.LCPI2_9(%rip), %xmm4
	vaesenclast	%xmm4, %xmm0, %xmm11
	vpternlogq	$150, %xmm5, %xmm16, %xmm11
	vpslldq	$4, %xmm15, %xmm0
	vpunpcklqdq	%xmm1, %xmm18, %xmm4
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	vpshufd	$255, %xmm11, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm12
	vpternlogq	$150, %xmm1, %xmm15, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm9, %xmm12, %xmm0
	vpbroadcastq	.LCPI2_10(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm13
	vpternlogq	$150, %xmm4, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpslldq	$12, %xmm12, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm13, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm12, %xmm2
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpslldq	$12, %xmm13, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm9, %xmm2, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm13, %xmm5
	vmovdqa	%xmm5, (%rsp)
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpslldq	$12, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm8
	vmovdqa64	%xmm2, %xmm22
	vpternlogq	$150, %xmm4, %xmm2, %xmm8
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm9, %xmm8, %xmm0
	vpbroadcastq	.LCPI2_12(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm2, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm8, %xmm5
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpslldq	$12, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm9, %xmm5, %xmm0
	vpbroadcastq	.LCPI2_13(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm6
	vmovaps	%xmm2, -32(%rsp)
	vpternlogq	$150, %xmm4, %xmm2, %xmm6
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm2
	vmovaps	%xmm5, -48(%rsp)
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	vmovdqa	%xmm2, -80(%rsp)
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm9, %xmm2, %xmm0
	vpbroadcastq	.LCPI2_14(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm5
	vmovaps	%xmm6, -64(%rsp)
	vpternlogq	$150, %xmm4, %xmm6, %xmm5
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpslldq	$12, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vmovdqa	%xmm5, -128(%rsp)
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	cmpq	$96, %r8
	vmovaps	%xmm8, -96(%rsp)
	vmovdqa	%xmm5, -112(%rsp)
	jb	.LBB2_6
	vmovapd	%xmm13, %xmm21
	vmovapd	%xmm12, %xmm19
	vmovapd	%xmm11, %xmm2
	movq	%r8, %rax
	vmovdqa64	48(%rsp), %xmm23
	vmovdqa64	-16(%rsp), %xmm24
	vmovdqa64	32(%rsp), %xmm26
	vmovdqa64	16(%rsp), %xmm27
	vmovdqa64	%xmm7, %xmm28
	.p2align	4, 0x90
.LBB2_21:
	vmovdqu	16(%rcx), %xmm0
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	vpxorq	(%rcx), %xmm18, %xmm7
	addq	$96, %rcx
	addq	$-96, %rax
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm11
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm24, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm24, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm24, %xmm13
	vpternlogq	$150, %xmm12, %xmm10, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm24, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm26, %xmm10
	vpternlogq	$150, %xmm8, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm4, %xmm26, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm26, %xmm11
	vpternlogq	$150, %xmm8, %xmm13, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm26, %xmm4
	vpternlogq	$150, %xmm6, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm27, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm27, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm27, %xmm8
	vpternlogq	$150, %xmm6, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm27, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm28, %xmm6
	vpternlogq	$150, %xmm5, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm28, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm28, %xmm10
	vpternlogq	$150, %xmm5, %xmm8, %xmm10
	vpclmulqdq	$17, %xmm0, %xmm28, %xmm0
	vpternlogq	$150, %xmm1, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm7, %xmm23, %xmm1
	vpclmulqdq	$1, %xmm7, %xmm23, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm23, %xmm5
	vpternlogq	$150, %xmm4, %xmm10, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm23, %xmm4
	vpslldq	$8, %xmm5, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpsrldq	$8, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm20, %xmm7, %xmm5
	vpshufd	$78, %xmm7, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm20, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm0, %xmm6
	vpshufd	$78, %xmm5, %xmm18
	vpternlogq	$150, %xmm1, %xmm6, %xmm18
	cmpq	$95, %rax
	ja	.LBB2_21
	vmovapd	%xmm2, %xmm11
	vmovapd	%xmm19, %xmm12
	vmovapd	%xmm21, %xmm13
	vmovapd	-96(%rsp), %xmm8
	vmovapd	-128(%rsp), %xmm2
	vmovdqa	-112(%rsp), %xmm5
	vmovdqa64	%xmm28, %xmm7
	jmp	.LBB2_7
.LBB2_6:
	movq	%r8, %rax
	vmovapd	-128(%rsp), %xmm2
.LBB2_7:
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpslldq	$12, %xmm2, %xmm10
	vpshufb	%xmm9, %xmm5, %xmm4
	vpbroadcastq	.LCPI2_15(%rip), %xmm5
	movq	280(%rsp), %rdx
	cmpq	$16, %rax
	jb	.LBB2_8
	leaq	-16(%rax), %rsi
	testb	$16, %sil
	jne	.LBB2_16
	vpxorq	(%rcx), %xmm18, %xmm6
	addq	$16, %rcx
	vmovdqa64	%xmm7, %xmm19
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm20, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm20, %xmm7, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpshufd	$78, %xmm7, %xmm18
	vmovdqa64	%xmm19, %xmm7
	vpternlogq	$150, %xmm8, %xmm6, %xmm18
	vmovapd	-96(%rsp), %xmm8
	movq	%rsi, %rax
.LBB2_16:
	vmovdqa64	%xmm22, %xmm9
	cmpq	$16, %rsi
	jb	.LBB2_9
	vmovdqa64	%xmm7, %xmm19
	.p2align	4, 0x90
.LBB2_18:
	vpxorq	(%rcx), %xmm18, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm20, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm20, %xmm7, %xmm9
	vpternlogq	$150, %xmm6, %xmm8, %xmm9
	vpshufd	$78, %xmm7, %xmm6
	vpternlogq	$150, 16(%rcx), %xmm9, %xmm6
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm20, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm20, %xmm7, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpshufd	$78, %xmm7, %xmm18
	vpternlogq	$150, %xmm8, %xmm6, %xmm18
	cmpq	$15, %rax
	ja	.LBB2_18
	movq	%rax, %rsi
	vmovdqa64	%xmm22, %xmm9
	vmovapd	-96(%rsp), %xmm8
	vmovdqa64	%xmm19, %xmm7
	jmp	.LBB2_9
.LBB2_8:
	movq	%rax, %rsi
	vmovdqa64	%xmm22, %xmm9
.LBB2_9:
	vpternlogq	$150, %xmm1, %xmm0, %xmm10
	vaesenclast	%xmm5, %xmm4, %xmm6
	vmovdqu64	(%rdx), %xmm25
	testq	%rsi, %rsi
	je	.LBB2_11
	movl	$-1, %eax
	bzhil	%esi, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	vpxorq	%xmm18, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm20, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm20, %xmm1, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpshufd	$78, %xmm1, %xmm18
	vpternlogq	$150, %xmm4, %xmm0, %xmm18
.LBB2_11:
	vmovq	%r10, %xmm26
	vmovq	%r8, %xmm21
	movq	296(%rsp), %rdx
	vpternlogq	$150, %xmm10, %xmm2, %xmm6
	vporq	.LCPI2_16(%rip), %xmm25, %xmm23
	cmpq	$96, %r10
	vmovdqa	%xmm6, 64(%rsp)
	jb	.LBB2_23
	vmovdqa	%xmm7, 80(%rsp)
	vpaddd	.LCPI2_2(%rip), %xmm23, %xmm1
	vpaddd	.LCPI2_3(%rip), %xmm23, %xmm4
	vpaddd	.LCPI2_4(%rip), %xmm23, %xmm5
	vmovdqa	%xmm6, %xmm10
	vpaddd	.LCPI2_5(%rip), %xmm23, %xmm6
	vpaddd	.LCPI2_6(%rip), %xmm23, %xmm7
	vpxorq	%xmm16, %xmm23, %xmm0
	vpxorq	%xmm1, %xmm16, %xmm1
	vpxorq	%xmm4, %xmm16, %xmm4
	vpxorq	%xmm5, %xmm16, %xmm5
	vpxorq	%xmm6, %xmm16, %xmm6
	vpxorq	%xmm7, %xmm16, %xmm7
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm11, 160(%rsp)
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm12, 144(%rsp)
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovapd	%xmm13, 128(%rsp)
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vmovaps	(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vmovaps	-32(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	-48(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	-64(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	-80(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovdqa	-128(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	-112(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenclast	%xmm10, %xmm0, %xmm0
	vaesenclast	%xmm10, %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm4, %xmm4
	vaesenclast	%xmm10, %xmm5, %xmm5
	vaesenclast	%xmm10, %xmm6, %xmm6
	vaesenclast	%xmm10, %xmm7, %xmm7
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm24
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vpxor	16(%r9), %xmm1, %xmm10
	vxorpd	32(%r9), %xmm4, %xmm11
	vpxor	48(%r9), %xmm5, %xmm12
	vpxor	64(%r9), %xmm6, %xmm13
	vpxor	80(%r9), %xmm7, %xmm8
	vmovdqu64	%xmm24, (%rdx)
	vmovdqu	%xmm10, 16(%rdx)
	vmovupd	%xmm11, 32(%rdx)
	vmovdqu	%xmm12, 48(%rdx)
	vmovdqu	%xmm13, 64(%rdx)
	addq	$-96, %r10
	vmovdqu	%xmm8, 80(%rdx)
	vpaddd	.LCPI2_17(%rip), %xmm23, %xmm22
	cmpq	$96, %r10
	jb	.LBB2_13
	vmovdqa64	%xmm21, 176(%rsp)
	vmovdqa64	%xmm26, 192(%rsp)
	vmovdqa64	%xmm25, 208(%rsp)
	vmovdqa64	%xmm30, 224(%rsp)
	vmovdqa	%xmm14, 240(%rsp)
	vmovaps	%xmm15, 112(%rsp)
	vmovdqa	%xmm9, 96(%rsp)
	vmovaps	-32(%rsp), %xmm25
	vmovaps	-48(%rsp), %xmm31
	vmovaps	-64(%rsp), %xmm21
	vmovaps	-80(%rsp), %xmm29
	vmovdqa64	-112(%rsp), %xmm19
	vmovdqa64	48(%rsp), %xmm28
	vmovaps	32(%rsp), %xmm26
	vmovaps	16(%rsp), %xmm30
	vmovdqa64	80(%rsp), %xmm27
	vmovaps	64(%rsp), %xmm17
	.p2align	4, 0x90
.LBB2_28:
	vpaddd	.LCPI2_18(%rip), %xmm23, %xmm0
	vpaddd	.LCPI2_19(%rip), %xmm23, %xmm1
	vpaddd	.LCPI2_20(%rip), %xmm23, %xmm5
	vpaddd	.LCPI2_21(%rip), %xmm23, %xmm6
	vpaddd	.LCPI2_22(%rip), %xmm23, %xmm7
	vpxorq	%xmm16, %xmm22, %xmm4
	vpxorq	%xmm0, %xmm16, %xmm14
	vpxorq	%xmm1, %xmm16, %xmm15
	vpxorq	%xmm5, %xmm16, %xmm1
	vpxorq	%xmm6, %xmm16, %xmm9
	vpxorq	%xmm7, %xmm16, %xmm5
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm0, %xmm0, %xmm0
	vpxor	%xmm6, %xmm6, %xmm6
	vmovdqa64	%xmm10, %xmm23
	vmovaps	112(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm2
	vpxor	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm2
	vpxor	%xmm2, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	160(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm5, %xmm5
	#NO_APP
	vmovaps	-16(%rsp), %xmm8
	vmovaps	144(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm13, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm13, %xmm2
	vpxor	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm8, %xmm13, %xmm2
	vpxor	%xmm2, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm13, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	128(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rsp), %xmm8
	vmovaps	%xmm26, %xmm10
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm9, %xmm9
	vaesenc	%xmm8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm12, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm12, %xmm2
	vpxor	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm12, %xmm2
	vpxor	%xmm2, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm12, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm5, %xmm5
	#NO_APP
	vmovaps	-96(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm30, %xmm8
	vmovaps	%xmm25, %xmm10
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm11, %xmm2
	vpxor	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm8, %xmm11, %xmm2
	vpxor	%xmm2, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm11, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	%xmm31, %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm21, %xmm8
	vmovdqa64	%xmm27, %xmm10
	vmovdqa64	%xmm23, %xmm11
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm9, %xmm9
	vaesenc	%xmm8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm2
	vpxor	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm2
	vpxor	%xmm2, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	#NO_APP
	vpxorq	%xmm18, %xmm24, %xmm2
	vmovaps	%xmm29, %xmm8
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm9, %xmm9
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	vmovaps	-128(%rsp), %xmm10
	vmovdqa64	%xmm28, %xmm11
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpunpcklqdq	%xmm0, %xmm8, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	vpunpckhqdq	%xmm8, %xmm0, %xmm0
	vpxorq	%xmm0, %xmm6, %xmm18
	vmovdqa64	%xmm19, %xmm0
	#APP
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm17, %xmm0
	#APP
	vaesenclast	%xmm0, %xmm4, %xmm4
	vaesenclast	%xmm0, %xmm14, %xmm14
	vaesenclast	%xmm0, %xmm15, %xmm15
	vaesenclast	%xmm0, %xmm1, %xmm1
	vaesenclast	%xmm0, %xmm9, %xmm9
	vaesenclast	%xmm0, %xmm5, %xmm5
	#NO_APP
	vxorpd	(%rcx), %xmm4, %xmm24
	vpclmulqdq	$16, %xmm20, %xmm2, %xmm0
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm20, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	16(%rcx), %xmm14, %xmm10
	vxorpd	32(%rcx), %xmm15, %xmm11
	vpxor	48(%rcx), %xmm1, %xmm12
	vpxor	64(%rcx), %xmm9, %xmm13
	vpxor	80(%rcx), %xmm5, %xmm8
	vpternlogq	$150, %xmm2, %xmm0, %xmm18
	addq	$96, %rcx
	vmovupd	%xmm24, (%rax)
	vmovdqu	%xmm10, 16(%rax)
	vmovupd	%xmm11, 32(%rax)
	vmovdqu	%xmm12, 48(%rax)
	vmovdqu	%xmm13, 64(%rax)
	vmovdqu	%xmm8, 80(%rax)
	addq	$96, %rax
	addq	$-96, %r10
	vmovdqa64	%xmm22, %xmm23
	vpaddd	.LCPI2_17(%rip), %xmm22, %xmm22
	cmpq	$95, %r10
	ja	.LBB2_28
	vmovdqa	240(%rsp), %xmm14
	vmovapd	112(%rsp), %xmm15
	vmovdqa	96(%rsp), %xmm9
	vmovdqa64	224(%rsp), %xmm30
	vmovdqa	-128(%rsp), %xmm2
	vmovdqa	-16(%rsp), %xmm6
	vmovdqa64	208(%rsp), %xmm25
	vmovdqa64	192(%rsp), %xmm26
	vmovdqa64	176(%rsp), %xmm21
	jmp	.LBB2_30
.LBB2_13:
	vmovdqa	-16(%rsp), %xmm6
.LBB2_30:
	vpxorq	%xmm24, %xmm18, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm3, %xmm5
	vmovdqa64	%xmm6, %xmm18
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm13, %xmm18, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm18, %xmm8
	vpternlogq	$150, %xmm7, %xmm4, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm18, %xmm4
	vmovdqa	32(%rsp), %xmm13
	vpclmulqdq	$0, %xmm12, %xmm13, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm13, %xmm6
	vpternlogq	$150, %xmm1, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm13, %xmm1
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	vmovdqa	16(%rsp), %xmm12
	vpclmulqdq	$0, %xmm11, %xmm12, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm12, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpclmulqdq	$17, %xmm11, %xmm12, %xmm5
	vmovdqa	80(%rsp), %xmm11
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm6
	vpternlogq	$150, %xmm4, %xmm7, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm7
	vpternlogq	$150, %xmm4, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm4
	vpternlogq	$150, %xmm5, %xmm1, %xmm4
	vmovdqa	48(%rsp), %xmm10
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm8
	vpternlogq	$150, %xmm5, %xmm7, %xmm8
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm8, %xmm5
	vpternlogq	$150, %xmm1, %xmm6, %xmm5
	vpsrldq	$8, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm20, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm20, %xmm5, %xmm6
	vpternlogq	$150, %xmm0, %xmm4, %xmm6
	vpshufd	$78, %xmm5, %xmm18
	vpternlogq	$150, %xmm1, %xmm6, %xmm18
	movq	%rcx, %r9
	movq	%rax, %rdx
	vmovdqa64	%xmm22, %xmm23
	vmovapd	160(%rsp), %xmm11
	vmovapd	144(%rsp), %xmm12
	vmovapd	128(%rsp), %xmm13
	vmovapd	-96(%rsp), %xmm8
	vmovdqa	64(%rsp), %xmm6
.LBB2_23:
	vmovdqa	.LCPI2_0(%rip), %xmm0
	vpunpcklqdq	%xmm26, %xmm21, %xmm1
	cmpq	$16, %r10
	jb	.LBB2_24
	vmovdqa	.LCPI2_2(%rip), %xmm4
	vmovdqa	(%rsp), %xmm10
	vmovdqa64	-32(%rsp), %xmm21
	vmovdqa64	-48(%rsp), %xmm22
	vmovdqa64	-64(%rsp), %xmm24
	vmovdqa64	-80(%rsp), %xmm26
	vmovdqa64	%xmm2, %xmm27
	vmovdqa64	-112(%rsp), %xmm28
	.p2align	4, 0x90
.LBB2_32:
	leaq	16(%r9), %rcx
	leaq	16(%rdx), %rax
	addq	$-16, %r10
	vpxorq	%xmm16, %xmm23, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm21, %xmm2, %xmm2
	vaesenc	%xmm22, %xmm2, %xmm2
	vaesenc	%xmm24, %xmm2, %xmm2
	vaesenc	%xmm26, %xmm2, %xmm2
	vaesenc	%xmm27, %xmm2, %xmm2
	vaesenc	%xmm28, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rdx)
	vpaddd	%xmm4, %xmm23, %xmm5
	vpxorq	%xmm18, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpsrldq	$8, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm20, %xmm6, %xmm8
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm20, %xmm6, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vmovapd	-96(%rsp), %xmm8
	vpshufd	$78, %xmm6, %xmm18
	vmovdqa	64(%rsp), %xmm6
	vpternlogq	$150, %xmm7, %xmm2, %xmm18
	movq	%rax, %rdx
	vmovdqa64	%xmm5, %xmm23
	movq	%rcx, %r9
	cmpq	$15, %r10
	ja	.LBB2_32
	vpermt2d	%xmm14, %xmm0, %xmm30
	vpsllq	$3, %xmm1, %xmm0
	testq	%r10, %r10
	je	.LBB2_26
.LBB2_33:
	movl	$-1, %edx
	bzhil	%r10d, %edx, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rcx), %xmm1 {%k1} {z}

	#NO_APP
	vpxorq	%xmm16, %xmm5, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vmovdqa64	%xmm6, %xmm19
	vmovdqa	-32(%rsp), %xmm6
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	-48(%rsp), %xmm7
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa	-64(%rsp), %xmm14
	vaesenc	%xmm14, %xmm2, %xmm2
	vmovdqa64	-80(%rsp), %xmm17
	vaesenc	%xmm17, %xmm2, %xmm2
	vmovdqa64	-128(%rsp), %xmm21
	vaesenc	%xmm21, %xmm2, %xmm2
	vmovdqa64	-112(%rsp), %xmm22
	vaesenc	%xmm22, %xmm2, %xmm2
	vaesenclast	%xmm19, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	#APP

	vmovdqu8	%xmm1, (%rax) {%k1}

	#NO_APP
	#APP

	vmovdqu8	(%rax), %xmm1 {%k1} {z}

	#NO_APP
	vpxorq	%xmm18, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm20, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm20, %xmm2, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vmovdqa64	%xmm22, %xmm5
	vpshufd	$78, %xmm2, %xmm18
	vpternlogq	$150, %xmm4, %xmm1, %xmm18
	jmp	.LBB2_34
.LBB2_24:
	movq	%r9, %rcx
	movq	%rdx, %rax
	vmovdqa64	%xmm23, %xmm5
	vmovdqa	(%rsp), %xmm10
	vpermt2d	%xmm14, %xmm0, %xmm30
	vpsllq	$3, %xmm1, %xmm0
	testq	%r10, %r10
	jne	.LBB2_33
.LBB2_26:
	vmovdqa64	%xmm6, %xmm19
	vmovdqa	-32(%rsp), %xmm6
	vmovdqa	-48(%rsp), %xmm7
	vmovdqa	-64(%rsp), %xmm14
	vmovdqa64	-80(%rsp), %xmm17
	vmovdqa64	-128(%rsp), %xmm21
	vmovdqa	-112(%rsp), %xmm5
.LBB2_34:
	vpxorq	%xmm0, %xmm18, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm20, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm20, %xmm1, %xmm3
	vpternlogq	$150, %xmm30, %xmm0, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vpternlogq	$120, .LCPI2_23(%rip), %xmm0, %xmm16
	vaesenc	%xmm15, %xmm16, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm17, %xmm0, %xmm0
	vaesenc	%xmm21, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm0
	vpxorq	%xmm25, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_35:
	addq	$264, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_is_supported,@function
haberdashery_aes256gcmsiv_tigerlake_is_supported:
	.cfi_startproc
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	notl	%r8d
	testl	$1993871875, %r8d
	jne	.LBB3_5
	andl	$125829120, %edi
	cmpl	$125829120, %edi
	jne	.LBB3_5
	notl	%r9d
	testl	$9175337, %r9d
	jne	.LBB3_5
	andl	$411041792, %ecx
	cmpl	$411041792, %ecx
	jne	.LBB3_5
	shrl	$8, %edx
	andl	$1, %edx
	movl	%edx, %esi
.LBB3_5:
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

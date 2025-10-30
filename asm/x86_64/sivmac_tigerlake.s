# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI0_1:
	.quad	2
	.quad	0
.LCPI0_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_3:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI0_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI0_5:
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
.LCPI0_6:
	.quad	4294967297
.LCPI0_7:
	.quad	8589934594
.LCPI0_9:
	.quad	17179869188
.LCPI0_10:
	.quad	34359738376
.LCPI0_11:
	.quad	68719476752
.LCPI0_12:
	.quad	137438953504
.LCPI0_13:
	.quad	274877907008
.LCPI0_14:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.long	0x0c0f0e0d
	.section	.text.haberdashery_sivmac_tigerlake_init,"ax",@progbits
	.globl	haberdashery_sivmac_tigerlake_init
	.p2align	4
	.type	haberdashery_sivmac_tigerlake_init,@function
haberdashery_sivmac_tigerlake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm5
	vxorpd	.LCPI0_0(%rip), %xmm0, %xmm1
	vxorpd	.LCPI0_1(%rip), %xmm0, %xmm6
	vxorpd	.LCPI0_2(%rip), %xmm0, %xmm7
	vxorpd	.LCPI0_3(%rip), %xmm0, %xmm4
	vxorpd	.LCPI0_4(%rip), %xmm0, %xmm8
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm9
	vpternlogq	$150, %xmm3, %xmm2, %xmm9
	vpbroadcastd	.LCPI0_8(%rip), %xmm17
	vpshufb	%xmm17, %xmm5, %xmm2
	vpbroadcastq	.LCPI0_6(%rip), %xmm16
	vaesenclast	%xmm16, %xmm2, %xmm2
	vpternlogq	$150, %xmm9, %xmm0, %xmm2
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	#NO_APP
	vpslldq	$4, %xmm5, %xmm3
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm11
	vpternlogq	$150, %xmm9, %xmm3, %xmm11
	vpshufd	$255, %xmm2, %xmm9
	vpxor	%xmm14, %xmm14, %xmm14
	vaesenclast	%xmm14, %xmm9, %xmm10
	vpternlogq	$150, %xmm11, %xmm5, %xmm10
	vpbroadcastq	.LCPI0_7(%rip), %xmm3
	vbroadcastss	.LCPI0_8(%rip), %xmm9
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm8, %xmm8
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm11
	vpslldq	$12, %xmm2, %xmm12
	vpternlogq	$150, %xmm5, %xmm11, %xmm12
	vpshufb	%xmm9, %xmm10, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm2, %xmm12, %xmm13
	#NO_APP
	vmovdqa64	%xmm3, %xmm18
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm8, %xmm8
	vpslldq	$4, %xmm10, %xmm2
	vpslldq	$8, %xmm10, %xmm5
	vpslldq	$12, %xmm10, %xmm11
	vpternlogq	$150, %xmm2, %xmm5, %xmm11
	vpshufd	$255, %xmm13, %xmm12
	vaesenclast	%xmm14, %xmm12, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	#NO_APP
	vpbroadcastq	.LCPI0_9(%rip), %xmm3
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm8, %xmm8
	vpslldq	$4, %xmm13, %xmm2
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm11
	vpternlogq	$150, %xmm2, %xmm5, %xmm11
	vpshufb	%xmm9, %xmm12, %xmm15
	vaesenclast	%xmm3, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm11, %xmm15
	#NO_APP
	vmovdqa64	%xmm3, %xmm19
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm8, %xmm8
	vpslldq	$4, %xmm12, %xmm2
	vpslldq	$8, %xmm12, %xmm5
	vpslldq	$12, %xmm12, %xmm11
	vpternlogq	$150, %xmm2, %xmm5, %xmm11
	vpshufd	$255, %xmm15, %xmm13
	vaesenclast	%xmm14, %xmm13, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	#NO_APP
	vpbroadcastq	.LCPI0_10(%rip), %xmm10
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm8, %xmm8
	vpslldq	$4, %xmm15, %xmm2
	vpslldq	$8, %xmm15, %xmm5
	vpslldq	$12, %xmm15, %xmm12
	vpternlogq	$150, %xmm2, %xmm5, %xmm12
	vpshufb	%xmm9, %xmm13, %xmm3
	vaesenclast	%xmm10, %xmm3, %xmm3
	vpternlogq	$150, %xmm15, %xmm12, %xmm3
	#NO_APP
	vmovdqa64	%xmm10, %xmm20
	vmovaps	%xmm9, %xmm11
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm8, %xmm8
	vpslldq	$4, %xmm13, %xmm2
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm12
	vpternlogq	$150, %xmm2, %xmm5, %xmm12
	vpshufd	$255, %xmm3, %xmm15
	vaesenclast	%xmm14, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm12, %xmm15
	#NO_APP
	vpbroadcastq	.LCPI0_11(%rip), %xmm12
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm8, %xmm8
	vpslldq	$4, %xmm3, %xmm2
	vpslldq	$8, %xmm3, %xmm5
	vpslldq	$12, %xmm3, %xmm13
	vpternlogq	$150, %xmm2, %xmm5, %xmm13
	vpshufb	%xmm11, %xmm15, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm9
	vpternlogq	$150, %xmm3, %xmm13, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm8, %xmm8
	vpslldq	$4, %xmm15, %xmm2
	vpslldq	$8, %xmm15, %xmm3
	vpslldq	$12, %xmm15, %xmm13
	vpternlogq	$150, %xmm2, %xmm3, %xmm13
	vpshufd	$255, %xmm9, %xmm5
	vaesenclast	%xmm14, %xmm5, %xmm5
	vpternlogq	$150, %xmm15, %xmm13, %xmm5
	#NO_APP
	vpbroadcastq	.LCPI0_12(%rip), %xmm13
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm8, %xmm8
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm15
	vpslldq	$12, %xmm9, %xmm10
	vpternlogq	$150, %xmm3, %xmm15, %xmm10
	vpshufb	%xmm11, %xmm5, %xmm2
	vaesenclast	%xmm13, %xmm2, %xmm2
	vpternlogq	$150, %xmm9, %xmm10, %xmm2
	#NO_APP
	vpslldq	$4, %xmm5, %xmm3
	vpunpcklqdq	%xmm5, %xmm14, %xmm9
	vinsertps	$55, %xmm5, %xmm0, %xmm10
	vpternlogq	$150, %xmm9, %xmm3, %xmm10
	vpshufd	$255, %xmm2, %xmm3
	vaesenclast	%xmm14, %xmm3, %xmm15
	vpternlogq	$150, %xmm10, %xmm5, %xmm15
	vpslldq	$4, %xmm2, %xmm3
	vpunpcklqdq	%xmm2, %xmm14, %xmm9
	vinsertps	$55, %xmm2, %xmm0, %xmm10
	vpternlogq	$150, %xmm9, %xmm3, %xmm10
	vpshufb	%xmm17, %xmm15, %xmm9
	vpbroadcastq	.LCPI0_13(%rip), %xmm3
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	#NO_APP
	vaesenclast	%xmm3, %xmm9, %xmm5
	vpternlogq	$150, %xmm10, %xmm2, %xmm5
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenclast	%xmm5, %xmm0, %xmm0
	vaesenclast	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm6, %xmm6
	vaesenclast	%xmm5, %xmm7, %xmm7
	vaesenclast	%xmm5, %xmm4, %xmm4
	vaesenclast	%xmm5, %xmm8, %xmm8
	#NO_APP
	vpunpcklqdq	%xmm7, %xmm6, %xmm7
	vpunpcklqdq	%xmm8, %xmm4, %xmm8
	vpunpcklqdq	%xmm6, %xmm14, %xmm2
	vinsertps	$55, %xmm6, %xmm0, %xmm5
	vpunpcklqdq	%xmm4, %xmm14, %xmm6
	vinsertps	$55, %xmm4, %xmm0, %xmm9
	vpslldq	$4, %xmm7, %xmm4
	vpternlogq	$150, %xmm2, %xmm4, %xmm5
	vpshufb	%xmm17, %xmm8, %xmm2
	vaesenclast	%xmm16, %xmm2, %xmm4
	vpternlogq	$150, %xmm5, %xmm7, %xmm4
	vpslldq	$4, %xmm8, %xmm2
	vpternlogq	$150, %xmm6, %xmm2, %xmm9
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm5
	vpternlogq	$150, %xmm9, %xmm8, %xmm5
	vpshufb	%xmm17, %xmm5, %xmm2
	vaesenclast	%xmm18, %xmm2, %xmm6
	vpslldq	$4, %xmm4, %xmm2
	vpslldq	$8, %xmm4, %xmm9
	vpslldq	$12, %xmm4, %xmm10
	vpternlogq	$150, %xmm9, %xmm2, %xmm10
	vpternlogq	$150, %xmm10, %xmm4, %xmm6
	vpslldq	$4, %xmm5, %xmm2
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm10
	vpternlogq	$150, %xmm9, %xmm2, %xmm10
	vpshufd	$255, %xmm6, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm9
	vpternlogq	$150, %xmm10, %xmm5, %xmm9
	vpshufb	%xmm17, %xmm9, %xmm2
	vaesenclast	%xmm19, %xmm2, %xmm10
	vpslldq	$4, %xmm6, %xmm2
	vpslldq	$8, %xmm6, %xmm15
	vpslldq	$12, %xmm6, %xmm16
	vpternlogq	$150, %xmm15, %xmm2, %xmm16
	vpternlogq	$150, %xmm16, %xmm6, %xmm10
	vpslldq	$4, %xmm9, %xmm2
	vpslldq	$8, %xmm9, %xmm15
	vpslldq	$12, %xmm9, %xmm16
	vpternlogq	$150, %xmm15, %xmm2, %xmm16
	vpshufd	$255, %xmm10, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm15
	vpternlogq	$150, %xmm16, %xmm9, %xmm15
	vpshufb	%xmm17, %xmm15, %xmm2
	vaesenclast	%xmm20, %xmm2, %xmm11
	vpslldq	$4, %xmm10, %xmm2
	vpslldq	$8, %xmm10, %xmm16
	vpslldq	$12, %xmm10, %xmm18
	vpternlogq	$150, %xmm16, %xmm2, %xmm18
	vpternlogq	$150, %xmm18, %xmm10, %xmm11
	vpslldq	$4, %xmm15, %xmm2
	vpslldq	$8, %xmm15, %xmm16
	vpslldq	$12, %xmm15, %xmm18
	vpternlogq	$150, %xmm16, %xmm2, %xmm18
	vpshufd	$255, %xmm11, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm16
	vpternlogq	$150, %xmm18, %xmm15, %xmm16
	vpshufb	%xmm17, %xmm16, %xmm2
	vaesenclast	%xmm12, %xmm2, %xmm2
	vpslldq	$4, %xmm11, %xmm12
	vpslldq	$8, %xmm11, %xmm18
	vpslldq	$12, %xmm11, %xmm19
	vpternlogq	$150, %xmm18, %xmm12, %xmm19
	vpternlogq	$150, %xmm19, %xmm11, %xmm2
	vpslldq	$4, %xmm16, %xmm12
	vpslldq	$8, %xmm16, %xmm18
	vpslldq	$12, %xmm16, %xmm19
	vpternlogq	$150, %xmm18, %xmm12, %xmm19
	vpshufd	$255, %xmm2, %xmm12
	vaesenclast	%xmm14, %xmm12, %xmm12
	vpternlogq	$150, %xmm19, %xmm16, %xmm12
	vpshufb	%xmm17, %xmm12, %xmm18
	vaesenclast	%xmm13, %xmm18, %xmm13
	vpslldq	$4, %xmm2, %xmm18
	vpslldq	$8, %xmm2, %xmm19
	vpslldq	$12, %xmm2, %xmm20
	vpternlogq	$150, %xmm19, %xmm18, %xmm20
	vpternlogq	$150, %xmm20, %xmm2, %xmm13
	vpshufd	$255, %xmm13, %xmm18
	vaesenclast	%xmm14, %xmm18, %xmm14
	vpslldq	$4, %xmm12, %xmm18
	vpslldq	$8, %xmm12, %xmm19
	vpslldq	$12, %xmm12, %xmm20
	vpternlogq	$150, %xmm19, %xmm18, %xmm20
	vpslldq	$4, %xmm13, %xmm18
	vpslldq	$8, %xmm13, %xmm19
	vpslldq	$12, %xmm13, %xmm21
	vpternlogq	$150, %xmm19, %xmm18, %xmm21
	vpternlogq	$150, %xmm20, %xmm12, %xmm14
	vpshufb	%xmm17, %xmm14, %xmm17
	vaesenclast	%xmm3, %xmm17, %xmm3
	vpternlogq	$150, %xmm21, %xmm13, %xmm3
	vmovdqa	%xmm7, (%rdi)
	vmovdqa	%xmm8, 16(%rdi)
	vmovdqa	%xmm4, 32(%rdi)
	vmovdqa	%xmm5, 48(%rdi)
	vmovdqa	%xmm6, 64(%rdi)
	vmovdqa	%xmm9, 80(%rdi)
	vmovdqa	%xmm10, 96(%rdi)
	vmovdqa	%xmm15, 112(%rdi)
	vmovdqa	%xmm11, 128(%rdi)
	vmovdqa64	%xmm16, 144(%rdi)
	vmovdqa	%xmm2, 160(%rdi)
	vmovdqa	%xmm12, 176(%rdi)
	vmovdqa	%xmm13, 192(%rdi)
	vmovdqa	%xmm14, 208(%rdi)
	vmovdqa	%xmm3, 224(%rdi)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm0, %xmm2
	vpbroadcastq	.LCPI0_14(%rip), %ymm1
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm0, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm4, %xmm5, %xmm3
	vinserti128	$1, %xmm3, %ymm3, %ymm4
	vinserti128	$1, %xmm3, %ymm2, %ymm5
	vpclmulqdq	$0, %ymm5, %ymm4, %ymm6
	vpunpckhqdq	%ymm5, %ymm4, %ymm7
	vpunpcklqdq	%ymm5, %ymm4, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm5, %ymm4, %ymm5
	vpternlogq	$150, %ymm6, %ymm5, %ymm7
	vpslldq	$8, %ymm7, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpclmulqdq	$16, %ymm1, %ymm6, %ymm8
	vpshufd	$78, %ymm6, %ymm6
	vpxor	%ymm6, %ymm8, %ymm6
	vpclmulqdq	$16, %ymm1, %ymm6, %ymm8
	vpsrldq	$8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpshufd	$78, %ymm6, %ymm6
	vpternlogq	$150, %ymm7, %ymm5, %ymm6
	vpclmulqdq	$0, %ymm6, %ymm4, %ymm5
	vpunpckhqdq	%ymm6, %ymm4, %ymm7
	vpunpcklqdq	%ymm6, %ymm4, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm6, %ymm4, %ymm8
	vpternlogq	$150, %ymm5, %ymm8, %ymm7
	vpslldq	$8, %ymm7, %ymm9
	vpxor	%ymm5, %ymm9, %ymm5
	vpclmulqdq	$16, %ymm1, %ymm5, %ymm9
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm9, %ymm5
	vpclmulqdq	$16, %ymm1, %ymm5, %ymm9
	vpsrldq	$8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm9, %ymm7
	vpshufd	$78, %ymm5, %ymm5
	vpternlogq	$150, %ymm7, %ymm8, %ymm5
	vpunpcklqdq	%ymm5, %ymm4, %ymm7
	vpunpckhqdq	%ymm5, %ymm4, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm5, %ymm4, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm5, %ymm4, %ymm4
	vpternlogq	$150, %ymm8, %ymm4, %ymm7
	vpslldq	$8, %ymm7, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpsrldq	$8, %ymm7, %ymm7
	vpclmulqdq	$16, %ymm1, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$16, %ymm1, %ymm8, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vpshufd	$78, %ymm8, %ymm7
	vpternlogq	$150, %ymm1, %ymm4, %ymm7
	vmovdqa	%xmm2, 240(%rdi)
	vmovdqa	%xmm3, 256(%rdi)
	vmovdqu	%ymm6, 272(%rdi)
	vmovdqu	%ymm5, 304(%rdi)
	vmovdqu	%ymm7, 336(%rdi)
	vmovdqa	%xmm0, 368(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_sivmac_tigerlake_init, .Lfunc_end0-haberdashery_sivmac_tigerlake_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_0:
	.quad	-4467570830351532032
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.quad	-1
	.quad	9223372036854775807
	.section	.text.haberdashery_sivmac_tigerlake_sign,"ax",@progbits
	.globl	haberdashery_sivmac_tigerlake_sign
	.p2align	4
	.type	haberdashery_sivmac_tigerlake_sign,@function
haberdashery_sivmac_tigerlake_sign:
	.cfi_startproc
	cmpq	$16, %r8
	setne	%r8b
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	xorl	%eax, %eax
	orb	%r8b, %r9b
	jne	.LBB1_10
	vmovdqa	240(%rdi), %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$256, %rdx
	jb	.LBB1_2
	vbroadcasti128	256(%rdi), %ymm2
	vbroadcasti128	272(%rdi), %ymm3
	vbroadcasti128	288(%rdi), %ymm4
	vbroadcasti128	304(%rdi), %ymm5
	vbroadcasti128	320(%rdi), %ymm6
	vbroadcasti128	336(%rdi), %ymm7
	vinserti128	$1, %xmm0, %ymm0, %ymm8
	vbroadcasti128	352(%rdi), %ymm9
	vpbroadcastq	.LCPI1_0(%rip), %ymm10
	movq	%rdx, %rax
	.p2align	4
.LBB1_17:
	vmovdqu	32(%rsi), %ymm11
	vmovdqu	64(%rsi), %ymm12
	vmovdqu	96(%rsi), %ymm13
	vmovdqu	128(%rsi), %ymm14
	vmovdqu	160(%rsi), %ymm15
	vmovdqu64	192(%rsi), %ymm16
	vmovdqu64	224(%rsi), %ymm17
	vpxor	(%rsi), %ymm1, %ymm1
	addq	$256, %rsi
	addq	$-256, %rax
	vpunpcklqdq	%ymm17, %ymm8, %ymm18
	vpunpckhqdq	%ymm17, %ymm8, %ymm19
	vpxorq	%ymm18, %ymm19, %ymm18
	vpclmulqdq	$0, %ymm17, %ymm8, %ymm19
	vpclmulqdq	$1, %ymm18, %ymm18, %ymm18
	vpclmulqdq	$17, %ymm17, %ymm8, %ymm17
	vpunpcklqdq	%ymm16, %ymm2, %ymm20
	vpunpckhqdq	%ymm16, %ymm2, %ymm21
	vpxorq	%ymm20, %ymm21, %ymm20
	vpclmulqdq	$0, %ymm16, %ymm2, %ymm21
	vpxorq	%ymm19, %ymm21, %ymm19
	vpclmulqdq	$1, %ymm20, %ymm20, %ymm20
	vpxorq	%ymm18, %ymm20, %ymm18
	vpclmulqdq	$17, %ymm16, %ymm2, %ymm16
	vpxorq	%ymm17, %ymm16, %ymm16
	vpunpcklqdq	%ymm15, %ymm3, %ymm17
	vpunpckhqdq	%ymm15, %ymm3, %ymm20
	vpxorq	%ymm17, %ymm20, %ymm17
	vpclmulqdq	$0, %ymm15, %ymm3, %ymm20
	vpclmulqdq	$1, %ymm17, %ymm17, %ymm17
	vpclmulqdq	$17, %ymm15, %ymm3, %ymm15
	vpunpcklqdq	%ymm14, %ymm4, %ymm21
	vpunpckhqdq	%ymm14, %ymm4, %ymm22
	vpxorq	%ymm21, %ymm22, %ymm21
	vpclmulqdq	$0, %ymm14, %ymm4, %ymm22
	vpternlogq	$150, %ymm20, %ymm19, %ymm22
	vpclmulqdq	$1, %ymm21, %ymm21, %ymm19
	vpternlogq	$150, %ymm17, %ymm18, %ymm19
	vpclmulqdq	$17, %ymm14, %ymm4, %ymm14
	vpternlogq	$150, %ymm15, %ymm16, %ymm14
	vpunpcklqdq	%ymm13, %ymm5, %ymm15
	vpunpckhqdq	%ymm13, %ymm5, %ymm16
	vpxorq	%ymm15, %ymm16, %ymm15
	vpclmulqdq	$0, %ymm13, %ymm5, %ymm16
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm15
	vpclmulqdq	$17, %ymm13, %ymm5, %ymm13
	vpunpcklqdq	%ymm12, %ymm6, %ymm17
	vpunpckhqdq	%ymm12, %ymm6, %ymm18
	vpxorq	%ymm17, %ymm18, %ymm17
	vpclmulqdq	$0, %ymm12, %ymm6, %ymm18
	vpternlogq	$150, %ymm16, %ymm22, %ymm18
	vpclmulqdq	$1, %ymm17, %ymm17, %ymm16
	vpternlogq	$150, %ymm15, %ymm19, %ymm16
	vpclmulqdq	$17, %ymm12, %ymm6, %ymm12
	vpternlogq	$150, %ymm13, %ymm14, %ymm12
	vpunpcklqdq	%ymm11, %ymm7, %ymm13
	vpunpckhqdq	%ymm11, %ymm7, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm11, %ymm7, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm11, %ymm7, %ymm11
	vpunpcklqdq	%ymm1, %ymm9, %ymm15
	vpunpckhqdq	%ymm1, %ymm9, %ymm17
	vpxorq	%ymm15, %ymm17, %ymm15
	vpclmulqdq	$0, %ymm1, %ymm9, %ymm17
	vpternlogq	$150, %ymm14, %ymm18, %ymm17
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm14
	vpternlogq	$150, %ymm13, %ymm16, %ymm14
	vpclmulqdq	$17, %ymm1, %ymm9, %ymm13
	vpternlogq	$150, %ymm11, %ymm12, %ymm13
	vpternlogq	$150, %ymm17, %ymm13, %ymm14
	vpslldq	$8, %ymm14, %ymm1
	vpxorq	%ymm1, %ymm17, %ymm1
	vpsrldq	$8, %ymm14, %ymm11
	vpclmulqdq	$16, %ymm10, %ymm1, %ymm12
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm12, %ymm1
	vpclmulqdq	$16, %ymm10, %ymm1, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm11, %ymm13, %ymm1
	cmpq	$255, %rax
	ja	.LBB1_17
	cmpq	$32, %rax
	jae	.LBB1_11
	jmp	.LBB1_4
.LBB1_2:
	movq	%rdx, %rax
	cmpq	$32, %rax
	jb	.LBB1_4
.LBB1_11:
	vinserti128	$1, %xmm0, %ymm0, %ymm2
	leaq	-32(%rax), %r8
	testb	$32, %r8b
	je	.LBB1_12
	cmpq	$32, %r8
	jae	.LBB1_14
.LBB1_5:
	vmovdqa	368(%rdi), %xmm2
	testq	%r8, %r8
	jne	.LBB1_6
	jmp	.LBB1_9
.LBB1_12:
	vpxor	(%rsi), %ymm1, %ymm1
	addq	$32, %rsi
	vpunpcklqdq	%ymm1, %ymm2, %ymm3
	vpunpckhqdq	%ymm1, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm1, %ymm2, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm1, %ymm2, %ymm5
	vpternlogq	$150, %ymm4, %ymm5, %ymm3
	vpslldq	$8, %ymm3, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsrldq	$8, %ymm3, %ymm3
	vpbroadcastq	.LCPI1_0(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm6
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm6, %ymm1
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm3, %ymm5, %ymm1
	movq	%r8, %rax
	cmpq	$32, %r8
	jb	.LBB1_5
.LBB1_14:
	vpbroadcastq	.LCPI1_0(%rip), %ymm3
	.p2align	4
.LBB1_15:
	vpxor	(%rsi), %ymm1, %ymm1
	vpunpcklqdq	%ymm1, %ymm2, %ymm4
	vpunpckhqdq	%ymm1, %ymm2, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm1, %ymm2, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm1, %ymm2, %ymm1
	vpternlogq	$150, %ymm5, %ymm1, %ymm4
	vpslldq	$8, %ymm4, %ymm6
	vpxor	%ymm6, %ymm5, %ymm5
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm3, %ymm5, %ymm6
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$16, %ymm3, %ymm5, %ymm6
	vpshufd	$78, %ymm5, %ymm5
	vpternlogq	$150, %ymm4, %ymm6, %ymm5
	addq	$-64, %rax
	vpternlogq	$150, 32(%rsi), %ymm1, %ymm5
	addq	$64, %rsi
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm4
	vpxor	%ymm1, %ymm4, %ymm1
	vpclmulqdq	$0, %ymm5, %ymm2, %ymm4
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm5, %ymm2, %ymm5
	vpternlogq	$150, %ymm4, %ymm5, %ymm1
	vpslldq	$8, %ymm1, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpsrldq	$8, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm3, %ymm4, %ymm6
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm6, %ymm4
	vpclmulqdq	$16, %ymm3, %ymm4, %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vpshufd	$78, %ymm4, %ymm1
	vpternlogq	$150, %ymm6, %ymm5, %ymm1
	cmpq	$31, %rax
	ja	.LBB1_15
.LBB1_4:
	movq	%rax, %r8
	vmovdqa	368(%rdi), %xmm2
	testq	%r8, %r8
	je	.LBB1_9
.LBB1_6:
	movl	$-1, %eax
	bzhil	%r8d, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rsi), %ymm3 {%k1} {z}
	vpxor	%ymm3, %ymm1, %ymm1
	cmpq	$17, %r8
	jae	.LBB1_8
	vmovdqa	%xmm2, %xmm0
.LBB1_8:
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vpunpcklqdq	%ymm1, %ymm0, %ymm3
	vpunpckhqdq	%ymm1, %ymm0, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm1, %ymm0, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm1, %ymm0, %ymm0
	vpternlogq	$150, %ymm4, %ymm0, %ymm3
	vpslldq	$8, %ymm3, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsrldq	$8, %ymm3, %ymm3
	vpbroadcastq	.LCPI1_0(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm5
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm5, %ymm1
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm3, %ymm0, %ymm1
.LBB1_9:
	vmovq	%rdx, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0
	vextracti128	$1, %ymm1, %xmm3
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm4, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	vmovdqa	(%rdi), %xmm1
	vpternlogq	$120, .LCPI1_1(%rip), %xmm0, %xmm1
	vaesenc	16(%rdi), %xmm1, %xmm0
	vaesenc	32(%rdi), %xmm0, %xmm0
	vaesenc	48(%rdi), %xmm0, %xmm0
	vaesenc	64(%rdi), %xmm0, %xmm0
	vaesenc	80(%rdi), %xmm0, %xmm0
	vaesenc	96(%rdi), %xmm0, %xmm0
	vaesenc	112(%rdi), %xmm0, %xmm0
	vaesenc	128(%rdi), %xmm0, %xmm0
	vaesenc	144(%rdi), %xmm0, %xmm0
	vaesenc	160(%rdi), %xmm0, %xmm0
	vaesenc	176(%rdi), %xmm0, %xmm0
	vaesenc	192(%rdi), %xmm0, %xmm0
	vaesenc	208(%rdi), %xmm0, %xmm0
	vaesenclast	224(%rdi), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movl	$1, %eax
.LBB1_10:
	vzeroupper
	retq
.Lfunc_end1:
	.size	haberdashery_sivmac_tigerlake_sign, .Lfunc_end1-haberdashery_sivmac_tigerlake_sign
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_0:
	.quad	-4467570830351532032
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.quad	-1
	.quad	9223372036854775807
	.section	.text.haberdashery_sivmac_tigerlake_verify,"ax",@progbits
	.globl	haberdashery_sivmac_tigerlake_verify
	.p2align	4
	.type	haberdashery_sivmac_tigerlake_verify,@function
haberdashery_sivmac_tigerlake_verify:
	.cfi_startproc
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	cmpq	$16, %r8
	setb	%r8b
	xorl	%eax, %eax
	orb	%r9b, %r8b
	jne	.LBB2_10
	vmovdqa	240(%rdi), %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$256, %rdx
	jb	.LBB2_2
	vbroadcasti128	256(%rdi), %ymm2
	vbroadcasti128	272(%rdi), %ymm3
	vbroadcasti128	288(%rdi), %ymm4
	vbroadcasti128	304(%rdi), %ymm5
	vbroadcasti128	320(%rdi), %ymm6
	vbroadcasti128	336(%rdi), %ymm7
	vinserti128	$1, %xmm0, %ymm0, %ymm8
	vbroadcasti128	352(%rdi), %ymm9
	vpbroadcastq	.LCPI2_0(%rip), %ymm10
	movq	%rdx, %rax
	.p2align	4
.LBB2_17:
	vmovdqu	32(%rsi), %ymm11
	vmovdqu	64(%rsi), %ymm12
	vmovdqu	96(%rsi), %ymm13
	vmovdqu	128(%rsi), %ymm14
	vmovdqu	160(%rsi), %ymm15
	vmovdqu64	192(%rsi), %ymm16
	vmovdqu64	224(%rsi), %ymm17
	vpxor	(%rsi), %ymm1, %ymm1
	addq	$256, %rsi
	addq	$-256, %rax
	vpunpcklqdq	%ymm17, %ymm8, %ymm18
	vpunpckhqdq	%ymm17, %ymm8, %ymm19
	vpxorq	%ymm18, %ymm19, %ymm18
	vpclmulqdq	$0, %ymm17, %ymm8, %ymm19
	vpclmulqdq	$1, %ymm18, %ymm18, %ymm18
	vpclmulqdq	$17, %ymm17, %ymm8, %ymm17
	vpunpcklqdq	%ymm16, %ymm2, %ymm20
	vpunpckhqdq	%ymm16, %ymm2, %ymm21
	vpxorq	%ymm20, %ymm21, %ymm20
	vpclmulqdq	$0, %ymm16, %ymm2, %ymm21
	vpxorq	%ymm19, %ymm21, %ymm19
	vpclmulqdq	$1, %ymm20, %ymm20, %ymm20
	vpxorq	%ymm18, %ymm20, %ymm18
	vpclmulqdq	$17, %ymm16, %ymm2, %ymm16
	vpxorq	%ymm17, %ymm16, %ymm16
	vpunpcklqdq	%ymm15, %ymm3, %ymm17
	vpunpckhqdq	%ymm15, %ymm3, %ymm20
	vpxorq	%ymm17, %ymm20, %ymm17
	vpclmulqdq	$0, %ymm15, %ymm3, %ymm20
	vpclmulqdq	$1, %ymm17, %ymm17, %ymm17
	vpclmulqdq	$17, %ymm15, %ymm3, %ymm15
	vpunpcklqdq	%ymm14, %ymm4, %ymm21
	vpunpckhqdq	%ymm14, %ymm4, %ymm22
	vpxorq	%ymm21, %ymm22, %ymm21
	vpclmulqdq	$0, %ymm14, %ymm4, %ymm22
	vpternlogq	$150, %ymm20, %ymm19, %ymm22
	vpclmulqdq	$1, %ymm21, %ymm21, %ymm19
	vpternlogq	$150, %ymm17, %ymm18, %ymm19
	vpclmulqdq	$17, %ymm14, %ymm4, %ymm14
	vpternlogq	$150, %ymm15, %ymm16, %ymm14
	vpunpcklqdq	%ymm13, %ymm5, %ymm15
	vpunpckhqdq	%ymm13, %ymm5, %ymm16
	vpxorq	%ymm15, %ymm16, %ymm15
	vpclmulqdq	$0, %ymm13, %ymm5, %ymm16
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm15
	vpclmulqdq	$17, %ymm13, %ymm5, %ymm13
	vpunpcklqdq	%ymm12, %ymm6, %ymm17
	vpunpckhqdq	%ymm12, %ymm6, %ymm18
	vpxorq	%ymm17, %ymm18, %ymm17
	vpclmulqdq	$0, %ymm12, %ymm6, %ymm18
	vpternlogq	$150, %ymm16, %ymm22, %ymm18
	vpclmulqdq	$1, %ymm17, %ymm17, %ymm16
	vpternlogq	$150, %ymm15, %ymm19, %ymm16
	vpclmulqdq	$17, %ymm12, %ymm6, %ymm12
	vpternlogq	$150, %ymm13, %ymm14, %ymm12
	vpunpcklqdq	%ymm11, %ymm7, %ymm13
	vpunpckhqdq	%ymm11, %ymm7, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm11, %ymm7, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm11, %ymm7, %ymm11
	vpunpcklqdq	%ymm1, %ymm9, %ymm15
	vpunpckhqdq	%ymm1, %ymm9, %ymm17
	vpxorq	%ymm15, %ymm17, %ymm15
	vpclmulqdq	$0, %ymm1, %ymm9, %ymm17
	vpternlogq	$150, %ymm14, %ymm18, %ymm17
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm14
	vpternlogq	$150, %ymm13, %ymm16, %ymm14
	vpclmulqdq	$17, %ymm1, %ymm9, %ymm13
	vpternlogq	$150, %ymm11, %ymm12, %ymm13
	vpternlogq	$150, %ymm17, %ymm13, %ymm14
	vpslldq	$8, %ymm14, %ymm1
	vpxorq	%ymm1, %ymm17, %ymm1
	vpsrldq	$8, %ymm14, %ymm11
	vpclmulqdq	$16, %ymm10, %ymm1, %ymm12
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm12, %ymm1
	vpclmulqdq	$16, %ymm10, %ymm1, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm11, %ymm13, %ymm1
	cmpq	$255, %rax
	ja	.LBB2_17
	cmpq	$32, %rax
	jae	.LBB2_11
	jmp	.LBB2_4
.LBB2_2:
	movq	%rdx, %rax
	cmpq	$32, %rax
	jb	.LBB2_4
.LBB2_11:
	vinserti128	$1, %xmm0, %ymm0, %ymm2
	leaq	-32(%rax), %r8
	testb	$32, %r8b
	je	.LBB2_12
	cmpq	$32, %r8
	jae	.LBB2_14
.LBB2_5:
	vmovdqu	(%rcx), %xmm2
	vmovdqa	368(%rdi), %xmm3
	testq	%r8, %r8
	jne	.LBB2_6
	jmp	.LBB2_9
.LBB2_12:
	vpxor	(%rsi), %ymm1, %ymm1
	addq	$32, %rsi
	vpunpcklqdq	%ymm1, %ymm2, %ymm3
	vpunpckhqdq	%ymm1, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm1, %ymm2, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm1, %ymm2, %ymm5
	vpternlogq	$150, %ymm4, %ymm5, %ymm3
	vpslldq	$8, %ymm3, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsrldq	$8, %ymm3, %ymm3
	vpbroadcastq	.LCPI2_0(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm6
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm6, %ymm1
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm3, %ymm5, %ymm1
	movq	%r8, %rax
	cmpq	$32, %r8
	jb	.LBB2_5
.LBB2_14:
	vpbroadcastq	.LCPI2_0(%rip), %ymm3
	.p2align	4
.LBB2_15:
	vpxor	(%rsi), %ymm1, %ymm1
	vpunpcklqdq	%ymm1, %ymm2, %ymm4
	vpunpckhqdq	%ymm1, %ymm2, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm1, %ymm2, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm1, %ymm2, %ymm1
	vpternlogq	$150, %ymm5, %ymm1, %ymm4
	vpslldq	$8, %ymm4, %ymm6
	vpxor	%ymm6, %ymm5, %ymm5
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm3, %ymm5, %ymm6
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$16, %ymm3, %ymm5, %ymm6
	vpshufd	$78, %ymm5, %ymm5
	vpternlogq	$150, %ymm4, %ymm6, %ymm5
	addq	$-64, %rax
	vpternlogq	$150, 32(%rsi), %ymm1, %ymm5
	addq	$64, %rsi
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm4
	vpxor	%ymm1, %ymm4, %ymm1
	vpclmulqdq	$0, %ymm5, %ymm2, %ymm4
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm5, %ymm2, %ymm5
	vpternlogq	$150, %ymm4, %ymm5, %ymm1
	vpslldq	$8, %ymm1, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpsrldq	$8, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm3, %ymm4, %ymm6
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm6, %ymm4
	vpclmulqdq	$16, %ymm3, %ymm4, %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vpshufd	$78, %ymm4, %ymm1
	vpternlogq	$150, %ymm6, %ymm5, %ymm1
	cmpq	$31, %rax
	ja	.LBB2_15
.LBB2_4:
	movq	%rax, %r8
	vmovdqu	(%rcx), %xmm2
	vmovdqa	368(%rdi), %xmm3
	testq	%r8, %r8
	je	.LBB2_9
.LBB2_6:
	movl	$-1, %eax
	bzhil	%r8d, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rsi), %ymm4 {%k1} {z}
	vpxor	%ymm4, %ymm1, %ymm1
	cmpq	$17, %r8
	jae	.LBB2_8
	vmovdqa	%xmm3, %xmm0
.LBB2_8:
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vpunpcklqdq	%ymm1, %ymm0, %ymm4
	vpunpckhqdq	%ymm1, %ymm0, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm1, %ymm0, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm1, %ymm0, %ymm0
	vpternlogq	$150, %ymm5, %ymm0, %ymm4
	vpslldq	$8, %ymm4, %ymm1
	vpxor	%ymm1, %ymm5, %ymm1
	vpsrldq	$8, %ymm4, %ymm4
	vpbroadcastq	.LCPI2_0(%rip), %ymm5
	vpclmulqdq	$16, %ymm5, %ymm1, %ymm6
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm6, %ymm1
	vpclmulqdq	$16, %ymm5, %ymm1, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm4, %ymm0, %ymm1
.LBB2_9:
	vmovq	%rdx, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0
	vextracti128	$1, %ymm1, %xmm4
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm5, %xmm3
	vpbroadcastq	.LCPI2_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm5
	vpternlogq	$150, %xmm4, %xmm0, %xmm5
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm3, %xmm5, %xmm0
	vmovdqa	(%rdi), %xmm1
	vpternlogq	$120, .LCPI2_1(%rip), %xmm0, %xmm1
	vaesenc	16(%rdi), %xmm1, %xmm0
	vaesenc	32(%rdi), %xmm0, %xmm0
	vaesenc	48(%rdi), %xmm0, %xmm0
	vaesenc	64(%rdi), %xmm0, %xmm0
	vaesenc	80(%rdi), %xmm0, %xmm0
	vaesenc	96(%rdi), %xmm0, %xmm0
	vaesenc	112(%rdi), %xmm0, %xmm0
	vaesenc	128(%rdi), %xmm0, %xmm0
	vaesenc	144(%rdi), %xmm0, %xmm0
	vaesenc	160(%rdi), %xmm0, %xmm0
	vaesenc	176(%rdi), %xmm0, %xmm0
	vaesenc	192(%rdi), %xmm0, %xmm0
	vaesenc	208(%rdi), %xmm0, %xmm0
	vaesenclast	224(%rdi), %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_10:
	vzeroupper
	retq
.Lfunc_end2:
	.size	haberdashery_sivmac_tigerlake_verify, .Lfunc_end2-haberdashery_sivmac_tigerlake_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_tigerlake_is_supported
	.p2align	4
	.type	haberdashery_sivmac_tigerlake_is_supported,@function
haberdashery_sivmac_tigerlake_is_supported:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %r9d
	movl	%edx, %r10d
	notl	%r10d
	notl	%r9d
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r11
	cpuid
	xchgq	%rbx, %r11

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	movl	$7, %eax
	movl	$1, %ecx
	#APP

	movq	%rbx, %rbx
	cpuid
	xchgq	%rbx, %rbx

	#NO_APP
	andl	$1993871875, %r9d
	andl	$125829120, %r10d
	orl	%r9d, %r10d
	jne	.LBB3_2
	notl	%r8d
	notl	%r11d
	andl	$-240189143, %r11d
	andl	$415260490, %r8d
	orl	%r11d, %r8d
	sete	%al
	shrl	$8, %edi
	andl	$1, %edi
	andb	%al, %dil
	movzbl	%dil, %esi
.LBB3_2:
	movl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	haberdashery_sivmac_tigerlake_is_supported, .Lfunc_end3-haberdashery_sivmac_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

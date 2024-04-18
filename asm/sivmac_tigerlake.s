# @generated
# https://github.com/facebookincubator/haberdashery/
	.text
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI0_1:
	.long	2
	.long	0
	.long	0
	.long	0
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
	.p2align	4, 0x90
	.type	haberdashery_sivmac_tigerlake_init,@function
haberdashery_sivmac_tigerlake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm2
	vmovdqu	16(%rsi), %xmm8
	vxorpd	.LCPI0_0(%rip), %xmm2, %xmm4
	vxorpd	.LCPI0_1(%rip), %xmm2, %xmm3
	vxorpd	.LCPI0_2(%rip), %xmm2, %xmm6
	vxorpd	.LCPI0_3(%rip), %xmm2, %xmm5
	vxorpd	.LCPI0_4(%rip), %xmm2, %xmm7
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpslldq	$12, %xmm2, %xmm9
	vpternlogq	$150, %xmm1, %xmm0, %xmm9
	vpbroadcastd	.LCPI0_8(%rip), %xmm17
	vpshufb	%xmm17, %xmm8, %xmm0
	vpbroadcastq	.LCPI0_6(%rip), %xmm16
	vaesenclast	%xmm16, %xmm0, %xmm0
	vpternlogq	$150, %xmm9, %xmm2, %xmm0
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm9
	vpslldq	$12, %xmm8, %xmm11
	vpternlogq	$150, %xmm9, %xmm1, %xmm11
	vpshufd	$255, %xmm0, %xmm9
	vpxor	%xmm1, %xmm1, %xmm1
	vaesenclast	%xmm1, %xmm9, %xmm10
	vpxor	%xmm9, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm8, %xmm10
	vpbroadcastq	.LCPI0_7(%rip), %xmm1
	vbroadcastss	.LCPI0_8(%rip), %xmm14
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm7, %xmm7
	vpslldq	$4, %xmm0, %xmm8
	vpslldq	$8, %xmm0, %xmm11
	vpslldq	$12, %xmm0, %xmm12
	vpternlogq	$150, %xmm8, %xmm11, %xmm12
	vpshufb	%xmm14, %xmm10, %xmm13
	vaesenclast	%xmm1, %xmm13, %xmm13
	vpternlogq	$150, %xmm0, %xmm12, %xmm13
	#NO_APP
	vmovdqa64	%xmm1, %xmm18
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm7, %xmm7
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm8
	vpslldq	$12, %xmm10, %xmm11
	vpternlogq	$150, %xmm0, %xmm8, %xmm11
	vpshufd	$255, %xmm13, %xmm12
	vaesenclast	%xmm9, %xmm12, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	#NO_APP
	vpbroadcastq	.LCPI0_9(%rip), %xmm1
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm7, %xmm7
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm8
	vpslldq	$12, %xmm13, %xmm11
	vpternlogq	$150, %xmm0, %xmm8, %xmm11
	vpshufb	%xmm14, %xmm12, %xmm15
	vaesenclast	%xmm1, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm11, %xmm15
	#NO_APP
	vmovdqa64	%xmm1, %xmm20
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm7
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm8
	vpslldq	$12, %xmm12, %xmm11
	vpternlogq	$150, %xmm0, %xmm8, %xmm11
	vpshufd	$255, %xmm15, %xmm13
	vaesenclast	%xmm9, %xmm13, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	#NO_APP
	vpbroadcastq	.LCPI0_10(%rip), %xmm11
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm7, %xmm7
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm8
	vpslldq	$12, %xmm15, %xmm12
	vpternlogq	$150, %xmm0, %xmm8, %xmm12
	vpshufb	%xmm14, %xmm13, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpternlogq	$150, %xmm15, %xmm12, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm7, %xmm7
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm8
	vpslldq	$12, %xmm13, %xmm12
	vpternlogq	$150, %xmm0, %xmm8, %xmm12
	vpshufd	$255, %xmm1, %xmm15
	vaesenclast	%xmm9, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm12, %xmm15
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
	vpbroadcastq	.LCPI0_11(%rip), %xmm12
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm7, %xmm7
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm8
	vpslldq	$12, %xmm1, %xmm13
	vpternlogq	$150, %xmm0, %xmm8, %xmm13
	vpshufb	%xmm14, %xmm15, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm9
	vpternlogq	$150, %xmm1, %xmm13, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm7, %xmm7
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpslldq	$12, %xmm15, %xmm13
	vpternlogq	$150, %xmm0, %xmm1, %xmm13
	vpshufd	$255, %xmm9, %xmm8
	vaesenclast	%xmm10, %xmm8, %xmm8
	vpternlogq	$150, %xmm15, %xmm13, %xmm8
	#NO_APP
	vpbroadcastq	.LCPI0_12(%rip), %xmm13
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm7, %xmm7
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm15
	vpslldq	$12, %xmm9, %xmm10
	vpternlogq	$150, %xmm1, %xmm15, %xmm10
	vpshufb	%xmm14, %xmm8, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm0
	vpternlogq	$150, %xmm9, %xmm10, %xmm0
	#NO_APP
	vpslldq	$4, %xmm8, %xmm1
	vxorpd	%xmm14, %xmm14, %xmm14
	vpunpcklqdq	%xmm8, %xmm14, %xmm9
	vinsertps	$55, %xmm8, %xmm0, %xmm10
	vpternlogq	$150, %xmm9, %xmm1, %xmm10
	vshufps	$255, %xmm0, %xmm0, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm15
	vxorpd	%xmm9, %xmm9, %xmm9
	vpternlogq	$150, %xmm10, %xmm8, %xmm15
	vpslldq	$4, %xmm0, %xmm1
	vpunpcklqdq	%xmm0, %xmm9, %xmm9
	vinsertps	$55, %xmm0, %xmm0, %xmm10
	vpternlogq	$150, %xmm9, %xmm1, %xmm10
	vpshufb	%xmm17, %xmm15, %xmm1
	vpbroadcastq	.LCPI0_13(%rip), %xmm14
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vaesenclast	%xmm14, %xmm1, %xmm8
	vpternlogq	$150, %xmm10, %xmm0, %xmm8
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenclast	%xmm8, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm4, %xmm4
	vaesenclast	%xmm8, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm6, %xmm6
	vaesenclast	%xmm8, %xmm5, %xmm5
	vaesenclast	%xmm8, %xmm7, %xmm7
	#NO_APP
	vpunpcklqdq	%xmm4, %xmm2, %xmm15
	vpunpcklqdq	%xmm6, %xmm3, %xmm4
	vpunpcklqdq	%xmm7, %xmm5, %xmm2
	vxorpd	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm3, %xmm9, %xmm0
	vinsertps	$55, %xmm3, %xmm0, %xmm1
	vpunpcklqdq	%xmm5, %xmm9, %xmm6
	vinsertps	$55, %xmm5, %xmm0, %xmm7
	vpslldq	$4, %xmm4, %xmm3
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	vpshufb	%xmm17, %xmm2, %xmm0
	vaesenclast	%xmm16, %xmm0, %xmm3
	vpternlogq	$150, %xmm1, %xmm4, %xmm3
	vpslldq	$4, %xmm2, %xmm0
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vpshufd	$255, %xmm3, %xmm0
	vaesenclast	%xmm9, %xmm0, %xmm5
	vpternlogq	$150, %xmm7, %xmm2, %xmm5
	vpshufb	%xmm17, %xmm5, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm6
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm7
	vpternlogq	$150, %xmm1, %xmm0, %xmm7
	vpternlogq	$150, %xmm7, %xmm3, %xmm6
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm8
	vpternlogq	$150, %xmm1, %xmm0, %xmm8
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm9, %xmm0, %xmm7
	vpxord	%xmm19, %xmm19, %xmm19
	vpternlogq	$150, %xmm8, %xmm5, %xmm7
	vpshufb	%xmm17, %xmm7, %xmm0
	vaesenclast	%xmm20, %xmm0, %xmm8
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm9
	vpternlogq	$150, %xmm1, %xmm0, %xmm9
	vpternlogq	$150, %xmm9, %xmm6, %xmm8
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm10
	vpternlogq	$150, %xmm1, %xmm0, %xmm10
	vpshufd	$255, %xmm8, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm9
	vpternlogq	$150, %xmm10, %xmm7, %xmm9
	vpshufb	%xmm17, %xmm9, %xmm0
	vaesenclast	%xmm11, %xmm0, %xmm10
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm11
	vpternlogq	$150, %xmm1, %xmm0, %xmm11
	vpternlogq	$150, %xmm11, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpslldq	$12, %xmm9, %xmm16
	vpternlogq	$150, %xmm1, %xmm0, %xmm16
	vpshufd	$255, %xmm10, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm11
	vpternlogq	$150, %xmm16, %xmm9, %xmm11
	vpshufb	%xmm17, %xmm11, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm12
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpslldq	$12, %xmm10, %xmm16
	vpternlogq	$150, %xmm1, %xmm0, %xmm16
	vpternlogq	$150, %xmm16, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm18
	vpternlogq	$150, %xmm1, %xmm0, %xmm18
	vpshufd	$255, %xmm12, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm16
	vpternlogq	$150, %xmm18, %xmm11, %xmm16
	vpshufb	%xmm17, %xmm16, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm13
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpslldq	$12, %xmm12, %xmm18
	vpternlogq	$150, %xmm1, %xmm0, %xmm18
	vpternlogq	$150, %xmm18, %xmm12, %xmm13
	vpshufd	$255, %xmm13, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm1
	vpslldq	$4, %xmm16, %xmm0
	vpslldq	$8, %xmm16, %xmm18
	vpslldq	$12, %xmm16, %xmm19
	vpternlogq	$150, %xmm18, %xmm0, %xmm19
	vpternlogq	$150, %xmm19, %xmm16, %xmm1
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm18
	vpslldq	$12, %xmm13, %xmm19
	vpternlogq	$150, %xmm18, %xmm0, %xmm19
	vpshufb	%xmm17, %xmm1, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpternlogq	$150, %xmm19, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm14
	vpbroadcastq	.LCPI0_14(%rip), %xmm17
	vpclmulqdq	$16, %xmm17, %xmm14, %xmm18
	vpshufd	$78, %xmm14, %xmm14
	vpxorq	%xmm14, %xmm18, %xmm14
	vpclmulqdq	$16, %xmm17, %xmm14, %xmm18
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm19
	vpshufd	$78, %xmm14, %xmm14
	vpternlogq	$150, %xmm18, %xmm19, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm18
	vpclmulqdq	$16, %xmm17, %xmm18, %xmm19
	vpshufd	$78, %xmm18, %xmm18
	vpxorq	%xmm18, %xmm19, %xmm18
	vpclmulqdq	$16, %xmm17, %xmm18, %xmm19
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm20
	vpshufd	$78, %xmm18, %xmm18
	vpternlogq	$150, %xmm19, %xmm20, %xmm18
	vpclmulqdq	$0, %xmm18, %xmm18, %xmm19
	vpclmulqdq	$16, %xmm17, %xmm19, %xmm20
	vpshufd	$78, %xmm19, %xmm19
	vpxorq	%xmm19, %xmm20, %xmm19
	vpclmulqdq	$16, %xmm17, %xmm19, %xmm20
	vpclmulqdq	$17, %xmm18, %xmm18, %xmm21
	vpshufd	$78, %xmm19, %xmm19
	vpternlogq	$150, %xmm20, %xmm21, %xmm19
	vpclmulqdq	$0, %xmm15, %xmm14, %xmm20
	vpclmulqdq	$16, %xmm15, %xmm14, %xmm21
	vpclmulqdq	$1, %xmm15, %xmm14, %xmm22
	vpxorq	%xmm21, %xmm22, %xmm21
	vpslldq	$8, %xmm21, %xmm22
	vpxorq	%xmm22, %xmm20, %xmm20
	vpclmulqdq	$16, %xmm17, %xmm20, %xmm22
	vpshufd	$78, %xmm20, %xmm20
	vpxorq	%xmm20, %xmm22, %xmm20
	vpclmulqdq	$16, %xmm17, %xmm20, %xmm22
	vpclmulqdq	$17, %xmm15, %xmm14, %xmm23
	vpxorq	%xmm22, %xmm23, %xmm22
	vpsrldq	$8, %xmm21, %xmm21
	vpshufd	$78, %xmm20, %xmm20
	vpternlogq	$150, %xmm21, %xmm22, %xmm20
	vpclmulqdq	$0, %xmm20, %xmm20, %xmm21
	vpclmulqdq	$16, %xmm17, %xmm21, %xmm22
	vpshufd	$78, %xmm21, %xmm21
	vpxorq	%xmm21, %xmm22, %xmm21
	vpclmulqdq	$16, %xmm17, %xmm21, %xmm22
	vpclmulqdq	$17, %xmm20, %xmm20, %xmm23
	vpshufd	$78, %xmm21, %xmm21
	vpternlogq	$150, %xmm22, %xmm23, %xmm21
	vpclmulqdq	$0, %xmm15, %xmm21, %xmm22
	vpclmulqdq	$16, %xmm15, %xmm21, %xmm23
	vpclmulqdq	$1, %xmm15, %xmm21, %xmm24
	vpxorq	%xmm23, %xmm24, %xmm23
	vpslldq	$8, %xmm23, %xmm24
	vpxorq	%xmm24, %xmm22, %xmm22
	vpclmulqdq	$16, %xmm17, %xmm22, %xmm24
	vpshufd	$78, %xmm22, %xmm22
	vpxorq	%xmm22, %xmm24, %xmm22
	vpclmulqdq	$16, %xmm17, %xmm22, %xmm24
	vpclmulqdq	$17, %xmm15, %xmm21, %xmm25
	vpxorq	%xmm24, %xmm25, %xmm24
	vpsrldq	$8, %xmm23, %xmm23
	vpshufd	$78, %xmm22, %xmm22
	vpternlogq	$150, %xmm23, %xmm24, %xmm22
	vpclmulqdq	$0, %xmm15, %xmm18, %xmm23
	vpclmulqdq	$16, %xmm15, %xmm18, %xmm24
	vpclmulqdq	$1, %xmm15, %xmm18, %xmm25
	vpxorq	%xmm24, %xmm25, %xmm24
	vpslldq	$8, %xmm24, %xmm25
	vpxorq	%xmm25, %xmm23, %xmm23
	vpclmulqdq	$16, %xmm17, %xmm23, %xmm25
	vpshufd	$78, %xmm23, %xmm23
	vpxorq	%xmm23, %xmm25, %xmm23
	vpclmulqdq	$16, %xmm17, %xmm23, %xmm17
	vpclmulqdq	$17, %xmm15, %xmm18, %xmm25
	vpxorq	%xmm17, %xmm25, %xmm17
	vpsrldq	$8, %xmm24, %xmm24
	vpshufd	$78, %xmm23, %xmm23
	vpternlogq	$150, %xmm24, %xmm17, %xmm23
	vmovdqa	%xmm15, (%rdi)
	vmovdqa	%xmm14, 16(%rdi)
	vmovdqa64	%xmm20, 32(%rdi)
	vmovdqa64	%xmm18, 48(%rdi)
	vmovdqa64	%xmm23, 64(%rdi)
	vmovdqa64	%xmm21, 80(%rdi)
	vmovdqa64	%xmm22, 96(%rdi)
	vmovdqa64	%xmm19, 112(%rdi)
	vmovdqa	%xmm4, 128(%rdi)
	vmovdqa	%xmm2, 144(%rdi)
	vmovdqa	%xmm3, 160(%rdi)
	vmovdqa	%xmm5, 176(%rdi)
	vmovdqa	%xmm6, 192(%rdi)
	vmovdqa	%xmm7, 208(%rdi)
	vmovdqa	%xmm8, 224(%rdi)
	vmovdqa	%xmm9, 240(%rdi)
	vmovdqa	%xmm10, 256(%rdi)
	vmovdqa	%xmm11, 272(%rdi)
	vmovdqa	%xmm12, 288(%rdi)
	vmovdqa64	%xmm16, 304(%rdi)
	vmovdqa	%xmm13, 320(%rdi)
	vmovdqa	%xmm1, 336(%rdi)
	vmovdqa	%xmm0, 352(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
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
	.p2align	4, 0x90
	.type	haberdashery_sivmac_tigerlake_sign,@function
haberdashery_sivmac_tigerlake_sign:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%ebp, %ebp
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	ja	.LBB1_14
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rdi, %r15
	vmovdqa64	(%rdi), %xmm21
	vpxor	%xmm15, %xmm15, %xmm15
	cmpq	$128, %rdx
	jae	.LBB1_15
	movq	%r12, %rax
	jmp	.LBB1_3
.LBB1_15:
	vmovdqa	16(%r15), %xmm0
	vmovdqa	32(%r15), %xmm1
	vmovdqa	48(%r15), %xmm2
	vmovdqa	64(%r15), %xmm3
	vmovdqa	80(%r15), %xmm4
	vmovdqa	96(%r15), %xmm5
	vmovdqa	112(%r15), %xmm6
	vpbroadcastq	.LCPI1_0(%rip), %xmm7
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB1_16:
	vmovdqu	16(%rsi), %xmm8
	vmovdqu	32(%rsi), %xmm9
	vmovdqu	48(%rsi), %xmm10
	vmovdqu	64(%rsi), %xmm11
	vmovdqu	80(%rsi), %xmm12
	vmovdqu	96(%rsi), %xmm13
	vmovdqu	112(%rsi), %xmm14
	addq	$-128, %rax
	vpxor	(%rsi), %xmm15, %xmm15
	subq	$-128, %rsi
	vpclmulqdq	$0, %xmm14, %xmm21, %xmm16
	vpclmulqdq	$1, %xmm14, %xmm21, %xmm17
	vpclmulqdq	$16, %xmm14, %xmm21, %xmm18
	vpxorq	%xmm17, %xmm18, %xmm17
	vpclmulqdq	$17, %xmm14, %xmm21, %xmm14
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm18
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm19
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm20
	vpternlogq	$150, %xmm19, %xmm17, %xmm20
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm17
	vpternlogq	$150, %xmm16, %xmm18, %xmm17
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm16
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm18
	vpternlogq	$150, %xmm16, %xmm20, %xmm18
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm12
	vpternlogq	$150, %xmm14, %xmm13, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm13
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm16
	vpternlogq	$150, %xmm14, %xmm18, %xmm16
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm14
	vpternlogq	$150, %xmm13, %xmm17, %xmm14
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm17
	vpternlogq	$150, %xmm13, %xmm16, %xmm17
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm10
	vpternlogq	$150, %xmm11, %xmm12, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm11
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm13
	vpternlogq	$150, %xmm12, %xmm17, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm12
	vpternlogq	$150, %xmm11, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm14
	vpternlogq	$150, %xmm11, %xmm13, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm8
	vpternlogq	$150, %xmm9, %xmm10, %xmm8
	vpclmulqdq	$0, %xmm15, %xmm6, %xmm9
	vpclmulqdq	$1, %xmm15, %xmm6, %xmm10
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm11
	vpternlogq	$150, %xmm10, %xmm14, %xmm11
	vpclmulqdq	$17, %xmm15, %xmm6, %xmm10
	vpslldq	$8, %xmm11, %xmm13
	vpternlogq	$150, %xmm9, %xmm12, %xmm13
	vpsrldq	$8, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm11
	vpshufd	$78, %xmm13, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm11, %xmm12
	vpternlogq	$150, %xmm10, %xmm8, %xmm12
	vpshufd	$78, %xmm11, %xmm15
	vpternlogq	$150, %xmm9, %xmm12, %xmm15
	cmpq	$128, %rax
	jae	.LBB1_16
.LBB1_3:
	cmpq	$16, %rax
	jb	.LBB1_9
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB1_5
	cmpq	$16, %rdx
	jae	.LBB1_7
.LBB1_10:
	testq	%rdx, %rdx
	je	.LBB1_12
.LBB1_11:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	vmovdqa64	%xmm21, 32(%rsp)
	vmovdqa	%xmm15, 16(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa64	32(%rsp), %xmm21
	vmovdqa	16(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm21, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm21, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm21, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm21, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm2, %xmm0, %xmm15
.LBB1_12:
	testq	%r14, %r14
	je	.LBB1_14
	shlq	$3, %r12
	vmovq	%r12, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm21, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm21, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm21, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm21, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqa	128(%r15), %xmm0
	vpternlogq	$120, .LCPI1_1(%rip), %xmm1, %xmm0
	vaesenc	144(%r15), %xmm0, %xmm0
	vaesenc	160(%r15), %xmm0, %xmm0
	vaesenc	176(%r15), %xmm0, %xmm0
	vaesenc	192(%r15), %xmm0, %xmm0
	vaesenc	208(%r15), %xmm0, %xmm0
	vaesenc	224(%r15), %xmm0, %xmm0
	vaesenc	240(%r15), %xmm0, %xmm0
	vaesenc	256(%r15), %xmm0, %xmm0
	vaesenc	272(%r15), %xmm0, %xmm0
	vaesenc	288(%r15), %xmm0, %xmm0
	vaesenc	304(%r15), %xmm0, %xmm0
	vaesenc	320(%r15), %xmm0, %xmm0
	vaesenc	336(%r15), %xmm0, %xmm0
	vaesenclast	352(%r15), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	xorl	%ebp, %ebp
	cmpq	$16, %r14
	movl	$16, %edx
	cmovbq	%r14, %rdx
	setae	%bpl
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	callq	*memcpy@GOTPCREL(%rip)
.LBB1_14:
	movl	%ebp, %eax
	addq	$48, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_5:
	.cfi_def_cfa_offset 96
	vpxor	(%rsi), %xmm15, %xmm0
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm0, %xmm21, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm21, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm21, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm21, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm2, %xmm0, %xmm15
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_7:
	vpbroadcastq	.LCPI1_0(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_8:
	vpxor	(%rsi), %xmm15, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm21, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm21, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm21, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm21, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, 16(%rsi), %xmm4, %xmm1
	addq	$-32, %rax
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm1, %xmm21, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm21, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm21, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm21, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm2, %xmm15
	vpternlogq	$150, %xmm3, %xmm1, %xmm15
	cmpq	$15, %rax
	ja	.LBB1_8
.LBB1_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_11
	jmp	.LBB1_12
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
	.p2align	4, 0x90
	.type	haberdashery_sivmac_tigerlake_verify,@function
haberdashery_sivmac_tigerlake_verify:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	xorl	%eax, %eax
	movabsq	$68719476736, %rdx
	cmpq	%rdx, %r14
	ja	.LBB2_14
	cmpq	$16, %r8
	jb	.LBB2_14
	movq	%rdi, %rbx
	vmovdqa64	(%rdi), %xmm21
	vpxor	%xmm15, %xmm15, %xmm15
	cmpq	$128, %r14
	jae	.LBB2_15
	movq	%r14, %rax
	jmp	.LBB2_4
.LBB2_15:
	vmovdqa	16(%rbx), %xmm0
	vmovdqa	32(%rbx), %xmm1
	vmovdqa	48(%rbx), %xmm2
	vmovdqa	64(%rbx), %xmm3
	vmovdqa	80(%rbx), %xmm4
	vmovdqa	96(%rbx), %xmm5
	vmovdqa	112(%rbx), %xmm6
	vpbroadcastq	.LCPI2_0(%rip), %xmm7
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB2_16:
	vmovdqu	16(%rsi), %xmm8
	vmovdqu	32(%rsi), %xmm9
	vmovdqu	48(%rsi), %xmm10
	vmovdqu	64(%rsi), %xmm11
	vmovdqu	80(%rsi), %xmm12
	vmovdqu	96(%rsi), %xmm13
	vmovdqu	112(%rsi), %xmm14
	addq	$-128, %rax
	vpxor	(%rsi), %xmm15, %xmm15
	subq	$-128, %rsi
	vpclmulqdq	$0, %xmm14, %xmm21, %xmm16
	vpclmulqdq	$1, %xmm14, %xmm21, %xmm17
	vpclmulqdq	$16, %xmm14, %xmm21, %xmm18
	vpxorq	%xmm17, %xmm18, %xmm17
	vpclmulqdq	$17, %xmm14, %xmm21, %xmm14
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm18
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm19
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm20
	vpternlogq	$150, %xmm19, %xmm17, %xmm20
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm17
	vpternlogq	$150, %xmm16, %xmm18, %xmm17
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm16
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm18
	vpternlogq	$150, %xmm16, %xmm20, %xmm18
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm12
	vpternlogq	$150, %xmm14, %xmm13, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm13
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm16
	vpternlogq	$150, %xmm14, %xmm18, %xmm16
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm14
	vpternlogq	$150, %xmm13, %xmm17, %xmm14
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm17
	vpternlogq	$150, %xmm13, %xmm16, %xmm17
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm10
	vpternlogq	$150, %xmm11, %xmm12, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm11
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm13
	vpternlogq	$150, %xmm12, %xmm17, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm12
	vpternlogq	$150, %xmm11, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm14
	vpternlogq	$150, %xmm11, %xmm13, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm8
	vpternlogq	$150, %xmm9, %xmm10, %xmm8
	vpclmulqdq	$0, %xmm15, %xmm6, %xmm9
	vpclmulqdq	$1, %xmm15, %xmm6, %xmm10
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm11
	vpternlogq	$150, %xmm10, %xmm14, %xmm11
	vpclmulqdq	$17, %xmm15, %xmm6, %xmm10
	vpslldq	$8, %xmm11, %xmm13
	vpternlogq	$150, %xmm9, %xmm12, %xmm13
	vpsrldq	$8, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm11
	vpshufd	$78, %xmm13, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm11, %xmm12
	vpternlogq	$150, %xmm10, %xmm8, %xmm12
	vpshufd	$78, %xmm11, %xmm15
	vpternlogq	$150, %xmm9, %xmm12, %xmm15
	cmpq	$128, %rax
	jae	.LBB2_16
.LBB2_4:
	cmpq	$16, %rax
	jb	.LBB2_10
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB2_6
	cmpq	$16, %rdx
	jae	.LBB2_8
.LBB2_11:
	vmovdqu	(%rcx), %xmm5
	testq	%rdx, %rdx
	je	.LBB2_13
.LBB2_12:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	vmovdqa64	%xmm21, 48(%rsp)
	vmovdqa	%xmm15, 16(%rsp)
	vmovdqa	%xmm5, 32(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm5
	vmovdqa64	48(%rsp), %xmm21
	vmovdqa	16(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm21, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm21, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm21, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm21, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm2, %xmm0, %xmm15
.LBB2_13:
	shlq	$3, %r14
	vmovq	%r14, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm21, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm21, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm21, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm21, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vmovdqa	128(%rbx), %xmm0
	vpternlogq	$120, .LCPI2_1(%rip), %xmm1, %xmm0
	vaesenc	144(%rbx), %xmm0, %xmm0
	vaesenc	160(%rbx), %xmm0, %xmm0
	vaesenc	176(%rbx), %xmm0, %xmm0
	vaesenc	192(%rbx), %xmm0, %xmm0
	vaesenc	208(%rbx), %xmm0, %xmm0
	vaesenc	224(%rbx), %xmm0, %xmm0
	vaesenc	240(%rbx), %xmm0, %xmm0
	vaesenc	256(%rbx), %xmm0, %xmm0
	vaesenc	272(%rbx), %xmm0, %xmm0
	vaesenc	288(%rbx), %xmm0, %xmm0
	vaesenc	304(%rbx), %xmm0, %xmm0
	vaesenc	320(%rbx), %xmm0, %xmm0
	vaesenc	336(%rbx), %xmm0, %xmm0
	vaesenclast	352(%rbx), %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_14:
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_6:
	.cfi_def_cfa_offset 96
	vpxor	(%rsi), %xmm15, %xmm0
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm0, %xmm21, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm21, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm21, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm21, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm2, %xmm0, %xmm15
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB2_11
.LBB2_8:
	vpbroadcastq	.LCPI2_0(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_9:
	vpxor	(%rsi), %xmm15, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm21, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm21, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm21, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm21, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, 16(%rsi), %xmm4, %xmm1
	addq	$-32, %rax
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm1, %xmm21, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm21, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm21, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm21, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm2, %xmm15
	vpternlogq	$150, %xmm3, %xmm1, %xmm15
	cmpq	$15, %rax
	ja	.LBB2_9
.LBB2_10:
	movq	%rax, %rdx
	vmovdqu	(%rcx), %xmm5
	testq	%rdx, %rdx
	jne	.LBB2_12
	jmp	.LBB2_13
.Lfunc_end2:
	.size	haberdashery_sivmac_tigerlake_verify, .Lfunc_end2-haberdashery_sivmac_tigerlake_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_sivmac_tigerlake_is_supported,@function
haberdashery_sivmac_tigerlake_is_supported:
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
	.size	haberdashery_sivmac_tigerlake_is_supported, .Lfunc_end3-haberdashery_sivmac_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

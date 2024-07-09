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
	.quad	2
	.quad	0
.LCPI0_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_3:
	.quad	4
	.quad	0
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
	vmovupd	(%rsi), %xmm3
	vmovdqu	16(%rsi), %xmm5
	vxorpd	.LCPI0_0(%rip), %xmm3, %xmm6
	vxorpd	.LCPI0_1(%rip), %xmm3, %xmm4
	vxorpd	.LCPI0_2(%rip), %xmm3, %xmm7
	vxorpd	.LCPI0_3(%rip), %xmm3, %xmm2
	vxorpd	.LCPI0_4(%rip), %xmm3, %xmm8
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm9
	vpternlogq	$150, %xmm1, %xmm0, %xmm9
	vpbroadcastd	.LCPI0_8(%rip), %xmm17
	vpshufb	%xmm17, %xmm5, %xmm0
	vpbroadcastq	.LCPI0_6(%rip), %xmm16
	vaesenclast	%xmm16, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm9, %xmm0
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm8, %xmm8
	#NO_APP
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm11
	vpternlogq	$150, %xmm9, %xmm1, %xmm11
	vpshufd	$255, %xmm0, %xmm9
	vpxor	%xmm1, %xmm1, %xmm1
	vaesenclast	%xmm1, %xmm9, %xmm10
	vpxor	%xmm9, %xmm9, %xmm9
	vpternlogq	$150, %xmm5, %xmm11, %xmm10
	vpbroadcastq	.LCPI0_7(%rip), %xmm1
	vbroadcastss	.LCPI0_8(%rip), %xmm14
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm8, %xmm8
	vpslldq	$4, %xmm0, %xmm5
	vpslldq	$8, %xmm0, %xmm11
	vpslldq	$12, %xmm0, %xmm12
	vpternlogq	$150, %xmm5, %xmm11, %xmm12
	vpshufb	%xmm14, %xmm10, %xmm13
	vaesenclast	%xmm1, %xmm13, %xmm13
	vpternlogq	$150, %xmm0, %xmm12, %xmm13
	#NO_APP
	vmovdqa64	%xmm1, %xmm18
	#APP
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm8, %xmm8
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm5
	vpslldq	$12, %xmm10, %xmm11
	vpternlogq	$150, %xmm0, %xmm5, %xmm11
	vpshufd	$255, %xmm13, %xmm12
	vaesenclast	%xmm9, %xmm12, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	#NO_APP
	vpbroadcastq	.LCPI0_9(%rip), %xmm1
	#APP
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm8, %xmm8
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm11
	vpternlogq	$150, %xmm0, %xmm5, %xmm11
	vpshufb	%xmm14, %xmm12, %xmm15
	vaesenclast	%xmm1, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm11, %xmm15
	#NO_APP
	vmovdqa64	%xmm1, %xmm20
	#APP
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm8, %xmm8
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm5
	vpslldq	$12, %xmm12, %xmm11
	vpternlogq	$150, %xmm0, %xmm5, %xmm11
	vpshufd	$255, %xmm15, %xmm13
	vaesenclast	%xmm9, %xmm13, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	#NO_APP
	vpbroadcastq	.LCPI0_10(%rip), %xmm11
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm8, %xmm8
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm5
	vpslldq	$12, %xmm15, %xmm12
	vpternlogq	$150, %xmm0, %xmm5, %xmm12
	vpshufb	%xmm14, %xmm13, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpternlogq	$150, %xmm15, %xmm12, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm8, %xmm8
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm12
	vpternlogq	$150, %xmm0, %xmm5, %xmm12
	vpshufd	$255, %xmm1, %xmm15
	vaesenclast	%xmm9, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm12, %xmm15
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
	vpbroadcastq	.LCPI0_11(%rip), %xmm12
	#APP
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm8, %xmm8
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm5
	vpslldq	$12, %xmm1, %xmm13
	vpternlogq	$150, %xmm0, %xmm5, %xmm13
	vpshufb	%xmm14, %xmm15, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm9
	vpternlogq	$150, %xmm1, %xmm13, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm8, %xmm8
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpslldq	$12, %xmm15, %xmm13
	vpternlogq	$150, %xmm0, %xmm1, %xmm13
	vpshufd	$255, %xmm9, %xmm5
	vaesenclast	%xmm10, %xmm5, %xmm5
	vpternlogq	$150, %xmm15, %xmm13, %xmm5
	#NO_APP
	vpbroadcastq	.LCPI0_12(%rip), %xmm13
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm8, %xmm8
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm15
	vpslldq	$12, %xmm9, %xmm10
	vpternlogq	$150, %xmm1, %xmm15, %xmm10
	vpshufb	%xmm14, %xmm5, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm0
	vpternlogq	$150, %xmm9, %xmm10, %xmm0
	#NO_APP
	vpslldq	$4, %xmm5, %xmm1
	vxorpd	%xmm14, %xmm14, %xmm14
	vpunpcklqdq	%xmm5, %xmm14, %xmm9
	vinsertps	$55, %xmm5, %xmm0, %xmm10
	vpternlogq	$150, %xmm9, %xmm1, %xmm10
	vshufps	$255, %xmm0, %xmm0, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm15
	vpternlogq	$150, %xmm10, %xmm5, %xmm15
	vpslldq	$4, %xmm0, %xmm1
	vpunpcklqdq	%xmm0, %xmm14, %xmm9
	vxorps	%xmm19, %xmm19, %xmm19
	vinsertps	$55, %xmm0, %xmm0, %xmm10
	vpternlogq	$150, %xmm9, %xmm1, %xmm10
	vpshufb	%xmm17, %xmm15, %xmm1
	vpbroadcastq	.LCPI0_13(%rip), %xmm14
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm8, %xmm8
	#NO_APP
	vaesenclast	%xmm14, %xmm1, %xmm5
	vpternlogq	$150, %xmm10, %xmm0, %xmm5
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm6, %xmm6
	vaesenclast	%xmm5, %xmm4, %xmm4
	vaesenclast	%xmm5, %xmm7, %xmm7
	vaesenclast	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm5, %xmm8, %xmm8
	#NO_APP
	vpunpcklqdq	%xmm6, %xmm3, %xmm3
	vpunpcklqdq	%xmm7, %xmm4, %xmm7
	vpunpcklqdq	%xmm8, %xmm2, %xmm6
	vpunpcklqdq	%xmm4, %xmm19, %xmm0
	vinsertps	$55, %xmm4, %xmm0, %xmm1
	vpunpcklqdq	%xmm2, %xmm19, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm5
	vpslldq	$4, %xmm7, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpshufb	%xmm17, %xmm6, %xmm0
	vaesenclast	%xmm16, %xmm0, %xmm2
	vpternlogq	$150, %xmm1, %xmm7, %xmm2
	vpslldq	$4, %xmm6, %xmm0
	vpternlogq	$150, %xmm4, %xmm0, %xmm5
	vpshufd	$255, %xmm2, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm4
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vpshufb	%xmm17, %xmm4, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm5
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpslldq	$12, %xmm2, %xmm8
	vpternlogq	$150, %xmm1, %xmm0, %xmm8
	vpternlogq	$150, %xmm8, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm1, %xmm0, %xmm9
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm8
	vpternlogq	$150, %xmm9, %xmm4, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm0
	vaesenclast	%xmm20, %xmm0, %xmm9
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm10
	vpternlogq	$150, %xmm1, %xmm0, %xmm10
	vpternlogq	$150, %xmm10, %xmm5, %xmm9
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm15
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	vpshufd	$255, %xmm9, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm10
	vpternlogq	$150, %xmm15, %xmm8, %xmm10
	vpshufb	%xmm17, %xmm10, %xmm0
	vaesenclast	%xmm11, %xmm0, %xmm11
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpslldq	$12, %xmm9, %xmm15
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	vpternlogq	$150, %xmm15, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpslldq	$12, %xmm10, %xmm16
	vpternlogq	$150, %xmm1, %xmm0, %xmm16
	vpshufd	$255, %xmm11, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm15
	vpternlogq	$150, %xmm16, %xmm10, %xmm15
	vpshufb	%xmm17, %xmm15, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm16
	vpternlogq	$150, %xmm1, %xmm0, %xmm16
	vpternlogq	$150, %xmm16, %xmm11, %xmm12
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpslldq	$12, %xmm15, %xmm18
	vpternlogq	$150, %xmm1, %xmm0, %xmm18
	vpshufd	$255, %xmm12, %xmm0
	vaesenclast	%xmm19, %xmm0, %xmm16
	vpternlogq	$150, %xmm18, %xmm15, %xmm16
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
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm14
	vpbroadcastq	.LCPI0_14(%rip), %ymm18
	vpclmulqdq	$16, %xmm18, %xmm14, %xmm17
	vpshufd	$78, %xmm14, %xmm14
	vpxorq	%xmm14, %xmm17, %xmm14
	vpclmulqdq	$16, %xmm18, %xmm14, %xmm17
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm19
	vpshufd	$78, %xmm14, %xmm14
	vpternlogq	$150, %xmm17, %xmm19, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm17
	vpclmulqdq	$16, %xmm18, %xmm17, %xmm19
	vpshufd	$78, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm19, %xmm17
	vpclmulqdq	$16, %xmm18, %xmm17, %xmm19
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm20
	vpshufd	$78, %xmm17, %xmm17
	vpternlogq	$150, %xmm19, %xmm20, %xmm17
	vinserti32x4	$1, %xmm17, %ymm17, %ymm19
	vinserti32x4	$1, %xmm17, %ymm14, %ymm20
	vpclmulqdq	$0, %ymm20, %ymm19, %ymm21
	vpclmulqdq	$16, %ymm20, %ymm19, %ymm22
	vpclmulqdq	$1, %ymm20, %ymm19, %ymm23
	vpxorq	%ymm22, %ymm23, %ymm22
	vpslldq	$8, %ymm22, %ymm23
	vpxorq	%ymm23, %ymm21, %ymm21
	vpclmulqdq	$16, %ymm18, %ymm21, %ymm23
	vpshufd	$78, %ymm21, %ymm21
	vpxorq	%ymm21, %ymm23, %ymm21
	vpclmulqdq	$16, %ymm18, %ymm21, %ymm23
	vpclmulqdq	$17, %ymm20, %ymm19, %ymm20
	vpxorq	%ymm23, %ymm20, %ymm20
	vpsrldq	$8, %ymm22, %ymm22
	vpshufd	$78, %ymm21, %ymm21
	vpternlogq	$150, %ymm22, %ymm20, %ymm21
	vpclmulqdq	$0, %ymm21, %ymm19, %ymm20
	vpclmulqdq	$16, %ymm21, %ymm19, %ymm22
	vpclmulqdq	$1, %ymm21, %ymm19, %ymm23
	vpxorq	%ymm22, %ymm23, %ymm22
	vpslldq	$8, %ymm22, %ymm23
	vpxorq	%ymm23, %ymm20, %ymm20
	vpclmulqdq	$16, %ymm18, %ymm20, %ymm23
	vpshufd	$78, %ymm20, %ymm20
	vpxorq	%ymm20, %ymm23, %ymm20
	vpclmulqdq	$16, %ymm18, %ymm20, %ymm23
	vpclmulqdq	$17, %ymm21, %ymm19, %ymm24
	vpxorq	%ymm23, %ymm24, %ymm23
	vpsrldq	$8, %ymm22, %ymm22
	vpshufd	$78, %ymm20, %ymm20
	vpternlogq	$150, %ymm22, %ymm23, %ymm20
	vpclmulqdq	$0, %ymm20, %ymm19, %ymm22
	vpclmulqdq	$1, %ymm20, %ymm19, %ymm23
	vpclmulqdq	$16, %ymm20, %ymm19, %ymm24
	vpxorq	%ymm23, %ymm24, %ymm23
	vpclmulqdq	$17, %ymm20, %ymm19, %ymm19
	vpslldq	$8, %ymm23, %ymm24
	vpxorq	%ymm24, %ymm22, %ymm22
	vpsrldq	$8, %ymm23, %ymm23
	vpclmulqdq	$16, %ymm18, %ymm22, %ymm24
	vpshufd	$78, %ymm22, %ymm22
	vpxorq	%ymm22, %ymm24, %ymm22
	vpclmulqdq	$16, %ymm18, %ymm22, %ymm18
	vpxorq	%ymm19, %ymm18, %ymm18
	vpshufd	$78, %ymm22, %ymm19
	vpternlogq	$150, %ymm23, %ymm18, %ymm19
	vmovdqa	%xmm7, (%rdi)
	vmovdqa	%xmm6, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm4, 48(%rdi)
	vmovdqa	%xmm5, 64(%rdi)
	vmovdqa	%xmm8, 80(%rdi)
	vmovdqa	%xmm9, 96(%rdi)
	vmovdqa	%xmm10, 112(%rdi)
	vmovdqa	%xmm11, 128(%rdi)
	vmovdqa	%xmm15, 144(%rdi)
	vmovdqa	%xmm12, 160(%rdi)
	vmovdqa64	%xmm16, 176(%rdi)
	vmovdqa	%xmm13, 192(%rdi)
	vmovdqa	%xmm1, 208(%rdi)
	vmovdqa	%xmm0, 224(%rdi)
	vmovdqa	%xmm14, 240(%rdi)
	vmovdqa64	%xmm17, 256(%rdi)
	vmovdqu64	%ymm21, 272(%rdi)
	vmovdqu64	%ymm20, 304(%rdi)
	vmovdqu64	%ymm19, 336(%rdi)
	vmovdqa	%xmm3, 368(%rdi)
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
	.p2align	4, 0x90
	.type	haberdashery_sivmac_tigerlake_sign,@function
haberdashery_sivmac_tigerlake_sign:
	.cfi_startproc
	cmpq	$16, %r8
	sete	%r8b
	movabsq	$68719476737, %rax
	cmpq	%rax, %rdx
	setb	%al
	andb	%r8b, %al
	cmpb	$1, %al
	jne	.LBB1_21
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$256, %rdx
	jb	.LBB1_2
	vbroadcasti128	240(%rdi), %ymm1
	vbroadcasti128	256(%rdi), %ymm2
	vbroadcasti128	272(%rdi), %ymm3
	vbroadcasti128	288(%rdi), %ymm4
	vbroadcasti128	304(%rdi), %ymm5
	vbroadcasti128	320(%rdi), %ymm6
	vbroadcasti128	336(%rdi), %ymm7
	vbroadcasti128	352(%rdi), %ymm8
	vpbroadcastq	.LCPI1_0(%rip), %ymm9
	movq	%rdx, %r8
	.p2align	4, 0x90
.LBB1_15:
	vmovdqu	32(%rsi), %ymm10
	vmovdqu	64(%rsi), %ymm11
	vmovdqu	96(%rsi), %ymm12
	vmovdqu	128(%rsi), %ymm13
	vmovdqu	160(%rsi), %ymm14
	vmovdqu	192(%rsi), %ymm15
	vmovdqu64	224(%rsi), %ymm16
	vpxor	(%rsi), %ymm0, %ymm0
	addq	$256, %rsi
	addq	$-256, %r8
	vpclmulqdq	$0, %ymm16, %ymm1, %ymm17
	vpclmulqdq	$1, %ymm16, %ymm1, %ymm18
	vpclmulqdq	$16, %ymm16, %ymm1, %ymm19
	vpxorq	%ymm18, %ymm19, %ymm18
	vpclmulqdq	$17, %ymm16, %ymm1, %ymm16
	vpclmulqdq	$0, %ymm15, %ymm2, %ymm19
	vpclmulqdq	$1, %ymm15, %ymm2, %ymm20
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm21
	vpternlogq	$150, %ymm20, %ymm18, %ymm21
	vpclmulqdq	$17, %ymm15, %ymm2, %ymm15
	vpclmulqdq	$0, %ymm14, %ymm3, %ymm18
	vpternlogq	$150, %ymm17, %ymm19, %ymm18
	vpclmulqdq	$1, %ymm14, %ymm3, %ymm17
	vpclmulqdq	$16, %ymm14, %ymm3, %ymm19
	vpternlogq	$150, %ymm17, %ymm21, %ymm19
	vpclmulqdq	$17, %ymm14, %ymm3, %ymm14
	vpternlogq	$150, %ymm16, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm13, %ymm4, %ymm15
	vpclmulqdq	$1, %ymm13, %ymm4, %ymm16
	vpclmulqdq	$16, %ymm13, %ymm4, %ymm17
	vpternlogq	$150, %ymm16, %ymm19, %ymm17
	vpclmulqdq	$17, %ymm13, %ymm4, %ymm13
	vpclmulqdq	$0, %ymm12, %ymm5, %ymm16
	vpternlogq	$150, %ymm15, %ymm18, %ymm16
	vpclmulqdq	$1, %ymm12, %ymm5, %ymm15
	vpclmulqdq	$16, %ymm12, %ymm5, %ymm18
	vpternlogq	$150, %ymm15, %ymm17, %ymm18
	vpclmulqdq	$17, %ymm12, %ymm5, %ymm12
	vpternlogq	$150, %ymm13, %ymm14, %ymm12
	vpclmulqdq	$0, %ymm11, %ymm6, %ymm13
	vpclmulqdq	$1, %ymm11, %ymm6, %ymm14
	vpclmulqdq	$16, %ymm11, %ymm6, %ymm15
	vpternlogq	$150, %ymm14, %ymm18, %ymm15
	vpclmulqdq	$17, %ymm11, %ymm6, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm7, %ymm14
	vpternlogq	$150, %ymm13, %ymm16, %ymm14
	vpclmulqdq	$1, %ymm10, %ymm7, %ymm13
	vpclmulqdq	$16, %ymm10, %ymm7, %ymm16
	vpternlogq	$150, %ymm13, %ymm15, %ymm16
	vpclmulqdq	$17, %ymm10, %ymm7, %ymm10
	vpternlogq	$150, %ymm11, %ymm12, %ymm10
	vpclmulqdq	$0, %ymm0, %ymm8, %ymm11
	vpclmulqdq	$1, %ymm0, %ymm8, %ymm12
	vpclmulqdq	$16, %ymm0, %ymm8, %ymm13
	vpternlogq	$150, %ymm12, %ymm16, %ymm13
	vpclmulqdq	$17, %ymm0, %ymm8, %ymm0
	vpslldq	$8, %ymm13, %ymm12
	vpternlogq	$150, %ymm11, %ymm14, %ymm12
	vpsrldq	$8, %ymm13, %ymm11
	vpclmulqdq	$16, %ymm9, %ymm12, %ymm13
	vpshufd	$78, %ymm12, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpclmulqdq	$16, %ymm9, %ymm12, %ymm13
	vpternlogq	$150, %ymm0, %ymm10, %ymm13
	vpshufd	$78, %ymm12, %ymm0
	vpternlogq	$150, %ymm11, %ymm13, %ymm0
	cmpq	$255, %r8
	ja	.LBB1_15
	shlq	$3, %rdx
	cmpq	$32, %r8
	jae	.LBB1_9
	jmp	.LBB1_4
.LBB1_2:
	movq	%rdx, %r8
	shlq	$3, %rdx
	cmpq	$32, %r8
	jb	.LBB1_4
.LBB1_9:
	vbroadcasti128	240(%rdi), %ymm1
	leaq	-32(%r8), %r9
	testb	$32, %r9b
	je	.LBB1_10
	cmpq	$32, %r9
	jae	.LBB1_12
.LBB1_5:
	vmovq	%rdx, %xmm1
	leaq	-1(%r9), %rdx
	cmpq	$16, %rdx
	jae	.LBB1_6
.LBB1_17:
	cmpq	$15, %r9
	jbe	.LBB1_18
	vmovdqu	(%rsi), %xmm2
	jmp	.LBB1_19
.LBB1_10:
	vpxor	(%rsi), %ymm0, %ymm0
	addq	$32, %rsi
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm2
	vpclmulqdq	$1, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$16, %ymm0, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpslldq	$8, %ymm3, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpsrldq	$8, %ymm3, %ymm3
	vpbroadcastq	.LCPI1_0(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm5
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm4
	vpxor	%ymm0, %ymm4, %ymm4
	vpshufd	$78, %ymm2, %ymm0
	vpternlogq	$150, %ymm3, %ymm4, %ymm0
	movq	%r9, %r8
	cmpq	$32, %r9
	jb	.LBB1_5
.LBB1_12:
	vpbroadcastq	.LCPI1_0(%rip), %ymm2
	.p2align	4, 0x90
.LBB1_13:
	vpxor	(%rsi), %ymm0, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm0, %ymm1, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm1, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpslldq	$8, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpternlogq	$150, %ymm0, %ymm4, %ymm5
	vpshufd	$78, %ymm3, %ymm0
	vpternlogq	$150, 32(%rsi), %ymm5, %ymm0
	addq	$-64, %r8
	addq	$64, %rsi
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm0, %ymm1, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm1, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpslldq	$8, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vpshufd	$78, %ymm3, %ymm0
	vpternlogq	$150, %ymm4, %ymm5, %ymm0
	cmpq	$31, %r8
	ja	.LBB1_13
.LBB1_4:
	movq	%r8, %r9
	vmovq	%rdx, %xmm1
	leaq	-1(%r9), %rdx
	cmpq	$16, %rdx
	jb	.LBB1_17
.LBB1_6:
	testq	%r9, %r9
	je	.LBB1_8
	movl	$-1, %edx
	bzhil	%r9d, %edx, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rsi), %ymm2 {%k1} {z}

	#NO_APP
	vbroadcasti128	240(%rdi), %ymm3
	vpxor	%ymm0, %ymm2, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm3, %ymm2
	vpclmulqdq	$1, %ymm0, %ymm3, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm3, %ymm0
	vpslldq	$8, %ymm4, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpsrldq	$8, %ymm4, %ymm3
	vpbroadcastq	.LCPI1_0(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm5
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm4
	vpxor	%ymm0, %ymm4, %ymm4
	vpshufd	$78, %ymm2, %ymm0
	vpternlogq	$150, %ymm3, %ymm4, %ymm0
.LBB1_8:
	vmovdqa	368(%rdi), %xmm2
	vextracti128	$1, %ymm0, %xmm3
	vpxor	%xmm1, %xmm0, %xmm0
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
	jmp	.LBB1_20
.LBB1_18:
	movl	%r9d, %edx
	andl	$16, %edx
	addq	%rdx, %rsi
	movl	$-1, %edx
	bzhil	%r9d, %edx, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rsi), %xmm2 {%k1} {z}

	#NO_APP
.LBB1_19:
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vmovdqu	240(%rdi), %ymm2
	vinserti128	$1, 368(%rdi), %ymm2, %ymm2
	vpxor	%ymm1, %ymm0, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm2, %ymm1
	vpclmulqdq	$1, %ymm0, %ymm2, %ymm3
	vpclmulqdq	$16, %ymm0, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$17, %ymm0, %ymm2, %ymm0
	vpslldq	$8, %ymm3, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpsrldq	$8, %ymm3, %ymm2
	vpbroadcastq	.LCPI1_0(%rip), %ymm3
	vpclmulqdq	$16, %ymm3, %ymm1, %ymm4
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpclmulqdq	$16, %ymm3, %ymm1, %ymm3
	vpxor	%ymm0, %ymm3, %ymm0
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm2, %ymm0, %ymm1
	vextracti128	$1, %ymm1, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
.LBB1_20:
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
.LBB1_21:
	movzbl	%al, %eax
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
	.p2align	4, 0x90
	.type	haberdashery_sivmac_tigerlake_verify,@function
haberdashery_sivmac_tigerlake_verify:
	.cfi_startproc
	xorl	%eax, %eax
	movabsq	$68719476736, %r9
	cmpq	%r9, %rdx
	ja	.LBB2_22
	cmpq	$16, %r8
	jb	.LBB2_22
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$256, %rdx
	jb	.LBB2_3
	vbroadcasti128	240(%rdi), %ymm1
	vbroadcasti128	256(%rdi), %ymm2
	vbroadcasti128	272(%rdi), %ymm3
	vbroadcasti128	288(%rdi), %ymm4
	vbroadcasti128	304(%rdi), %ymm5
	vbroadcasti128	320(%rdi), %ymm6
	vbroadcasti128	336(%rdi), %ymm7
	vbroadcasti128	352(%rdi), %ymm8
	vpbroadcastq	.LCPI2_0(%rip), %ymm9
	movq	%rdx, %rax
	.p2align	4, 0x90
.LBB2_16:
	vmovdqu	32(%rsi), %ymm10
	vmovdqu	64(%rsi), %ymm11
	vmovdqu	96(%rsi), %ymm12
	vmovdqu	128(%rsi), %ymm13
	vmovdqu	160(%rsi), %ymm14
	vmovdqu	192(%rsi), %ymm15
	vmovdqu64	224(%rsi), %ymm16
	vpxor	(%rsi), %ymm0, %ymm0
	addq	$256, %rsi
	addq	$-256, %rax
	vpclmulqdq	$0, %ymm16, %ymm1, %ymm17
	vpclmulqdq	$1, %ymm16, %ymm1, %ymm18
	vpclmulqdq	$16, %ymm16, %ymm1, %ymm19
	vpxorq	%ymm18, %ymm19, %ymm18
	vpclmulqdq	$17, %ymm16, %ymm1, %ymm16
	vpclmulqdq	$0, %ymm15, %ymm2, %ymm19
	vpclmulqdq	$1, %ymm15, %ymm2, %ymm20
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm21
	vpternlogq	$150, %ymm20, %ymm18, %ymm21
	vpclmulqdq	$17, %ymm15, %ymm2, %ymm15
	vpclmulqdq	$0, %ymm14, %ymm3, %ymm18
	vpternlogq	$150, %ymm17, %ymm19, %ymm18
	vpclmulqdq	$1, %ymm14, %ymm3, %ymm17
	vpclmulqdq	$16, %ymm14, %ymm3, %ymm19
	vpternlogq	$150, %ymm17, %ymm21, %ymm19
	vpclmulqdq	$17, %ymm14, %ymm3, %ymm14
	vpternlogq	$150, %ymm16, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm13, %ymm4, %ymm15
	vpclmulqdq	$1, %ymm13, %ymm4, %ymm16
	vpclmulqdq	$16, %ymm13, %ymm4, %ymm17
	vpternlogq	$150, %ymm16, %ymm19, %ymm17
	vpclmulqdq	$17, %ymm13, %ymm4, %ymm13
	vpclmulqdq	$0, %ymm12, %ymm5, %ymm16
	vpternlogq	$150, %ymm15, %ymm18, %ymm16
	vpclmulqdq	$1, %ymm12, %ymm5, %ymm15
	vpclmulqdq	$16, %ymm12, %ymm5, %ymm18
	vpternlogq	$150, %ymm15, %ymm17, %ymm18
	vpclmulqdq	$17, %ymm12, %ymm5, %ymm12
	vpternlogq	$150, %ymm13, %ymm14, %ymm12
	vpclmulqdq	$0, %ymm11, %ymm6, %ymm13
	vpclmulqdq	$1, %ymm11, %ymm6, %ymm14
	vpclmulqdq	$16, %ymm11, %ymm6, %ymm15
	vpternlogq	$150, %ymm14, %ymm18, %ymm15
	vpclmulqdq	$17, %ymm11, %ymm6, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm7, %ymm14
	vpternlogq	$150, %ymm13, %ymm16, %ymm14
	vpclmulqdq	$1, %ymm10, %ymm7, %ymm13
	vpclmulqdq	$16, %ymm10, %ymm7, %ymm16
	vpternlogq	$150, %ymm13, %ymm15, %ymm16
	vpclmulqdq	$17, %ymm10, %ymm7, %ymm10
	vpternlogq	$150, %ymm11, %ymm12, %ymm10
	vpclmulqdq	$0, %ymm0, %ymm8, %ymm11
	vpclmulqdq	$1, %ymm0, %ymm8, %ymm12
	vpclmulqdq	$16, %ymm0, %ymm8, %ymm13
	vpternlogq	$150, %ymm12, %ymm16, %ymm13
	vpclmulqdq	$17, %ymm0, %ymm8, %ymm0
	vpslldq	$8, %ymm13, %ymm12
	vpternlogq	$150, %ymm11, %ymm14, %ymm12
	vpsrldq	$8, %ymm13, %ymm11
	vpclmulqdq	$16, %ymm9, %ymm12, %ymm13
	vpshufd	$78, %ymm12, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpclmulqdq	$16, %ymm9, %ymm12, %ymm13
	vpternlogq	$150, %ymm0, %ymm10, %ymm13
	vpshufd	$78, %ymm12, %ymm0
	vpternlogq	$150, %ymm11, %ymm13, %ymm0
	cmpq	$255, %rax
	ja	.LBB2_16
	shlq	$3, %rdx
	cmpq	$32, %rax
	jae	.LBB2_10
	jmp	.LBB2_5
.LBB2_3:
	movq	%rdx, %rax
	shlq	$3, %rdx
	cmpq	$32, %rax
	jb	.LBB2_5
.LBB2_10:
	vbroadcasti128	240(%rdi), %ymm1
	leaq	-32(%rax), %r8
	testb	$32, %r8b
	jne	.LBB2_12
	vpxor	(%rsi), %ymm0, %ymm0
	addq	$32, %rsi
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm2
	vpclmulqdq	$1, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$16, %ymm0, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpslldq	$8, %ymm3, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpsrldq	$8, %ymm3, %ymm3
	vpbroadcastq	.LCPI2_0(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm5
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm4
	vpxor	%ymm0, %ymm4, %ymm4
	vpshufd	$78, %ymm2, %ymm0
	vpternlogq	$150, %ymm3, %ymm4, %ymm0
	movq	%r8, %rax
.LBB2_12:
	cmpq	$32, %r8
	jb	.LBB2_6
	vpbroadcastq	.LCPI2_0(%rip), %ymm2
	.p2align	4, 0x90
.LBB2_14:
	vpxor	(%rsi), %ymm0, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm0, %ymm1, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm1, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpslldq	$8, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpternlogq	$150, %ymm0, %ymm4, %ymm5
	vpshufd	$78, %ymm3, %ymm0
	vpternlogq	$150, 32(%rsi), %ymm5, %ymm0
	addq	$-64, %rax
	addq	$64, %rsi
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm0, %ymm1, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm1, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpslldq	$8, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm2, %ymm3, %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vpshufd	$78, %ymm3, %ymm0
	vpternlogq	$150, %ymm4, %ymm5, %ymm0
	cmpq	$31, %rax
	ja	.LBB2_14
.LBB2_5:
	movq	%rax, %r8
.LBB2_6:
	vmovdqu	(%rcx), %xmm1
	vmovq	%rdx, %xmm2
	leaq	-1(%r8), %rax
	cmpq	$16, %rax
	jae	.LBB2_7
	cmpq	$15, %r8
	jbe	.LBB2_19
	vmovdqu	(%rsi), %xmm3
	jmp	.LBB2_20
.LBB2_7:
	testq	%r8, %r8
	je	.LBB2_9
	movl	$-1, %eax
	bzhil	%r8d, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rsi), %ymm3 {%k1} {z}

	#NO_APP
	vbroadcasti128	240(%rdi), %ymm4
	vpxor	%ymm0, %ymm3, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm4, %ymm3
	vpclmulqdq	$1, %ymm0, %ymm4, %ymm5
	vpclmulqdq	$16, %ymm0, %ymm4, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$17, %ymm0, %ymm4, %ymm0
	vpslldq	$8, %ymm5, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpsrldq	$8, %ymm5, %ymm4
	vpbroadcastq	.LCPI2_0(%rip), %ymm5
	vpclmulqdq	$16, %ymm5, %ymm3, %ymm6
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpclmulqdq	$16, %ymm5, %ymm3, %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vpshufd	$78, %ymm3, %ymm0
	vpternlogq	$150, %ymm4, %ymm5, %ymm0
.LBB2_9:
	vmovdqa	368(%rdi), %xmm3
	vextracti128	$1, %ymm0, %xmm4
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpsrldq	$8, %xmm5, %xmm3
	vpbroadcastq	.LCPI2_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm5
	vpternlogq	$150, %xmm4, %xmm0, %xmm5
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm5, %xmm0
	jmp	.LBB2_21
.LBB2_19:
	movl	%r8d, %eax
	andl	$16, %eax
	addq	%rax, %rsi
	movl	$-1, %eax
	bzhil	%r8d, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rsi), %xmm3 {%k1} {z}

	#NO_APP
.LBB2_20:
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vmovdqu	240(%rdi), %ymm3
	vinserti128	$1, 368(%rdi), %ymm3, %ymm3
	vpxor	%ymm2, %ymm0, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm3, %ymm2
	vpclmulqdq	$1, %ymm0, %ymm3, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm3, %ymm0
	vpslldq	$8, %ymm4, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpsrldq	$8, %ymm4, %ymm3
	vpbroadcastq	.LCPI2_0(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm5
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vpshufd	$78, %ymm2, %ymm2
	vpternlogq	$150, %ymm3, %ymm0, %ymm2
	vextracti128	$1, %ymm2, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
.LBB2_21:
	vmovdqa	(%rdi), %xmm2
	vpternlogq	$120, .LCPI2_1(%rip), %xmm0, %xmm2
	vaesenc	16(%rdi), %xmm2, %xmm0
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
	vpxor	%xmm1, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_22:
	vzeroupper
	retq
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

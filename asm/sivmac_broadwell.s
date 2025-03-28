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
.LCPI0_6:
	.quad	4294967297
	.quad	4294967297
.LCPI0_7:
	.quad	8589934594
	.quad	8589934594
.LCPI0_9:
	.quad	17179869188
	.quad	17179869188
.LCPI0_10:
	.quad	34359738376
	.quad	34359738376
.LCPI0_11:
	.quad	68719476752
	.quad	68719476752
.LCPI0_12:
	.quad	137438953504
	.quad	137438953504
.LCPI0_13:
	.quad	274877907008
	.quad	274877907008
.LCPI0_14:
	.zero	8
	.quad	-4467570830351532032
.LCPI0_15:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.long	0x0c0f0e0d
.LCPI0_16:
	.long	2
.LCPI0_17:
	.long	4
.LCPI0_18:
	.long	8
.LCPI0_19:
	.long	16
.LCPI0_20:
	.long	32
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_21:
	.quad	-4467570830351532032
	.section	.text.haberdashery_sivmac_broadwell_init,"ax",@progbits
	.globl	haberdashery_sivmac_broadwell_init
	.p2align	4, 0x90
	.type	haberdashery_sivmac_broadwell_init,@function
haberdashery_sivmac_broadwell_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm4
	vpxor	.LCPI0_0(%rip), %xmm4, %xmm5
	vpxor	.LCPI0_1(%rip), %xmm4, %xmm3
	vpxor	.LCPI0_2(%rip), %xmm4, %xmm6
	vpxor	.LCPI0_3(%rip), %xmm4, %xmm2
	vpxor	.LCPI0_4(%rip), %xmm4, %xmm7
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpslldq	$12, %xmm4, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpbroadcastd	.LCPI0_8(%rip), %xmm9
	vpshufb	%xmm9, %xmm1, %xmm8
	vmovdqa	%xmm9, %xmm13
	vaesenclast	.LCPI0_6(%rip), %xmm8, %xmm8
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm7, %xmm7
	#NO_APP
	vpslldq	$4, %xmm1, %xmm8
	vpslldq	$8, %xmm1, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm1, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$255, %xmm0, %xmm9
	vpxor	%xmm14, %xmm14, %xmm14
	vaesenclast	%xmm14, %xmm9, %xmm9
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vbroadcastss	.LCPI0_16(%rip), %xmm9
	vbroadcastss	.LCPI0_8(%rip), %xmm15
	#APP
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm7, %xmm7
	vpslldq	$4, %xmm0, %xmm8
	vpslldq	$8, %xmm0, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpslldq	$12, %xmm0, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm8
	vpshufb	%xmm15, %xmm1, %xmm11
	vaesenclast	%xmm9, %xmm11, %xmm11
	vpxor	%xmm8, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm7, %xmm7
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpslldq	$12, %xmm1, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm11, %xmm12
	vaesenclast	%xmm14, %xmm12, %xmm12
	vpxor	%xmm0, %xmm12, %xmm12
	#NO_APP
	vbroadcastss	.LCPI0_17(%rip), %xmm8
	#APP
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm7, %xmm7
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpshufb	%xmm15, %xmm12, %xmm10
	vaesenclast	%xmm8, %xmm10, %xmm10
	vpxor	%xmm0, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm7, %xmm7
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm12, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm0
	vpshufd	$255, %xmm10, %xmm8
	vaesenclast	%xmm14, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm8
	#NO_APP
	vpbroadcastd	.LCPI0_18(%rip), %xmm11
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm7, %xmm7
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpshufb	%xmm15, %xmm8, %xmm9
	vaesenclast	%xmm11, %xmm9, %xmm9
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm7, %xmm7
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$255, %xmm9, %xmm10
	vaesenclast	%xmm14, %xmm10, %xmm10
	vpxor	%xmm0, %xmm10, %xmm10
	#NO_APP
	vpbroadcastd	.LCPI0_19(%rip), %xmm12
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm7, %xmm7
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpshufb	%xmm15, %xmm10, %xmm8
	vaesenclast	%xmm12, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm7, %xmm7
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpslldq	$12, %xmm10, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpshufd	$255, %xmm8, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	#NO_APP
	vpbroadcastd	.LCPI0_20(%rip), %xmm14
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm7, %xmm7
	vpslldq	$4, %xmm8, %xmm9
	vpslldq	$8, %xmm8, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpslldq	$12, %xmm8, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm8, %xmm9, %xmm9
	vpshufb	%xmm15, %xmm1, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vpslldq	$4, %xmm1, %xmm8
	vpxor	%xmm10, %xmm10, %xmm10
	vpunpcklqdq	%xmm1, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vinsertps	$55, %xmm1, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vshufps	$255, %xmm0, %xmm0, %xmm9
	vaesenclast	%xmm10, %xmm9, %xmm9
	vpxor	%xmm1, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$4, %xmm0, %xmm9
	vpunpcklqdq	%xmm0, %xmm10, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vinsertps	$55, %xmm0, %xmm0, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpshufb	%xmm13, %xmm8, %xmm10
	vaesenclast	.LCPI0_13(%rip), %xmm10, %xmm10
	vpxor	%xmm0, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm15
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenclast	%xmm15, %xmm4, %xmm4
	vaesenclast	%xmm15, %xmm5, %xmm5
	vaesenclast	%xmm15, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm6, %xmm6
	vaesenclast	%xmm15, %xmm2, %xmm2
	vaesenclast	%xmm15, %xmm7, %xmm7
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm4
	vpunpcklqdq	%xmm6, %xmm3, %xmm5
	vpunpcklqdq	%xmm7, %xmm2, %xmm6
	vpslldq	$4, %xmm5, %xmm0
	vpxor	%xmm7, %xmm7, %xmm7
	vpunpcklqdq	%xmm3, %xmm7, %xmm1
	vinsertps	$55, %xmm3, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm6, %xmm1
	vaesenclast	.LCPI0_6(%rip), %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpslldq	$4, %xmm6, %xmm0
	vpunpcklqdq	%xmm2, %xmm7, %xmm1
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm3, %xmm1
	vaesenclast	%xmm7, %xmm1, %xmm1
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm2, %xmm1
	vaesenclast	.LCPI0_7(%rip), %xmm1, %xmm1
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm7
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm7, %xmm1
	vaesenclast	%xmm8, %xmm1, %xmm1
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm8
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm7, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm8, %xmm1
	vaesenclast	.LCPI0_9(%rip), %xmm1, %xmm1
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm9
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm9, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm14, %xmm14, %xmm14
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm0, %xmm1, %xmm10
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm10, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpxor	%xmm0, %xmm9, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm11, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm1
	vpxor	%xmm0, %xmm10, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm15, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm1, %xmm12
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm12, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm1
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm12, %xmm1
	vpslldq	$8, %xmm12, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpslldq	$12, %xmm12, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpshufb	%xmm13, %xmm0, %xmm14
	vaesenclast	.LCPI0_12(%rip), %xmm14, %xmm14
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
	vpslldq	$4, %xmm0, %xmm14
	vpslldq	$8, %xmm0, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpslldq	$12, %xmm0, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpshufd	$255, %xmm1, %xmm14
	vaesenclast	.LCPI0_15(%rip), %xmm14, %xmm14
	vpxor	%xmm0, %xmm13, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vmovdqa	%xmm5, 128(%rdi)
	vmovdqa	%xmm6, 144(%rdi)
	vpslldq	$4, %xmm1, %xmm5
	vmovdqa	%xmm3, 160(%rdi)
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vmovdqa	%xmm2, 176(%rdi)
	vpslldq	$12, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm7, 192(%rdi)
	vpshufb	.LCPI0_5(%rip), %xmm13, %xmm3
	vaesenclast	.LCPI0_13(%rip), %xmm3, %xmm3
	vmovdqa	%xmm8, 208(%rdi)
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	%xmm9, 224(%rdi)
	vmovdqa	%xmm10, 240(%rdi)
	vmovdqa	%xmm11, 256(%rdi)
	vmovdqa	%xmm15, 272(%rdi)
	vmovdqa	%xmm12, 288(%rdi)
	vmovdqa	%xmm0, 304(%rdi)
	vmovdqa	%xmm1, 320(%rdi)
	vmovdqa	%xmm13, 336(%rdi)
	vpxor	%xmm2, %xmm3, %xmm0
	vmovdqa	%xmm0, 352(%rdi)
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm1
	vpbroadcastq	.LCPI0_21(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm8
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm8
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm6, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm6, %xmm10
	vpsrldq	$8, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm9
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm0
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vmovdqa	%xmm4, (%rdi)
	vmovdqa	%xmm1, 16(%rdi)
	vmovdqa	%xmm5, 32(%rdi)
	vmovdqa	%xmm2, 48(%rdi)
	vmovdqa	%xmm0, 64(%rdi)
	vmovdqa	%xmm6, 80(%rdi)
	vmovdqa	%xmm7, 96(%rdi)
	vmovdqa	%xmm3, 112(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_sivmac_broadwell_init, .Lfunc_end0-haberdashery_sivmac_broadwell_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.zero	8
	.quad	-4467570830351532032
.LCPI1_1:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_sivmac_broadwell_sign,"ax",@progbits
	.globl	haberdashery_sivmac_broadwell_sign
	.p2align	4, 0x90
	.type	haberdashery_sivmac_broadwell_sign,@function
haberdashery_sivmac_broadwell_sign:
	.cfi_startproc
	cmpq	$16, %r8
	setne	%r8b
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	xorl	%eax, %eax
	orb	%r8b, %r9b
	jne	.LBB1_32
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
	vpxor	%xmm2, %xmm2, %xmm2
	cmpq	$128, %rdx
	jb	.LBB1_2
	vmovdqu	16(%rsi), %xmm7
	vmovdqu	32(%rsi), %xmm8
	vmovdqu	48(%rsi), %xmm9
	vmovdqu	64(%rsi), %xmm6
	vmovdqu	80(%rsi), %xmm10
	vmovdqu	96(%rsi), %xmm4
	vmovdqu	112(%rsi), %xmm5
	vmovdqa	(%rdi), %xmm0
	vmovdqa	16(%rdi), %xmm2
	vmovdqa	32(%rdi), %xmm3
	vmovdqa	48(%rdi), %xmm15
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm13
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm13
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm4
	vpxor	%xmm5, %xmm4, %xmm13
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm14
	vpxor	%xmm5, %xmm14, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	vmovdqa	64(%rdi), %xmm4
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm14
	vpxor	%xmm5, %xmm14, %xmm14
	vmovdqa	80(%rdi), %xmm1
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm10
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm6
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm6, %xmm13, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm6
	vpxor	%xmm6, %xmm13, %xmm13
	vmovdqa	96(%rdi), %xmm6
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm13
	vpxor	%xmm13, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm8
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vmovdqu	(%rsi), %xmm13
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vmovdqa	112(%rdi), %xmm7
	vpxor	%xmm9, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm13, %xmm7, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm7, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm13, %xmm7, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpxor	%xmm8, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm7, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	subq	$-128, %rsi
	leaq	-128(%rdx), %rbx
	cmpq	$128, %rbx
	jb	.LBB1_6
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqa	%xmm4, %xmm1
	vmovdqa	%xmm15, %xmm4
	vmovdqa	%xmm0, (%rsp)
	.p2align	4, 0x90
.LBB1_5:
	vmovdqu	64(%rsi), %xmm12
	vmovdqu	80(%rsi), %xmm13
	vmovdqu	96(%rsi), %xmm14
	vmovdqu	112(%rsi), %xmm15
	vpslldq	$8, %xmm11, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpsrldq	$8, %xmm11, %xmm9
	vpbroadcastq	.LCPI1_2(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm11
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm11
	vpshufd	$78, %xmm8, %xmm8
	vpxor	(%rsi), %xmm10, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm11, %xmm8, %xmm10
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm8
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm11
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm11
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm15
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm15
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm9
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm13, %xmm3, %xmm11
	vpclmulqdq	$1, %xmm13, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vmovdqu	32(%rsi), %xmm15
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm11
	vpxor	%xmm11, %xmm14, %xmm11
	vmovdqu	48(%rsi), %xmm14
	vpclmulqdq	$17, %xmm13, %xmm3, %xmm13
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqa	32(%rsp), %xmm5
	vpclmulqdq	$0, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm14
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm5, %xmm11
	vpxor	%xmm11, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm15, %xmm5, %xmm14
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpxor	%xmm0, %xmm12, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpxor	%xmm11, %xmm9, %xmm12
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm9
	vpxor	%xmm9, %xmm8, %xmm9
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm11
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm0
	vpxor	%xmm0, %xmm12, %xmm10
	vmovdqa	(%rsp), %xmm0
	subq	$-128, %rsi
	addq	$-128, %rbx
	cmpq	$127, %rbx
	ja	.LBB1_5
.LBB1_6:
	vpslldq	$8, %xmm11, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpsrldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm2
	shlq	$3, %rdx
	movq	%rbx, %rax
	andq	$15, %rax
	je	.LBB1_28
.LBB1_8:
	vmovdqa	%xmm2, (%rsp)
	movq	%rdx, %r15
	movq	%rdi, %r13
	movq	%rcx, %r12
	movl	%ebx, %r14d
	andl	$112, %r14d
	movq	%rsi, %rbp
	addq	%r14, %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rax, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm0
	testq	%r14, %r14
	je	.LBB1_9
	leaq	-16(%r14), %rsi
	movq	%rsi, %rax
	shrq	$4, %rax
	leaq	2(%rax), %rdx
	cmpq	$96, %rsi
	cmovaeq	%rax, %rdx
	movq	%rdx, %rax
	shlq	$4, %rax
	movq	%r13, %rdi
	vmovdqa	(%r13,%rax), %xmm1
	vmovdqa	(%rsp), %xmm2
	vpxor	(%rbp), %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm1
	testq	%rsi, %rsi
	movq	%r12, %rcx
	je	.LBB1_11
	movq	%rbp, %r8
	testb	$16, %bl
	movq	%r15, %rax
	jne	.LBB1_14
	leaq	-32(%r14), %rsi
	vmovdqu	16(%r8), %xmm4
	addq	$16, %r8
	decq	%rdx
	movq	%rdx, %r9
	shlq	$4, %r9
	vmovdqa	(%rdi,%r9), %xmm5
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm1, %xmm4, %xmm1
.LBB1_14:
	cmpl	$32, %r14d
	je	.LBB1_17
	movq	%rdx, %r9
	shlq	$4, %r9
	addq	%rdi, %r9
	addq	$-16, %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB1_16:
	vmovdqa	-16(%r9), %xmm4
	vmovdqa	(%r9), %xmm5
	vmovdqu	16(%r8,%r10), %xmm6
	vmovdqu	32(%r8,%r10), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	addq	$-2, %rdx
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$-32, %r9
	addq	$32, %r10
	cmpq	%r10, %rsi
	jne	.LBB1_16
.LBB1_17:
	testq	%rdx, %rdx
	je	.LBB1_19
.LBB1_18:
	vmovdqa	(%rdi), %xmm4
	vmovdqa	16(%rdi), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vmovq	%rax, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	jmp	.LBB1_31
.LBB1_2:
	movq	%rdx, %rbx
	shlq	$3, %rdx
	movq	%rbx, %rax
	andq	$15, %rax
	jne	.LBB1_8
.LBB1_28:
	cmpq	$15, %rbx
	jbe	.LBB1_29
	vpxor	(%rsi), %xmm2, %xmm1
	vmovdqa	(%rdi,%rbx), %xmm3
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	leaq	-16(%rbx), %rax
	cmpq	$16, %rax
	jb	.LBB1_27
	movq	%rbx, %r8
	shrq	$4, %r8
	testb	$16, %bl
	jne	.LBB1_24
	vmovdqu	16(%rsi), %xmm3
	addq	$16, %rsi
	decq	%r8
	movq	%r8, %rax
	shlq	$4, %rax
	vmovdqa	(%rdi,%rax), %xmm4
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpxor	%xmm0, %xmm5, %xmm0
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm1, %xmm3, %xmm1
	leaq	-32(%rbx), %rax
.LBB1_24:
	cmpq	$32, %rbx
	je	.LBB1_27
	shlq	$4, %r8
	addq	%rdi, %r8
	addq	$-16, %r8
	addq	$32, %rsi
	.p2align	4, 0x90
.LBB1_26:
	vmovdqa	-16(%r8), %xmm3
	vmovdqa	(%r8), %xmm4
	vmovdqu	-16(%rsi), %xmm5
	vmovdqu	(%rsi), %xmm6
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm7
	vpxor	%xmm2, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm3
	vpxor	%xmm1, %xmm3, %xmm1
	addq	$-32, %rax
	addq	$-32, %r8
	addq	$32, %rsi
	cmpq	$15, %rax
	ja	.LBB1_26
.LBB1_27:
	vmovdqa	(%rdi), %xmm3
	vmovq	%rdx, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	jmp	.LBB1_30
.LBB1_9:
	movq	%r12, %rcx
	movq	%r13, %rdi
	movq	%r15, %rax
	vmovdqa	(%rsp), %xmm3
	jmp	.LBB1_20
.LBB1_29:
	vmovdqa	(%rdi), %xmm0
	vmovq	%rdx, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
.LBB1_30:
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB1_31
.LBB1_11:
	movq	%r15, %rax
	testq	%rdx, %rdx
	jne	.LBB1_18
.LBB1_19:
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_2(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm4, %xmm3
.LBB1_20:
	vmovdqa	(%rdi), %xmm1
	vmovdqa	16(%rdi), %xmm2
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vmovq	%rax, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_2(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
.LBB1_31:
	vpand	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	128(%rdi), %xmm0, %xmm0
	vaesenc	144(%rdi), %xmm0, %xmm0
	vaesenc	160(%rdi), %xmm0, %xmm0
	vaesenc	176(%rdi), %xmm0, %xmm0
	vaesenc	192(%rdi), %xmm0, %xmm0
	vaesenc	208(%rdi), %xmm0, %xmm0
	vaesenc	224(%rdi), %xmm0, %xmm0
	vaesenc	240(%rdi), %xmm0, %xmm0
	vaesenc	256(%rdi), %xmm0, %xmm0
	vaesenc	272(%rdi), %xmm0, %xmm0
	vaesenc	288(%rdi), %xmm0, %xmm0
	vaesenc	304(%rdi), %xmm0, %xmm0
	vaesenc	320(%rdi), %xmm0, %xmm0
	vaesenc	336(%rdi), %xmm0, %xmm0
	vaesenclast	352(%rdi), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movl	$1, %eax
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB1_32:
	retq
.Lfunc_end1:
	.size	haberdashery_sivmac_broadwell_sign, .Lfunc_end1-haberdashery_sivmac_broadwell_sign
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.zero	8
	.quad	-4467570830351532032
.LCPI2_1:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_sivmac_broadwell_verify,"ax",@progbits
	.globl	haberdashery_sivmac_broadwell_verify
	.p2align	4, 0x90
	.type	haberdashery_sivmac_broadwell_verify,@function
haberdashery_sivmac_broadwell_verify:
	.cfi_startproc
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	cmpq	$16, %r8
	setb	%r8b
	xorl	%eax, %eax
	orb	%r9b, %r8b
	jne	.LBB2_33
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	vpxor	%xmm2, %xmm2, %xmm2
	cmpq	$128, %rdx
	jb	.LBB2_6
	vmovdqu	16(%rsi), %xmm7
	vmovdqu	32(%rsi), %xmm8
	vmovdqu	48(%rsi), %xmm9
	vmovdqu	64(%rsi), %xmm6
	vmovdqu	80(%rsi), %xmm10
	vmovdqu	96(%rsi), %xmm4
	vmovdqu	112(%rsi), %xmm5
	vmovdqa	(%rdi), %xmm0
	vmovdqa	16(%rdi), %xmm2
	vmovdqa	32(%rdi), %xmm3
	vmovdqa	48(%rdi), %xmm15
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm13
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm13
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm4
	vpxor	%xmm5, %xmm4, %xmm13
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm14
	vpxor	%xmm5, %xmm14, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	vmovdqa	64(%rdi), %xmm4
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm14
	vpxor	%xmm5, %xmm14, %xmm14
	vmovdqa	80(%rdi), %xmm1
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm10
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm6
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm6, %xmm13, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm6
	vpxor	%xmm6, %xmm13, %xmm13
	vmovdqa	96(%rdi), %xmm6
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm13
	vpxor	%xmm13, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm8
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vmovdqu	(%rsi), %xmm13
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vmovdqa	112(%rdi), %xmm7
	vpxor	%xmm9, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm13, %xmm7, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm7, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm13, %xmm7, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpxor	%xmm8, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm7, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	subq	$-128, %rsi
	leaq	-128(%rdx), %rbx
	cmpq	$128, %rbx
	jb	.LBB2_5
	vmovdqa	%xmm1, (%rsp)
	vmovdqa	%xmm4, %xmm1
	vmovdqa	%xmm15, %xmm4
	vmovdqa	%xmm0, 16(%rsp)
	.p2align	4, 0x90
.LBB2_4:
	vmovdqu	64(%rsi), %xmm12
	vmovdqu	80(%rsi), %xmm13
	vmovdqu	96(%rsi), %xmm14
	vmovdqu	112(%rsi), %xmm15
	vpslldq	$8, %xmm11, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpsrldq	$8, %xmm11, %xmm9
	vpbroadcastq	.LCPI2_2(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm11
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm11
	vpshufd	$78, %xmm8, %xmm8
	vpxor	(%rsi), %xmm10, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm11, %xmm8, %xmm10
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm8
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm11
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm11
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm15
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm15
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm9
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm13, %xmm3, %xmm11
	vpclmulqdq	$1, %xmm13, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vmovdqu	32(%rsi), %xmm15
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm11
	vpxor	%xmm11, %xmm14, %xmm11
	vmovdqu	48(%rsi), %xmm14
	vpclmulqdq	$17, %xmm13, %xmm3, %xmm13
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqa	(%rsp), %xmm5
	vpclmulqdq	$0, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm14
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm5, %xmm11
	vpxor	%xmm11, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm15, %xmm5, %xmm14
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpxor	%xmm0, %xmm12, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpxor	%xmm11, %xmm9, %xmm12
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm9
	vpxor	%xmm9, %xmm8, %xmm9
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm11
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm0
	vpxor	%xmm0, %xmm12, %xmm10
	vmovdqa	16(%rsp), %xmm0
	subq	$-128, %rsi
	addq	$-128, %rbx
	cmpq	$127, %rbx
	ja	.LBB2_4
.LBB2_5:
	vpslldq	$8, %xmm11, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpsrldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI2_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm2
	jmp	.LBB2_7
.LBB2_6:
	movq	%rdx, %rbx
.LBB2_7:
	vmovdqu	(%rcx), %xmm8
	shlq	$3, %rdx
	movq	%rbx, %rax
	andq	$15, %rax
	je	.LBB2_17
	vmovdqa	%xmm2, (%rsp)
	vmovdqa	%xmm8, 16(%rsp)
	movq	%rdx, %r15
	movq	%rdi, %r12
	movl	%ebx, %r14d
	andl	$112, %r14d
	movq	%rsi, %r13
	addq	%r14, %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rax, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r14, %r14
	je	.LBB2_25
	leaq	-16(%r14), %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	leaq	2(%rax), %rcx
	cmpq	$96, %rdx
	cmovaeq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$4, %rax
	movq	%r12, %rdi
	vmovdqa	(%r12,%rax), %xmm1
	vmovdqa	(%rsp), %xmm2
	vpxor	(%r13), %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm1
	testq	%rdx, %rdx
	je	.LBB2_28
	movq	%r13, %rsi
	testb	$16, %bl
	movq	%r15, %rax
	jne	.LBB2_12
	leaq	-32(%r14), %rdx
	vmovdqu	16(%rsi), %xmm4
	addq	$16, %rsi
	decq	%rcx
	movq	%rcx, %r8
	shlq	$4, %r8
	vmovdqa	(%rdi,%r8), %xmm5
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm1, %xmm4, %xmm1
.LBB2_12:
	cmpl	$32, %r14d
	je	.LBB2_15
	movq	%rcx, %r8
	shlq	$4, %r8
	addq	%rdi, %r8
	addq	$-16, %r8
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_14:
	vmovdqa	-16(%r8), %xmm4
	vmovdqa	(%r8), %xmm5
	vmovdqu	16(%rsi,%r9), %xmm6
	vmovdqu	32(%rsi,%r9), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	addq	$-2, %rcx
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$-32, %r8
	addq	$32, %r9
	cmpq	%r9, %rdx
	jne	.LBB2_14
.LBB2_15:
	testq	%rcx, %rcx
	je	.LBB2_29
.LBB2_16:
	vmovdqa	(%rdi), %xmm4
	vmovdqa	16(%rdi), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vmovq	%rax, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	jmp	.LBB2_31
.LBB2_17:
	cmpq	$15, %rbx
	jbe	.LBB2_26
	vpxor	(%rsi), %xmm2, %xmm1
	vmovdqa	(%rdi,%rbx), %xmm3
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	leaq	-16(%rbx), %rax
	cmpq	$16, %rax
	jb	.LBB2_24
	movq	%rbx, %rcx
	shrq	$4, %rcx
	testb	$16, %bl
	jne	.LBB2_21
	vmovdqu	16(%rsi), %xmm3
	addq	$16, %rsi
	decq	%rcx
	movq	%rcx, %rax
	shlq	$4, %rax
	vmovdqa	(%rdi,%rax), %xmm4
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpxor	%xmm0, %xmm5, %xmm0
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm1, %xmm3, %xmm1
	leaq	-32(%rbx), %rax
.LBB2_21:
	cmpq	$32, %rbx
	je	.LBB2_24
	shlq	$4, %rcx
	addq	%rdi, %rcx
	addq	$-16, %rcx
	addq	$32, %rsi
	.p2align	4, 0x90
.LBB2_23:
	vmovdqa	-16(%rcx), %xmm3
	vmovdqa	(%rcx), %xmm4
	vmovdqu	-16(%rsi), %xmm5
	vmovdqu	(%rsi), %xmm6
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm7
	vpxor	%xmm2, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm3
	vpxor	%xmm1, %xmm3, %xmm1
	addq	$-32, %rax
	addq	$-32, %rcx
	addq	$32, %rsi
	cmpq	$15, %rax
	ja	.LBB2_23
.LBB2_24:
	vmovdqa	(%rdi), %xmm3
	vmovq	%rdx, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	jmp	.LBB2_27
.LBB2_25:
	movq	%r12, %rdi
	movq	%r15, %rax
	vmovdqa	(%rsp), %xmm3
	jmp	.LBB2_30
.LBB2_26:
	vmovdqa	(%rdi), %xmm0
	vmovq	%rdx, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
.LBB2_27:
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB2_32
.LBB2_28:
	movq	%r15, %rax
	testq	%rcx, %rcx
	jne	.LBB2_16
.LBB2_29:
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_2(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm4, %xmm3
.LBB2_30:
	vmovdqa	(%rdi), %xmm1
	vmovdqa	16(%rdi), %xmm2
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vmovq	%rax, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_2(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
.LBB2_31:
	vmovdqa	16(%rsp), %xmm8
.LBB2_32:
	vpand	.LCPI2_1(%rip), %xmm0, %xmm0
	vpxor	128(%rdi), %xmm0, %xmm0
	vaesenc	144(%rdi), %xmm0, %xmm0
	vaesenc	160(%rdi), %xmm0, %xmm0
	vaesenc	176(%rdi), %xmm0, %xmm0
	vaesenc	192(%rdi), %xmm0, %xmm0
	vaesenc	208(%rdi), %xmm0, %xmm0
	vaesenc	224(%rdi), %xmm0, %xmm0
	vaesenc	240(%rdi), %xmm0, %xmm0
	vaesenc	256(%rdi), %xmm0, %xmm0
	vaesenc	272(%rdi), %xmm0, %xmm0
	vaesenc	288(%rdi), %xmm0, %xmm0
	vaesenc	304(%rdi), %xmm0, %xmm0
	vaesenc	320(%rdi), %xmm0, %xmm0
	vaesenc	336(%rdi), %xmm0, %xmm0
	vaesenclast	352(%rdi), %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
	addq	$48, %rsp
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
.LBB2_33:
	retq
.Lfunc_end2:
	.size	haberdashery_sivmac_broadwell_verify, .Lfunc_end2-haberdashery_sivmac_broadwell_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_broadwell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_sivmac_broadwell_is_supported,@function
haberdashery_sivmac_broadwell_is_supported:
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
	andl	$786729, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_sivmac_broadwell_is_supported, .Lfunc_end3-haberdashery_sivmac_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.85.0-nightly (4363f9b6f 2025-01-02)"
	.section	".note.GNU-stack","",@progbits

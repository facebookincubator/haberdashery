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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.long	0x0c0f0e0d
.LCPI0_15:
	.long	2
.LCPI0_16:
	.long	4
.LCPI0_17:
	.long	8
.LCPI0_18:
	.long	16
.LCPI0_19:
	.long	32
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_20:
	.quad	-4467570830351532032
	.section	.text.haberdashery_sivmac_broadwell_init,"ax",@progbits
	.globl	haberdashery_sivmac_broadwell_init
	.p2align	4, 0x90
	.type	haberdashery_sivmac_broadwell_init,@function
haberdashery_sivmac_broadwell_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	vmovdqu	(%rsi), %xmm4
	vpxor	.LCPI0_0(%rip), %xmm4, %xmm5
	vpxor	.LCPI0_1(%rip), %xmm4, %xmm3
	vpxor	.LCPI0_2(%rip), %xmm4, %xmm6
	vpxor	.LCPI0_3(%rip), %xmm4, %xmm2
	vpxor	.LCPI0_4(%rip), %xmm4, %xmm7
	vmovdqu	16(%rsi), %xmm9
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm4, %xmm1
	vpshufb	.LCPI0_5(%rip), %xmm9, %xmm10
	vaesenclast	.LCPI0_6(%rip), %xmm10, %xmm10
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm1, %xmm10, %xmm10
	vpslldq	$12, %xmm9, %xmm11
	vpshufd	$255, %xmm0, %xmm12
	vpxor	%xmm1, %xmm1, %xmm1
	vaesenclast	%xmm1, %xmm12, %xmm12
	vpxor	%xmm9, %xmm11, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpxor	%xmm9, %xmm12, %xmm10
	vbroadcastss	.LCPI0_15(%rip), %xmm1
	vbroadcastss	.LCPI0_8(%rip), %xmm12
	#APP
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm7, %xmm7
	vpslldq	$4, %xmm0, %xmm11
	vpslldq	$8, %xmm0, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpslldq	$12, %xmm0, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpxor	%xmm0, %xmm11, %xmm11
	vpshufb	%xmm12, %xmm10, %xmm14
	vaesenclast	%xmm1, %xmm14, %xmm14
	vpxor	%xmm11, %xmm14, %xmm14
	#NO_APP
	vxorps	%xmm8, %xmm8, %xmm8
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm7, %xmm7
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpslldq	$12, %xmm10, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpshufd	$255, %xmm14, %xmm13
	vaesenclast	%xmm8, %xmm13, %xmm13
	vpxor	%xmm0, %xmm13, %xmm13
	#NO_APP
	vbroadcastss	.LCPI0_16(%rip), %xmm1
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm7, %xmm7
	vpslldq	$4, %xmm14, %xmm0
	vpslldq	$8, %xmm14, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpslldq	$12, %xmm14, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpshufb	%xmm12, %xmm13, %xmm15
	vaesenclast	%xmm1, %xmm15, %xmm15
	vpxor	%xmm0, %xmm15, %xmm15
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm7, %xmm7
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpslldq	$12, %xmm13, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpshufd	$255, %xmm15, %xmm14
	vaesenclast	%xmm8, %xmm14, %xmm14
	vpxor	%xmm0, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpbroadcastd	.LCPI0_17(%rip), %xmm11
	#APP
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm7, %xmm7
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpslldq	$12, %xmm15, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpshufb	%xmm12, %xmm14, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm7, %xmm7
	vpslldq	$4, %xmm14, %xmm0
	vpslldq	$8, %xmm14, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpslldq	$12, %xmm14, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpshufd	$255, %xmm1, %xmm8
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm8
	#NO_APP
	vpbroadcastd	.LCPI0_18(%rip), %xmm13
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm7, %xmm7
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm14
	vpxor	%xmm0, %xmm14, %xmm0
	vpslldq	$12, %xmm1, %xmm14
	vpxor	%xmm0, %xmm14, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm12, %xmm8, %xmm9
	vaesenclast	%xmm13, %xmm9, %xmm9
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
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
	vpshufd	$255, %xmm9, %xmm15
	vaesenclast	%xmm10, %xmm15, %xmm15
	vpxor	%xmm0, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI0_19(%rip), %xmm14
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm7, %xmm7
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpslldq	$12, %xmm9, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpshufb	%xmm12, %xmm15, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	#NO_APP
	vpslldq	$4, %xmm15, %xmm1
	vpunpcklqdq	%xmm15, %xmm10, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vinsertps	$55, %xmm15, %xmm0, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vshufps	$255, %xmm0, %xmm0, %xmm8
	vaesenclast	%xmm10, %xmm8, %xmm8
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm1, %xmm15, %xmm1
	vpxor	%xmm1, %xmm8, %xmm14
	vpslldq	$4, %xmm0, %xmm1
	vpunpcklqdq	%xmm0, %xmm9, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vinsertps	$55, %xmm0, %xmm0, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpbroadcastd	.LCPI0_8(%rip), %xmm9
	vpshufb	%xmm9, %xmm14, %xmm8
	vaesenclast	.LCPI0_13(%rip), %xmm8, %xmm8
	vpxor	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm8, %xmm12
	#APP
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm7, %xmm7
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
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenclast	%xmm12, %xmm4, %xmm4
	vaesenclast	%xmm12, %xmm5, %xmm5
	vaesenclast	%xmm12, %xmm3, %xmm3
	vaesenclast	%xmm12, %xmm6, %xmm6
	vaesenclast	%xmm12, %xmm2, %xmm2
	vaesenclast	%xmm12, %xmm7, %xmm7
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm12
	vpunpcklqdq	%xmm6, %xmm3, %xmm5
	vpunpcklqdq	%xmm7, %xmm2, %xmm6
	vmovdqa	%xmm6, (%rsp)
	vmovdqa	%xmm5, 16(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpxor	%xmm4, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm1
	vinsertps	$55, %xmm3, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm9, %xmm3
	vpshufb	%xmm9, %xmm6, %xmm1
	vaesenclast	.LCPI0_6(%rip), %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm6, %xmm0
	vpunpcklqdq	%xmm2, %xmm4, %xmm1
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm5, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vmovdqa	%xmm5, %xmm6
	vmovdqa	%xmm5, -16(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm2, %xmm5
	vmovdqa	%xmm2, -32(%rsp)
	vpshufb	%xmm9, %xmm2, %xmm1
	vmovdqa	%xmm9, %xmm2
	vaesenclast	.LCPI0_7(%rip), %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm3, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vmovdqa	%xmm3, -48(%rsp)
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm9, %xmm5, %xmm1
	vaesenclast	.LCPI0_9(%rip), %xmm1, %xmm1
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vmovdqa	%xmm5, -64(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm3, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm9
	vmovdqa	%xmm3, -80(%rsp)
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm9, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm10
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm10, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm9, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm11, %xmm1
	vaesenclast	%xmm13, %xmm1, %xmm1
	vpxor	%xmm0, %xmm10, %xmm0
	vpxor	%xmm0, %xmm1, %xmm13
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm13, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm1, %xmm6
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm6, %xmm1
	vaesenclast	.LCPI0_12(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm13, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm6, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm5, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vmovdqa	%xmm3, -96(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm3, %xmm1
	vaesenclast	.LCPI0_13(%rip), %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, -112(%rsp)
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm0
	vpbroadcastq	.LCPI0_20(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm1
	vpshufd	$78, %xmm0, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm4
	vpshufd	$78, %xmm0, %xmm15
	vpxor	%xmm4, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vmovdqa	%xmm0, -128(%rsp)
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm4
	vpslldq	$8, %xmm0, %xmm15
	vpxor	%xmm4, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm15
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm15
	vpxor	%xmm0, %xmm15, %xmm0
	vpshufd	$78, %xmm4, %xmm15
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm4
	vpxor	%xmm4, %xmm0, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm15
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm15
	vpshufd	$78, %xmm0, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm14
	vpclmulqdq	$1, %xmm12, %xmm0, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm15
	vpslldq	$8, %xmm14, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm15
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vpsrldq	$8, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpshufd	$78, %xmm7, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm14
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm15
	vpslldq	$8, %xmm14, %xmm8
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm15
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm15, %xmm8
	vpsrldq	$8, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm3
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm14, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vmovdqa	%xmm12, (%rdi)
	vmovdqa	%xmm2, 16(%rdi)
	vmovdqa	%xmm4, 32(%rdi)
	vmovdqa	%xmm1, 48(%rdi)
	vmovdqa	%xmm3, 64(%rdi)
	vmovdqa	%xmm0, 80(%rdi)
	vmovdqa	%xmm7, 96(%rdi)
	vmovaps	-128(%rsp), %xmm0
	vmovaps	%xmm0, 112(%rdi)
	vmovaps	16(%rsp), %xmm0
	vmovaps	%xmm0, 128(%rdi)
	vmovaps	(%rsp), %xmm0
	vmovaps	%xmm0, 144(%rdi)
	vmovaps	-16(%rsp), %xmm0
	vmovaps	%xmm0, 160(%rdi)
	vmovaps	-32(%rsp), %xmm0
	vmovaps	%xmm0, 176(%rdi)
	vmovaps	-48(%rsp), %xmm0
	vmovaps	%xmm0, 192(%rdi)
	vmovaps	-64(%rsp), %xmm0
	vmovaps	%xmm0, 208(%rdi)
	vmovaps	-80(%rsp), %xmm0
	vmovaps	%xmm0, 224(%rdi)
	vmovdqa	%xmm9, 240(%rdi)
	vmovdqa	%xmm10, 256(%rdi)
	vmovdqa	%xmm11, 272(%rdi)
	vmovdqa	%xmm13, 288(%rdi)
	vmovdqa	%xmm6, 304(%rdi)
	vmovdqa	%xmm5, 320(%rdi)
	vmovaps	-96(%rsp), %xmm0
	vmovaps	%xmm0, 336(%rdi)
	vmovaps	-112(%rsp), %xmm0
	vmovaps	%xmm0, 352(%rdi)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
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
	cmpq	$16, %r8
	sete	%al
	movabsq	$68719476737, %rcx
	cmpq	%rcx, %rdx
	setb	%bpl
	andb	%al, %bpl
	cmpb	$1, %bpl
	jne	.LBB1_31
	movq	%rdx, %r15
	movq	%rdi, %r14
	leaq	(,%rdx,8), %rax
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %rdx
	jb	.LBB1_6
	vmovdqu	(%rsi), %xmm8
	vmovdqu	16(%rsi), %xmm7
	vmovdqu	32(%rsi), %xmm6
	vmovdqu	48(%rsi), %xmm5
	vmovdqu	64(%rsi), %xmm4
	vmovdqu	80(%rsi), %xmm9
	vmovdqu	96(%rsi), %xmm10
	vmovdqu	112(%rsi), %xmm11
	vmovdqa	(%r14), %xmm0
	vmovdqa	16(%r14), %xmm1
	vmovdqa	32(%r14), %xmm3
	vmovdqa	48(%r14), %xmm2
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm10
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm11
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm13
	vmovdqa	%xmm2, 48(%rsp)
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vpxor	%xmm4, %xmm10, %xmm9
	vmovdqa	64(%r14), %xmm4
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm10
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm14
	vmovdqa	80(%r14), %xmm2
	vpclmulqdq	$0, %xmm6, %xmm2, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm6, %xmm2, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm2, %xmm6
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	96(%r14), %xmm6
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm11
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vpxor	%xmm7, %xmm9, %xmm13
	vmovdqa	112(%r14), %xmm7
	vpclmulqdq	$0, %xmm8, %xmm7, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm7, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm10, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm7, %xmm8
	vpxor	%xmm8, %xmm13, %xmm10
	subq	$-128, %rsi
	addq	$-128, %r15
	cmpq	$128, %r15
	jb	.LBB1_5
	vmovdqa	%xmm2, (%rsp)
	vmovdqa	%xmm4, %xmm2
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	%xmm0, 16(%rsp)
	.p2align	4, 0x90
.LBB1_4:
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
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm15
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm9
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
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm12
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqa	(%rsp), %xmm5
	vpclmulqdq	$0, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm14
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
	addq	$-128, %r15
	cmpq	$127, %r15
	ja	.LBB1_4
.LBB1_5:
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
	vpxor	%xmm2, %xmm0, %xmm1
.LBB1_6:
	vmovq	%rax, %xmm8
	movq	%r15, %r12
	andq	$-128, %r12
	addq	%rsi, %r12
	movq	%r15, %rdx
	andq	$15, %rdx
	je	.LBB1_27
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	%xmm8, (%rsp)
	movq	%r15, %r13
	andq	$-16, %r13
	leaq	(%r12,%r13), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_8
	leaq	-16(%r13), %rcx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	leaq	2(%rdx), %rax
	cmpq	$96, %rcx
	cmovaeq	%rdx, %rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	vmovdqa	(%r14,%rdx), %xmm1
	vmovdqa	16(%rsp), %xmm2
	vpxor	(%r12), %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm1
	testq	%rcx, %rcx
	je	.LBB1_10
	testb	$16, %r15b
	jne	.LBB1_13
	leaq	-32(%r13), %rcx
	vmovdqu	16(%r12), %xmm4
	addq	$16, %r12
	decq	%rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	vmovdqa	(%r14,%rdx), %xmm5
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm1, %xmm4, %xmm1
.LBB1_13:
	vmovdqa	(%rsp), %xmm9
	cmpq	$32, %r13
	je	.LBB1_16
	movq	%rax, %rdx
	shlq	$4, %rdx
	addq	%r14, %rdx
	addq	$-16, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_15:
	vmovdqa	-16(%rdx), %xmm4
	vmovdqa	(%rdx), %xmm5
	vmovdqu	16(%r12,%rsi), %xmm6
	vmovdqu	32(%r12,%rsi), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	addq	$-2, %rax
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$-32, %rdx
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB1_15
.LBB1_16:
	testq	%rax, %rax
	je	.LBB1_18
.LBB1_17:
	vmovdqa	(%r14), %xmm4
	vmovdqa	16(%r14), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm2, %xmm5, %xmm2
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
	jmp	.LBB1_30
.LBB1_27:
	cmpq	$15, %r15
	jbe	.LBB1_28
	movq	%r15, %rcx
	andq	$-16, %rcx
	vpxor	(%r12), %xmm1, %xmm1
	vmovdqa	(%r14,%rcx), %xmm3
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	leaq	-16(%r15), %rax
	cmpq	$16, %rax
	jb	.LBB1_26
	movq	%r15, %rdx
	shrq	$4, %rdx
	testb	$16, %r15b
	jne	.LBB1_23
	vmovdqu	16(%r12), %xmm3
	addq	$16, %r12
	decq	%rdx
	movq	%rdx, %rax
	shlq	$4, %rax
	vmovdqa	(%r14,%rax), %xmm4
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpxor	%xmm0, %xmm5, %xmm0
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm1, %xmm3, %xmm1
	addq	$-32, %r15
	movq	%r15, %rax
.LBB1_23:
	cmpq	$32, %rcx
	je	.LBB1_26
	addq	$32, %r12
	shlq	$4, %rdx
	leaq	(%rdx,%r14), %rcx
	addq	$-16, %rcx
	.p2align	4, 0x90
.LBB1_25:
	vmovdqa	-16(%rcx), %xmm3
	vmovdqa	(%rcx), %xmm4
	vmovdqu	-16(%r12), %xmm5
	vmovdqu	(%r12), %xmm6
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
	addq	$32, %r12
	addq	$-32, %rcx
	cmpq	$15, %rax
	ja	.LBB1_25
.LBB1_26:
	vmovdqa	(%r14), %xmm3
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm3
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
	jmp	.LBB1_29
.LBB1_8:
	vmovdqa	(%rsp), %xmm9
	vmovdqa	16(%rsp), %xmm3
	jmp	.LBB1_19
.LBB1_28:
	vmovdqa	(%r14), %xmm0
	vpxor	%xmm1, %xmm8, %xmm1
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
.LBB1_29:
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB1_30
.LBB1_10:
	vmovdqa	(%rsp), %xmm9
	testq	%rax, %rax
	jne	.LBB1_17
.LBB1_18:
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
.LBB1_19:
	vmovdqa	(%r14), %xmm1
	vmovdqa	16(%r14), %xmm2
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm1, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm9, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
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
.LBB1_30:
	vpand	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	128(%r14), %xmm0, %xmm0
	vaesenc	144(%r14), %xmm0, %xmm0
	vaesenc	160(%r14), %xmm0, %xmm0
	vaesenc	176(%r14), %xmm0, %xmm0
	vaesenc	192(%r14), %xmm0, %xmm0
	vaesenc	208(%r14), %xmm0, %xmm0
	vaesenc	224(%r14), %xmm0, %xmm0
	vaesenc	240(%r14), %xmm0, %xmm0
	vaesenc	256(%r14), %xmm0, %xmm0
	vaesenc	272(%r14), %xmm0, %xmm0
	vaesenc	288(%r14), %xmm0, %xmm0
	vaesenc	304(%r14), %xmm0, %xmm0
	vaesenc	320(%r14), %xmm0, %xmm0
	vaesenc	336(%r14), %xmm0, %xmm0
	vaesenclast	352(%r14), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rbx)
.LBB1_31:
	movzbl	%bpl, %eax
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	xorl	%eax, %eax
	movabsq	$68719476736, %rdx
	cmpq	%rdx, %r14
	ja	.LBB2_32
	cmpq	$16, %r8
	jb	.LBB2_32
	movq	%rdi, %rbx
	leaq	(,%r14,8), %rax
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %r14
	jb	.LBB2_7
	vmovdqu	(%rsi), %xmm8
	vmovdqu	16(%rsi), %xmm7
	vmovdqu	32(%rsi), %xmm6
	vmovdqu	48(%rsi), %xmm5
	vmovdqu	64(%rsi), %xmm4
	vmovdqu	80(%rsi), %xmm9
	vmovdqu	96(%rsi), %xmm10
	vmovdqu	112(%rsi), %xmm11
	vmovdqa	(%rbx), %xmm0
	vmovdqa	16(%rbx), %xmm1
	vmovdqa	32(%rbx), %xmm3
	vmovdqa	48(%rbx), %xmm2
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm10
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm11
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm13
	vmovdqa	%xmm2, (%rsp)
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vpxor	%xmm4, %xmm10, %xmm9
	vmovdqa	64(%rbx), %xmm4
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm10
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm14
	vmovdqa	80(%rbx), %xmm2
	vpclmulqdq	$0, %xmm6, %xmm2, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm6, %xmm2, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm2, %xmm6
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	96(%rbx), %xmm6
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm11
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vpxor	%xmm7, %xmm9, %xmm13
	vmovdqa	112(%rbx), %xmm7
	vpclmulqdq	$0, %xmm8, %xmm7, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm7, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm10, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm7, %xmm8
	vpxor	%xmm8, %xmm13, %xmm10
	subq	$-128, %rsi
	addq	$-128, %r14
	cmpq	$128, %r14
	jb	.LBB2_6
	vmovdqa	%xmm2, 16(%rsp)
	vmovdqa	%xmm4, %xmm2
	vmovdqa	(%rsp), %xmm4
	vmovdqa	%xmm0, 32(%rsp)
	.p2align	4, 0x90
.LBB2_5:
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
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm15
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm9
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
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm12
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqa	16(%rsp), %xmm5
	vpclmulqdq	$0, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm14
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
	vmovdqa	32(%rsp), %xmm0
	subq	$-128, %rsi
	addq	$-128, %r14
	cmpq	$127, %r14
	ja	.LBB2_5
.LBB2_6:
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
	vpxor	%xmm2, %xmm0, %xmm1
.LBB2_7:
	vmovdqu	(%rcx), %xmm9
	vmovq	%rax, %xmm8
	movq	%r14, %r15
	andq	$-128, %r15
	addq	%rsi, %r15
	movq	%r14, %rdx
	andq	$15, %rdx
	je	.LBB2_28
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqa	%xmm8, (%rsp)
	vmovdqa	%xmm9, 16(%rsp)
	movq	%r14, %r12
	andq	$-16, %r12
	leaq	(%r15,%r12), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	48(%rsp), %xmm0
	testq	%r12, %r12
	je	.LBB2_9
	leaq	-16(%r12), %rcx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	leaq	2(%rdx), %rax
	cmpq	$96, %rcx
	cmovaeq	%rdx, %rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	vmovdqa	(%rbx,%rdx), %xmm1
	vmovdqa	32(%rsp), %xmm2
	vpxor	(%r15), %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm1
	testq	%rcx, %rcx
	je	.LBB2_11
	testb	$16, %r14b
	jne	.LBB2_14
	leaq	-32(%r12), %rcx
	vmovdqu	16(%r15), %xmm4
	addq	$16, %r15
	decq	%rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	vmovdqa	(%rbx,%rdx), %xmm5
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm1, %xmm4, %xmm1
.LBB2_14:
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm10
	cmpq	$32, %r12
	je	.LBB2_17
	movq	%rax, %rdx
	shlq	$4, %rdx
	addq	%rbx, %rdx
	addq	$-16, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB2_16:
	vmovdqa	-16(%rdx), %xmm4
	vmovdqa	(%rdx), %xmm5
	vmovdqu	16(%r15,%rsi), %xmm6
	vmovdqu	32(%r15,%rsi), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	addq	$-2, %rax
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$-32, %rdx
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB2_16
.LBB2_17:
	testq	%rax, %rax
	je	.LBB2_19
.LBB2_18:
	vmovdqa	(%rbx), %xmm4
	vmovdqa	16(%rbx), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm2, %xmm5, %xmm2
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
.LBB2_28:
	cmpq	$15, %r14
	jbe	.LBB2_29
	movq	%r14, %rcx
	andq	$-16, %rcx
	vpxor	(%r15), %xmm1, %xmm1
	vmovdqa	(%rbx,%rcx), %xmm3
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	leaq	-16(%r14), %rax
	cmpq	$16, %rax
	jb	.LBB2_27
	movq	%r14, %rdx
	shrq	$4, %rdx
	testb	$16, %r14b
	jne	.LBB2_24
	vmovdqu	16(%r15), %xmm3
	addq	$16, %r15
	decq	%rdx
	movq	%rdx, %rax
	shlq	$4, %rax
	vmovdqa	(%rbx,%rax), %xmm4
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpxor	%xmm0, %xmm5, %xmm0
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm1, %xmm3, %xmm1
	addq	$-32, %r14
	movq	%r14, %rax
.LBB2_24:
	cmpq	$32, %rcx
	je	.LBB2_27
	addq	$32, %r15
	shlq	$4, %rdx
	leaq	(%rdx,%rbx), %rcx
	addq	$-16, %rcx
	.p2align	4, 0x90
.LBB2_26:
	vmovdqa	-16(%rcx), %xmm3
	vmovdqa	(%rcx), %xmm4
	vmovdqu	-16(%r15), %xmm5
	vmovdqu	(%r15), %xmm6
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
	addq	$32, %r15
	addq	$-32, %rcx
	cmpq	$15, %rax
	ja	.LBB2_26
.LBB2_27:
	vmovdqa	(%rbx), %xmm3
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm3
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
	jmp	.LBB2_30
.LBB2_9:
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm10
	vmovdqa	32(%rsp), %xmm3
	jmp	.LBB2_20
.LBB2_29:
	vmovdqa	(%rbx), %xmm0
	vpxor	%xmm1, %xmm8, %xmm1
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
.LBB2_30:
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB2_31
.LBB2_11:
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm10
	testq	%rax, %rax
	jne	.LBB2_18
.LBB2_19:
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
.LBB2_20:
	vmovdqa	(%rbx), %xmm1
	vmovdqa	16(%rbx), %xmm2
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
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
	vpand	.LCPI2_1(%rip), %xmm0, %xmm0
	vpxor	128(%rbx), %xmm0, %xmm0
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
	vpxor	%xmm0, %xmm9, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_32:
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
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

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

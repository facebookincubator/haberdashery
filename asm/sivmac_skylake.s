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
	.section	.text.haberdashery_sivmac_skylake_init,"ax",@progbits
	.globl	haberdashery_sivmac_skylake_init
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylake_init,@function
haberdashery_sivmac_skylake_init:
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
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	.LCPI0_5(%rip), %xmm9, %xmm1
	vaesenclast	.LCPI0_6(%rip), %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
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
	vpxor	%xmm1, %xmm10, %xmm1
	vpslldq	$12, %xmm9, %xmm10
	vpxor	%xmm1, %xmm10, %xmm10
	vpshufd	$255, %xmm0, %xmm11
	vpxor	%xmm1, %xmm1, %xmm1
	vaesenclast	%xmm1, %xmm11, %xmm11
	vpxor	%xmm9, %xmm10, %xmm9
	vpxor	%xmm9, %xmm11, %xmm10
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
	.size	haberdashery_sivmac_skylake_init, .Lfunc_end0-haberdashery_sivmac_skylake_init
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
	.section	.text.haberdashery_sivmac_skylake_sign,"ax",@progbits
	.globl	haberdashery_sivmac_skylake_sign
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylake_sign,@function
haberdashery_sivmac_skylake_sign:
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
	vmovdqa	(%rdi), %xmm13
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %rdx
	vmovdqa	%xmm13, 16(%rsp)
	jae	.LBB1_15
	movq	%r12, %rax
	cmpq	$16, %rax
	jae	.LBB1_4
	jmp	.LBB1_9
.LBB1_15:
	vmovdqa	16(%r15), %xmm1
	vmovdqa	32(%r15), %xmm0
	vmovdqa	48(%r15), %xmm3
	vmovdqa	64(%r15), %xmm4
	vmovdqa	80(%r15), %xmm5
	vmovdqa	96(%r15), %xmm14
	vmovdqu	64(%rsi), %xmm6
	vmovdqu	80(%rsi), %xmm7
	vmovdqu	96(%rsi), %xmm8
	vmovdqu	112(%rsi), %xmm9
	vpclmulqdq	$0, %xmm9, %xmm13, %xmm10
	vpclmulqdq	$1, %xmm9, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm13, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm9, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm12
	vpxor	%xmm10, %xmm12, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm8
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm12
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm13
	vpxor	%xmm13, %xmm9, %xmm9
	vmovdqu	32(%rsi), %xmm13
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vmovdqu	48(%rsi), %xmm12
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm7
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm11
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm6, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vmovdqu	16(%rsi), %xmm11
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm12
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm14, %xmm12
	vpxor	%xmm6, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm12
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm14, %xmm6
	vpxor	%xmm6, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm14, %xmm12
	vpxor	%xmm6, %xmm12, %xmm12
	vmovdqa	112(%r15), %xmm2
	vpclmulqdq	$17, %xmm11, %xmm14, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vmovdqu	(%rsi), %xmm11
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm9
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm9
	vpxor	%xmm7, %xmm9, %xmm9
	subq	$-128, %rsi
	leaq	-128(%r12), %rax
	cmpq	$128, %rax
	jb	.LBB1_17
	.p2align	4, 0x90
.LBB1_16:
	vmovdqu	64(%rsi), %xmm11
	vmovdqu	80(%rsi), %xmm12
	vmovdqu	96(%rsi), %xmm13
	vmovdqa	%xmm14, %xmm6
	vmovdqu	112(%rsi), %xmm14
	vpslldq	$8, %xmm10, %xmm15
	vpxor	%xmm15, %xmm8, %xmm8
	vpsrldq	$8, %xmm10, %xmm10
	vpbroadcastq	.LCPI1_2(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm15
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm15
	vpshufd	$78, %xmm8, %xmm8
	vpxor	(%rsi), %xmm9, %xmm9
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm15, %xmm8, %xmm9
	vmovdqa	16(%rsp), %xmm7
	vpclmulqdq	$0, %xmm14, %xmm7, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm7, %xmm10
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm15
	vpxor	%xmm10, %xmm15, %xmm10
	vpclmulqdq	$17, %xmm14, %xmm7, %xmm14
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm15
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm10
	vpxor	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm0, %xmm14
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vmovdqu	32(%rsi), %xmm15
	vpxor	%xmm13, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vmovdqu	48(%rsi), %xmm14
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm12
	vpxor	%xmm7, %xmm13, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm11
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm14
	vpxor	%xmm7, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm15, %xmm5, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm15, %xmm5, %xmm14
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm11
	vpxor	%xmm11, %xmm14, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm11, %xmm11
	vmovdqa	%xmm6, %xmm14
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm11
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm2, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm2, %xmm7
	vpxor	%xmm7, %xmm11, %xmm9
	subq	$-128, %rsi
	addq	$-128, %rax
	cmpq	$127, %rax
	ja	.LBB1_16
.LBB1_17:
	vpslldq	$8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm1
	vmovdqa	16(%rsp), %xmm13
	cmpq	$16, %rax
	jb	.LBB1_9
.LBB1_4:
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
	vmovdqa	%xmm1, 32(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm1
.LBB1_12:
	testq	%r14, %r14
	je	.LBB1_14
	shlq	$3, %r12
	vmovq	%r12, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpand	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	128(%r15), %xmm0, %xmm0
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
	vpxor	(%rsi), %xmm1, %xmm0
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm1
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_7:
	vpbroadcastq	.LCPI1_2(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_8:
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	addq	$-32, %rax
	vpxor	16(%rsi), %xmm1, %xmm1
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	cmpq	$15, %rax
	ja	.LBB1_8
.LBB1_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_11
	jmp	.LBB1_12
.Lfunc_end1:
	.size	haberdashery_sivmac_skylake_sign, .Lfunc_end1-haberdashery_sivmac_skylake_sign
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
	.section	.text.haberdashery_sivmac_skylake_verify,"ax",@progbits
	.globl	haberdashery_sivmac_skylake_verify
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylake_verify,@function
haberdashery_sivmac_skylake_verify:
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
	vmovdqa	(%rdi), %xmm13
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %r14
	vmovdqa	%xmm13, (%rsp)
	jae	.LBB2_15
	movq	%r14, %rax
	cmpq	$16, %rax
	jae	.LBB2_5
	jmp	.LBB2_10
.LBB2_15:
	vmovdqa	16(%rbx), %xmm1
	vmovdqa	32(%rbx), %xmm0
	vmovdqa	48(%rbx), %xmm3
	vmovdqa	64(%rbx), %xmm4
	vmovdqa	80(%rbx), %xmm5
	vmovdqa	96(%rbx), %xmm14
	vmovdqu	64(%rsi), %xmm6
	vmovdqu	80(%rsi), %xmm7
	vmovdqu	96(%rsi), %xmm8
	vmovdqu	112(%rsi), %xmm9
	vpclmulqdq	$0, %xmm9, %xmm13, %xmm10
	vpclmulqdq	$1, %xmm9, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm13, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm9, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm12
	vpxor	%xmm10, %xmm12, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm8
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm12
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm13
	vpxor	%xmm13, %xmm9, %xmm9
	vmovdqu	32(%rsi), %xmm13
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vmovdqu	48(%rsi), %xmm12
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm7
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm11
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm6, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vmovdqu	16(%rsi), %xmm11
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm12
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm14, %xmm12
	vpxor	%xmm6, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm12
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm14, %xmm6
	vpxor	%xmm6, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm14, %xmm12
	vpxor	%xmm6, %xmm12, %xmm12
	vmovdqa	112(%rbx), %xmm2
	vpclmulqdq	$17, %xmm11, %xmm14, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vmovdqu	(%rsi), %xmm11
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm9
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm9
	vpxor	%xmm7, %xmm9, %xmm9
	subq	$-128, %rsi
	leaq	-128(%r14), %rax
	cmpq	$128, %rax
	jb	.LBB2_17
	.p2align	4, 0x90
.LBB2_16:
	vmovdqu	64(%rsi), %xmm11
	vmovdqu	80(%rsi), %xmm12
	vmovdqu	96(%rsi), %xmm13
	vmovdqa	%xmm14, %xmm6
	vmovdqu	112(%rsi), %xmm14
	vpslldq	$8, %xmm10, %xmm15
	vpxor	%xmm15, %xmm8, %xmm8
	vpsrldq	$8, %xmm10, %xmm10
	vpbroadcastq	.LCPI2_2(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm15
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm15
	vpshufd	$78, %xmm8, %xmm8
	vpxor	(%rsi), %xmm9, %xmm9
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm15, %xmm8, %xmm9
	vmovdqa	(%rsp), %xmm7
	vpclmulqdq	$0, %xmm14, %xmm7, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm7, %xmm10
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm15
	vpxor	%xmm10, %xmm15, %xmm10
	vpclmulqdq	$17, %xmm14, %xmm7, %xmm14
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm15
	vpxor	%xmm8, %xmm15, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm10
	vpxor	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm0, %xmm14
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vmovdqu	32(%rsi), %xmm15
	vpxor	%xmm13, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vmovdqu	48(%rsi), %xmm14
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm12
	vpxor	%xmm7, %xmm13, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm11
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm15, %xmm5, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm14
	vpxor	%xmm7, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm15, %xmm5, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm15, %xmm5, %xmm14
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm11
	vpxor	%xmm11, %xmm14, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm14
	vpxor	%xmm14, %xmm11, %xmm11
	vmovdqa	%xmm6, %xmm14
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm11
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm2, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm2, %xmm7
	vpxor	%xmm7, %xmm11, %xmm9
	subq	$-128, %rsi
	addq	$-128, %rax
	cmpq	$127, %rax
	ja	.LBB2_16
.LBB2_17:
	vpslldq	$8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpbroadcastq	.LCPI2_2(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm1
	vmovdqa	(%rsp), %xmm13
	cmpq	$16, %rax
	jb	.LBB2_10
.LBB2_5:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB2_6
	cmpq	$16, %rdx
	jae	.LBB2_8
.LBB2_11:
	vmovdqu	(%rcx), %xmm4
	testq	%rdx, %rdx
	je	.LBB2_13
.LBB2_12:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqa	%xmm4, 48(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm0
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
	vpbroadcastq	.LCPI2_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm1
.LBB2_13:
	shlq	$3, %r14
	vmovq	%r14, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
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
	vpxor	%xmm4, %xmm0, %xmm0
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
	vpxor	(%rsi), %xmm1, %xmm0
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm1
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB2_11
.LBB2_8:
	vpbroadcastq	.LCPI2_2(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_9:
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	addq	$-32, %rax
	vpxor	16(%rsi), %xmm1, %xmm1
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	cmpq	$15, %rax
	ja	.LBB2_9
.LBB2_10:
	movq	%rax, %rdx
	vmovdqu	(%rcx), %xmm4
	testq	%rdx, %rdx
	jne	.LBB2_12
	jmp	.LBB2_13
.Lfunc_end2:
	.size	haberdashery_sivmac_skylake_verify, .Lfunc_end2-haberdashery_sivmac_skylake_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylake_is_supported,@function
haberdashery_sivmac_skylake_is_supported:
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
.Lfunc_end3:
	.size	haberdashery_sivmac_skylake_is_supported, .Lfunc_end3-haberdashery_sivmac_skylake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

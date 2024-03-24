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
.LCPI0_2:
	.quad	8589934594
	.quad	8589934594
.LCPI0_3:
	.quad	17179869188
	.quad	17179869188
.LCPI0_4:
	.quad	34359738376
	.quad	34359738376
.LCPI0_5:
	.quad	68719476752
	.quad	68719476752
.LCPI0_6:
	.quad	137438953504
	.quad	137438953504
.LCPI0_7:
	.quad	274877907008
	.quad	274877907008
.LCPI0_8:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI0_9:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI0_10:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_11:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI0_12:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI0_13:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_14:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_15:
	.quad	-4467570830351532032
	.section	.text.haberdashery_sivmac_haswell_init,"ax",@progbits
	.globl	haberdashery_sivmac_haswell_init
	.p2align	4, 0x90
	.type	haberdashery_sivmac_haswell_init,@function
haberdashery_sivmac_haswell_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	vmovdqu	(%rsi), %xmm9
	vmovdqu	16(%rsi), %xmm8
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpbroadcastd	.LCPI0_14(%rip), %xmm2
	vpshufb	%xmm2, %xmm8, %xmm1
	vmovdqa	%xmm2, %xmm3
	vaesenclast	.LCPI0_1(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm9, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm11, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm1
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm3, %xmm5, %xmm1
	vaesenclast	.LCPI0_2(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm1, %xmm12
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm12, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm13
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm12, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm3, %xmm13, %xmm1
	vaesenclast	.LCPI0_3(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm12, %xmm0
	vpxor	%xmm0, %xmm1, %xmm14
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm14, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm0, %xmm13, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vpslldq	$4, %xmm14, %xmm0
	vpslldq	$8, %xmm14, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm14, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm3, %xmm15, %xmm1
	vmovdqa	%xmm3, %xmm2
	vaesenclast	.LCPI0_4(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm14, %xmm0
	vpxor	%xmm0, %xmm1, %xmm4
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm4, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm3, %xmm1
	vmovdqa	%xmm2, %xmm7
	vaesenclast	.LCPI0_5(%rip), %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm2, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpslldq	$12, %xmm2, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpshufb	%xmm7, %xmm1, %xmm6
	vaesenclast	.LCPI0_6(%rip), %xmm6, %xmm6
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$255, %xmm0, %xmm7
	vaesenclast	%xmm10, %xmm7, %xmm7
	vpxor	%xmm1, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$4, %xmm0, %xmm7
	vpslldq	$8, %xmm0, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpslldq	$12, %xmm0, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpshufb	.LCPI0_0(%rip), %xmm6, %xmm10
	vaesenclast	.LCPI0_7(%rip), %xmm10, %xmm10
	vmovdqa	%xmm10, -80(%rsp)
	vpxor	%xmm0, %xmm7, %xmm7
	vmovdqa	%xmm7, -96(%rsp)
	vpxor	.LCPI0_8(%rip), %xmm9, %xmm10
	vmovdqa	%xmm10, -112(%rsp)
	vpxor	.LCPI0_9(%rip), %xmm9, %xmm10
	vpxor	.LCPI0_10(%rip), %xmm9, %xmm7
	vmovdqa	%xmm7, -128(%rsp)
	vpxor	.LCPI0_11(%rip), %xmm9, %xmm7
	vmovdqa	%xmm7, -32(%rsp)
	vpxor	.LCPI0_12(%rip), %xmm9, %xmm7
	vmovdqa	%xmm7, -48(%rsp)
	vmovaps	-96(%rsp), %xmm7
	vxorps	-80(%rsp), %xmm7, %xmm7
	vmovaps	%xmm7, -80(%rsp)
	vaesenc	%xmm8, %xmm9, %xmm9
	vmovdqa	-112(%rsp), %xmm7
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa	%xmm7, -112(%rsp)
	vaesenc	%xmm8, %xmm10, %xmm10
	vmovdqa	-128(%rsp), %xmm7
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa	%xmm7, -128(%rsp)
	vmovdqa	-32(%rsp), %xmm7
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa	%xmm7, -96(%rsp)
	vmovdqa	-48(%rsp), %xmm7
	vaesenc	%xmm8, %xmm7, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	vmovdqa	-112(%rsp), %xmm7
	vaesenc	%xmm11, %xmm7, %xmm7
	vmovdqa	%xmm7, -112(%rsp)
	vaesenc	%xmm11, %xmm10, %xmm10
	vmovdqa	-128(%rsp), %xmm7
	vaesenc	%xmm11, %xmm7, %xmm7
	vmovdqa	%xmm7, -128(%rsp)
	vmovdqa	-96(%rsp), %xmm7
	vaesenc	%xmm11, %xmm7, %xmm7
	vmovdqa	%xmm7, -96(%rsp)
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vmovdqa	-112(%rsp), %xmm7
	vaesenc	%xmm5, %xmm7, %xmm7
	vmovdqa	%xmm7, -112(%rsp)
	vaesenc	%xmm5, %xmm10, %xmm10
	vmovdqa	-128(%rsp), %xmm11
	vaesenc	%xmm5, %xmm11, %xmm11
	vmovdqa	-96(%rsp), %xmm7
	vaesenc	%xmm5, %xmm7, %xmm7
	vmovdqa	%xmm7, -128(%rsp)
	vaesenc	%xmm5, %xmm8, %xmm5
	vaesenc	%xmm12, %xmm9, %xmm8
	vmovdqa	-112(%rsp), %xmm7
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vmovdqa	-128(%rsp), %xmm11
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm9, %xmm9
	vaesenc	%xmm15, %xmm10, %xmm10
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm3, %xmm8, %xmm5
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm9, %xmm8
	vaesenc	%xmm3, %xmm10, %xmm9
	vaesenc	%xmm3, %xmm11, %xmm10
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm2, %xmm5, %xmm4
	vaesenc	%xmm2, %xmm7, %xmm5
	vaesenc	%xmm2, %xmm8, %xmm7
	vaesenc	%xmm2, %xmm9, %xmm8
	vaesenc	%xmm2, %xmm10, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm7, %xmm5
	vaesenc	%xmm1, %xmm8, %xmm7
	vaesenc	%xmm1, %xmm9, %xmm8
	vaesenc	%xmm1, %xmm2, %xmm1
	vaesenc	%xmm0, %xmm3, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm7, %xmm5
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm1, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm4
	vaesenc	%xmm6, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	-80(%rsp), %xmm6
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpunpcklqdq	%xmm2, %xmm1, %xmm11
	vaesenclast	%xmm6, %xmm3, %xmm1
	vaesenclast	%xmm6, %xmm4, %xmm2
	vaesenclast	%xmm6, %xmm5, %xmm3
	vaesenclast	%xmm6, %xmm0, %xmm0
	vpunpcklqdq	%xmm2, %xmm1, %xmm5
	vmovdqa	%xmm5, -80(%rsp)
	vpunpcklqdq	%xmm0, %xmm3, %xmm6
	vmovdqa	%xmm6, -112(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm1, %xmm2
	vpslldq	$12, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpbroadcastd	.LCPI0_14(%rip), %xmm4
	vpshufb	%xmm4, %xmm6, %xmm1
	vaesenclast	.LCPI0_1(%rip), %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm5, %xmm1
	vpxor	%xmm3, %xmm3, %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vmovdqa	%xmm5, %xmm6
	vmovdqa	%xmm5, -128(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm2, %xmm5
	vmovdqa	%xmm2, -96(%rsp)
	vpshufb	%xmm4, %xmm2, %xmm1
	vmovdqa	%xmm4, %xmm2
	vaesenclast	.LCPI0_2(%rip), %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm4
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm4, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vmovdqa	%xmm4, -32(%rsp)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm5, %xmm1
	vaesenclast	.LCPI0_3(%rip), %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm4
	vmovdqa	%xmm5, -48(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm4, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vmovdqa	%xmm4, 32(%rsp)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm5, %xmm1
	vaesenclast	.LCPI0_4(%rip), %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm13
	vmovdqa	%xmm5, 16(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm13, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm15, %xmm1
	vaesenclast	.LCPI0_5(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm13, %xmm0
	vpxor	%xmm0, %xmm1, %xmm9
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm9, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm1, %xmm8
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm2, %xmm8, %xmm1
	vaesenclast	.LCPI0_6(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm9, %xmm0
	vpxor	%xmm0, %xmm1, %xmm10
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm10, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vmovdqa	%xmm3, (%rsp)
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm14
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm0
	vpbroadcastq	.LCPI0_15(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufb	%xmm2, %xmm3, %xmm2
	vaesenclast	.LCPI0_7(%rip), %xmm2, %xmm2
	vmovdqa	%xmm2, -64(%rsp)
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm5
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm0
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm5
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm1
	vpslldq	$8, %xmm5, %xmm12
	vpxor	%xmm1, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm12
	vpxor	%xmm0, %xmm4, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm12, %xmm1
	vpsrldq	$8, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm12
	vpxor	%xmm5, %xmm1, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm12, %xmm1
	vpxor	%xmm10, %xmm14, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm0
	vpxor	-64(%rsp), %xmm5, %xmm4
	vmovdqa	%xmm4, -64(%rsp)
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm5
	vpshufd	$78, %xmm12, %xmm12
	vpxor	%xmm1, %xmm12, %xmm12
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm1
	vpshufd	$78, %xmm0, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm4
	vpshufd	$78, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm0
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm12, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vpslldq	$8, %xmm0, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm12, %xmm14
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm4, -16(%rsp)
	vpshufd	$78, %xmm12, %xmm5
	vpxor	%xmm5, %xmm14, %xmm5
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm12
	vpxor	%xmm0, %xmm12, %xmm0
	vpshufd	$78, %xmm5, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm14
	vpxor	%xmm0, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm12
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm14
	vpslldq	$8, %xmm12, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm14
	vpxor	%xmm5, %xmm0, %xmm0
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vpsrldq	$8, %xmm12, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm12
	vpxor	%xmm5, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	%xmm11, (%rdi)
	vmovdqa	%xmm3, 16(%rdi)
	vmovdqa	%xmm7, 32(%rdi)
	vmovdqa	%xmm2, 48(%rdi)
	vmovdqa	%xmm4, 64(%rdi)
	vmovdqa	%xmm1, 80(%rdi)
	vmovdqa	%xmm0, 96(%rdi)
	vmovaps	-16(%rsp), %xmm0
	vmovaps	%xmm0, 112(%rdi)
	vmovaps	-80(%rsp), %xmm0
	vmovaps	%xmm0, 128(%rdi)
	vmovaps	-112(%rsp), %xmm0
	vmovaps	%xmm0, 144(%rdi)
	vmovaps	-128(%rsp), %xmm0
	vmovaps	%xmm0, 160(%rdi)
	vmovaps	-96(%rsp), %xmm0
	vmovaps	%xmm0, 176(%rdi)
	vmovaps	-32(%rsp), %xmm0
	vmovaps	%xmm0, 192(%rdi)
	vmovaps	-48(%rsp), %xmm0
	vmovaps	%xmm0, 208(%rdi)
	vmovaps	32(%rsp), %xmm0
	vmovaps	%xmm0, 224(%rdi)
	vmovaps	16(%rsp), %xmm0
	vmovaps	%xmm0, 240(%rdi)
	vmovdqa	%xmm13, 256(%rdi)
	vmovdqa	%xmm15, 272(%rdi)
	vmovdqa	%xmm9, 288(%rdi)
	vmovdqa	%xmm8, 304(%rdi)
	vmovdqa	%xmm10, 320(%rdi)
	vmovaps	(%rsp), %xmm0
	vmovaps	%xmm0, 336(%rdi)
	vmovaps	-64(%rsp), %xmm0
	vmovaps	%xmm0, 352(%rdi)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_sivmac_haswell_init, .Lfunc_end0-haberdashery_sivmac_haswell_init
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
	.section	.text.haberdashery_sivmac_haswell_sign,"ax",@progbits
	.globl	haberdashery_sivmac_haswell_sign
	.p2align	4, 0x90
	.type	haberdashery_sivmac_haswell_sign,@function
haberdashery_sivmac_haswell_sign:
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
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
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
	vmovdqa	(%rdi), %xmm7
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %rdx
	vmovdqa	%xmm7, 32(%rsp)
	jae	.LBB1_15
	movq	%r12, %rax
	jmp	.LBB1_3
.LBB1_15:
	vmovaps	16(%r15), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovdqa	32(%r15), %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	48(%r15), %xmm2
	vmovdqa	64(%r15), %xmm3
	vmovdqa	80(%r15), %xmm4
	vmovdqa	96(%r15), %xmm5
	vmovdqa	112(%r15), %xmm6
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB1_16:
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqu	112(%rsi), %xmm8
	vpclmulqdq	$0, %xmm8, %xmm7, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm7, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm7, %xmm8
	vmovdqu	96(%rsi), %xmm12
	vmovdqa	64(%rsp), %xmm1
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm14
	vmovdqu	64(%rsi), %xmm15
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm7
	vmovdqu	80(%rsi), %xmm0
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm12
	vpxor	%xmm10, %xmm11, %xmm10
	vmovdqa	48(%rsp), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm11
	vpxor	%xmm9, %xmm13, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm13
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm14
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm15, %xmm2, %xmm10
	vpxor	%xmm8, %xmm12, %xmm8
	vpxor	%xmm14, %xmm13, %xmm12
	vpxor	%xmm10, %xmm11, %xmm10
	vmovdqu	32(%rsi), %xmm11
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm15, %xmm2, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm10
	vmovdqu	48(%rsi), %xmm12
	vpclmulqdq	$17, %xmm15, %xmm2, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm3, %xmm13
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm12, %xmm3, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm8
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm12
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm11
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm12
	vpxor	%xmm11, %xmm8, %xmm8
	vpxor	%xmm12, %xmm10, %xmm10
	vmovdqa	16(%rsp), %xmm1
	vpxor	(%rsi), %xmm1, %xmm11
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm10
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm7, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpsrldq	$8, %xmm7, %xmm7
	vpbroadcastq	.LCPI1_2(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm9
	vpxor	%xmm7, %xmm0, %xmm0
	vpshufd	$78, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm7
	vpxor	%xmm7, %xmm0, %xmm1
	vmovdqa	32(%rsp), %xmm7
	addq	$-128, %rax
	subq	$-128, %rsi
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
	vmovdqa	%xmm1, 16(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm1
.LBB1_12:
	testq	%r14, %r14
	je	.LBB1_14
	shlq	$3, %r12
	vmovq	%r12, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
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
	addq	$80, %rsp
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
	.cfi_def_cfa_offset 128
	vpxor	(%rsi), %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$16, %rsi
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm1
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_7:
	vpbroadcastq	.LCPI1_2(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_8:
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	16(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm2
	addq	$-32, %rax
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	addq	$32, %rsi
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
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
	.size	haberdashery_sivmac_haswell_sign, .Lfunc_end1-haberdashery_sivmac_haswell_sign
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
	.section	.text.haberdashery_sivmac_haswell_verify,"ax",@progbits
	.globl	haberdashery_sivmac_haswell_verify
	.p2align	4, 0x90
	.type	haberdashery_sivmac_haswell_verify,@function
haberdashery_sivmac_haswell_verify:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
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
	vmovdqa	(%rdi), %xmm7
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %r14
	vmovdqa	%xmm7, 32(%rsp)
	jae	.LBB2_15
	movq	%r14, %rax
	jmp	.LBB2_4
.LBB2_15:
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovdqa	32(%rbx), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	48(%rbx), %xmm2
	vmovdqa	64(%rbx), %xmm3
	vmovdqa	80(%rbx), %xmm4
	vmovdqa	96(%rbx), %xmm5
	vmovdqa	112(%rbx), %xmm6
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB2_16:
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqu	112(%rsi), %xmm8
	vpclmulqdq	$0, %xmm8, %xmm7, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm7, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm7, %xmm8
	vmovdqu	96(%rsi), %xmm12
	vmovdqa	(%rsp), %xmm1
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm14
	vmovdqu	64(%rsi), %xmm15
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm7
	vmovdqu	80(%rsi), %xmm0
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm12
	vpxor	%xmm10, %xmm11, %xmm10
	vmovdqa	64(%rsp), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm11
	vpxor	%xmm9, %xmm13, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm13
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm14
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm15, %xmm2, %xmm10
	vpxor	%xmm8, %xmm12, %xmm8
	vpxor	%xmm14, %xmm13, %xmm12
	vpxor	%xmm10, %xmm11, %xmm10
	vmovdqu	32(%rsi), %xmm11
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm15, %xmm2, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm10
	vmovdqu	48(%rsi), %xmm12
	vpclmulqdq	$17, %xmm15, %xmm2, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm3, %xmm13
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm12, %xmm3, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm8
	vmovdqu	16(%rsi), %xmm13
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm12
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm11
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm12
	vpxor	%xmm11, %xmm8, %xmm8
	vpxor	%xmm12, %xmm10, %xmm10
	vmovdqa	16(%rsp), %xmm1
	vpxor	(%rsi), %xmm1, %xmm11
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm10
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm7, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpsrldq	$8, %xmm7, %xmm7
	vpbroadcastq	.LCPI2_2(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm9
	vpxor	%xmm7, %xmm0, %xmm0
	vpshufd	$78, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm7
	vpxor	%xmm7, %xmm0, %xmm1
	vmovdqa	32(%rsp), %xmm7
	addq	$-128, %rax
	subq	$-128, %rsi
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
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	%xmm5, (%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm5
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm0
	vpxor	48(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm1
.LBB2_13:
	shlq	$3, %r14
	vmovq	%r14, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
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
	vpxor	%xmm5, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_14:
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_6:
	.cfi_def_cfa_offset 112
	vpxor	(%rsi), %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$16, %rsi
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm1
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB2_11
.LBB2_8:
	vpbroadcastq	.LCPI2_2(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_9:
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	16(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm2
	addq	$-32, %rax
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	addq	$32, %rsi
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
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
	vmovdqu	(%rcx), %xmm5
	testq	%rdx, %rdx
	jne	.LBB2_12
	jmp	.LBB2_13
.Lfunc_end2:
	.size	haberdashery_sivmac_haswell_verify, .Lfunc_end2-haberdashery_sivmac_haswell_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_haswell_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_haswell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_sivmac_haswell_is_supported,@function
haberdashery_sivmac_haswell_is_supported:
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
	.size	haberdashery_sivmac_haswell_is_supported, .Lfunc_end3-haberdashery_sivmac_haswell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

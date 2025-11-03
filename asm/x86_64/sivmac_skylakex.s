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
	.section	.text.haberdashery_sivmac_skylakex_init,"ax",@progbits
	.globl	haberdashery_sivmac_skylakex_init
	.p2align	4
	.type	haberdashery_sivmac_skylakex_init,@function
haberdashery_sivmac_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm13
	vmovdqu	16(%rsi), %xmm0
	vxorpd	.LCPI0_0(%rip), %xmm13, %xmm14
	vxorpd	.LCPI0_1(%rip), %xmm13, %xmm3
	vxorpd	.LCPI0_2(%rip), %xmm13, %xmm4
	vxorpd	.LCPI0_3(%rip), %xmm13, %xmm2
	vxorpd	.LCPI0_4(%rip), %xmm13, %xmm5
	vpslldq	$4, %xmm13, %xmm1
	vpslldq	$8, %xmm13, %xmm6
	vpslldq	$12, %xmm13, %xmm7
	vpternlogq	$150, %xmm6, %xmm1, %xmm7
	vpbroadcastd	.LCPI0_8(%rip), %xmm28
	vpshufb	%xmm28, %xmm0, %xmm1
	vpbroadcastq	.LCPI0_6(%rip), %xmm12
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpternlogq	$150, %xmm7, %xmm13, %xmm1
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm7
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm1, %xmm6
	vpxor	%xmm11, %xmm11, %xmm11
	vaesenclast	%xmm11, %xmm6, %xmm6
	vpternlogq	$150, %xmm8, %xmm0, %xmm6
	vmovddup	.LCPI0_7(%rip), %xmm15
	vbroadcastss	.LCPI0_8(%rip), %xmm0
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vpslldq	$4, %xmm1, %xmm7
	vpslldq	$8, %xmm1, %xmm8
	vpslldq	$12, %xmm1, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpshufb	%xmm0, %xmm6, %xmm10
	vaesenclast	%xmm15, %xmm10, %xmm10
	vpternlogq	$150, %xmm1, %xmm9, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpslldq	$12, %xmm6, %xmm8
	vpternlogq	$150, %xmm1, %xmm7, %xmm8
	vpshufd	$255, %xmm10, %xmm9
	vaesenclast	%xmm11, %xmm9, %xmm9
	vpternlogq	$150, %xmm6, %xmm8, %xmm9
	#NO_APP
	vpbroadcastq	.LCPI0_9(%rip), %xmm15
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm6
	vpslldq	$12, %xmm10, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufb	%xmm0, %xmm9, %xmm8
	vaesenclast	%xmm15, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm7, %xmm8
	#NO_APP
	vmovdqa64	%xmm15, %xmm24
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm5, %xmm5
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufd	$255, %xmm8, %xmm10
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	#NO_APP
	vpbroadcastq	.LCPI0_10(%rip), %xmm15
	#APP
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm5, %xmm5
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufb	%xmm0, %xmm10, %xmm9
	vaesenclast	%xmm15, %xmm9, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	#NO_APP
	vmovdqa64	%xmm15, %xmm26
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm6
	vpslldq	$12, %xmm10, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufd	$255, %xmm9, %xmm8
	vaesenclast	%xmm11, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm7, %xmm8
	#NO_APP
	vpbroadcastq	.LCPI0_11(%rip), %xmm15
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm5, %xmm5
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufb	%xmm0, %xmm8, %xmm10
	vaesenclast	%xmm15, %xmm10, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	#NO_APP
	vmovdqa64	%xmm15, %xmm25
	#APP
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm5, %xmm5
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm7
	vpslldq	$12, %xmm8, %xmm9
	vpternlogq	$150, %xmm1, %xmm7, %xmm9
	vpshufd	$255, %xmm10, %xmm6
	vaesenclast	%xmm11, %xmm6, %xmm6
	vpternlogq	$150, %xmm8, %xmm9, %xmm6
	#NO_APP
	vpbroadcastq	.LCPI0_12(%rip), %xmm11
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vpslldq	$4, %xmm10, %xmm7
	vpslldq	$8, %xmm10, %xmm8
	vpslldq	$12, %xmm10, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpshufb	%xmm0, %xmm6, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpternlogq	$150, %xmm10, %xmm9, %xmm1
	#NO_APP
	vpslldq	$4, %xmm6, %xmm0
	vxorpd	%xmm9, %xmm9, %xmm9
	vunpcklpd	%xmm6, %xmm9, %xmm7
	vinsertps	$55, %xmm6, %xmm0, %xmm8
	vpternlogq	$150, %xmm7, %xmm0, %xmm8
	vpshufd	$255, %xmm1, %xmm0
	vaesenclast	%xmm9, %xmm0, %xmm0
	vpternlogq	$150, %xmm8, %xmm6, %xmm0
	vpslldq	$4, %xmm1, %xmm7
	vpunpcklqdq	%xmm1, %xmm9, %xmm8
	vinsertps	$55, %xmm1, %xmm0, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	#APP
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm28, %xmm0, %xmm6
	vpbroadcastq	.LCPI0_13(%rip), %xmm7
	vaesenclast	%xmm7, %xmm6, %xmm6
	vmovdqa64	%xmm7, %xmm29
	vpternlogq	$150, %xmm9, %xmm1, %xmm6
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenclast	%xmm6, %xmm13, %xmm13
	vaesenclast	%xmm6, %xmm14, %xmm14
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm14, %xmm13, %xmm10
	vpbroadcastq	.LCPI0_14(%rip), %xmm0
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm14
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm1
	vpternlogq	$150, %xmm6, %xmm1, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm1
	vpshufd	$78, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm15
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm1
	vpternlogq	$150, %xmm6, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm16
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm6
	vpternlogq	$150, %xmm1, %xmm6, %xmm16
	vpclmulqdq	$16, %xmm10, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm10, %xmm14, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm10, %xmm14, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm14, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm6, %xmm6
	vpternlogq	$150, %xmm1, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm1
	vmovdqa	%xmm6, %xmm7
	vpshufd	$78, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm1
	vmovdqa64	%xmm7, %xmm30
	vpternlogq	$150, %xmm6, %xmm1, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm10, %xmm9, %xmm6
	vpxorq	%xmm1, %xmm6, %xmm18
	vpslldq	$8, %xmm18, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm9, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpshufd	$78, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm1
	vmovdqa64	%xmm6, %xmm31
	vpclmulqdq	$17, %xmm10, %xmm9, %xmm6
	vpxorq	%xmm1, %xmm6, %xmm27
	vpclmulqdq	$16, %xmm10, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm10, %xmm15, %xmm6
	vpxorq	%xmm1, %xmm6, %xmm20
	vpslldq	$8, %xmm20, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm15, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpshufd	$78, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm0
	vmovdqa64	%xmm1, %xmm17
	vpclmulqdq	$17, %xmm10, %xmm15, %xmm1
	vmovdqa64	%xmm10, %xmm19
	vpxorq	%xmm0, %xmm1, %xmm21
	vmovlhps	%xmm4, %xmm3, %xmm22
	vpunpcklqdq	%xmm5, %xmm2, %xmm23
	vxorps	%xmm4, %xmm4, %xmm4
	vmovlhps	%xmm3, %xmm4, %xmm0
	vinsertps	$55, %xmm3, %xmm0, %xmm1
	vpshufb	%xmm28, %xmm23, %xmm3
	vaesenclast	%xmm12, %xmm3, %xmm8
	vpslldq	$4, %xmm22, %xmm3
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	vpternlogq	$150, %xmm1, %xmm22, %xmm8
	vpslldq	$4, %xmm23, %xmm0
	vmovlhps	%xmm2, %xmm4, %xmm1
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm8, %xmm0
	vaesenclast	%xmm4, %xmm0, %xmm7
	vpxor	%xmm10, %xmm10, %xmm10
	vpternlogq	$150, %xmm2, %xmm23, %xmm7
	vpshufb	%xmm28, %xmm7, %xmm0
	vpbroadcastq	.LCPI0_7(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm6
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpternlogq	$150, %xmm2, %xmm8, %xmm6
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm5
	vpternlogq	$150, %xmm2, %xmm7, %xmm5
	vpshufb	%xmm28, %xmm5, %xmm0
	vmovdqa64	%xmm24, %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm4
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpternlogq	$150, %xmm2, %xmm6, %xmm4
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm4, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm5, %xmm3
	vpshufb	%xmm28, %xmm3, %xmm0
	vmovdqa64	%xmm26, %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm2
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm24
	vpternlogq	$150, %xmm1, %xmm0, %xmm24
	vpternlogq	$150, %xmm24, %xmm4, %xmm2
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm24
	vpternlogq	$150, %xmm1, %xmm0, %xmm24
	vpshufd	$255, %xmm2, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm0
	vpxor	%xmm11, %xmm11, %xmm11
	vpternlogq	$150, %xmm24, %xmm3, %xmm0
	vpshufb	%xmm28, %xmm0, %xmm1
	vmovdqa64	%xmm25, %xmm10
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm2, %xmm24
	vpslldq	$8, %xmm2, %xmm25
	vpslldq	$12, %xmm2, %xmm26
	vpternlogq	$150, %xmm25, %xmm24, %xmm26
	vpternlogq	$150, %xmm26, %xmm2, %xmm1
	vpslldq	$4, %xmm0, %xmm24
	vpslldq	$8, %xmm0, %xmm25
	vpslldq	$12, %xmm0, %xmm26
	vpternlogq	$150, %xmm25, %xmm24, %xmm26
	vpshufd	$255, %xmm1, %xmm12
	vaesenclast	%xmm11, %xmm12, %xmm12
	vpternlogq	$150, %xmm26, %xmm0, %xmm12
	vpshufb	%xmm28, %xmm12, %xmm11
	vpbroadcastq	.LCPI0_12(%rip), %xmm10
	vaesenclast	%xmm10, %xmm11, %xmm11
	vpslldq	$4, %xmm1, %xmm24
	vpslldq	$8, %xmm1, %xmm25
	vpslldq	$12, %xmm1, %xmm26
	vpternlogq	$150, %xmm25, %xmm24, %xmm26
	vpternlogq	$150, %xmm26, %xmm1, %xmm11
	vpshufd	$255, %xmm11, %xmm10
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm10, %xmm10
	vmovdqa64	%xmm22, 128(%rdi)
	vmovdqa64	%xmm23, 144(%rdi)
	vmovdqa	%xmm8, 160(%rdi)
	vmovdqa	%xmm7, 176(%rdi)
	vmovdqa	%xmm6, 192(%rdi)
	vmovdqa	%xmm5, 208(%rdi)
	vmovdqa	%xmm4, 224(%rdi)
	vmovdqa	%xmm3, 240(%rdi)
	vmovdqa	%xmm2, 256(%rdi)
	vmovdqa	%xmm0, 272(%rdi)
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm2
	vpslldq	$12, %xmm12, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpternlogq	$150, %xmm3, %xmm12, %xmm10
	vmovdqa	%xmm1, 288(%rdi)
	vpshufb	%xmm28, %xmm10, %xmm0
	vmovdqa64	%xmm29, %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm12, 304(%rdi)
	vpslldq	$4, %xmm11, %xmm1
	vpslldq	$8, %xmm11, %xmm2
	vpslldq	$12, %xmm11, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm11, %xmm0
	vmovdqa	%xmm11, 320(%rdi)
	vmovdqa	%xmm10, 336(%rdi)
	vmovdqa	%xmm0, 352(%rdi)
	vpshufd	$78, %xmm31, %xmm0
	vpshufd	$78, %xmm17, %xmm1
	vmovdqa64	%xmm19, (%rdi)
	vmovdqa	%xmm14, 16(%rdi)
	vmovdqa64	%xmm30, 32(%rdi)
	vmovdqa	%xmm15, 48(%rdi)
	vpsrldq	$8, %xmm20, %xmm2
	vpternlogq	$150, %xmm2, %xmm21, %xmm1
	vmovdqa	%xmm1, 64(%rdi)
	vmovdqa	%xmm9, 80(%rdi)
	vpsrldq	$8, %xmm18, %xmm1
	vpternlogq	$150, %xmm1, %xmm27, %xmm0
	vmovdqa	%xmm0, 96(%rdi)
	vmovdqa64	%xmm16, 112(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_sivmac_skylakex_init, .Lfunc_end0-haberdashery_sivmac_skylakex_init
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
	.section	.text.haberdashery_sivmac_skylakex_sign,"ax",@progbits
	.globl	haberdashery_sivmac_skylakex_sign
	.p2align	4
	.type	haberdashery_sivmac_skylakex_sign,@function
haberdashery_sivmac_skylakex_sign:
	.cfi_startproc
	cmpq	$16, %r8
	setne	%r8b
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	xorl	%eax, %eax
	orb	%r8b, %r9b
	jne	.LBB1_28
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$128, %rdx
	jb	.LBB1_2
	vmovdqa64	(%rdi), %xmm16
	vmovdqa64	16(%rdi), %xmm17
	vmovdqa64	32(%rdi), %xmm18
	vmovdqa64	48(%rdi), %xmm19
	vmovdqa64	64(%rdi), %xmm20
	vmovdqa64	80(%rdi), %xmm21
	vmovdqa	96(%rdi), %xmm7
	vmovdqa	112(%rdi), %xmm8
	vpbroadcastq	.LCPI1_0(%rip), %xmm22
	movq	%rdx, %rax
	.p2align	4
.LBB1_4:
	vmovdqu	16(%rsi), %xmm10
	vmovdqu	32(%rsi), %xmm11
	vmovdqu	80(%rsi), %xmm12
	vmovdqu	96(%rsi), %xmm13
	vmovdqu	112(%rsi), %xmm14
	vmovdqa64	%xmm16, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm15
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vmovdqa64	%xmm17, %xmm5
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vmovdqa64	%xmm18, %xmm6
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm1
	vpternlogq	$150, %xmm15, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm9
	vpternlogq	$150, %xmm2, %xmm3, %xmm9
	vmovdqu	48(%rsi), %xmm2
	vmovdqu	64(%rsi), %xmm3
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm14
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm13
	vpclmulqdq	$17, %xmm12, %xmm6, %xmm12
	vpternlogq	$150, %xmm14, %xmm13, %xmm12
	vmovdqa64	%xmm19, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm13
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm14
	vpternlogq	$150, %xmm13, %xmm9, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm9
	vmovdqa64	%xmm20, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm13
	vpternlogq	$150, %xmm9, %xmm1, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm9
	vpternlogq	$150, %xmm1, %xmm14, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm12, %xmm2
	vmovdqa64	%xmm21, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm3
	vpternlogq	$150, %xmm1, %xmm9, %xmm3
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm9
	vpternlogq	$150, %xmm1, %xmm13, %xmm9
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm12
	vpternlogq	$150, %xmm1, %xmm3, %xmm12
	vpxor	(%rsi), %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm2
	vpternlogq	$150, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpslldq	$8, %xmm2, %xmm10
	vpternlogq	$150, %xmm1, %xmm9, %xmm10
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm1
	vmovdqa64	%xmm22, %xmm4
	vpclmulqdq	$16, %xmm4, %xmm10, %xmm0
	vpshufd	$78, %xmm10, %xmm9
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm0
	vpternlogq	$150, %xmm1, %xmm3, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpshufd	$78, %xmm9, %xmm2
	addq	$128, %rsi
	addq	$-128, %rax
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	cmpq	$127, %rax
	ja	.LBB1_4
	shlq	$3, %rdx
	movq	%rax, %r8
	andq	$15, %r8
	je	.LBB1_25
.LBB1_6:
	movl	%eax, %r10d
	andl	$112, %r10d
	movl	$-1, %r9d
	bzhil	%r8d, %r9d, %r8d
	kmovd	%r8d, %k1
	vmovdqu8	(%rsi,%r10), %xmm1 {%k1} {z}
	testq	%r10, %r10
	je	.LBB1_15
	leaq	-16(%r10), %r9
	movq	%r9, %r11
	shrq	$4, %r11
	leaq	2(%r11), %r8
	cmpq	$96, %r9
	cmovaeq	%r11, %r8
	movq	%r8, %r11
	shlq	$4, %r11
	vmovdqa	(%rdi,%r11), %xmm4
	vpxor	(%rsi), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	testq	%r9, %r9
	je	.LBB1_13
	testb	$16, %al
	jne	.LBB1_10
	addq	$-32, %r10
	vmovdqu	16(%rsi), %xmm4
	addq	$16, %rsi
	decq	%r8
	movq	%r8, %r9
	shlq	$4, %r9
	vmovdqa	(%rdi,%r9), %xmm5
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpternlogq	$150, %xmm8, %xmm7, %xmm3
	vpxor	%xmm0, %xmm4, %xmm0
	movq	%r10, %r9
.LBB1_10:
	andl	$112, %eax
	cmpl	$32, %eax
	je	.LBB1_13
	movq	%r8, %rax
	shlq	$4, %rax
	addq	%rdi, %rax
	addq	$-16, %rax
	xorl	%r10d, %r10d
	.p2align	4
.LBB1_12:
	vmovdqa	-16(%rax), %xmm4
	vmovdqa	(%rax), %xmm5
	vmovdqu	16(%rsi,%r10), %xmm6
	vmovdqu	32(%rsi,%r10), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm9, %xmm10
	addq	$-2, %r8
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm4
	vpternlogq	$150, %xmm6, %xmm8, %xmm2
	vpternlogq	$150, %xmm10, %xmm9, %xmm3
	vpternlogq	$150, %xmm4, %xmm5, %xmm0
	addq	$-32, %rax
	addq	$32, %r10
	cmpq	%r10, %r9
	jne	.LBB1_12
.LBB1_13:
	testq	%r8, %r8
	je	.LBB1_14
	vmovdqa	(%rdi), %xmm4
	vmovdqa	16(%rdi), %xmm5
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vmovq	%rdx, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm8, %xmm5
	vpternlogq	$150, %xmm4, %xmm5, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm6, %xmm9, %xmm5
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	jmp	.LBB1_27
.LBB1_2:
	movq	%rdx, %rax
	shlq	$3, %rdx
	movq	%rax, %r8
	andq	$15, %r8
	jne	.LBB1_6
.LBB1_25:
	cmpq	$15, %rax
	jbe	.LBB1_26
	vmovdqa	(%rdi,%rax), %xmm3
	vpxor	(%rsi), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	leaq	-16(%rax), %r8
	cmpq	$16, %r8
	jb	.LBB1_23
	movq	%rax, %r9
	shrq	$4, %r9
	testb	$16, %al
	jne	.LBB1_20
	vmovdqu	16(%rsi), %xmm3
	addq	$16, %rsi
	decq	%r9
	movq	%r9, %r8
	shlq	$4, %r8
	vmovdqa	(%rdi,%r8), %xmm4
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpxor	%xmm1, %xmm5, %xmm1
	vpternlogq	$150, %xmm7, %xmm6, %xmm2
	vpxor	%xmm0, %xmm3, %xmm0
	leaq	-32(%rax), %r8
.LBB1_20:
	cmpq	$32, %rax
	je	.LBB1_23
	shlq	$4, %r9
	leaq	(%r9,%rdi), %rax
	addq	$-16, %rax
	addq	$32, %rsi
	.p2align	4
.LBB1_22:
	vmovdqa	-16(%rax), %xmm3
	vmovdqa	(%rax), %xmm4
	vmovdqu	-16(%rsi), %xmm5
	vmovdqu	(%rsi), %xmm6
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm8, %xmm9
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm5
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm3
	vpternlogq	$150, %xmm5, %xmm7, %xmm1
	vpternlogq	$150, %xmm9, %xmm8, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	addq	$-32, %r8
	addq	$-32, %rax
	addq	$32, %rsi
	cmpq	$15, %r8
	ja	.LBB1_22
.LBB1_23:
	vmovdqa	(%rdi), %xmm3
	vmovq	%rdx, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpternlogq	$150, %xmm1, %xmm5, %xmm3
	jmp	.LBB1_24
.LBB1_26:
	vmovdqa	(%rdi), %xmm1
	vmovq	%rdx, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	jmp	.LBB1_27
.LBB1_14:
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm3, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
.LBB1_15:
	vmovdqa	(%rdi), %xmm2
	vmovdqa	16(%rdi), %xmm3
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vmovq	%rdx, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpternlogq	$150, %xmm1, %xmm6, %xmm3
.LBB1_24:
	vpsrldq	$8, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_0(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm0, %xmm2, %xmm0
	vpternlogq	$150, %xmm1, %xmm3, %xmm0
.LBB1_27:
	vmovdqa	128(%rdi), %xmm1
	vpternlogq	$120, .LCPI1_1(%rip), %xmm0, %xmm1
	vaesenc	144(%rdi), %xmm1, %xmm0
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
.LBB1_28:
	retq
.Lfunc_end1:
	.size	haberdashery_sivmac_skylakex_sign, .Lfunc_end1-haberdashery_sivmac_skylakex_sign
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
	.section	.text.haberdashery_sivmac_skylakex_verify,"ax",@progbits
	.globl	haberdashery_sivmac_skylakex_verify
	.p2align	4
	.type	haberdashery_sivmac_skylakex_verify,@function
haberdashery_sivmac_skylakex_verify:
	.cfi_startproc
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	cmpq	$16, %r8
	setb	%r8b
	xorl	%eax, %eax
	orb	%r9b, %r8b
	jne	.LBB2_28
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %rdx
	jb	.LBB2_2
	vmovdqa64	(%rdi), %xmm16
	vmovdqa64	16(%rdi), %xmm17
	vmovdqa64	32(%rdi), %xmm18
	vmovdqa64	48(%rdi), %xmm19
	vmovdqa64	64(%rdi), %xmm20
	vmovdqa64	80(%rdi), %xmm21
	vmovdqa	96(%rdi), %xmm7
	vmovdqa	112(%rdi), %xmm8
	vpbroadcastq	.LCPI2_0(%rip), %xmm22
	movq	%rdx, %rax
	.p2align	4
.LBB2_4:
	vmovdqu	16(%rsi), %xmm10
	vmovdqu	32(%rsi), %xmm11
	vmovdqu	80(%rsi), %xmm12
	vmovdqu	96(%rsi), %xmm13
	vmovdqu	112(%rsi), %xmm14
	vmovdqa64	%xmm16, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm15
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vmovdqa64	%xmm17, %xmm5
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vmovdqa64	%xmm18, %xmm6
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm0
	vpternlogq	$150, %xmm15, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm9
	vpternlogq	$150, %xmm2, %xmm3, %xmm9
	vmovdqu	48(%rsi), %xmm2
	vmovdqu	64(%rsi), %xmm3
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm14
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm13
	vpclmulqdq	$17, %xmm12, %xmm6, %xmm12
	vpternlogq	$150, %xmm14, %xmm13, %xmm12
	vmovdqa64	%xmm19, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm13
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm14
	vpternlogq	$150, %xmm13, %xmm9, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm9
	vmovdqa64	%xmm20, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm13
	vpternlogq	$150, %xmm9, %xmm0, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm9
	vpternlogq	$150, %xmm0, %xmm14, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	vpternlogq	$150, %xmm0, %xmm12, %xmm2
	vmovdqa64	%xmm21, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm3
	vpternlogq	$150, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm9
	vpternlogq	$150, %xmm0, %xmm13, %xmm9
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm12
	vpternlogq	$150, %xmm0, %xmm3, %xmm12
	vpxor	(%rsi), %xmm1, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm2
	vpternlogq	$150, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpslldq	$8, %xmm2, %xmm10
	vpternlogq	$150, %xmm1, %xmm9, %xmm10
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vmovdqa64	%xmm22, %xmm4
	vpclmulqdq	$16, %xmm4, %xmm10, %xmm1
	vpshufd	$78, %xmm10, %xmm9
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm1
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm9, %xmm2
	addq	$128, %rsi
	addq	$-128, %rax
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	cmpq	$127, %rax
	ja	.LBB2_4
	jmp	.LBB2_5
.LBB2_2:
	movq	%rdx, %rax
.LBB2_5:
	vmovdqu	(%rcx), %xmm0
	shlq	$3, %rdx
	movq	%rax, %rcx
	andq	$15, %rcx
	je	.LBB2_25
	movl	%eax, %r9d
	andl	$112, %r9d
	movl	$-1, %r8d
	bzhil	%ecx, %r8d, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rsi,%r9), %xmm2 {%k1} {z}
	testq	%r9, %r9
	je	.LBB2_15
	leaq	-16(%r9), %r8
	movq	%r8, %r10
	shrq	$4, %r10
	leaq	2(%r10), %rcx
	cmpq	$96, %r8
	cmovaeq	%r10, %rcx
	movq	%rcx, %r10
	shlq	$4, %r10
	vmovdqa	(%rdi,%r10), %xmm5
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	testq	%r8, %r8
	je	.LBB2_13
	testb	$16, %al
	jne	.LBB2_10
	addq	$-32, %r9
	vmovdqu	16(%rsi), %xmm5
	addq	$16, %rsi
	decq	%rcx
	movq	%rcx, %r8
	shlq	$4, %r8
	vmovdqa	(%rdi,%r8), %xmm6
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm6, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm5
	vpxor	%xmm3, %xmm7, %xmm3
	vpternlogq	$150, %xmm9, %xmm8, %xmm4
	vpxor	%xmm1, %xmm5, %xmm1
	movq	%r9, %r8
.LBB2_10:
	andl	$112, %eax
	cmpl	$32, %eax
	je	.LBB2_13
	movq	%rcx, %rax
	shlq	$4, %rax
	addq	%rdi, %rax
	addq	$-16, %rax
	xorl	%r9d, %r9d
	.p2align	4
.LBB2_12:
	vmovdqa	-16(%rax), %xmm5
	vmovdqa	(%rax), %xmm6
	vmovdqu	16(%rsi,%r9), %xmm7
	vmovdqu	32(%rsi,%r9), %xmm8
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm11
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm6
	vpternlogq	$150, %xmm4, %xmm10, %xmm11
	addq	$-2, %rcx
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm9, %xmm3
	vpternlogq	$150, %xmm11, %xmm10, %xmm4
	vpternlogq	$150, %xmm5, %xmm6, %xmm1
	addq	$-32, %rax
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_12
.LBB2_13:
	testq	%rcx, %rcx
	je	.LBB2_14
	vmovdqa	(%rdi), %xmm5
	vmovdqa	16(%rdi), %xmm6
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vmovq	%rdx, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm10
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm5
	vpxor	%xmm9, %xmm8, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm7, %xmm10, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpbroadcastq	.LCPI2_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	jmp	.LBB2_27
.LBB2_25:
	cmpq	$15, %rax
	jbe	.LBB2_26
	vmovdqa	(%rdi,%rax), %xmm4
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	leaq	-16(%rax), %rcx
	cmpq	$16, %rcx
	jb	.LBB2_23
	movq	%rax, %r8
	shrq	$4, %r8
	testb	$16, %al
	jne	.LBB2_20
	vmovdqu	16(%rsi), %xmm4
	addq	$16, %rsi
	decq	%r8
	movq	%r8, %rcx
	shlq	$4, %rcx
	vmovdqa	(%rdi,%rcx), %xmm5
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpternlogq	$150, %xmm8, %xmm7, %xmm3
	vpxor	%xmm1, %xmm4, %xmm1
	leaq	-32(%rax), %rcx
.LBB2_20:
	cmpq	$32, %rax
	je	.LBB2_23
	shlq	$4, %r8
	leaq	(%r8,%rdi), %rax
	addq	$-16, %rax
	addq	$32, %rsi
	.p2align	4
.LBB2_22:
	vmovdqa	-16(%rax), %xmm4
	vmovdqa	(%rax), %xmm5
	vmovdqu	-16(%rsi), %xmm6
	vmovdqu	(%rsi), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm9, %xmm10
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm4
	vpternlogq	$150, %xmm6, %xmm8, %xmm2
	vpternlogq	$150, %xmm10, %xmm9, %xmm3
	vpternlogq	$150, %xmm4, %xmm5, %xmm1
	addq	$-32, %rcx
	addq	$-32, %rax
	addq	$32, %rsi
	cmpq	$15, %rcx
	ja	.LBB2_22
.LBB2_23:
	vmovdqa	(%rdi), %xmm4
	vmovq	%rdx, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpternlogq	$150, %xmm2, %xmm6, %xmm4
	jmp	.LBB2_24
.LBB2_26:
	vmovdqa	(%rdi), %xmm2
	vmovq	%rdx, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm4, %xmm3
	vpbroadcastq	.LCPI2_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	jmp	.LBB2_27
.LBB2_14:
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpbroadcastq	.LCPI2_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm4, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
.LBB2_15:
	vmovdqa	(%rdi), %xmm3
	vmovdqa	16(%rdi), %xmm4
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vmovq	%rdx, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm3
	vpternlogq	$150, %xmm5, %xmm6, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpternlogq	$150, %xmm2, %xmm7, %xmm4
.LBB2_24:
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm1, %xmm3, %xmm1
	vpternlogq	$150, %xmm2, %xmm4, %xmm1
.LBB2_27:
	vmovdqa	128(%rdi), %xmm2
	vpternlogq	$120, .LCPI2_1(%rip), %xmm1, %xmm2
	vaesenc	144(%rdi), %xmm2, %xmm1
	vaesenc	160(%rdi), %xmm1, %xmm1
	vaesenc	176(%rdi), %xmm1, %xmm1
	vaesenc	192(%rdi), %xmm1, %xmm1
	vaesenc	208(%rdi), %xmm1, %xmm1
	vaesenc	224(%rdi), %xmm1, %xmm1
	vaesenc	240(%rdi), %xmm1, %xmm1
	vaesenc	256(%rdi), %xmm1, %xmm1
	vaesenc	272(%rdi), %xmm1, %xmm1
	vaesenc	288(%rdi), %xmm1, %xmm1
	vaesenc	304(%rdi), %xmm1, %xmm1
	vaesenc	320(%rdi), %xmm1, %xmm1
	vaesenc	336(%rdi), %xmm1, %xmm1
	vaesenclast	352(%rdi), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_28:
	retq
.Lfunc_end2:
	.size	haberdashery_sivmac_skylakex_verify, .Lfunc_end2-haberdashery_sivmac_skylakex_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_skylakex_is_supported
	.p2align	4
	.type	haberdashery_sivmac_skylakex_is_supported,@function
haberdashery_sivmac_skylakex_is_supported:
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
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r8
	cpuid
	xchgq	%rbx, %r8

	#NO_APP
	movl	$1, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	andl	$1993871875, %esi
	andl	$125829120, %edi
	orl	%esi, %edi
	notl	%r8d
	andl	$-779157207, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_sivmac_skylakex_is_supported, .Lfunc_end3-haberdashery_sivmac_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

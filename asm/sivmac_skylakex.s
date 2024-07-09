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
	.section	.text.haberdashery_sivmac_skylakex_init,"ax",@progbits
	.globl	haberdashery_sivmac_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylakex_init,@function
haberdashery_sivmac_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm13
	vmovdqu	16(%rsi), %xmm1
	vxorpd	.LCPI0_0(%rip), %xmm13, %xmm14
	vxorpd	.LCPI0_1(%rip), %xmm13, %xmm3
	vxorpd	.LCPI0_2(%rip), %xmm13, %xmm4
	vxorpd	.LCPI0_3(%rip), %xmm13, %xmm2
	vxorpd	.LCPI0_4(%rip), %xmm13, %xmm5
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm6
	vpslldq	$12, %xmm13, %xmm7
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vpbroadcastd	.LCPI0_8(%rip), %xmm29
	vpshufb	%xmm29, %xmm1, %xmm0
	vpbroadcastq	.LCPI0_6(%rip), %xmm6
	vaesenclast	%xmm6, %xmm0, %xmm0
	vmovdqa64	%xmm6, %xmm21
	vpternlogq	$150, %xmm13, %xmm7, %xmm0
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	#NO_APP
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm7
	vpslldq	$12, %xmm1, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm0, %xmm6
	vpxor	%xmm9, %xmm9, %xmm9
	vaesenclast	%xmm9, %xmm6, %xmm6
	vpternlogq	$150, %xmm1, %xmm8, %xmm6
	vpbroadcastq	.LCPI0_7(%rip), %xmm11
	vbroadcastss	.LCPI0_8(%rip), %xmm12
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm5, %xmm5
	vpslldq	$4, %xmm0, %xmm1
	vpslldq	$8, %xmm0, %xmm7
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm1, %xmm7, %xmm8
	vpshufb	%xmm12, %xmm6, %xmm10
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpternlogq	$150, %xmm0, %xmm8, %xmm10
	#NO_APP
	vmovdqa64	%xmm11, %xmm22
	#APP
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm7
	vpternlogq	$150, %xmm0, %xmm1, %xmm7
	vpshufd	$255, %xmm10, %xmm8
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	#NO_APP
	vpbroadcastq	.LCPI0_9(%rip), %xmm11
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpslldq	$12, %xmm10, %xmm6
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	vpshufb	%xmm12, %xmm8, %xmm7
	vaesenclast	%xmm11, %xmm7, %xmm7
	vpternlogq	$150, %xmm10, %xmm6, %xmm7
	#NO_APP
	vmovdqa64	%xmm11, %xmm23
	#APP
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm5, %xmm5
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	vpshufd	$255, %xmm7, %xmm10
	vaesenclast	%xmm9, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm6, %xmm10
	#NO_APP
	vmovddup	.LCPI0_10(%rip), %xmm11
	vmovaps	%xmm11, -24(%rsp)
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm5, %xmm5
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm6
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	vpshufb	%xmm12, %xmm10, %xmm8
	vaesenclast	%xmm11, %xmm8, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpslldq	$12, %xmm10, %xmm6
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	vpshufd	$255, %xmm8, %xmm7
	vaesenclast	%xmm9, %xmm7, %xmm7
	vpternlogq	$150, %xmm10, %xmm6, %xmm7
	#NO_APP
	vmovddup	.LCPI0_11(%rip), %xmm10
	vmovaps	%xmm10, -40(%rsp)
	#APP
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm5, %xmm5
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	vpshufb	%xmm12, %xmm7, %xmm15
	vaesenclast	%xmm10, %xmm15, %xmm15
	vpternlogq	$150, %xmm8, %xmm6, %xmm15
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm5, %xmm5
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm6
	vpslldq	$12, %xmm7, %xmm8
	vpternlogq	$150, %xmm0, %xmm6, %xmm8
	vpshufd	$255, %xmm15, %xmm1
	vaesenclast	%xmm9, %xmm1, %xmm1
	vpternlogq	$150, %xmm7, %xmm8, %xmm1
	#NO_APP
	vmovddup	.LCPI0_12(%rip), %xmm10
	vmovaps	%xmm10, -56(%rsp)
	#APP
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm14, %xmm14
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm5, %xmm5
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm7
	vpslldq	$12, %xmm15, %xmm8
	vpternlogq	$150, %xmm0, %xmm7, %xmm8
	vpshufb	%xmm12, %xmm1, %xmm6
	vaesenclast	%xmm10, %xmm6, %xmm6
	vpternlogq	$150, %xmm15, %xmm8, %xmm6
	#NO_APP
	vpslldq	$4, %xmm1, %xmm0
	vpunpcklqdq	%xmm1, %xmm9, %xmm7
	vinsertps	$55, %xmm1, %xmm0, %xmm8
	vpternlogq	$150, %xmm7, %xmm0, %xmm8
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm9, %xmm0, %xmm0
	vpternlogq	$150, %xmm8, %xmm1, %xmm0
	vpslldq	$4, %xmm6, %xmm7
	vpunpcklqdq	%xmm6, %xmm9, %xmm8
	vinsertps	$55, %xmm6, %xmm0, %xmm15
	vpternlogq	$150, %xmm8, %xmm7, %xmm15
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm29, %xmm0, %xmm1
	vpbroadcastq	.LCPI0_13(%rip), %xmm7
	vaesenclast	%xmm7, %xmm1, %xmm1
	vmovdqa64	%xmm7, %xmm30
	vpternlogq	$150, %xmm15, %xmm6, %xmm1
	#APP
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
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
	vaesenclast	%xmm1, %xmm13, %xmm13
	vaesenclast	%xmm1, %xmm14, %xmm14
	vaesenclast	%xmm1, %xmm3, %xmm3
	vaesenclast	%xmm1, %xmm4, %xmm4
	vaesenclast	%xmm1, %xmm2, %xmm2
	vaesenclast	%xmm1, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm14, %xmm13, %xmm9
	vpbroadcastq	.LCPI0_14(%rip), %xmm0
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm14
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm1
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
	vpclmulqdq	$16, %xmm9, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm9, %xmm14, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm14, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm14, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm6, %xmm6
	vpternlogq	$150, %xmm1, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm1
	vpshufd	$78, %xmm1, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm7
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm8
	vmovdqa64	%xmm6, %xmm31
	vpternlogq	$150, %xmm7, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm1, %xmm8
	vpxorq	%xmm7, %xmm8, %xmm18
	vpslldq	$8, %xmm18, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm7
	vmovdqa64	%xmm6, %xmm27
	vpclmulqdq	$17, %xmm9, %xmm1, %xmm10
	vpxorq	%xmm7, %xmm10, %xmm28
	vpclmulqdq	$16, %xmm9, %xmm15, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm15, %xmm11
	vpxorq	%xmm7, %xmm11, %xmm26
	vpslldq	$8, %xmm26, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm15, %xmm12
	vpxor	%xmm7, %xmm12, %xmm7
	vpshufd	$78, %xmm7, %xmm12
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm7
	vpxor	%xmm7, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm0
	vmovdqa64	%xmm6, %xmm24
	vpclmulqdq	$17, %xmm9, %xmm15, %xmm12
	vmovdqa64	%xmm9, %xmm17
	vpxorq	%xmm0, %xmm12, %xmm25
	vpunpcklqdq	%xmm4, %xmm3, %xmm19
	vpunpcklqdq	%xmm5, %xmm2, %xmm20
	vpxor	%xmm6, %xmm6, %xmm6
	vpunpcklqdq	%xmm3, %xmm6, %xmm4
	vinsertps	$55, %xmm3, %xmm0, %xmm3
	vpshufb	%xmm29, %xmm20, %xmm0
	vmovdqa64	%xmm21, %xmm5
	vaesenclast	%xmm5, %xmm0, %xmm0
	vpslldq	$4, %xmm19, %xmm5
	vpternlogq	$150, %xmm4, %xmm5, %xmm3
	vpternlogq	$150, %xmm3, %xmm19, %xmm0
	vpslldq	$4, %xmm20, %xmm3
	vpunpcklqdq	%xmm2, %xmm6, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm0, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm20, %xmm2
	vpshufb	%xmm29, %xmm2, %xmm3
	vmovdqa64	%xmm22, %xmm4
	vaesenclast	%xmm4, %xmm3, %xmm3
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpslldq	$12, %xmm0, %xmm21
	vpternlogq	$150, %xmm5, %xmm4, %xmm21
	vpternlogq	$150, %xmm21, %xmm0, %xmm3
	vpslldq	$4, %xmm2, %xmm4
	vpslldq	$8, %xmm2, %xmm5
	vpslldq	$12, %xmm2, %xmm21
	vpternlogq	$150, %xmm5, %xmm4, %xmm21
	vpshufd	$255, %xmm3, %xmm4
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm21, %xmm2, %xmm4
	vpshufb	%xmm29, %xmm4, %xmm5
	vmovdqa64	%xmm23, %xmm7
	vaesenclast	%xmm7, %xmm5, %xmm5
	vpslldq	$4, %xmm3, %xmm21
	vpslldq	$8, %xmm3, %xmm22
	vpslldq	$12, %xmm3, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpternlogq	$150, %xmm23, %xmm3, %xmm5
	vpslldq	$4, %xmm4, %xmm21
	vpslldq	$8, %xmm4, %xmm22
	vpslldq	$12, %xmm4, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpshufd	$255, %xmm5, %xmm9
	vaesenclast	%xmm6, %xmm9, %xmm9
	vpternlogq	$150, %xmm23, %xmm4, %xmm9
	vpshufb	%xmm29, %xmm9, %xmm10
	vaesenclast	-24(%rsp), %xmm10, %xmm10
	vpslldq	$4, %xmm5, %xmm21
	vpslldq	$8, %xmm5, %xmm22
	vpslldq	$12, %xmm5, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpternlogq	$150, %xmm23, %xmm5, %xmm10
	vpslldq	$4, %xmm9, %xmm21
	vpslldq	$8, %xmm9, %xmm22
	vpslldq	$12, %xmm9, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpshufd	$255, %xmm10, %xmm12
	vaesenclast	%xmm6, %xmm12, %xmm12
	vpternlogq	$150, %xmm23, %xmm9, %xmm12
	vpshufb	%xmm29, %xmm12, %xmm8
	vaesenclast	-40(%rsp), %xmm8, %xmm8
	vpslldq	$4, %xmm10, %xmm21
	vpslldq	$8, %xmm10, %xmm22
	vpslldq	$12, %xmm10, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpternlogq	$150, %xmm23, %xmm10, %xmm8
	vpslldq	$4, %xmm12, %xmm21
	vpslldq	$8, %xmm12, %xmm22
	vpslldq	$12, %xmm12, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpshufd	$255, %xmm8, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpternlogq	$150, %xmm23, %xmm12, %xmm11
	vpshufb	%xmm29, %xmm11, %xmm7
	vaesenclast	-56(%rsp), %xmm7, %xmm7
	vpslldq	$4, %xmm8, %xmm21
	vpslldq	$8, %xmm8, %xmm22
	vpslldq	$12, %xmm8, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpternlogq	$150, %xmm23, %xmm8, %xmm7
	vpshufd	$255, %xmm7, %xmm6
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm6, %xmm6
	vmovdqa64	%xmm17, (%rdi)
	vmovdqa	%xmm14, 16(%rdi)
	vpshufd	$78, %xmm27, %xmm13
	vpshufd	$78, %xmm24, %xmm14
	vmovdqa64	%xmm31, 32(%rdi)
	vmovdqa	%xmm15, 48(%rdi)
	vpsrldq	$8, %xmm26, %xmm15
	vpternlogq	$150, %xmm15, %xmm25, %xmm14
	vmovdqa	%xmm14, 64(%rdi)
	vmovdqa	%xmm1, 80(%rdi)
	vpsrldq	$8, %xmm18, %xmm1
	vpternlogq	$150, %xmm1, %xmm28, %xmm13
	vmovdqa	%xmm13, 96(%rdi)
	vmovdqa64	%xmm16, 112(%rdi)
	vmovdqa64	%xmm19, 128(%rdi)
	vmovdqa64	%xmm20, 144(%rdi)
	vmovdqa	%xmm0, 160(%rdi)
	vmovdqa	%xmm2, 176(%rdi)
	vmovdqa	%xmm3, 192(%rdi)
	vmovdqa	%xmm4, 208(%rdi)
	vmovdqa	%xmm5, 224(%rdi)
	vmovdqa	%xmm9, 240(%rdi)
	vmovdqa	%xmm10, 256(%rdi)
	vmovdqa	%xmm12, 272(%rdi)
	vmovdqa	%xmm8, 288(%rdi)
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpternlogq	$150, %xmm2, %xmm11, %xmm6
	vmovdqa	%xmm11, 304(%rdi)
	vpshufb	%xmm29, %xmm6, %xmm0
	vmovdqa64	%xmm30, %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm2
	vpslldq	$12, %xmm7, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm7, %xmm0
	vmovdqa	%xmm7, 320(%rdi)
	vmovdqa	%xmm6, 336(%rdi)
	vmovdqa	%xmm0, 352(%rdi)
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
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylakex_sign,@function
haberdashery_sivmac_skylakex_sign:
	.cfi_startproc
	cmpq	$16, %r8
	sete	%r8b
	movabsq	$68719476737, %rax
	cmpq	%rax, %rdx
	setb	%al
	andb	%r8b, %al
	cmpb	$1, %al
	jne	.LBB1_27
	leaq	(,%rdx,8), %r8
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$128, %rdx
	jb	.LBB1_4
	vmovdqa64	(%rdi), %xmm16
	vmovdqa64	16(%rdi), %xmm17
	vmovdqa64	32(%rdi), %xmm18
	vmovdqa64	48(%rdi), %xmm19
	vmovdqa64	64(%rdi), %xmm20
	vmovdqa64	80(%rdi), %xmm21
	vmovdqa	96(%rdi), %xmm7
	vmovdqa	112(%rdi), %xmm8
	vpbroadcastq	.LCPI1_0(%rip), %xmm22
	.p2align	4, 0x90
.LBB1_3:
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
	addq	$-128, %rdx
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	cmpq	$127, %rdx
	ja	.LBB1_3
.LBB1_4:
	vmovq	%r8, %xmm0
	movq	%rdx, %r8
	andq	$15, %r8
	je	.LBB1_24
	movl	%edx, %r10d
	andl	$112, %r10d
	leaq	(%rsi,%r10), %r9
	movl	$-1, %r11d
	bzhil	%r8d, %r11d, %r8d
	kmovd	%r8d, %k1
	#APP

	vmovdqu8	(%r9), %xmm2 {%k1} {z}

	#NO_APP
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
	vmovdqa	(%rdi,%r11), %xmm5
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	testq	%r9, %r9
	je	.LBB1_12
	testb	$16, %dl
	jne	.LBB1_9
	leaq	-32(%r10), %r9
	vmovdqu	16(%rsi), %xmm5
	addq	$16, %rsi
	decq	%r8
	movq	%r8, %rdx
	shlq	$4, %rdx
	vmovdqa	(%rdi,%rdx), %xmm6
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm6, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm5
	vpxor	%xmm3, %xmm7, %xmm3
	vpternlogq	$150, %xmm9, %xmm8, %xmm4
	vpxor	%xmm1, %xmm5, %xmm1
.LBB1_9:
	cmpl	$32, %r10d
	je	.LBB1_12
	movq	%r8, %rdx
	shlq	$4, %rdx
	addq	%rdi, %rdx
	addq	$-16, %rdx
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB1_11:
	vmovdqa	-16(%rdx), %xmm5
	vmovdqa	(%rdx), %xmm6
	vmovdqu	16(%rsi,%r10), %xmm7
	vmovdqu	32(%rsi,%r10), %xmm8
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm11
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm6
	vpternlogq	$150, %xmm4, %xmm10, %xmm11
	addq	$-2, %r8
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm9, %xmm3
	vpternlogq	$150, %xmm11, %xmm10, %xmm4
	vpternlogq	$150, %xmm5, %xmm6, %xmm1
	addq	$-32, %rdx
	addq	$32, %r10
	cmpq	%r10, %r9
	jne	.LBB1_11
.LBB1_12:
	testq	%r8, %r8
	je	.LBB1_14
	vmovdqa	(%rdi), %xmm5
	vmovdqa	16(%rdi), %xmm6
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm0
	vpxor	%xmm9, %xmm8, %xmm5
	vpternlogq	$150, %xmm0, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm0
	vpxor	%xmm6, %xmm7, %xmm5
	vpternlogq	$150, %xmm0, %xmm5, %xmm3
	vpsrldq	$8, %xmm4, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	jmp	.LBB1_26
.LBB1_24:
	cmpq	$15, %rdx
	jbe	.LBB1_25
	movq	%rdx, %r9
	andq	$-16, %r9
	vmovdqa	(%rdi,%r9), %xmm4
	vpxor	(%rsi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	leaq	-16(%rdx), %r8
	cmpq	$16, %r8
	jb	.LBB1_22
	movq	%rdx, %r10
	shrq	$4, %r10
	testb	$16, %dl
	jne	.LBB1_19
	vmovdqu	16(%rsi), %xmm4
	addq	$16, %rsi
	decq	%r10
	movq	%r10, %r8
	shlq	$4, %r8
	vmovdqa	(%rdi,%r8), %xmm5
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpternlogq	$150, %xmm8, %xmm7, %xmm3
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$-32, %rdx
	movq	%rdx, %r8
.LBB1_19:
	cmpq	$32, %r9
	je	.LBB1_22
	addq	$32, %rsi
	shlq	$4, %r10
	leaq	(%r10,%rdi), %rdx
	addq	$-16, %rdx
	.p2align	4, 0x90
.LBB1_21:
	vmovdqa	-16(%rdx), %xmm4
	vmovdqa	(%rdx), %xmm5
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
	addq	$-32, %r8
	addq	$32, %rsi
	addq	$-32, %rdx
	cmpq	$15, %r8
	ja	.LBB1_21
.LBB1_22:
	vmovdqa	(%rdi), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$8, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm5, %xmm3
	jmp	.LBB1_23
.LBB1_25:
	vmovdqa	(%rdi), %xmm2
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm4
	vpxor	%xmm0, %xmm3, %xmm1
	vpternlogq	$150, %xmm2, %xmm4, %xmm1
	jmp	.LBB1_26
.LBB1_14:
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpbroadcastq	.LCPI1_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm4, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
.LBB1_15:
	vmovdqa	(%rdi), %xmm3
	vmovdqa	16(%rdi), %xmm4
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm5, %xmm6, %xmm0
	vpslldq	$8, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm4, %xmm3
.LBB1_23:
	vpsrldq	$8, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_0(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
.LBB1_26:
	vmovdqa	128(%rdi), %xmm0
	vpternlogq	$120, .LCPI1_1(%rip), %xmm1, %xmm0
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
.LBB1_27:
	movzbl	%al, %eax
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
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylakex_verify,@function
haberdashery_sivmac_skylakex_verify:
	.cfi_startproc
	xorl	%eax, %eax
	movabsq	$68719476736, %r9
	cmpq	%r9, %rdx
	ja	.LBB2_28
	cmpq	$16, %r8
	jb	.LBB2_28
	leaq	(,%rdx,8), %rax
	vpxor	%xmm2, %xmm2, %xmm2
	cmpq	$128, %rdx
	jb	.LBB2_5
	vmovdqa64	(%rdi), %xmm16
	vmovdqa64	16(%rdi), %xmm17
	vmovdqa64	32(%rdi), %xmm18
	vmovdqa64	48(%rdi), %xmm19
	vmovdqa64	64(%rdi), %xmm20
	vmovdqa64	80(%rdi), %xmm21
	vmovdqa	96(%rdi), %xmm7
	vmovdqa	112(%rdi), %xmm8
	vpbroadcastq	.LCPI2_0(%rip), %xmm22
	.p2align	4, 0x90
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
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vmovdqa64	%xmm18, %xmm6
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm0
	vpternlogq	$150, %xmm15, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm9
	vpternlogq	$150, %xmm1, %xmm3, %xmm9
	vmovdqu	48(%rsi), %xmm1
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
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm13
	vpternlogq	$150, %xmm9, %xmm0, %xmm13
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm9
	vpternlogq	$150, %xmm0, %xmm14, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpternlogq	$150, %xmm0, %xmm12, %xmm1
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
	vpxor	(%rsi), %xmm2, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm10
	vpternlogq	$150, %xmm1, %xmm12, %xmm10
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpslldq	$8, %xmm10, %xmm2
	vpternlogq	$150, %xmm1, %xmm9, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vmovdqa64	%xmm22, %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	vpsrldq	$8, %xmm10, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	addq	$128, %rsi
	addq	$-128, %rdx
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	cmpq	$127, %rdx
	ja	.LBB2_4
.LBB2_5:
	vmovdqu	(%rcx), %xmm0
	vmovq	%rax, %xmm1
	movq	%rdx, %rax
	andq	$15, %rax
	je	.LBB2_25
	movl	%edx, %r8d
	andl	$112, %r8d
	leaq	(%rsi,%r8), %rcx
	movl	$-1, %r9d
	bzhil	%eax, %r9d, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm3 {%k1} {z}

	#NO_APP
	testq	%r8, %r8
	je	.LBB2_16
	leaq	-16(%r8), %rcx
	movq	%rcx, %r9
	shrq	$4, %r9
	leaq	2(%r9), %rax
	cmpq	$96, %rcx
	cmovaeq	%r9, %rax
	movq	%rax, %r9
	shlq	$4, %r9
	vmovdqa	(%rdi,%r9), %xmm6
	vpxor	(%rsi), %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	testq	%rcx, %rcx
	je	.LBB2_13
	testb	$16, %dl
	jne	.LBB2_10
	leaq	-32(%r8), %rcx
	vmovdqu	16(%rsi), %xmm6
	addq	$16, %rsi
	decq	%rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	vmovdqa	(%rdi,%rdx), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm6
	vpxor	%xmm4, %xmm8, %xmm4
	vpternlogq	$150, %xmm10, %xmm9, %xmm5
	vpxor	%xmm2, %xmm6, %xmm2
.LBB2_10:
	cmpl	$32, %r8d
	je	.LBB2_13
	movq	%rax, %rdx
	shlq	$4, %rdx
	addq	%rdi, %rdx
	addq	$-16, %rdx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB2_12:
	vmovdqa	-16(%rdx), %xmm6
	vmovdqa	(%rdx), %xmm7
	vmovdqu	16(%rsi,%r8), %xmm8
	vmovdqu	32(%rsi,%r8), %xmm9
	vpclmulqdq	$0, %xmm8, %xmm7, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm7, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm7, %xmm7
	vpternlogq	$150, %xmm5, %xmm11, %xmm12
	addq	$-2, %rax
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm6
	vpternlogq	$150, %xmm8, %xmm10, %xmm4
	vpternlogq	$150, %xmm12, %xmm11, %xmm5
	vpternlogq	$150, %xmm6, %xmm7, %xmm2
	addq	$-32, %rdx
	addq	$32, %r8
	cmpq	%r8, %rcx
	jne	.LBB2_12
.LBB2_13:
	testq	%rax, %rax
	je	.LBB2_15
	vmovdqa	(%rdi), %xmm6
	vmovdqa	16(%rdi), %xmm7
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm10
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm1
	vpxor	%xmm10, %xmm9, %xmm6
	vpternlogq	$150, %xmm1, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm7, %xmm8, %xmm6
	vpternlogq	$150, %xmm1, %xmm6, %xmm4
	vpsrldq	$8, %xmm5, %xmm1
	vpbroadcastq	.LCPI2_0(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm1, %xmm3, %xmm5
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	jmp	.LBB2_27
.LBB2_25:
	cmpq	$15, %rdx
	jbe	.LBB2_26
	movq	%rdx, %rcx
	andq	$-16, %rcx
	vmovdqa	(%rdi,%rcx), %xmm5
	vpxor	(%rsi), %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	leaq	-16(%rdx), %rax
	cmpq	$16, %rax
	jb	.LBB2_23
	movq	%rdx, %r8
	shrq	$4, %r8
	testb	$16, %dl
	jne	.LBB2_20
	vmovdqu	16(%rsi), %xmm5
	addq	$16, %rsi
	decq	%r8
	movq	%r8, %rax
	shlq	$4, %rax
	vmovdqa	(%rdi,%rax), %xmm6
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm6, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm5
	vpxor	%xmm3, %xmm7, %xmm3
	vpternlogq	$150, %xmm9, %xmm8, %xmm4
	vpxor	%xmm2, %xmm5, %xmm2
	addq	$-32, %rdx
	movq	%rdx, %rax
.LBB2_20:
	cmpq	$32, %rcx
	je	.LBB2_23
	addq	$32, %rsi
	shlq	$4, %r8
	leaq	(%r8,%rdi), %rcx
	addq	$-16, %rcx
	.p2align	4, 0x90
.LBB2_22:
	vmovdqa	-16(%rcx), %xmm5
	vmovdqa	(%rcx), %xmm6
	vmovdqu	-16(%rsi), %xmm7
	vmovdqu	(%rsi), %xmm8
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm11
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm6
	vpternlogq	$150, %xmm4, %xmm10, %xmm11
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm9, %xmm3
	vpternlogq	$150, %xmm11, %xmm10, %xmm4
	vpternlogq	$150, %xmm5, %xmm6, %xmm2
	addq	$-32, %rax
	addq	$32, %rsi
	addq	$-32, %rcx
	cmpq	$15, %rax
	ja	.LBB2_22
.LBB2_23:
	vmovdqa	(%rdi), %xmm5
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$8, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	jmp	.LBB2_24
.LBB2_26:
	vmovdqa	(%rdi), %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpsrldq	$8, %xmm4, %xmm3
	vpbroadcastq	.LCPI2_0(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm5
	vpxor	%xmm1, %xmm4, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	jmp	.LBB2_27
.LBB2_15:
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpbroadcastq	.LCPI2_0(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm5, %xmm6, %xmm5
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
.LBB2_16:
	vmovdqa	(%rdi), %xmm4
	vmovdqa	16(%rdi), %xmm5
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm6, %xmm7, %xmm1
	vpslldq	$8, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm5, %xmm4
.LBB2_24:
	vpsrldq	$8, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm2, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm4, %xmm2
.LBB2_27:
	vmovdqa	128(%rdi), %xmm1
	vpternlogq	$120, .LCPI2_1(%rip), %xmm2, %xmm1
	vaesenc	144(%rdi), %xmm1, %xmm1
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
	.p2align	4, 0x90
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
	andl	$-779157207, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_sivmac_skylakex_is_supported, .Lfunc_end3-haberdashery_sivmac_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

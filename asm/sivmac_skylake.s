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
	.section	.text.haberdashery_sivmac_skylake_init,"ax",@progbits
	.globl	haberdashery_sivmac_skylake_init
	.p2align	4, 0x90
	.type	haberdashery_sivmac_skylake_init,@function
haberdashery_sivmac_skylake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vxorpd	.LCPI0_0(%rip), %xmm0, %xmm2
	vxorpd	.LCPI0_1(%rip), %xmm0, %xmm3
	vxorpd	.LCPI0_2(%rip), %xmm0, %xmm4
	vxorpd	.LCPI0_3(%rip), %xmm0, %xmm6
	vxorpd	.LCPI0_4(%rip), %xmm0, %xmm7
	vpslldq	$4, %xmm0, %xmm5
	vpslldq	$8, %xmm0, %xmm8
	vpslldq	$12, %xmm0, %xmm9
	vpbroadcastd	.LCPI0_8(%rip), %xmm28
	vpternlogq	$150, %xmm8, %xmm5, %xmm9
	vpshufb	%xmm28, %xmm1, %xmm5
	vpbroadcastq	.LCPI0_6(%rip), %xmm8
	vmovdqa	%xmm8, -24(%rsp)
	vaesenclast	%xmm8, %xmm5, %xmm10
	vpternlogq	$150, %xmm9, %xmm0, %xmm10
	vaesenc	%xmm1, %xmm0, %xmm14
	vaesenc	%xmm1, %xmm2, %xmm0
	vaesenc	%xmm1, %xmm3, %xmm8
	vaesenc	%xmm1, %xmm4, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vpslldq	$4, %xmm1, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpslldq	$12, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufd	$255, %xmm10, %xmm2
	vpxor	%xmm12, %xmm12, %xmm12
	vaesenclast	%xmm12, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm4, %xmm2
	vpbroadcastq	.LCPI0_7(%rip), %xmm13
	vbroadcastss	.LCPI0_8(%rip), %xmm1
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpslldq	$12, %xmm10, %xmm9
	vpternlogq	$150, %xmm3, %xmm4, %xmm9
	vpshufb	%xmm1, %xmm2, %xmm11
	vaesenclast	%xmm13, %xmm11, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	#NO_APP
	vmovdqa64	%xmm13, %xmm21
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vpslldq	$4, %xmm2, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpslldq	$12, %xmm2, %xmm9
	vpternlogq	$150, %xmm3, %xmm4, %xmm9
	vpshufd	$255, %xmm11, %xmm10
	vaesenclast	%xmm12, %xmm10, %xmm10
	vpternlogq	$150, %xmm2, %xmm9, %xmm10
	#NO_APP
	vpbroadcastq	.LCPI0_9(%rip), %xmm13
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vpslldq	$4, %xmm11, %xmm2
	vpslldq	$8, %xmm11, %xmm3
	vpslldq	$12, %xmm11, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufb	%xmm1, %xmm10, %xmm9
	vaesenclast	%xmm13, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm4, %xmm9
	#NO_APP
	vmovdqa64	%xmm13, %xmm23
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vpslldq	$4, %xmm10, %xmm2
	vpslldq	$8, %xmm10, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufd	$255, %xmm9, %xmm11
	vaesenclast	%xmm12, %xmm11, %xmm11
	vpternlogq	$150, %xmm10, %xmm4, %xmm11
	#NO_APP
	vpbroadcastq	.LCPI0_10(%rip), %xmm13
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vpslldq	$4, %xmm9, %xmm2
	vpslldq	$8, %xmm9, %xmm3
	vpslldq	$12, %xmm9, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufb	%xmm1, %xmm11, %xmm10
	vaesenclast	%xmm13, %xmm10, %xmm10
	vpternlogq	$150, %xmm9, %xmm4, %xmm10
	#NO_APP
	vmovdqa64	%xmm13, %xmm22
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vpslldq	$4, %xmm11, %xmm2
	vpslldq	$8, %xmm11, %xmm3
	vpslldq	$12, %xmm11, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufd	$255, %xmm10, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm4, %xmm9
	#NO_APP
	vmovddup	.LCPI0_11(%rip), %xmm13
	vmovaps	%xmm13, -40(%rsp)
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vpslldq	$4, %xmm10, %xmm2
	vpslldq	$8, %xmm10, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufb	%xmm1, %xmm9, %xmm11
	vaesenclast	%xmm13, %xmm11, %xmm11
	vpternlogq	$150, %xmm10, %xmm4, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vpslldq	$4, %xmm9, %xmm2
	vpslldq	$8, %xmm9, %xmm3
	vpslldq	$12, %xmm9, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufd	$255, %xmm11, %xmm13
	vaesenclast	%xmm12, %xmm13, %xmm13
	vpternlogq	$150, %xmm9, %xmm4, %xmm13
	#NO_APP
	vpbroadcastq	.LCPI0_12(%rip), %xmm9
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vpslldq	$4, %xmm11, %xmm2
	vpslldq	$8, %xmm11, %xmm3
	vpslldq	$12, %xmm11, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpshufb	%xmm1, %xmm13, %xmm15
	vaesenclast	%xmm9, %xmm15, %xmm15
	vpternlogq	$150, %xmm11, %xmm4, %xmm15
	#NO_APP
	vmovdqa64	%xmm9, %xmm29
	vpslldq	$4, %xmm13, %xmm1
	vxorpd	%xmm4, %xmm4, %xmm4
	vunpcklpd	%xmm13, %xmm4, %xmm2
	vinsertps	$55, %xmm13, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm15, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm9
	vpternlogq	$150, %xmm3, %xmm13, %xmm9
	vpslldq	$4, %xmm15, %xmm1
	vpunpcklqdq	%xmm15, %xmm4, %xmm2
	vinsertps	$55, %xmm15, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpbroadcastq	.LCPI0_13(%rip), %xmm2
	vmovdqa	%xmm2, -56(%rsp)
	vpshufb	%xmm28, %xmm9, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm11
	vpternlogq	$150, %xmm3, %xmm15, %xmm11
	vaesenc	%xmm13, %xmm14, %xmm1
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm0, %xmm0
	vpunpcklqdq	%xmm0, %xmm1, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpbroadcastq	.LCPI0_14(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm3
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm1
	vpternlogq	$150, %xmm4, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm17
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm4, %xmm17
	vpclmulqdq	$16, %xmm14, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm1, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm3, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufd	$78, %xmm4, %xmm10
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm10
	vpclmulqdq	$17, %xmm14, %xmm3, %xmm12
	vmovdqa64	%xmm3, %xmm27
	vpxor	%xmm10, %xmm12, %xmm10
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm1, %xmm10, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm1
	vpshufd	$78, %xmm1, %xmm10
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm10
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm12
	vmovdqa64	%xmm4, %xmm31
	vpternlogq	$150, %xmm10, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm10
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm12
	vpxorq	%xmm10, %xmm12, %xmm18
	vpslldq	$8, %xmm18, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm12
	vpxor	%xmm10, %xmm12, %xmm10
	vpshufd	$78, %xmm10, %xmm12
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm10
	vpxor	%xmm12, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm10
	vmovdqa64	%xmm4, %xmm19
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm12
	vpxorq	%xmm10, %xmm12, %xmm26
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm10
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm12
	vpxorq	%xmm10, %xmm12, %xmm20
	vpslldq	$8, %xmm20, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm12
	vpxor	%xmm10, %xmm12, %xmm10
	vpshufd	$78, %xmm10, %xmm12
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm10
	vpxor	%xmm12, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm0
	vmovdqa64	%xmm4, %xmm16
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm12
	vmovdqa64	%xmm14, %xmm30
	vpxorq	%xmm0, %xmm12, %xmm24
	vaesenc	%xmm13, %xmm8, %xmm0
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenclast	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm5, %xmm5
	vaesenclast	%xmm11, %xmm6, %xmm6
	vaesenclast	%xmm11, %xmm7, %xmm7
	vpunpcklqdq	%xmm5, %xmm0, %xmm25
	vpunpcklqdq	%xmm7, %xmm6, %xmm11
	vpslldq	$8, %xmm0, %xmm5
	vpslldq	$12, %xmm0, %xmm7
	vpshufb	%xmm28, %xmm11, %xmm0
	vaesenclast	-24(%rsp), %xmm0, %xmm0
	vpslldq	$4, %xmm25, %xmm8
	vpternlogq	$150, %xmm5, %xmm8, %xmm7
	vpternlogq	$150, %xmm7, %xmm25, %xmm0
	vpslldq	$4, %xmm11, %xmm5
	vpslldq	$8, %xmm6, %xmm7
	vpslldq	$12, %xmm6, %xmm6
	vpternlogq	$150, %xmm7, %xmm5, %xmm6
	vpshufd	$255, %xmm0, %xmm5
	vpxor	%xmm9, %xmm9, %xmm9
	vaesenclast	%xmm9, %xmm5, %xmm5
	vpternlogq	$150, %xmm6, %xmm11, %xmm5
	vpshufb	%xmm28, %xmm5, %xmm6
	vmovdqa64	%xmm21, %xmm4
	vaesenclast	%xmm4, %xmm6, %xmm6
	vpslldq	$4, %xmm0, %xmm7
	vpslldq	$8, %xmm0, %xmm8
	vpslldq	$12, %xmm0, %xmm13
	vpternlogq	$150, %xmm8, %xmm7, %xmm13
	vpternlogq	$150, %xmm13, %xmm0, %xmm6
	vpslldq	$4, %xmm5, %xmm7
	vpslldq	$8, %xmm5, %xmm8
	vpslldq	$12, %xmm5, %xmm13
	vpternlogq	$150, %xmm8, %xmm7, %xmm13
	vpshufd	$255, %xmm6, %xmm7
	vaesenclast	%xmm9, %xmm7, %xmm7
	vpternlogq	$150, %xmm13, %xmm5, %xmm7
	vpshufb	%xmm28, %xmm7, %xmm8
	vmovdqa64	%xmm23, %xmm4
	vaesenclast	%xmm4, %xmm8, %xmm8
	vpslldq	$4, %xmm6, %xmm13
	vpslldq	$8, %xmm6, %xmm15
	vpslldq	$12, %xmm6, %xmm21
	vpternlogq	$150, %xmm15, %xmm13, %xmm21
	vpternlogq	$150, %xmm21, %xmm6, %xmm8
	vpslldq	$4, %xmm7, %xmm13
	vpslldq	$8, %xmm7, %xmm15
	vpslldq	$12, %xmm7, %xmm21
	vpternlogq	$150, %xmm15, %xmm13, %xmm21
	vpshufd	$255, %xmm8, %xmm13
	vaesenclast	%xmm9, %xmm13, %xmm13
	vpternlogq	$150, %xmm21, %xmm7, %xmm13
	vpshufb	%xmm28, %xmm13, %xmm15
	vmovdqa64	%xmm22, %xmm4
	vaesenclast	%xmm4, %xmm15, %xmm15
	vpslldq	$4, %xmm8, %xmm21
	vpslldq	$8, %xmm8, %xmm22
	vpslldq	$12, %xmm8, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpternlogq	$150, %xmm23, %xmm8, %xmm15
	vpslldq	$4, %xmm13, %xmm21
	vpslldq	$8, %xmm13, %xmm22
	vpslldq	$12, %xmm13, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpshufd	$255, %xmm15, %xmm12
	vaesenclast	%xmm9, %xmm12, %xmm12
	vpternlogq	$150, %xmm23, %xmm13, %xmm12
	vpshufb	%xmm28, %xmm12, %xmm10
	vaesenclast	-40(%rsp), %xmm10, %xmm10
	vpslldq	$4, %xmm15, %xmm21
	vpslldq	$8, %xmm15, %xmm22
	vpslldq	$12, %xmm15, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpternlogq	$150, %xmm23, %xmm15, %xmm10
	vpslldq	$4, %xmm12, %xmm21
	vpslldq	$8, %xmm12, %xmm22
	vpslldq	$12, %xmm12, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpshufd	$255, %xmm10, %xmm4
	vaesenclast	%xmm9, %xmm4, %xmm4
	vpternlogq	$150, %xmm23, %xmm12, %xmm4
	vpshufb	%xmm28, %xmm4, %xmm9
	vmovdqa64	%xmm29, %xmm14
	vaesenclast	%xmm14, %xmm9, %xmm9
	vpslldq	$4, %xmm10, %xmm21
	vpslldq	$8, %xmm10, %xmm22
	vpslldq	$12, %xmm10, %xmm23
	vpternlogq	$150, %xmm22, %xmm21, %xmm23
	vpternlogq	$150, %xmm23, %xmm10, %xmm9
	vpshufd	$255, %xmm9, %xmm14
	vpxor	%xmm3, %xmm3, %xmm3
	vaesenclast	%xmm3, %xmm14, %xmm14
	vmovdqa64	%xmm30, (%rdi)
	vmovdqa64	%xmm27, 16(%rdi)
	vpshufd	$78, %xmm19, %xmm3
	vpshufd	$78, %xmm16, %xmm21
	vmovdqa64	%xmm31, 32(%rdi)
	vmovdqa	%xmm2, 48(%rdi)
	vpsrldq	$8, %xmm20, %xmm2
	vpternlogq	$150, %xmm2, %xmm24, %xmm21
	vmovdqa64	%xmm21, 64(%rdi)
	vmovdqa	%xmm1, 80(%rdi)
	vpsrldq	$8, %xmm18, %xmm1
	vpternlogq	$150, %xmm1, %xmm26, %xmm3
	vmovdqa	%xmm3, 96(%rdi)
	vmovdqa64	%xmm17, 112(%rdi)
	vmovdqa64	%xmm25, 128(%rdi)
	vmovdqa	%xmm11, 144(%rdi)
	vmovdqa	%xmm0, 160(%rdi)
	vmovdqa	%xmm5, 176(%rdi)
	vmovdqa	%xmm6, 192(%rdi)
	vmovdqa	%xmm7, 208(%rdi)
	vmovdqa	%xmm8, 224(%rdi)
	vmovdqa	%xmm13, 240(%rdi)
	vmovdqa	%xmm15, 256(%rdi)
	vmovdqa	%xmm12, 272(%rdi)
	vmovdqa	%xmm10, 288(%rdi)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpternlogq	$150, %xmm2, %xmm4, %xmm14
	vmovdqa	%xmm4, 304(%rdi)
	vpshufb	%xmm28, %xmm14, %xmm0
	vaesenclast	-56(%rsp), %xmm0, %xmm0
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm2
	vpslldq	$12, %xmm9, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm9, %xmm0
	vmovdqa	%xmm9, 320(%rdi)
	vmovdqa	%xmm14, 336(%rdi)
	vmovdqa	%xmm0, 352(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_sivmac_skylake_init, .Lfunc_end0-haberdashery_sivmac_skylake_init
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
	vmovdqa	(%rdi), %xmm15
	vpxor	%xmm10, %xmm10, %xmm10
	cmpq	$128, %rdx
	jae	.LBB1_15
	movq	%r12, %rax
	jmp	.LBB1_3
.LBB1_15:
	vmovdqa64	16(%r15), %xmm17
	vmovdqa64	32(%r15), %xmm18
	vmovdqa64	48(%r15), %xmm19
	vmovdqa64	64(%r15), %xmm20
	vmovdqa	80(%r15), %xmm4
	vmovdqa	96(%r15), %xmm5
	vmovdqa	112(%r15), %xmm6
	vpbroadcastq	.LCPI1_0(%rip), %xmm21
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB1_16:
	vmovdqu	16(%rsi), %xmm8
	vmovdqu	32(%rsi), %xmm9
	vmovdqa64	%xmm10, %xmm16
	vmovdqu	80(%rsi), %xmm10
	vmovdqu	96(%rsi), %xmm11
	vmovdqu	112(%rsi), %xmm12
	vpclmulqdq	$0, %xmm12, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm15, %xmm14
	vmovdqa	%xmm15, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm15, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vmovdqa64	%xmm17, %xmm2
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm0
	vpternlogq	$150, %xmm7, %xmm14, %xmm0
	vmovdqa64	%xmm18, %xmm3
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm7
	vpternlogq	$150, %xmm13, %xmm15, %xmm7
	vmovdqa	%xmm1, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm14
	vpternlogq	$150, %xmm13, %xmm0, %xmm14
	vmovdqu	48(%rsi), %xmm0
	vmovdqu	64(%rsi), %xmm13
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm12
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm10
	vpternlogq	$150, %xmm12, %xmm11, %xmm10
	vmovdqa64	%xmm19, %xmm1
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm12
	vpternlogq	$150, %xmm11, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm11
	vmovdqa64	%xmm20, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm14
	vpternlogq	$150, %xmm11, %xmm7, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm11
	vpternlogq	$150, %xmm7, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpternlogq	$150, %xmm7, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm10
	vpternlogq	$150, %xmm7, %xmm11, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm11
	vpternlogq	$150, %xmm7, %xmm14, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm12
	vpternlogq	$150, %xmm7, %xmm10, %xmm12
	vpxorq	(%rsi), %xmm16, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm8
	vpternlogq	$150, %xmm9, %xmm0, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm9
	vpternlogq	$150, %xmm0, %xmm12, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm0
	vpslldq	$8, %xmm9, %xmm10
	vpternlogq	$150, %xmm0, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm0
	vmovdqa64	%xmm21, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm7
	vpshufd	$78, %xmm10, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm10
	vpternlogq	$150, %xmm0, %xmm8, %xmm10
	vpsrldq	$8, %xmm9, %xmm0
	vpshufd	$78, %xmm7, %xmm7
	addq	$-128, %rax
	subq	$-128, %rsi
	vpternlogq	$150, %xmm0, %xmm7, %xmm10
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
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, (%rsp)
	movq	%rsp, %rdi
	vmovdqa	%xmm15, 32(%rsp)
	vmovdqa	%xmm10, 16(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm15
	vmovdqa	16(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
.LBB1_12:
	testq	%r14, %r14
	je	.LBB1_14
	shlq	$3, %r12
	vmovq	%r12, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
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
	vpxor	(%rsi), %xmm10, %xmm0
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_7:
	vpbroadcastq	.LCPI1_0(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_8:
	vpxor	(%rsi), %xmm10, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm3, %xmm4
	vpternlogq	$150, 16(%rsi), %xmm2, %xmm4
	addq	$-32, %rax
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm3, %xmm4, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
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

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_0:
	.quad	-4467570830351532032
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.quad	-1
	.quad	9223372036854775807
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
	vmovdqa	(%rdi), %xmm15
	vpxor	%xmm10, %xmm10, %xmm10
	cmpq	$128, %r14
	jae	.LBB2_15
	movq	%r14, %rax
	jmp	.LBB2_4
.LBB2_15:
	vmovdqa64	16(%rbx), %xmm17
	vmovdqa64	32(%rbx), %xmm18
	vmovdqa64	48(%rbx), %xmm19
	vmovdqa64	64(%rbx), %xmm20
	vmovdqa	80(%rbx), %xmm4
	vmovdqa	96(%rbx), %xmm5
	vmovdqa	112(%rbx), %xmm6
	vpbroadcastq	.LCPI2_0(%rip), %xmm21
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB2_16:
	vmovdqu	16(%rsi), %xmm8
	vmovdqu	32(%rsi), %xmm9
	vmovdqa64	%xmm10, %xmm16
	vmovdqu	80(%rsi), %xmm10
	vmovdqu	96(%rsi), %xmm11
	vmovdqu	112(%rsi), %xmm12
	vpclmulqdq	$0, %xmm12, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm15, %xmm14
	vmovdqa	%xmm15, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm15, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vmovdqa64	%xmm17, %xmm2
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm0
	vpternlogq	$150, %xmm7, %xmm14, %xmm0
	vmovdqa64	%xmm18, %xmm3
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm7
	vpternlogq	$150, %xmm13, %xmm15, %xmm7
	vmovdqa	%xmm1, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm14
	vpternlogq	$150, %xmm13, %xmm0, %xmm14
	vmovdqu	48(%rsi), %xmm0
	vmovdqu	64(%rsi), %xmm13
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm12
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm10
	vpternlogq	$150, %xmm12, %xmm11, %xmm10
	vmovdqa64	%xmm19, %xmm1
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm12
	vpternlogq	$150, %xmm11, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm11
	vmovdqa64	%xmm20, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm14
	vpternlogq	$150, %xmm11, %xmm7, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm11
	vpternlogq	$150, %xmm7, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpternlogq	$150, %xmm7, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm10
	vpternlogq	$150, %xmm7, %xmm11, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm11
	vpternlogq	$150, %xmm7, %xmm14, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm12
	vpternlogq	$150, %xmm7, %xmm10, %xmm12
	vpxorq	(%rsi), %xmm16, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm8
	vpternlogq	$150, %xmm9, %xmm0, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm9
	vpternlogq	$150, %xmm0, %xmm12, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm0
	vpslldq	$8, %xmm9, %xmm10
	vpternlogq	$150, %xmm0, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm0
	vmovdqa64	%xmm21, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm7
	vpshufd	$78, %xmm10, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm10
	vpternlogq	$150, %xmm0, %xmm8, %xmm10
	vpsrldq	$8, %xmm9, %xmm0
	vpshufd	$78, %xmm7, %xmm7
	addq	$-128, %rax
	subq	$-128, %rsi
	vpternlogq	$150, %xmm0, %xmm7, %xmm10
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
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, (%rsp)
	movq	%rsp, %rdi
	vmovdqa	%xmm15, 48(%rsp)
	vmovdqa	%xmm10, 16(%rsp)
	vmovdqa	%xmm5, 32(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	16(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
.LBB2_13:
	shlq	$3, %r14
	vmovq	%r14, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa	128(%rbx), %xmm1
	vpternlogq	$120, .LCPI2_1(%rip), %xmm0, %xmm1
	vaesenc	144(%rbx), %xmm1, %xmm0
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
	vpxor	(%rsi), %xmm10, %xmm0
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_0(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB2_11
.LBB2_8:
	vpbroadcastq	.LCPI2_0(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_9:
	vpxor	(%rsi), %xmm10, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm3, %xmm4
	vpternlogq	$150, 16(%rsi), %xmm2, %xmm4
	addq	$-32, %rax
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm3, %xmm4, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
	cmpq	$15, %rax
	ja	.LBB2_9
.LBB2_10:
	movq	%rax, %rdx
	vmovdqu	(%rcx), %xmm5
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
	andl	$-779221719, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_sivmac_skylake_is_supported, .Lfunc_end3-haberdashery_sivmac_skylake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

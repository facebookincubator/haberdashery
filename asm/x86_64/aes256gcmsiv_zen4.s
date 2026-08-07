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
.LCPI0_14:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
.LCPI0_15:
	.quad	0
	.quad	8
.LCPI0_24:
	.long	32
	.long	0
	.long	0
	.long	0
.LCPI0_25:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI0_26:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_6:
	.quad	4294967297
.LCPI0_7:
	.quad	8589934594
.LCPI0_8:
	.quad	17179869188
.LCPI0_9:
	.quad	34359738376
.LCPI0_10:
	.quad	68719476752
.LCPI0_11:
	.quad	137438953504
.LCPI0_12:
	.quad	274877907008
.LCPI0_13:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.LCPI0_16:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_17:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI0_18:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI0_19:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI0_20:
	.long	16
	.long	0
	.long	0
	.long	0
	.long	17
	.long	0
	.long	0
	.long	0
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI0_21:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
.LCPI0_22:
	.long	24
	.long	0
	.long	0
	.long	0
	.long	25
	.long	0
	.long	0
	.long	0
	.long	26
	.long	0
	.long	0
	.long	0
	.long	27
	.long	0
	.long	0
	.long	0
.LCPI0_23:
	.long	28
	.long	0
	.long	0
	.long	0
	.long	29
	.long	0
	.long	0
	.long	0
	.long	30
	.long	0
	.long	0
	.long	0
	.long	31
	.long	0
	.long	0
	.long	0
.LCPI0_28:
	.byte	1
	.byte	0
.LCPI0_29:
	.byte	2
	.byte	0
.LCPI0_30:
	.byte	3
	.byte	0
.LCPI0_31:
	.byte	8
	.byte	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_27:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_zen4_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_zen4_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_zen4_decrypt,@function
haberdashery_aes256gcmsiv_zen4_decrypt:
	.cfi_startproc
	subq	$1784, %rsp
	.cfi_def_cfa_offset 1792
	movq	1792(%rsp), %r10
	xorl	%eax, %eax
	cmpq	1824(%rsp), %r10
	jne	.LBB0_54
	cmpq	$12, %rdx
	jne	.LBB0_54
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB0_54
	cmpq	%rdx, %r10
	jae	.LBB0_54
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	cmpq	$16, 1808(%rsp)
	vmovdqa	16(%rdi), %xmm7
	vmovdqa	32(%rdi), %xmm8
	vmovdqa	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI0_0(%rip), %xmm2, %xmm4
	vxorps	.LCPI0_1(%rip), %xmm2, %xmm3
	vxorps	.LCPI0_2(%rip), %xmm2, %xmm5
	vxorps	.LCPI0_3(%rip), %xmm2, %xmm1
	vxorps	.LCPI0_4(%rip), %xmm2, %xmm15
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm15, %xmm15
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm15, %xmm15
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm15, %xmm15
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovdqa	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm15, %xmm15
	#NO_APP
	jb	.LBB0_54
	vmovlhps	%xmm4, %xmm2, %xmm28
	vmovlhps	%xmm5, %xmm3, %xmm22
	vxorps	%xmm2, %xmm2, %xmm2
	vmovlhps	%xmm3, %xmm2, %xmm5
	vinsertps	$55, %xmm3, %xmm0, %xmm3
	vpbroadcastd	.LCPI0_27(%rip), %xmm0
	vpunpcklqdq	%xmm15, %xmm1, %xmm25
	vpbroadcastq	.LCPI0_13(%rip), %xmm11
	vpslldq	$4, %xmm22, %xmm4
	vpclmulqdq	$17, %xmm28, %xmm28, %xmm7
	vmovups	%zmm22, 1200(%rsp)
	vpternlogq	$150, %xmm5, %xmm4, %xmm3
	vpbroadcastq	.LCPI0_6(%rip), %xmm5
	vpshufb	%xmm0, %xmm25, %xmm4
	vaesenclast	%xmm5, %xmm4, %xmm27
	vmovlhps	%xmm1, %xmm2, %xmm4
	vinsertps	$55, %xmm1, %xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm22, %xmm27
	vpslldq	$4, %xmm25, %xmm3
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm27, %xmm3
	vpslldq	$8, %xmm27, %xmm4
	vaesenclast	%xmm2, %xmm3, %xmm29
	vpslldq	$4, %xmm27, %xmm3
	vpternlogq	$150, %xmm5, %xmm25, %xmm29
	vpslldq	$12, %xmm27, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpbroadcastq	.LCPI0_7(%rip), %xmm4
	vpshufb	%xmm0, %xmm29, %xmm3
	vaesenclast	%xmm4, %xmm3, %xmm30
	vpslldq	$4, %xmm29, %xmm3
	vpslldq	$8, %xmm29, %xmm4
	vpternlogq	$150, %xmm5, %xmm27, %xmm30
	vpslldq	$12, %xmm29, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm30, %xmm3
	vpslldq	$8, %xmm30, %xmm4
	vaesenclast	%xmm2, %xmm3, %xmm31
	vpslldq	$4, %xmm30, %xmm3
	vpternlogq	$150, %xmm5, %xmm29, %xmm31
	vpslldq	$12, %xmm30, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpbroadcastq	.LCPI0_8(%rip), %xmm4
	vpshufb	%xmm0, %xmm31, %xmm3
	vaesenclast	%xmm4, %xmm3, %xmm16
	vpslldq	$4, %xmm31, %xmm3
	vpslldq	$8, %xmm31, %xmm4
	vpternlogq	$150, %xmm5, %xmm30, %xmm16
	vpslldq	$12, %xmm31, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm16, %xmm3
	vpslldq	$8, %xmm16, %xmm4
	vaesenclast	%xmm2, %xmm3, %xmm18
	vpslldq	$4, %xmm16, %xmm3
	vpternlogq	$150, %xmm5, %xmm31, %xmm18
	vpslldq	$12, %xmm16, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpbroadcastq	.LCPI0_9(%rip), %xmm4
	vpshufb	%xmm0, %xmm18, %xmm3
	vmovdqu64	%zmm18, 944(%rsp)
	vaesenclast	%xmm4, %xmm3, %xmm12
	vpslldq	$4, %xmm18, %xmm3
	vpslldq	$8, %xmm18, %xmm4
	vpternlogq	$150, %xmm5, %xmm16, %xmm12
	vpslldq	$12, %xmm18, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm12, %xmm3
	vpclmulqdq	$0, %xmm28, %xmm28, %xmm4
	vpslldq	$12, %xmm12, %xmm6
	vmovups	%zmm12, 560(%rsp)
	vaesenclast	%xmm2, %xmm3, %xmm13
	vpslldq	$4, %xmm12, %xmm3
	vpternlogq	$150, %xmm5, %xmm18, %xmm13
	vpslldq	$8, %xmm12, %xmm5
	vpternlogq	$150, %xmm5, %xmm3, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm3
	vpshufd	$78, %xmm4, %xmm4
	vpshufb	%xmm0, %xmm13, %xmm5
	vmovdqu64	%zmm13, 496(%rsp)
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm7, %xmm4, %xmm3
	vpbroadcastq	.LCPI0_10(%rip), %xmm7
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm5, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpternlogq	$150, %xmm6, %xmm12, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm19
	vpslldq	$4, %xmm13, %xmm4
	vmovdqu64	%zmm14, 432(%rsp)
	vpternlogq	$150, %xmm3, %xmm5, %xmm19
	vpclmulqdq	$1, %xmm19, %xmm19, %xmm5
	vpclmulqdq	$0, %xmm19, %xmm19, %xmm3
	vpclmulqdq	$17, %xmm19, %xmm19, %xmm6
	vmovdqu64	%zmm19, 880(%rsp)
	vpxor	%xmm5, %xmm5, %xmm5
	vpslldq	$8, %xmm5, %xmm7
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm10
	vpxor	%xmm6, %xmm7, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm10
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm6
	vpternlogq	$150, %xmm5, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm19, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm19, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm19, %xmm3
	vpclmulqdq	$17, %xmm10, %xmm19, %xmm5
	vmovdqu64	%zmm10, 368(%rsp)
	vpxor	%xmm7, %xmm4, %xmm4
	vpslldq	$8, %xmm4, %xmm7
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm20
	vpxor	%xmm5, %xmm7, %xmm5
	vpslldq	$12, %xmm14, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm20
	vpshufd	$255, %xmm14, %xmm4
	vaesenclast	%xmm2, %xmm4, %xmm26
	vpclmulqdq	$1, %xmm20, %xmm19, %xmm4
	vpclmulqdq	$16, %xmm20, %xmm19, %xmm5
	vpclmulqdq	$0, %xmm20, %xmm19, %xmm3
	vmovdqu64	%zmm20, 304(%rsp)
	vpxor	%xmm4, %xmm5, %xmm4
	vpternlogq	$150, %xmm6, %xmm13, %xmm26
	vpclmulqdq	$17, %xmm20, %xmm19, %xmm5
	vpslldq	$8, %xmm4, %xmm6
	vpsrldq	$8, %xmm4, %xmm4
	vmovdqu64	%zmm26, 1136(%rsp)
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm21
	vpxor	%xmm5, %xmm6, %xmm5
	vpternlogq	$150, %xmm4, %xmm5, %xmm21
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm21, %xmm19, %xmm6
	vpclmulqdq	$16, %xmm21, %xmm19, %xmm8
	vpclmulqdq	$0, %xmm21, %xmm19, %xmm3
	vpternlogq	$150, %xmm5, %xmm4, %xmm7
	vpshufb	%xmm0, %xmm26, %xmm4
	vmovdqu64	%zmm21, 240(%rsp)
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm21, %xmm19, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm9
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm9
	vpshufd	$78, %xmm3, %xmm23
	vpxor	%xmm8, %xmm9, %xmm8
	vpternlogq	$150, %xmm6, %xmm8, %xmm23
	vpbroadcastq	.LCPI0_11(%rip), %xmm6
	vpclmulqdq	$1, %xmm23, %xmm19, %xmm5
	vpclmulqdq	$16, %xmm23, %xmm19, %xmm8
	vpclmulqdq	$0, %xmm23, %xmm19, %xmm3
	vmovdqu64	%zmm23, 176(%rsp)
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm23, %xmm19, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm9
	vpshufd	$78, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm24
	vpxor	%xmm3, %xmm9, %xmm3
	vpternlogq	$150, %xmm7, %xmm14, %xmm24
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm9
	vpshufd	$78, %xmm3, %xmm0
	vmovdqu64	%zmm24, 1072(%rsp)
	vpxor	%xmm8, %xmm9, %xmm8
	vpternlogq	$150, %xmm5, %xmm8, %xmm0
	vpslldq	$4, %xmm26, %xmm5
	vpslldq	$12, %xmm26, %xmm8
	vpclmulqdq	$1, %xmm0, %xmm19, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm19, %xmm6
	vpclmulqdq	$0, %xmm0, %xmm19, %xmm3
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm19, %xmm6
	vpslldq	$8, %xmm4, %xmm7
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm9
	vpxor	%xmm6, %xmm7, %xmm6
	vpternlogq	$150, %xmm4, %xmm6, %xmm9
	vpslldq	$8, %xmm26, %xmm4
	vpternlogq	$150, %xmm4, %xmm5, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm19, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm19, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm19, %xmm3
	vpshufd	$255, %xmm24, %xmm4
	vmovdqu64	%zmm9, -16(%rsp)
	vaesenclast	%xmm2, %xmm4, %xmm17
	vpclmulqdq	$17, %xmm9, %xmm19, %xmm4
	vpxor	%xmm7, %xmm5, %xmm2
	vpslldq	$8, %xmm2, %xmm5
	vpternlogq	$150, %xmm8, %xmm26, %xmm17
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqu64	%zmm17, 1008(%rsp)
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm8
	vpxor	%xmm4, %xmm5, %xmm4
	vpternlogq	$150, %xmm2, %xmm4, %xmm8
	vmovdqu64	%zmm8, 1712(%rsp)
	cmpq	$576, %r8
	jb	.LBB0_9
	vpbroadcastq	.LCPI0_13(%rip), %zmm11
	vshufi64x2	$0, %zmm10, %zmm10, %zmm4
	vmovdqa64	%zmm8, %zmm10
	vshufi64x2	$0, %zmm19, %zmm19, %zmm2
	vshufi64x2	$0, %zmm20, %zmm20, %zmm5
	vshufi64x2	$0, %zmm21, %zmm21, %zmm6
	vshufi64x2	$0, %zmm23, %zmm23, %zmm7
	vshufi64x2	$0, %zmm0, %zmm0, %zmm8
	vshufi64x2	$0, %zmm9, %zmm9, %zmm9
	vshufi64x2	$0, %zmm10, %zmm10, %zmm10
	vmovapd	%zmm16, %zmm26
	vpxor	%xmm3, %xmm3, %xmm3
	movq	%r8, %rdx
	.p2align	4
.LBB0_7:
	vmovdqu64	448(%rcx), %zmm12
	vmovdqu64	384(%rcx), %zmm17
	vmovdqu64	320(%rcx), %zmm21
	vpxord	(%rcx), %zmm3, %zmm3
	addq	$-512, %rdx
	vpunpcklqdq	%zmm12, %zmm2, %zmm13
	vpunpckhqdq	%zmm12, %zmm2, %zmm16
	vpunpcklqdq	%zmm17, %zmm4, %zmm20
	vpunpckhqdq	%zmm17, %zmm4, %zmm19
	vpclmulqdq	$0, %zmm12, %zmm2, %zmm14
	vpclmulqdq	$0, %zmm17, %zmm4, %zmm18
	vpunpcklqdq	%zmm21, %zmm5, %zmm22
	vpunpckhqdq	%zmm21, %zmm5, %zmm24
	vpclmulqdq	$0, %zmm21, %zmm5, %zmm23
	vpclmulqdq	$17, %zmm17, %zmm4, %zmm17
	vpxorq	%zmm13, %zmm16, %zmm13
	vpclmulqdq	$17, %zmm12, %zmm2, %zmm16
	vpxorq	%zmm20, %zmm19, %zmm12
	vmovdqu64	256(%rcx), %zmm20
	vpxorq	%zmm22, %zmm24, %zmm22
	vpclmulqdq	$1, %zmm12, %zmm12, %zmm19
	vpclmulqdq	$1, %zmm13, %zmm13, %zmm13
	vpclmulqdq	$1, %zmm22, %zmm22, %zmm22
	vmovdqu64	64(%rcx), %zmm12
	vpxorq	%zmm14, %zmm18, %zmm14
	vpclmulqdq	$17, %zmm21, %zmm5, %zmm18
	vpxorq	%zmm16, %zmm17, %zmm16
	vpxorq	%zmm13, %zmm19, %zmm13
	vpunpcklqdq	%zmm20, %zmm6, %zmm19
	vpunpckhqdq	%zmm20, %zmm6, %zmm21
	vpclmulqdq	$0, %zmm20, %zmm6, %zmm24
	vpxorq	%zmm19, %zmm21, %zmm19
	vmovdqu64	192(%rcx), %zmm21
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm19
	vpternlogq	$150, %zmm23, %zmm14, %zmm24
	vpclmulqdq	$17, %zmm20, %zmm6, %zmm14
	vpternlogq	$150, %zmm22, %zmm13, %zmm19
	vpternlogq	$150, %zmm18, %zmm16, %zmm14
	vpclmulqdq	$0, %zmm12, %zmm9, %zmm18
	vpunpcklqdq	%zmm21, %zmm7, %zmm17
	vpunpckhqdq	%zmm21, %zmm7, %zmm20
	vpclmulqdq	$0, %zmm21, %zmm7, %zmm23
	vpclmulqdq	$17, %zmm21, %zmm7, %zmm13
	vpxorq	%zmm17, %zmm20, %zmm17
	vmovdqu64	128(%rcx), %zmm20
	leaq	512(%rcx), %rcx
	vpclmulqdq	$1, %zmm17, %zmm17, %zmm17
	vpunpcklqdq	%zmm20, %zmm8, %zmm21
	vpunpckhqdq	%zmm20, %zmm8, %zmm22
	vpclmulqdq	$17, %zmm20, %zmm8, %zmm16
	vpxorq	%zmm21, %zmm22, %zmm21
	vpclmulqdq	$0, %zmm20, %zmm8, %zmm22
	vpunpckhqdq	%zmm12, %zmm9, %zmm20
	vpclmulqdq	$1, %zmm21, %zmm21, %zmm21
	vpternlogq	$150, %zmm13, %zmm14, %zmm16
	vpunpcklqdq	%zmm3, %zmm10, %zmm13
	vpunpckhqdq	%zmm3, %zmm10, %zmm14
	vpxorq	%zmm13, %zmm14, %zmm13
	vpclmulqdq	$0, %zmm3, %zmm10, %zmm14
	vpclmulqdq	$17, %zmm3, %zmm10, %zmm3
	vpternlogq	$150, %zmm23, %zmm24, %zmm22
	vpternlogq	$150, %zmm17, %zmm19, %zmm21
	vpunpcklqdq	%zmm12, %zmm9, %zmm17
	vpclmulqdq	$17, %zmm12, %zmm9, %zmm12
	vpclmulqdq	$1, %zmm13, %zmm13, %zmm13
	vpxorq	%zmm17, %zmm20, %zmm17
	vpclmulqdq	$1, %zmm17, %zmm17, %zmm17
	vpternlogq	$150, %zmm18, %zmm22, %zmm14
	vpternlogq	$150, %zmm12, %zmm16, %zmm3
	vpternlogq	$150, %zmm17, %zmm21, %zmm13
	vpternlogq	$150, %zmm14, %zmm3, %zmm13
	vpslldq	$8, %zmm13, %zmm12
	vpsrldq	$8, %zmm13, %zmm13
	vxorpd	%zmm14, %zmm12, %zmm12
	vpclmulqdq	$16, %zmm11, %zmm12, %zmm14
	vpshufd	$78, %zmm12, %zmm12
	vpxorq	%zmm12, %zmm14, %zmm12
	vpclmulqdq	$16, %zmm11, %zmm12, %zmm14
	vpshufd	$78, %zmm12, %zmm12
	vpxorq	%zmm3, %zmm14, %zmm3
	vpternlogd	$150, %zmm12, %zmm13, %zmm3
	cmpq	$575, %rdx
	ja	.LBB0_7
	vmovapd	%zmm26, %zmm16
	vmovupd	944(%rsp), %zmm18
	vmovupd	560(%rsp), %zmm12
	vmovupd	496(%rsp), %zmm13
	vmovupd	432(%rsp), %zmm14
	vpbroadcastq	.LCPI0_13(%rip), %xmm11
	vmovupd	1136(%rsp), %zmm26
	vmovdqu64	1072(%rsp), %zmm24
	vmovdqu64	1008(%rsp), %zmm17
	vmovdqu64	880(%rsp), %zmm19
	vmovups	1200(%rsp), %zmm22
	jmp	.LBB0_10
.LBB0_9:
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	movq	%r8, %rdx
	movq	%r8, %rax
	cmpq	$64, %r8
	jb	.LBB0_18
.LBB0_10:
	vmovdqu64	(%rcx), %zmm4
	addq	$64, %rcx
	leaq	-64(%rdx), %rax
	cmpq	$128, %rdx
	jb	.LBB0_17
	addq	$-128, %rdx
	vshufi64x2	$0, %zmm19, %zmm19, %zmm2
	movl	%edx, %edi
	notl	%edi
	testb	$-64, %dil
	je	.LBB0_14
	vpbroadcastq	.LCPI0_13(%rip), %zmm5
	movl	%edx, %edi
	shrl	$6, %edi
	incl	%edi
	andl	$3, %edi
	.p2align	4
.LBB0_13:
	vpxord	%zmm4, %zmm3, %zmm3
	vmovdqu64	(%rcx), %zmm4
	addq	$64, %rcx
	addq	$-64, %rax
	decq	%rdi
	vpunpcklqdq	%zmm3, %zmm2, %zmm6
	vpunpckhqdq	%zmm3, %zmm2, %zmm8
	vpclmulqdq	$0, %zmm3, %zmm2, %zmm7
	vpclmulqdq	$17, %zmm3, %zmm2, %zmm3
	vpxorq	%zmm6, %zmm8, %zmm6
	vpclmulqdq	$1, %zmm6, %zmm6, %zmm6
	vpternlogq	$150, %zmm7, %zmm3, %zmm6
	vpslldq	$8, %zmm6, %zmm8
	vpsrldq	$8, %zmm6, %zmm6
	vxorpd	%zmm7, %zmm8, %zmm7
	vpclmulqdq	$16, %zmm5, %zmm7, %zmm8
	vpshufd	$78, %zmm7, %zmm7
	vpxorq	%zmm7, %zmm8, %zmm7
	vpclmulqdq	$16, %zmm5, %zmm7, %zmm8
	vpshufd	$78, %zmm7, %zmm7
	vpxorq	%zmm3, %zmm8, %zmm3
	vpternlogd	$150, %zmm6, %zmm7, %zmm3
	jne	.LBB0_13
.LBB0_14:
	cmpq	$192, %rdx
	jb	.LBB0_17
	vpbroadcastq	.LCPI0_13(%rip), %zmm5
	.p2align	4
.LBB0_16:
	vpxord	%zmm4, %zmm3, %zmm3
	addq	$-256, %rax
	vpunpcklqdq	%zmm3, %zmm2, %zmm4
	vpunpckhqdq	%zmm3, %zmm2, %zmm7
	vpclmulqdq	$0, %zmm3, %zmm2, %zmm6
	vpclmulqdq	$17, %zmm3, %zmm2, %zmm3
	vpxorq	%zmm4, %zmm7, %zmm4
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpternlogq	$150, %zmm6, %zmm3, %zmm4
	vpslldq	$8, %zmm4, %zmm7
	vpsrldq	$8, %zmm4, %zmm4
	vxorpd	%zmm6, %zmm7, %zmm6
	vpclmulqdq	$16, %zmm5, %zmm6, %zmm7
	vpshufd	$78, %zmm6, %zmm6
	vpxorq	%zmm6, %zmm7, %zmm6
	vpclmulqdq	$16, %zmm5, %zmm6, %zmm7
	vpshufd	$78, %zmm6, %zmm6
	vpternlogd	$150, %zmm3, %zmm4, %zmm7
	vpternlogd	$150, (%rcx), %zmm6, %zmm7
	vpunpcklqdq	%zmm7, %zmm2, %zmm3
	vpunpckhqdq	%zmm7, %zmm2, %zmm6
	vpclmulqdq	$0, %zmm7, %zmm2, %zmm4
	vpxorq	%zmm3, %zmm6, %zmm3
	vpclmulqdq	$17, %zmm7, %zmm2, %zmm6
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm4, %zmm6, %zmm3
	vpslldq	$8, %zmm3, %zmm7
	vpsrldq	$8, %zmm3, %zmm3
	vxorpd	%zmm4, %zmm7, %zmm4
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm7
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm7, %zmm4
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm7
	vpshufd	$78, %zmm4, %zmm4
	vpternlogd	$150, %zmm6, %zmm3, %zmm7
	vpternlogd	$150, 64(%rcx), %zmm4, %zmm7
	vpunpcklqdq	%zmm7, %zmm2, %zmm3
	vpunpckhqdq	%zmm7, %zmm2, %zmm6
	vpclmulqdq	$0, %zmm7, %zmm2, %zmm4
	vpxorq	%zmm3, %zmm6, %zmm3
	vpclmulqdq	$17, %zmm7, %zmm2, %zmm6
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm4, %zmm6, %zmm3
	vpslldq	$8, %zmm3, %zmm7
	vpsrldq	$8, %zmm3, %zmm3
	vxorpd	%zmm4, %zmm7, %zmm4
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm7
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm7, %zmm4
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm7
	vpshufd	$78, %zmm4, %zmm8
	vmovdqu64	192(%rcx), %zmm4
	vpternlogd	$150, %zmm6, %zmm3, %zmm7
	vpternlogd	$150, 128(%rcx), %zmm8, %zmm7
	addq	$256, %rcx
	vpunpcklqdq	%zmm7, %zmm2, %zmm3
	vpunpckhqdq	%zmm7, %zmm2, %zmm8
	vpclmulqdq	$0, %zmm7, %zmm2, %zmm6
	vpclmulqdq	$17, %zmm7, %zmm2, %zmm7
	vpxorq	%zmm3, %zmm8, %zmm3
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm6, %zmm7, %zmm3
	vpslldq	$8, %zmm3, %zmm8
	vxorpd	%zmm6, %zmm8, %zmm6
	vpsrldq	$8, %zmm3, %zmm8
	vpclmulqdq	$16, %zmm5, %zmm6, %zmm3
	vpshufd	$78, %zmm6, %zmm6
	vpxorq	%zmm6, %zmm3, %zmm3
	vpclmulqdq	$16, %zmm5, %zmm3, %zmm6
	vpshufd	$78, %zmm3, %zmm9
	vpxorq	%zmm7, %zmm6, %zmm3
	vpternlogd	$150, %zmm8, %zmm9, %zmm3
	cmpq	$63, %rax
	ja	.LBB0_16
.LBB0_17:
	vpxord	%zmm3, %zmm4, %zmm2
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm3
	vextracti128	$1, %ymm2, %xmm5
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm6
	vpslldq	$8, %xmm4, %xmm7
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vextracti32x4	$2, %zmm2, %xmm6
	vextracti32x4	$3, %zmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm7, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm28, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm28, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm28, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm28, %xmm3
	vpxor	%xmm5, %xmm7, %xmm5
	vpslldq	$8, %xmm5, %xmm7
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm7
	vpternlogq	$150, %xmm6, %xmm3, %xmm7
	vpshufd	$78, %xmm4, %xmm3
	vpternlogq	$150, %xmm5, %xmm7, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm28, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm28, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm28, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm28, %xmm3
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpternlogq	$150, %xmm2, %xmm3, %xmm6
	vpshufd	$78, %xmm4, %xmm2
	vpternlogq	$150, %xmm5, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpxor	%xmm2, %xmm5, %xmm5
	vpshufd	$78, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
.LBB0_18:
	vpshufb	.LCPI0_5(%rip), %xmm17, %xmm6
	vpbroadcastq	.LCPI0_12(%rip), %xmm7
	movq	1800(%rsp), %rdx
	vpslldq	$4, %xmm24, %xmm4
	vpslldq	$8, %xmm24, %xmm5
	vpslldq	$12, %xmm24, %xmm3
	cmpq	$16, %rax
	jb	.LBB0_24
	leaq	-16(%rax), %rdi
	movl	%edi, %r11d
	notl	%r11d
	testb	$48, %r11b
	je	.LBB0_22
	movl	%edi, %r11d
	shrl	$4, %r11d
	incl	%r11d
	andl	$3, %r11d
	.p2align	4
.LBB0_21:
	vpxor	(%rcx), %xmm2, %xmm2
	addq	$-16, %rax
	addq	$16, %rcx
	decq	%r11
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm10
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpxor	%xmm2, %xmm10, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, %xmm9, %xmm10, %xmm2
	jne	.LBB0_21
.LBB0_22:
	cmpq	$48, %rdi
	jb	.LBB0_24
	.p2align	4
.LBB0_23:
	vpxor	(%rcx), %xmm2, %xmm2
	addq	$-64, %rax
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm10
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpternlogq	$150, %xmm2, %xmm9, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, 16(%rcx), %xmm10, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm10
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpternlogq	$150, %xmm2, %xmm9, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, 32(%rcx), %xmm10, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm10
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpternlogq	$150, %xmm2, %xmm9, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, 48(%rcx), %xmm10, %xmm2
	addq	$64, %rcx
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm10
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpxor	%xmm2, %xmm10, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, %xmm9, %xmm10, %xmm2
	cmpq	$15, %rax
	ja	.LBB0_23
.LBB0_24:
	vmovdqu	(%rdx), %xmm9
	vaesenclast	%xmm7, %xmm6, %xmm10
	vpternlogq	$150, %xmm5, %xmm4, %xmm3
	testq	%rax, %rax
	je	.LBB0_26
	movl	$-1, %edx
	bzhil	%eax, %edx, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rcx), %xmm4 {%k1} {z}
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpxor	%xmm2, %xmm6, %xmm6
	vpshufd	$78, %xmm4, %xmm2
	vpternlogq	$150, %xmm5, %xmm6, %xmm2
.LBB0_26:
	vmovd	8(%rsi), %xmm8
	vmovq	(%rsi), %xmm20
	vporq	.LCPI0_14(%rip), %xmm9, %xmm21
	movq	1816(%rsp), %rax
	vmovq	%r10, %xmm4
	vmovq	%r8, %xmm5
	vpternlogq	$150, %xmm3, %xmm24, %xmm10
	vmovdqa64	%xmm2, %xmm23
	cmpq	$1087, %r10
	jbe	.LBB0_30
	vbroadcasti32x4	.LCPI0_15(%rip), %zmm11
	vshufi64x2	$0, %zmm21, %zmm21, %zmm2
	vmovdqa	%xmm5, -112(%rsp)
	vmovdqa	%xmm4, -96(%rsp)
	vmovdqa	%xmm8, -64(%rsp)
	vmovdqa	%xmm9, -128(%rsp)
	vpaddd	.LCPI0_16(%rip), %zmm2, %zmm3
	vpaddd	.LCPI0_17(%rip), %zmm2, %zmm4
	vpaddd	.LCPI0_18(%rip), %zmm2, %zmm5
	vpaddd	.LCPI0_19(%rip), %zmm2, %zmm6
	vpaddd	.LCPI0_20(%rip), %zmm2, %zmm7
	vpaddd	.LCPI0_21(%rip), %zmm2, %zmm8
	vpaddd	.LCPI0_22(%rip), %zmm2, %zmm9
	vpaddd	.LCPI0_23(%rip), %zmm2, %zmm2
	vmovdqu64	%zmm0, 1584(%rsp)
	vshufi64x2	$0, %zmm22, %zmm22, %zmm0
	vmovdqu64	%zmm10, 48(%rsp)
	vmovups	%zmm27, 816(%rsp)
	vmovaps	%xmm28, -48(%rsp)
	vshufi64x2	$0, %zmm30, %zmm30, %zmm28
	vmovups	%zmm29, 752(%rsp)
	vmovups	%zmm30, 688(%rsp)
	vshufi64x2	$0, %zmm16, %zmm16, %zmm30
	vmovups	%zmm31, 624(%rsp)
	vmovdqa64	%xmm20, -80(%rsp)
	vshufi64x2	$0, %zmm13, %zmm13, %zmm20
	vshufi64x2	$0, %zmm14, %zmm14, %zmm22
	vshufi64x2	$0, %zmm24, %zmm24, %zmm24
	vmovaps	%xmm25, -32(%rsp)
	vmovups	%zmm16, 1648(%rsp)
	vpaddd	.LCPI0_24(%rip), %xmm21, %xmm21
	leaq	512(%r9), %rcx
	leaq	512(%rax), %rdx
	addq	$-512, %r10
	vinserti32x4	$1, %xmm25, %ymm0, %ymm10
	vmovdqu64	%zmm0, 1456(%rsp)
	vinserti32x4	$0, %xmm25, %zmm10, %zmm10
	vpermi2q	%zmm15, %zmm1, %zmm11
	vpxord	%zmm0, %zmm3, %zmm3
	vpxord	%zmm0, %zmm4, %zmm4
	vpxord	%zmm0, %zmm5, %zmm5
	vpxord	%zmm0, %zmm6, %zmm6
	vpxord	%zmm0, %zmm7, %zmm7
	vpxord	%zmm0, %zmm8, %zmm8
	vpxord	%zmm0, %zmm9, %zmm9
	vpxord	%zmm0, %zmm2, %zmm2
	vshufi64x2	$0, %zmm27, %zmm27, %zmm1
	vshufi64x2	$0, %zmm29, %zmm29, %zmm27
	vshufi64x2	$0, %zmm31, %zmm31, %zmm29
	vshufi64x2	$0, %zmm18, %zmm18, %zmm31
	vshufi64x2	$228, %zmm11, %zmm10, %zmm0
	vmovdqa64	%zmm19, %zmm11
	vshufi64x2	$0, %zmm12, %zmm12, %zmm19
	vmovdqa64	%zmm17, %zmm10
	vshufi64x2	$0, %zmm26, %zmm26, %zmm17
	vshufi64x2	$0, %zmm10, %zmm10, %zmm25
	vaesenc	%zmm0, %zmm6, %zmm6
	vaesenc	%zmm0, %zmm5, %zmm5
	vaesenc	%zmm0, %zmm3, %zmm3
	vaesenc	%zmm0, %zmm4, %zmm4
	vaesenc	%zmm0, %zmm7, %zmm7
	vaesenc	%zmm0, %zmm8, %zmm8
	vaesenc	%zmm0, %zmm9, %zmm9
	vaesenc	%zmm0, %zmm2, %zmm2
	vmovdqu64	%zmm0, 1264(%rsp)
	vmovdqu64	48(%rsp), %zmm0
	vaesenc	%zmm1, %zmm6, %zmm6
	vaesenc	%zmm1, %zmm5, %zmm5
	vaesenc	%zmm1, %zmm3, %zmm3
	vaesenc	%zmm1, %zmm4, %zmm4
	vaesenc	%zmm1, %zmm7, %zmm7
	vaesenc	%zmm1, %zmm8, %zmm8
	vaesenc	%zmm1, %zmm9, %zmm9
	vaesenc	%zmm1, %zmm2, %zmm2
	vaesenc	%zmm27, %zmm6, %zmm6
	vaesenc	%zmm27, %zmm5, %zmm5
	vaesenc	%zmm27, %zmm3, %zmm3
	vaesenc	%zmm27, %zmm4, %zmm4
	vaesenc	%zmm27, %zmm7, %zmm7
	vaesenc	%zmm27, %zmm8, %zmm8
	vaesenc	%zmm27, %zmm9, %zmm9
	vaesenc	%zmm27, %zmm2, %zmm2
	vshufi64x2	$0, %zmm0, %zmm0, %zmm15
	vshufi64x2	$0, %zmm11, %zmm11, %zmm0
	vmovdqu64	%zmm0, 1328(%rsp)
	vmovdqu64	368(%rsp), %zmm0
	vaesenc	%zmm28, %zmm6, %zmm6
	vaesenc	%zmm28, %zmm5, %zmm5
	vaesenc	%zmm28, %zmm3, %zmm3
	vaesenc	%zmm28, %zmm4, %zmm4
	vaesenc	%zmm28, %zmm7, %zmm7
	vaesenc	%zmm28, %zmm8, %zmm8
	vaesenc	%zmm28, %zmm9, %zmm9
	vaesenc	%zmm28, %zmm2, %zmm2
	vaesenc	%zmm29, %zmm6, %zmm6
	vaesenc	%zmm29, %zmm5, %zmm5
	vaesenc	%zmm29, %zmm3, %zmm3
	vaesenc	%zmm29, %zmm4, %zmm4
	vaesenc	%zmm29, %zmm7, %zmm7
	vaesenc	%zmm29, %zmm8, %zmm8
	vaesenc	%zmm29, %zmm9, %zmm9
	vaesenc	%zmm29, %zmm2, %zmm2
	vshufi64x2	$0, %zmm0, %zmm0, %zmm0
	vaesenc	%zmm30, %zmm6, %zmm6
	vaesenc	%zmm30, %zmm5, %zmm5
	vaesenc	%zmm30, %zmm3, %zmm3
	vaesenc	%zmm30, %zmm4, %zmm4
	vaesenc	%zmm30, %zmm7, %zmm7
	vaesenc	%zmm30, %zmm8, %zmm8
	vaesenc	%zmm30, %zmm9, %zmm9
	vaesenc	%zmm30, %zmm2, %zmm2
	vmovdqu64	%zmm0, 112(%rsp)
	vmovdqu64	240(%rsp), %zmm0
	vaesenc	%zmm31, %zmm6, %zmm6
	vaesenc	%zmm31, %zmm5, %zmm5
	vaesenc	%zmm31, %zmm3, %zmm3
	vaesenc	%zmm31, %zmm4, %zmm4
	vaesenc	%zmm31, %zmm7, %zmm7
	vaesenc	%zmm31, %zmm8, %zmm8
	vaesenc	%zmm31, %zmm9, %zmm9
	vaesenc	%zmm31, %zmm2, %zmm2
	vaesenc	%zmm19, %zmm6, %zmm6
	vaesenc	%zmm19, %zmm5, %zmm5
	vaesenc	%zmm19, %zmm3, %zmm3
	vaesenc	%zmm19, %zmm4, %zmm4
	vaesenc	%zmm19, %zmm7, %zmm7
	vaesenc	%zmm19, %zmm8, %zmm8
	vaesenc	%zmm19, %zmm9, %zmm9
	vaesenc	%zmm19, %zmm2, %zmm2
	vaesenc	%zmm20, %zmm6, %zmm6
	vaesenc	%zmm20, %zmm5, %zmm5
	vaesenc	%zmm20, %zmm3, %zmm3
	vaesenc	%zmm20, %zmm4, %zmm4
	vaesenc	%zmm20, %zmm7, %zmm7
	vaesenc	%zmm20, %zmm8, %zmm8
	vaesenc	%zmm20, %zmm9, %zmm9
	vaesenc	%zmm20, %zmm2, %zmm2
	vaesenc	%zmm22, %zmm6, %zmm6
	vaesenc	%zmm22, %zmm5, %zmm5
	vaesenc	%zmm22, %zmm3, %zmm3
	vaesenc	%zmm22, %zmm4, %zmm4
	vaesenc	%zmm22, %zmm7, %zmm7
	vaesenc	%zmm22, %zmm8, %zmm8
	vaesenc	%zmm22, %zmm9, %zmm9
	vaesenc	%zmm22, %zmm2, %zmm2
	vaesenc	%zmm17, %zmm6, %zmm6
	vaesenc	%zmm17, %zmm5, %zmm5
	vaesenc	%zmm17, %zmm3, %zmm3
	vaesenc	%zmm17, %zmm4, %zmm4
	vaesenc	%zmm17, %zmm7, %zmm7
	vaesenc	%zmm17, %zmm8, %zmm8
	vaesenc	%zmm17, %zmm9, %zmm9
	vaesenc	%zmm17, %zmm2, %zmm2
	vaesenc	%zmm24, %zmm6, %zmm6
	vaesenc	%zmm24, %zmm5, %zmm5
	vaesenc	%zmm24, %zmm3, %zmm3
	vaesenc	%zmm24, %zmm4, %zmm4
	vaesenc	%zmm24, %zmm7, %zmm7
	vaesenc	%zmm24, %zmm8, %zmm8
	vaesenc	%zmm24, %zmm9, %zmm9
	vaesenc	%zmm24, %zmm2, %zmm2
	vaesenc	%zmm25, %zmm6, %zmm6
	vaesenc	%zmm25, %zmm5, %zmm5
	vaesenc	%zmm25, %zmm3, %zmm3
	vaesenc	%zmm25, %zmm4, %zmm4
	vaesenc	%zmm25, %zmm7, %zmm7
	vaesenc	%zmm25, %zmm8, %zmm8
	vaesenc	%zmm25, %zmm9, %zmm9
	vaesenc	%zmm25, %zmm2, %zmm2
	vaesenclast	%zmm15, %zmm6, %zmm6
	vpxorq	192(%r9), %zmm6, %zmm16
	vmovdqu64	304(%rsp), %zmm6
	vaesenclast	%zmm15, %zmm5, %zmm5
	vpxorq	128(%r9), %zmm5, %zmm18
	vaesenclast	%zmm15, %zmm3, %zmm3
	vaesenclast	%zmm15, %zmm4, %zmm4
	vaesenclast	%zmm15, %zmm8, %zmm8
	vaesenclast	%zmm15, %zmm7, %zmm7
	vaesenclast	%zmm15, %zmm2, %zmm10
	vpxorq	64(%r9), %zmm4, %zmm13
	vaesenclast	%zmm15, %zmm9, %zmm9
	vpxorq	(%r9), %zmm3, %zmm14
	vpxorq	256(%r9), %zmm7, %zmm2
	vpxorq	320(%r9), %zmm8, %zmm12
	vpxorq	384(%r9), %zmm9, %zmm3
	vpxorq	448(%r9), %zmm10, %zmm4
	vshufi64x2	$0, %zmm6, %zmm6, %zmm5
	vmovdqu64	176(%rsp), %zmm6
	vmovdqu64	%zmm14, (%rax)
	vmovdqu64	%zmm13, 64(%rax)
	vmovdqu64	%zmm18, 128(%rax)
	vmovdqu64	%zmm16, 192(%rax)
	vmovdqu64	%zmm2, 256(%rax)
	vmovdqu64	%zmm12, 320(%rax)
	vmovdqu64	%zmm3, 384(%rax)
	vmovdqu64	%zmm4, 448(%rax)
	vmovdqu64	%zmm5, 1392(%rsp)
	vshufi64x2	$0, %zmm0, %zmm0, %zmm5
	vmovdqu64	1584(%rsp), %zmm0
	vmovdqu64	%zmm5, 1520(%rsp)
	vshufi64x2	$0, %zmm6, %zmm6, %zmm5
	vmovdqu64	-16(%rsp), %zmm6
	vshufi64x2	$0, %zmm0, %zmm0, %zmm0
	vmovdqu64	%zmm5, 176(%rsp)
	vmovdqu64	%zmm0, 240(%rsp)
	vmovdqu64	1712(%rsp), %zmm0
	vshufi64x2	$0, %zmm6, %zmm6, %zmm5
	vmovdqu64	%zmm5, 304(%rsp)
	vshufi64x2	$0, %zmm0, %zmm0, %zmm5
	vmovdqu64	%zmm5, 368(%rsp)
	.p2align	4
.LBB0_28:
	vmovdqu64	1328(%rsp), %zmm0
	vmovdqu64	112(%rsp), %zmm10
	vmovdqa64	%zmm14, %zmm11
	vmovdqa64	%zmm21, %zmm14
	vmovdqa64	%zmm15, %zmm21
	vmovdqa64	%zmm25, %zmm15
	vmovdqa64	%zmm24, %zmm25
	vmovdqa64	%zmm17, %zmm24
	vmovdqa64	%zmm22, %zmm17
	vmovdqa64	%zmm20, %zmm22
	vmovdqa64	%zmm19, %zmm20
	vmovdqa64	%zmm31, %zmm19
	vmovdqa64	%zmm30, %zmm31
	vmovdqa64	%zmm29, %zmm30
	vmovdqa64	%zmm28, %zmm29
	vmovdqa64	%zmm27, %zmm28
	vmovdqu64	1520(%rsp), %zmm27
	addq	$-512, %r10
	vpclmulqdq	$0, %zmm4, %zmm0, %zmm5
	vpclmulqdq	$17, %zmm4, %zmm0, %zmm6
	vpunpcklqdq	%zmm4, %zmm0, %zmm8
	vpunpckhqdq	%zmm4, %zmm0, %zmm4
	vmovdqu64	1392(%rsp), %zmm0
	vpclmulqdq	$0, %zmm3, %zmm10, %zmm7
	vpclmulqdq	$17, %zmm3, %zmm10, %zmm26
	vpxorq	%zmm8, %zmm4, %zmm4
	vpunpcklqdq	%zmm3, %zmm10, %zmm8
	vpunpckhqdq	%zmm3, %zmm10, %zmm3
	vpclmulqdq	$0, %zmm2, %zmm27, %zmm10
	vpxorq	%zmm8, %zmm3, %zmm3
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpxorq	%zmm5, %zmm7, %zmm5
	vpxorq	%zmm4, %zmm3, %zmm3
	vpunpckhqdq	%zmm2, %zmm27, %zmm4
	vpclmulqdq	$0, %zmm12, %zmm0, %zmm9
	vpunpcklqdq	%zmm12, %zmm0, %zmm8
	vpunpckhqdq	%zmm12, %zmm0, %zmm7
	vpternlogq	$150, %zmm9, %zmm5, %zmm10
	vpxorq	%zmm8, %zmm7, %zmm5
	vpclmulqdq	$17, %zmm12, %zmm0, %zmm7
	vpunpcklqdq	%zmm2, %zmm27, %zmm8
	vpclmulqdq	$17, %zmm2, %zmm27, %zmm2
	vpxorq	%zmm6, %zmm26, %zmm0
	vmovdqu64	368(%rsp), %zmm12
	vmovdqa64	%zmm28, %zmm27
	vmovdqa64	%zmm29, %zmm28
	vmovdqa64	%zmm30, %zmm29
	vmovdqa64	%zmm31, %zmm30
	vmovdqa64	%zmm19, %zmm31
	vmovdqa64	%zmm20, %zmm19
	vmovdqa64	%zmm22, %zmm20
	vmovdqa64	%zmm17, %zmm22
	vmovdqa64	%zmm24, %zmm17
	vmovdqa64	%zmm25, %zmm24
	vmovdqa64	%zmm15, %zmm25
	vmovdqa64	%zmm21, %zmm15
	vmovdqa64	%zmm14, %zmm21
	vpaddd	.LCPI0_24(%rip), %xmm21, %xmm21
	vpxorq	%zmm8, %zmm4, %zmm4
	vmovdqu64	240(%rsp), %zmm8
	vpclmulqdq	$1, %zmm5, %zmm5, %zmm5
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpternlogq	$150, %zmm7, %zmm0, %zmm2
	vmovdqu64	176(%rsp), %zmm0
	vpternlogq	$150, %zmm5, %zmm3, %zmm4
	vpclmulqdq	$0, %zmm18, %zmm8, %zmm5
	vpclmulqdq	$0, %zmm16, %zmm0, %zmm3
	vpclmulqdq	$17, %zmm16, %zmm0, %zmm6
	vpunpckhqdq	%zmm16, %zmm0, %zmm7
	vpternlogq	$150, %zmm3, %zmm10, %zmm5
	vpunpcklqdq	%zmm16, %zmm0, %zmm3
	vmovdqu64	304(%rsp), %zmm16
	vpxorq	%zmm3, %zmm7, %zmm3
	vpclmulqdq	$17, %zmm18, %zmm8, %zmm7
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm6, %zmm2, %zmm7
	vpunpcklqdq	%zmm18, %zmm8, %zmm2
	vpunpckhqdq	%zmm18, %zmm8, %zmm8
	vpxorq	%zmm2, %zmm8, %zmm2
	vpxorq	%zmm23, %zmm11, %zmm8
	vpclmulqdq	$0, %zmm8, %zmm12, %zmm9
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpunpckhqdq	%zmm8, %zmm12, %zmm0
	vpclmulqdq	$0, %zmm13, %zmm16, %zmm6
	vpunpckhqdq	%zmm13, %zmm16, %zmm11
	vpternlogq	$150, %zmm3, %zmm4, %zmm2
	vpunpcklqdq	%zmm13, %zmm16, %zmm4
	vshufi64x2	$0, %zmm14, %zmm14, %zmm3
	vpaddd	.LCPI0_18(%rip), %zmm3, %zmm10
	vpternlogq	$150, %zmm6, %zmm5, %zmm9
	vpunpcklqdq	%zmm8, %zmm12, %zmm6
	vpclmulqdq	$17, %zmm8, %zmm12, %zmm8
	vpxorq	%zmm4, %zmm11, %zmm4
	vpaddd	.LCPI0_21(%rip), %zmm3, %zmm11
	vpxorq	%zmm6, %zmm0, %zmm5
	vpclmulqdq	$17, %zmm13, %zmm16, %zmm0
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpaddd	.LCPI0_16(%rip), %zmm3, %zmm6
	vpclmulqdq	$1, %zmm5, %zmm5, %zmm5
	vpternlogq	$150, %zmm0, %zmm7, %zmm8
	vpbroadcastq	.LCPI0_13(%rip), %zmm0
	vpternlogq	$150, %zmm4, %zmm2, %zmm5
	vpaddd	.LCPI0_17(%rip), %zmm3, %zmm2
	vpternlogq	$150, %zmm9, %zmm8, %zmm5
	vpslldq	$8, %zmm5, %zmm4
	vpsrldq	$8, %zmm5, %zmm5
	vxorpd	%zmm9, %zmm4, %zmm4
	vpaddd	.LCPI0_19(%rip), %zmm3, %zmm9
	vpclmulqdq	$16, %zmm0, %zmm4, %zmm7
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm7, %zmm4
	vpclmulqdq	$16, %zmm0, %zmm4, %zmm7
	vmovdqu64	1456(%rsp), %zmm0
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm8, %zmm7, %zmm23
	vpaddd	.LCPI0_20(%rip), %zmm3, %zmm7
	vpternlogd	$150, %zmm4, %zmm5, %zmm23
	vpaddd	.LCPI0_22(%rip), %zmm3, %zmm5
	vpaddd	.LCPI0_23(%rip), %zmm3, %zmm3
	vpxord	%zmm0, %zmm10, %zmm8
	vmovdqu64	1264(%rsp), %zmm10
	vpxord	%zmm0, %zmm6, %zmm6
	vpxord	%zmm0, %zmm2, %zmm2
	vpxord	%zmm0, %zmm9, %zmm9
	vpxord	%zmm0, %zmm11, %zmm4
	vpxord	%zmm0, %zmm7, %zmm7
	vpxord	%zmm0, %zmm5, %zmm5
	vpxord	%zmm0, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm2, %zmm2
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm1, %zmm6, %zmm6
	vaesenc	%zmm1, %zmm2, %zmm2
	vaesenc	%zmm1, %zmm8, %zmm8
	vaesenc	%zmm1, %zmm9, %zmm9
	vaesenc	%zmm1, %zmm7, %zmm7
	vaesenc	%zmm1, %zmm4, %zmm4
	vaesenc	%zmm1, %zmm5, %zmm5
	vaesenc	%zmm1, %zmm3, %zmm3
	vaesenc	%zmm27, %zmm6, %zmm6
	vaesenc	%zmm27, %zmm2, %zmm2
	vaesenc	%zmm27, %zmm8, %zmm8
	vaesenc	%zmm27, %zmm9, %zmm9
	vaesenc	%zmm27, %zmm7, %zmm7
	vaesenc	%zmm27, %zmm4, %zmm4
	vaesenc	%zmm27, %zmm5, %zmm5
	vaesenc	%zmm27, %zmm3, %zmm3
	vaesenc	%zmm28, %zmm6, %zmm6
	vaesenc	%zmm28, %zmm2, %zmm2
	vaesenc	%zmm28, %zmm8, %zmm8
	vaesenc	%zmm28, %zmm9, %zmm9
	vaesenc	%zmm28, %zmm7, %zmm7
	vaesenc	%zmm28, %zmm4, %zmm4
	vaesenc	%zmm28, %zmm5, %zmm5
	vaesenc	%zmm28, %zmm3, %zmm3
	vaesenc	%zmm29, %zmm6, %zmm6
	vaesenc	%zmm29, %zmm2, %zmm2
	vaesenc	%zmm29, %zmm8, %zmm8
	vaesenc	%zmm29, %zmm9, %zmm9
	vaesenc	%zmm29, %zmm7, %zmm7
	vaesenc	%zmm29, %zmm4, %zmm4
	vaesenc	%zmm29, %zmm5, %zmm5
	vaesenc	%zmm29, %zmm3, %zmm3
	vaesenc	%zmm30, %zmm6, %zmm6
	vaesenc	%zmm30, %zmm2, %zmm2
	vaesenc	%zmm30, %zmm8, %zmm8
	vaesenc	%zmm30, %zmm9, %zmm9
	vaesenc	%zmm30, %zmm7, %zmm7
	vaesenc	%zmm30, %zmm4, %zmm4
	vaesenc	%zmm30, %zmm5, %zmm5
	vaesenc	%zmm30, %zmm3, %zmm3
	vaesenc	%zmm31, %zmm6, %zmm6
	vaesenc	%zmm31, %zmm2, %zmm2
	vaesenc	%zmm31, %zmm8, %zmm8
	vaesenc	%zmm31, %zmm9, %zmm9
	vaesenc	%zmm31, %zmm7, %zmm7
	vaesenc	%zmm31, %zmm4, %zmm4
	vaesenc	%zmm31, %zmm5, %zmm5
	vaesenc	%zmm31, %zmm3, %zmm3
	vaesenc	%zmm19, %zmm6, %zmm6
	vaesenc	%zmm19, %zmm2, %zmm2
	vaesenc	%zmm19, %zmm8, %zmm8
	vaesenc	%zmm19, %zmm9, %zmm9
	vaesenc	%zmm19, %zmm7, %zmm7
	vaesenc	%zmm19, %zmm4, %zmm4
	vaesenc	%zmm19, %zmm5, %zmm5
	vaesenc	%zmm19, %zmm3, %zmm3
	vaesenc	%zmm20, %zmm6, %zmm6
	vaesenc	%zmm20, %zmm2, %zmm2
	vaesenc	%zmm20, %zmm8, %zmm8
	vaesenc	%zmm20, %zmm9, %zmm9
	vaesenc	%zmm20, %zmm7, %zmm7
	vaesenc	%zmm20, %zmm4, %zmm4
	vaesenc	%zmm20, %zmm5, %zmm5
	vaesenc	%zmm20, %zmm3, %zmm3
	vaesenc	%zmm22, %zmm6, %zmm6
	vaesenc	%zmm22, %zmm2, %zmm2
	vaesenc	%zmm22, %zmm8, %zmm8
	vaesenc	%zmm22, %zmm9, %zmm9
	vaesenc	%zmm22, %zmm7, %zmm7
	vaesenc	%zmm22, %zmm4, %zmm4
	vaesenc	%zmm22, %zmm5, %zmm5
	vaesenc	%zmm22, %zmm3, %zmm3
	vaesenc	%zmm17, %zmm6, %zmm6
	vaesenc	%zmm17, %zmm2, %zmm2
	vaesenc	%zmm17, %zmm8, %zmm8
	vaesenc	%zmm17, %zmm9, %zmm9
	vaesenc	%zmm17, %zmm7, %zmm7
	vaesenc	%zmm17, %zmm4, %zmm4
	vaesenc	%zmm17, %zmm5, %zmm5
	vaesenc	%zmm17, %zmm3, %zmm3
	vaesenc	%zmm24, %zmm6, %zmm6
	vaesenc	%zmm24, %zmm2, %zmm2
	vaesenc	%zmm24, %zmm8, %zmm8
	vaesenc	%zmm24, %zmm9, %zmm9
	vaesenc	%zmm24, %zmm7, %zmm7
	vaesenc	%zmm24, %zmm4, %zmm4
	vaesenc	%zmm24, %zmm5, %zmm5
	vaesenc	%zmm24, %zmm3, %zmm3
	vaesenc	%zmm25, %zmm6, %zmm6
	vaesenc	%zmm25, %zmm2, %zmm2
	vaesenc	%zmm25, %zmm8, %zmm8
	vaesenc	%zmm25, %zmm9, %zmm9
	vaesenc	%zmm25, %zmm7, %zmm7
	vaesenc	%zmm25, %zmm4, %zmm4
	vaesenc	%zmm25, %zmm5, %zmm5
	vaesenc	%zmm25, %zmm3, %zmm3
	vaesenclast	%zmm15, %zmm6, %zmm6
	vaesenclast	%zmm15, %zmm2, %zmm2
	vaesenclast	%zmm15, %zmm8, %zmm8
	vaesenclast	%zmm15, %zmm9, %zmm9
	vaesenclast	%zmm15, %zmm4, %zmm4
	vaesenclast	%zmm15, %zmm7, %zmm7
	vpxorq	64(%rcx), %zmm2, %zmm13
	vaesenclast	%zmm15, %zmm5, %zmm5
	vaesenclast	%zmm15, %zmm3, %zmm10
	vpxorq	320(%rcx), %zmm4, %zmm12
	vpxorq	(%rcx), %zmm6, %zmm14
	vpxorq	128(%rcx), %zmm8, %zmm18
	vpxorq	192(%rcx), %zmm9, %zmm16
	vpxorq	256(%rcx), %zmm7, %zmm2
	vpxorq	384(%rcx), %zmm5, %zmm3
	vpxorq	448(%rcx), %zmm10, %zmm4
	leaq	512(%rcx), %rcx
	vmovdqu64	%zmm14, (%rdx)
	vmovdqu64	%zmm13, 64(%rdx)
	vmovdqu64	%zmm18, 128(%rdx)
	vmovdqu64	%zmm16, 192(%rdx)
	vmovdqu64	%zmm2, 256(%rdx)
	vmovdqu64	%zmm12, 320(%rdx)
	vmovdqu64	%zmm3, 384(%rdx)
	vmovdqu64	%zmm4, 448(%rdx)
	addq	$512, %rdx
	cmpq	$575, %r10
	ja	.LBB0_28
	vmovdqu64	1328(%rsp), %zmm0
	vmovdqu64	%zmm1, -16(%rsp)
	vmovdqu64	1264(%rsp), %zmm1
	movq	%rdx, %rax
	movq	%rcx, %r9
	vpunpcklqdq	%zmm4, %zmm0, %zmm6
	vpunpckhqdq	%zmm4, %zmm0, %zmm5
	vpclmulqdq	$0, %zmm4, %zmm0, %zmm26
	vpclmulqdq	$17, %zmm4, %zmm0, %zmm7
	vpxorq	%zmm6, %zmm5, %zmm5
	vmovdqu64	112(%rsp), %zmm6
	vpclmulqdq	$1, %zmm5, %zmm5, %zmm8
	vpclmulqdq	$0, %zmm3, %zmm6, %zmm4
	vpclmulqdq	$17, %zmm3, %zmm6, %zmm0
	vpunpcklqdq	%zmm3, %zmm6, %zmm11
	vpunpckhqdq	%zmm3, %zmm6, %zmm5
	vmovdqu64	1392(%rsp), %zmm6
	vpxorq	%zmm11, %zmm5, %zmm5
	vpclmulqdq	$1, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm0, 112(%rsp)
	vpxorq	%zmm26, %zmm4, %zmm4
	vmovdqu64	176(%rsp), %zmm26
	vpxorq	%zmm8, %zmm5, %zmm5
	vpunpcklqdq	%zmm12, %zmm6, %zmm10
	vpunpckhqdq	%zmm12, %zmm6, %zmm3
	vpclmulqdq	$0, %zmm12, %zmm6, %zmm11
	vpclmulqdq	$17, %zmm12, %zmm6, %zmm0
	vmovdqu64	1520(%rsp), %zmm6
	vpxorq	%zmm10, %zmm3, %zmm3
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpunpcklqdq	%zmm16, %zmm26, %zmm8
	vpclmulqdq	$0, %zmm2, %zmm6, %zmm12
	vpunpcklqdq	%zmm2, %zmm6, %zmm10
	vpunpckhqdq	%zmm2, %zmm6, %zmm9
	vpclmulqdq	$17, %zmm2, %zmm6, %zmm2
	vpxorq	%zmm10, %zmm9, %zmm9
	vpxorq	%zmm23, %zmm14, %zmm10
	vpunpckhqdq	%zmm16, %zmm26, %zmm23
	vpclmulqdq	$0, %zmm16, %zmm26, %zmm14
	vpclmulqdq	$1, %zmm9, %zmm9, %zmm9
	vpxorq	%zmm8, %zmm23, %zmm8
	vpxorq	112(%rsp), %zmm7, %zmm23
	vpclmulqdq	$1, %zmm8, %zmm8, %zmm8
	vpternlogq	$150, %zmm11, %zmm4, %zmm12
	vmovdqu64	240(%rsp), %zmm11
	vpclmulqdq	$17, %zmm16, %zmm26, %zmm4
	vmovupd	1648(%rsp), %zmm16
	vpternlogq	$150, %zmm3, %zmm5, %zmm9
	vpternlogq	$150, %zmm0, %zmm23, %zmm2
	vpclmulqdq	$0, %zmm18, %zmm11, %zmm5
	vpclmulqdq	$17, %zmm18, %zmm11, %zmm6
	vpunpcklqdq	%zmm18, %zmm11, %zmm3
	vpunpckhqdq	%zmm18, %zmm11, %zmm7
	vmovdqu64	304(%rsp), %zmm11
	vmovupd	944(%rsp), %zmm18
	vpxorq	%zmm3, %zmm7, %zmm3
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm4, %zmm2, %zmm6
	vpternlogq	$150, %zmm14, %zmm12, %zmm5
	vmovupd	560(%rsp), %zmm12
	vmovupd	432(%rsp), %zmm14
	vpternlogq	$150, %zmm8, %zmm9, %zmm3
	vpunpcklqdq	%zmm13, %zmm11, %zmm7
	vpunpckhqdq	%zmm13, %zmm11, %zmm9
	vpclmulqdq	$0, %zmm13, %zmm11, %zmm0
	vpclmulqdq	$17, %zmm13, %zmm11, %zmm2
	vmovdqu64	368(%rsp), %zmm11
	vmovupd	496(%rsp), %zmm13
	vpxorq	%zmm7, %zmm9, %zmm7
	vpclmulqdq	$1, %zmm7, %zmm7, %zmm7
	vpunpcklqdq	%zmm10, %zmm11, %zmm4
	vpunpckhqdq	%zmm10, %zmm11, %zmm9
	vpxorq	%zmm4, %zmm9, %zmm4
	vpclmulqdq	$0, %zmm10, %zmm11, %zmm9
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpternlogq	$150, %zmm0, %zmm5, %zmm9
	vpbroadcastq	.LCPI0_13(%rip), %zmm0
	vpternlogq	$150, %zmm7, %zmm3, %zmm4
	vpclmulqdq	$17, %zmm10, %zmm11, %zmm7
	vpbroadcastq	.LCPI0_13(%rip), %xmm11
	vmovdqu64	48(%rsp), %zmm10
	vpternlogq	$150, %zmm2, %zmm6, %zmm7
	vpternlogq	$150, %zmm9, %zmm7, %zmm4
	vpslldq	$8, %zmm4, %zmm2
	vpsrldq	$8, %zmm4, %zmm4
	vxorpd	%zmm9, %zmm2, %zmm2
	vmovdqa	-128(%rsp), %xmm9
	vpclmulqdq	$16, %zmm0, %zmm2, %zmm5
	vpshufd	$78, %zmm2, %zmm2
	vpxorq	%zmm2, %zmm5, %zmm2
	vpclmulqdq	$16, %zmm0, %zmm2, %zmm5
	vmovdqu64	1456(%rsp), %zmm0
	vpshufd	$78, %zmm2, %zmm23
	vpxorq	%zmm4, %zmm5, %zmm4
	vpternlogq	$150, %zmm4, %zmm7, %zmm23
	jmp	.LBB0_32
.LBB0_30:
	cmpq	$64, %r10
	jb	.LBB0_43
	vbroadcasti32x4	.LCPI0_15(%rip), %zmm3
	vshufi64x2	$0, %zmm22, %zmm22, %zmm0
	vmovdqa	%xmm4, -96(%rsp)
	vshufi64x2	$0, %zmm27, %zmm27, %zmm4
	vmovdqa64	%xmm20, -80(%rsp)
	vmovaps	%xmm28, -48(%rsp)
	vmovups	%zmm27, 816(%rsp)
	vmovdqa	%xmm5, -112(%rsp)
	vmovdqa	%xmm8, -64(%rsp)
	vmovaps	%xmm25, -32(%rsp)
	vmovups	%zmm29, 752(%rsp)
	vshufi64x2	$0, %zmm29, %zmm29, %zmm27
	vmovups	%zmm30, 688(%rsp)
	vshufi64x2	$0, %zmm30, %zmm30, %zmm28
	vmovups	%zmm31, 624(%rsp)
	vshufi64x2	$0, %zmm31, %zmm31, %zmm29
	vshufi64x2	$0, %zmm16, %zmm16, %zmm30
	vshufi64x2	$0, %zmm18, %zmm18, %zmm31
	vshufi64x2	$0, %zmm12, %zmm12, %zmm19
	vshufi64x2	$0, %zmm13, %zmm13, %zmm20
	vshufi64x2	$0, %zmm14, %zmm14, %zmm22
	vshufi64x2	$0, %zmm24, %zmm24, %zmm24
	vinserti32x4	$1, %xmm25, %ymm0, %ymm2
	vmovdqu64	%zmm4, -16(%rsp)
	vinserti32x4	$0, %xmm25, %zmm2, %zmm2
	vpermi2q	%zmm15, %zmm1, %zmm3
	vshufi64x2	$0, %zmm10, %zmm10, %zmm15
	vshufi64x2	$228, %zmm3, %zmm2, %zmm1
	vmovdqa64	%zmm17, %zmm3
	vshufi64x2	$0, %zmm26, %zmm26, %zmm17
	vshufi64x2	$0, %zmm3, %zmm3, %zmm25
.LBB0_32:
	vmovdqu64	(%r9), %zmm3
	leaq	64(%r9), %rdi
	leaq	64(%rax), %rsi
	leaq	-64(%r10), %rdx
	cmpq	$128, %r10
	jb	.LBB0_35
	vmovdqu64	880(%rsp), %zmm2
	vmovdqu64	-16(%rsp), %zmm26
	vshufi64x2	$0, %zmm2, %zmm2, %zmm2
	testb	$64, %r10b
	jne	.LBB0_36
	vpaddd	.LCPI0_0(%rip), %xmm21, %xmm4
	vpaddd	.LCPI0_1(%rip), %xmm21, %xmm5
	vpaddd	.LCPI0_2(%rip), %xmm21, %xmm6
	leaq	128(%rax), %rcx
	leaq	-128(%r10), %rdx
	vinserti32x4	$1, %xmm4, %ymm21, %ymm4
	vinserti128	$1, %xmm6, %ymm5, %ymm5
	vpaddd	.LCPI0_3(%rip), %xmm21, %xmm21
	vinserti64x4	$1, %ymm5, %zmm4, %zmm4
	vpxorq	%zmm0, %zmm4, %zmm4
	vaesenc	%zmm1, %zmm4, %zmm4
	vaesenc	%zmm26, %zmm4, %zmm4
	vaesenc	%zmm27, %zmm4, %zmm4
	vaesenc	%zmm28, %zmm4, %zmm4
	vaesenc	%zmm29, %zmm4, %zmm4
	vaesenc	%zmm30, %zmm4, %zmm4
	vaesenc	%zmm31, %zmm4, %zmm4
	vaesenc	%zmm19, %zmm4, %zmm4
	vaesenc	%zmm20, %zmm4, %zmm4
	vaesenc	%zmm22, %zmm4, %zmm4
	vaesenc	%zmm17, %zmm4, %zmm4
	vaesenc	%zmm24, %zmm4, %zmm4
	vaesenc	%zmm25, %zmm4, %zmm4
	vaesenclast	%zmm15, %zmm4, %zmm4
	vpxorq	%zmm3, %zmm4, %zmm3
	vpxorq	%zmm23, %zmm3, %zmm5
	vpbroadcastq	.LCPI0_13(%rip), %zmm23
	vpunpcklqdq	%zmm5, %zmm2, %zmm4
	vpunpckhqdq	%zmm5, %zmm2, %zmm7
	vpclmulqdq	$0, %zmm5, %zmm2, %zmm6
	vpclmulqdq	$17, %zmm5, %zmm2, %zmm5
	vpxorq	%zmm4, %zmm7, %zmm4
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm7
	vmovdqu64	64(%r9), %zmm4
	vmovdqu64	%zmm3, (%rax)
	subq	$-128, %r9
	movq	%rsi, %rax
	movq	%r9, %rdi
	vpternlogq	$150, %zmm6, %zmm5, %zmm7
	vpslldq	$8, %zmm7, %zmm3
	vxorpd	%zmm6, %zmm3, %zmm3
	vpsrldq	$8, %zmm7, %zmm6
	vpclmulqdq	$16, %zmm23, %zmm3, %zmm8
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm3, %zmm8, %zmm3
	vpclmulqdq	$16, %zmm23, %zmm3, %zmm7
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm5, %zmm7, %zmm23
	vpternlogd	$150, %zmm6, %zmm3, %zmm23
	vmovdqa64	%zmm4, %zmm3
	jmp	.LBB0_37
.LBB0_35:
	vmovdqu64	-16(%rsp), %zmm26
	movq	%rsi, %rcx
	movq	%rdi, %r9
	movq	%rax, %rsi
	jmp	.LBB0_41
.LBB0_36:
	movq	%rsi, %rcx
.LBB0_37:
	andl	$1984, %r10d
	cmpl	$128, %r10d
	je	.LBB0_42
	vmovdqa	%xmm9, -128(%rsp)
	vpmovsxbq	.LCPI0_28(%rip), %xmm4
	vpmovsxbq	.LCPI0_29(%rip), %xmm5
	vpmovsxbq	.LCPI0_30(%rip), %xmm6
	vmovdqa64	.LCPI0_17(%rip), %zmm7
	vpbroadcastq	.LCPI0_13(%rip), %zmm8
	vpmovsxbq	.LCPI0_31(%rip), %xmm9
	vmovdqu64	%zmm10, 48(%rsp)
	.p2align	4
.LBB0_39:
	vpaddd	%xmm4, %xmm21, %xmm10
	vpaddd	%xmm5, %xmm21, %xmm11
	vpaddd	%xmm6, %xmm21, %xmm12
	addq	$-128, %rdx
	vinserti128	$1, %xmm12, %ymm11, %ymm11
	vinserti32x4	$1, %xmm10, %ymm21, %ymm10
	vinserti64x4	$1, %ymm11, %zmm10, %zmm10
	vshufi64x2	$0, %zmm21, %zmm21, %zmm11
	vpaddd	%xmm9, %xmm21, %xmm21
	vpxorq	%zmm0, %zmm10, %zmm10
	vaesenc	%zmm1, %zmm10, %zmm10
	vaesenc	%zmm26, %zmm10, %zmm10
	vaesenc	%zmm27, %zmm10, %zmm10
	vaesenc	%zmm28, %zmm10, %zmm10
	vaesenc	%zmm29, %zmm10, %zmm10
	vaesenc	%zmm30, %zmm10, %zmm10
	vaesenc	%zmm31, %zmm10, %zmm10
	vaesenc	%zmm19, %zmm10, %zmm10
	vaesenc	%zmm20, %zmm10, %zmm10
	vaesenc	%zmm22, %zmm10, %zmm10
	vaesenc	%zmm17, %zmm10, %zmm10
	vaesenc	%zmm24, %zmm10, %zmm10
	vaesenc	%zmm25, %zmm10, %zmm10
	vaesenclast	%zmm15, %zmm10, %zmm10
	vpxorq	%zmm3, %zmm10, %zmm3
	vpaddd	%zmm7, %zmm11, %zmm10
	vpxorq	%zmm0, %zmm10, %zmm10
	vpxorq	%zmm23, %zmm3, %zmm11
	vaesenc	%zmm1, %zmm10, %zmm10
	vpunpcklqdq	%zmm11, %zmm2, %zmm12
	vpunpckhqdq	%zmm11, %zmm2, %zmm13
	vpxorq	%zmm12, %zmm13, %zmm12
	vpclmulqdq	$0, %zmm11, %zmm2, %zmm13
	vpclmulqdq	$17, %zmm11, %zmm2, %zmm11
	vpclmulqdq	$1, %zmm12, %zmm12, %zmm12
	vaesenc	%zmm26, %zmm10, %zmm10
	vpternlogq	$150, %zmm13, %zmm11, %zmm12
	vpslldq	$8, %zmm12, %zmm14
	vpsrldq	$8, %zmm12, %zmm12
	vaesenc	%zmm27, %zmm10, %zmm10
	vaesenc	%zmm28, %zmm10, %zmm10
	vaesenc	%zmm29, %zmm10, %zmm10
	vaesenc	%zmm30, %zmm10, %zmm10
	vaesenc	%zmm31, %zmm10, %zmm10
	vaesenc	%zmm19, %zmm10, %zmm10
	vaesenc	%zmm20, %zmm10, %zmm10
	vaesenc	%zmm22, %zmm10, %zmm10
	vaesenc	%zmm17, %zmm10, %zmm10
	vaesenc	%zmm24, %zmm10, %zmm10
	vaesenc	%zmm25, %zmm10, %zmm10
	vaesenclast	%zmm15, %zmm10, %zmm10
	vpxorq	(%rdi), %zmm10, %zmm10
	vmovdqu64	%zmm3, (%rax)
	vxorpd	%zmm13, %zmm14, %zmm3
	leaq	64(%rcx), %rax
	vpclmulqdq	$16, %zmm8, %zmm3, %zmm13
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm3, %zmm13, %zmm3
	vpclmulqdq	$16, %zmm8, %zmm3, %zmm13
	vpshufd	$78, %zmm3, %zmm14
	vmovdqu64	64(%rdi), %zmm3
	subq	$-128, %rdi
	vmovdqu64	%zmm10, (%rcx)
	subq	$-128, %rcx
	vpternlogq	$150, %zmm11, %zmm12, %zmm13
	vpternlogq	$150, %zmm14, %zmm10, %zmm13
	vpunpcklqdq	%zmm13, %zmm2, %zmm10
	vpunpckhqdq	%zmm13, %zmm2, %zmm12
	vpclmulqdq	$0, %zmm13, %zmm2, %zmm11
	vpxorq	%zmm10, %zmm12, %zmm10
	vpclmulqdq	$17, %zmm13, %zmm2, %zmm12
	vpclmulqdq	$1, %zmm10, %zmm10, %zmm10
	vpternlogq	$150, %zmm11, %zmm12, %zmm10
	vpslldq	$8, %zmm10, %zmm13
	vpsrldq	$8, %zmm10, %zmm10
	vxorpd	%zmm11, %zmm13, %zmm11
	vpclmulqdq	$16, %zmm8, %zmm11, %zmm13
	vpshufd	$78, %zmm11, %zmm11
	vpxorq	%zmm11, %zmm13, %zmm11
	vpclmulqdq	$16, %zmm8, %zmm11, %zmm13
	vpshufd	$78, %zmm11, %zmm11
	vpxorq	%zmm12, %zmm13, %zmm23
	vpternlogd	$150, %zmm10, %zmm11, %zmm23
	cmpq	$63, %rdx
	ja	.LBB0_39
	vmovupd	560(%rsp), %zmm12
	vmovupd	496(%rsp), %zmm13
	vmovupd	432(%rsp), %zmm14
	vpbroadcastq	.LCPI0_13(%rip), %xmm11
	vmovdqa	-128(%rsp), %xmm9
	vmovdqu64	48(%rsp), %zmm10
	leaq	-64(%rcx), %rsi
	movq	%rdi, %r9
.LBB0_41:
	vmovdqa64	%zmm3, %zmm4
.LBB0_42:
	vpaddd	.LCPI0_0(%rip), %xmm21, %xmm2
	vpaddd	.LCPI0_1(%rip), %xmm21, %xmm3
	vpaddd	.LCPI0_2(%rip), %xmm21, %xmm5
	vmovdqa	-64(%rsp), %xmm8
	movq	%rcx, %rax
	movq	%rdx, %r10
	vinserti32x4	$1, %xmm2, %ymm21, %ymm2
	vinserti128	$1, %xmm5, %ymm3, %ymm3
	vpaddd	.LCPI0_3(%rip), %xmm21, %xmm21
	vinserti64x4	$1, %ymm3, %zmm2, %zmm2
	vpxorq	%zmm0, %zmm2, %zmm2
	vaesenc	%zmm1, %zmm2, %zmm0
	vaesenc	%zmm26, %zmm0, %zmm0
	vmovupd	1136(%rsp), %zmm26
	vaesenc	%zmm27, %zmm0, %zmm0
	vmovupd	816(%rsp), %zmm27
	vaesenc	%zmm28, %zmm0, %zmm0
	vmovdqa64	-48(%rsp), %xmm28
	vaesenc	%zmm29, %zmm0, %zmm0
	vmovupd	752(%rsp), %zmm29
	vaesenc	%zmm30, %zmm0, %zmm0
	vmovupd	688(%rsp), %zmm30
	vaesenc	%zmm31, %zmm0, %zmm0
	vmovupd	624(%rsp), %zmm31
	vaesenc	%zmm19, %zmm0, %zmm0
	vaesenc	%zmm20, %zmm0, %zmm0
	vmovdqa64	-80(%rsp), %xmm20
	vaesenc	%zmm22, %zmm0, %zmm0
	vmovups	1200(%rsp), %zmm22
	vaesenc	%zmm17, %zmm0, %zmm0
	vmovdqu64	1008(%rsp), %zmm17
	vaesenc	%zmm24, %zmm0, %zmm0
	vmovupd	1072(%rsp), %zmm24
	vaesenc	%zmm25, %zmm0, %zmm0
	vmovapd	-32(%rsp), %xmm25
	vaesenclast	%zmm15, %zmm0, %zmm0
	vpxorq	%zmm4, %zmm0, %zmm0
	vpxord	%zmm0, %zmm23, %zmm1
	vmovdqu64	%zmm0, (%rsi)
	vpclmulqdq	$1, %xmm1, %xmm28, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm28, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm28, %xmm2
	vextracti128	$1, %ymm1, %xmm4
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm28, %xmm5
	vpslldq	$8, %xmm3, %xmm6
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm6, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vextracti32x4	$2, %zmm1, %xmm5
	vextracti32x4	$3, %zmm1, %xmm1
	vpternlogq	$150, %xmm3, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm4, %xmm6, %xmm4
	vpslldq	$8, %xmm4, %xmm6
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpternlogq	$150, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	vpshufd	$78, %xmm3, %xmm1
	vpternlogq	$150, %xmm4, %xmm5, %xmm1
	vmovdqa	-112(%rsp), %xmm5
	vpclmulqdq	$1, %xmm1, %xmm28, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm28, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm28, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm28, %xmm1
	vpxor	%xmm3, %xmm4, %xmm0
	vmovdqa	-96(%rsp), %xmm4
	vpslldq	$8, %xmm0, %xmm3
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm3, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
.LBB0_43:
	vpunpcklqdq	%xmm4, %xmm5, %xmm0
	cmpq	$16, %r10
	jb	.LBB0_50
	leaq	-16(%r10), %rdx
	testb	$16, %dl
	jne	.LBB0_46
	vpxorq	%xmm22, %xmm21, %xmm1
	leaq	16(%r9), %rsi
	leaq	16(%rax), %rcx
	movq	%rdx, %r10
	vaesenc	%xmm25, %xmm1, %xmm1
	vaesenc	%xmm27, %xmm1, %xmm1
	vaesenc	%xmm29, %xmm1, %xmm1
	vaesenc	%xmm30, %xmm1, %xmm1
	vaesenc	%xmm31, %xmm1, %xmm1
	vaesenc	%xmm16, %xmm1, %xmm1
	vaesenc	%xmm18, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm26, %xmm1, %xmm1
	vaesenc	%xmm24, %xmm1, %xmm1
	vaesenc	%xmm17, %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	(%r9), %xmm1, %xmm3
	vpaddd	.LCPI0_0(%rip), %xmm21, %xmm1
	movq	%rsi, %r9
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqu	%xmm3, (%rax)
	movq	%rcx, %rax
	vmovdqa64	%xmm1, %xmm21
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm5, %xmm3, %xmm3
	vpslldq	$8, %xmm3, %xmm5
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpxor	%xmm2, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	jmp	.LBB0_47
.LBB0_46:
.LBB0_47:
	cmpq	$16, %rdx
	jb	.LBB0_51
	vpmovsxbq	.LCPI0_28(%rip), %xmm1
	vpmovsxbq	.LCPI0_29(%rip), %xmm3
	.p2align	4
.LBB0_49:
	vpxorq	%xmm22, %xmm21, %xmm4
	vpaddd	%xmm1, %xmm21, %xmm7
	addq	$-32, %r10
	vpaddd	%xmm3, %xmm21, %xmm21
	vaesenc	%xmm25, %xmm4, %xmm4
	vaesenc	%xmm27, %xmm4, %xmm4
	vaesenc	%xmm29, %xmm4, %xmm4
	vaesenc	%xmm30, %xmm4, %xmm4
	vaesenc	%xmm31, %xmm4, %xmm4
	vaesenc	%xmm16, %xmm4, %xmm4
	vaesenc	%xmm18, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm26, %xmm4, %xmm4
	vaesenc	%xmm24, %xmm4, %xmm4
	vaesenc	%xmm17, %xmm4, %xmm4
	vaesenclast	%xmm10, %xmm4, %xmm4
	vpxor	(%r9), %xmm4, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vmovdqu	%xmm4, (%rax)
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm6, %xmm4, %xmm4
	vpslldq	$8, %xmm4, %xmm6
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpternlogq	$150, %xmm2, %xmm4, %xmm6
	vpxorq	%xmm7, %xmm22, %xmm4
	vpshufd	$78, %xmm5, %xmm2
	vaesenc	%xmm25, %xmm4, %xmm4
	vaesenc	%xmm27, %xmm4, %xmm4
	vaesenc	%xmm29, %xmm4, %xmm4
	vaesenc	%xmm30, %xmm4, %xmm4
	vaesenc	%xmm31, %xmm4, %xmm4
	vaesenc	%xmm16, %xmm4, %xmm4
	vaesenc	%xmm18, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm26, %xmm4, %xmm4
	vaesenc	%xmm24, %xmm4, %xmm4
	vaesenc	%xmm17, %xmm4, %xmm4
	vaesenclast	%xmm10, %xmm4, %xmm4
	vpxor	16(%r9), %xmm4, %xmm4
	leaq	32(%r9), %r9
	vpternlogq	$150, %xmm6, %xmm4, %xmm2
	vmovdqu	%xmm4, 16(%rax)
	leaq	32(%rax), %rax
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm6, %xmm4, %xmm4
	vpslldq	$8, %xmm4, %xmm6
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpxor	%xmm2, %xmm6, %xmm6
	vpshufd	$78, %xmm5, %xmm2
	vpternlogq	$150, %xmm4, %xmm6, %xmm2
	cmpq	$15, %r10
	ja	.LBB0_49
.LBB0_50:
	movq	%rax, %rcx
	movq	%r9, %rsi
	vmovdqa64	%xmm21, %xmm1
	movq	%r10, %rdx
.LBB0_51:
	vpunpcklqdq	%xmm8, %xmm20, %xmm3
	vpsllq	$3, %xmm0, %xmm0
	testq	%rdx, %rdx
	je	.LBB0_53
	vpxorq	%xmm22, %xmm1, %xmm1
	movl	$-1, %eax
	vaesenc	%xmm25, %xmm1, %xmm1
	bzhil	%edx, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rsi), %xmm4 {%k1} {z}
	vaesenc	%xmm27, %xmm1, %xmm1
	vaesenc	%xmm29, %xmm1, %xmm1
	vaesenc	%xmm30, %xmm1, %xmm1
	vaesenc	%xmm31, %xmm1, %xmm1
	vaesenc	%xmm16, %xmm1, %xmm1
	vaesenc	%xmm18, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm26, %xmm1, %xmm1
	vaesenc	%xmm24, %xmm1, %xmm1
	vaesenc	%xmm17, %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vmovdqu8	%xmm1, %xmm4 {%k1} {z}
	vpxor	%xmm4, %xmm2, %xmm2
	vmovdqu8	%xmm1, (%rcx) {%k1}
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpsrldq	$8, %xmm5, %xmm1
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpxor	%xmm2, %xmm6, %xmm5
	vpshufd	$78, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm5, %xmm2
.LBB0_53:
	vpxor	%xmm0, %xmm2, %xmm0
	xorl	%eax, %eax
	vpclmulqdq	$1, %xmm0, %xmm28, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm28, %xmm4
	vpclmulqdq	$0, %xmm0, %xmm28, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm28, %xmm0
	vpxor	%xmm2, %xmm4, %xmm2
	vpslldq	$8, %xmm2, %xmm4
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	vpternlogq	$120, .LCPI0_26(%rip), %xmm0, %xmm22
	vaesenc	%xmm25, %xmm22, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm29, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm31, %xmm0, %xmm0
	vaesenc	%xmm16, %xmm0, %xmm0
	vaesenc	%xmm18, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm24, %xmm0, %xmm0
	vaesenc	%xmm17, %xmm0, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpshufd	$238, %xmm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	testq	%rcx, %rcx
	sete	%al
.LBB0_54:
	addq	$1784, %rsp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmsiv_zen4_decrypt, .Lfunc_end0-haberdashery_aes256gcmsiv_zen4_decrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_1:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_3:
	.quad	4
	.quad	0
.LCPI1_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_5:
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
.LCPI1_14:
	.quad	-1
	.quad	9223372036854775807
.LCPI1_15:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	128
.LCPI1_16:
	.quad	0
	.quad	8
.LCPI1_25:
	.long	32
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_6:
	.quad	4294967297
.LCPI1_7:
	.quad	8589934594
.LCPI1_8:
	.quad	17179869188
.LCPI1_9:
	.quad	34359738376
.LCPI1_10:
	.quad	68719476752
.LCPI1_11:
	.quad	137438953504
.LCPI1_12:
	.quad	274877907008
.LCPI1_13:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.LCPI1_17:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_18:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	16
	.long	0
	.long	0
	.long	0
	.long	17
	.long	0
	.long	0
	.long	0
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
.LCPI1_23:
	.long	24
	.long	0
	.long	0
	.long	0
	.long	25
	.long	0
	.long	0
	.long	0
	.long	26
	.long	0
	.long	0
	.long	0
	.long	27
	.long	0
	.long	0
	.long	0
.LCPI1_24:
	.long	28
	.long	0
	.long	0
	.long	0
	.long	29
	.long	0
	.long	0
	.long	0
	.long	30
	.long	0
	.long	0
	.long	0
	.long	31
	.long	0
	.long	0
	.long	0
.LCPI1_27:
	.byte	32
	.byte	0
.LCPI1_28:
	.byte	1
	.byte	0
.LCPI1_29:
	.byte	2
	.byte	0
.LCPI1_30:
	.byte	3
	.byte	0
.LCPI1_31:
	.byte	4
	.byte	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_26:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_zen4_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_zen4_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_zen4_encrypt,@function
haberdashery_aes256gcmsiv_zen4_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$1088, %rsp
	.cfi_def_cfa_offset 1104
	.cfi_offset %rbx, -16
	movq	1104(%rsp), %r10
	xorl	%eax, %eax
	cmpq	1120(%rsp), %r10
	jne	.LBB1_58
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r11b
	cmpq	%rax, %r10
	setb	%bl
	andb	%r11b, %bl
	cmpq	$16, 1136(%rsp)
	sete	%r11b
	cmpq	$12, %rdx
	sete	%al
	andb	%r11b, %al
	andb	%bl, %al
	cmpb	$1, %al
	jne	.LBB1_57
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vmovaps	16(%rdi), %xmm5
	vmovaps	32(%rdi), %xmm6
	vmovaps	48(%rdi), %xmm7
	vmovaps	64(%rdi), %xmm4
	vpbroadcastd	.LCPI1_26(%rip), %xmm14
	vxorps	%xmm30, %xmm30, %xmm30
	vpbroadcastq	.LCPI1_13(%rip), %xmm16
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm1
	vxorps	.LCPI1_0(%rip), %xmm1, %xmm2
	vxorps	.LCPI1_1(%rip), %xmm1, %xmm0
	vxorps	.LCPI1_2(%rip), %xmm1, %xmm3
	vxorps	.LCPI1_3(%rip), %xmm1, %xmm13
	vxorps	.LCPI1_4(%rip), %xmm1, %xmm8
	#APP
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	112(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	144(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	176(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	224(%rdi), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm1, %xmm1
	vaesenclast	%xmm4, %xmm2, %xmm2
	vaesenclast	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm3, %xmm3
	vaesenclast	%xmm4, %xmm13, %xmm13
	vaesenclast	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovlhps	%xmm3, %xmm0, %xmm9
	vpunpcklqdq	%xmm2, %xmm1, %xmm15
	vmovlhps	%xmm0, %xmm30, %xmm2
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vmovdqu64	%zmm8, 1024(%rsp)
	vpunpcklqdq	%xmm8, %xmm13, %xmm8
	vpslldq	$4, %xmm9, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpbroadcastq	.LCPI1_6(%rip), %xmm2
	vpshufb	%xmm14, %xmm8, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm10
	vmovlhps	%xmm13, %xmm30, %xmm1
	vpternlogq	$150, %xmm0, %xmm9, %xmm10
	vpslldq	$4, %xmm8, %xmm0
	vinsertps	$55, %xmm13, %xmm0, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vaesenclast	%xmm30, %xmm0, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpternlogq	$150, %xmm2, %xmm8, %xmm11
	vpslldq	$12, %xmm10, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_7(%rip), %xmm1
	vpshufb	%xmm14, %xmm11, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpternlogq	$150, %xmm2, %xmm10, %xmm12
	vpslldq	$12, %xmm11, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vaesenclast	%xmm30, %xmm0, %xmm17
	vpslldq	$4, %xmm12, %xmm0
	vpternlogq	$150, %xmm2, %xmm11, %xmm17
	vpslldq	$12, %xmm12, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_8(%rip), %xmm1
	vpshufb	%xmm14, %xmm17, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm7
	vpslldq	$4, %xmm17, %xmm0
	vpslldq	$8, %xmm17, %xmm1
	vpternlogq	$150, %xmm2, %xmm12, %xmm7
	vpslldq	$12, %xmm17, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vmovups	%zmm7, 768(%rsp)
	vaesenclast	%xmm30, %xmm0, %xmm23
	vpslldq	$4, %xmm7, %xmm0
	vpternlogq	$150, %xmm2, %xmm17, %xmm23
	vpslldq	$12, %xmm7, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_9(%rip), %xmm1
	vpshufb	%xmm14, %xmm23, %xmm0
	vmovdqu64	%zmm23, 704(%rsp)
	vaesenclast	%xmm1, %xmm0, %xmm24
	vpslldq	$4, %xmm23, %xmm0
	vpslldq	$8, %xmm23, %xmm1
	vpternlogq	$150, %xmm2, %xmm7, %xmm24
	vpslldq	$12, %xmm23, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm1
	vpshufd	$255, %xmm24, %xmm0
	vpslldq	$12, %xmm24, %xmm4
	vmovups	%zmm24, 640(%rsp)
	vaesenclast	%xmm30, %xmm0, %xmm25
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm23, %xmm25
	vpslldq	$4, %xmm24, %xmm2
	vmovdqu64	%zmm25, 576(%rsp)
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	vpslldq	$8, %xmm24, %xmm3
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm1
	vpshufb	%xmm14, %xmm25, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm18
	vpternlogq	$150, %xmm1, %xmm3, %xmm18
	vpbroadcastq	.LCPI1_10(%rip), %xmm1
	vpclmulqdq	$1, %xmm18, %xmm18, %xmm3
	vpclmulqdq	$0, %xmm18, %xmm18, %xmm0
	vpclmulqdq	$17, %xmm18, %xmm18, %xmm5
	vpxor	%xmm3, %xmm3, %xmm3
	vpslldq	$8, %xmm3, %xmm6
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm2, %xmm26
	vpslldq	$4, %xmm25, %xmm2
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm19
	vpternlogq	$150, %xmm4, %xmm24, %xmm26
	vmovdqu64	%zmm26, 512(%rsp)
	vpxor	%xmm5, %xmm6, %xmm5
	vpternlogq	$150, %xmm3, %xmm5, %xmm19
	vpclmulqdq	$1, %xmm19, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm19, %xmm18, %xmm3
	vpclmulqdq	$0, %xmm19, %xmm18, %xmm0
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$17, %xmm19, %xmm18, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm20
	vpxor	%xmm3, %xmm4, %xmm3
	vpternlogq	$150, %xmm1, %xmm3, %xmm20
	vpslldq	$8, %xmm25, %xmm1
	vpslldq	$12, %xmm25, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$1, %xmm20, %xmm18, %xmm4
	vpclmulqdq	$16, %xmm20, %xmm18, %xmm1
	vpclmulqdq	$0, %xmm20, %xmm18, %xmm0
	vpclmulqdq	$17, %xmm20, %xmm18, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$8, %xmm1, %xmm4
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm21
	vpxor	%xmm2, %xmm4, %xmm2
	vpslldq	$12, %xmm26, %xmm4
	vpternlogq	$150, %xmm1, %xmm2, %xmm21
	vpshufd	$255, %xmm26, %xmm1
	vaesenclast	%xmm30, %xmm1, %xmm27
	vpclmulqdq	$1, %xmm21, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm21, %xmm18, %xmm2
	vpclmulqdq	$0, %xmm21, %xmm18, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm25, %xmm27
	vpclmulqdq	$17, %xmm21, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vmovdqu64	%zmm27, 448(%rsp)
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm22
	vpxor	%xmm2, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm2, %xmm22
	vpslldq	$4, %xmm26, %xmm1
	vpslldq	$8, %xmm26, %xmm2
	vpclmulqdq	$1, %xmm22, %xmm18, %xmm3
	vpclmulqdq	$16, %xmm22, %xmm18, %xmm5
	vpclmulqdq	$0, %xmm22, %xmm18, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm4
	vpshufb	%xmm14, %xmm27, %xmm1
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm22, %xmm18, %xmm5
	vpslldq	$8, %xmm3, %xmm6
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm28
	vpxor	%xmm5, %xmm6, %xmm5
	vpternlogq	$150, %xmm3, %xmm5, %xmm28
	vpbroadcastq	.LCPI1_11(%rip), %xmm3
	vpclmulqdq	$1, %xmm28, %xmm18, %xmm2
	vpclmulqdq	$16, %xmm28, %xmm18, %xmm5
	vpclmulqdq	$0, %xmm28, %xmm18, %xmm0
	vmovdqu64	%zmm28, 960(%rsp)
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$17, %xmm28, %xmm18, %xmm5
	vpslldq	$8, %xmm2, %xmm6
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm29
	vpxor	%xmm5, %xmm6, %xmm5
	vaesenclast	%xmm3, %xmm1, %xmm6
	vpternlogq	$150, %xmm2, %xmm5, %xmm29
	vpslldq	$4, %xmm27, %xmm2
	vmovapd	%xmm2, -128(%rsp)
	vpclmulqdq	$1, %xmm29, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm29, %xmm18, %xmm2
	vpclmulqdq	$0, %xmm29, %xmm18, %xmm0
	vmovdqu64	%zmm29, 896(%rsp)
	vpternlogq	$150, %xmm4, %xmm26, %xmm6
	vmovdqu64	%zmm6, 384(%rsp)
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm29, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm31
	vpslldq	$12, %xmm27, %xmm0
	vmovapd	%xmm0, 192(%rsp)
	vpshufd	$255, %xmm6, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm27, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm31
	vmovapd	%xmm3, 128(%rsp)
	vmovdqu64	%zmm31, 256(%rsp)
	cmpq	$576, %r8
	jb	.LBB1_6
	vshufi64x2	$0, %zmm28, %zmm28, %zmm5
	vpbroadcastq	.LCPI1_13(%rip), %zmm28
	vshufi64x2	$0, %zmm31, %zmm31, %zmm7
	vshufi64x2	$0, %zmm18, %zmm18, %zmm0
	vshufi64x2	$0, %zmm19, %zmm19, %zmm1
	vshufi64x2	$0, %zmm20, %zmm20, %zmm2
	vshufi64x2	$0, %zmm21, %zmm21, %zmm3
	vshufi64x2	$0, %zmm22, %zmm22, %zmm4
	vshufi64x2	$0, %zmm29, %zmm29, %zmm6
	vmovapd	%zmm17, %zmm14
	vmovdqu64	%zmm19, (%rsp)
	vmovdqu64	%zmm20, -64(%rsp)
	vmovdqu64	%zmm21, 320(%rsp)
	vmovdqu64	%zmm22, 832(%rsp)
	vpxord	%xmm31, %xmm31, %xmm31
	movq	%r8, %rdi
	.p2align	4
.LBB1_4:
	vmovdqu64	384(%rcx), %zmm27
	vmovdqu64	448(%rcx), %zmm29
	vmovdqu64	320(%rcx), %zmm22
	vpxord	(%rcx), %zmm31, %zmm31
	addq	$-512, %rdi
	vpunpcklqdq	%zmm27, %zmm1, %zmm21
	vpunpckhqdq	%zmm27, %zmm1, %zmm20
	vpunpcklqdq	%zmm29, %zmm0, %zmm30
	vpunpckhqdq	%zmm29, %zmm0, %zmm26
	vpclmulqdq	$0, %zmm27, %zmm1, %zmm17
	vpclmulqdq	$0, %zmm29, %zmm0, %zmm19
	vpunpcklqdq	%zmm22, %zmm2, %zmm23
	vpunpckhqdq	%zmm22, %zmm2, %zmm25
	vpclmulqdq	$0, %zmm22, %zmm2, %zmm24
	vpclmulqdq	$17, %zmm27, %zmm1, %zmm27
	vpxorq	%zmm21, %zmm20, %zmm20
	vmovdqu64	256(%rcx), %zmm21
	vpxorq	%zmm30, %zmm26, %zmm26
	vpxorq	%zmm23, %zmm25, %zmm23
	vpclmulqdq	$17, %zmm29, %zmm0, %zmm30
	vmovdqu64	64(%rcx), %zmm29
	vpclmulqdq	$1, %zmm26, %zmm26, %zmm26
	vpclmulqdq	$1, %zmm20, %zmm20, %zmm20
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm23
	vpxorq	%zmm19, %zmm17, %zmm17
	vpxorq	%zmm30, %zmm27, %zmm27
	vpxorq	%zmm26, %zmm20, %zmm19
	vpclmulqdq	$17, %zmm22, %zmm2, %zmm20
	vpunpcklqdq	%zmm21, %zmm3, %zmm22
	vpunpckhqdq	%zmm21, %zmm3, %zmm25
	vpclmulqdq	$0, %zmm21, %zmm3, %zmm26
	vpxorq	%zmm22, %zmm25, %zmm22
	vmovdqu64	192(%rcx), %zmm25
	vpclmulqdq	$1, %zmm22, %zmm22, %zmm22
	vpternlogq	$150, %zmm24, %zmm17, %zmm26
	vpclmulqdq	$17, %zmm21, %zmm3, %zmm17
	vpternlogq	$150, %zmm23, %zmm19, %zmm22
	vpternlogq	$150, %zmm20, %zmm27, %zmm17
	vpunpcklqdq	%zmm25, %zmm4, %zmm21
	vpunpckhqdq	%zmm25, %zmm4, %zmm24
	vpclmulqdq	$0, %zmm25, %zmm4, %zmm30
	vpclmulqdq	$17, %zmm25, %zmm4, %zmm19
	vpxorq	%zmm21, %zmm24, %zmm21
	vmovdqu64	128(%rcx), %zmm24
	leaq	512(%rcx), %rcx
	vpclmulqdq	$1, %zmm21, %zmm21, %zmm21
	vpunpcklqdq	%zmm24, %zmm5, %zmm23
	vpunpckhqdq	%zmm24, %zmm5, %zmm25
	vpclmulqdq	$17, %zmm24, %zmm5, %zmm20
	vpxorq	%zmm23, %zmm25, %zmm23
	vpclmulqdq	$0, %zmm24, %zmm5, %zmm25
	vpunpckhqdq	%zmm29, %zmm6, %zmm24
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm23
	vpternlogq	$150, %zmm19, %zmm17, %zmm20
	vpunpcklqdq	%zmm31, %zmm7, %zmm19
	vpclmulqdq	$17, %zmm29, %zmm6, %zmm17
	vpternlogq	$150, %zmm30, %zmm26, %zmm25
	vpunpcklqdq	%zmm29, %zmm6, %zmm26
	vpternlogq	$150, %zmm21, %zmm22, %zmm23
	vpxorq	%zmm26, %zmm24, %zmm21
	vpclmulqdq	$0, %zmm29, %zmm6, %zmm22
	vpclmulqdq	$0, %zmm31, %zmm7, %zmm24
	vpunpckhqdq	%zmm31, %zmm7, %zmm26
	vpxorq	%zmm19, %zmm26, %zmm19
	vpclmulqdq	$1, %zmm21, %zmm21, %zmm21
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm19
	vpternlogq	$150, %zmm22, %zmm25, %zmm24
	vpclmulqdq	$17, %zmm31, %zmm7, %zmm22
	vpternlogq	$150, %zmm21, %zmm23, %zmm19
	vpternlogq	$150, %zmm17, %zmm20, %zmm22
	vpternlogq	$150, %zmm24, %zmm22, %zmm19
	vpslldq	$8, %zmm19, %zmm17
	vpsrldq	$8, %zmm19, %zmm19
	vxorpd	%zmm24, %zmm17, %zmm17
	vpclmulqdq	$16, %zmm28, %zmm17, %zmm20
	vpshufd	$78, %zmm17, %zmm17
	vpxorq	%zmm17, %zmm20, %zmm17
	vpclmulqdq	$16, %zmm28, %zmm17, %zmm20
	vpshufd	$78, %zmm17, %zmm17
	vpxorq	%zmm22, %zmm20, %zmm31
	vpternlogd	$150, %zmm17, %zmm19, %zmm31
	cmpq	$575, %rdi
	ja	.LBB1_4
	vmovapd	%zmm14, %zmm17
	vmovupd	768(%rsp), %zmm7
	vmovupd	704(%rsp), %zmm23
	vmovupd	640(%rsp), %zmm24
	vmovupd	576(%rsp), %zmm25
	vmovupd	512(%rsp), %zmm26
	vmovupd	448(%rsp), %zmm27
	vmovdqu64	384(%rsp), %zmm6
	vpbroadcastd	.LCPI1_26(%rip), %xmm14
	vmovdqu64	(%rsp), %zmm19
	vmovdqu64	-64(%rsp), %zmm20
	vmovdqu64	320(%rsp), %zmm21
	vmovdqu64	832(%rsp), %zmm22
	vmovdqa64	192(%rsp), %xmm29
	vxorps	%xmm30, %xmm30, %xmm30
	jmp	.LBB1_7
.LBB1_6:
	vmovdqa64	192(%rsp), %xmm29
	vpxord	%xmm31, %xmm31, %xmm31
	movq	%r8, %rdi
	vpxord	%xmm28, %xmm28, %xmm28
	movq	%r8, %rdx
	cmpq	$64, %r8
	jb	.LBB1_15
.LBB1_7:
	vmovdqu64	(%rcx), %zmm0
	addq	$64, %rcx
	leaq	-64(%rdi), %rdx
	cmpq	$128, %rdi
	jb	.LBB1_14
	addq	$-128, %rdi
	vshufi64x2	$0, %zmm18, %zmm18, %zmm28
	movl	%edi, %r11d
	notl	%r11d
	testb	$-64, %r11b
	je	.LBB1_11
	vpbroadcastq	.LCPI1_13(%rip), %zmm1
	movl	%edi, %r11d
	shrl	$6, %r11d
	incl	%r11d
	andl	$3, %r11d
	.p2align	4
.LBB1_10:
	vpxord	%zmm0, %zmm31, %zmm2
	vmovdqu64	(%rcx), %zmm0
	addq	$64, %rcx
	addq	$-64, %rdx
	decq	%r11
	vpunpcklqdq	%zmm2, %zmm28, %zmm3
	vpunpckhqdq	%zmm2, %zmm28, %zmm5
	vpclmulqdq	$0, %zmm2, %zmm28, %zmm4
	vpclmulqdq	$17, %zmm2, %zmm28, %zmm2
	vpxorq	%zmm3, %zmm5, %zmm3
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm4, %zmm2, %zmm3
	vpslldq	$8, %zmm3, %zmm5
	vpsrldq	$8, %zmm3, %zmm3
	vxorpd	%zmm4, %zmm5, %zmm4
	vpclmulqdq	$16, %zmm1, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm5, %zmm4
	vpclmulqdq	$16, %zmm1, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm2, %zmm5, %zmm31
	vpternlogd	$150, %zmm3, %zmm4, %zmm31
	jne	.LBB1_10
.LBB1_11:
	cmpq	$192, %rdi
	jb	.LBB1_14
	vpbroadcastq	.LCPI1_13(%rip), %zmm1
	.p2align	4
.LBB1_13:
	vpxord	%zmm0, %zmm31, %zmm0
	addq	$-256, %rdx
	vpunpcklqdq	%zmm0, %zmm28, %zmm2
	vpunpckhqdq	%zmm0, %zmm28, %zmm4
	vpclmulqdq	$0, %zmm0, %zmm28, %zmm3
	vpclmulqdq	$17, %zmm0, %zmm28, %zmm0
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpternlogq	$150, %zmm3, %zmm0, %zmm2
	vpslldq	$8, %zmm2, %zmm4
	vpsrldq	$8, %zmm2, %zmm2
	vxorpd	%zmm3, %zmm4, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm4
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm3, %zmm4, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm4
	vpshufd	$78, %zmm3, %zmm3
	vpternlogd	$150, %zmm0, %zmm2, %zmm4
	vpternlogd	$150, (%rcx), %zmm3, %zmm4
	vpunpcklqdq	%zmm4, %zmm28, %zmm0
	vpunpckhqdq	%zmm4, %zmm28, %zmm3
	vpclmulqdq	$0, %zmm4, %zmm28, %zmm2
	vpxorq	%zmm0, %zmm3, %zmm0
	vpclmulqdq	$17, %zmm4, %zmm28, %zmm3
	vpclmulqdq	$1, %zmm0, %zmm0, %zmm0
	vpternlogq	$150, %zmm2, %zmm3, %zmm0
	vpslldq	$8, %zmm0, %zmm4
	vpsrldq	$8, %zmm0, %zmm0
	vxorpd	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpternlogd	$150, %zmm3, %zmm0, %zmm4
	vpternlogd	$150, 64(%rcx), %zmm2, %zmm4
	vpunpcklqdq	%zmm4, %zmm28, %zmm0
	vpunpckhqdq	%zmm4, %zmm28, %zmm3
	vpclmulqdq	$0, %zmm4, %zmm28, %zmm2
	vpxorq	%zmm0, %zmm3, %zmm0
	vpclmulqdq	$17, %zmm4, %zmm28, %zmm3
	vpclmulqdq	$1, %zmm0, %zmm0, %zmm0
	vpternlogq	$150, %zmm2, %zmm3, %zmm0
	vpslldq	$8, %zmm0, %zmm4
	vpsrldq	$8, %zmm0, %zmm0
	vxorpd	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpternlogd	$150, %zmm3, %zmm0, %zmm4
	vpternlogd	$150, 128(%rcx), %zmm2, %zmm4
	vmovdqu64	192(%rcx), %zmm0
	addq	$256, %rcx
	vpunpcklqdq	%zmm4, %zmm28, %zmm2
	vpunpckhqdq	%zmm4, %zmm28, %zmm5
	vpclmulqdq	$0, %zmm4, %zmm28, %zmm3
	vpclmulqdq	$17, %zmm4, %zmm28, %zmm4
	vpxorq	%zmm2, %zmm5, %zmm2
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpternlogq	$150, %zmm3, %zmm4, %zmm2
	vpslldq	$8, %zmm2, %zmm5
	vpsrldq	$8, %zmm2, %zmm2
	vxorpd	%zmm3, %zmm5, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm5
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm3, %zmm5, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm5
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm4, %zmm5, %zmm31
	vpternlogd	$150, %zmm2, %zmm3, %zmm31
	cmpq	$63, %rdx
	ja	.LBB1_13
.LBB1_14:
	vpxord	%zmm31, %zmm0, %zmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vextracti128	$1, %ymm0, %xmm3
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm4
	vpslldq	$8, %xmm2, %xmm5
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vextracti32x4	$2, %zmm0, %xmm4
	vextracti32x4	$3, %zmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpxor	%xmm3, %xmm5, %xmm3
	vpslldq	$8, %xmm3, %xmm5
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm5
	vpternlogq	$150, %xmm4, %xmm1, %xmm5
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm28
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
.LBB1_15:
	vmovdqa	128(%rsp), %xmm0
	vmovdqa	64(%rsp), %xmm1
	vpternlogq	$150, -128(%rsp), %xmm0, %xmm29
	vaesenclast	%xmm30, %xmm1, %xmm30
	cmpq	$16, %rdx
	jb	.LBB1_16
	vmovdqu64	256(%rsp), %zmm31
	leaq	-16(%rdx), %rdi
	movl	%edi, %r11d
	notl	%r11d
	testb	$48, %r11b
	je	.LBB1_20
	movl	%edi, %r11d
	shrl	$4, %r11d
	incl	%r11d
	andl	$3, %r11d
	.p2align	4
.LBB1_19:
	vpxorq	(%rcx), %xmm28, %xmm0
	addq	$-16, %rdx
	addq	$16, %rcx
	decq	%r11
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm28
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	jne	.LBB1_19
.LBB1_20:
	cmpq	$48, %rdi
	jb	.LBB1_21
	.p2align	4
.LBB1_27:
	vpxorq	(%rcx), %xmm28, %xmm0
	addq	$-64, %rdx
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, 16(%rcx), %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, 32(%rcx), %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, 48(%rcx), %xmm3, %xmm0
	addq	$64, %rcx
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm28
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	cmpq	$15, %rdx
	ja	.LBB1_27
	jmp	.LBB1_21
.LBB1_16:
	vmovdqu64	256(%rsp), %zmm31
.LBB1_21:
	vpternlogq	$150, %xmm29, %xmm27, %xmm30
	testq	%rdx, %rdx
	je	.LBB1_23
	movl	$-1, %edi
	bzhil	%edx, %edi, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	vpxorq	%xmm0, %xmm28, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm28
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
.LBB1_23:
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm2
	vpslldq	$4, %xmm6, %xmm0
	vmovdqa64	%xmm28, %xmm29
	vmovdqu64	%zmm30, 192(%rsp)
	vmovapd	%xmm1, 64(%rsp)
	vpshufb	%xmm14, %xmm30, %xmm1
	vmovapd	%xmm2, -128(%rsp)
	vmovq	%r10, %xmm2
	vmovapd	%xmm0, 128(%rsp)
	vmovdqa	%xmm2, -64(%rsp)
	vmovdqa	%xmm1, (%rsp)
	vmovq	%r8, %xmm1
	vmovdqa	%xmm1, 320(%rsp)
	cmpq	$576, %r10
	jb	.LBB1_28
	vmovdqu64	960(%rsp), %zmm5
	vmovdqu64	896(%rsp), %zmm6
	vshufi64x2	$0, %zmm20, %zmm20, %zmm2
	vpbroadcastq	.LCPI1_13(%rip), %zmm20
	vshufi64x2	$0, %zmm18, %zmm18, %zmm0
	vshufi64x2	$0, %zmm19, %zmm19, %zmm1
	vshufi64x2	$0, %zmm21, %zmm21, %zmm3
	vshufi64x2	$0, %zmm22, %zmm22, %zmm4
	vshufi64x2	$0, %zmm31, %zmm31, %zmm7
	movq	%r9, %rcx
	movq	%r10, %rdi
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vshufi64x2	$0, %zmm6, %zmm6, %zmm6
	.p2align	4
.LBB1_25:
	vmovdqu64	448(%rcx), %zmm21
	vmovdqu64	384(%rcx), %zmm25
	vmovdqu64	320(%rcx), %zmm31
	vmovdqu64	256(%rcx), %zmm19
	vpxord	(%rcx), %zmm29, %zmm29
	addq	$-512, %rdi
	vpunpcklqdq	%zmm21, %zmm0, %zmm22
	vpunpckhqdq	%zmm21, %zmm0, %zmm24
	vpunpcklqdq	%zmm25, %zmm1, %zmm14
	vpunpckhqdq	%zmm25, %zmm1, %zmm28
	vpclmulqdq	$0, %zmm21, %zmm0, %zmm23
	vpunpcklqdq	%zmm31, %zmm2, %zmm30
	vpclmulqdq	$0, %zmm25, %zmm1, %zmm26
	vpclmulqdq	$17, %zmm25, %zmm1, %zmm25
	vpclmulqdq	$0, %zmm31, %zmm2, %zmm27
	vpxorq	%zmm22, %zmm24, %zmm22
	vpclmulqdq	$17, %zmm21, %zmm0, %zmm24
	vpxorq	%zmm14, %zmm28, %zmm21
	vpunpckhqdq	%zmm31, %zmm2, %zmm14
	vpclmulqdq	$1, %zmm21, %zmm21, %zmm28
	vpclmulqdq	$1, %zmm22, %zmm22, %zmm22
	vpxorq	%zmm30, %zmm14, %zmm14
	vpunpckhqdq	%zmm19, %zmm3, %zmm30
	vmovdqu64	64(%rcx), %zmm21
	vpclmulqdq	$1, %zmm14, %zmm14, %zmm14
	vpxorq	%zmm23, %zmm26, %zmm23
	vpclmulqdq	$17, %zmm31, %zmm2, %zmm26
	vpclmulqdq	$0, %zmm19, %zmm3, %zmm31
	vpxorq	%zmm24, %zmm25, %zmm24
	vpxorq	%zmm22, %zmm28, %zmm22
	vpunpcklqdq	%zmm19, %zmm3, %zmm28
	vpclmulqdq	$17, %zmm19, %zmm3, %zmm19
	vpxorq	%zmm28, %zmm30, %zmm28
	vmovdqu64	192(%rcx), %zmm30
	vpternlogq	$150, %zmm27, %zmm23, %zmm31
	vpclmulqdq	$1, %zmm28, %zmm28, %zmm28
	vpternlogq	$150, %zmm26, %zmm24, %zmm19
	vpunpckhqdq	%zmm21, %zmm6, %zmm26
	vpternlogq	$150, %zmm14, %zmm22, %zmm28
	vpunpcklqdq	%zmm30, %zmm4, %zmm23
	vpunpckhqdq	%zmm30, %zmm4, %zmm25
	vpclmulqdq	$0, %zmm30, %zmm4, %zmm27
	vpclmulqdq	$17, %zmm30, %zmm4, %zmm14
	vpxorq	%zmm23, %zmm25, %zmm23
	vmovdqu64	128(%rcx), %zmm25
	leaq	512(%rcx), %rcx
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm23
	vpunpcklqdq	%zmm25, %zmm5, %zmm22
	vpunpckhqdq	%zmm25, %zmm5, %zmm30
	vpclmulqdq	$17, %zmm25, %zmm5, %zmm24
	vpxorq	%zmm22, %zmm30, %zmm22
	vpclmulqdq	$0, %zmm25, %zmm5, %zmm30
	vpclmulqdq	$0, %zmm21, %zmm6, %zmm25
	vpclmulqdq	$1, %zmm22, %zmm22, %zmm22
	vpternlogq	$150, %zmm14, %zmm19, %zmm24
	vpunpcklqdq	%zmm29, %zmm7, %zmm19
	vpclmulqdq	$17, %zmm21, %zmm6, %zmm14
	vpternlogq	$150, %zmm27, %zmm31, %zmm30
	vpunpcklqdq	%zmm21, %zmm6, %zmm27
	vpclmulqdq	$0, %zmm29, %zmm7, %zmm21
	vpternlogq	$150, %zmm23, %zmm28, %zmm22
	vpxorq	%zmm27, %zmm26, %zmm23
	vpunpckhqdq	%zmm29, %zmm7, %zmm26
	vpxorq	%zmm19, %zmm26, %zmm19
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm23
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm19
	vpternlogq	$150, %zmm25, %zmm30, %zmm21
	vpternlogq	$150, %zmm23, %zmm22, %zmm19
	vpclmulqdq	$17, %zmm29, %zmm7, %zmm23
	vpternlogq	$150, %zmm14, %zmm24, %zmm23
	vpternlogq	$150, %zmm21, %zmm23, %zmm19
	vpslldq	$8, %zmm19, %zmm14
	vpsrldq	$8, %zmm19, %zmm19
	vxorpd	%zmm21, %zmm14, %zmm14
	vpclmulqdq	$16, %zmm20, %zmm14, %zmm21
	vpshufd	$78, %zmm14, %zmm14
	vpxorq	%zmm14, %zmm21, %zmm14
	vpclmulqdq	$16, %zmm20, %zmm14, %zmm21
	vpshufd	$78, %zmm14, %zmm14
	vpxorq	%zmm23, %zmm21, %zmm29
	vpternlogd	$150, %zmm14, %zmm19, %zmm29
	cmpq	$575, %rdi
	ja	.LBB1_25
	vmovupd	768(%rsp), %zmm7
	vmovupd	704(%rsp), %zmm23
	vmovupd	640(%rsp), %zmm24
	vmovupd	576(%rsp), %zmm25
	vmovupd	512(%rsp), %zmm26
	vmovupd	448(%rsp), %zmm27
	vmovupd	384(%rsp), %zmm6
	vmovdqu64	192(%rsp), %zmm30
	vmovdqa	-128(%rsp), %xmm14
	jmp	.LBB1_29
.LBB1_28:
	vmovdqa	-128(%rsp), %xmm14
	movq	%r9, %rcx
	movq	%r10, %rdi
	movq	%r10, %rdx
	cmpq	$64, %r10
	jb	.LBB1_37
.LBB1_29:
	vmovdqu64	(%rcx), %zmm0
	addq	$64, %rcx
	leaq	-64(%rdi), %rdx
	cmpq	$128, %rdi
	jb	.LBB1_36
	addq	$-128, %rdi
	vshufi64x2	$0, %zmm18, %zmm18, %zmm18
	movl	%edi, %r8d
	notl	%r8d
	testb	$-64, %r8b
	je	.LBB1_33
	vpbroadcastq	.LCPI1_13(%rip), %zmm1
	movl	%edi, %r8d
	shrl	$6, %r8d
	incl	%r8d
	andl	$3, %r8d
	.p2align	4
.LBB1_32:
	vpxord	%zmm0, %zmm29, %zmm2
	vmovdqu64	(%rcx), %zmm0
	addq	$64, %rcx
	addq	$-64, %rdx
	decq	%r8
	vpunpcklqdq	%zmm2, %zmm18, %zmm3
	vpunpckhqdq	%zmm2, %zmm18, %zmm5
	vpclmulqdq	$0, %zmm2, %zmm18, %zmm4
	vpclmulqdq	$17, %zmm2, %zmm18, %zmm2
	vpxorq	%zmm3, %zmm5, %zmm3
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm4, %zmm2, %zmm3
	vpslldq	$8, %zmm3, %zmm5
	vpsrldq	$8, %zmm3, %zmm3
	vxorpd	%zmm4, %zmm5, %zmm4
	vpclmulqdq	$16, %zmm1, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm5, %zmm4
	vpclmulqdq	$16, %zmm1, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm2, %zmm5, %zmm29
	vpternlogd	$150, %zmm3, %zmm4, %zmm29
	jne	.LBB1_32
.LBB1_33:
	cmpq	$192, %rdi
	jb	.LBB1_36
	vpbroadcastq	.LCPI1_13(%rip), %zmm1
	.p2align	4
.LBB1_35:
	vpxord	%zmm0, %zmm29, %zmm0
	addq	$-256, %rdx
	vpunpcklqdq	%zmm0, %zmm18, %zmm2
	vpunpckhqdq	%zmm0, %zmm18, %zmm4
	vpclmulqdq	$0, %zmm0, %zmm18, %zmm3
	vpclmulqdq	$17, %zmm0, %zmm18, %zmm0
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpternlogq	$150, %zmm3, %zmm0, %zmm2
	vpslldq	$8, %zmm2, %zmm4
	vpsrldq	$8, %zmm2, %zmm2
	vxorpd	%zmm3, %zmm4, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm4
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm3, %zmm4, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm4
	vpshufd	$78, %zmm3, %zmm3
	vpternlogd	$150, %zmm0, %zmm2, %zmm4
	vpternlogd	$150, (%rcx), %zmm3, %zmm4
	vpunpcklqdq	%zmm4, %zmm18, %zmm0
	vpunpckhqdq	%zmm4, %zmm18, %zmm3
	vpclmulqdq	$0, %zmm4, %zmm18, %zmm2
	vpxorq	%zmm0, %zmm3, %zmm0
	vpclmulqdq	$17, %zmm4, %zmm18, %zmm3
	vpclmulqdq	$1, %zmm0, %zmm0, %zmm0
	vpternlogq	$150, %zmm2, %zmm3, %zmm0
	vpslldq	$8, %zmm0, %zmm4
	vpsrldq	$8, %zmm0, %zmm0
	vxorpd	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpternlogd	$150, %zmm3, %zmm0, %zmm4
	vpternlogd	$150, 64(%rcx), %zmm2, %zmm4
	vpunpcklqdq	%zmm4, %zmm18, %zmm0
	vpunpckhqdq	%zmm4, %zmm18, %zmm3
	vpclmulqdq	$0, %zmm4, %zmm18, %zmm2
	vpxorq	%zmm0, %zmm3, %zmm0
	vpclmulqdq	$17, %zmm4, %zmm18, %zmm3
	vpclmulqdq	$1, %zmm0, %zmm0, %zmm0
	vpternlogq	$150, %zmm2, %zmm3, %zmm0
	vpslldq	$8, %zmm0, %zmm4
	vpsrldq	$8, %zmm0, %zmm0
	vxorpd	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$16, %zmm1, %zmm2, %zmm4
	vpshufd	$78, %zmm2, %zmm2
	vpternlogd	$150, %zmm3, %zmm0, %zmm4
	vpternlogd	$150, 128(%rcx), %zmm2, %zmm4
	vmovdqu64	192(%rcx), %zmm0
	addq	$256, %rcx
	vpunpcklqdq	%zmm4, %zmm18, %zmm2
	vpunpckhqdq	%zmm4, %zmm18, %zmm5
	vpclmulqdq	$0, %zmm4, %zmm18, %zmm3
	vpclmulqdq	$17, %zmm4, %zmm18, %zmm4
	vpxorq	%zmm2, %zmm5, %zmm2
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpternlogq	$150, %zmm3, %zmm4, %zmm2
	vpslldq	$8, %zmm2, %zmm5
	vpsrldq	$8, %zmm2, %zmm2
	vxorpd	%zmm3, %zmm5, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm5
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm3, %zmm5, %zmm3
	vpclmulqdq	$16, %zmm1, %zmm3, %zmm5
	vpshufd	$78, %zmm3, %zmm3
	vpxorq	%zmm4, %zmm5, %zmm29
	vpternlogd	$150, %zmm2, %zmm3, %zmm29
	cmpq	$63, %rdx
	ja	.LBB1_35
.LBB1_36:
	vpxord	%zmm29, %zmm0, %zmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vextracti128	$1, %ymm0, %xmm3
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm4
	vpslldq	$8, %xmm2, %xmm5
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vextracti32x4	$2, %zmm0, %xmm4
	vextracti32x4	$3, %zmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpxor	%xmm3, %xmm5, %xmm3
	vpslldq	$8, %xmm3, %xmm5
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm5
	vpternlogq	$150, %xmm4, %xmm1, %xmm5
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm28
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
.LBB1_37:
	vmovdqa	(%rsp), %xmm2
	vpbroadcastq	.LCPI1_12(%rip), %xmm1
	vmovdqa	64(%rsp), %xmm0
	vmovd	8(%rsi), %xmm20
	vmovq	(%rsi), %xmm21
	vaesenclast	%xmm1, %xmm2, %xmm18
	vmovdqa	320(%rsp), %xmm1
	vpternlogq	$150, 128(%rsp), %xmm0, %xmm14
	vpunpcklqdq	-64(%rsp), %xmm1, %xmm19
	cmpq	$16, %rdx
	jb	.LBB1_42
	leaq	-16(%rdx), %rsi
	movl	%esi, %edi
	notl	%edi
	testb	$48, %dil
	je	.LBB1_41
	movl	%esi, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	.p2align	4
.LBB1_40:
	vpxorq	(%rcx), %xmm28, %xmm0
	addq	$-16, %rdx
	addq	$16, %rcx
	decq	%rdi
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm28
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	jne	.LBB1_40
.LBB1_41:
	cmpq	$48, %rsi
	jb	.LBB1_42
	.p2align	4
.LBB1_59:
	vpxorq	(%rcx), %xmm28, %xmm0
	addq	$-64, %rdx
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, 16(%rcx), %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, 32(%rcx), %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, 48(%rcx), %xmm3, %xmm0
	addq	$64, %rcx
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm28
	vpxor	%xmm0, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	cmpq	$15, %rdx
	ja	.LBB1_59
.LBB1_42:
	movq	1128(%rsp), %rsi
	vpunpcklqdq	%xmm20, %xmm21, %xmm0
	vpternlogq	$150, %xmm14, %xmm6, %xmm18
	vpsllq	$3, %xmm19, %xmm1
	testq	%rdx, %rdx
	je	.LBB1_44
	movl	$-1, %edi
	bzhil	%edx, %edi, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm2 {%k1} {z}
	vpxorq	%xmm2, %xmm28, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm28
	vpxor	%xmm2, %xmm5, %xmm2
	vpternlogq	$150, %xmm4, %xmm2, %xmm28
.LBB1_44:
	vpxorq	%xmm1, %xmm28, %xmm1
	movq	1112(%rsp), %rcx
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$108, .LCPI1_14(%rip), %xmm9, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm17, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm23, %xmm0, %xmm0
	vaesenc	%xmm24, %xmm0, %xmm0
	vaesenc	%xmm25, %xmm0, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenclast	%xmm18, %xmm0, %xmm0
	vpor	.LCPI1_15(%rip), %xmm0, %xmm15
	vmovdqu	%xmm0, (%rsi)
	cmpq	$512, %r10
	jb	.LBB1_48
	vbroadcasti32x4	.LCPI1_16(%rip), %zmm1
	vinserti128	$1, %xmm8, %ymm0, %ymm0
	vshufi64x2	$0, %zmm7, %zmm7, %zmm22
	vshufi64x2	$0, %zmm6, %zmm6, %zmm28
	vmovdqa64	.LCPI1_20(%rip), %zmm2
	vmovdqa64	.LCPI1_21(%rip), %zmm3
	vmovdqa64	.LCPI1_22(%rip), %zmm4
	vmovdqa64	.LCPI1_23(%rip), %zmm5
	vmovdqa64	.LCPI1_24(%rip), %zmm6
	vpmovsxbq	.LCPI1_27(%rip), %xmm7
	vshufi64x2	$0, %zmm30, %zmm30, %zmm29
	vshufi64x2	$0, %zmm9, %zmm9, %zmm16
	vshufi64x2	$0, %zmm10, %zmm10, %zmm14
	vshufi64x2	$0, %zmm11, %zmm11, %zmm19
	vshufi64x2	$0, %zmm12, %zmm12, %zmm20
	vshufi64x2	$0, %zmm17, %zmm17, %zmm21
	vshufi64x2	$0, %zmm23, %zmm23, %zmm23
	vshufi64x2	$0, %zmm24, %zmm24, %zmm24
	vshufi64x2	$0, %zmm25, %zmm25, %zmm25
	vshufi64x2	$0, %zmm26, %zmm26, %zmm26
	vshufi64x2	$0, %zmm27, %zmm27, %zmm27
	vshufi64x2	$0, %zmm18, %zmm18, %zmm30
	vmovups	%zmm9, -128(%rsp)
	vmovaps	%xmm8, 256(%rsp)
	vmovups	%zmm10, 128(%rsp)
	vmovups	%zmm11, 64(%rsp)
	vmovups	%zmm12, (%rsp)
	vmovups	%zmm17, -64(%rsp)
	vpermi2q	1024(%rsp), %zmm13, %zmm1
	vinserti32x4	$0, %xmm8, %zmm0, %zmm0
	vshufi64x2	$228, %zmm1, %zmm0, %zmm13
	vmovdqa64	.LCPI1_19(%rip), %zmm0
	.p2align	4
.LBB1_46:
	vshufi64x2	$0, %zmm15, %zmm15, %zmm8
	vpaddd	.LCPI1_17(%rip), %zmm8, %zmm9
	vpaddd	.LCPI1_18(%rip), %zmm8, %zmm10
	addq	$-512, %r10
	vpaddd	%xmm7, %xmm15, %xmm15
	vpaddd	%zmm0, %zmm8, %zmm11
	vpaddd	%zmm2, %zmm8, %zmm12
	vpaddd	%zmm3, %zmm8, %zmm17
	vpaddd	%zmm4, %zmm8, %zmm31
	vpaddd	%zmm5, %zmm8, %zmm1
	vpaddd	%zmm6, %zmm8, %zmm8
	vpxord	%zmm16, %zmm11, %zmm11
	vpxord	%zmm16, %zmm12, %zmm12
	vpxord	%zmm16, %zmm17, %zmm17
	vpxord	%zmm16, %zmm31, %zmm31
	vpxord	%zmm16, %zmm1, %zmm1
	vpxord	%zmm16, %zmm8, %zmm8
	vaesenc	%zmm13, %zmm11, %zmm11
	vaesenc	%zmm13, %zmm12, %zmm12
	vaesenc	%zmm13, %zmm17, %zmm17
	vaesenc	%zmm13, %zmm31, %zmm31
	vaesenc	%zmm13, %zmm1, %zmm1
	vaesenc	%zmm13, %zmm8, %zmm8
	vpxord	%zmm16, %zmm9, %zmm9
	vpxord	%zmm16, %zmm10, %zmm10
	vaesenc	%zmm14, %zmm11, %zmm11
	vaesenc	%zmm14, %zmm12, %zmm12
	vaesenc	%zmm14, %zmm17, %zmm17
	vaesenc	%zmm14, %zmm31, %zmm31
	vaesenc	%zmm14, %zmm1, %zmm1
	vaesenc	%zmm14, %zmm8, %zmm8
	vaesenc	%zmm13, %zmm9, %zmm9
	vaesenc	%zmm13, %zmm10, %zmm10
	vaesenc	%zmm19, %zmm11, %zmm11
	vaesenc	%zmm19, %zmm12, %zmm12
	vaesenc	%zmm19, %zmm17, %zmm17
	vaesenc	%zmm19, %zmm31, %zmm31
	vaesenc	%zmm19, %zmm1, %zmm1
	vaesenc	%zmm19, %zmm8, %zmm8
	vaesenc	%zmm14, %zmm9, %zmm9
	vaesenc	%zmm14, %zmm10, %zmm10
	vaesenc	%zmm20, %zmm11, %zmm11
	vaesenc	%zmm20, %zmm12, %zmm12
	vaesenc	%zmm20, %zmm17, %zmm17
	vaesenc	%zmm20, %zmm31, %zmm31
	vaesenc	%zmm20, %zmm1, %zmm1
	vaesenc	%zmm20, %zmm8, %zmm8
	vaesenc	%zmm19, %zmm9, %zmm9
	vaesenc	%zmm19, %zmm10, %zmm10
	vaesenc	%zmm21, %zmm11, %zmm11
	vaesenc	%zmm21, %zmm12, %zmm12
	vaesenc	%zmm21, %zmm17, %zmm17
	vaesenc	%zmm21, %zmm31, %zmm31
	vaesenc	%zmm21, %zmm1, %zmm1
	vaesenc	%zmm21, %zmm8, %zmm8
	vaesenc	%zmm20, %zmm9, %zmm9
	vaesenc	%zmm20, %zmm10, %zmm10
	vaesenc	%zmm22, %zmm11, %zmm11
	vaesenc	%zmm22, %zmm12, %zmm12
	vaesenc	%zmm22, %zmm17, %zmm17
	vaesenc	%zmm22, %zmm31, %zmm31
	vaesenc	%zmm22, %zmm1, %zmm1
	vaesenc	%zmm22, %zmm8, %zmm8
	vaesenc	%zmm21, %zmm9, %zmm9
	vaesenc	%zmm21, %zmm10, %zmm10
	vaesenc	%zmm23, %zmm11, %zmm11
	vaesenc	%zmm23, %zmm12, %zmm12
	vaesenc	%zmm23, %zmm17, %zmm17
	vaesenc	%zmm23, %zmm31, %zmm31
	vaesenc	%zmm23, %zmm1, %zmm1
	vaesenc	%zmm23, %zmm8, %zmm8
	vaesenc	%zmm22, %zmm9, %zmm9
	vaesenc	%zmm22, %zmm10, %zmm10
	vaesenc	%zmm24, %zmm11, %zmm11
	vaesenc	%zmm24, %zmm12, %zmm12
	vaesenc	%zmm24, %zmm17, %zmm17
	vaesenc	%zmm24, %zmm31, %zmm31
	vaesenc	%zmm24, %zmm1, %zmm1
	vaesenc	%zmm24, %zmm8, %zmm8
	vaesenc	%zmm23, %zmm9, %zmm9
	vaesenc	%zmm23, %zmm10, %zmm10
	vaesenc	%zmm25, %zmm11, %zmm11
	vaesenc	%zmm25, %zmm12, %zmm12
	vaesenc	%zmm25, %zmm17, %zmm17
	vaesenc	%zmm25, %zmm31, %zmm31
	vaesenc	%zmm25, %zmm1, %zmm1
	vaesenc	%zmm25, %zmm8, %zmm8
	vaesenc	%zmm24, %zmm9, %zmm9
	vaesenc	%zmm24, %zmm10, %zmm10
	vaesenc	%zmm26, %zmm11, %zmm11
	vaesenc	%zmm26, %zmm12, %zmm12
	vaesenc	%zmm26, %zmm17, %zmm17
	vaesenc	%zmm26, %zmm31, %zmm31
	vaesenc	%zmm26, %zmm1, %zmm1
	vaesenc	%zmm26, %zmm8, %zmm8
	vaesenc	%zmm25, %zmm9, %zmm9
	vaesenc	%zmm25, %zmm10, %zmm10
	vaesenc	%zmm27, %zmm11, %zmm11
	vaesenc	%zmm27, %zmm12, %zmm12
	vaesenc	%zmm27, %zmm17, %zmm17
	vaesenc	%zmm27, %zmm31, %zmm31
	vaesenc	%zmm27, %zmm1, %zmm1
	vaesenc	%zmm27, %zmm8, %zmm8
	vaesenc	%zmm26, %zmm9, %zmm9
	vaesenc	%zmm26, %zmm10, %zmm10
	vaesenc	%zmm28, %zmm11, %zmm11
	vaesenc	%zmm28, %zmm12, %zmm12
	vaesenc	%zmm28, %zmm17, %zmm17
	vaesenc	%zmm28, %zmm31, %zmm31
	vaesenc	%zmm28, %zmm1, %zmm1
	vaesenc	%zmm28, %zmm8, %zmm8
	vaesenc	%zmm27, %zmm9, %zmm9
	vaesenc	%zmm27, %zmm10, %zmm10
	vaesenc	%zmm29, %zmm11, %zmm11
	vaesenc	%zmm29, %zmm12, %zmm12
	vaesenc	%zmm29, %zmm17, %zmm17
	vaesenc	%zmm29, %zmm31, %zmm31
	vaesenc	%zmm29, %zmm1, %zmm1
	vaesenc	%zmm29, %zmm8, %zmm8
	vaesenc	%zmm28, %zmm9, %zmm9
	vaesenc	%zmm28, %zmm10, %zmm10
	vaesenclast	%zmm30, %zmm11, %zmm11
	vaesenclast	%zmm30, %zmm12, %zmm12
	vaesenclast	%zmm30, %zmm17, %zmm17
	vaesenclast	%zmm30, %zmm31, %zmm31
	vaesenclast	%zmm30, %zmm1, %zmm1
	vaesenclast	%zmm30, %zmm8, %zmm8
	vpxorq	128(%r9), %zmm11, %zmm11
	vpxorq	192(%r9), %zmm12, %zmm12
	vpxorq	256(%r9), %zmm17, %zmm17
	vpxorq	320(%r9), %zmm31, %zmm31
	vpxorq	384(%r9), %zmm1, %zmm1
	vpxorq	448(%r9), %zmm8, %zmm8
	vaesenc	%zmm29, %zmm9, %zmm9
	vaesenc	%zmm29, %zmm10, %zmm10
	vaesenclast	%zmm30, %zmm9, %zmm9
	vaesenclast	%zmm30, %zmm10, %zmm10
	vpxorq	(%r9), %zmm9, %zmm9
	vpxorq	64(%r9), %zmm10, %zmm10
	leaq	512(%r9), %r9
	vmovdqu64	%zmm9, (%rcx)
	vmovdqu64	%zmm10, 64(%rcx)
	vmovdqu64	%zmm11, 128(%rcx)
	vmovdqu64	%zmm12, 192(%rcx)
	vmovdqu64	%zmm17, 256(%rcx)
	vmovdqu64	%zmm31, 320(%rcx)
	vmovdqu64	%zmm1, 384(%rcx)
	vmovdqu64	%zmm8, 448(%rcx)
	addq	$512, %rcx
	cmpq	$511, %r10
	ja	.LBB1_46
	vmovapd	256(%rsp), %xmm8
	vmovups	-128(%rsp), %zmm9
	vmovupd	128(%rsp), %zmm10
	vmovupd	64(%rsp), %zmm11
	vmovupd	(%rsp), %zmm12
	vmovupd	-64(%rsp), %zmm17
	vmovupd	768(%rsp), %zmm7
	vmovupd	704(%rsp), %zmm23
	vmovupd	640(%rsp), %zmm24
	vmovupd	576(%rsp), %zmm25
	vmovupd	512(%rsp), %zmm26
	vmovupd	448(%rsp), %zmm27
	vmovupd	384(%rsp), %zmm6
	vmovdqu64	192(%rsp), %zmm30
.LBB1_48:
	cmpq	$16, %r10
	jb	.LBB1_55
	leaq	-16(%r10), %rdx
	movl	%edx, %esi
	notl	%esi
	testb	$48, %sil
	je	.LBB1_52
	vpmovsxbq	.LCPI1_28(%rip), %xmm0
	movl	%edx, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	.p2align	4
.LBB1_51:
	vpxor	%xmm9, %xmm15, %xmm2
	addq	$-16, %r10
	vpaddd	%xmm0, %xmm15, %xmm15
	decq	%rsi
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm17, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm23, %xmm2, %xmm2
	vaesenc	%xmm24, %xmm2, %xmm2
	vaesenc	%xmm25, %xmm2, %xmm2
	vaesenc	%xmm26, %xmm2, %xmm2
	vaesenc	%xmm27, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm30, %xmm2, %xmm2
	vaesenclast	%xmm18, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	leaq	16(%r9), %r9
	vmovdqu	%xmm2, (%rcx)
	leaq	16(%rcx), %rcx
	jne	.LBB1_51
.LBB1_52:
	cmpq	$48, %rdx
	jb	.LBB1_55
	vpmovsxbq	.LCPI1_28(%rip), %xmm0
	vpmovsxbq	.LCPI1_29(%rip), %xmm1
	vpmovsxbq	.LCPI1_30(%rip), %xmm2
	vpmovsxbq	.LCPI1_31(%rip), %xmm3
	.p2align	4
.LBB1_54:
	vpxor	%xmm9, %xmm15, %xmm5
	vpaddd	%xmm0, %xmm15, %xmm4
	addq	$-64, %r10
	vaesenc	%xmm8, %xmm5, %xmm5
	vpxor	%xmm4, %xmm9, %xmm4
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm17, %xmm5, %xmm5
	vaesenc	%xmm17, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm23, %xmm5, %xmm5
	vaesenc	%xmm23, %xmm4, %xmm4
	vaesenc	%xmm24, %xmm5, %xmm5
	vaesenc	%xmm24, %xmm4, %xmm4
	vaesenc	%xmm25, %xmm5, %xmm5
	vaesenc	%xmm25, %xmm4, %xmm4
	vaesenc	%xmm26, %xmm5, %xmm5
	vaesenc	%xmm26, %xmm4, %xmm4
	vaesenc	%xmm27, %xmm5, %xmm5
	vaesenc	%xmm27, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm30, %xmm5, %xmm5
	vaesenc	%xmm30, %xmm4, %xmm4
	vaesenclast	%xmm18, %xmm5, %xmm5
	vpxor	(%r9), %xmm5, %xmm5
	vaesenclast	%xmm18, %xmm4, %xmm4
	vmovdqu	%xmm5, (%rcx)
	vpaddd	%xmm1, %xmm15, %xmm5
	vpxor	16(%r9), %xmm4, %xmm4
	vpxor	%xmm5, %xmm9, %xmm5
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vmovdqu	%xmm4, 16(%rcx)
	vpaddd	%xmm2, %xmm15, %xmm4
	vpaddd	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm5, %xmm5
	vpxor	%xmm4, %xmm9, %xmm4
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm17, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm23, %xmm5, %xmm5
	vaesenc	%xmm17, %xmm4, %xmm4
	vaesenc	%xmm24, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm25, %xmm5, %xmm5
	vaesenc	%xmm23, %xmm4, %xmm4
	vaesenc	%xmm26, %xmm5, %xmm5
	vaesenc	%xmm24, %xmm4, %xmm4
	vaesenc	%xmm27, %xmm5, %xmm5
	vaesenc	%xmm25, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm26, %xmm4, %xmm4
	vaesenc	%xmm30, %xmm5, %xmm5
	vaesenc	%xmm27, %xmm4, %xmm4
	vaesenclast	%xmm18, %xmm5, %xmm5
	vpxor	32(%r9), %xmm5, %xmm5
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm30, %xmm4, %xmm4
	vmovdqu	%xmm5, 32(%rcx)
	vaesenclast	%xmm18, %xmm4, %xmm4
	vpxor	48(%r9), %xmm4, %xmm4
	addq	$64, %r9
	vmovdqu	%xmm4, 48(%rcx)
	addq	$64, %rcx
	cmpq	$15, %r10
	ja	.LBB1_54
.LBB1_55:
	testq	%r10, %r10
	je	.LBB1_57
	vpxor	%xmm9, %xmm15, %xmm1
	movl	$-1, %edx
	vaesenc	%xmm8, %xmm1, %xmm1
	bzhil	%r10d, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%r9), %xmm0 {%k1} {z}
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm17, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm23, %xmm1, %xmm1
	vaesenc	%xmm24, %xmm1, %xmm1
	vaesenc	%xmm25, %xmm1, %xmm1
	vaesenc	%xmm26, %xmm1, %xmm1
	vaesenc	%xmm27, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm30, %xmm1, %xmm1
	vaesenclast	%xmm18, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rcx) {%k1}
.LBB1_57:
	movzbl	%al, %eax
.LBB1_58:
	addq	$1088, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_zen4_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_zen4_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
.LCPI2_1:
	.quad	4294967297
.LCPI2_2:
	.quad	8589934594
.LCPI2_3:
	.quad	17179869188
.LCPI2_4:
	.quad	34359738376
.LCPI2_5:
	.quad	68719476752
.LCPI2_6:
	.quad	137438953504
.LCPI2_7:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_zen4_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_zen4_init
	.p2align	4
	.type	haberdashery_aes256gcmsiv_zen4_init,@function
haberdashery_aes256gcmsiv_zen4_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB2_2
	vmovupd	(%rsi), %xmm0
	vmovupd	16(%rsi), %xmm1
	vpbroadcastq	.LCPI2_1(%rip), %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpslldq	$12, %xmm1, %xmm7
	vmovapd	%xmm0, (%rdi)
	vmovapd	%xmm1, 16(%rdi)
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI2_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm2
	vpslldq	$8, %xmm1, %xmm5
	vpternlogq	$150, %xmm4, %xmm0, %xmm2
	vpslldq	$4, %xmm1, %xmm4
	vpternlogq	$150, %xmm5, %xmm4, %xmm7
	vpshufd	$255, %xmm2, %xmm4
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$12, %xmm2, %xmm8
	vmovdqa	%xmm2, 32(%rdi)
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm1, %xmm4
	vpslldq	$8, %xmm2, %xmm7
	vpternlogq	$150, %xmm7, %xmm5, %xmm8
	vpbroadcastq	.LCPI2_2(%rip), %xmm7
	vpshufb	%xmm3, %xmm4, %xmm5
	vpslldq	$12, %xmm4, %xmm9
	vmovdqa	%xmm4, 48(%rdi)
	vaesenclast	%xmm7, %xmm5, %xmm5
	vpslldq	$4, %xmm4, %xmm7
	vpternlogq	$150, %xmm8, %xmm2, %xmm5
	vpslldq	$8, %xmm4, %xmm8
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufd	$255, %xmm5, %xmm7
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$12, %xmm5, %xmm10
	vmovdqa	%xmm5, 64(%rdi)
	vaesenclast	%xmm6, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm4, %xmm7
	vpslldq	$8, %xmm5, %xmm9
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpbroadcastq	.LCPI2_3(%rip), %xmm9
	vpshufb	%xmm3, %xmm7, %xmm8
	vpslldq	$12, %xmm7, %xmm11
	vmovdqa	%xmm7, 80(%rdi)
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpternlogq	$150, %xmm10, %xmm5, %xmm8
	vpslldq	$8, %xmm7, %xmm10
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufd	$255, %xmm8, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$12, %xmm8, %xmm12
	vmovdqa	%xmm8, 96(%rdi)
	vaesenclast	%xmm6, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm7, %xmm9
	vpslldq	$8, %xmm8, %xmm11
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vpbroadcastq	.LCPI2_4(%rip), %xmm11
	vpshufb	%xmm3, %xmm9, %xmm10
	vpslldq	$12, %xmm9, %xmm13
	vmovdqa	%xmm9, 112(%rdi)
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpternlogq	$150, %xmm12, %xmm8, %xmm10
	vpslldq	$8, %xmm9, %xmm12
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	vpshufd	$255, %xmm10, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$12, %xmm10, %xmm14
	vmovdqa	%xmm10, 128(%rdi)
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm9, %xmm11
	vpslldq	$8, %xmm10, %xmm13
	vpternlogq	$150, %xmm13, %xmm12, %xmm14
	vpbroadcastq	.LCPI2_5(%rip), %xmm13
	vpshufb	%xmm3, %xmm11, %xmm12
	vpslldq	$12, %xmm11, %xmm15
	vmovdqa	%xmm11, 144(%rdi)
	vaesenclast	%xmm13, %xmm12, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpternlogq	$150, %xmm14, %xmm10, %xmm12
	vpslldq	$8, %xmm11, %xmm14
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpshufd	$255, %xmm12, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$12, %xmm12, %xmm16
	vmovdqa	%xmm12, 160(%rdi)
	vaesenclast	%xmm6, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpslldq	$8, %xmm12, %xmm15
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpbroadcastq	.LCPI2_6(%rip), %xmm15
	vpshufb	%xmm3, %xmm13, %xmm14
	vpslldq	$12, %xmm13, %xmm17
	vmovdqa	%xmm13, 176(%rdi)
	vaesenclast	%xmm15, %xmm14, %xmm14
	vpslldq	$4, %xmm13, %xmm15
	vpternlogq	$150, %xmm16, %xmm12, %xmm14
	vpslldq	$8, %xmm13, %xmm16
	vpternlogq	$150, %xmm16, %xmm15, %xmm17
	vpshufd	$255, %xmm14, %xmm15
	vpslldq	$8, %xmm14, %xmm16
	vpslldq	$12, %xmm14, %xmm18
	vmovdqa	%xmm14, 192(%rdi)
	vaesenclast	%xmm6, %xmm15, %xmm6
	vpslldq	$4, %xmm14, %xmm15
	vpternlogq	$150, %xmm16, %xmm15, %xmm18
	vpbroadcastq	.LCPI2_7(%rip), %xmm16
	vpternlogq	$150, %xmm17, %xmm13, %xmm6
	vpshufb	%xmm3, %xmm6, %xmm3
	vmovdqa	%xmm6, 208(%rdi)
	vaesenclast	%xmm16, %xmm3, %xmm3
	vpternlogq	$150, %xmm18, %xmm14, %xmm3
	vmovdqa	%xmm3, 224(%rdi)
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_zen4_init, .Lfunc_end2-haberdashery_aes256gcmsiv_zen4_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_zen4_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_zen4_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmsiv_zen4_is_supported,@function
haberdashery_aes256gcmsiv_zen4_is_supported:
	.cfi_startproc
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %r8d
	movl	%edx, %r9d
	movl	$7, %eax
	xorl	%ecx, %ecx
	notl	%r9d
	notl	%r8d
	movl	$1, %esi
	#APP

	movq	%rbx, %r10
	cpuid
	xchgq	%rbx, %r10

	#NO_APP
	movl	%ecx, %edi
	movl	$7, %eax
	movl	$1, %ecx
	andl	$920130051, %r8d
	andl	$125829120, %r9d
	#APP

	movq	%rbx, %r11
	cpuid
	xchgq	%rbx, %r11

	#NO_APP
	orl	%r8d, %r9d
	jne	.LBB3_4
	notl	%r10d
	testl	$-240451287, %r10d
	jne	.LBB3_4
	andl	$4218698, %edi
	cmpl	$4218698, %edi
	jne	.LBB3_4
	andl	$32, %eax
	je	.LBB3_4
	movl	%esi, %eax
	retq
.LBB3_4:
	xorl	%esi, %esi
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_zen4_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_zen4_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

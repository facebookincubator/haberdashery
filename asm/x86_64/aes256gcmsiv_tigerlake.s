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
.LCPI0_18:
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
.LCPI0_26:
	.long	16
	.long	0
	.long	0
	.long	0
.LCPI0_27:
	.long	17
	.long	0
	.long	0
	.long	0
.LCPI0_37:
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_14:
	.quad	0
	.quad	4
	.quad	0
	.quad	6
.LCPI0_15:
	.quad	1
	.quad	5
	.quad	1
	.quad	7
.LCPI0_16:
	.quad	2
	.quad	4
	.quad	2
	.quad	6
.LCPI0_17:
	.quad	3
	.quad	5
	.quad	3
	.quad	7
.LCPI0_19:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_20:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI0_21:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI0_22:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI0_23:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI0_24:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI0_25:
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI0_28:
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI0_29:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
.LCPI0_30:
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
.LCPI0_31:
	.long	24
	.long	0
	.long	0
	.long	0
	.long	25
	.long	0
	.long	0
	.long	0
.LCPI0_32:
	.long	26
	.long	0
	.long	0
	.long	0
	.long	27
	.long	0
	.long	0
	.long	0
.LCPI0_33:
	.long	28
	.long	0
	.long	0
	.long	0
	.long	29
	.long	0
	.long	0
	.long	0
.LCPI0_34:
	.long	30
	.long	0
	.long	0
	.long	0
	.long	31
	.long	0
	.long	0
	.long	0
.LCPI0_35:
	.quad	0
	.quad	6
	.quad	2
	.quad	6
.LCPI0_36:
	.quad	1
	.quad	7
	.quad	3
	.quad	7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_38:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata,"a",@progbits
.LCPI0_39:
	.byte	1
	.byte	0
.LCPI0_40:
	.byte	2
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_decrypt,@function
haberdashery_aes256gcmsiv_tigerlake_decrypt:
	.cfi_startproc
	subq	$1288, %rsp
	.cfi_def_cfa_offset 1296
	movq	1296(%rsp), %r10
	xorl	%eax, %eax
	cmpq	1328(%rsp), %r10
	jne	.LBB0_38
	cmpq	$12, %rdx
	jne	.LBB0_38
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB0_38
	cmpq	%rdx, %r10
	jae	.LBB0_38
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI0_0(%rip), %xmm2, %xmm3
	vxorps	.LCPI0_1(%rip), %xmm2, %xmm1
	vxorps	.LCPI0_2(%rip), %xmm2, %xmm4
	vxorps	.LCPI0_3(%rip), %xmm2, %xmm0
	vxorps	.LCPI0_4(%rip), %xmm2, %xmm5
	vmovdqa	16(%rdi), %xmm7
	vmovdqa	32(%rdi), %xmm8
	vmovdqa	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovdqa	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	cmpq	$16, 1312(%rsp)
	jb	.LBB0_38
	vpunpcklqdq	%xmm3, %xmm2, %xmm17
	vpunpcklqdq	%xmm4, %xmm1, %xmm22
	vpunpcklqdq	%xmm5, %xmm0, %xmm16
	vpslldq	$4, %xmm22, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm4
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm4, %xmm3, %xmm1
	vpbroadcastd	.LCPI0_38(%rip), %xmm8
	vpshufb	%xmm8, %xmm16, %xmm3
	vpbroadcastq	.LCPI0_6(%rip), %xmm4
	vaesenclast	%xmm4, %xmm3, %xmm26
	vpternlogq	$150, %xmm1, %xmm22, %xmm26
	vpslldq	$4, %xmm16, %xmm1
	vpunpcklqdq	%xmm0, %xmm2, %xmm3
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm1, %xmm0
	vpshufd	$255, %xmm26, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm5
	vpternlogq	$150, %xmm0, %xmm16, %xmm5
	vpslldq	$4, %xmm26, %xmm0
	vpslldq	$8, %xmm26, %xmm1
	vpslldq	$12, %xmm26, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufb	%xmm8, %xmm5, %xmm0
	vpbroadcastq	.LCPI0_7(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm31
	vpternlogq	$150, %xmm3, %xmm26, %xmm31
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufd	$255, %xmm31, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm4
	vmovups	%ymm5, 384(%rsp)
	vpternlogq	$150, %xmm3, %xmm5, %xmm4
	vpslldq	$4, %xmm31, %xmm0
	vpslldq	$8, %xmm31, %xmm1
	vpslldq	$12, %xmm31, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufb	%xmm8, %xmm4, %xmm0
	vpbroadcastq	.LCPI0_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm6
	vpternlogq	$150, %xmm3, %xmm31, %xmm6
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm7
	vmovups	%ymm4, 48(%rsp)
	vpternlogq	$150, %xmm3, %xmm4, %xmm7
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufb	%xmm8, %xmm7, %xmm0
	vpbroadcastq	.LCPI0_9(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm4
	vmovups	%ymm6, 240(%rsp)
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufd	$255, %xmm4, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm6
	vmovups	%ymm7, 208(%rsp)
	vpternlogq	$150, %xmm3, %xmm7, %xmm6
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufb	%xmm8, %xmm6, %xmm0
	vpbroadcastq	.LCPI0_10(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm7
	vmovups	%ymm4, 176(%rsp)
	vpternlogq	$150, %xmm3, %xmm4, %xmm7
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufd	$255, %xmm7, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm4
	vmovups	%ymm6, 144(%rsp)
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufb	%xmm8, %xmm4, %xmm0
	vpbroadcastq	.LCPI0_11(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm10
	vmovups	%ymm7, 112(%rsp)
	vpternlogq	$150, %xmm3, %xmm7, %xmm10
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufd	$255, %xmm10, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm11
	vmovups	%ymm4, 80(%rsp)
	vpternlogq	$150, %xmm3, %xmm4, %xmm11
	vpclmulqdq	$0, %xmm17, %xmm17, %xmm0
	vpbroadcastq	.LCPI0_13(%rip), %ymm18
	vpclmulqdq	$16, %xmm18, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm18, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm17, %xmm17, %xmm2
	vpshufd	$78, %xmm0, %xmm12
	vpternlogq	$150, %xmm1, %xmm2, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm0
	vpclmulqdq	$16, %xmm18, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm18, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	vinserti128	$1, %xmm0, %ymm0, %ymm13
	vinserti128	$1, %xmm0, %ymm12, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm13, %ymm1
	vpunpckhqdq	%ymm0, %ymm13, %ymm2
	vpunpcklqdq	%ymm0, %ymm13, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm0, %ymm13, %ymm0
	vpternlogq	$150, %ymm1, %ymm0, %ymm2
	vpslldq	$8, %ymm2, %ymm3
	vpxor	%ymm3, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm18, %ymm1, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpclmulqdq	$16, %ymm18, %ymm1, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpshufd	$78, %ymm1, %ymm21
	vpternlogq	$150, %ymm2, %ymm0, %ymm21
	vpclmulqdq	$0, %ymm21, %ymm13, %ymm0
	vpunpckhqdq	%ymm21, %ymm13, %ymm1
	vpunpcklqdq	%ymm21, %ymm13, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm21, %ymm13, %ymm2
	vpternlogq	$150, %ymm0, %ymm2, %ymm1
	vpslldq	$8, %ymm1, %ymm3
	vpxor	%ymm3, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm18, %ymm0, %ymm3
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpclmulqdq	$16, %ymm18, %ymm0, %ymm3
	vpsrldq	$8, %ymm1, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpshufd	$78, %ymm0, %ymm20
	vpternlogq	$150, %ymm1, %ymm2, %ymm20
	vpunpcklqdq	%ymm20, %ymm13, %ymm0
	vpunpckhqdq	%ymm20, %ymm13, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpclmulqdq	$0, %ymm20, %ymm13, %ymm1
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm20, %ymm13, %ymm2
	vpternlogq	$150, %ymm1, %ymm2, %ymm0
	vpslldq	$8, %ymm0, %ymm3
	vpxor	%ymm3, %ymm1, %ymm1
	vpsrldq	$8, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm18, %ymm1, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpclmulqdq	$16, %ymm18, %ymm1, %ymm3
	vpxor	%ymm0, %ymm3, %ymm0
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm0, %ymm2, %ymm1
	vpxord	%xmm29, %xmm29, %xmm29
	vpermq	$68, %ymm21, %ymm5
	vpermq	$238, %ymm21, %ymm28
	vpermq	$68, %ymm20, %ymm24
	vpermq	$238, %ymm20, %ymm27
	vpermq	$68, %ymm1, %ymm15
	vmovdqa64	%ymm1, %ymm30
	vpermq	$238, %ymm1, %ymm23
	cmpq	$256, %r8
	vmovdqu	%ymm10, -16(%rsp)
	vmovdqu	%ymm11, -48(%rsp)
	vmovdqu	%ymm12, 480(%rsp)
	vmovups	%ymm22, -80(%rsp)
	vmovups	%ymm16, 16(%rsp)
	vmovaps	%xmm17, -128(%rsp)
	jb	.LBB0_9
	vinserti128	$1, %xmm12, %ymm12, %ymm0
	vmovdqa	.LCPI0_14(%rip), %ymm1
	vmovdqa	.LCPI0_15(%rip), %ymm2
	vmovdqa	.LCPI0_16(%rip), %ymm3
	vmovdqa	.LCPI0_17(%rip), %ymm4
	movq	%r8, %rax
	vmovdqa64	%ymm13, %ymm25
	.p2align	4
.LBB0_7:
	vmovdqu	32(%rcx), %ymm7
	vmovdqu	64(%rcx), %ymm8
	vmovdqu	96(%rcx), %ymm9
	vmovdqu	128(%rcx), %ymm10
	vmovdqu	160(%rcx), %ymm11
	vmovdqu	192(%rcx), %ymm12
	vmovdqu	224(%rcx), %ymm13
	vpxorq	(%rcx), %ymm29, %ymm6
	addq	$256, %rcx
	addq	$-256, %rax
	vpunpcklqdq	%ymm13, %ymm0, %ymm14
	vmovdqa64	%ymm15, %ymm29
	vpunpckhqdq	%ymm13, %ymm0, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm13, %ymm0, %ymm15
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm14
	vpclmulqdq	$17, %ymm13, %ymm0, %ymm13
	vpunpcklqdq	%ymm12, %ymm25, %ymm16
	vpunpckhqdq	%ymm12, %ymm25, %ymm17
	vpxorq	%ymm16, %ymm17, %ymm16
	vpclmulqdq	$0, %ymm12, %ymm25, %ymm17
	vpxorq	%ymm15, %ymm17, %ymm15
	vpclmulqdq	$1, %ymm16, %ymm16, %ymm16
	vpxorq	%ymm14, %ymm16, %ymm14
	vpclmulqdq	$17, %ymm12, %ymm25, %ymm12
	vpxor	%ymm13, %ymm12, %ymm12
	vmovdqa64	%ymm21, %ymm13
	vpermt2q	%ymm11, %ymm1, %ymm13
	vmovdqa64	%ymm21, %ymm16
	vpermt2q	%ymm11, %ymm2, %ymm16
	vpxorq	%ymm13, %ymm16, %ymm13
	vpclmulqdq	$0, %ymm11, %ymm5, %ymm16
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm11, %ymm5, %ymm11
	vmovdqa64	%ymm21, %ymm17
	vpermt2q	%ymm10, %ymm3, %ymm17
	vmovdqa64	%ymm21, %ymm22
	vpermt2q	%ymm10, %ymm4, %ymm22
	vpxorq	%ymm17, %ymm22, %ymm17
	vpclmulqdq	$0, %ymm10, %ymm28, %ymm22
	vpternlogq	$150, %ymm16, %ymm15, %ymm22
	vpclmulqdq	$1, %ymm17, %ymm17, %ymm15
	vpternlogq	$150, %ymm13, %ymm14, %ymm15
	vpclmulqdq	$17, %ymm10, %ymm28, %ymm10
	vpternlogq	$150, %ymm11, %ymm12, %ymm10
	vmovdqa64	%ymm20, %ymm11
	vpermt2q	%ymm9, %ymm1, %ymm11
	vmovdqa64	%ymm20, %ymm12
	vpermt2q	%ymm9, %ymm2, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm9, %ymm24, %ymm12
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm11
	vpclmulqdq	$17, %ymm9, %ymm24, %ymm9
	vmovdqa64	%ymm20, %ymm13
	vpermt2q	%ymm8, %ymm3, %ymm13
	vmovdqa64	%ymm20, %ymm14
	vpermt2q	%ymm8, %ymm4, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm8, %ymm27, %ymm14
	vpternlogq	$150, %ymm12, %ymm22, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm12
	vpternlogq	$150, %ymm11, %ymm15, %ymm12
	vmovdqa64	%ymm29, %ymm15
	vpclmulqdq	$17, %ymm8, %ymm27, %ymm8
	vpternlogq	$150, %ymm9, %ymm10, %ymm8
	vmovdqa64	%ymm30, %ymm13
	vmovdqa64	%ymm30, %ymm9
	vpermt2q	%ymm7, %ymm1, %ymm9
	vmovdqa64	%ymm30, %ymm10
	vpermt2q	%ymm7, %ymm2, %ymm10
	vpxor	%ymm9, %ymm10, %ymm9
	vpclmulqdq	$0, %ymm7, %ymm29, %ymm10
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm7, %ymm29, %ymm7
	vmovdqa64	%ymm30, %ymm11
	vpermt2q	%ymm6, %ymm3, %ymm11
	vpermt2q	%ymm6, %ymm4, %ymm13
	vpxor	%ymm11, %ymm13, %ymm11
	vpclmulqdq	$0, %ymm6, %ymm23, %ymm13
	vpternlogq	$150, %ymm10, %ymm14, %ymm13
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm10
	vpternlogq	$150, %ymm9, %ymm12, %ymm10
	vpclmulqdq	$17, %ymm6, %ymm23, %ymm6
	vpternlogq	$150, %ymm7, %ymm8, %ymm6
	vpternlogq	$150, %ymm13, %ymm6, %ymm10
	vpslldq	$8, %ymm10, %ymm7
	vpxor	%ymm7, %ymm13, %ymm7
	vpsrldq	$8, %ymm10, %ymm8
	vpclmulqdq	$16, %ymm18, %ymm7, %ymm9
	vpshufd	$78, %ymm7, %ymm7
	vpxor	%ymm7, %ymm9, %ymm7
	vpclmulqdq	$16, %ymm18, %ymm7, %ymm9
	vpxor	%ymm8, %ymm9, %ymm8
	vpshufd	$78, %ymm7, %ymm29
	vpternlogq	$150, %ymm8, %ymm6, %ymm29
	cmpq	$255, %rax
	ja	.LBB0_7
	vmovdqu	-16(%rsp), %ymm10
	vmovdqu	-48(%rsp), %ymm11
	vmovdqu	480(%rsp), %ymm12
	vmovdqa64	%ymm25, %ymm13
	vmovupd	-80(%rsp), %ymm22
	vmovups	16(%rsp), %ymm16
	vmovapd	-128(%rsp), %xmm17
	vpbroadcastd	.LCPI0_38(%rip), %xmm8
	jmp	.LBB0_10
.LBB0_9:
	movq	%r8, %rax
.LBB0_10:
	vmovdqu	%ymm5, 608(%rsp)
	vmovdqu64	%ymm28, 640(%rsp)
	vmovdqu64	%ymm24, 672(%rsp)
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm2
	vpslldq	$12, %xmm10, %xmm0
	vpshufb	%xmm8, %xmm11, %xmm3
	vpbroadcastq	.LCPI0_12(%rip), %xmm4
	movq	1304(%rsp), %rdx
	cmpq	$32, %rax
	jb	.LBB0_16
	vinserti128	$1, %xmm12, %ymm12, %ymm5
	leaq	-32(%rax), %rdi
	testb	$32, %dil
	jne	.LBB0_13
	vpxorq	(%rcx), %ymm29, %ymm6
	addq	$32, %rcx
	vpunpcklqdq	%ymm6, %ymm5, %ymm7
	vpunpckhqdq	%ymm6, %ymm5, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm6, %ymm5, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm6, %ymm5, %ymm6
	vpternlogq	$150, %ymm8, %ymm6, %ymm7
	vpslldq	$8, %ymm7, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpsrldq	$8, %ymm7, %ymm7
	vpclmulqdq	$16, %ymm18, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$16, %ymm18, %ymm8, %ymm9
	vpxor	%ymm7, %ymm9, %ymm7
	vpshufd	$78, %ymm8, %ymm29
	vpternlogq	$150, %ymm7, %ymm6, %ymm29
	movq	%rdi, %rax
.LBB0_13:
	cmpq	$32, %rdi
	jb	.LBB0_17
	.p2align	4
.LBB0_14:
	vpxorq	(%rcx), %ymm29, %ymm6
	vpunpcklqdq	%ymm6, %ymm5, %ymm7
	vpunpckhqdq	%ymm6, %ymm5, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm6, %ymm5, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm6, %ymm5, %ymm6
	vpternlogq	$150, %ymm8, %ymm6, %ymm7
	vpslldq	$8, %ymm7, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpsrldq	$8, %ymm7, %ymm7
	vpclmulqdq	$16, %ymm18, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$16, %ymm18, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpternlogq	$150, %ymm7, %ymm9, %ymm8
	addq	$-64, %rax
	vpternlogq	$150, 32(%rcx), %ymm6, %ymm8
	addq	$64, %rcx
	vpunpcklqdq	%ymm8, %ymm5, %ymm6
	vpunpckhqdq	%ymm8, %ymm5, %ymm7
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$0, %ymm8, %ymm5, %ymm7
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm8, %ymm5, %ymm8
	vpternlogq	$150, %ymm7, %ymm8, %ymm6
	vpslldq	$8, %ymm6, %ymm9
	vpxor	%ymm7, %ymm9, %ymm7
	vpsrldq	$8, %ymm6, %ymm6
	vpclmulqdq	$16, %ymm18, %ymm7, %ymm9
	vpshufd	$78, %ymm7, %ymm7
	vpxor	%ymm7, %ymm9, %ymm7
	vpclmulqdq	$16, %ymm18, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpshufd	$78, %ymm7, %ymm29
	vpternlogq	$150, %ymm6, %ymm8, %ymm29
	cmpq	$31, %rax
	ja	.LBB0_14
.LBB0_16:
	movq	%rax, %rdi
.LBB0_17:
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vaesenclast	%xmm4, %xmm3, %xmm9
	vmovdqu	(%rdx), %xmm5
	testq	%rdi, %rdi
	je	.LBB0_21
	movl	$-1, %eax
	bzhil	%edi, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rcx), %ymm1 {%k1} {z}
	vpxorq	%ymm1, %ymm29, %ymm1
	vmovdqa	%xmm12, %xmm2
	cmpq	$17, %rdi
	jae	.LBB0_20
	vmovapd	%xmm17, %xmm2
.LBB0_20:
	vinserti128	$1, %xmm2, %ymm2, %ymm2
	vpunpcklqdq	%ymm1, %ymm2, %ymm3
	vpunpckhqdq	%ymm1, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm1, %ymm2, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm1, %ymm2, %ymm1
	vpternlogq	$150, %ymm4, %ymm1, %ymm3
	vpslldq	$8, %ymm3, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm18, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm18, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm2, %ymm29
	vpternlogq	$150, %ymm3, %ymm1, %ymm29
.LBB0_21:
	vmovq	%r10, %xmm1
	vmovq	%r8, %xmm2
	vmovd	8(%rsi), %xmm24
	vmovq	(%rsi), %xmm28
	movq	1320(%rsp), %rsi
	vpternlogq	$150, %xmm0, %xmm10, %xmm9
	vporq	.LCPI0_18(%rip), %xmm5, %xmm25
	vinserti128	$1, %xmm12, %ymm12, %ymm0
	vmovdqu	%ymm0, 448(%rsp)
	cmpq	$256, %r10
	vmovdqa	%xmm5, 336(%rsp)
	vmovdqu	%ymm9, 352(%rsp)
	jb	.LBB0_26
	vmovdqu64	%ymm23, 416(%rsp)
	vmovdqa	%xmm2, 272(%rsp)
	vmovdqa	%xmm1, 288(%rsp)
	vmovdqa64	%xmm28, 304(%rsp)
	vmovdqa64	%xmm24, 320(%rsp)
	vmovdqu64	%ymm27, 544(%rsp)
	vmovdqu	%ymm15, 576(%rsp)
	leaq	256(%r9), %rax
	leaq	256(%rsi), %rcx
	vpaddd	.LCPI0_0(%rip), %xmm25, %xmm0
	vinserti32x4	$1, %xmm25, %ymm25, %ymm1
	vpaddd	.LCPI0_19(%rip), %ymm1, %ymm2
	vpaddd	.LCPI0_20(%rip), %ymm1, %ymm3
	vpaddd	.LCPI0_21(%rip), %ymm1, %ymm4
	vpaddd	.LCPI0_22(%rip), %ymm1, %ymm5
	vpaddd	.LCPI0_23(%rip), %ymm1, %ymm6
	vpaddd	.LCPI0_24(%rip), %ymm1, %ymm7
	vinserti32x4	$1, %xmm0, %ymm25, %ymm0
	vpaddd	.LCPI0_25(%rip), %ymm1, %ymm1
	vinsertf32x4	$1, %xmm22, %ymm22, %ymm23
	vxorpd	%ymm0, %ymm23, %ymm0
	vxorpd	%ymm2, %ymm23, %ymm2
	vxorpd	%ymm3, %ymm23, %ymm3
	vxorpd	%ymm4, %ymm23, %ymm4
	vxorpd	%ymm5, %ymm23, %ymm5
	vxorpd	%ymm6, %ymm23, %ymm6
	vxorpd	%ymm7, %ymm23, %ymm7
	vxorpd	%ymm1, %ymm23, %ymm1
	vinsertf32x4	$1, %xmm16, %ymm16, %ymm14
	vaesenc	%ymm14, %ymm0, %ymm0
	vaesenc	%ymm14, %ymm2, %ymm2
	vaesenc	%ymm14, %ymm3, %ymm3
	vaesenc	%ymm14, %ymm4, %ymm4
	vaesenc	%ymm14, %ymm5, %ymm5
	vaesenc	%ymm14, %ymm6, %ymm6
	vaesenc	%ymm14, %ymm7, %ymm7
	vaesenc	%ymm14, %ymm1, %ymm1
	vmovups	%ymm26, 800(%rsp)
	vinserti32x4	$1, %xmm26, %ymm26, %ymm15
	vaesenc	%ymm15, %ymm0, %ymm0
	vaesenc	%ymm15, %ymm2, %ymm2
	vaesenc	%ymm15, %ymm3, %ymm3
	vaesenc	%ymm15, %ymm4, %ymm4
	vaesenc	%ymm15, %ymm5, %ymm5
	vaesenc	%ymm15, %ymm6, %ymm6
	vaesenc	%ymm15, %ymm7, %ymm7
	vaesenc	%ymm15, %ymm1, %ymm1
	vmovdqu	384(%rsp), %ymm12
	vinserti128	$1, %xmm12, %ymm12, %ymm12
	vaesenc	%ymm12, %ymm0, %ymm0
	vaesenc	%ymm12, %ymm2, %ymm2
	vaesenc	%ymm12, %ymm3, %ymm3
	vaesenc	%ymm12, %ymm4, %ymm4
	vaesenc	%ymm12, %ymm5, %ymm5
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm7, %ymm7
	vmovdqu	%ymm12, 1120(%rsp)
	vaesenc	%ymm12, %ymm1, %ymm1
	vmovups	%ymm31, 768(%rsp)
	vinserti32x4	$1, %xmm31, %ymm31, %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm8, 1088(%rsp)
	vaesenc	%ymm8, %ymm1, %ymm1
	vmovdqu	48(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm8, 1056(%rsp)
	vaesenc	%ymm8, %ymm1, %ymm1
	vmovdqu	240(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm8, 1024(%rsp)
	vaesenc	%ymm8, %ymm1, %ymm1
	vmovdqu	208(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm8, 992(%rsp)
	vaesenc	%ymm8, %ymm1, %ymm1
	vmovdqu	176(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm19
	vaesenc	%ymm19, %ymm0, %ymm0
	vaesenc	%ymm19, %ymm2, %ymm2
	vaesenc	%ymm19, %ymm3, %ymm3
	vaesenc	%ymm19, %ymm4, %ymm4
	vaesenc	%ymm19, %ymm5, %ymm5
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm7, %ymm7
	vaesenc	%ymm19, %ymm1, %ymm1
	vmovdqu	144(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm31
	vaesenc	%ymm31, %ymm0, %ymm0
	vaesenc	%ymm31, %ymm2, %ymm2
	vaesenc	%ymm31, %ymm3, %ymm3
	vaesenc	%ymm31, %ymm4, %ymm4
	vaesenc	%ymm31, %ymm5, %ymm5
	vaesenc	%ymm31, %ymm6, %ymm6
	vaesenc	%ymm31, %ymm7, %ymm7
	vaesenc	%ymm31, %ymm1, %ymm1
	vmovdqu	112(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm17
	vaesenc	%ymm17, %ymm0, %ymm0
	vaesenc	%ymm17, %ymm2, %ymm2
	vaesenc	%ymm17, %ymm3, %ymm3
	vaesenc	%ymm17, %ymm4, %ymm4
	vaesenc	%ymm17, %ymm5, %ymm5
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm7, %ymm7
	vaesenc	%ymm17, %ymm1, %ymm1
	vmovdqu	80(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm16
	vaesenc	%ymm16, %ymm0, %ymm0
	vaesenc	%ymm16, %ymm2, %ymm2
	vaesenc	%ymm16, %ymm3, %ymm3
	vaesenc	%ymm16, %ymm4, %ymm4
	vaesenc	%ymm16, %ymm5, %ymm5
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm7, %ymm7
	vaesenc	%ymm16, %ymm1, %ymm1
	vmovapd	%ymm22, %ymm27
	vinserti32x4	$1, %xmm10, %ymm10, %ymm22
	vaesenc	%ymm22, %ymm0, %ymm0
	vaesenc	%ymm22, %ymm2, %ymm2
	vaesenc	%ymm22, %ymm3, %ymm3
	vaesenc	%ymm22, %ymm4, %ymm4
	vaesenc	%ymm22, %ymm5, %ymm5
	vaesenc	%ymm22, %ymm6, %ymm6
	vaesenc	%ymm22, %ymm7, %ymm7
	vaesenc	%ymm22, %ymm1, %ymm1
	vinserti128	$1, %xmm11, %ymm11, %ymm11
	vaesenc	%ymm11, %ymm0, %ymm0
	vaesenc	%ymm11, %ymm2, %ymm2
	vaesenc	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm5, %ymm5
	vaesenc	%ymm11, %ymm6, %ymm6
	vaesenc	%ymm11, %ymm7, %ymm7
	vaesenc	%ymm11, %ymm1, %ymm1
	vinserti32x4	$1, %xmm9, %ymm9, %ymm24
	vaesenclast	%ymm24, %ymm0, %ymm0
	vaesenclast	%ymm24, %ymm2, %ymm2
	vaesenclast	%ymm24, %ymm3, %ymm3
	vaesenclast	%ymm24, %ymm4, %ymm4
	vaesenclast	%ymm24, %ymm5, %ymm5
	vaesenclast	%ymm24, %ymm6, %ymm6
	vaesenclast	%ymm24, %ymm7, %ymm7
	vaesenclast	%ymm24, %ymm1, %ymm8
	vpxor	(%r9), %ymm0, %ymm1
	vpxor	32(%r9), %ymm2, %ymm12
	vpxor	64(%r9), %ymm3, %ymm10
	vpxorq	96(%r9), %ymm4, %ymm28
	vpxor	128(%r9), %ymm5, %ymm0
	vpxor	160(%r9), %ymm6, %ymm9
	vpxor	192(%r9), %ymm7, %ymm7
	vpxor	224(%r9), %ymm8, %ymm5
	vmovdqu	%ymm1, (%rsi)
	vmovdqu	%ymm12, 32(%rsi)
	vmovdqu	%ymm10, 64(%rsi)
	vmovdqu64	%ymm28, 96(%rsi)
	vmovdqu	%ymm0, -112(%rsp)
	vmovdqu	%ymm0, 128(%rsi)
	vmovdqu	%ymm9, 160(%rsi)
	vmovdqu	%ymm7, 192(%rsi)
	leaq	-256(%r10), %rdx
	vmovdqu	%ymm5, 224(%rsi)
	vpaddd	.LCPI0_26(%rip), %xmm25, %xmm0
	cmpq	$512, %r10
	jb	.LBB0_27
	vmovdqu64	%ymm21, 704(%rsp)
	vmovdqu64	%ymm20, 736(%rsp)
	vmovdqu	%ymm13, 512(%rsp)
	vmovups	%ymm14, 928(%rsp)
	vmovdqu	%ymm15, 960(%rsp)
	vmovdqu	-112(%rsp), %ymm2
	vmovdqu64	%ymm30, 896(%rsp)
	vmovdqu	%ymm11, 864(%rsp)
	vmovdqu64	%ymm24, 832(%rsp)
	.p2align	4
.LBB0_24:
	vmovdqu	%ymm2, -112(%rsp)
	vmovdqu	%ymm7, 1184(%rsp)
	vmovdqu	%ymm5, 1216(%rsp)
	vmovdqa	%xmm0, %xmm2
	vmovdqu	%ymm2, 1248(%rsp)
	vpxorq	%ymm29, %ymm1, %ymm29
	vpaddd	.LCPI0_27(%rip), %xmm25, %xmm0
	vinserti128	$1, %xmm0, %ymm2, %ymm0
	vinserti32x4	$1, %xmm25, %ymm25, %ymm1
	vpaddd	.LCPI0_28(%rip), %ymm1, %ymm2
	vpaddd	.LCPI0_29(%rip), %ymm1, %ymm3
	vpaddd	.LCPI0_30(%rip), %ymm1, %ymm4
	vmovdqa64	%ymm9, %ymm18
	vpaddd	.LCPI0_31(%rip), %ymm1, %ymm9
	vpaddd	.LCPI0_32(%rip), %ymm1, %ymm7
	vpaddd	.LCPI0_33(%rip), %ymm1, %ymm8
	vpaddd	.LCPI0_34(%rip), %ymm1, %ymm1
	vxorpd	%ymm0, %ymm23, %ymm5
	vxorpd	%ymm2, %ymm23, %ymm14
	vxorpd	%ymm3, %ymm23, %ymm6
	vxorpd	%ymm4, %ymm23, %ymm3
	vxorpd	%ymm9, %ymm23, %ymm2
	vxorpd	%ymm7, %ymm23, %ymm4
	vxorpd	%ymm8, %ymm23, %ymm15
	vxorpd	%ymm1, %ymm23, %ymm11
	vmovdqu64	416(%rsp), %ymm20
	vpclmulqdq	$0, %ymm20, %ymm29, %ymm0
	vmovups	576(%rsp), %ymm8
	vmovups	928(%rsp), %ymm9
	vmovdqa64	%ymm28, %ymm24
	vmovdqa	%ymm10, %ymm1
	vmovdqa	%ymm12, %ymm13
	#APP
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm14, %ymm14
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm15, %ymm15
	vaesenc	%ymm9, %ymm11, %ymm11
	vpunpcklqdq	%ymm13, %ymm8, %ymm12
	vpunpckhqdq	%ymm13, %ymm8, %ymm10
	vpxor	%ymm12, %ymm10, %ymm10
	vpclmulqdq	$16, %ymm10, %ymm10, %ymm10
	vpclmulqdq	$0, %ymm13, %ymm8, %ymm7
	vpclmulqdq	$17, %ymm13, %ymm8, %ymm12
	#NO_APP
	vmovups	%ymm10, 1152(%rsp)
	vmovdqa64	%ymm12, %ymm27
	vpxorq	%ymm0, %ymm7, %ymm25
	vmovups	544(%rsp), %ymm0
	vmovups	960(%rsp), %ymm7
	#APP
	vaesenc	%ymm7, %ymm5, %ymm5
	vaesenc	%ymm7, %ymm14, %ymm14
	vaesenc	%ymm7, %ymm6, %ymm6
	vaesenc	%ymm7, %ymm3, %ymm3
	vaesenc	%ymm7, %ymm2, %ymm2
	vaesenc	%ymm7, %ymm4, %ymm4
	vaesenc	%ymm7, %ymm15, %ymm15
	vaesenc	%ymm7, %ymm11, %ymm11
	vpunpcklqdq	%ymm1, %ymm0, %ymm10
	vpunpckhqdq	%ymm1, %ymm0, %ymm8
	vpxor	%ymm10, %ymm8, %ymm8
	vpclmulqdq	$16, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$0, %ymm1, %ymm0, %ymm9
	vpclmulqdq	$17, %ymm1, %ymm0, %ymm10
	#NO_APP
	vmovdqa64	%ymm10, %ymm30
	vmovapd	%ymm23, %ymm28
	vmovdqa64	%ymm8, %ymm23
	vmovups	672(%rsp), %ymm10
	vmovups	1120(%rsp), %ymm12
	vmovdqa64	%ymm24, %ymm8
	#APP
	vaesenc	%ymm12, %ymm5, %ymm5
	vaesenc	%ymm12, %ymm14, %ymm14
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm3, %ymm3
	vaesenc	%ymm12, %ymm2, %ymm2
	vaesenc	%ymm12, %ymm4, %ymm4
	vaesenc	%ymm12, %ymm15, %ymm15
	vaesenc	%ymm12, %ymm11, %ymm11
	vpunpcklqdq	%ymm8, %ymm10, %ymm7
	vpunpckhqdq	%ymm8, %ymm10, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$0, %ymm8, %ymm10, %ymm0
	vpclmulqdq	$17, %ymm8, %ymm10, %ymm7
	#NO_APP
	vmovdqa64	%ymm22, %ymm24
	vmovdqa64	%ymm16, %ymm22
	vmovdqa64	%ymm17, %ymm21
	vmovdqa64	%ymm31, %ymm17
	vmovdqa64	%ymm19, %ymm31
	vmovdqa64	%ymm1, %ymm19
	vpternlogq	$150, %ymm9, %ymm25, %ymm0
	vmovups	640(%rsp), %ymm9
	vmovups	1088(%rsp), %ymm10
	vmovups	-112(%rsp), %ymm8
	#APP
	vaesenc	%ymm10, %ymm5, %ymm5
	vaesenc	%ymm10, %ymm14, %ymm14
	vaesenc	%ymm10, %ymm6, %ymm6
	vaesenc	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm10, %ymm2, %ymm2
	vaesenc	%ymm10, %ymm4, %ymm4
	vaesenc	%ymm10, %ymm15, %ymm15
	vaesenc	%ymm10, %ymm11, %ymm11
	vpunpcklqdq	%ymm8, %ymm9, %ymm12
	vpunpckhqdq	%ymm8, %ymm9, %ymm1
	vpxor	%ymm1, %ymm12, %ymm1
	vpclmulqdq	$16, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$0, %ymm8, %ymm9, %ymm13
	vpclmulqdq	$17, %ymm8, %ymm9, %ymm12
	#NO_APP
	vmovdqa64	%ymm13, %ymm16
	vmovdqa64	%ymm12, %ymm26
	vmovdqa64	%ymm1, %ymm25
	vmovups	608(%rsp), %ymm13
	vmovups	1056(%rsp), %ymm12
	vmovdqa64	%ymm18, %ymm8
	vmovdqu64	896(%rsp), %ymm18
	#APP
	vaesenc	%ymm12, %ymm5, %ymm5
	vaesenc	%ymm12, %ymm14, %ymm14
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm3, %ymm3
	vaesenc	%ymm12, %ymm2, %ymm2
	vaesenc	%ymm12, %ymm4, %ymm4
	vaesenc	%ymm12, %ymm15, %ymm15
	vaesenc	%ymm12, %ymm11, %ymm11
	vpunpcklqdq	%ymm8, %ymm13, %ymm9
	vpunpckhqdq	%ymm8, %ymm13, %ymm1
	vpxor	%ymm1, %ymm9, %ymm1
	vpclmulqdq	$16, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$0, %ymm8, %ymm13, %ymm10
	vpclmulqdq	$17, %ymm8, %ymm13, %ymm9
	#NO_APP
	vpternlogq	$150, %ymm16, %ymm0, %ymm10
	vpclmulqdq	$17, %ymm20, %ymm29, %ymm0
	vpxorq	%ymm0, %ymm27, %ymm0
	vpternlogq	$150, %ymm30, %ymm0, %ymm7
	vpternlogq	$150, %ymm26, %ymm7, %ymm9
	vmovdqa64	%ymm9, %ymm20
	vmovdqa64	%ymm29, %ymm0
	vmovdqa	.LCPI0_35(%rip), %ymm7
	vpermt2q	%ymm18, %ymm7, %ymm29
	vmovdqa	.LCPI0_36(%rip), %ymm7
	vmovdqa64	%ymm18, %ymm30
	vpermt2q	%ymm18, %ymm7, %ymm0
	vpxorq	%ymm29, %ymm0, %ymm0
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpxor	1152(%rsp), %ymm0, %ymm0
	vmovdqa64	%ymm19, %ymm7
	vmovdqa64	%ymm31, %ymm19
	vmovdqa64	%ymm17, %ymm31
	vmovdqa64	%ymm21, %ymm17
	vmovdqa64	%ymm22, %ymm16
	vmovdqa64	%ymm24, %ymm22
	vmovdqu64	832(%rsp), %ymm24
	vpternlogq	$150, %ymm23, %ymm0, %ymm7
	vmovapd	%ymm28, %ymm23
	vpternlogq	$150, %ymm25, %ymm7, %ymm1
	vmovups	512(%rsp), %ymm7
	vmovups	1024(%rsp), %ymm8
	vmovups	1184(%rsp), %ymm0
	#APP
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm14, %ymm14
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm15, %ymm15
	vaesenc	%ymm8, %ymm11, %ymm11
	vpunpcklqdq	%ymm0, %ymm7, %ymm12
	vpunpckhqdq	%ymm0, %ymm7, %ymm9
	vpxor	%ymm12, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm0, %ymm7, %ymm13
	vpclmulqdq	$17, %ymm0, %ymm7, %ymm12
	#NO_APP
	vmovdqa64	%ymm13, %ymm26
	vmovdqa64	%ymm12, %ymm25
	vmovdqa64	%ymm9, %ymm21
	vmovdqu	448(%rsp), %ymm13
	vmovups	992(%rsp), %ymm12
	vpbroadcastq	.LCPI0_13(%rip), %ymm18
	vmovups	1216(%rsp), %ymm7
	#APP
	vaesenc	%ymm12, %ymm5, %ymm5
	vaesenc	%ymm12, %ymm14, %ymm14
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm3, %ymm3
	vaesenc	%ymm12, %ymm2, %ymm2
	vaesenc	%ymm12, %ymm4, %ymm4
	vaesenc	%ymm12, %ymm15, %ymm15
	vaesenc	%ymm12, %ymm11, %ymm11
	vpunpcklqdq	%ymm7, %ymm13, %ymm9
	vpunpckhqdq	%ymm7, %ymm13, %ymm8
	vpxor	%ymm9, %ymm8, %ymm8
	vpclmulqdq	$16, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$0, %ymm7, %ymm13, %ymm0
	vpclmulqdq	$17, %ymm7, %ymm13, %ymm9
	#NO_APP
	vpternlogq	$150, %ymm26, %ymm10, %ymm0
	vpternlogq	$150, %ymm25, %ymm20, %ymm9
	vpternlogq	$150, %ymm21, %ymm1, %ymm8
	vaesenc	%ymm19, %ymm5, %ymm5
	vmovdqa	%ymm0, %ymm7
	vpternlogq	$150, %ymm0, %ymm9, %ymm8
	vpslldq	$8, %ymm8, %ymm0
	vpxor	%ymm0, %ymm7, %ymm0
	vpsrldq	$8, %ymm8, %ymm7
	vpclmulqdq	$16, %ymm18, %ymm0, %ymm8
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpclmulqdq	$16, %ymm18, %ymm0, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpshufd	$78, %ymm0, %ymm29
	vpternlogq	$150, %ymm7, %ymm9, %ymm29
	vaesenc	%ymm19, %ymm14, %ymm0
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm3, %ymm3
	vaesenc	%ymm19, %ymm2, %ymm2
	vaesenc	%ymm19, %ymm4, %ymm4
	vaesenc	%ymm19, %ymm15, %ymm7
	vaesenc	%ymm19, %ymm11, %ymm1
	vmovdqu	864(%rsp), %ymm11
	vaesenc	%ymm31, %ymm5, %ymm5
	vaesenc	%ymm31, %ymm0, %ymm0
	vaesenc	%ymm31, %ymm6, %ymm6
	vaesenc	%ymm31, %ymm3, %ymm3
	vaesenc	%ymm31, %ymm2, %ymm2
	vaesenc	%ymm31, %ymm4, %ymm4
	vaesenc	%ymm31, %ymm7, %ymm7
	vaesenc	%ymm31, %ymm1, %ymm1
	vaesenc	%ymm17, %ymm5, %ymm5
	vaesenc	%ymm17, %ymm0, %ymm0
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm3, %ymm3
	vaesenc	%ymm17, %ymm2, %ymm2
	vaesenc	%ymm17, %ymm4, %ymm4
	vaesenc	%ymm17, %ymm7, %ymm7
	vaesenc	%ymm17, %ymm1, %ymm1
	vaesenc	%ymm16, %ymm5, %ymm5
	vaesenc	%ymm16, %ymm0, %ymm0
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm3, %ymm3
	vaesenc	%ymm16, %ymm2, %ymm2
	vaesenc	%ymm16, %ymm4, %ymm4
	vaesenc	%ymm16, %ymm7, %ymm7
	vaesenc	%ymm16, %ymm1, %ymm1
	vaesenc	%ymm22, %ymm5, %ymm5
	vaesenc	%ymm22, %ymm0, %ymm0
	vaesenc	%ymm22, %ymm6, %ymm6
	vaesenc	%ymm22, %ymm3, %ymm3
	vaesenc	%ymm22, %ymm2, %ymm2
	vaesenc	%ymm22, %ymm4, %ymm4
	vaesenc	%ymm22, %ymm7, %ymm7
	vaesenc	%ymm22, %ymm1, %ymm1
	vaesenc	%ymm11, %ymm5, %ymm5
	vaesenc	%ymm11, %ymm0, %ymm0
	vaesenc	%ymm11, %ymm6, %ymm6
	vaesenc	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm11, %ymm2, %ymm2
	vaesenc	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm7, %ymm7
	vaesenc	%ymm11, %ymm1, %ymm8
	vaesenclast	%ymm24, %ymm5, %ymm1
	vaesenclast	%ymm24, %ymm0, %ymm0
	vaesenclast	%ymm24, %ymm6, %ymm5
	vaesenclast	%ymm24, %ymm3, %ymm3
	vaesenclast	%ymm24, %ymm2, %ymm2
	vaesenclast	%ymm24, %ymm4, %ymm4
	vaesenclast	%ymm24, %ymm7, %ymm6
	vpxor	(%rax), %ymm1, %ymm1
	vpxor	32(%rax), %ymm0, %ymm12
	vpxor	64(%rax), %ymm5, %ymm10
	vpxorq	96(%rax), %ymm3, %ymm28
	vpxor	128(%rax), %ymm2, %ymm2
	vpxor	160(%rax), %ymm4, %ymm9
	vpxor	192(%rax), %ymm6, %ymm7
	vaesenclast	%ymm24, %ymm8, %ymm0
	vpxor	224(%rax), %ymm0, %ymm5
	leaq	256(%rax), %rax
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	%ymm12, 32(%rcx)
	vmovdqu	%ymm10, 64(%rcx)
	vmovdqu64	%ymm28, 96(%rcx)
	vmovdqu	%ymm2, 128(%rcx)
	vmovdqu	%ymm9, 160(%rcx)
	vmovdqu	%ymm7, 192(%rcx)
	vmovdqu	%ymm5, 224(%rcx)
	addq	$256, %rcx
	addq	$-256, %rdx
	vmovdqu	1248(%rsp), %ymm0
	vmovdqa64	%xmm0, %xmm25
	vpaddd	.LCPI0_26(%rip), %xmm0, %xmm0
	cmpq	$255, %rdx
	ja	.LBB0_24
	vmovdqu	%ymm2, -112(%rsp)
	vmovupd	-80(%rsp), %ymm22
	vmovdqu	512(%rsp), %ymm13
	vmovdqu64	416(%rsp), %ymm23
	vmovdqu64	736(%rsp), %ymm20
	vmovdqu64	704(%rsp), %ymm21
	jmp	.LBB0_28
.LBB0_26:
	vmovdqu64	384(%rsp), %ymm30
	jmp	.LBB0_29
.LBB0_27:
	vmovapd	%ymm27, %ymm22
	vmovdqu64	416(%rsp), %ymm23
.LBB0_28:
	vpxorq	%ymm29, %ymm1, %ymm1
	vmovdqu	448(%rsp), %ymm4
	vpunpcklqdq	%ymm5, %ymm4, %ymm2
	vpunpckhqdq	%ymm5, %ymm4, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm5, %ymm4, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm5, %ymm4, %ymm4
	vpunpcklqdq	%ymm7, %ymm13, %ymm5
	vpunpckhqdq	%ymm7, %ymm13, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm7, %ymm13, %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$17, %ymm7, %ymm13, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqa	.LCPI0_14(%rip), %ymm5
	vmovdqa64	%ymm21, %ymm6
	vmovdqa	.LCPI0_15(%rip), %ymm7
	vpermt2q	%ymm9, %ymm5, %ymm6
	vmovdqa64	%ymm21, %ymm8
	vpermt2q	%ymm9, %ymm7, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqa	%ymm9, %ymm13
	vmovdqu	608(%rsp), %ymm9
	vpclmulqdq	$0, %ymm13, %ymm9, %ymm8
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm13, %ymm9, %ymm13
	vmovdqa	.LCPI0_16(%rip), %ymm14
	vmovdqa64	%ymm21, %ymm15
	vmovdqu64	-112(%rsp), %ymm27
	vpermt2q	%ymm27, %ymm14, %ymm15
	vmovdqa64	.LCPI0_17(%rip), %ymm16
	vpermt2q	%ymm27, %ymm16, %ymm21
	vpxorq	%ymm15, %ymm21, %ymm15
	vmovdqu	640(%rsp), %ymm9
	vpclmulqdq	$0, %ymm27, %ymm9, %ymm17
	vpternlogq	$150, %ymm8, %ymm3, %ymm17
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm3
	vpternlogq	$150, %ymm6, %ymm2, %ymm3
	vpclmulqdq	$17, %ymm27, %ymm9, %ymm2
	vpternlogq	$150, %ymm13, %ymm4, %ymm2
	vmovdqa64	%ymm20, %ymm4
	vpermt2q	%ymm28, %ymm5, %ymm4
	vmovdqa64	%ymm20, %ymm6
	vpermt2q	%ymm28, %ymm7, %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	672(%rsp), %ymm8
	vpclmulqdq	$0, %ymm28, %ymm8, %ymm6
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm28, %ymm8, %ymm8
	vmovdqa64	%ymm20, %ymm9
	vpermt2q	%ymm10, %ymm14, %ymm9
	vpermt2q	%ymm10, %ymm16, %ymm20
	vpxorq	%ymm9, %ymm20, %ymm9
	vmovdqu	544(%rsp), %ymm13
	vpclmulqdq	$0, %ymm10, %ymm13, %ymm11
	vpternlogq	$150, %ymm6, %ymm17, %ymm11
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm6
	vpternlogq	$150, %ymm4, %ymm3, %ymm6
	vpclmulqdq	$17, %ymm10, %ymm13, %ymm3
	vpternlogq	$150, %ymm8, %ymm2, %ymm3
	vpermi2q	%ymm12, %ymm30, %ymm5
	vpermi2q	%ymm12, %ymm30, %ymm7
	vpxor	%ymm5, %ymm7, %ymm2
	vmovdqu	576(%rsp), %ymm5
	vpclmulqdq	$0, %ymm12, %ymm5, %ymm4
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm12, %ymm5, %ymm5
	vpermi2q	%ymm1, %ymm30, %ymm14
	vpermt2q	%ymm1, %ymm16, %ymm30
	vpxorq	%ymm14, %ymm30, %ymm7
	vpclmulqdq	$0, %ymm1, %ymm23, %ymm8
	vpternlogq	$150, %ymm4, %ymm11, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm4
	vpternlogq	$150, %ymm2, %ymm6, %ymm4
	vpclmulqdq	$17, %ymm1, %ymm23, %ymm1
	vpternlogq	$150, %ymm5, %ymm3, %ymm1
	vpternlogq	$150, %ymm8, %ymm1, %ymm4
	vpslldq	$8, %ymm4, %ymm2
	vpxor	%ymm2, %ymm8, %ymm2
	vpsrldq	$8, %ymm4, %ymm3
	vpclmulqdq	$16, %ymm18, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm18, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm2, %ymm29
	vpternlogq	$150, %ymm3, %ymm1, %ymm29
	movq	%rdx, %r10
	movq	%rcx, %rsi
	movq	%rax, %r9
	vmovdqa64	%xmm0, %xmm25
	vmovups	16(%rsp), %ymm16
	vmovupd	800(%rsp), %ymm26
	vmovapd	-128(%rsp), %xmm17
	vmovdqu64	384(%rsp), %ymm30
	vmovupd	768(%rsp), %ymm31
	vmovdqa64	320(%rsp), %xmm24
	vmovdqa64	304(%rsp), %xmm28
	vmovdqa	288(%rsp), %xmm1
	vmovdqa	272(%rsp), %xmm2
.LBB0_29:
	vmovapd	%xmm17, %xmm23
	vpunpcklqdq	%xmm1, %xmm2, %xmm0
	cmpq	$32, %r10
	vmovdqu	48(%rsp), %ymm6
	jb	.LBB0_32
	vinsertf32x4	$1, %xmm22, %ymm22, %ymm1
	vinsertf32x4	$1, %xmm16, %ymm16, %ymm2
	vinsertf32x4	$1, %xmm26, %ymm26, %ymm3
	vinserti32x4	$1, %xmm30, %ymm30, %ymm4
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm5
	vinserti128	$1, %xmm6, %ymm6, %ymm6
	vmovdqu	240(%rsp), %ymm7
	vinserti128	$1, %xmm7, %ymm7, %ymm7
	vmovdqu	208(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm8
	vmovdqu	176(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vmovdqu	144(%rsp), %ymm10
	vinserti128	$1, %xmm10, %ymm10, %ymm10
	vmovdqu	112(%rsp), %ymm11
	vinserti128	$1, %xmm11, %ymm11, %ymm11
	vmovdqu	80(%rsp), %ymm12
	vinserti128	$1, %xmm12, %ymm12, %ymm12
	vmovdqu	-16(%rsp), %ymm13
	vinserti128	$1, %xmm13, %ymm13, %ymm13
	vmovdqu	-48(%rsp), %ymm14
	vinserti128	$1, %xmm14, %ymm14, %ymm14
	vmovdqu	352(%rsp), %ymm15
	vinserti128	$1, %xmm15, %ymm15, %ymm15
	vpmovsxbq	.LCPI0_39(%rip), %xmm16
	vpmovsxbq	.LCPI0_40(%rip), %xmm17
	vmovdqu64	448(%rsp), %ymm27
	.p2align	4
.LBB0_31:
	vpaddd	%xmm16, %xmm25, %xmm19
	vinserti32x4	$1, %xmm19, %ymm25, %ymm19
	vxorpd	%ymm19, %ymm1, %ymm19
	vaesenc	%ymm2, %ymm19, %ymm19
	vaesenc	%ymm3, %ymm19, %ymm19
	vaesenc	%ymm4, %ymm19, %ymm19
	vaesenc	%ymm5, %ymm19, %ymm19
	vaesenc	%ymm6, %ymm19, %ymm19
	vaesenc	%ymm7, %ymm19, %ymm19
	vaesenc	%ymm8, %ymm19, %ymm19
	vaesenc	%ymm9, %ymm19, %ymm19
	vaesenc	%ymm10, %ymm19, %ymm19
	vaesenc	%ymm11, %ymm19, %ymm19
	vaesenc	%ymm12, %ymm19, %ymm19
	vaesenc	%ymm13, %ymm19, %ymm19
	vaesenc	%ymm14, %ymm19, %ymm19
	vaesenclast	%ymm15, %ymm19, %ymm19
	vpxorq	(%r9), %ymm19, %ymm19
	addq	$32, %r9
	vmovdqu64	%ymm19, (%rsi)
	addq	$32, %rsi
	addq	$-32, %r10
	vpaddd	%xmm17, %xmm25, %xmm25
	vpxorq	%ymm29, %ymm19, %ymm19
	vpunpcklqdq	%ymm19, %ymm27, %ymm20
	vpunpckhqdq	%ymm19, %ymm27, %ymm21
	vpxorq	%ymm20, %ymm21, %ymm20
	vpclmulqdq	$0, %ymm19, %ymm27, %ymm21
	vpclmulqdq	$1, %ymm20, %ymm20, %ymm20
	vpclmulqdq	$17, %ymm19, %ymm27, %ymm19
	vpternlogq	$150, %ymm21, %ymm19, %ymm20
	vpslldq	$8, %ymm20, %ymm22
	vpxorq	%ymm22, %ymm21, %ymm21
	vpsrldq	$8, %ymm20, %ymm20
	vpclmulqdq	$16, %ymm18, %ymm21, %ymm22
	vpshufd	$78, %ymm21, %ymm21
	vpxorq	%ymm21, %ymm22, %ymm21
	vpclmulqdq	$16, %ymm18, %ymm21, %ymm22
	vpxorq	%ymm20, %ymm22, %ymm20
	vpshufd	$78, %ymm21, %ymm29
	vpternlogq	$150, %ymm20, %ymm19, %ymm29
	cmpq	$31, %r10
	ja	.LBB0_31
.LBB0_32:
	vpunpcklqdq	%xmm24, %xmm28, %xmm1
	vpsllq	$3, %xmm0, %xmm0
	testq	%r10, %r10
	vmovapd	%xmm23, %xmm10
	je	.LBB0_36
	movl	$-1, %eax
	bzhil	%r10d, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%r9), %ymm2 {%k1} {z}
	vpaddd	.LCPI0_0(%rip), %xmm25, %xmm3
	vinserti32x4	$1, %xmm3, %ymm25, %ymm3
	vmovdqu64	-80(%rsp), %ymm23
	vinserti32x4	$1, %xmm23, %ymm23, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vmovdqu	16(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm26, %ymm26, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinserti32x4	$1, %xmm30, %ymm30, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	48(%rsp), %ymm11
	vinserti128	$1, %xmm11, %ymm11, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	240(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	208(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	176(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	144(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	112(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	80(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-16(%rsp), %ymm6
	vinserti128	$1, %xmm6, %ymm6, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-48(%rsp), %ymm7
	vinserti128	$1, %xmm7, %ymm7, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	352(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm4
	vaesenclast	%ymm4, %ymm3, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vmovdqu8	%ymm2, (%rsi) {%k1}
	vmovdqu8	%ymm2, %ymm2 {%k1} {z}
	vpxorq	%ymm2, %ymm29, %ymm2
	cmpq	$17, %r10
	vmovupd	480(%rsp), %ymm3
	jae	.LBB0_35
	vmovapd	%xmm10, %xmm3
.LBB0_35:
	vinsertf128	$1, %xmm3, %ymm3, %ymm3
	vpunpcklqdq	%ymm2, %ymm3, %ymm4
	vpunpckhqdq	%ymm2, %ymm3, %ymm5
	vxorpd	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm2, %ymm3, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm3, %ymm2
	vpternlogq	$150, %ymm5, %ymm2, %ymm4
	vpslldq	$8, %ymm4, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm18, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm18, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm4, %ymm2, %ymm29
	jmp	.LBB0_37
.LBB0_36:
	vmovdqu	-16(%rsp), %ymm6
	vmovdqu	-48(%rsp), %ymm7
	vmovdqu	352(%rsp), %ymm8
	vmovdqu64	-80(%rsp), %ymm23
	vmovdqu	16(%rsp), %ymm9
	vmovdqu	48(%rsp), %ymm11
.LBB0_37:
	vextracti32x4	$1, %ymm29, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxorq	%xmm0, %xmm29, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI0_13(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$120, .LCPI0_37(%rip), %xmm0, %xmm23
	vaesenc	%xmm9, %xmm23, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm31, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm0
	vpxor	336(%rsp), %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
.LBB0_38:
	addq	$1288, %rsp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmsiv_tigerlake_decrypt, .Lfunc_end0-haberdashery_aes256gcmsiv_tigerlake_decrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_1:
	.quad	2
	.quad	0
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
.LCPI1_18:
	.quad	-1
	.quad	9223372036854775807
.LCPI1_19:
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
.LCPI1_27:
	.long	16
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_14:
	.quad	0
	.quad	4
	.quad	0
	.quad	6
.LCPI1_15:
	.quad	1
	.quad	5
	.quad	1
	.quad	7
.LCPI1_16:
	.quad	2
	.quad	4
	.quad	2
	.quad	6
.LCPI1_17:
	.quad	3
	.quad	5
	.quad	3
	.quad	7
.LCPI1_20:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_23:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI1_24:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI1_25:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI1_26:
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_28:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata,"a",@progbits
.LCPI1_29:
	.byte	16
	.byte	0
.LCPI1_30:
	.byte	1
	.byte	0
.LCPI1_31:
	.byte	4
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_encrypt,@function
haberdashery_aes256gcmsiv_tigerlake_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$416, %rsp
	.cfi_def_cfa_offset 432
	.cfi_offset %rbx, -16
	movq	432(%rsp), %r10
	xorl	%eax, %eax
	cmpq	448(%rsp), %r10
	jne	.LBB1_48
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r11b
	cmpq	%rax, %r10
	setb	%bl
	andb	%r11b, %bl
	cmpq	$16, 464(%rsp)
	sete	%r11b
	cmpq	$12, %rdx
	sete	%al
	andb	%r11b, %al
	andb	%bl, %al
	cmpb	$1, %al
	jne	.LBB1_47
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI1_0(%rip), %xmm2, %xmm3
	vxorps	.LCPI1_1(%rip), %xmm2, %xmm1
	vxorps	.LCPI1_2(%rip), %xmm2, %xmm4
	vxorps	.LCPI1_3(%rip), %xmm2, %xmm0
	vxorps	.LCPI1_4(%rip), %xmm2, %xmm5
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	vmovaps	96(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	vmovaps	128(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	vmovaps	160(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	vmovaps	192(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	vmovaps	224(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenclast	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm7, %xmm4, %xmm4
	vaesenclast	%xmm7, %xmm0, %xmm0
	vaesenclast	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm2, %xmm6
	vpunpcklqdq	%xmm4, %xmm1, %xmm10
	vpunpcklqdq	%xmm5, %xmm0, %xmm9
	vpslldq	$4, %xmm10, %xmm2
	vxorpd	%xmm13, %xmm13, %xmm13
	vpunpcklqdq	%xmm1, %xmm13, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vpbroadcastd	.LCPI1_28(%rip), %xmm18
	vpshufb	%xmm18, %xmm9, %xmm2
	vpbroadcastq	.LCPI1_6(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm11
	vpternlogq	$150, %xmm1, %xmm10, %xmm11
	vpslldq	$4, %xmm9, %xmm1
	vpunpcklqdq	%xmm0, %xmm13, %xmm2
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpshufd	$255, %xmm11, %xmm1
	vaesenclast	%xmm13, %xmm1, %xmm12
	vpternlogq	$150, %xmm0, %xmm9, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_7(%rip), %xmm0
	vpshufb	%xmm18, %xmm12, %xmm1
	vaesenclast	%xmm0, %xmm1, %xmm3
	vpternlogq	$150, %xmm2, %xmm11, %xmm3
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpslldq	$12, %xmm12, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm3, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm4
	vpternlogq	$150, %xmm2, %xmm12, %xmm4
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm18, %xmm4, %xmm0
	vpbroadcastq	.LCPI1_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm5
	vmovups	%ymm3, 384(%rsp)
	vpternlogq	$150, %xmm2, %xmm3, %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm3
	vmovups	%ymm4, 352(%rsp)
	vpternlogq	$150, %xmm2, %xmm4, %xmm3
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm18, %xmm3, %xmm0
	vpbroadcastq	.LCPI1_9(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm4
	vmovups	%ymm5, 320(%rsp)
	vpternlogq	$150, %xmm2, %xmm5, %xmm4
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm4, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm5
	vmovups	%ymm3, 288(%rsp)
	vpternlogq	$150, %xmm2, %xmm3, %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_10(%rip), %xmm0
	vpshufb	%xmm18, %xmm5, %xmm1
	vaesenclast	%xmm0, %xmm1, %xmm30
	vmovups	%ymm4, 256(%rsp)
	vpternlogq	$150, %xmm2, %xmm4, %xmm30
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm30, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm31
	vmovups	%ymm5, 224(%rsp)
	vpternlogq	$150, %xmm2, %xmm5, %xmm31
	vpslldq	$4, %xmm30, %xmm0
	vpslldq	$8, %xmm30, %xmm1
	vpslldq	$12, %xmm30, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm18, %xmm31, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm7
	vpternlogq	$150, %xmm2, %xmm30, %xmm7
	vpslldq	$4, %xmm31, %xmm1
	vpslldq	$8, %xmm31, %xmm5
	vpslldq	$12, %xmm31, %xmm14
	vpshufd	$255, %xmm7, %xmm8
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %ymm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm3
	vpshufd	$78, %xmm0, %xmm16
	vpternlogq	$150, %xmm2, %xmm3, %xmm16
	vpclmulqdq	$0, %xmm16, %xmm16, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm16, %xmm16, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vinserti32x4	$1, %xmm0, %ymm0, %ymm17
	vinserti32x4	$1, %xmm0, %ymm16, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm17, %ymm2
	vpunpckhqdq	%ymm0, %ymm17, %ymm3
	vpunpcklqdq	%ymm0, %ymm17, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm0, %ymm17, %ymm0
	vpternlogq	$150, %ymm2, %ymm0, %ymm3
	vpslldq	$8, %ymm3, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm2, %ymm28
	vpternlogq	$150, %ymm3, %ymm0, %ymm28
	vpclmulqdq	$0, %ymm28, %ymm17, %ymm0
	vpunpckhqdq	%ymm28, %ymm17, %ymm2
	vpunpcklqdq	%ymm28, %ymm17, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm28, %ymm17, %ymm3
	vpternlogq	$150, %ymm0, %ymm3, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm0, %ymm4
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm4, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm0, %ymm4
	vpsrldq	$8, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpshufd	$78, %ymm0, %ymm20
	vpternlogq	$150, %ymm2, %ymm3, %ymm20
	vpunpcklqdq	%ymm20, %ymm17, %ymm0
	vpunpckhqdq	%ymm20, %ymm17, %ymm2
	vpxor	%ymm0, %ymm2, %ymm0
	vpclmulqdq	$0, %ymm20, %ymm17, %ymm2
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm20, %ymm17, %ymm3
	vpternlogq	$150, %ymm2, %ymm3, %ymm0
	vpslldq	$8, %ymm0, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpsrldq	$8, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vpshufd	$78, %ymm2, %ymm21
	vpternlogq	$150, %ymm0, %ymm3, %ymm21
	vpxord	%xmm29, %xmm29, %xmm29
	vpermq	$68, %ymm28, %ymm22
	vpermq	$238, %ymm28, %ymm23
	vpermq	$68, %ymm20, %ymm24
	vpermq	$238, %ymm20, %ymm25
	vpermq	$68, %ymm21, %ymm26
	vpermq	$238, %ymm21, %ymm27
	cmpq	$256, %r8
	vmovups	%ymm9, 192(%rsp)
	vmovups	%ymm10, 160(%rsp)
	vmovups	%ymm11, 128(%rsp)
	vmovups	%ymm12, 96(%rsp)
	vmovups	%ymm30, 64(%rsp)
	vmovups	%ymm31, 32(%rsp)
	vmovdqu	%ymm7, -32(%rsp)
	vmovdqa	%xmm6, -96(%rsp)
	jb	.LBB1_7
	vmovdqa	%xmm8, -128(%rsp)
	vmovaps	%xmm5, -112(%rsp)
	vmovaps	%xmm1, -64(%rsp)
	vinserti32x4	$1, %xmm16, %ymm16, %ymm0
	vmovdqa	.LCPI1_14(%rip), %ymm2
	vmovdqa	.LCPI1_15(%rip), %ymm3
	vmovdqa	.LCPI1_16(%rip), %ymm4
	vmovdqa	.LCPI1_17(%rip), %ymm5
	movq	%r8, %rdx
	.p2align	4
.LBB1_4:
	vmovdqu64	32(%rcx), %ymm18
	vmovdqu	64(%rcx), %ymm6
	vmovdqu	96(%rcx), %ymm7
	vmovdqu64	128(%rcx), %ymm30
	vmovdqu64	160(%rcx), %ymm31
	vmovdqu	192(%rcx), %ymm1
	vmovdqu	224(%rcx), %ymm8
	vpxorq	(%rcx), %ymm29, %ymm29
	addq	$256, %rcx
	addq	$-256, %rdx
	vpunpcklqdq	%ymm8, %ymm0, %ymm9
	vpunpckhqdq	%ymm8, %ymm0, %ymm10
	vpxor	%ymm9, %ymm10, %ymm9
	vpclmulqdq	$0, %ymm8, %ymm0, %ymm10
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm8, %ymm0, %ymm8
	vpunpcklqdq	%ymm1, %ymm17, %ymm11
	vpunpckhqdq	%ymm1, %ymm17, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm1, %ymm17, %ymm12
	vpxor	%ymm10, %ymm12, %ymm10
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm11
	vpxor	%ymm9, %ymm11, %ymm9
	vpclmulqdq	$17, %ymm1, %ymm17, %ymm1
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqa64	%ymm28, %ymm8
	vpermt2q	%ymm31, %ymm2, %ymm8
	vmovdqa64	%ymm28, %ymm11
	vpermt2q	%ymm31, %ymm3, %ymm11
	vpxor	%ymm8, %ymm11, %ymm8
	vpclmulqdq	$0, %ymm31, %ymm22, %ymm11
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm31, %ymm22, %ymm12
	vmovdqa64	%ymm28, %ymm31
	vpermt2q	%ymm30, %ymm4, %ymm31
	vmovdqa64	%ymm28, %ymm19
	vpermt2q	%ymm30, %ymm5, %ymm19
	vpxorq	%ymm31, %ymm19, %ymm19
	vpclmulqdq	$0, %ymm30, %ymm23, %ymm31
	vpternlogq	$150, %ymm11, %ymm10, %ymm31
	vpclmulqdq	$1, %ymm19, %ymm19, %ymm10
	vpternlogq	$150, %ymm8, %ymm9, %ymm10
	vpclmulqdq	$17, %ymm30, %ymm23, %ymm8
	vpternlogq	$150, %ymm12, %ymm1, %ymm8
	vmovdqa64	%ymm20, %ymm1
	vpermt2q	%ymm7, %ymm2, %ymm1
	vmovdqa64	%ymm20, %ymm9
	vpermt2q	%ymm7, %ymm3, %ymm9
	vpxor	%ymm1, %ymm9, %ymm1
	vpclmulqdq	$0, %ymm7, %ymm24, %ymm9
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm7, %ymm24, %ymm7
	vmovdqa64	%ymm20, %ymm11
	vpermt2q	%ymm6, %ymm4, %ymm11
	vmovdqa64	%ymm20, %ymm12
	vpermt2q	%ymm6, %ymm5, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm6, %ymm25, %ymm12
	vpternlogq	$150, %ymm9, %ymm31, %ymm12
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm9
	vpternlogq	$150, %ymm1, %ymm10, %ymm9
	vpclmulqdq	$17, %ymm6, %ymm25, %ymm1
	vpternlogq	$150, %ymm7, %ymm8, %ymm1
	vmovdqa64	%ymm21, %ymm6
	vpermt2q	%ymm18, %ymm2, %ymm6
	vmovdqa64	%ymm21, %ymm7
	vpermt2q	%ymm18, %ymm3, %ymm7
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$0, %ymm18, %ymm26, %ymm7
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm18, %ymm26, %ymm8
	vmovdqa64	%ymm21, %ymm10
	vpermt2q	%ymm29, %ymm4, %ymm10
	vmovdqa64	%ymm21, %ymm11
	vpermt2q	%ymm29, %ymm5, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm29, %ymm27, %ymm11
	vpternlogq	$150, %ymm7, %ymm12, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm7
	vpternlogq	$150, %ymm6, %ymm9, %ymm7
	vpclmulqdq	$17, %ymm29, %ymm27, %ymm6
	vpternlogq	$150, %ymm8, %ymm1, %ymm6
	vpternlogq	$150, %ymm11, %ymm6, %ymm7
	vpslldq	$8, %ymm7, %ymm1
	vpxor	%ymm1, %ymm11, %ymm1
	vpsrldq	$8, %ymm7, %ymm7
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm8
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm8, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpshufd	$78, %ymm1, %ymm29
	vpternlogq	$150, %ymm7, %ymm6, %ymm29
	cmpq	$255, %rdx
	ja	.LBB1_4
	vmovups	192(%rsp), %ymm9
	vmovupd	160(%rsp), %ymm10
	vmovupd	128(%rsp), %ymm11
	vmovupd	96(%rsp), %ymm12
	vmovupd	64(%rsp), %ymm30
	vmovupd	32(%rsp), %ymm31
	vmovdqu	-32(%rsp), %ymm7
	vmovdqa	-96(%rsp), %xmm6
	vpbroadcastd	.LCPI1_28(%rip), %xmm18
	vmovdqa	-64(%rsp), %xmm1
	vmovdqa	-112(%rsp), %xmm5
	vmovdqa	-128(%rsp), %xmm8
	vpternlogq	$150, %xmm5, %xmm1, %xmm14
	vaesenclast	%xmm13, %xmm8, %xmm8
	cmpq	$32, %rdx
	jae	.LBB1_8
	jmp	.LBB1_6
.LBB1_7:
	movq	%r8, %rdx
	vpternlogq	$150, %xmm5, %xmm1, %xmm14
	vaesenclast	%xmm13, %xmm8, %xmm8
	cmpq	$32, %rdx
	jb	.LBB1_6
.LBB1_8:
	vinserti32x4	$1, %xmm16, %ymm16, %ymm0
	leaq	-32(%rdx), %rdi
	testb	$32, %dil
	jne	.LBB1_9
	vpxorq	(%rcx), %ymm29, %ymm1
	addq	$32, %rcx
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm1, %ymm0, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm1, %ymm0, %ymm1
	vpternlogq	$150, %ymm3, %ymm1, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm2
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm2, %ymm1, %ymm29
	movq	%rdi, %rdx
	cmpq	$32, %rdi
	jb	.LBB1_10
	jmp	.LBB1_39
.LBB1_9:
	cmpq	$32, %rdi
	jae	.LBB1_39
.LBB1_10:
	vpternlogq	$150, %xmm14, %xmm31, %xmm8
	testq	%rdi, %rdi
	jne	.LBB1_11
	jmp	.LBB1_14
	.p2align	4
.LBB1_39:
	vpxorq	(%rcx), %ymm29, %ymm1
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm1, %ymm0, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm1, %ymm0, %ymm1
	vpternlogq	$150, %ymm3, %ymm1, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpternlogq	$150, %ymm2, %ymm4, %ymm3
	addq	$-64, %rdx
	vpternlogq	$150, 32(%rcx), %ymm1, %ymm3
	addq	$64, %rcx
	vpunpcklqdq	%ymm3, %ymm0, %ymm1
	vpunpckhqdq	%ymm3, %ymm0, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	vpclmulqdq	$0, %ymm3, %ymm0, %ymm2
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm3, %ymm0, %ymm3
	vpternlogq	$150, %ymm2, %ymm3, %ymm1
	vpslldq	$8, %ymm1, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpsrldq	$8, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpxor	%ymm1, %ymm4, %ymm1
	vpshufd	$78, %ymm2, %ymm29
	vpternlogq	$150, %ymm1, %ymm3, %ymm29
	cmpq	$31, %rdx
	ja	.LBB1_39
.LBB1_6:
	movq	%rdx, %rdi
	vpternlogq	$150, %xmm14, %xmm31, %xmm8
	testq	%rdi, %rdi
	je	.LBB1_14
.LBB1_11:
	movl	$-1, %edx
	bzhil	%edi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %ymm0 {%k1} {z}
	vpxorq	%ymm0, %ymm29, %ymm0
	vmovdqa64	%xmm16, %xmm1
	cmpq	$17, %rdi
	jae	.LBB1_13
	vmovdqa	%xmm6, %xmm1
.LBB1_13:
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vpunpcklqdq	%ymm0, %ymm1, %ymm2
	vpunpckhqdq	%ymm0, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpternlogq	$150, %ymm3, %ymm0, %ymm2
	vpslldq	$8, %ymm2, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpshufd	$78, %ymm1, %ymm29
	vpternlogq	$150, %ymm2, %ymm0, %ymm29
.LBB1_14:
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm14
	vpshufb	%xmm18, %xmm8, %xmm2
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	vmovq	%r10, %xmm4
	vmovq	%r8, %xmm5
	cmpq	$256, %r10
	vmovdqu	%ymm8, -64(%rsp)
	jb	.LBB1_18
	vmovdqa	%xmm2, (%rsp)
	vmovapd	%xmm1, 16(%rsp)
	vmovapd	%xmm0, -128(%rsp)
	vmovapd	%xmm14, -112(%rsp)
	vinserti32x4	$1, %xmm16, %ymm16, %ymm13
	vmovdqa64	.LCPI1_14(%rip), %ymm18
	vmovdqa64	.LCPI1_15(%rip), %ymm30
	vmovdqa64	.LCPI1_16(%rip), %ymm31
	vmovdqa	.LCPI1_17(%rip), %ymm3
	movq	%r9, %rcx
	movq	%r10, %rdx
	.p2align	4
.LBB1_16:
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm8
	vmovdqu	128(%rcx), %ymm9
	vmovdqu	160(%rcx), %ymm10
	vmovdqu	192(%rcx), %ymm11
	vmovdqu	224(%rcx), %ymm12
	vpxorq	(%rcx), %ymm29, %ymm29
	addq	$256, %rcx
	addq	$-256, %rdx
	vpunpcklqdq	%ymm12, %ymm13, %ymm19
	vpunpckhqdq	%ymm12, %ymm13, %ymm0
	vpxorq	%ymm19, %ymm0, %ymm0
	vpclmulqdq	$0, %ymm12, %ymm13, %ymm19
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm12, %ymm13, %ymm12
	vpunpcklqdq	%ymm11, %ymm17, %ymm1
	vpunpckhqdq	%ymm11, %ymm17, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	vpclmulqdq	$0, %ymm11, %ymm17, %ymm2
	vpxorq	%ymm19, %ymm2, %ymm2
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpclmulqdq	$17, %ymm11, %ymm17, %ymm1
	vpxor	%ymm1, %ymm12, %ymm1
	vmovdqa64	%ymm28, %ymm11
	vpermt2q	%ymm10, %ymm18, %ymm11
	vmovdqa64	%ymm28, %ymm12
	vpermt2q	%ymm10, %ymm30, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm22, %ymm12
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm11
	vpclmulqdq	$17, %ymm10, %ymm22, %ymm10
	vmovdqa64	%ymm28, %ymm19
	vpermt2q	%ymm9, %ymm31, %ymm19
	vmovdqa64	%ymm28, %ymm14
	vpermt2q	%ymm9, %ymm3, %ymm14
	vpxorq	%ymm19, %ymm14, %ymm14
	vpclmulqdq	$0, %ymm9, %ymm23, %ymm19
	vpternlogq	$150, %ymm12, %ymm2, %ymm19
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm2
	vpternlogq	$150, %ymm11, %ymm0, %ymm2
	vpclmulqdq	$17, %ymm9, %ymm23, %ymm0
	vpternlogq	$150, %ymm10, %ymm1, %ymm0
	vmovdqa64	%ymm20, %ymm1
	vpermt2q	%ymm8, %ymm18, %ymm1
	vmovdqa64	%ymm20, %ymm9
	vpermt2q	%ymm8, %ymm30, %ymm9
	vpxor	%ymm1, %ymm9, %ymm1
	vpclmulqdq	$0, %ymm8, %ymm24, %ymm9
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm8, %ymm24, %ymm8
	vmovdqa64	%ymm20, %ymm10
	vpermt2q	%ymm7, %ymm31, %ymm10
	vmovdqa64	%ymm20, %ymm11
	vpermt2q	%ymm7, %ymm3, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm7, %ymm25, %ymm11
	vpternlogq	$150, %ymm9, %ymm19, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm9
	vpternlogq	$150, %ymm1, %ymm2, %ymm9
	vpclmulqdq	$17, %ymm7, %ymm25, %ymm1
	vpternlogq	$150, %ymm8, %ymm0, %ymm1
	vmovdqa64	%ymm21, %ymm0
	vpermt2q	%ymm6, %ymm18, %ymm0
	vmovdqa64	%ymm21, %ymm2
	vpermt2q	%ymm6, %ymm30, %ymm2
	vpxor	%ymm0, %ymm2, %ymm0
	vpclmulqdq	$0, %ymm6, %ymm26, %ymm2
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm6, %ymm26, %ymm6
	vmovdqa64	%ymm21, %ymm7
	vpermt2q	%ymm29, %ymm31, %ymm7
	vmovdqa64	%ymm21, %ymm8
	vpermt2q	%ymm29, %ymm3, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm29, %ymm27, %ymm8
	vpternlogq	$150, %ymm2, %ymm11, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm2
	vpternlogq	$150, %ymm0, %ymm9, %ymm2
	vpclmulqdq	$17, %ymm29, %ymm27, %ymm0
	vpternlogq	$150, %ymm6, %ymm1, %ymm0
	vpternlogq	$150, %ymm8, %ymm0, %ymm2
	vpslldq	$8, %ymm2, %ymm1
	vpxor	%ymm1, %ymm8, %ymm1
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm6
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm6, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vpshufd	$78, %ymm1, %ymm29
	vpternlogq	$150, %ymm2, %ymm0, %ymm29
	cmpq	$255, %rdx
	ja	.LBB1_16
	vmovups	192(%rsp), %ymm9
	vmovupd	160(%rsp), %ymm10
	vmovupd	128(%rsp), %ymm11
	vmovupd	96(%rsp), %ymm12
	vmovupd	64(%rsp), %ymm30
	vmovupd	32(%rsp), %ymm31
	vmovupd	-32(%rsp), %ymm7
	vmovdqu	-64(%rsp), %ymm8
	vmovdqa	-96(%rsp), %xmm6
	vmovapd	-112(%rsp), %xmm14
	vmovapd	-128(%rsp), %xmm0
	vmovapd	16(%rsp), %xmm1
	vmovdqa	(%rsp), %xmm2
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	jmp	.LBB1_19
.LBB1_18:
	movq	%r10, %rdx
	movq	%r9, %rcx
.LBB1_19:
	vmovd	8(%rsi), %xmm13
	vmovq	(%rsi), %xmm17
	vpternlogq	$150, %xmm1, %xmm0, %xmm14
	vaesenclast	%xmm3, %xmm2, %xmm23
	vpunpcklqdq	%xmm4, %xmm5, %xmm0
	cmpq	$32, %rdx
	vmovdqu64	384(%rsp), %ymm24
	vmovdqu64	352(%rsp), %ymm25
	vmovdqu64	320(%rsp), %ymm26
	vmovdqu64	288(%rsp), %ymm27
	vmovdqu64	256(%rsp), %ymm28
	jb	.LBB1_25
	vinserti32x4	$1, %xmm16, %ymm16, %ymm1
	leaq	-32(%rdx), %rsi
	testb	$32, %sil
	jne	.LBB1_22
	vpxorq	(%rcx), %ymm29, %ymm2
	addq	$32, %rcx
	vpunpcklqdq	%ymm2, %ymm1, %ymm3
	vpunpckhqdq	%ymm2, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm1, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm2, %ymm1, %ymm2
	vpternlogq	$150, %ymm4, %ymm2, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vpshufd	$78, %ymm4, %ymm29
	vpternlogq	$150, %ymm3, %ymm2, %ymm29
	movq	%rsi, %rdx
.LBB1_22:
	cmpq	$32, %rsi
	jb	.LBB1_26
	.p2align	4
.LBB1_23:
	vpxorq	(%rcx), %ymm29, %ymm2
	vpunpcklqdq	%ymm2, %ymm1, %ymm3
	vpunpckhqdq	%ymm2, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm1, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm2, %ymm1, %ymm2
	vpternlogq	$150, %ymm4, %ymm2, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpternlogq	$150, %ymm3, %ymm5, %ymm4
	addq	$-64, %rdx
	vpternlogq	$150, 32(%rcx), %ymm2, %ymm4
	addq	$64, %rcx
	vpunpcklqdq	%ymm4, %ymm1, %ymm2
	vpunpckhqdq	%ymm4, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm4, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm4, %ymm1, %ymm4
	vpternlogq	$150, %ymm3, %ymm4, %ymm2
	vpslldq	$8, %ymm2, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm2, %ymm4, %ymm29
	cmpq	$31, %rdx
	ja	.LBB1_23
.LBB1_25:
	movq	%rdx, %rsi
.LBB1_26:
	movq	456(%rsp), %rdx
	vpunpcklqdq	%xmm13, %xmm17, %xmm1
	vpternlogq	$150, %xmm14, %xmm7, %xmm23
	vpsllq	$3, %xmm0, %xmm0
	testq	%rsi, %rsi
	je	.LBB1_30
	movl	$-1, %edi
	bzhil	%esi, %edi, %edi
	kmovd	%edi, %k1
	vmovdqu8	(%rcx), %ymm2 {%k1} {z}
	vpxorq	%ymm2, %ymm29, %ymm2
	cmpq	$17, %rsi
	jae	.LBB1_29
	vmovdqa64	%xmm6, %xmm16
.LBB1_29:
	vinserti32x4	$1, %xmm16, %ymm16, %ymm3
	vpunpcklqdq	%ymm2, %ymm3, %ymm4
	vpunpckhqdq	%ymm2, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm2, %ymm3, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm3, %ymm2
	vpternlogq	$150, %ymm5, %ymm2, %ymm4
	vpslldq	$8, %ymm4, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm4, %ymm2, %ymm29
.LBB1_30:
	movq	440(%rsp), %rcx
	vextracti32x4	$1, %ymm29, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxorq	%xmm0, %xmm29, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_13(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$108, .LCPI1_18(%rip), %xmm10, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm24, %xmm0, %xmm0
	vaesenc	%xmm25, %xmm0, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm28, %xmm0, %xmm0
	vmovdqu64	224(%rsp), %ymm29
	vaesenc	%xmm29, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm31, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenclast	%xmm23, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rdx)
	vpor	.LCPI1_19(%rip), %xmm0, %xmm14
	cmpq	$256, %r10
	jb	.LBB1_34
	vinserti128	$1, %xmm10, %ymm10, %ymm1
	vinserti128	$1, %xmm9, %ymm9, %ymm15
	vinserti32x4	$1, %xmm11, %ymm11, %ymm16
	vinserti32x4	$1, %xmm12, %ymm12, %ymm18
	vinserti32x4	$1, %xmm24, %ymm24, %ymm19
	vinserti32x4	$1, %xmm25, %ymm25, %ymm20
	vinserti32x4	$1, %xmm26, %ymm26, %ymm21
	vinserti32x4	$1, %xmm27, %ymm27, %ymm22
	vmovdqa64	%ymm23, %ymm0
	vinserti32x4	$1, %xmm28, %ymm28, %ymm23
	vinserti32x4	$1, %xmm29, %ymm29, %ymm24
	vinserti32x4	$1, %xmm30, %ymm30, %ymm25
	vinserti32x4	$1, %xmm31, %ymm31, %ymm26
	vinserti32x4	$1, %xmm7, %ymm7, %ymm27
	vinserti32x4	$1, %xmm8, %ymm8, %ymm28
	vmovdqu	%ymm0, -96(%rsp)
	vinserti32x4	$1, %xmm0, %ymm0, %ymm29
	vmovdqa64	.LCPI1_20(%rip), %ymm31
	vmovdqa	.LCPI1_21(%rip), %ymm0
	vmovdqa	.LCPI1_22(%rip), %ymm13
	vmovdqa64	.LCPI1_23(%rip), %ymm17
	vmovdqa	.LCPI1_24(%rip), %ymm2
	vmovdqa	.LCPI1_25(%rip), %ymm3
	vmovdqa	.LCPI1_26(%rip), %ymm4
	vpmovsxbq	.LCPI1_29(%rip), %xmm5
	.p2align	4
.LBB1_32:
	vpaddd	.LCPI1_0(%rip), %xmm14, %xmm6
	vinserti128	$1, %xmm6, %ymm14, %ymm6
	vinserti128	$1, %xmm14, %ymm14, %ymm7
	vpaddd	%ymm31, %ymm7, %ymm8
	vpaddd	%ymm0, %ymm7, %ymm9
	vpaddd	%ymm7, %ymm13, %ymm10
	vpaddd	%ymm17, %ymm7, %ymm11
	vpaddd	%ymm2, %ymm7, %ymm12
	vpaddd	%ymm3, %ymm7, %ymm30
	vpaddd	%ymm4, %ymm7, %ymm7
	vpxor	%ymm6, %ymm1, %ymm6
	vpxor	%ymm1, %ymm8, %ymm8
	vpxor	%ymm1, %ymm9, %ymm9
	vpxor	%ymm1, %ymm10, %ymm10
	vpxor	%ymm1, %ymm11, %ymm11
	vpxor	%ymm1, %ymm12, %ymm12
	vpxorq	%ymm30, %ymm1, %ymm30
	vpxor	%ymm7, %ymm1, %ymm7
	vaesenc	%ymm15, %ymm6, %ymm6
	vaesenc	%ymm15, %ymm8, %ymm8
	vaesenc	%ymm15, %ymm9, %ymm9
	vaesenc	%ymm15, %ymm10, %ymm10
	vaesenc	%ymm15, %ymm11, %ymm11
	vaesenc	%ymm15, %ymm12, %ymm12
	vaesenc	%ymm15, %ymm30, %ymm30
	vaesenc	%ymm15, %ymm7, %ymm7
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm8, %ymm8
	vaesenc	%ymm16, %ymm9, %ymm9
	vaesenc	%ymm16, %ymm10, %ymm10
	vaesenc	%ymm16, %ymm11, %ymm11
	vaesenc	%ymm16, %ymm12, %ymm12
	vaesenc	%ymm16, %ymm30, %ymm30
	vaesenc	%ymm16, %ymm7, %ymm7
	vaesenc	%ymm18, %ymm6, %ymm6
	vaesenc	%ymm18, %ymm8, %ymm8
	vaesenc	%ymm18, %ymm9, %ymm9
	vaesenc	%ymm18, %ymm10, %ymm10
	vaesenc	%ymm18, %ymm11, %ymm11
	vaesenc	%ymm18, %ymm12, %ymm12
	vaesenc	%ymm18, %ymm30, %ymm30
	vaesenc	%ymm18, %ymm7, %ymm7
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm8, %ymm8
	vaesenc	%ymm19, %ymm9, %ymm9
	vaesenc	%ymm19, %ymm10, %ymm10
	vaesenc	%ymm19, %ymm11, %ymm11
	vaesenc	%ymm19, %ymm12, %ymm12
	vaesenc	%ymm19, %ymm30, %ymm30
	vaesenc	%ymm19, %ymm7, %ymm7
	vaesenc	%ymm20, %ymm6, %ymm6
	vaesenc	%ymm20, %ymm8, %ymm8
	vaesenc	%ymm20, %ymm9, %ymm9
	vaesenc	%ymm20, %ymm10, %ymm10
	vaesenc	%ymm20, %ymm11, %ymm11
	vaesenc	%ymm20, %ymm12, %ymm12
	vaesenc	%ymm20, %ymm30, %ymm30
	vaesenc	%ymm20, %ymm7, %ymm7
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm8, %ymm8
	vaesenc	%ymm21, %ymm9, %ymm9
	vaesenc	%ymm21, %ymm10, %ymm10
	vaesenc	%ymm21, %ymm11, %ymm11
	vaesenc	%ymm21, %ymm12, %ymm12
	vaesenc	%ymm21, %ymm30, %ymm30
	vaesenc	%ymm21, %ymm7, %ymm7
	vaesenc	%ymm22, %ymm6, %ymm6
	vaesenc	%ymm22, %ymm8, %ymm8
	vaesenc	%ymm22, %ymm9, %ymm9
	vaesenc	%ymm22, %ymm10, %ymm10
	vaesenc	%ymm22, %ymm11, %ymm11
	vaesenc	%ymm22, %ymm12, %ymm12
	vaesenc	%ymm22, %ymm30, %ymm30
	vaesenc	%ymm22, %ymm7, %ymm7
	vaesenc	%ymm23, %ymm6, %ymm6
	vaesenc	%ymm23, %ymm8, %ymm8
	vaesenc	%ymm23, %ymm9, %ymm9
	vaesenc	%ymm23, %ymm10, %ymm10
	vaesenc	%ymm23, %ymm11, %ymm11
	vaesenc	%ymm23, %ymm12, %ymm12
	vaesenc	%ymm23, %ymm30, %ymm30
	vaesenc	%ymm23, %ymm7, %ymm7
	vaesenc	%ymm24, %ymm6, %ymm6
	vaesenc	%ymm24, %ymm8, %ymm8
	vaesenc	%ymm24, %ymm9, %ymm9
	vaesenc	%ymm24, %ymm10, %ymm10
	vaesenc	%ymm24, %ymm11, %ymm11
	vaesenc	%ymm24, %ymm12, %ymm12
	vaesenc	%ymm24, %ymm30, %ymm30
	vaesenc	%ymm24, %ymm7, %ymm7
	vaesenc	%ymm25, %ymm6, %ymm6
	vaesenc	%ymm25, %ymm8, %ymm8
	vaesenc	%ymm25, %ymm9, %ymm9
	vaesenc	%ymm25, %ymm10, %ymm10
	vaesenc	%ymm25, %ymm11, %ymm11
	vaesenc	%ymm25, %ymm12, %ymm12
	vaesenc	%ymm25, %ymm30, %ymm30
	vaesenc	%ymm25, %ymm7, %ymm7
	vaesenc	%ymm26, %ymm6, %ymm6
	vaesenc	%ymm26, %ymm8, %ymm8
	vaesenc	%ymm26, %ymm9, %ymm9
	vaesenc	%ymm26, %ymm10, %ymm10
	vaesenc	%ymm26, %ymm11, %ymm11
	vaesenc	%ymm26, %ymm12, %ymm12
	vaesenc	%ymm26, %ymm30, %ymm30
	vaesenc	%ymm26, %ymm7, %ymm7
	vaesenc	%ymm27, %ymm6, %ymm6
	vaesenc	%ymm27, %ymm8, %ymm8
	vaesenc	%ymm27, %ymm9, %ymm9
	vaesenc	%ymm27, %ymm10, %ymm10
	vaesenc	%ymm27, %ymm11, %ymm11
	vaesenc	%ymm27, %ymm12, %ymm12
	vaesenc	%ymm27, %ymm30, %ymm30
	vaesenc	%ymm27, %ymm7, %ymm7
	vaesenc	%ymm28, %ymm6, %ymm6
	vaesenc	%ymm28, %ymm8, %ymm8
	vaesenc	%ymm28, %ymm9, %ymm9
	vaesenc	%ymm28, %ymm10, %ymm10
	vaesenc	%ymm28, %ymm11, %ymm11
	vaesenc	%ymm28, %ymm12, %ymm12
	vaesenc	%ymm28, %ymm30, %ymm30
	vaesenc	%ymm28, %ymm7, %ymm7
	vaesenclast	%ymm29, %ymm6, %ymm6
	vaesenclast	%ymm29, %ymm8, %ymm8
	vaesenclast	%ymm29, %ymm9, %ymm9
	vaesenclast	%ymm29, %ymm10, %ymm10
	vaesenclast	%ymm29, %ymm11, %ymm11
	vaesenclast	%ymm29, %ymm12, %ymm12
	vaesenclast	%ymm29, %ymm30, %ymm30
	vaesenclast	%ymm29, %ymm7, %ymm7
	vpxor	(%r9), %ymm6, %ymm6
	vpxor	32(%r9), %ymm8, %ymm8
	vpxor	64(%r9), %ymm9, %ymm9
	vpxor	96(%r9), %ymm10, %ymm10
	vpxor	128(%r9), %ymm11, %ymm11
	vpxor	160(%r9), %ymm12, %ymm12
	vpxorq	192(%r9), %ymm30, %ymm30
	vpxor	224(%r9), %ymm7, %ymm7
	vmovdqu	%ymm6, (%rcx)
	vmovdqu	%ymm8, 32(%rcx)
	vmovdqu	%ymm9, 64(%rcx)
	vmovdqu	%ymm10, 96(%rcx)
	vmovdqu	%ymm11, 128(%rcx)
	vmovdqu	%ymm12, 160(%rcx)
	vmovdqu64	%ymm30, 192(%rcx)
	vmovdqu	%ymm7, 224(%rcx)
	addq	$256, %r9
	addq	$256, %rcx
	addq	$-256, %r10
	vpaddd	%xmm5, %xmm14, %xmm14
	cmpq	$255, %r10
	ja	.LBB1_32
	vmovups	192(%rsp), %ymm9
	vmovupd	160(%rsp), %ymm10
	vmovupd	128(%rsp), %ymm11
	vmovupd	96(%rsp), %ymm12
	vmovdqu64	384(%rsp), %ymm24
	vmovdqu64	352(%rsp), %ymm25
	vmovdqu64	320(%rsp), %ymm26
	vmovdqu64	288(%rsp), %ymm27
	vmovdqu64	256(%rsp), %ymm28
	vmovdqu64	224(%rsp), %ymm29
	vmovupd	64(%rsp), %ymm30
	vmovupd	32(%rsp), %ymm31
	vmovupd	-32(%rsp), %ymm7
	vmovdqu	-64(%rsp), %ymm8
	vmovdqu64	-96(%rsp), %ymm23
.LBB1_34:
	cmpq	$32, %r10
	jb	.LBB1_37
	vinsertf128	$1, %xmm10, %ymm10, %ymm0
	vinsertf128	$1, %xmm9, %ymm9, %ymm1
	vinsertf128	$1, %xmm11, %ymm11, %ymm2
	vinsertf128	$1, %xmm12, %ymm12, %ymm3
	vinserti32x4	$1, %xmm24, %ymm24, %ymm4
	vinserti32x4	$1, %xmm25, %ymm25, %ymm5
	vinserti32x4	$1, %xmm26, %ymm26, %ymm13
	vinserti32x4	$1, %xmm27, %ymm27, %ymm15
	vinserti32x4	$1, %xmm28, %ymm28, %ymm16
	vinserti32x4	$1, %xmm29, %ymm29, %ymm17
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm18
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm19
	vinsertf32x4	$1, %xmm7, %ymm7, %ymm20
	vinserti32x4	$1, %xmm8, %ymm8, %ymm21
	vinserti32x4	$1, %xmm23, %ymm23, %ymm22
	leaq	-32(%r10), %rsi
	testb	$32, %sil
	jne	.LBB1_41
	leaq	32(%r9), %rdi
	leaq	32(%rcx), %rdx
	vpaddd	.LCPI1_0(%rip), %xmm14, %xmm6
	vinserti128	$1, %xmm6, %ymm14, %ymm6
	vpaddd	.LCPI1_1(%rip), %xmm14, %xmm14
	vxorpd	%ymm6, %ymm0, %ymm6
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm2, %ymm6, %ymm6
	vaesenc	%ymm3, %ymm6, %ymm6
	vaesenc	%ymm4, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm13, %ymm6, %ymm6
	vaesenc	%ymm15, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm18, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm20, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenclast	%ymm22, %ymm6, %ymm6
	vpxor	(%r9), %ymm6, %ymm6
	vmovdqu	%ymm6, (%rcx)
	movq	%rdx, %rcx
	movq	%rsi, %r10
	movq	%rdi, %r9
	cmpq	$32, %rsi
	jae	.LBB1_42
	jmp	.LBB1_45
.LBB1_37:
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	jmp	.LBB1_45
.LBB1_41:
	cmpq	$32, %rsi
	jb	.LBB1_45
.LBB1_42:
	vmovdqu64	%ymm23, -96(%rsp)
	vpmovsxbq	.LCPI1_30(%rip), %xmm6
	vmovdqa64	.LCPI1_20(%rip), %ymm23
	vpmovsxbq	.LCPI1_31(%rip), %xmm7
	.p2align	4
.LBB1_43:
	vpaddd	%xmm6, %xmm14, %xmm8
	vinserti128	$1, %xmm8, %ymm14, %ymm8
	vxorpd	%ymm0, %ymm8, %ymm8
	vaesenc	%ymm1, %ymm8, %ymm8
	vaesenc	%ymm2, %ymm8, %ymm8
	vaesenc	%ymm3, %ymm8, %ymm8
	vaesenc	%ymm4, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm13, %ymm8, %ymm8
	vaesenc	%ymm15, %ymm8, %ymm8
	vaesenc	%ymm16, %ymm8, %ymm8
	vaesenc	%ymm17, %ymm8, %ymm8
	vaesenc	%ymm18, %ymm8, %ymm8
	vaesenc	%ymm19, %ymm8, %ymm8
	vaesenc	%ymm20, %ymm8, %ymm8
	vaesenc	%ymm21, %ymm8, %ymm8
	vaesenclast	%ymm22, %ymm8, %ymm8
	vpxor	(%r9), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rcx)
	vinserti128	$1, %xmm14, %ymm14, %ymm8
	vpaddd	%ymm23, %ymm8, %ymm8
	vxorpd	%ymm0, %ymm8, %ymm8
	vaesenc	%ymm1, %ymm8, %ymm8
	vaesenc	%ymm2, %ymm8, %ymm8
	vaesenc	%ymm3, %ymm8, %ymm8
	vaesenc	%ymm4, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm13, %ymm8, %ymm8
	vaesenc	%ymm15, %ymm8, %ymm8
	vaesenc	%ymm16, %ymm8, %ymm8
	vaesenc	%ymm17, %ymm8, %ymm8
	vaesenc	%ymm18, %ymm8, %ymm8
	vaesenc	%ymm19, %ymm8, %ymm8
	vaesenc	%ymm20, %ymm8, %ymm8
	vaesenc	%ymm21, %ymm8, %ymm8
	vaesenclast	%ymm22, %ymm8, %ymm8
	vpxor	32(%r9), %ymm8, %ymm8
	addq	$64, %r9
	vmovdqu	%ymm8, 32(%rcx)
	addq	$64, %rcx
	addq	$-64, %r10
	vpaddd	%xmm7, %xmm14, %xmm14
	cmpq	$31, %r10
	ja	.LBB1_43
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovupd	-32(%rsp), %ymm7
	vmovdqu	-64(%rsp), %ymm8
	vmovdqu64	-96(%rsp), %ymm23
.LBB1_45:
	testq	%rsi, %rsi
	je	.LBB1_47
	movl	$-1, %ecx
	bzhil	%esi, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdi), %ymm0 {%k1} {z}
	vpaddd	.LCPI1_0(%rip), %xmm14, %xmm1
	vinserti128	$1, %xmm1, %ymm14, %ymm1
	vinsertf128	$1, %xmm10, %ymm10, %ymm2
	vxorpd	%ymm1, %ymm2, %ymm1
	vinsertf128	$1, %xmm9, %ymm9, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm11, %ymm11, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm12, %ymm12, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm24, %ymm24, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm25, %ymm25, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm26, %ymm26, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm27, %ymm27, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm28, %ymm28, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm29, %ymm29, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm7, %ymm7, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti128	$1, %xmm8, %ymm8, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm23, %ymm23, %ymm2
	vaesenclast	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu8	%ymm0, (%rdx) {%k1}
.LBB1_47:
	movzbl	%al, %eax
.LBB1_48:
	addq	$416, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_tigerlake_encrypt
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
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_init
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_init,@function
haberdashery_aes256gcmsiv_tigerlake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB2_2
	vmovupd	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI2_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm2
	vpbroadcastq	.LCPI2_1(%rip), %xmm5
	vaesenclast	%xmm5, %xmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm0, %xmm2
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm5
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm5, %xmm4, %xmm7
	vpshufd	$255, %xmm2, %xmm4
	vpxor	%xmm6, %xmm6, %xmm6
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm1, %xmm4
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm7
	vpslldq	$12, %xmm2, %xmm8
	vpternlogq	$150, %xmm7, %xmm5, %xmm8
	vpshufb	%xmm3, %xmm4, %xmm5
	vpbroadcastq	.LCPI2_2(%rip), %xmm7
	vaesenclast	%xmm7, %xmm5, %xmm5
	vpternlogq	$150, %xmm8, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufd	$255, %xmm5, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm4, %xmm7
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpshufb	%xmm3, %xmm7, %xmm8
	vpbroadcastq	.LCPI2_3(%rip), %xmm9
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm5, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm6, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm7, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vpshufb	%xmm3, %xmm9, %xmm10
	vpbroadcastq	.LCPI2_4(%rip), %xmm11
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpslldq	$12, %xmm9, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpslldq	$12, %xmm10, %xmm14
	vpternlogq	$150, %xmm13, %xmm12, %xmm14
	vpshufb	%xmm3, %xmm11, %xmm12
	vpbroadcastq	.LCPI2_5(%rip), %xmm13
	vaesenclast	%xmm13, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpslldq	$12, %xmm11, %xmm15
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpshufd	$255, %xmm12, %xmm13
	vaesenclast	%xmm6, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpslldq	$12, %xmm12, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufb	%xmm3, %xmm13, %xmm14
	vpbroadcastq	.LCPI2_6(%rip), %xmm15
	vaesenclast	%xmm15, %xmm14, %xmm14
	vpternlogq	$150, %xmm16, %xmm12, %xmm14
	vpslldq	$4, %xmm13, %xmm15
	vpslldq	$8, %xmm13, %xmm16
	vpslldq	$12, %xmm13, %xmm17
	vpternlogq	$150, %xmm16, %xmm15, %xmm17
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm6, %xmm15, %xmm6
	vpternlogq	$150, %xmm17, %xmm13, %xmm6
	vpslldq	$4, %xmm14, %xmm15
	vpslldq	$8, %xmm14, %xmm16
	vpslldq	$12, %xmm14, %xmm17
	vpternlogq	$150, %xmm16, %xmm15, %xmm17
	vpshufb	%xmm3, %xmm6, %xmm3
	vpbroadcastq	.LCPI2_7(%rip), %xmm15
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpternlogq	$150, %xmm17, %xmm14, %xmm3
	vmovdqa	%xmm0, (%rdi)
	vmovdqa	%xmm1, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm4, 48(%rdi)
	vmovdqa	%xmm5, 64(%rdi)
	vmovdqa	%xmm7, 80(%rdi)
	vmovdqa	%xmm8, 96(%rdi)
	vmovdqa	%xmm9, 112(%rdi)
	vmovdqa	%xmm10, 128(%rdi)
	vmovdqa	%xmm11, 144(%rdi)
	vmovdqa	%xmm12, 160(%rdi)
	vmovdqa	%xmm13, 176(%rdi)
	vmovdqa	%xmm14, 192(%rdi)
	vmovdqa	%xmm6, 208(%rdi)
	vmovdqa	%xmm3, 224(%rdi)
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_tigerlake_init, .Lfunc_end2-haberdashery_aes256gcmsiv_tigerlake_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_is_supported,@function
haberdashery_aes256gcmsiv_tigerlake_is_supported:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %r9d
	movl	%edx, %r10d
	notl	%r10d
	notl	%r9d
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r11
	cpuid
	xchgq	%rbx, %r11

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	movl	$7, %eax
	movl	$1, %ecx
	#APP

	movq	%rbx, %rbx
	cpuid
	xchgq	%rbx, %rbx

	#NO_APP
	andl	$1054347779, %r9d
	andl	$125829120, %r10d
	orl	%r9d, %r10d
	jne	.LBB3_3
	notl	%r8d
	notl	%r11d
	andl	$-240451287, %r11d
	andl	$415260490, %r8d
	orl	%r11d, %r8d
	sete	%al
	shrl	$8, %edi
	andl	$1, %edi
	andb	%al, %dil
	cmpb	$1, %dil
	jne	.LBB3_3
	xorl	%ecx, %ecx
	xgetbv
	notl	%eax
	xorl	%esi, %esi
	testb	$-26, %al
	sete	%sil
.LBB3_3:
	movl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.98.0-nightly (c397dae80 2026-07-02)"
	.section	".note.GNU-stack","",@progbits

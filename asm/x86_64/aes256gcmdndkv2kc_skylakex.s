# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
.LCPI0_1:
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
	.byte	224
.LCPI0_2:
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
	.byte	225
.LCPI0_3:
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
	.byte	226
.LCPI0_4:
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
	.byte	227
.LCPI0_5:
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
	.byte	228
.LCPI0_6:
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
.LCPI0_15:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
.LCPI0_17:
	.byte	15
	.byte	128
	.byte	128
	.byte	128
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
.LCPI0_18:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI0_19:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI0_20:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_21:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI0_22:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI0_23:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI0_24:
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
.LCPI0_25:
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_7:
	.quad	4294967297
.LCPI0_14:
	.quad	274877907008
.LCPI0_16:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.long	0x00000002
.LCPI0_9:
	.long	0x0c0f0e0d
.LCPI0_10:
	.long	0x00000004
.LCPI0_11:
	.long	0x00000008
.LCPI0_12:
	.long	0x00000010
.LCPI0_13:
	.long	0x00000020
.LCPI0_26:
	.long	1
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_decrypt,@function
haberdashery_aes256gcmdndkv2kc_skylakex_decrypt:
	.cfi_startproc
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	144(%rsp), %r10
	xorl	%eax, %eax
	cmpq	176(%rsp), %r10
	jne	.LBB0_38
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB0_38
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB0_38
	cmpq	$24, %rdx
	jne	.LBB0_38
	cmpq	$48, 160(%rsp)
	jne	.LBB0_38
	movq	152(%rsp), %rdx
	vmovdqu64	(%rsi), %xmm16
	vmovdqa	(%rdi), %xmm12
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm10
	vmovdqa	48(%rdi), %xmm1
	vpternlogq	$120, .LCPI0_0(%rip), %xmm16, %xmm12
	vpxor	.LCPI0_1(%rip), %xmm12, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm2
	vmovdqa	64(%rdi), %xmm0
	vaesenc	%xmm0, %xmm2, %xmm3
	vmovdqa64	%xmm0, %xmm17
	vmovdqa	80(%rdi), %xmm2
	vaesenc	%xmm2, %xmm3, %xmm4
	vmovdqa	96(%rdi), %xmm3
	vaesenc	%xmm3, %xmm4, %xmm5
	vmovdqa	112(%rdi), %xmm4
	vaesenc	%xmm4, %xmm5, %xmm6
	vmovdqa	128(%rdi), %xmm5
	vaesenc	%xmm5, %xmm6, %xmm7
	vmovdqa	144(%rdi), %xmm6
	vaesenc	%xmm6, %xmm7, %xmm9
	vmovdqa	160(%rdi), %xmm7
	vaesenc	%xmm7, %xmm9, %xmm13
	vmovdqa	176(%rdi), %xmm9
	vaesenc	%xmm9, %xmm13, %xmm13
	vpxor	.LCPI0_2(%rip), %xmm12, %xmm14
	vaesenc	%xmm11, %xmm14, %xmm14
	vpxor	.LCPI0_3(%rip), %xmm12, %xmm15
	vaesenc	%xmm11, %xmm15, %xmm15
	vpxor	.LCPI0_4(%rip), %xmm12, %xmm8
	vaesenc	%xmm11, %xmm8, %xmm8
	vpxor	.LCPI0_5(%rip), %xmm12, %xmm12
	vaesenc	%xmm11, %xmm12, %xmm12
	vmovdqa	192(%rdi), %xmm11
	vaesenc	%xmm11, %xmm13, %xmm0
	vaesenc	%xmm10, %xmm14, %xmm13
	vaesenc	%xmm10, %xmm15, %xmm14
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm12, %xmm10
	vmovdqa	208(%rdi), %xmm12
	vaesenc	%xmm1, %xmm13, %xmm15
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm10, %xmm10
	vmovdqa	224(%rdi), %xmm13
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm0
	vmovdqa64	%xmm0, %xmm18
	vmovdqa64	%xmm17, %xmm1
	vaesenc	%xmm1, %xmm15, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm15
	vaesenc	%xmm1, %xmm14, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm14
	vaesenc	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm8
	vaesenc	%xmm1, %xmm10, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm5
	vpxorq	%xmm18, %xmm15, %xmm0
	vpxorq	%xmm18, %xmm14, %xmm12
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI0_9(%rip), %xmm17
	vpshufb	%xmm17, %xmm12, %xmm2
	vpbroadcastq	.LCPI0_7(%rip), %xmm6
	vaesenclast	%xmm6, %xmm2, %xmm14
	vpternlogq	$150, %xmm4, %xmm0, %xmm14
	vaesenc	%xmm12, %xmm0, %xmm4
	vpslldq	$4, %xmm12, %xmm2
	vpslldq	$8, %xmm12, %xmm6
	vpslldq	$12, %xmm12, %xmm7
	vpternlogq	$150, %xmm6, %xmm2, %xmm7
	vpshufd	$255, %xmm14, %xmm6
	vpxor	%xmm3, %xmm3, %xmm3
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpternlogq	$150, %xmm7, %xmm12, %xmm6
	vbroadcastss	.LCPI0_8(%rip), %xmm7
	vpbroadcastd	.LCPI0_9(%rip), %xmm13
	vmovdqa64	%xmm14, %xmm22
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vpslldq	$4, %xmm14, %xmm9
	vpslldq	$8, %xmm14, %xmm10
	vpslldq	$12, %xmm14, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm13, %xmm6, %xmm1
	vaesenclast	%xmm7, %xmm1, %xmm1
	vpternlogq	$150, %xmm14, %xmm11, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vpslldq	$4, %xmm6, %xmm7
	vpslldq	$8, %xmm6, %xmm9
	vpslldq	$12, %xmm6, %xmm10
	vpternlogq	$150, %xmm7, %xmm9, %xmm10
	vpshufd	$255, %xmm1, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpternlogq	$150, %xmm6, %xmm10, %xmm2
	#NO_APP
	vbroadcastss	.LCPI0_10(%rip), %xmm7
	vmovdqa64	%xmm1, %xmm19
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vpslldq	$4, %xmm1, %xmm9
	vpslldq	$8, %xmm1, %xmm10
	vpslldq	$12, %xmm1, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm13, %xmm2, %xmm15
	vaesenclast	%xmm7, %xmm15, %xmm15
	vpternlogq	$150, %xmm1, %xmm11, %xmm15
	#NO_APP
	vmovdqa64	%xmm2, %xmm23
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vpslldq	$4, %xmm2, %xmm7
	vpslldq	$8, %xmm2, %xmm9
	vpslldq	$12, %xmm2, %xmm10
	vpternlogq	$150, %xmm7, %xmm9, %xmm10
	vpshufd	$255, %xmm15, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm10, %xmm1
	#NO_APP
	vbroadcastss	.LCPI0_11(%rip), %xmm7
	vmovdqa64	%xmm15, %xmm21
	#APP
	vaesenc	%xmm15, %xmm4, %xmm4
	vpslldq	$4, %xmm15, %xmm9
	vpslldq	$8, %xmm15, %xmm10
	vpslldq	$12, %xmm15, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm13, %xmm1, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vpternlogq	$150, %xmm15, %xmm11, %xmm2
	#NO_APP
	vmovdqa	%xmm13, %xmm14
	vmovaps	%xmm1, %xmm20
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vpslldq	$4, %xmm1, %xmm7
	vpslldq	$8, %xmm1, %xmm9
	vpslldq	$12, %xmm1, %xmm10
	vpternlogq	$150, %xmm7, %xmm9, %xmm10
	vpshufd	$255, %xmm2, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm1, %xmm10, %xmm13
	#NO_APP
	vpxor	16(%rdx), %xmm8, %xmm7
	vbroadcastss	.LCPI0_12(%rip), %xmm8
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vpslldq	$4, %xmm2, %xmm9
	vpslldq	$8, %xmm2, %xmm10
	vpslldq	$12, %xmm2, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm14, %xmm13, %xmm1
	vaesenclast	%xmm8, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm11, %xmm1
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm4, %xmm4
	vpslldq	$4, %xmm13, %xmm8
	vpslldq	$8, %xmm13, %xmm9
	vpslldq	$12, %xmm13, %xmm10
	vpternlogq	$150, %xmm8, %xmm9, %xmm10
	vpshufd	$255, %xmm1, %xmm15
	vaesenclast	%xmm3, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm10, %xmm15
	#NO_APP
	vbroadcastss	.LCPI0_13(%rip), %xmm8
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vpslldq	$4, %xmm1, %xmm9
	vpslldq	$8, %xmm1, %xmm10
	vpslldq	$12, %xmm1, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm14, %xmm15, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm11, %xmm3
	#NO_APP
	vpternlogq	$150, 32(%rdx), %xmm18, %xmm5
	vpternlogq	$246, %xmm18, %xmm7, %xmm5
	vptest	%xmm5, %xmm5
	je	.LBB0_6
.LBB0_38:
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_6:
	.cfi_def_cfa_offset 144
	vmovapd	%xmm15, %xmm8
	vmovdqa64	%xmm6, %xmm29
	vmovdqa	%xmm12, %xmm15
	vmovdqa64	%xmm0, %xmm24
	vmovdqa64	%xmm22, %xmm11
	vmovaps	%xmm1, -128(%rsp)
	vmovaps	%xmm13, -96(%rsp)
	vmovdqa64	%xmm2, %xmm22
	vmovaps	%xmm20, 32(%rsp)
	vpslldq	$4, %xmm8, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vunpcklpd	%xmm8, %xmm0, %xmm5
	vinsertps	$55, %xmm8, %xmm0, %xmm6
	vpternlogq	$150, %xmm5, %xmm1, %xmm6
	vmovdqa	%xmm3, %xmm13
	vpshufd	$255, %xmm3, %xmm1
	vaesenclast	%xmm0, %xmm1, %xmm9
	vpternlogq	$150, %xmm6, %xmm8, %xmm9
	vpslldq	$4, %xmm3, %xmm1
	vpunpcklqdq	%xmm3, %xmm0, %xmm5
	vinsertps	$55, %xmm3, %xmm0, %xmm6
	vpternlogq	$150, %xmm5, %xmm1, %xmm6
	vpshufb	%xmm17, %xmm9, %xmm1
	vpbroadcastq	.LCPI0_14(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm10
	vpternlogq	$150, %xmm6, %xmm13, %xmm10
	vmovaps	%xmm8, (%rsp)
	vaesenc	%xmm8, %xmm4, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpshufb	.LCPI0_15(%rip), %xmm1, %xmm1
	vpsrlq	$63, %xmm1, %xmm3
	vpaddq	%xmm1, %xmm1, %xmm1
	vpshufd	$78, %xmm3, %xmm4
	vpblendd	$12, %xmm3, %xmm0, %xmm2
	vpsllq	$63, %xmm2, %xmm3
	vpternlogq	$30, %xmm4, %xmm1, %xmm3
	vpsllq	$62, %xmm2, %xmm1
	vpsllq	$57, %xmm2, %xmm5
	vpternlogq	$150, %xmm1, %xmm3, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm1
	vpbroadcastq	.LCPI0_16(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm3
	vpshufd	$78, %xmm1, %xmm6
	vpternlogq	$150, %xmm2, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm3
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm3
	vpshufd	$78, %xmm1, %xmm26
	vpternlogq	$150, %xmm2, %xmm3, %xmm26
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm3
	vmovdqa64	%xmm5, %xmm20
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpshufd	$78, %xmm1, %xmm31
	vpternlogq	$150, %xmm2, %xmm3, %xmm31
	movzbl	23(%rsi), %eax
	movzbl	16(%rsi), %edi
	shll	$8, %edi
	vpextrb	$15, %xmm16, %r11d
	orl	%edi, %r11d
	movzbl	17(%rsi), %edi
	shll	$16, %edi
	orl	%r11d, %edi
	movzbl	18(%rsi), %r11d
	shll	$24, %r11d
	orl	%edi, %r11d
	vmovd	%r11d, %xmm1
	vpinsrd	$1, 19(%rsi), %xmm1, %xmm1
	vpinsrd	$2, %eax, %xmm1, %xmm1
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm1, %xmm25
	testq	%r8, %r8
	vmovdqa	%xmm0, 96(%rsp)
	vmovdqa64	%xmm31, 64(%rsp)
	vmovdqa	%xmm4, 80(%rsp)
	vmovdqa64	%xmm26, 112(%rsp)
	vmovdqa	%xmm13, -16(%rsp)
	vmovdqa64	%xmm21, -32(%rsp)
	vmovdqa64	%xmm19, -48(%rsp)
	vmovdqa64	%xmm23, -64(%rsp)
	vmovdqa64	%xmm22, -80(%rsp)
	vpxor	%xmm8, %xmm8, %xmm8
	je	.LBB0_24
	cmpq	$96, %r8
	jb	.LBB0_8
	vmovdqa	%xmm10, -112(%rsp)
	vmovdqa	%xmm9, 16(%rsp)
	vmovdqa64	%xmm6, %xmm28
	vmovdqa64	%xmm29, %xmm16
	vmovdqa64	%xmm11, %xmm18
	vmovdqa64	%xmm15, %xmm17
	vmovdqa64	.LCPI0_15(%rip), %xmm29
	movq	%r8, %rax
	vmovdqa	80(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm1
	vmovdqa	64(%rsp), %xmm0
	.p2align	4
.LBB0_21:
	vmovdqu64	(%rcx), %xmm30
	vmovdqu	16(%rcx), %xmm3
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm9
	vmovdqu	64(%rcx), %xmm10
	vmovdqu	80(%rcx), %xmm11
	vpshufb	%xmm29, %xmm9, %xmm9
	vpshufb	%xmm29, %xmm10, %xmm10
	vpshufb	%xmm29, %xmm11, %xmm11
	vmovdqa64	%xmm20, %xmm14
	vpclmulqdq	$0, %xmm11, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm14, %xmm15
	vpclmulqdq	$16, %xmm11, %xmm14, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vmovdqa64	%xmm28, %xmm2
	vpclmulqdq	$0, %xmm10, %xmm2, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm2, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm13
	vpternlogq	$150, %xmm7, %xmm4, %xmm13
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm4
	vpternlogq	$150, %xmm12, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm12
	vpternlogq	$150, %xmm7, %xmm13, %xmm12
	vpshufb	%xmm29, %xmm3, %xmm3
	vpshufb	%xmm29, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm14, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm2, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm9
	vpternlogq	$150, %xmm7, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm10
	vpternlogq	$150, %xmm7, %xmm12, %xmm10
	vpbroadcastq	.LCPI0_16(%rip), %xmm12
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm11
	vpternlogq	$150, %xmm7, %xmm4, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm7
	vpternlogq	$150, %xmm4, %xmm10, %xmm7
	vpshufb	%xmm29, %xmm30, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpternlogq	$150, %xmm4, %xmm9, %xmm3
	vmovdqa64	%xmm26, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm5
	vpternlogq	$150, %xmm4, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm4
	vpslldq	$8, %xmm5, %xmm7
	vpternlogq	$150, %xmm4, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm4
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm8
	vpternlogq	$150, %xmm2, %xmm3, %xmm8
	vpsrldq	$8, %xmm5, %xmm2
	vpshufd	$78, %xmm4, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm2, %xmm3, %xmm8
	cmpq	$95, %rax
	ja	.LBB0_21
	vmovdqa64	%xmm17, %xmm15
	vmovdqa64	%xmm18, %xmm11
	vmovdqa64	%xmm16, %xmm29
	vmovdqa	-96(%rsp), %xmm5
	vmovdqa	-128(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	-112(%rsp), %xmm10
	vmovdqa64	%xmm28, %xmm6
	cmpq	$16, %rax
	jae	.LBB0_11
.LBB0_10:
	movq	%rax, %rsi
	testq	%rsi, %rsi
	jne	.LBB0_23
	jmp	.LBB0_18
.LBB0_24:
	xorl	%r8d, %r8d
	testq	%r10, %r10
	vmovdqa	-96(%rsp), %xmm5
	vmovdqa	-128(%rsp), %xmm7
	jne	.LBB0_25
	jmp	.LBB0_37
.LBB0_8:
	movq	%r8, %rax
	vmovdqa	-96(%rsp), %xmm5
	vmovdqa	-128(%rsp), %xmm7
	cmpq	$16, %rax
	jb	.LBB0_10
.LBB0_11:
	leaq	-16(%rax), %rsi
	testb	$16, %sil
	je	.LBB0_12
	cmpq	$16, %rsi
	jae	.LBB0_14
.LBB0_17:
	testq	%rsi, %rsi
	je	.LBB0_18
.LBB0_23:
	movl	$-1, %eax
	bzhil	%esi, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rcx), %xmm1 {%k1} {z}
	vpshufb	.LCPI0_15(%rip), %xmm1, %xmm1
	shlq	$3, %r8
	vpxor	%xmm1, %xmm8, %xmm1
	vmovdqa64	%xmm20, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm8
	vpternlogq	$150, %xmm3, %xmm2, %xmm8
	testq	%r10, %r10
	jne	.LBB0_25
	jmp	.LBB0_37
.LBB0_12:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI0_15(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vmovdqa64	%xmm20, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vmovdqa	%xmm5, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm5, %xmm8
	vmovdqa	%xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm2, %xmm8
	movq	%rsi, %rax
	cmpq	$16, %rsi
	jb	.LBB0_17
.LBB0_14:
	vmovdqa	%xmm5, %xmm0
	vmovdqa	.LCPI0_15(%rip), %xmm1
	.p2align	4
.LBB0_15:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm1, %xmm2, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vmovdqa64	%xmm20, %xmm8
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm5, %xmm7
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm1, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm2, %xmm5, %xmm8
	vpternlogq	$150, %xmm4, %xmm3, %xmm8
	cmpq	$15, %rax
	ja	.LBB0_15
	movq	%rax, %rsi
	vmovdqa	-128(%rsp), %xmm7
	vmovdqa	%xmm0, %xmm5
	testq	%rsi, %rsi
	jne	.LBB0_23
.LBB0_18:
	shlq	$3, %r8
	testq	%r10, %r10
	je	.LBB0_37
.LBB0_25:
	movq	168(%rsp), %rax
	vpshufb	.LCPI0_17(%rip), %xmm25, %xmm1
	vpaddd	.LCPI0_18(%rip), %xmm1, %xmm17
	cmpq	$96, %r10
	vmovdqa64	%xmm25, 48(%rsp)
	jb	.LBB0_26
	vmovdqa64	.LCPI0_15(%rip), %xmm18
	movq	%r10, %rcx
	vmovdqa64	%xmm24, %xmm16
	vmovdqa64	%xmm29, -112(%rsp)
	vmovdqa64	%xmm9, %xmm22
	vmovdqa64	%xmm10, %xmm23
	vmovdqa	%xmm6, 16(%rsp)
	vmovdqa64	64(%rsp), %xmm24
	vmovdqa64	112(%rsp), %xmm19
	.p2align	4
.LBB0_33:
	vmovdqu64	16(%r9), %xmm26
	vmovdqu64	32(%r9), %xmm27
	vmovdqu64	48(%r9), %xmm28
	vmovdqu64	64(%r9), %xmm29
	vmovdqu64	80(%r9), %xmm30
	vpshufb	%xmm18, %xmm17, %xmm1
	vpaddd	.LCPI0_18(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm2
	vpaddd	.LCPI0_19(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm3
	vpaddd	.LCPI0_20(%rip), %xmm17, %xmm4
	vpshufb	%xmm18, %xmm4, %xmm4
	vpaddd	.LCPI0_21(%rip), %xmm17, %xmm5
	vpshufb	%xmm18, %xmm5, %xmm5
	vpaddd	.LCPI0_22(%rip), %xmm17, %xmm7
	vpshufb	%xmm18, %xmm7, %xmm7
	vmovdqa	%xmm11, %xmm13
	vpshufb	%xmm18, %xmm30, %xmm0
	vpxorq	%xmm1, %xmm16, %xmm9
	vpxorq	%xmm2, %xmm16, %xmm10
	vpxorq	%xmm3, %xmm16, %xmm12
	vpxorq	%xmm4, %xmm16, %xmm11
	vpxorq	%xmm5, %xmm16, %xmm2
	vpxorq	%xmm7, %xmm16, %xmm3
	#APP
	vaesenc	%xmm15, %xmm9, %xmm9
	vaesenc	%xmm15, %xmm10, %xmm10
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	#NO_APP
	vmovdqa64	%xmm15, %xmm31
	vpxor	%xmm15, %xmm15, %xmm15
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa64	%xmm20, %xmm14
	#APP
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm12, %xmm12
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqa	32(%rsp), %xmm6
	vmovdqa64	%xmm13, %xmm25
	vmovdqa	-96(%rsp), %xmm13
	vpshufb	%xmm18, %xmm29, %xmm4
	vmovaps	-112(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovaps	-48(%rsp), %xmm0
	vmovaps	16(%rsp), %xmm14
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm18, %xmm28, %xmm4
	vmovaps	-64(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovaps	-32(%rsp), %xmm0
	vmovaps	80(%rsp), %xmm14
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm18, %xmm27, %xmm4
	vmovdqa64	%xmm6, %xmm21
	#APP
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	-80(%rsp), %xmm0
	vmovaps	96(%rsp), %xmm6
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm18, %xmm26, %xmm4
	#APP
	vaesenc	%xmm13, %xmm9, %xmm9
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm12, %xmm12
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	#NO_APP
	vmovaps	-128(%rsp), %xmm0
	vmovdqa64	%xmm24, %xmm14
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovdqu	(%r9), %xmm4
	vpshufb	%xmm18, %xmm4, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vmovaps	(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovdqa	-16(%rsp), %xmm0
	vmovdqa64	%xmm19, %xmm6
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vpxor	%xmm0, %xmm0, %xmm0
	vpunpcklqdq	%xmm5, %xmm0, %xmm7
	vpunpckhqdq	%xmm0, %xmm5, %xmm5
	vmovdqa64	%xmm22, %xmm0
	#APP
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovdqa64	%xmm23, %xmm0
	#APP
	vaesenclast	%xmm0, %xmm9, %xmm9
	vaesenclast	%xmm0, %xmm10, %xmm10
	vaesenclast	%xmm0, %xmm12, %xmm12
	vaesenclast	%xmm0, %xmm11, %xmm11
	vaesenclast	%xmm0, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm3, %xmm3
	#NO_APP
	vpxor	%xmm4, %xmm9, %xmm4
	vpxorq	%xmm26, %xmm10, %xmm9
	vpxorq	%xmm27, %xmm12, %xmm10
	vpxorq	%xmm28, %xmm11, %xmm11
	vpxorq	%xmm29, %xmm2, %xmm2
	vpxorq	%xmm30, %xmm3, %xmm3
	vpxor	%xmm7, %xmm15, %xmm7
	vmovdqa64	%xmm31, %xmm15
	vpshufd	$78, %xmm7, %xmm8
	vpbroadcastq	.LCPI0_16(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm5, %xmm1, %xmm8
	vmovdqu	%xmm4, (%rax)
	vmovdqu	%xmm9, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqa64	%xmm25, %xmm11
	vmovdqu	%xmm2, 64(%rax)
	vmovdqu	%xmm3, 80(%rax)
	vpshufd	$78, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm2
	vpternlogq	$150, %xmm2, %xmm1, %xmm8
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI0_23(%rip), %xmm17, %xmm17
	cmpq	$95, %rcx
	ja	.LBB0_33
	vmovdqa64	%xmm13, %xmm28
	vmovdqa64	%xmm15, %xmm31
	vmovdqa64	%xmm23, %xmm12
	vmovdqa64	%xmm22, %xmm15
	vmovdqa64	%xmm16, %xmm24
	vmovdqa	-112(%rsp), %xmm6
	vmovdqa64	%xmm21, %xmm0
	jmp	.LBB0_27
.LBB0_26:
	vmovdqa64	%xmm5, %xmm28
	vmovdqa64	%xmm15, %xmm31
	vmovdqa	%xmm10, %xmm12
	vmovdqa	%xmm9, %xmm15
	movq	%r10, %rcx
	vmovdqa	32(%rsp), %xmm0
	vmovdqa64	%xmm29, %xmm6
.LBB0_27:
	vmovdqa64	%xmm24, %xmm18
	vmovdqa64	%xmm11, %xmm30
	cmpq	$16, %rcx
	vmovdqa64	%xmm6, %xmm29
	jb	.LBB0_30
	vmovdqa64	.LCPI0_15(%rip), %xmm23
	vmovd	.LCPI0_26(%rip), %xmm21
	vmovdqa64	-128(%rsp), %xmm24
	vmovdqa64	(%rsp), %xmm22
	vpbroadcastq	.LCPI0_16(%rip), %xmm26
	vmovdqa64	%xmm30, %xmm16
	vmovdqa64	%xmm18, %xmm19
	vmovdqa64	%xmm31, %xmm2
	vmovdqa64	%xmm28, %xmm27
	vmovdqa	-16(%rsp), %xmm11
	vmovdqa	-48(%rsp), %xmm9
	vmovdqa	-80(%rsp), %xmm10
	vmovdqa	-64(%rsp), %xmm13
	vmovdqa	-32(%rsp), %xmm1
	.p2align	4
.LBB0_29:
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm23, %xmm3, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqa64	%xmm20, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm7, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm7, %xmm4
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vmovdqa64	%xmm26, %xmm8
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm8
	vmovdqa64	%xmm29, %xmm6
	vpshufb	%xmm23, %xmm17, %xmm4
	vpxorq	%xmm4, %xmm19, %xmm4
	vaesenc	%xmm2, %xmm4, %xmm4
	vmovdqa64	%xmm16, %xmm14
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa64	%xmm27, %xmm14
	vaesenc	%xmm14, %xmm4, %xmm4
	vmovdqa64	%xmm0, %xmm25
	vmovdqa64	%xmm24, %xmm0
	vaesenc	%xmm0, %xmm4, %xmm4
	vmovdqa64	%xmm25, %xmm0
	vmovdqa64	%xmm22, %xmm14
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenclast	%xmm12, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vmovdqu	%xmm3, (%rax)
	addq	$16, %rax
	addq	$-16, %rcx
	addq	$16, %r9
	vpsrldq	$8, %xmm5, %xmm3
	vpternlogq	$150, %xmm3, %xmm7, %xmm8
	vpaddd	%xmm21, %xmm17, %xmm17
	cmpq	$15, %rcx
	ja	.LBB0_29
.LBB0_30:
	vmovdqa	%xmm15, %xmm9
	testq	%rcx, %rcx
	je	.LBB0_31
	movl	$-1, %esi
	bzhil	%ecx, %esi, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%r9), %xmm1 {%k1} {z}
	vmovdqa	.LCPI0_15(%rip), %xmm2
	vpshufb	%xmm2, %xmm17, %xmm3
	vmovdqa64	%xmm18, %xmm24
	vpxorq	%xmm3, %xmm18, %xmm3
	vmovdqa64	%xmm31, %xmm15
	vaesenc	%xmm15, %xmm3, %xmm3
	vmovdqa64	%xmm30, %xmm11
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	-48(%rsp), %xmm3, %xmm3
	vaesenc	-64(%rsp), %xmm3, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	-80(%rsp), %xmm3, %xmm3
	vmovdqa64	%xmm28, %xmm0
	vaesenc	%xmm0, %xmm3, %xmm3
	vmovdqa	-128(%rsp), %xmm7
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	(%rsp), %xmm3, %xmm3
	vaesenc	-16(%rsp), %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vmovdqa	%xmm12, %xmm10
	vaesenclast	%xmm12, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm3
	vpshufb	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vmovdqa64	%xmm20, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpslldq	$8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpbroadcastq	.LCPI0_16(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpxor	%xmm1, %xmm5, %xmm8
	vmovdqa64	%xmm28, %xmm5
	vpshufd	$78, %xmm4, %xmm1
	vmovdqu8	%xmm3, (%rax) {%k1}
	vpsrldq	$8, %xmm2, %xmm2
	vpternlogq	$150, %xmm2, %xmm1, %xmm8
	jmp	.LBB0_36
.LBB0_31:
	vmovdqa	-128(%rsp), %xmm7
	vmovdqa	%xmm12, %xmm10
	vpbroadcastq	.LCPI0_16(%rip), %xmm12
	vmovdqa64	%xmm30, %xmm11
	vmovdqa64	%xmm18, %xmm24
	vmovdqa64	%xmm31, %xmm15
	vmovdqa64	%xmm28, %xmm5
.LBB0_36:
	vmovdqa64	48(%rsp), %xmm25
.LBB0_37:
	vmovq	%r8, %xmm1
	vmovq	%r10, %xmm2
	vpsllq	$3, %xmm2, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vmovdqa64	%xmm20, %xmm14
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpxorq	%xmm25, %xmm24, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa64	%xmm29, %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	-48(%rsp), %xmm0, %xmm0
	vaesenc	-64(%rsp), %xmm0, %xmm0
	vaesenc	-32(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	-80(%rsp), %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	-16(%rsp), %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vpshufb	.LCPI0_24(%rip), %xmm3, %xmm3
	vpshufb	.LCPI0_15(%rip), %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm0, %xmm0
	vpshufb	.LCPI0_25(%rip), %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm3, %xmm2
	vpternlogq	$150, (%rdx), %xmm0, %xmm2
	vpshufd	$238, %xmm2, %xmm0
	vpor	%xmm0, %xmm2, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_decrypt, .Lfunc_end0-haberdashery_aes256gcmdndkv2kc_skylakex_decrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
.LCPI1_1:
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
	.byte	224
.LCPI1_2:
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
	.byte	225
.LCPI1_3:
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
	.byte	226
.LCPI1_4:
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
	.byte	227
.LCPI1_5:
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
	.byte	228
.LCPI1_6:
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
.LCPI1_15:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
.LCPI1_17:
	.byte	15
	.byte	128
	.byte	128
	.byte	128
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
.LCPI1_18:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_23:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_24:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_25:
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	128
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
.LCPI1_26:
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_7:
	.quad	4294967297
.LCPI1_14:
	.quad	274877907008
.LCPI1_16:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_8:
	.long	0x00000002
.LCPI1_9:
	.long	0x0c0f0e0d
.LCPI1_10:
	.long	0x00000004
.LCPI1_11:
	.long	0x00000008
.LCPI1_12:
	.long	0x00000010
.LCPI1_13:
	.long	0x00000020
.LCPI1_27:
	.long	1
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_encrypt,@function
haberdashery_aes256gcmdndkv2kc_skylakex_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$176, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -16
	movq	192(%rsp), %r10
	xorl	%eax, %eax
	cmpq	208(%rsp), %r10
	jne	.LBB1_39
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB1_39
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB1_39
	cmpq	$24, %rdx
	jne	.LBB1_39
	cmpq	$48, 224(%rsp)
	jne	.LBB1_39
	vmovdqu64	(%rsi), %xmm18
	vmovdqa	(%rdi), %xmm12
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm9
	vmovdqa	48(%rdi), %xmm8
	vpternlogq	$120, .LCPI1_0(%rip), %xmm18, %xmm12
	vpxor	.LCPI1_1(%rip), %xmm12, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm1
	vmovdqa	64(%rdi), %xmm0
	vaesenc	%xmm0, %xmm1, %xmm2
	vmovdqa	80(%rdi), %xmm1
	vaesenc	%xmm1, %xmm2, %xmm3
	vmovdqa	96(%rdi), %xmm2
	vaesenc	%xmm2, %xmm3, %xmm4
	vmovdqa	112(%rdi), %xmm3
	vaesenc	%xmm3, %xmm4, %xmm5
	vmovdqa	128(%rdi), %xmm4
	vaesenc	%xmm4, %xmm5, %xmm6
	vmovdqa	144(%rdi), %xmm5
	vaesenc	%xmm5, %xmm6, %xmm7
	vmovdqa	160(%rdi), %xmm6
	vaesenc	%xmm6, %xmm7, %xmm13
	vmovdqa	176(%rdi), %xmm7
	vaesenc	%xmm7, %xmm13, %xmm13
	vpxor	.LCPI1_2(%rip), %xmm12, %xmm14
	vaesenc	%xmm11, %xmm14, %xmm14
	vpxor	.LCPI1_3(%rip), %xmm12, %xmm15
	vaesenc	%xmm11, %xmm15, %xmm15
	vpxor	.LCPI1_4(%rip), %xmm12, %xmm10
	vaesenc	%xmm11, %xmm10, %xmm10
	vpxor	.LCPI1_5(%rip), %xmm12, %xmm12
	vaesenc	%xmm11, %xmm12, %xmm12
	vmovdqa	192(%rdi), %xmm11
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm12, %xmm12
	vmovdqa	208(%rdi), %xmm9
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm12, %xmm8
	vmovdqa64	%xmm8, %xmm16
	vmovdqa	224(%rdi), %xmm12
	vaesenc	%xmm9, %xmm13, %xmm8
	vaesenclast	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm13
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenclast	%xmm12, %xmm13, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm13
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenclast	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenclast	%xmm12, %xmm10, %xmm10
	vmovdqa64	%xmm16, %xmm15
	vaesenc	%xmm0, %xmm15, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpxor	%xmm8, %xmm14, %xmm4
	vpxor	%xmm8, %xmm13, %xmm6
	vpxorq	%xmm8, %xmm10, %xmm16
	vpxorq	%xmm8, %xmm0, %xmm17
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI1_9(%rip), %xmm19
	vpshufb	%xmm19, %xmm6, %xmm0
	vpbroadcastq	.LCPI1_7(%rip), %xmm3
	vaesenclast	%xmm3, %xmm0, %xmm8
	vpternlogq	$150, %xmm2, %xmm4, %xmm8
	vmovdqa64	%xmm4, %xmm28
	vaesenc	%xmm6, %xmm4, %xmm0
	vpslldq	$4, %xmm6, %xmm2
	vpslldq	$8, %xmm6, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm8, %xmm2
	vpxor	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm2, %xmm1
	vmovaps	%xmm6, -80(%rsp)
	vpternlogq	$150, %xmm4, %xmm6, %xmm1
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	vbroadcastss	.LCPI1_9(%rip), %xmm2
	vmovdqa64	%xmm8, %xmm26
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm1, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm8, %xmm7, %xmm11
	#NO_APP
	vmovdqa64	%xmm1, %xmm27
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vpslldq	$4, %xmm1, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpslldq	$12, %xmm1, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm11, %xmm9
	vaesenclast	%xmm5, %xmm9, %xmm9
	vpternlogq	$150, %xmm1, %xmm6, %xmm9
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovdqa64	%xmm11, %xmm30
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm6
	vpslldq	$12, %xmm11, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm9, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm11, %xmm7, %xmm8
	#NO_APP
	vmovdqa64	%xmm9, %xmm29
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm8, %xmm15
	vaesenclast	%xmm5, %xmm15, %xmm15
	vpternlogq	$150, %xmm9, %xmm6, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_11(%rip), %xmm3
	vmovaps	%xmm8, -32(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm15, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpternlogq	$150, %xmm8, %xmm7, %xmm1
	#NO_APP
	vmovaps	%xmm15, -48(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vpslldq	$4, %xmm15, %xmm3
	vpslldq	$8, %xmm15, %xmm4
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm1, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm15, %xmm6, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_12(%rip), %xmm3
	vmovaps	%xmm1, -16(%rsp)
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm8, %xmm15
	vaesenclast	%xmm3, %xmm15, %xmm15
	vpternlogq	$150, %xmm1, %xmm7, %xmm15
	#NO_APP
	vmovaps	%xmm8, -112(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm15, %xmm14
	vaesenclast	%xmm5, %xmm14, %xmm14
	vpternlogq	$150, %xmm8, %xmm6, %xmm14
	#NO_APP
	vbroadcastss	.LCPI1_13(%rip), %xmm3
	vmovaps	%xmm15, -128(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vpslldq	$4, %xmm15, %xmm4
	vpslldq	$8, %xmm15, %xmm6
	vpslldq	$12, %xmm15, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm14, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm15, %xmm7, %xmm8
	#NO_APP
	vpslldq	$4, %xmm14, %xmm2
	vpunpcklqdq	%xmm14, %xmm5, %xmm3
	vinsertps	$55, %xmm14, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm8, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm13
	vpternlogq	$150, %xmm4, %xmm14, %xmm13
	vpshufb	%xmm19, %xmm13, %xmm1
	vpbroadcastq	.LCPI1_14(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm11
	vpslldq	$4, %xmm8, %xmm1
	vpunpcklqdq	%xmm8, %xmm5, %xmm2
	vinsertps	$55, %xmm8, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm8, %xmm11
	vmovaps	%xmm14, -64(%rsp)
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa	%xmm8, %xmm14
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm0, %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpaddq	%xmm0, %xmm0, %xmm1
	vpsrlq	$63, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpblendd	$12, %xmm0, %xmm5, %xmm0
	vpsllq	$63, %xmm0, %xmm3
	vpternlogq	$30, %xmm2, %xmm1, %xmm3
	vpsllq	$62, %xmm0, %xmm1
	vpsllq	$57, %xmm0, %xmm15
	vpternlogq	$150, %xmm1, %xmm3, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpbroadcastq	.LCPI1_16(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm7
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm7, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm7, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm12
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm12
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm8
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm15, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm8, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	movq	216(%rsp), %rax
	movzbl	16(%rsi), %edx
	movzbl	17(%rsi), %edi
	vpextrb	$15, %xmm18, %r11d
	movzbl	23(%rsi), %ebx
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	shll	$8, %edx
	orl	%r11d, %edx
	shll	$16, %edi
	orl	%edx, %edi
	movzbl	18(%rsi), %edx
	shll	$24, %edx
	orl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrd	$1, 19(%rsi), %xmm0, %xmm0
	vmovdqu64	%xmm16, 16(%rax)
	vmovdqu64	%xmm17, 32(%rax)
	vpinsrd	$2, %ebx, %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm25
	testq	%r8, %r8
	vmovdqa	%xmm11, -96(%rsp)
	je	.LBB1_11
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqa64	%xmm25, (%rsp)
	vmovdqa64	%xmm13, %xmm18
	vmovdqa64	%xmm14, %xmm25
	vmovdqa64	%xmm29, %xmm24
	vmovdqa64	%xmm28, %xmm17
	vmovdqa64	.LCPI1_15(%rip), %xmm29
	movq	%r8, %rdx
	vmovdqa64	%xmm15, %xmm21
	vmovdqa	%xmm7, %xmm15
	vmovdqa	%xmm8, %xmm7
	vmovdqa	%xmm4, %xmm8
	vmovdqa	%xmm3, %xmm0
	.p2align	4
.LBB1_19:
	vmovdqu64	(%rcx), %xmm22
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm6
	vmovdqu	80(%rcx), %xmm11
	vpshufb	%xmm29, %xmm4, %xmm4
	vpshufb	%xmm29, %xmm6, %xmm6
	vpshufb	%xmm29, %xmm11, %xmm11
	vmovdqa64	%xmm12, %xmm28
	vmovdqa64	%xmm21, %xmm1
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm14
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm9
	vpternlogq	$150, %xmm10, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm10
	vpternlogq	$150, %xmm12, %xmm14, %xmm10
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm13
	vpternlogq	$150, %xmm12, %xmm9, %xmm13
	vmovdqa64	%xmm28, %xmm12
	vpshufb	%xmm29, %xmm2, %xmm2
	vpshufb	%xmm29, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpternlogq	$150, %xmm9, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm9
	vpternlogq	$150, %xmm6, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm11
	vpternlogq	$150, %xmm6, %xmm10, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm10
	vpternlogq	$150, %xmm6, %xmm9, %xmm10
	vpbroadcastq	.LCPI1_16(%rip), %xmm9
	vpshufb	%xmm29, %xmm22, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm4
	vpternlogq	$150, %xmm3, %xmm10, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm3
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm5
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	vpsrldq	$8, %xmm4, %xmm1
	vpshufd	$78, %xmm3, %xmm2
	addq	$96, %rcx
	addq	$-96, %rdx
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	cmpq	$95, %rdx
	ja	.LBB1_19
	vmovdqa64	%xmm17, %xmm28
	vmovdqa64	%xmm24, %xmm29
	vmovdqa64	%xmm25, %xmm14
	vmovdqa64	%xmm18, %xmm13
	vmovdqa	-96(%rsp), %xmm11
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm7, %xmm8
	vmovdqa	%xmm15, %xmm7
	vmovdqa64	%xmm21, %xmm15
	vmovdqa	%xmm0, %xmm3
	vmovdqa64	(%rsp), %xmm25
	cmpq	$16, %rdx
	vmovdqa	-16(%rsp), %xmm6
	jae	.LBB1_12
.LBB1_9:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_21
	jmp	.LBB1_11
.LBB1_7:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	vmovdqa	-16(%rsp), %xmm6
	jb	.LBB1_9
.LBB1_12:
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB1_13
	cmpq	$16, %rsi
	jae	.LBB1_15
.LBB1_10:
	testq	%rsi, %rsi
	je	.LBB1_11
.LBB1_21:
	vmovdqa64	%xmm3, %xmm16
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm5
	testq	%r10, %r10
	je	.LBB1_37
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm5
	vmovdqa64	%xmm16, %xmm3
	jmp	.LBB1_23
.LBB1_13:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vmovdqa64	%xmm3, %xmm16
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm5
	vmovdqa64	%xmm16, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB1_10
.LBB1_15:
	vmovdqa64	%xmm3, %xmm17
	vmovdqa64	%xmm7, %xmm16
	vmovdqa	%xmm8, %xmm7
	vmovdqa	%xmm4, %xmm8
	vmovdqa	.LCPI1_15(%rip), %xmm0
	.p2align	4
.LBB1_16:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm4, %xmm5
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm2, %xmm5
	cmpq	$15, %rdx
	ja	.LBB1_16
	movq	%rdx, %rsi
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm7, %xmm8
	vmovdqa64	%xmm16, %xmm7
	vmovdqa64	%xmm17, %xmm3
	testq	%rsi, %rsi
	jne	.LBB1_21
.LBB1_11:
	testq	%r10, %r10
	vmovdqa	-16(%rsp), %xmm6
	je	.LBB1_38
.LBB1_23:
	movq	200(%rsp), %rsi
	vpshufb	.LCPI1_17(%rip), %xmm25, %xmm1
	vpaddd	.LCPI1_18(%rip), %xmm1, %xmm17
	cmpq	$96, %r10
	jb	.LBB1_24
	vmovdqa	%xmm3, 16(%rsp)
	vmovdqa	%xmm4, 32(%rsp)
	vmovdqa	%xmm12, 48(%rsp)
	vmovdqa64	.LCPI1_15(%rip), %xmm18
	vpshufb	%xmm18, %xmm17, %xmm0
	vpaddd	.LCPI1_19(%rip), %xmm1, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm2
	vpaddd	.LCPI1_20(%rip), %xmm1, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm3
	vpaddd	.LCPI1_21(%rip), %xmm1, %xmm4
	vpshufb	%xmm18, %xmm4, %xmm4
	vmovdqa64	%xmm6, %xmm17
	vpaddd	.LCPI1_22(%rip), %xmm1, %xmm6
	vpshufb	%xmm18, %xmm6, %xmm6
	vpaddd	.LCPI1_23(%rip), %xmm1, %xmm9
	vpshufb	%xmm18, %xmm9, %xmm9
	vpxorq	%xmm0, %xmm28, %xmm0
	vpxorq	%xmm2, %xmm28, %xmm2
	vpxorq	%xmm3, %xmm28, %xmm3
	vpxorq	%xmm4, %xmm28, %xmm4
	vmovdqa64	%xmm11, %xmm16
	vpxorq	%xmm6, %xmm28, %xmm11
	vmovdqa64	%xmm28, 64(%rsp)
	vpxorq	%xmm9, %xmm28, %xmm12
	vmovdqa	-80(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm26, %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm27, %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm30, %xmm6
	vmovdqa64	%xmm30, 160(%rsp)
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm29, %xmm6
	vmovdqa64	%xmm29, 144(%rsp)
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-32(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-48(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm17, %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-112(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-128(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-64(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm16, %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm11, %xmm11
	vaesenclast	%xmm6, %xmm12, %xmm12
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm19
	vpxorq	16(%r9), %xmm2, %xmm20
	vpxorq	32(%r9), %xmm3, %xmm28
	vpxorq	48(%r9), %xmm4, %xmm29
	vpxorq	64(%r9), %xmm11, %xmm30
	vpxor	80(%r9), %xmm12, %xmm0
	leaq	96(%r9), %r9
	leaq	96(%rsi), %rdx
	vpaddd	.LCPI1_24(%rip), %xmm1, %xmm17
	vmovdqu64	%xmm19, (%rsi)
	vmovdqu64	%xmm20, 16(%rsi)
	vmovdqu64	%xmm28, 32(%rsi)
	vmovdqu64	%xmm29, 48(%rsi)
	leaq	-96(%r10), %rcx
	vmovdqu64	%xmm30, 64(%rsi)
	vmovdqu	%xmm0, 80(%rsi)
	cmpq	$192, %r10
	jb	.LBB1_31
	vmovdqa64	%xmm25, (%rsp)
	vmovdqa64	64(%rsp), %xmm31
	vmovdqa	%xmm9, 128(%rsp)
	vmovaps	-16(%rsp), %xmm27
	vmovdqa64	-128(%rsp), %xmm24
	vmovdqa	%xmm14, 96(%rsp)
	vmovdqa	%xmm13, 112(%rsp)
	vmovdqa64	-96(%rsp), %xmm22
	vmovdqa64	48(%rsp), %xmm25
	vmovaps	32(%rsp), %xmm23
	vmovdqa64	16(%rsp), %xmm21
	vmovdqa	%xmm15, 80(%rsp)
	.p2align	4
.LBB1_34:
	vpshufb	%xmm18, %xmm17, %xmm1
	vpaddd	.LCPI1_18(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm2
	vpaddd	.LCPI1_19(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm4
	vpaddd	.LCPI1_20(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm9
	vpaddd	.LCPI1_21(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm10
	vpaddd	.LCPI1_22(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm12
	vpshufb	%xmm18, %xmm0, %xmm6
	vpxorq	%xmm1, %xmm31, %xmm3
	vpxorq	%xmm2, %xmm31, %xmm13
	vpxorq	%xmm4, %xmm31, %xmm1
	vpxorq	%xmm9, %xmm31, %xmm11
	vpxorq	%xmm10, %xmm31, %xmm14
	vmovdqa64	%xmm26, %xmm15
	vpxorq	%xmm12, %xmm31, %xmm2
	vmovaps	-80(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vxorps	%xmm0, %xmm0, %xmm0
	vpxor	%xmm12, %xmm12, %xmm12
	vmovaps	80(%rsp), %xmm10
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm14, %xmm14
	vaesenc	%xmm15, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm30, %xmm6
	vmovaps	128(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovaps	160(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm29, %xmm6
	vmovaps	144(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm8, %xmm16
	vmovaps	%xmm23, %xmm15
	vmovaps	-32(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm15, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vmovdqa64	%xmm16, %xmm8
	vpshufb	%xmm18, %xmm28, %xmm6
	vmovaps	-48(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm7, %xmm16
	vmovaps	%xmm27, %xmm7
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vmovdqa64	%xmm16, %xmm7
	vpshufb	%xmm18, %xmm20, %xmm6
	vmovaps	-112(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm24, %xmm15
	vmovdqa64	%xmm21, %xmm10
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm14, %xmm14
	vaesenc	%xmm15, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm19, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovaps	-64(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm2, %xmm2
	#NO_APP
	vmovdqa	96(%rsp), %xmm9
	vmovdqa64	%xmm25, %xmm15
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm15, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vmovaps	112(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm22, %xmm5
	#APP
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm13, %xmm13
	vaesenclast	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm11, %xmm11
	vaesenclast	%xmm5, %xmm14, %xmm14
	vaesenclast	%xmm5, %xmm2, %xmm2
	#NO_APP
	vpxorq	(%r9), %xmm3, %xmm19
	vpxorq	16(%r9), %xmm13, %xmm20
	vpxorq	32(%r9), %xmm1, %xmm28
	vpxorq	48(%r9), %xmm11, %xmm29
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm3, %xmm1
	vpunpckhqdq	%xmm3, %xmm0, %xmm3
	vpxorq	64(%r9), %xmm14, %xmm30
	vpxor	80(%r9), %xmm2, %xmm0
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpbroadcastq	.LCPI1_16(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm3, %xmm12, %xmm5
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm1
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	addq	$96, %r9
	vmovdqu64	%xmm19, (%rdx)
	vmovdqu64	%xmm20, 16(%rdx)
	vmovdqu64	%xmm28, 32(%rdx)
	vmovdqu64	%xmm29, 48(%rdx)
	vmovdqu64	%xmm30, 64(%rdx)
	vmovdqu	%xmm0, 80(%rdx)
	addq	$96, %rdx
	addq	$-96, %rcx
	vpaddd	.LCPI1_23(%rip), %xmm17, %xmm17
	cmpq	$95, %rcx
	ja	.LBB1_34
	vmovdqa	%xmm8, %xmm11
	vmovdqa64	128(%rsp), %xmm27
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm13
	vmovdqa64	(%rsp), %xmm25
	vmovdqa	80(%rsp), %xmm15
	jmp	.LBB1_32
.LBB1_24:
	movq	%r10, %rcx
	jmp	.LBB1_25
.LBB1_31:
	vmovdqa	%xmm8, %xmm11
	vmovdqa64	%xmm9, %xmm27
.LBB1_32:
	vpshufb	%xmm18, %xmm29, %xmm1
	vpshufb	%xmm18, %xmm30, %xmm2
	vpshufb	%xmm18, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm9
	vpternlogq	$150, %xmm6, %xmm4, %xmm9
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm4
	vmovdqa	32(%rsp), %xmm8
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm4
	vpternlogq	$150, %xmm3, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm2
	vpshufb	%xmm18, %xmm20, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpshufb	%xmm18, %xmm28, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm7, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm11, %xmm2
	vpternlogq	$150, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm11, %xmm0
	vmovdqa	16(%rsp), %xmm8
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm4
	vpternlogq	$150, %xmm0, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm6
	vpternlogq	$150, %xmm0, %xmm2, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm2
	vpshufb	%xmm18, %xmm19, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vmovdqa	48(%rsp), %xmm7
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm1
	vpternlogq	$150, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm0
	vpslldq	$8, %xmm1, %xmm5
	vpternlogq	$150, %xmm0, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm0
	vpbroadcastq	.LCPI1_16(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm3
	vpshufd	$78, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm5
	vpternlogq	$150, %xmm0, %xmm2, %xmm5
	vpsrldq	$8, %xmm1, %xmm0
	vpshufd	$78, %xmm3, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	movq	%rdx, %rsi
	vmovdqa64	64(%rsp), %xmm28
	vmovdqa64	160(%rsp), %xmm30
	vmovdqa64	144(%rsp), %xmm29
	vmovdqa	-16(%rsp), %xmm6
.LBB1_25:
	vmovdqa	-112(%rsp), %xmm3
	vmovdqa	-128(%rsp), %xmm4
	vmovdqa64	%xmm15, %xmm24
	vmovdqa64	%xmm26, %xmm19
	vmovdqa64	%xmm13, %xmm18
	vmovdqa64	%xmm14, %xmm16
	cmpq	$16, %rcx
	jb	.LBB1_28
	vmovdqa64	.LCPI1_15(%rip), %xmm31
	vmovd	.LCPI1_27(%rip), %xmm20
	vmovdqa64	-64(%rsp), %xmm22
	vmovdqa64	%xmm16, %xmm21
	vmovdqa64	%xmm18, %xmm11
	vmovdqa	-96(%rsp), %xmm9
	vpbroadcastq	.LCPI1_16(%rip), %xmm12
	vmovdqa	-80(%rsp), %xmm10
	vmovdqa64	%xmm19, %xmm1
	vmovdqa64	%xmm27, %xmm15
	vmovdqa64	%xmm24, %xmm8
	vmovdqa64	%xmm28, %xmm26
	vmovdqa64	%xmm29, %xmm7
	vmovdqa64	%xmm30, %xmm0
	vmovdqa	-32(%rsp), %xmm14
	vmovdqa	-48(%rsp), %xmm13
	.p2align	4
.LBB1_27:
	vpshufb	%xmm31, %xmm17, %xmm2
	vpxorq	%xmm2, %xmm26, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vmovdqa64	%xmm22, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vmovdqa64	%xmm21, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm9, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vpshufb	%xmm31, %xmm2, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm5
	vpxor	%xmm3, %xmm5, %xmm5
	vpshufd	$78, %xmm6, %xmm3
	vmovdqa	-16(%rsp), %xmm6
	addq	$16, %r9
	vmovdqu	%xmm2, (%rsi)
	addq	$16, %rsi
	addq	$-16, %rcx
	vpaddd	%xmm20, %xmm17, %xmm17
	vpsrldq	$8, %xmm4, %xmm2
	vmovdqa	-128(%rsp), %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm5
	vmovdqa	-112(%rsp), %xmm3
	cmpq	$15, %rcx
	ja	.LBB1_27
.LBB1_28:
	testq	%rcx, %rcx
	je	.LBB1_29
	movl	$-1, %edx
	bzhil	%ecx, %edx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%r9), %xmm0 {%k1} {z}
	vmovdqa	.LCPI1_15(%rip), %xmm1
	vpshufb	%xmm1, %xmm17, %xmm2
	vpxorq	%xmm2, %xmm28, %xmm2
	vaesenc	-80(%rsp), %xmm2, %xmm2
	vmovdqa64	%xmm19, %xmm7
	vmovdqa64	%xmm19, %xmm26
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa64	%xmm27, %xmm9
	vaesenc	%xmm9, %xmm2, %xmm2
	vmovdqa64	%xmm30, %xmm7
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa64	%xmm29, %xmm7
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	-32(%rsp), %xmm2, %xmm2
	vaesenc	-48(%rsp), %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	-64(%rsp), %xmm2, %xmm2
	vmovdqa64	%xmm16, %xmm14
	vaesenc	%xmm14, %xmm2, %xmm2
	vmovdqa64	%xmm18, %xmm13
	vaesenc	%xmm13, %xmm2, %xmm2
	vmovdqa	-96(%rsp), %xmm11
	vaesenclast	%xmm11, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovdqu8	%xmm2, %xmm0 {%k1} {z}
	vpshufb	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm3
	vmovdqa64	%xmm24, %xmm15
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu8	%xmm2, (%rsi) {%k1}
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm5
	vpbroadcastq	.LCPI1_16(%rip), %xmm9
.LBB1_37:
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	jmp	.LBB1_38
.LBB1_29:
	vmovdqa64	%xmm16, %xmm14
	vmovdqa64	%xmm18, %xmm13
	vmovdqa	-96(%rsp), %xmm11
	vpbroadcastq	.LCPI1_16(%rip), %xmm9
	vmovdqa64	%xmm19, %xmm26
	vmovdqa64	%xmm24, %xmm15
.LBB1_38:
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	%xmm25, %xmm28, %xmm3
	vaesenc	-80(%rsp), %xmm3, %xmm3
	vmovdqa64	%xmm26, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm27, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm30, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm29, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vaesenc	-48(%rsp), %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	-112(%rsp), %xmm3, %xmm3
	vaesenc	-128(%rsp), %xmm3, %xmm3
	vaesenc	-64(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vpshufb	.LCPI1_26(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_25(%rip), %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm1, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rax)
	movl	$1, %eax
.LBB1_39:
	addq	$176, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndkv2kc_skylakex_encrypt
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
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_init
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_init,@function
haberdashery_aes256gcmdndkv2kc_skylakex_init:
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
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_init, .Lfunc_end2-haberdashery_aes256gcmdndkv2kc_skylakex_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_is_supported,@function
haberdashery_aes256gcmdndkv2kc_skylakex_is_supported:
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
	andl	$920130051, %esi
	andl	$125829120, %edi
	orl	%esi, %edi
	notl	%r8d
	andl	$-779419351, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndkv2kc_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	4294967297
.LCPI0_2:
	.quad	8589934594
.LCPI0_3:
	.quad	17179869188
.LCPI0_4:
	.quad	34359738376
.LCPI0_5:
	.quad	68719476752
.LCPI0_6:
	.quad	137438953504
.LCPI0_7:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmdndk_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_init,@function
haberdashery_aes256gcmdndk_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovups	(%rsi), %ymm0
	vmovupd	(%rsi), %xmm1
	vmovdqu	16(%rsi), %xmm3
	vpslldq	$4, %xmm1, %xmm2
	vpslldq	$8, %xmm1, %xmm4
	vxorpd	%xmm4, %xmm2, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpbroadcastd	.LCPI0_8(%rip), %xmm2
	vpshufb	%xmm2, %xmm3, %xmm6
	vpbroadcastq	.LCPI0_1(%rip), %xmm7
	vaesenclast	%xmm7, %xmm6, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	vpslldq	$4, %xmm3, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vxorpd	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm3, %xmm6
	vpshufd	$255, %xmm1, %xmm7
	vxorpd	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm3
	vpternlogq	$150, %xmm6, %xmm4, %xmm3
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm6, %xmm4, %xmm7
	vpshufb	%xmm2, %xmm3, %xmm4
	vpbroadcastq	.LCPI0_2(%rip), %xmm6
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm1, %xmm4
	vpslldq	$4, %xmm3, %xmm6
	vpslldq	$8, %xmm3, %xmm7
	vpslldq	$12, %xmm3, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm4, %xmm6
	vaesenclast	%xmm5, %xmm6, %xmm6
	vpternlogq	$150, %xmm8, %xmm3, %xmm6
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufb	%xmm2, %xmm6, %xmm7
	vpbroadcastq	.LCPI0_3(%rip), %xmm8
	vaesenclast	%xmm8, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm4, %xmm7
	vpslldq	$4, %xmm6, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpslldq	$12, %xmm6, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpshufd	$255, %xmm7, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm6, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufb	%xmm2, %xmm8, %xmm9
	vpbroadcastq	.LCPI0_4(%rip), %xmm10
	vaesenclast	%xmm10, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm7, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vpshufd	$255, %xmm9, %xmm10
	vaesenclast	%xmm5, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpslldq	$12, %xmm9, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	vpshufb	%xmm2, %xmm10, %xmm11
	vpbroadcastq	.LCPI0_5(%rip), %xmm12
	vaesenclast	%xmm12, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpslldq	$12, %xmm10, %xmm14
	vpternlogq	$150, %xmm13, %xmm12, %xmm14
	vpshufd	$255, %xmm11, %xmm12
	vaesenclast	%xmm5, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpslldq	$12, %xmm11, %xmm15
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpshufb	%xmm2, %xmm12, %xmm13
	vpbroadcastq	.LCPI0_6(%rip), %xmm14
	vaesenclast	%xmm14, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpslldq	$12, %xmm12, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufd	$255, %xmm13, %xmm14
	vaesenclast	%xmm5, %xmm14, %xmm5
	vpternlogq	$150, %xmm16, %xmm12, %xmm5
	vpslldq	$4, %xmm13, %xmm14
	vpslldq	$8, %xmm13, %xmm15
	vpslldq	$12, %xmm13, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufb	%xmm2, %xmm5, %xmm2
	vpbroadcastq	.LCPI0_7(%rip), %xmm14
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpternlogq	$150, %xmm16, %xmm13, %xmm2
	vmovups	%ymm0, (%rdi)
	vmovdqa	%xmm1, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm4, 64(%rdi)
	vmovdqa	%xmm6, 80(%rdi)
	vmovdqa	%xmm7, 96(%rdi)
	vmovdqa	%xmm8, 112(%rdi)
	vmovdqa	%xmm9, 128(%rdi)
	vmovdqa	%xmm10, 144(%rdi)
	vmovdqa	%xmm11, 160(%rdi)
	vmovdqa	%xmm12, 176(%rdi)
	vmovdqa	%xmm13, 192(%rdi)
	vmovdqa	%xmm5, 208(%rdi)
	vmovdqa	%xmm2, 224(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndk_skylakex_init, .Lfunc_end0-haberdashery_aes256gcmdndk_skylakex_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	1
	.zero	4
	.zero	4
	.zero	4
.LCPI1_1:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_2:
	.quad	4
	.quad	0
.LCPI1_3:
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
.LCPI1_12:
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
.LCPI1_14:
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
	.byte	2
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
	.byte	3
.LCPI1_16:
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
	.byte	4
.LCPI1_17:
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
	.byte	5
.LCPI1_18:
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
	.byte	6
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
	.byte	7
.LCPI1_20:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_23:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_24:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_25:
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
	.byte	1
.LCPI1_26:
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
.LCPI1_27:
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
.LCPI1_4:
	.quad	4294967297
.LCPI1_11:
	.quad	274877907008
.LCPI1_13:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_5:
	.long	0x00000002
.LCPI1_6:
	.long	0x0c0f0e0d
.LCPI1_7:
	.long	0x00000004
.LCPI1_8:
	.long	0x00000008
.LCPI1_9:
	.long	0x00000010
.LCPI1_10:
	.long	0x00000020
.LCPI1_28:
	.long	1
	.section	.text.haberdashery_aes256gcmdndk_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_encrypt,@function
haberdashery_aes256gcmdndk_skylakex_encrypt:
	.cfi_startproc
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	192(%rsp), %r10
	xorl	%eax, %eax
	cmpq	208(%rsp), %r10
	jne	.LBB1_43
	movabsq	$68719476719, %r11
	cmpq	%r11, %r10
	ja	.LBB1_43
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB1_43
	cmpq	$24, %rdx
	jne	.LBB1_43
	cmpq	$16, 224(%rsp)
	jne	.LBB1_43
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpbroadcastd	.LCPI1_28(%rip), %xmm3
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpinsrd	$1, 12(%rsi), %xmm3, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vmovdqa	(%rdi), %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa64	.LCPI1_1(%rip), %xmm21
	vpxorq	%xmm21, %xmm0, %xmm2
	vpxorq	%xmm21, %xmm1, %xmm4
	vmovdqa	.LCPI1_2(%rip), %xmm5
	vpxor	%xmm5, %xmm0, %xmm3
	vpxor	%xmm5, %xmm1, %xmm5
	vmovaps	16(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	32(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	48(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovdqa	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm2, %xmm4, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm5, %xmm5
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI1_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm5, %xmm1
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm8
	vpternlogq	$150, %xmm2, %xmm4, %xmm8
	vmovaps	%xmm4, -48(%rsp)
	vaesenc	%xmm5, %xmm4, %xmm1
	vpslldq	$4, %xmm5, %xmm2
	vpslldq	$8, %xmm5, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm8, %xmm2
	vpxor	%xmm6, %xmm6, %xmm6
	vaesenclast	%xmm6, %xmm2, %xmm10
	vmovaps	%xmm5, -112(%rsp)
	vpternlogq	$150, %xmm4, %xmm5, %xmm10
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa64	%xmm8, %xmm25
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm10, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	#NO_APP
	vmovdqa64	%xmm10, %xmm28
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm9, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpternlogq	$150, %xmm10, %xmm5, %xmm11
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovdqa64	%xmm9, %xmm27
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm11, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm9, %xmm7, %xmm8
	#NO_APP
	vmovdqa64	%xmm11, %xmm26
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm4
	vpslldq	$12, %xmm11, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm8, %xmm14
	vaesenclast	%xmm6, %xmm14, %xmm14
	vpternlogq	$150, %xmm11, %xmm5, %xmm14
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm14, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm8, %xmm7, %xmm13
	#NO_APP
	vmovaps	%xmm14, -96(%rsp)
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm3
	vpslldq	$8, %xmm14, %xmm4
	vpslldq	$12, %xmm14, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm13, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm7
	vpternlogq	$150, %xmm14, %xmm5, %xmm7
	#NO_APP
	vmovdqa	%xmm13, %xmm14
	vmovdqa	%xmm7, %xmm13
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm5
	vpslldq	$12, %xmm14, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm13, %xmm12
	vaesenclast	%xmm3, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm7, %xmm12
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm3
	vpslldq	$8, %xmm13, %xmm4
	vpslldq	$12, %xmm13, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm12, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm5, %xmm11
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	#APP
	vaesenc	%xmm12, %xmm1, %xmm1
	vpslldq	$4, %xmm12, %xmm4
	vpslldq	$8, %xmm12, %xmm5
	vpslldq	$12, %xmm12, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm11, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpternlogq	$150, %xmm12, %xmm7, %xmm9
	#NO_APP
	vpslldq	$4, %xmm11, %xmm2
	vpunpcklqdq	%xmm11, %xmm6, %xmm3
	vinsertps	$55, %xmm11, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm9, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm7
	vpternlogq	$150, %xmm4, %xmm11, %xmm7
	vpshufb	%xmm0, %xmm7, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm10
	vpslldq	$4, %xmm9, %xmm0
	vpunpcklqdq	%xmm9, %xmm6, %xmm2
	vinsertps	$55, %xmm9, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpternlogq	$150, %xmm3, %xmm9, %xmm10
	vaesenc	%xmm11, %xmm1, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpaddq	%xmm0, %xmm0, %xmm1
	vpsrlq	$63, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpblendd	$12, %xmm0, %xmm6, %xmm0
	vpsllq	$63, %xmm0, %xmm3
	vpternlogq	$30, %xmm2, %xmm1, %xmm3
	vpsllq	$62, %xmm0, %xmm1
	vpsllq	$57, %xmm0, %xmm15
	vpternlogq	$150, %xmm1, %xmm3, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm4, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm4, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vmovdqa	%xmm3, -16(%rsp)
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vmovdqa	%xmm2, 16(%rsp)
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vmovdqa	%xmm4, (%rsp)
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm0
	vmovdqa	%xmm15, %xmm4
	vmovdqa	%xmm2, %xmm15
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm5, %xmm23
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	leaq	-1(%r8), %rdx
	cmpq	%r11, %rdx
	vmovdqa	%xmm8, -32(%rsp)
	vmovdqa	%xmm7, -80(%rsp)
	vmovdqa	%xmm10, -128(%rsp)
	jae	.LBB1_11
	cmpq	$96, %r8
	jb	.LBB1_12
	vmovaps	%xmm9, %xmm29
	vmovaps	%xmm11, %xmm31
	vmovdqa64	%xmm12, %xmm24
	vmovdqa64	%xmm13, %xmm16
	vmovdqa64	%xmm14, %xmm22
	vmovdqa64	%xmm28, %xmm19
	vmovdqa64	.LCPI1_12(%rip), %xmm28
	movq	%r8, %rdx
	vmovdqa	16(%rsp), %xmm5
	vmovdqa64	%xmm15, %xmm20
	vmovdqa	%xmm4, %xmm15
	vmovdqa	(%rsp), %xmm4
	vmovdqa	-16(%rsp), %xmm0
	vmovdqa64	%xmm1, %xmm30
	.p2align	4, 0x90
.LBB1_8:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm7
	vmovdqu	64(%rcx), %xmm9
	vmovdqu	80(%rcx), %xmm11
	vpshufb	%xmm28, %xmm7, %xmm7
	vpshufb	%xmm28, %xmm9, %xmm9
	vpshufb	%xmm28, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm15, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm15, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm15, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm14
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm10
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm8
	vpternlogq	$150, %xmm10, %xmm13, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm10
	vpternlogq	$150, %xmm12, %xmm14, %xmm10
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm12
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm13
	vpternlogq	$150, %xmm12, %xmm8, %xmm13
	vpshufb	%xmm28, %xmm2, %xmm2
	vpshufb	%xmm28, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm11, %xmm15, %xmm8
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm7
	vpternlogq	$150, %xmm8, %xmm9, %xmm7
	vmovdqa64	%xmm20, %xmm12
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm9
	vpternlogq	$150, %xmm8, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm8
	vmovdqa64	%xmm30, %xmm13
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm11
	vpternlogq	$150, %xmm8, %xmm10, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm10
	vpternlogq	$150, %xmm8, %xmm9, %xmm10
	vpshufb	%xmm28, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpternlogq	$150, %xmm3, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm7
	vpternlogq	$150, %xmm3, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm3
	vpslldq	$8, %xmm7, %xmm6
	vpternlogq	$150, %xmm3, %xmm11, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vmovdqa64	%xmm23, %xmm8
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm3
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm6
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	vpsrldq	$8, %xmm7, %xmm1
	vpshufd	$78, %xmm3, %xmm2
	addq	$96, %rcx
	addq	$-96, %rdx
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	cmpq	$95, %rdx
	ja	.LBB1_8
	vmovdqa64	%xmm19, %xmm28
	vmovdqa	-32(%rsp), %xmm8
	vmovdqa64	%xmm22, %xmm14
	vmovdqa64	%xmm16, %xmm13
	vmovdqa64	%xmm24, %xmm12
	vmovaps	%xmm31, %xmm11
	vmovaps	%xmm29, %xmm9
	vmovdqa	-80(%rsp), %xmm7
	vmovdqa	-128(%rsp), %xmm10
	vmovdqa	%xmm15, %xmm4
	vmovdqa64	%xmm20, %xmm15
	vmovdqa64	%xmm30, %xmm1
	cmpq	$16, %rdx
	jae	.LBB1_13
.LBB1_10:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_16
.LBB1_23:
	testq	%r10, %r10
	je	.LBB1_42
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	orq	$1, %rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_43
	jmp	.LBB1_25
.LBB1_11:
	testq	%r10, %r10
	jne	.LBB1_25
	jmp	.LBB1_42
.LBB1_12:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_13:
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	jne	.LBB1_14
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vmovdqa64	%xmm1, %xmm16
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vmovdqa64	%xmm23, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
	vmovdqa64	%xmm16, %xmm1
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB1_15
.LBB1_20:
	vmovdqa64	%xmm1, %xmm16
	vmovdqa	.LCPI1_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpsrldq	$8, %xmm6, %xmm6
	vmovdqa64	%xmm23, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm3, %xmm6
	vpxor	%xmm6, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm6, %xmm6
	vpternlogq	$150, %xmm3, %xmm2, %xmm6
	cmpq	$15, %rdx
	ja	.LBB1_21
	movq	%rdx, %rsi
	vmovdqa	-80(%rsp), %xmm7
	vmovdqa64	%xmm16, %xmm1
	testq	%rsi, %rsi
	jne	.LBB1_16
	jmp	.LBB1_23
.LBB1_14:
	cmpq	$16, %rsi
	jae	.LBB1_20
.LBB1_15:
	testq	%rsi, %rsi
	je	.LBB1_23
.LBB1_16:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	testq	%r10, %r10
	je	.LBB1_39
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	orq	$1, %rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_43
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vmovdqa	%xmm1, %xmm10
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vmovdqa64	%xmm23, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
	vmovdqa	%xmm10, %xmm1
.LBB1_25:
	movq	200(%rsp), %rdx
	cmpq	$96, %r10
	vmovdqa64	%xmm23, %xmm0
	vmovdqa64	%xmm23, -64(%rsp)
	jb	.LBB1_30
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqa	%xmm15, 48(%rsp)
	vmovdqa64	-48(%rsp), %xmm19
	vpxorq	.LCPI1_14(%rip), %xmm19, %xmm0
	vpxorq	.LCPI1_15(%rip), %xmm19, %xmm1
	vpxorq	.LCPI1_16(%rip), %xmm19, %xmm2
	vpxorq	.LCPI1_17(%rip), %xmm19, %xmm3
	vmovdqa64	%xmm7, %xmm16
	vpxorq	.LCPI1_18(%rip), %xmm19, %xmm7
	vmovdqa64	%xmm8, %xmm17
	vmovdqa64	%xmm26, %xmm8
	vmovdqa64	%xmm25, %xmm5
	vmovaps	%xmm11, %xmm15
	vpxorq	.LCPI1_19(%rip), %xmm19, %xmm11
	vmovaps	-112(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm28, %xmm10
	vmovdqa64	%xmm28, 160(%rsp)
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm27, %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm26, 144(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm17, %xmm8
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovaps	-96(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm11, %xmm11
	#NO_APP
	vmovaps	%xmm15, 128(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm16, %xmm8
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovaps	-128(%rsp), %xmm8
	#APP
	vaesenclast	%xmm8, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm1, %xmm1
	vaesenclast	%xmm8, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm7, %xmm7
	vaesenclast	%xmm8, %xmm11, %xmm11
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm16
	vpxorq	16(%r9), %xmm1, %xmm17
	vpxorq	32(%r9), %xmm2, %xmm26
	vpxorq	48(%r9), %xmm3, %xmm27
	vpxorq	64(%r9), %xmm7, %xmm28
	vpxor	80(%r9), %xmm11, %xmm1
	addq	$96, %r9
	leaq	96(%rdx), %rcx
	vmovdqu64	%xmm16, (%rdx)
	vmovdqu64	%xmm17, 16(%rdx)
	vmovdqu64	%xmm26, 32(%rdx)
	vmovdqu64	%xmm27, 48(%rdx)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm28, 64(%rdx)
	vmovdqu	%xmm1, 80(%rdx)
	cmpq	$96, %rax
	jb	.LBB1_32
	vmovdqa64	.LCPI1_20(%rip), %xmm21
	vmovdqa64	.LCPI1_12(%rip), %xmm18
	vmovdqa64	%xmm19, %xmm29
	vmovdqa	%xmm5, 112(%rsp)
	vmovdqa	%xmm14, 64(%rsp)
	vmovdqa	%xmm13, 80(%rsp)
	vmovdqa	%xmm12, 96(%rsp)
	vmovdqa64	%xmm10, %xmm25
	vmovdqa64	(%rsp), %xmm22
	vmovdqa64	-16(%rsp), %xmm30
	vmovdqa64	48(%rsp), %xmm20
	vmovdqa64	32(%rsp), %xmm24
	.p2align	4, 0x90
.LBB1_28:
	vpshufb	%xmm18, %xmm21, %xmm0
	vpaddd	.LCPI1_21(%rip), %xmm21, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm3
	vpaddd	.LCPI1_1(%rip), %xmm21, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm7
	vpaddd	.LCPI1_22(%rip), %xmm21, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm8
	vpaddd	.LCPI1_2(%rip), %xmm21, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm10
	vpaddd	.LCPI1_23(%rip), %xmm21, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm14
	vmovaps	%xmm9, %xmm19
	vpshufb	%xmm18, %xmm1, %xmm9
	vpxorq	%xmm0, %xmm29, %xmm2
	vpxorq	%xmm3, %xmm29, %xmm3
	vpxorq	%xmm7, %xmm29, %xmm13
	vpxorq	%xmm8, %xmm29, %xmm11
	vpxorq	%xmm10, %xmm29, %xmm12
	vmovdqa64	%xmm25, %xmm5
	vpxorq	%xmm14, %xmm29, %xmm1
	vmovaps	-112(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm1, %xmm1
	#NO_APP
	vxorps	%xmm0, %xmm0, %xmm0
	vpxor	%xmm14, %xmm14, %xmm14
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	112(%rsp), %xmm15
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm18, %xmm28, %xmm8
	vmovaps	160(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm1, %xmm1
	#NO_APP
	vmovdqa64	%xmm22, %xmm15
	#APP
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm15, %xmm8, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm15, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm18, %xmm27, %xmm8
	vmovaps	144(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm1, %xmm1
	#NO_APP
	vmovdqa64	%xmm30, %xmm5
	vmovaps	-32(%rsp), %xmm15
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm23, %xmm10
	vpshufb	%xmm18, %xmm26, %xmm8
	vmovaps	-96(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm1, %xmm1
	#NO_APP
	vmovaps	64(%rsp), %xmm15
	vmovdqa64	%xmm4, %xmm26
	vmovdqa64	%xmm20, %xmm4
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm26, %xmm4
	vpshufb	%xmm18, %xmm17, %xmm8
	vmovaps	80(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm1, %xmm1
	#NO_APP
	vmovaps	96(%rsp), %xmm15
	vmovdqa64	%xmm24, %xmm5
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovaps	%xmm19, %xmm9
	vpshufb	%xmm18, %xmm16, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vmovaps	128(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm1, %xmm1
	#NO_APP
	vmovaps	16(%rsp), %xmm5
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm6, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	#NO_APP
	vmovdqa	-80(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm1, %xmm1
	#NO_APP
	vmovaps	-128(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm13, %xmm13
	vaesenclast	%xmm6, %xmm11, %xmm11
	vaesenclast	%xmm6, %xmm12, %xmm12
	vaesenclast	%xmm6, %xmm1, %xmm1
	#NO_APP
	vpxorq	(%r9), %xmm2, %xmm16
	vpxorq	16(%r9), %xmm3, %xmm17
	vpxorq	32(%r9), %xmm13, %xmm26
	vpxorq	48(%r9), %xmm11, %xmm27
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm14, %xmm3, %xmm2
	vpunpckhqdq	%xmm3, %xmm14, %xmm3
	vpxorq	64(%r9), %xmm12, %xmm28
	vpxor	80(%r9), %xmm1, %xmm1
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm3, %xmm7, %xmm6
	vpshufd	$78, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm2, %xmm6
	addq	$96, %r9
	vmovdqu64	%xmm16, (%rcx)
	vmovdqu64	%xmm17, 16(%rcx)
	vmovdqu64	%xmm26, 32(%rcx)
	vmovdqu64	%xmm27, 48(%rcx)
	vmovdqu64	%xmm28, 64(%rcx)
	vmovdqu	%xmm1, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_24(%rip), %xmm21, %xmm21
	cmpq	$95, %rax
	ja	.LBB1_28
	vmovdqa64	%xmm25, %xmm31
	vmovdqa64	112(%rsp), %xmm25
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	96(%rsp), %xmm12
	jmp	.LBB1_33
.LBB1_30:
	movq	%r10, %rax
	vmovdqa64	%xmm27, %xmm5
	cmpq	$16, %rax
	jae	.LBB1_34
.LBB1_31:
	movq	%rdx, %rcx
	movq	%r9, %rsi
	vmovdqa64	%xmm25, %xmm3
	jmp	.LBB1_36
.LBB1_32:
	vmovdqa64	%xmm9, %xmm19
	vmovdqa64	%xmm10, %xmm31
	vmovdqa64	.LCPI1_20(%rip), %xmm21
	vmovdqa64	%xmm5, %xmm25
.LBB1_33:
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm27, %xmm2
	vpshufb	%xmm0, %xmm28, %xmm3
	vpshufb	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm7
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm8
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vmovdqa	%xmm4, %xmm5
	vmovdqa	(%rsp), %xmm4
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm8
	vmovdqa	-16(%rsp), %xmm15
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm8
	vpternlogq	$150, %xmm7, %xmm10, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vmovdqa	%xmm5, %xmm4
	vpshufb	%xmm0, %xmm17, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpshufb	%xmm0, %xmm26, %xmm10
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpternlogq	$150, %xmm1, %xmm3, %xmm2
	vmovdqa	48(%rsp), %xmm5
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm3
	vpternlogq	$150, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm1
	vmovdqa	32(%rsp), %xmm15
	vpclmulqdq	$0, %xmm7, %xmm15, %xmm8
	vpternlogq	$150, %xmm1, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm15, %xmm9
	vpternlogq	$150, %xmm1, %xmm3, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm15, %xmm3
	vpshufb	%xmm0, %xmm16, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vmovdqa	16(%rsp), %xmm5
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm9, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpslldq	$8, %xmm2, %xmm6
	vpternlogq	$150, %xmm1, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vmovdqa64	%xmm23, %xmm11
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm1
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm6
	vpternlogq	$150, %xmm0, %xmm3, %xmm6
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	movq	%rcx, %rdx
	vmovdqa64	160(%rsp), %xmm28
	vmovdqa64	%xmm31, %xmm5
	vmovdqa64	144(%rsp), %xmm26
	vmovdqa	-32(%rsp), %xmm8
	vmovaps	128(%rsp), %xmm11
	vmovdqa64	%xmm19, %xmm9
	vmovdqa	-80(%rsp), %xmm7
	cmpq	$16, %rax
	jb	.LBB1_31
.LBB1_34:
	vmovdqa64	.LCPI1_12(%rip), %xmm17
	vmovdqa64	.LCPI1_21(%rip), %xmm16
	vmovdqa64	-96(%rsp), %xmm20
	vmovdqa64	-128(%rsp), %xmm22
	vmovdqa	-64(%rsp), %xmm0
	vmovdqa64	-48(%rsp), %xmm18
	vmovdqa	-112(%rsp), %xmm10
	vmovdqa64	%xmm25, %xmm3
	vmovdqa64	%xmm28, %xmm15
	vmovdqa64	%xmm26, %xmm1
	.p2align	4, 0x90
.LBB1_35:
	vpshufb	%xmm17, %xmm21, %xmm2
	vpxorq	%xmm2, %xmm18, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vmovdqa64	%xmm20, %xmm8
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa64	%xmm22, %xmm7
	vaesenclast	%xmm7, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqa64	%xmm3, %xmm19
	vpshufb	%xmm17, %xmm2, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm8
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	vpshufd	$78, %xmm8, %xmm3
	vmovdqa	-32(%rsp), %xmm8
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %rcx
	addq	$-16, %rax
	vpaddd	%xmm16, %xmm21, %xmm21
	vmovdqu	%xmm2, (%rdx)
	vpsrldq	$8, %xmm7, %xmm2
	vmovdqa	-80(%rsp), %xmm7
	vpternlogq	$150, %xmm2, %xmm3, %xmm6
	vmovdqa64	%xmm19, %xmm3
	movq	%rcx, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rax
	ja	.LBB1_35
.LBB1_36:
	vmovdqa64	%xmm5, %xmm27
	testq	%rax, %rax
	je	.LBB1_40
	movl	$-1, %edx
	bzhil	%eax, %edx, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rsi), %xmm0 {%k1} {z}

	#NO_APP
	vpshufb	.LCPI1_12(%rip), %xmm21, %xmm1
	vpxor	-48(%rsp), %xmm1, %xmm1
	vaesenc	-112(%rsp), %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vmovdqa64	%xmm28, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm27, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm26, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	-96(%rsp), %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vmovdqa	-128(%rsp), %xmm10
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	#APP

	vmovdqu8	%xmm0, (%rcx) {%k1}

	#NO_APP
	testq	%r10, %r10
	je	.LBB1_41
	kmovd	%eax, %k1
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vmovdqa64	-64(%rsp), %xmm23
.LBB1_39:
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vmovdqa64	%xmm23, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
	jmp	.LBB1_42
.LBB1_40:
	vmovdqa	-128(%rsp), %xmm10
.LBB1_41:
	vmovdqa64	-64(%rsp), %xmm23
.LBB1_42:
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vmovdqa64	%xmm23, %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	-48(%rsp), %xmm3
	vpxor	.LCPI1_25(%rip), %xmm3, %xmm3
	vaesenc	-112(%rsp), %xmm3, %xmm3
	vmovdqa64	%xmm25, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm28, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm27, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm26, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	-96(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm10, %xmm3, %xmm3
	vpshufb	.LCPI1_27(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_26(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	movq	216(%rsp), %rax
	vmovdqu	%xmm2, (%rax)
	movl	$1, %eax
.LBB1_43:
	addq	$184, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndk_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_skylakex_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.long	1
	.zero	4
	.zero	4
	.zero	4
.LCPI2_1:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_2:
	.quad	4
	.quad	0
.LCPI2_3:
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
.LCPI2_12:
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
.LCPI2_14:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_15:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_16:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_17:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_18:
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
	.byte	1
.LCPI2_19:
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
.LCPI2_20:
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
.LCPI2_4:
	.quad	4294967297
.LCPI2_11:
	.quad	274877907008
.LCPI2_13:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_5:
	.long	0x00000002
.LCPI2_6:
	.long	0x0c0f0e0d
.LCPI2_7:
	.long	0x00000004
.LCPI2_8:
	.long	0x00000008
.LCPI2_9:
	.long	0x00000010
.LCPI2_10:
	.long	0x00000020
.LCPI2_21:
	.long	1
	.section	.text.haberdashery_aes256gcmdndk_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_decrypt,@function
haberdashery_aes256gcmdndk_skylakex_decrypt:
	.cfi_startproc
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	160(%rsp), %r10
	xorl	%eax, %eax
	cmpq	192(%rsp), %r10
	jne	.LBB2_44
	movabsq	$68719476719, %r11
	cmpq	%r11, %r10
	ja	.LBB2_44
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB2_44
	cmpq	$24, %rdx
	jne	.LBB2_44
	cmpq	$16, 176(%rsp)
	jne	.LBB2_44
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI2_21(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vmovdqa	(%rdi), %xmm3
	vpunpcklqdq	%xmm1, %xmm2, %xmm2
	vpxor	%xmm0, %xmm3, %xmm1
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa64	.LCPI2_1(%rip), %xmm20
	vpxorq	%xmm20, %xmm1, %xmm3
	vpxorq	%xmm20, %xmm2, %xmm5
	vmovdqa	.LCPI2_2(%rip), %xmm6
	vpxor	%xmm6, %xmm1, %xmm4
	vmovaps	16(%rdi), %xmm7
	vpxor	%xmm6, %xmm2, %xmm6
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	64(%rdi), %xmm7
	vmovaps	80(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	96(%rdi), %xmm7
	vmovaps	112(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	128(%rdi), %xmm7
	vmovaps	144(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	160(%rdi), %xmm7
	vmovaps	176(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	192(%rdi), %xmm7
	vmovaps	208(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	224(%rdi), %xmm7
	#APP
	vaesenclast	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm5, %xmm5
	vaesenclast	%xmm7, %xmm4, %xmm4
	vaesenclast	%xmm7, %xmm6, %xmm6
	#NO_APP
	vpxor	%xmm3, %xmm5, %xmm15
	vpternlogq	$150, %xmm1, %xmm2, %xmm15
	vpxor	%xmm4, %xmm6, %xmm7
	vpternlogq	$150, %xmm1, %xmm2, %xmm7
	vpslldq	$4, %xmm15, %xmm1
	vpslldq	$8, %xmm15, %xmm2
	vpslldq	$12, %xmm15, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpbroadcastd	.LCPI2_6(%rip), %xmm1
	vpshufb	%xmm1, %xmm7, %xmm2
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vaesenclast	%xmm4, %xmm2, %xmm10
	vpternlogq	$150, %xmm3, %xmm15, %xmm10
	vaesenc	%xmm7, %xmm15, %xmm2
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm10, %xmm4
	vpxor	%xmm3, %xmm3, %xmm3
	vaesenclast	%xmm3, %xmm4, %xmm9
	vbroadcastss	.LCPI2_5(%rip), %xmm6
	vmovdqa64	%xmm7, %xmm17
	vpternlogq	$150, %xmm5, %xmm7, %xmm9
	vbroadcastss	.LCPI2_6(%rip), %xmm4
	vmovdqa64	%xmm10, %xmm18
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vpslldq	$4, %xmm10, %xmm5
	vpslldq	$8, %xmm10, %xmm7
	vpslldq	$12, %xmm10, %xmm8
	vpternlogq	$150, %xmm5, %xmm7, %xmm8
	vpshufb	%xmm4, %xmm9, %xmm0
	vaesenclast	%xmm6, %xmm0, %xmm0
	vpternlogq	$150, %xmm10, %xmm8, %xmm0
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm5
	vmovdqa64	%xmm9, %xmm30
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vpslldq	$4, %xmm9, %xmm6
	vpslldq	$8, %xmm9, %xmm7
	vpslldq	$12, %xmm9, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	vpshufd	$255, %xmm0, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	#NO_APP
	vmovdqa64	%xmm0, %xmm19
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm7
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	vpshufb	%xmm4, %xmm10, %xmm9
	vaesenclast	%xmm5, %xmm9, %xmm9
	vpternlogq	$150, %xmm0, %xmm8, %xmm9
	#NO_APP
	vmovaps	%xmm9, -32(%rsp)
	vmovdqa64	%xmm10, %xmm28
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vpslldq	$4, %xmm10, %xmm5
	vpslldq	$8, %xmm10, %xmm6
	vpslldq	$12, %xmm10, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufd	$255, %xmm9, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpternlogq	$150, %xmm10, %xmm7, %xmm0
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm5
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vpslldq	$4, %xmm9, %xmm6
	vpslldq	$8, %xmm9, %xmm7
	vpslldq	$12, %xmm9, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	vpshufb	%xmm4, %xmm0, %xmm14
	vaesenclast	%xmm5, %xmm14, %xmm14
	vpternlogq	$150, %xmm9, %xmm8, %xmm14
	#NO_APP
	vmovaps	%xmm0, %xmm27
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vpslldq	$4, %xmm0, %xmm5
	vpslldq	$8, %xmm0, %xmm6
	vpslldq	$12, %xmm0, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufd	$255, %xmm14, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpternlogq	$150, %xmm0, %xmm7, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_9(%rip), %xmm5
	#APP
	vaesenc	%xmm14, %xmm2, %xmm2
	vpslldq	$4, %xmm14, %xmm6
	vpslldq	$8, %xmm14, %xmm7
	vpslldq	$12, %xmm14, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	vpshufb	%xmm4, %xmm9, %xmm12
	vaesenclast	%xmm5, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm8, %xmm12
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm5
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vpslldq	$4, %xmm9, %xmm6
	vpslldq	$8, %xmm9, %xmm7
	vpslldq	$12, %xmm9, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	vpshufd	$255, %xmm12, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm9, %xmm8, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vpslldq	$4, %xmm12, %xmm6
	vpslldq	$8, %xmm12, %xmm7
	vpslldq	$12, %xmm12, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	vpshufb	%xmm4, %xmm13, %xmm11
	vaesenclast	%xmm5, %xmm11, %xmm11
	vpternlogq	$150, %xmm12, %xmm8, %xmm11
	#NO_APP
	vmovapd	%xmm13, %xmm7
	vmovdqa	%xmm11, %xmm13
	vpslldq	$4, %xmm7, %xmm4
	vpunpcklqdq	%xmm7, %xmm3, %xmm5
	vinsertps	$55, %xmm7, %xmm0, %xmm6
	vpternlogq	$150, %xmm5, %xmm4, %xmm6
	vpshufd	$255, %xmm11, %xmm4
	vaesenclast	%xmm3, %xmm4, %xmm8
	vpternlogq	$150, %xmm6, %xmm7, %xmm8
	vpshufb	%xmm1, %xmm8, %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm4
	vaesenclast	%xmm4, %xmm1, %xmm11
	vpslldq	$4, %xmm13, %xmm1
	vpunpcklqdq	%xmm13, %xmm3, %xmm4
	vinsertps	$55, %xmm13, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm1, %xmm5
	vpternlogq	$150, %xmm5, %xmm13, %xmm11
	vaesenc	%xmm7, %xmm2, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vmovdqa	%xmm8, -16(%rsp)
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpshufb	.LCPI2_12(%rip), %xmm1, %xmm1
	vpaddq	%xmm1, %xmm1, %xmm2
	vpsrlq	$63, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpblendd	$12, %xmm1, %xmm3, %xmm1
	vpsllq	$63, %xmm1, %xmm5
	vpternlogq	$30, %xmm4, %xmm2, %xmm5
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm10
	vpternlogq	$150, %xmm2, %xmm5, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm1
	vpbroadcastq	.LCPI2_13(%rip), %xmm5
	vmovdqa	%xmm5, -128(%rsp)
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm6
	vpternlogq	$150, %xmm1, %xmm4, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm4
	vmovdqa	%xmm4, 32(%rsp)
	vpclmulqdq	$0, %xmm0, %xmm0, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm8
	vpclmulqdq	$17, %xmm0, %xmm0, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm8
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vmovdqa	%xmm8, %xmm5
	vmovdqa64	%xmm10, %xmm25
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm4, %xmm2
	testq	%r8, %r8
	vmovdqa	%xmm0, 128(%rsp)
	vmovdqa	%xmm6, 48(%rsp)
	vmovdqa	%xmm5, 16(%rsp)
	vmovdqa	%xmm2, (%rsp)
	je	.LBB2_6
	vpxor	%xmm10, %xmm10, %xmm10
	cmpq	$96, %r8
	jb	.LBB2_8
	vmovdqa	%xmm11, -112(%rsp)
	vmovaps	%xmm13, -96(%rsp)
	vmovaps	%xmm7, -64(%rsp)
	vmovdqa	%xmm12, -80(%rsp)
	vmovdqa	%xmm9, -48(%rsp)
	vmovdqa64	%xmm14, %xmm22
	vmovaps	%xmm27, %xmm21
	vmovdqa64	%xmm15, %xmm16
	vmovdqa64	.LCPI2_12(%rip), %xmm29
	movq	%r8, %rax
	vmovdqa64	-128(%rsp), %xmm26
	vmovdqa64	128(%rsp), %xmm27
	vmovdqa	48(%rsp), %xmm6
	vmovdqa64	%xmm25, %xmm31
	vmovdqa	32(%rsp), %xmm1
	vmovdqa64	16(%rsp), %xmm24
	vmovdqa64	(%rsp), %xmm23
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vmovdqu	32(%rcx), %xmm4
	vmovdqu	48(%rcx), %xmm8
	vmovdqu	64(%rcx), %xmm9
	vmovdqu	80(%rcx), %xmm12
	vpshufb	%xmm29, %xmm8, %xmm8
	vpshufb	%xmm29, %xmm9, %xmm9
	vpshufb	%xmm29, %xmm12, %xmm12
	vmovdqa64	%xmm31, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm0, %xmm14
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vmovdqa64	%xmm27, %xmm11
	vpclmulqdq	$0, %xmm9, %xmm11, %xmm15
	vpclmulqdq	$1, %xmm9, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm11, %xmm5
	vpternlogq	$150, %xmm7, %xmm14, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm7
	vpternlogq	$150, %xmm13, %xmm15, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm14
	vpternlogq	$150, %xmm13, %xmm5, %xmm14
	vpshufb	%xmm29, %xmm3, %xmm3
	vpshufb	%xmm29, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm8
	vpternlogq	$150, %xmm5, %xmm9, %xmm8
	vmovdqa64	%xmm24, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm9
	vpternlogq	$150, %xmm5, %xmm14, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm5
	vmovdqa64	%xmm23, %xmm11
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm12
	vpternlogq	$150, %xmm5, %xmm7, %xmm12
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm7
	vpternlogq	$150, %xmm5, %xmm9, %xmm7
	vpshufb	%xmm29, %xmm2, %xmm2
	vpxor	%xmm2, %xmm10, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm3
	vpternlogq	$150, %xmm4, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm5
	vpternlogq	$150, %xmm4, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm4
	vpslldq	$8, %xmm5, %xmm7
	vpternlogq	$150, %xmm4, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm2
	vmovdqa64	%xmm26, %xmm8
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm4
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm10
	vpternlogq	$150, %xmm2, %xmm3, %xmm10
	vpsrldq	$8, %xmm5, %xmm2
	vpshufd	$78, %xmm4, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm2, %xmm3, %xmm10
	cmpq	$95, %rax
	ja	.LBB2_20
	vmovdqa64	%xmm16, %xmm29
	vmovdqa64	%xmm17, %xmm8
	vmovdqa64	%xmm18, %xmm15
	vmovdqa64	%xmm28, %xmm5
	vmovaps	%xmm21, %xmm27
	vmovdqa64	%xmm22, %xmm14
	vmovdqa	-48(%rsp), %xmm9
	vmovdqa	-80(%rsp), %xmm12
	vmovaps	-64(%rsp), %xmm7
	vmovaps	-96(%rsp), %xmm13
	vmovdqa	-112(%rsp), %xmm11
	cmpq	$16, %rax
	vmovdqa64	%xmm25, %xmm6
	jae	.LBB2_13
.LBB2_10:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_22
	jmp	.LBB2_12
.LBB2_6:
	vmovdqa64	%xmm15, %xmm29
	xorl	%edx, %edx
	vpxor	%xmm10, %xmm10, %xmm10
	vmovdqa64	%xmm18, %xmm15
	vmovdqa64	%xmm17, %xmm8
	vmovdqa64	%xmm25, %xmm6
	vmovdqa64	%xmm28, %xmm5
	testq	%r10, %r10
	jne	.LBB2_27
	jmp	.LBB2_24
.LBB2_8:
	vmovdqa64	%xmm15, %xmm29
	movq	%r8, %rax
	vmovdqa64	%xmm18, %xmm15
	vmovdqa64	%xmm17, %xmm8
	vmovdqa64	%xmm28, %xmm5
	cmpq	$16, %rax
	vmovdqa64	%xmm25, %xmm6
	jb	.LBB2_10
.LBB2_13:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB2_14
	cmpq	$16, %rdx
	jae	.LBB2_16
.LBB2_11:
	testq	%rdx, %rdx
	je	.LBB2_12
.LBB2_22:
	movl	$-1, %eax
	bzhil	%edx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm3 {%k1} {z}

	#NO_APP
	testq	%r10, %r10
	je	.LBB2_24
.LBB2_27:
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rsi
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	jb	.LBB2_44
	vmovdqa64	%xmm19, %xmm24
	vmovdqa	%xmm11, %xmm0
	testq	%rdx, %rdx
	je	.LBB2_30
	vpshufb	.LCPI2_12(%rip), %xmm3, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vmovdqa	%xmm5, %xmm10
	vmovdqa	-128(%rsp), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vmovdqa	%xmm10, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm10
	vpternlogq	$150, %xmm3, %xmm2, %xmm10
.LBB2_30:
	movq	184(%rsp), %rax
	cmpq	$96, %r10
	vmovdqa	-16(%rsp), %xmm11
	jb	.LBB2_31
	vmovdqa64	.LCPI2_1(%rip), %xmm20
	vmovdqa64	.LCPI2_12(%rip), %xmm16
	movq	%r10, %rcx
	vmovdqa	%xmm8, -112(%rsp)
	vmovdqa64	%xmm24, 112(%rsp)
	vmovdqa	%xmm5, 96(%rsp)
	vmovaps	%xmm27, 80(%rsp)
	vmovdqa	%xmm14, 64(%rsp)
	vmovdqa	%xmm9, -48(%rsp)
	vmovdqa	%xmm12, -80(%rsp)
	vmovaps	%xmm7, -64(%rsp)
	vmovaps	%xmm13, -96(%rsp)
	vmovdqa64	%xmm15, %xmm18
	vmovdqa	%xmm0, %xmm15
	vmovdqa64	48(%rsp), %xmm31
	vmovdqa64	32(%rsp), %xmm19
	vmovdqa64	16(%rsp), %xmm23
	vmovaps	(%rsp), %xmm21
	vmovdqa64	-16(%rsp), %xmm22
	.p2align	4, 0x90
.LBB2_37:
	vmovdqu64	16(%r9), %xmm24
	vmovdqu64	32(%r9), %xmm25
	vmovdqu64	48(%r9), %xmm26
	vmovdqu64	64(%r9), %xmm27
	vmovdqu64	80(%r9), %xmm28
	vpshufb	%xmm16, %xmm20, %xmm1
	vpaddd	.LCPI2_14(%rip), %xmm20, %xmm2
	vpshufb	%xmm16, %xmm2, %xmm2
	vpaddd	.LCPI2_1(%rip), %xmm20, %xmm3
	vpshufb	%xmm16, %xmm3, %xmm5
	vpaddd	.LCPI2_15(%rip), %xmm20, %xmm3
	vpshufb	%xmm16, %xmm3, %xmm7
	vpaddd	.LCPI2_2(%rip), %xmm20, %xmm3
	vpshufb	%xmm16, %xmm3, %xmm8
	vpaddd	.LCPI2_16(%rip), %xmm20, %xmm3
	vpshufb	%xmm16, %xmm3, %xmm9
	vmovdqa64	%xmm15, %xmm17
	vmovdqa64	%xmm18, %xmm15
	vpshufb	%xmm16, %xmm28, %xmm11
	vpxorq	%xmm1, %xmm29, %xmm3
	vpxorq	%xmm2, %xmm29, %xmm4
	vpxorq	%xmm5, %xmm29, %xmm14
	vpxorq	%xmm7, %xmm29, %xmm12
	vpxorq	%xmm8, %xmm29, %xmm13
	vpxorq	%xmm9, %xmm29, %xmm2
	vmovaps	-112(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm9, %xmm9, %xmm9
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm14, %xmm14
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm5
	vpxor	%xmm5, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	#NO_APP
	vmovdqa64	%xmm30, %xmm7
	vmovdqa64	%xmm17, %xmm15
	vpshufb	%xmm16, %xmm27, %xmm5
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovaps	112(%rsp), %xmm11
	vmovaps	128(%rsp), %xmm0
	#APP
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm12, %xmm12
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm16, %xmm26, %xmm5
	vmovaps	96(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm31, %xmm0
	vmovaps	-32(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm12, %xmm12
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm16, %xmm25, %xmm5
	vmovaps	80(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm6, %xmm17
	vmovaps	64(%rsp), %xmm0
	vmovdqa64	%xmm23, %xmm6
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	#NO_APP
	vmovdqa64	%xmm17, %xmm6
	vpshufb	%xmm16, %xmm24, %xmm5
	vmovaps	-48(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovaps	-80(%rsp), %xmm0
	vmovaps	%xmm21, %xmm11
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm5, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm11, %xmm5, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	#NO_APP
	vmovdqu	(%r9), %xmm5
	vpshufb	%xmm16, %xmm5, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vmovaps	-64(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm2, %xmm2
	#NO_APP
	vmovaps	-96(%rsp), %xmm0
	vmovdqa64	%xmm19, %xmm11
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
	vpunpcklqdq	%xmm8, %xmm10, %xmm7
	vpunpckhqdq	%xmm10, %xmm8, %xmm8
	vmovdqa64	%xmm22, %xmm0
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm2, %xmm2
	#NO_APP
	#APP
	vaesenclast	%xmm15, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm4, %xmm4
	vaesenclast	%xmm15, %xmm14, %xmm14
	vaesenclast	%xmm15, %xmm12, %xmm12
	vaesenclast	%xmm15, %xmm13, %xmm13
	vaesenclast	%xmm15, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm5, %xmm3, %xmm3
	vpxorq	%xmm24, %xmm4, %xmm4
	vpxorq	%xmm25, %xmm14, %xmm5
	vpxorq	%xmm26, %xmm12, %xmm12
	vpxorq	%xmm27, %xmm13, %xmm13
	vpxorq	%xmm28, %xmm2, %xmm2
	vpxor	%xmm7, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm7
	vmovdqa	-128(%rsp), %xmm11
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm8, %xmm9, %xmm10
	vmovdqu	%xmm3, (%rax)
	vmovdqu	%xmm4, 16(%rax)
	vmovdqu	%xmm5, 32(%rax)
	vmovdqu	%xmm12, 48(%rax)
	vmovdqu	%xmm13, 64(%rax)
	vmovdqu	%xmm2, 80(%rax)
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm1
	vpternlogq	$150, %xmm1, %xmm2, %xmm10
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI2_17(%rip), %xmm20, %xmm20
	cmpq	$95, %rcx
	ja	.LBB2_37
	vmovdqa64	%xmm22, %xmm17
	vmovdqa	%xmm15, %xmm0
	vmovdqa	-112(%rsp), %xmm8
	vmovdqa64	112(%rsp), %xmm24
	vmovdqa	96(%rsp), %xmm5
	vmovaps	80(%rsp), %xmm27
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	-48(%rsp), %xmm9
	vmovdqa	-80(%rsp), %xmm12
	vmovaps	-64(%rsp), %xmm7
	vmovaps	-96(%rsp), %xmm13
	vmovdqa64	%xmm22, %xmm11
	vmovdqa64	%xmm18, %xmm15
	cmpq	$16, %rcx
	jae	.LBB2_39
.LBB2_33:
	movq	%rax, %rdx
	vmovdqa64	%xmm15, %xmm22
	vmovdqa64	%xmm13, %xmm21
	vmovdqa	%xmm0, %xmm15
	vmovdqa	%xmm8, %xmm11
	vmovdqa	%xmm5, %xmm0
	jmp	.LBB2_34
.LBB2_14:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI2_12(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vmovdqa	%xmm5, %xmm0
	vmovdqa	-128(%rsp), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vmovdqa	%xmm0, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm10
	vpternlogq	$150, %xmm3, %xmm2, %xmm10
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB2_11
.LBB2_16:
	vmovdqa64	%xmm5, %xmm18
	vmovdqa	%xmm11, %xmm0
	vmovdqa64	%xmm8, %xmm17
	vmovdqa64	%xmm15, %xmm16
	vmovaps	%xmm7, %xmm8
	vmovdqa	.LCPI2_12(%rip), %xmm1
	vmovdqa	-128(%rsp), %xmm11
	.p2align	4, 0x90
.LBB2_17:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm1, %xmm2, %xmm2
	vpxor	%xmm2, %xmm10, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm5, %xmm7
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm1, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm2, %xmm5, %xmm10
	vpternlogq	$150, %xmm4, %xmm3, %xmm10
	cmpq	$15, %rax
	ja	.LBB2_17
	movq	%rax, %rdx
	vmovaps	%xmm8, %xmm7
	vmovdqa64	%xmm16, %xmm15
	vmovdqa64	%xmm17, %xmm8
	vmovdqa	%xmm0, %xmm11
	vmovdqa64	%xmm18, %xmm5
	testq	%rdx, %rdx
	jne	.LBB2_22
.LBB2_12:
	vpxor	%xmm3, %xmm3, %xmm3
	xorl	%edx, %edx
	testq	%r10, %r10
	jne	.LBB2_27
.LBB2_24:
	vmovdqa64	%xmm19, %xmm24
	testq	%rdx, %rdx
	je	.LBB2_25
	vpshufb	.LCPI2_12(%rip), %xmm3, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vmovdqa	-128(%rsp), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
	xorl	%r10d, %r10d
	jmp	.LBB2_43
.LBB2_31:
	movq	%r10, %rcx
	cmpq	$16, %rcx
	jb	.LBB2_33
.LBB2_39:
	vmovdqa64	.LCPI2_12(%rip), %xmm18
	vmovdqa64	.LCPI2_14(%rip), %xmm16
	vmovdqa64	%xmm11, %xmm23
	vmovdqa64	%xmm15, %xmm22
	vmovdqa64	%xmm13, %xmm21
	vmovdqa	%xmm0, %xmm15
	vmovdqa64	-32(%rsp), %xmm25
	vmovdqa	-128(%rsp), %xmm2
	vmovdqa64	%xmm29, %xmm19
	vmovdqa	%xmm8, %xmm11
	vmovdqa64	%xmm24, %xmm13
	vmovdqa	%xmm5, %xmm0
	.p2align	4, 0x90
.LBB2_40:
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm18, %xmm3, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$1, %xmm4, %xmm6, %xmm5
	vmovdqa64	%xmm7, %xmm17
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm6, %xmm4
	vpslldq	$8, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm10
	vmovdqa64	%xmm17, %xmm7
	vpshufb	%xmm18, %xmm20, %xmm4
	vpxorq	%xmm4, %xmm19, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vmovdqa64	%xmm22, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovdqa64	%xmm30, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vmovdqa64	%xmm25, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovaps	%xmm27, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa64	%xmm21, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovdqa64	%xmm23, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenclast	%xmm15, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	leaq	16(%rax), %rdx
	addq	$-16, %rcx
	addq	$16, %r9
	vpsrldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm4, %xmm8, %xmm10
	vpaddd	%xmm16, %xmm20, %xmm20
	vmovdqu	%xmm3, (%rax)
	movq	%rdx, %rax
	cmpq	$15, %rcx
	ja	.LBB2_40
.LBB2_34:
	vmovdqa64	%xmm0, %xmm17
	vmovdqa64	%xmm11, %xmm16
	vmovdqa64	%xmm22, %xmm8
	vmovdqa64	%xmm21, %xmm11
	testq	%rcx, %rcx
	je	.LBB2_35
	movl	$-1, %eax
	bzhil	%ecx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%r9), %xmm1 {%k1} {z}

	#NO_APP
	vmovdqa	.LCPI2_12(%rip), %xmm2
	vmovdqu8	%xmm1, %xmm3 {%k1} {z}
	vpshufb	%xmm2, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufb	%xmm2, %xmm20, %xmm0
	vmovdqa64	%xmm29, %xmm2
	vpxorq	%xmm0, %xmm29, %xmm0
	vmovdqa64	%xmm16, %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm8, %xmm2
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa64	%xmm30, %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa64	%xmm24, %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa64	%xmm17, %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	-32(%rsp), %xmm0, %xmm0
	vmovaps	%xmm27, %xmm13
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	%xmm11, %xmm13
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	-16(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm15, %xmm11
	vaesenclast	%xmm15, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	#APP

	vmovdqu8	%xmm0, (%rdx) {%k1}

	#NO_APP
	vpclmulqdq	$0, %xmm3, %xmm6, %xmm0
	vpclmulqdq	$17, %xmm3, %xmm6, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vmovdqa	-128(%rsp), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm10
	vpsrldq	$8, %xmm4, %xmm0
	vpternlogq	$150, %xmm0, %xmm2, %xmm10
	jmp	.LBB2_42
.LBB2_25:
	xorl	%r10d, %r10d
	vmovdqa	-128(%rsp), %xmm4
	jmp	.LBB2_43
.LBB2_35:
	vmovdqa	%xmm11, %xmm13
	vmovdqa	%xmm15, %xmm11
	vmovdqa64	%xmm17, %xmm5
.LBB2_42:
	shlq	$3, %r10
	vmovdqa	-128(%rsp), %xmm4
	vmovdqa	%xmm8, %xmm15
	vmovdqa64	%xmm16, %xmm8
.LBB2_43:
	shlq	$3, %r8
	vmovq	%r10, %xmm0
	vmovq	%r8, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	.LCPI2_18(%rip), %xmm29, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vmovdqa64	%xmm30, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vmovaps	%xmm27, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	-16(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI2_19(%rip), %xmm2, %xmm2
	movq	168(%rsp), %rax
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_20(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpternlogq	$150, (%rax), %xmm3, %xmm1
	xorl	%eax, %eax
	vptest	%xmm1, %xmm1
	sete	%al
.LBB2_44:
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndk_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndk_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_is_supported,@function
haberdashery_aes256gcmdndk_skylakex_is_supported:
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
	.size	haberdashery_aes256gcmdndk_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

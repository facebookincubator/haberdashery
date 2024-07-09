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
	.section	.text.haberdashery_aes256gcmsiv_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_init,@function
haberdashery_aes256gcmsiv_skylakex_init:
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
	.size	haberdashery_aes256gcmsiv_skylakex_init, .Lfunc_end0-haberdashery_aes256gcmsiv_skylakex_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	0
	.long	4
	.long	5
	.long	3
.LCPI1_1:
	.long	1
	.long	0
	.long	4
	.long	5
.LCPI1_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_5:
	.quad	4
	.quad	0
.LCPI1_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_8:
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
.LCPI1_16:
	.quad	-1
	.quad	9223372036854775807
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
	.byte	128
.LCPI1_18:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	8
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_7:
	.quad	-4467570830351532032
.LCPI1_9:
	.quad	4294967297
.LCPI1_10:
	.quad	8589934594
.LCPI1_11:
	.quad	17179869188
.LCPI1_12:
	.quad	34359738376
.LCPI1_13:
	.quad	68719476752
.LCPI1_14:
	.quad	137438953504
.LCPI1_15:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_21:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_encrypt,@function
haberdashery_aes256gcmsiv_skylakex_encrypt:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	128(%rsp), %r10
	xorl	%eax, %eax
	cmpq	144(%rsp), %r10
	jne	.LBB1_48
	cmpq	$12, %rdx
	jne	.LBB1_48
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB1_48
	cmpq	%rdx, %r10
	jae	.LBB1_48
	cmpq	$16, 160(%rsp)
	jne	.LBB1_48
	vmovq	4(%rsi), %xmm1
	vmovd	(%rsi), %xmm17
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vmovdqa	%xmm1, (%rsp)
	vpermi2d	%xmm1, %xmm17, %xmm0
	vpxor	(%rdi), %xmm0, %xmm1
	vpxor	.LCPI1_2(%rip), %xmm1, %xmm2
	vpxor	.LCPI1_3(%rip), %xmm1, %xmm7
	vpxor	.LCPI1_4(%rip), %xmm1, %xmm0
	vpxor	.LCPI1_5(%rip), %xmm1, %xmm6
	vpxor	.LCPI1_6(%rip), %xmm1, %xmm8
	vmovaps	16(%rdi), %xmm4
	vmovaps	32(%rdi), %xmm5
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm3
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	112(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	144(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	176(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	224(%rdi), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm6, %xmm6
	vaesenclast	%xmm3, %xmm8, %xmm8
	#NO_APP
	vpunpcklqdq	%xmm2, %xmm1, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm1
	vpbroadcastq	.LCPI1_7(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm5
	vpshufd	$78, %xmm3, %xmm16
	vpternlogq	$150, %xmm4, %xmm5, %xmm16
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm5
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpslldq	$8, %xmm5, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm9
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm9
	vmovdqa	%xmm1, -64(%rsp)
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm1
	vmovdqa	%xmm2, %xmm4
	vpternlogq	$150, %xmm5, %xmm9, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm5, %xmm9
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm5, %xmm9
	vmovdqa	%xmm1, -80(%rsp)
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm10
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm9, %xmm10, %xmm5
	vpclmulqdq	$0, %xmm14, %xmm5, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm5, %xmm10
	vpclmulqdq	$1, %xmm14, %xmm5, %xmm11
	vpxorq	%xmm10, %xmm11, %xmm19
	vpslldq	$8, %xmm19, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm9, %xmm10
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm9
	vmovdqa64	%xmm1, %xmm23
	vpclmulqdq	$17, %xmm14, %xmm5, %xmm10
	vpxorq	%xmm9, %xmm10, %xmm20
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm10
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm11
	vpxorq	%xmm10, %xmm11, %xmm21
	vpslldq	$8, %xmm21, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm9, %xmm10
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm12
	vpclmulqdq	$16, %xmm15, %xmm12, %xmm9
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm10
	vpxorq	%xmm9, %xmm10, %xmm22
	vunpcklpd	%xmm0, %xmm7, %xmm24
	vpunpcklqdq	%xmm8, %xmm6, %xmm11
	vpslldq	$4, %xmm24, %xmm8
	vxorpd	%xmm13, %xmm13, %xmm13
	vunpcklpd	%xmm7, %xmm13, %xmm9
	vinsertps	$55, %xmm7, %xmm0, %xmm7
	vpternlogq	$150, %xmm9, %xmm8, %xmm7
	vpbroadcastd	.LCPI1_21(%rip), %xmm18
	vpshufb	%xmm18, %xmm11, %xmm8
	vpbroadcastq	.LCPI1_9(%rip), %xmm9
	vaesenclast	%xmm9, %xmm8, %xmm3
	vpternlogq	$150, %xmm7, %xmm24, %xmm3
	vpslldq	$4, %xmm11, %xmm7
	vunpcklpd	%xmm6, %xmm13, %xmm8
	vinsertps	$55, %xmm6, %xmm0, %xmm6
	vpternlogq	$150, %xmm8, %xmm7, %xmm6
	vpshufd	$255, %xmm3, %xmm7
	vaesenclast	%xmm13, %xmm7, %xmm0
	vpternlogq	$150, %xmm6, %xmm11, %xmm0
	vpslldq	$4, %xmm3, %xmm6
	vpslldq	$8, %xmm3, %xmm7
	vpslldq	$12, %xmm3, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpbroadcastq	.LCPI1_10(%rip), %xmm6
	vpshufb	%xmm18, %xmm0, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm1
	vpternlogq	$150, %xmm8, %xmm3, %xmm1
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm7
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm1, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm2
	vmovaps	%xmm0, -112(%rsp)
	vpternlogq	$150, %xmm8, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_11(%rip), %xmm6
	vpshufb	%xmm18, %xmm2, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm0
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm7
	vpslldq	$12, %xmm1, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vmovaps	%xmm1, -128(%rsp)
	vpternlogq	$150, %xmm8, %xmm1, %xmm0
	vpslldq	$4, %xmm2, %xmm6
	vpslldq	$8, %xmm2, %xmm7
	vpslldq	$12, %xmm2, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm0, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm1
	vmovaps	%xmm2, 96(%rsp)
	vpternlogq	$150, %xmm8, %xmm2, %xmm1
	vpshufb	%xmm18, %xmm1, %xmm6
	vpbroadcastq	.LCPI1_12(%rip), %xmm7
	vaesenclast	%xmm7, %xmm6, %xmm2
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm7
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vmovaps	%xmm0, 80(%rsp)
	vpternlogq	$150, %xmm8, %xmm0, %xmm2
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm7
	vpslldq	$12, %xmm1, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm2, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm0
	vmovaps	%xmm1, 64(%rsp)
	vpternlogq	$150, %xmm8, %xmm1, %xmm0
	vpshufb	%xmm18, %xmm0, %xmm6
	vpbroadcastq	.LCPI1_13(%rip), %xmm7
	vaesenclast	%xmm7, %xmm6, %xmm1
	vpslldq	$4, %xmm2, %xmm6
	vpslldq	$8, %xmm2, %xmm7
	vpslldq	$12, %xmm2, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vmovaps	%xmm2, 48(%rsp)
	vpternlogq	$150, %xmm8, %xmm2, %xmm1
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm7
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm1, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm2
	vmovaps	%xmm0, 32(%rsp)
	vpternlogq	$150, %xmm8, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_14(%rip), %xmm6
	vpshufb	%xmm18, %xmm2, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm0
	vpsrldq	$8, %xmm19, %xmm6
	vpshufd	$78, %xmm23, %xmm7
	vpternlogq	$150, %xmm6, %xmm20, %xmm7
	vpsrldq	$8, %xmm21, %xmm6
	vpshufd	$78, %xmm12, %xmm8
	vpternlogq	$150, %xmm6, %xmm22, %xmm8
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm9
	vpslldq	$12, %xmm1, %xmm10
	vpternlogq	$150, %xmm9, %xmm6, %xmm10
	vmovaps	%xmm1, 16(%rsp)
	vpternlogq	$150, %xmm10, %xmm1, %xmm0
	vpslldq	$4, %xmm2, %xmm21
	vpslldq	$8, %xmm2, %xmm20
	vpslldq	$12, %xmm2, %xmm19
	vmovdqa	%xmm0, -48(%rsp)
	vpshufd	$255, %xmm0, %xmm0
	cmpq	$128, %r8
	vmovaps	%xmm2, -96(%rsp)
	vmovdqa64	%xmm15, %xmm29
	jb	.LBB1_9
	vmovdqa64	%xmm0, %xmm26
	vmovdqa64	%xmm3, %xmm23
	vmovapd	%xmm11, %xmm22
	vpxor	%xmm6, %xmm6, %xmm6
	movq	%r8, %rax
	vmovdqa64	%xmm14, %xmm27
	vmovdqa64	%xmm5, %xmm28
	vmovdqa	%xmm4, %xmm5
	vmovdqa	-64(%rsp), %xmm4
	vmovdqa64	%xmm8, %xmm30
	vmovdqa	-80(%rsp), %xmm8
	vmovdqa	%xmm7, %xmm13
	.p2align	4, 0x90
.LBB1_7:
	vmovdqu	16(%rcx), %xmm14
	vmovdqu	32(%rcx), %xmm9
	vmovdqu	80(%rcx), %xmm10
	vmovdqu	96(%rcx), %xmm11
	vmovdqu	112(%rcx), %xmm12
	vmovdqa64	%xmm27, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm7, %xmm15
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm1
	vpternlogq	$150, %xmm0, %xmm15, %xmm1
	vmovdqa64	%xmm29, %xmm25
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vmovdqu	48(%rcx), %xmm0
	vmovdqu	64(%rcx), %xmm2
	vpclmulqdq	$17, %xmm12, %xmm7, %xmm12
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm10
	vpternlogq	$150, %xmm12, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm12
	vpternlogq	$150, %xmm11, %xmm3, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm3
	vmovdqa64	%xmm30, %xmm15
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm11
	vpternlogq	$150, %xmm3, %xmm1, %xmm11
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpternlogq	$150, %xmm1, %xmm12, %xmm3
	vmovdqa64	%xmm16, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vmovdqa64	%xmm29, %xmm15
	vpternlogq	$150, %xmm1, %xmm10, %xmm0
	vmovdqa64	%xmm28, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm12, %xmm2
	vpternlogq	$150, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm9, %xmm12, %xmm1
	vpclmulqdq	$0, %xmm14, %xmm13, %xmm3
	vpternlogq	$150, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm14, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm13, %xmm10
	vpternlogq	$150, %xmm1, %xmm2, %xmm10
	vpxor	(%rcx), %xmm6, %xmm1
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm13, %xmm9
	vpternlogq	$150, %xmm2, %xmm0, %xmm9
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm2
	vpternlogq	$150, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm0
	vpslldq	$8, %xmm2, %xmm6
	vpternlogq	$150, %xmm0, %xmm3, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm1
	vpshufd	$78, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm6
	vpternlogq	$150, %xmm0, %xmm9, %xmm6
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	addq	$128, %rcx
	addq	$-128, %rax
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	cmpq	$127, %rax
	ja	.LBB1_7
	vmovapd	%xmm22, %xmm11
	vmovdqa64	%xmm23, %xmm25
	vmovdqa	-96(%rsp), %xmm9
	vmovdqa	%xmm5, %xmm4
	vmovdqa64	%xmm28, %xmm5
	vmovdqa64	%xmm27, %xmm14
	vmovdqa	%xmm13, %xmm7
	vmovdqa64	%xmm30, %xmm8
	vpxor	%xmm13, %xmm13, %xmm13
	vmovdqa64	%xmm26, %xmm0
	jmp	.LBB1_10
.LBB1_9:
	vmovdqa	%xmm2, %xmm9
	vmovdqa64	%xmm3, %xmm25
	vpxor	%xmm6, %xmm6, %xmm6
	movq	%r8, %rax
.LBB1_10:
	vpternlogq	$150, %xmm20, %xmm21, %xmm19
	vaesenclast	%xmm13, %xmm0, %xmm12
	vmovdqa64	%xmm12, %xmm28
	cmpq	$16, %rax
	vmovdqa	-112(%rsp), %xmm13
	vmovdqa	-128(%rsp), %xmm10
	jb	.LBB1_19
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_12
	vpxor	(%rcx), %xmm6, %xmm6
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm6, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm14, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm14, %xmm9
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm14, %xmm0
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm1, %xmm10, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm10, %xmm6
	vpshufd	$78, %xmm10, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm10
	vpshufd	$78, %xmm6, %xmm20
	vpxor	%xmm0, %xmm10, %xmm6
	vmovdqa	-128(%rsp), %xmm10
	vpternlogq	$150, %xmm9, %xmm20, %xmm6
	vmovdqa	-96(%rsp), %xmm9
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_13
	jmp	.LBB1_39
.LBB1_12:
	cmpq	$16, %rdx
	jae	.LBB1_39
.LBB1_13:
	vpternlogq	$150, %xmm19, %xmm9, %xmm28
	testq	%rdx, %rdx
	je	.LBB1_15
.LBB1_14:
	movl	$-1, %eax
	bzhil	%edx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
.LBB1_15:
	vmovapd	-48(%rsp), %xmm0
	vpslldq	$4, %xmm0, %xmm20
	vpslldq	$8, %xmm0, %xmm21
	vpslldq	$12, %xmm0, %xmm19
	vmovdqa64	%xmm28, %xmm0
	vpshufb	%xmm18, %xmm28, %xmm0
	vpbroadcastq	.LCPI1_15(%rip), %xmm1
	vmovq	%r10, %xmm18
	vmovq	%r8, %xmm22
	cmpq	$128, %r10
	jb	.LBB1_20
	vmovdqa64	%xmm17, -16(%rsp)
	vmovdqa	%xmm1, -32(%rsp)
	vmovdqa64	%xmm0, %xmm30
	vmovapd	%xmm11, %xmm23
	movq	%r9, %rcx
	movq	%r10, %rax
	vmovdqa64	%xmm14, %xmm17
	vmovdqa64	%xmm5, %xmm27
	vmovdqa64	%xmm4, %xmm31
	vmovdqa	-64(%rsp), %xmm4
	vmovdqa64	%xmm7, %xmm26
	vmovdqa64	%xmm16, %xmm7
	vmovdqa	%xmm8, %xmm13
	vmovdqa	-80(%rsp), %xmm8
	.p2align	4, 0x90
.LBB1_17:
	vmovdqu	16(%rcx), %xmm9
	vmovdqu	32(%rcx), %xmm10
	vmovdqu	80(%rcx), %xmm0
	vmovdqu	96(%rcx), %xmm1
	vmovdqu	112(%rcx), %xmm2
	vmovdqa64	%xmm17, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm12
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm15
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm14
	vpternlogq	$150, %xmm15, %xmm11, %xmm14
	vmovdqa64	%xmm29, %xmm15
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm11
	vpternlogq	$150, %xmm3, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm12
	vpternlogq	$150, %xmm3, %xmm14, %xmm12
	vmovdqu	48(%rcx), %xmm3
	vmovdqu	64(%rcx), %xmm14
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa64	%xmm31, %xmm5
	vpclmulqdq	$1, %xmm14, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$0, %xmm14, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm12
	vpternlogq	$150, %xmm1, %xmm11, %xmm12
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm11
	vpternlogq	$150, %xmm1, %xmm2, %xmm11
	vpclmulqdq	$17, %xmm14, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vmovdqa64	%xmm27, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm1
	vpternlogq	$150, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm0
	vmovdqa64	%xmm26, %xmm14
	vpclmulqdq	$0, %xmm9, %xmm14, %xmm3
	vpternlogq	$150, %xmm0, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm9, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm14, %xmm11
	vpternlogq	$150, %xmm0, %xmm1, %xmm11
	vpxor	(%rcx), %xmm6, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm9, %xmm14, %xmm9
	vpternlogq	$150, %xmm1, %xmm2, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm2
	vpternlogq	$150, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpslldq	$8, %xmm2, %xmm6
	vpternlogq	$150, %xmm1, %xmm3, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm1
	vpshufd	$78, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm6
	vpternlogq	$150, %xmm0, %xmm9, %xmm6
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	addq	$128, %rcx
	addq	$-128, %rax
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	cmpq	$127, %rax
	ja	.LBB1_17
	vmovdqa	-112(%rsp), %xmm13
	vmovdqa	-128(%rsp), %xmm10
	vmovdqa	-96(%rsp), %xmm9
	vmovdqa64	%xmm17, %xmm14
	vmovdqa64	%xmm30, %xmm0
	vmovdqa	-32(%rsp), %xmm1
	vmovdqa64	-16(%rsp), %xmm17
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_39:
	vpxor	(%rcx), %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpternlogq	$150, 16(%rcx), %xmm1, %xmm3
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm2, %xmm3, %xmm6
	vpternlogq	$150, %xmm1, %xmm0, %xmm6
	cmpq	$15, %rax
	ja	.LBB1_39
.LBB1_19:
	movq	%rax, %rdx
	vpternlogq	$150, %xmm19, %xmm9, %xmm28
	testq	%rdx, %rdx
	jne	.LBB1_14
	jmp	.LBB1_15
.LBB1_20:
	movq	%r10, %rax
	movq	%r9, %rcx
	vmovapd	%xmm11, %xmm23
.LBB1_21:
	vmovdqa	.LCPI1_0(%rip), %xmm2
	vpternlogq	$150, %xmm21, %xmm20, %xmm19
	vaesenclast	%xmm1, %xmm0, %xmm8
	vpunpcklqdq	%xmm18, %xmm22, %xmm3
	cmpq	$16, %rax
	vmovdqa	-48(%rsp), %xmm7
	jb	.LBB1_27
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_24
	vpxor	(%rcx), %xmm6, %xmm0
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm0, %xmm6, %xmm6
	vpternlogq	$150, %xmm5, %xmm4, %xmm6
	movq	%rdx, %rax
.LBB1_24:
	cmpq	$16, %rdx
	jb	.LBB1_28
	.p2align	4, 0x90
.LBB1_25:
	vpxor	(%rcx), %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm0, %xmm5, %xmm6
	vpternlogq	$150, 16(%rcx), %xmm4, %xmm6
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm6, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm14, %xmm5
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm5, %xmm6, %xmm6
	vpternlogq	$150, %xmm4, %xmm0, %xmm6
	cmpq	$15, %rax
	ja	.LBB1_25
.LBB1_27:
	movq	%rax, %rdx
.LBB1_28:
	movq	152(%rsp), %rax
	vpermt2d	(%rsp), %xmm2, %xmm17
	vpternlogq	$150, %xmm19, %xmm7, %xmm8
	vpsllq	$3, %xmm3, %xmm2
	testq	%rdx, %rdx
	je	.LBB1_30
	movl	$-1, %esi
	bzhil	%edx, %esi, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm0, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm3, %xmm6
.LBB1_30:
	vpxor	%xmm2, %xmm6, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm17, %xmm0, %xmm4
	vpsrldq	$8, %xmm2, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm4
	vpternlogq	$108, .LCPI1_16(%rip), %xmm24, %xmm4
	vmovapd	%xmm23, %xmm3
	vaesenc	%xmm3, %xmm4, %xmm0
	vmovdqa64	%xmm25, %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	96(%rsp), %xmm11
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	80(%rsp), %xmm14
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa	64(%rsp), %xmm10
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa64	%xmm28, %xmm13
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	vpor	.LCPI1_17(%rip), %xmm0, %xmm15
	movq	136(%rsp), %rax
	cmpq	$128, %r10
	jb	.LBB1_34
	vmovdqa64	.LCPI1_3(%rip), %xmm17
	vmovdqa64	.LCPI1_4(%rip), %xmm18
	vmovdqa64	.LCPI1_5(%rip), %xmm19
	vmovdqa64	.LCPI1_6(%rip), %xmm20
	vmovdqa64	.LCPI1_18(%rip), %xmm21
	vmovdqa64	.LCPI1_19(%rip), %xmm22
	vmovdqa64	.LCPI1_20(%rip), %xmm23
	vmovdqa64	%xmm10, %xmm27
	vmovdqa64	%xmm1, %xmm28
	vmovdqa64	%xmm5, %xmm16
	vmovdqa64	%xmm7, %xmm26
	vmovapd	%xmm3, %xmm30
	vmovdqa64	%xmm6, %xmm31
	vmovdqa64	%xmm13, %xmm25
	vmovaps	-112(%rsp), %xmm10
	vmovaps	-128(%rsp), %xmm1
	vmovdqa64	%xmm8, %xmm29
	.p2align	4, 0x90
.LBB1_32:
	vpaddd	.LCPI1_2(%rip), %xmm15, %xmm0
	vpaddd	%xmm17, %xmm15, %xmm4
	vpaddd	%xmm18, %xmm15, %xmm5
	vpaddd	%xmm19, %xmm15, %xmm6
	vpaddd	%xmm20, %xmm15, %xmm7
	vpaddd	%xmm21, %xmm15, %xmm8
	vpaddd	%xmm22, %xmm15, %xmm9
	vpxorq	%xmm24, %xmm15, %xmm2
	vpxorq	%xmm0, %xmm24, %xmm3
	vpxorq	%xmm4, %xmm24, %xmm4
	vpxorq	%xmm5, %xmm24, %xmm5
	vpxorq	%xmm6, %xmm24, %xmm6
	vpxorq	%xmm7, %xmm24, %xmm7
	vpxorq	%xmm8, %xmm24, %xmm8
	vpxorq	%xmm9, %xmm24, %xmm13
	vmovdqa	-96(%rsp), %xmm9
	vmovapd	%xmm30, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm31, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm27, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm28, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm16, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm26, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm25, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm29, %xmm0
	#APP
	vaesenclast	%xmm0, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm3, %xmm3
	vaesenclast	%xmm0, %xmm4, %xmm4
	vaesenclast	%xmm0, %xmm5, %xmm5
	vaesenclast	%xmm0, %xmm6, %xmm6
	vaesenclast	%xmm0, %xmm7, %xmm7
	vaesenclast	%xmm0, %xmm8, %xmm8
	vaesenclast	%xmm0, %xmm13, %xmm13
	#NO_APP
	vpxor	(%r9), %xmm2, %xmm0
	vxorpd	16(%r9), %xmm3, %xmm2
	vxorpd	32(%r9), %xmm4, %xmm3
	vpxor	48(%r9), %xmm5, %xmm4
	vpxor	64(%r9), %xmm6, %xmm5
	vpxor	80(%r9), %xmm7, %xmm6
	vpxor	96(%r9), %xmm8, %xmm7
	vpxor	112(%r9), %xmm13, %xmm8
	leaq	128(%r9), %r9
	vmovdqu	%xmm0, (%rax)
	vmovupd	%xmm2, 16(%rax)
	vmovupd	%xmm3, 32(%rax)
	vmovdqu	%xmm4, 48(%rax)
	vmovdqu	%xmm5, 64(%rax)
	vmovdqu	%xmm6, 80(%rax)
	vmovdqu	%xmm7, 96(%rax)
	vmovdqu	%xmm8, 112(%rax)
	addq	$128, %rax
	addq	$-128, %r10
	vpaddd	%xmm23, %xmm15, %xmm15
	cmpq	$127, %r10
	ja	.LBB1_32
	vmovdqa64	%xmm27, %xmm10
	vmovdqa64	%xmm28, %xmm1
	vmovdqa64	%xmm16, %xmm5
	vmovdqa64	%xmm26, %xmm7
	vmovapd	%xmm30, %xmm3
	vmovdqa64	%xmm31, %xmm6
	vmovdqa64	%xmm25, %xmm13
	vmovdqa64	%xmm29, %xmm8
.LBB1_34:
	cmpq	$16, %r10
	jb	.LBB1_37
	leaq	-16(%r10), %rdx
	testb	$16, %dl
	jne	.LBB1_41
	leaq	16(%r9), %rsi
	leaq	16(%rax), %rcx
	vpaddd	.LCPI1_2(%rip), %xmm15, %xmm2
	vpxorq	%xmm24, %xmm15, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	%xmm3, %xmm4
	vaesenc	-112(%rsp), %xmm0, %xmm0
	vaesenc	-128(%rsp), %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm0
	vpxor	(%r9), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	%rcx, %rax
	vmovdqa	%xmm2, %xmm15
	movq	%rdx, %r10
	movq	%rsi, %r9
	jmp	.LBB1_42
.LBB1_37:
	movq	%r9, %rsi
	movq	%rax, %rcx
	movq	%r10, %rdx
	vmovdqa	%xmm15, %xmm2
	jmp	.LBB1_46
.LBB1_41:
.LBB1_42:
	cmpq	$16, %rdx
	jb	.LBB1_46
	vmovdqa64	%xmm9, %xmm18
	vmovdqa64	%xmm13, %xmm19
	vmovdqa64	%xmm6, %xmm20
	vmovdqa64	%xmm5, %xmm21
	vmovdqa64	%xmm1, %xmm22
	vmovdqa64	%xmm14, %xmm23
	vmovdqa64	%xmm12, %xmm25
	vmovdqa64	%xmm11, %xmm26
	vmovdqa64	%xmm10, %xmm27
	vmovdqa64	%xmm7, %xmm28
	vmovdqa64	%xmm3, %xmm29
	vmovdqa64	%xmm8, %xmm30
	vmovdqa64	-112(%rsp), %xmm31
	vmovdqa64	-128(%rsp), %xmm16
	.p2align	4, 0x90
.LBB1_44:
	vpaddd	.LCPI1_2(%rip), %xmm15, %xmm0
	vpxorq	%xmm24, %xmm15, %xmm4
	vmovdqa64	%xmm29, %xmm3
	vaesenc	%xmm3, %xmm4, %xmm4
	vmovdqa64	%xmm20, %xmm6
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa64	%xmm31, %xmm2
	vaesenc	%xmm2, %xmm4, %xmm4
	vmovdqa64	%xmm16, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovdqa64	%xmm16, %xmm17
	vmovdqa64	%xmm26, %xmm11
	vaesenc	%xmm11, %xmm4, %xmm4
	vmovdqa64	%xmm23, %xmm14
	vaesenc	%xmm14, %xmm4, %xmm4
	vmovdqa64	%xmm27, %xmm10
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa64	%xmm25, %xmm12
	vaesenc	%xmm12, %xmm4, %xmm4
	vmovdqa64	%xmm22, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovdqa64	%xmm21, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm18, %xmm9
	vaesenc	%xmm9, %xmm4, %xmm4
	vmovdqa64	%xmm28, %xmm7
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa64	%xmm19, %xmm13
	vaesenc	%xmm13, %xmm4, %xmm4
	vmovdqa64	%xmm30, %xmm8
	vaesenclast	%xmm8, %xmm4, %xmm4
	vpxor	(%r9), %xmm4, %xmm4
	vmovdqu	%xmm4, (%rax)
	vpxorq	%xmm0, %xmm24, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa64	%xmm16, %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm0
	vpxor	16(%r9), %xmm0, %xmm0
	addq	$32, %r9
	vmovdqu	%xmm0, 16(%rax)
	addq	$32, %rax
	addq	$-32, %r10
	vpaddd	.LCPI1_3(%rip), %xmm15, %xmm15
	cmpq	$15, %r10
	ja	.LBB1_44
	movq	%r9, %rsi
	movq	%rax, %rcx
	movq	%r10, %rdx
	vmovdqa	%xmm15, %xmm2
	vmovdqa64	%xmm30, %xmm8
	vmovdqa64	%xmm29, %xmm3
	vmovdqa64	%xmm28, %xmm7
	vmovdqa64	%xmm27, %xmm10
	vmovdqa64	%xmm26, %xmm11
	vmovdqa64	%xmm25, %xmm12
	vmovdqa64	%xmm23, %xmm14
	vmovdqa64	%xmm22, %xmm1
	vmovdqa64	%xmm21, %xmm5
	vmovdqa64	%xmm20, %xmm6
	vmovdqa64	%xmm19, %xmm13
	vmovdqa64	%xmm18, %xmm9
.LBB1_46:
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB1_48
	movl	$-1, %edi
	bzhil	%edx, %edi, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rsi), %xmm0 {%k1} {z}

	#NO_APP
	vpxorq	%xmm24, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	-112(%rsp), %xmm2, %xmm2
	vaesenc	-128(%rsp), %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm2, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	#APP

	vmovdqu8	%xmm0, (%rcx) {%k1}

	#NO_APP
.LBB1_48:
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_skylakex_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.long	0
	.long	4
	.long	5
	.long	3
.LCPI2_1:
	.long	1
	.long	0
	.long	4
	.long	5
.LCPI2_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.quad	4
	.quad	0
.LCPI2_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_8:
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
.LCPI2_16:
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
.LCPI2_17:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	10
	.long	0
	.long	0
	.long	0
.LCPI2_22:
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI2_23:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_7:
	.quad	-4467570830351532032
.LCPI2_9:
	.quad	4294967297
.LCPI2_10:
	.quad	8589934594
.LCPI2_11:
	.quad	17179869188
.LCPI2_12:
	.quad	34359738376
.LCPI2_13:
	.quad	68719476752
.LCPI2_14:
	.quad	137438953504
.LCPI2_15:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_24:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_decrypt,@function
haberdashery_aes256gcmsiv_skylakex_decrypt:
	.cfi_startproc
	subq	$280, %rsp
	.cfi_def_cfa_offset 288
	movq	288(%rsp), %r10
	xorl	%eax, %eax
	cmpq	320(%rsp), %r10
	jne	.LBB2_36
	cmpq	$12, %rdx
	jne	.LBB2_36
	movabsq	$68719476736, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_36
	cmpq	%rdx, %r10
	ja	.LBB2_36
	cmpq	$16, 304(%rsp)
	jb	.LBB2_36
	vmovq	4(%rsi), %xmm24
	vmovd	(%rsi), %xmm31
	vmovdqa	.LCPI2_1(%rip), %xmm0
	vpermi2d	%xmm24, %xmm31, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vpxor	.LCPI2_2(%rip), %xmm0, %xmm2
	vpxor	.LCPI2_3(%rip), %xmm0, %xmm9
	vpxor	.LCPI2_4(%rip), %xmm0, %xmm4
	vpxor	.LCPI2_5(%rip), %xmm0, %xmm1
	vpxor	.LCPI2_6(%rip), %xmm0, %xmm8
	vmovaps	16(%rdi), %xmm5
	vmovaps	32(%rdi), %xmm6
	vmovaps	48(%rdi), %xmm7
	vmovaps	64(%rdi), %xmm3
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	112(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	144(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	176(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rdi), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm8, %xmm8
	#NO_APP
	vmovaps	224(%rdi), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm9, %xmm9
	vaesenclast	%xmm3, %xmm4, %xmm4
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm8, %xmm8
	#NO_APP
	vpunpcklqdq	%xmm2, %xmm0, %xmm3
	vpbroadcastq	.LCPI2_7(%rip), %xmm10
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm5
	vpshufd	$78, %xmm0, %xmm7
	vpternlogq	$150, %xmm2, %xmm5, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpslldq	$8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpsrldq	$8, %xmm2, %xmm2
	vpshufd	$78, %xmm0, %xmm6
	vpternlogq	$150, %xmm2, %xmm5, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vmovdqa	%xmm6, (%rsp)
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm5
	vpshufd	$78, %xmm0, %xmm12
	vpternlogq	$150, %xmm2, %xmm5, %xmm12
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vmovdqa	%xmm7, 16(%rsp)
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm5
	vpshufd	$78, %xmm0, %xmm6
	vpternlogq	$150, %xmm2, %xmm5, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm6, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm0, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vmovdqa64	%xmm10, %xmm18
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm5
	vmovdqa	%xmm6, -16(%rsp)
	vpclmulqdq	$17, %xmm3, %xmm6, %xmm6
	vpxorq	%xmm5, %xmm6, %xmm16
	vunpcklpd	%xmm4, %xmm9, %xmm10
	vunpcklpd	%xmm8, %xmm1, %xmm13
	vpslldq	$4, %xmm10, %xmm4
	vxorpd	%xmm8, %xmm8, %xmm8
	vunpcklpd	%xmm9, %xmm8, %xmm6
	vinsertps	$55, %xmm9, %xmm0, %xmm7
	vpternlogq	$150, %xmm6, %xmm4, %xmm7
	vpbroadcastd	.LCPI2_24(%rip), %xmm20
	vpshufb	%xmm20, %xmm13, %xmm4
	vpbroadcastq	.LCPI2_9(%rip), %xmm6
	vaesenclast	%xmm6, %xmm4, %xmm5
	vmovapd	%xmm10, %xmm23
	vpternlogq	$150, %xmm7, %xmm10, %xmm5
	vpslldq	$4, %xmm13, %xmm4
	vunpcklpd	%xmm1, %xmm8, %xmm6
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm6, %xmm4, %xmm1
	vpshufd	$255, %xmm5, %xmm4
	vaesenclast	%xmm8, %xmm4, %xmm9
	vpternlogq	$150, %xmm1, %xmm13, %xmm9
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm4
	vpslldq	$12, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vpbroadcastq	.LCPI2_10(%rip), %xmm1
	vpshufb	%xmm20, %xmm9, %xmm4
	vaesenclast	%xmm1, %xmm4, %xmm14
	vmovdqa64	%xmm5, %xmm22
	vpternlogq	$150, %xmm6, %xmm5, %xmm14
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm4
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vpshufd	$255, %xmm14, %xmm1
	vaesenclast	%xmm8, %xmm1, %xmm7
	vmovdqa64	%xmm9, %xmm28
	vpternlogq	$150, %xmm6, %xmm9, %xmm7
	vpslldq	$4, %xmm14, %xmm1
	vpslldq	$8, %xmm14, %xmm4
	vpslldq	$12, %xmm14, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vpshufb	%xmm20, %xmm7, %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm4
	vaesenclast	%xmm4, %xmm1, %xmm5
	vpternlogq	$150, %xmm6, %xmm14, %xmm5
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm4
	vpslldq	$12, %xmm7, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vpshufd	$255, %xmm5, %xmm1
	vaesenclast	%xmm8, %xmm1, %xmm10
	vmovapd	%xmm7, %xmm11
	vpternlogq	$150, %xmm6, %xmm7, %xmm10
	vpshufb	%xmm20, %xmm10, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm4
	vaesenclast	%xmm4, %xmm1, %xmm7
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm4
	vpslldq	$12, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vmovaps	%xmm5, -32(%rsp)
	vpternlogq	$150, %xmm6, %xmm5, %xmm7
	vmovdqa	%xmm7, %xmm9
	vmovdqa	%xmm7, -96(%rsp)
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm4
	vpslldq	$12, %xmm10, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vpshufd	$255, %xmm7, %xmm1
	vaesenclast	%xmm8, %xmm1, %xmm5
	vmovaps	%xmm10, -48(%rsp)
	vpternlogq	$150, %xmm6, %xmm10, %xmm5
	vmovdqa	%xmm5, -64(%rsp)
	vpshufb	%xmm20, %xmm5, %xmm1
	vpbroadcastq	.LCPI2_13(%rip), %xmm4
	vaesenclast	%xmm4, %xmm1, %xmm7
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm4
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vpternlogq	$150, %xmm6, %xmm9, %xmm7
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm4
	vpslldq	$12, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm1, %xmm6
	vpshufd	$255, %xmm7, %xmm1
	vaesenclast	%xmm8, %xmm1, %xmm10
	vpternlogq	$150, %xmm6, %xmm5, %xmm10
	vpbroadcastq	.LCPI2_14(%rip), %xmm1
	vpshufb	%xmm20, %xmm10, %xmm4
	vaesenclast	%xmm1, %xmm4, %xmm6
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm2, %xmm15
	vpternlogq	$150, %xmm0, %xmm16, %xmm15
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vmovdqa64	%xmm7, %xmm27
	vpternlogq	$150, %xmm2, %xmm7, %xmm6
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpslldq	$12, %xmm10, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm9
	vpternlogq	$150, %xmm2, %xmm10, %xmm9
	cmpq	$96, %r8
	vmovdqa	%xmm6, -128(%rsp)
	vmovdqa	%xmm9, -112(%rsp)
	vmovdqa	%xmm15, 96(%rsp)
	jb	.LBB2_6
	vmovapd	%xmm10, %xmm17
	vmovapd	%xmm13, %xmm21
	vmovapd	%xmm14, %xmm16
	movq	%r8, %rax
	vmovdqa	16(%rsp), %xmm13
	vmovdqa	(%rsp), %xmm14
	vmovdqa	-16(%rsp), %xmm10
	.p2align	4, 0x90
.LBB2_24:
	vmovdqu	48(%rcx), %xmm0
	vmovdqu	64(%rcx), %xmm1
	vmovdqu	80(%rcx), %xmm2
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm9
	vpternlogq	$150, %xmm7, %xmm5, %xmm9
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm5
	vpternlogq	$150, %xmm4, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm6
	vpternlogq	$150, %xmm4, %xmm9, %xmm6
	vmovdqu	16(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm7
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm2
	vpternlogq	$150, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm1
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm6
	vpternlogq	$150, %xmm1, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm5
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	vpxor	(%rcx), %xmm8, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm2
	vpternlogq	$150, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm5
	vpternlogq	$150, %xmm0, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm0
	vmovdqa64	%xmm18, %xmm6
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm1
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm8
	vpternlogq	$150, %xmm0, %xmm4, %xmm8
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm0, %xmm1, %xmm8
	cmpq	$95, %rax
	ja	.LBB2_24
	vmovapd	%xmm16, %xmm14
	vmovdqa	-128(%rsp), %xmm6
	vmovdqa	-112(%rsp), %xmm9
	vmovapd	%xmm21, %xmm13
	vmovdqa64	%xmm27, %xmm15
	vmovapd	%xmm17, %xmm10
	jmp	.LBB2_7
.LBB2_6:
	movq	%r8, %rax
	vmovdqa64	%xmm27, %xmm15
.LBB2_7:
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm2
	vpslldq	$12, %xmm6, %xmm1
	vpshufb	%xmm20, %xmm9, %xmm4
	vpbroadcastq	.LCPI2_15(%rip), %xmm5
	movq	296(%rsp), %rdx
	cmpq	$16, %rax
	vmovapd	%xmm10, -80(%rsp)
	jb	.LBB2_8
	leaq	-16(%rax), %rsi
	testb	$16, %sil
	jne	.LBB2_19
	vpxor	(%rcx), %xmm8, %xmm6
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm8
	vmovapd	%xmm14, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm8, %xmm9
	vmovdqa64	%xmm18, %xmm14
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm6, %xmm8, %xmm8
	vmovapd	-128(%rsp), %xmm6
	vpternlogq	$150, %xmm9, %xmm7, %xmm8
	vmovdqa	-112(%rsp), %xmm9
	vmovapd	%xmm10, %xmm14
	movq	%rsi, %rax
.LBB2_19:
	vmovapd	%xmm11, %xmm7
	cmpq	$16, %rsi
	jb	.LBB2_9
	vmovapd	%xmm14, %xmm10
	.p2align	4, 0x90
.LBB2_21:
	vpxor	(%rcx), %xmm8, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vmovdqa64	%xmm18, %xmm14
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpternlogq	$150, %xmm6, %xmm8, %xmm9
	vpternlogq	$150, 16(%rcx), %xmm7, %xmm9
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm8
	vpslldq	$8, %xmm7, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpsrldq	$8, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm6, %xmm9
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm14, %xmm6, %xmm9
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm8, %xmm9, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	cmpq	$15, %rax
	ja	.LBB2_21
	movq	%rax, %rsi
	vmovapd	%xmm10, %xmm14
	vmovapd	%xmm11, %xmm7
	vmovapd	-128(%rsp), %xmm6
	vmovdqa	-112(%rsp), %xmm9
	jmp	.LBB2_9
.LBB2_8:
	movq	%rax, %rsi
	vmovapd	%xmm11, %xmm7
.LBB2_9:
	vmovapd	%xmm14, %xmm26
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vaesenclast	%xmm5, %xmm4, %xmm11
	vmovdqu64	(%rdx), %xmm20
	vmovapd	%xmm7, %xmm30
	testq	%rsi, %rsi
	je	.LBB2_11
	movl	$-1, %eax
	bzhil	%esi, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vmovdqa64	%xmm18, %xmm7
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm0, %xmm5, %xmm8
	vpternlogq	$150, %xmm4, %xmm2, %xmm8
.LBB2_11:
	vmovdqa64	%xmm22, %xmm7
	vmovq	%r10, %xmm29
	vmovq	%r8, %xmm16
	movq	312(%rsp), %rdx
	vpternlogq	$150, %xmm1, %xmm6, %xmm11
	vporq	.LCPI2_16(%rip), %xmm20, %xmm22
	cmpq	$96, %r10
	jb	.LBB2_12
	vmovdqa	%xmm12, 48(%rsp)
	vpaddd	.LCPI2_2(%rip), %xmm22, %xmm1
	vpaddd	.LCPI2_3(%rip), %xmm22, %xmm2
	vpaddd	.LCPI2_4(%rip), %xmm22, %xmm4
	vpaddd	.LCPI2_5(%rip), %xmm22, %xmm5
	vmovapd	%xmm6, %xmm12
	vpaddd	.LCPI2_6(%rip), %xmm22, %xmm6
	vpxorq	%xmm23, %xmm22, %xmm0
	vpxorq	%xmm1, %xmm23, %xmm1
	vpxorq	%xmm2, %xmm23, %xmm2
	vpxorq	%xmm4, %xmm23, %xmm4
	vpxorq	%xmm5, %xmm23, %xmm5
	vmovaps	%xmm23, 80(%rsp)
	vpxorq	%xmm6, %xmm23, %xmm6
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	#NO_APP
	vmovdqa	%xmm7, 176(%rsp)
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm28, %xmm7
	vmovdqa64	%xmm28, 64(%rsp)
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovapd	%xmm26, %xmm7
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovapd	%xmm30, %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	#NO_APP
	vmovaps	-32(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovaps	-48(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovaps	-96(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovaps	-64(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	#NO_APP
	vmovaps	-80(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	#NO_APP
	vmovdqa	%xmm11, 32(%rsp)
	#APP
	vaesenclast	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm11, %xmm4, %xmm4
	vaesenclast	%xmm11, %xmm5, %xmm5
	vaesenclast	%xmm11, %xmm6, %xmm6
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm23
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vpxor	16(%r9), %xmm1, %xmm11
	vpxor	32(%r9), %xmm2, %xmm12
	vmovdqa	%xmm15, %xmm0
	vmovapd	%xmm13, %xmm15
	vxorpd	48(%r9), %xmm4, %xmm13
	vpxor	64(%r9), %xmm5, %xmm14
	vpxor	80(%r9), %xmm6, %xmm7
	vmovdqu64	%xmm23, (%rdx)
	vmovdqu	%xmm11, 16(%rdx)
	vmovdqu	%xmm12, 32(%rdx)
	vmovupd	%xmm13, 48(%rdx)
	vmovdqu	%xmm14, 64(%rdx)
	addq	$-96, %r10
	vmovdqu	%xmm7, 80(%rdx)
	vpaddd	.LCPI2_17(%rip), %xmm22, %xmm21
	cmpq	$96, %r10
	jb	.LBB2_27
	vmovapd	%xmm26, %xmm19
	vmovdqa64	%xmm20, 192(%rsp)
	vmovdqa64	%xmm16, 208(%rsp)
	vmovdqa64	%xmm29, 224(%rsp)
	vmovdqa64	%xmm31, 240(%rsp)
	vmovdqa64	%xmm24, 256(%rsp)
	vmovdqa64	80(%rsp), %xmm31
	vmovapd	%xmm15, 160(%rsp)
	vmovdqa64	64(%rsp), %xmm28
	vmovapd	%xmm26, 144(%rsp)
	vmovapd	%xmm10, 128(%rsp)
	vmovaps	-32(%rsp), %xmm19
	vmovaps	-48(%rsp), %xmm29
	vmovaps	-96(%rsp), %xmm26
	vmovaps	-64(%rsp), %xmm16
	vmovdqa	%xmm0, 112(%rsp)
	vmovaps	-80(%rsp), %xmm20
	vmovaps	-128(%rsp), %xmm30
	vmovaps	48(%rsp), %xmm27
	vmovaps	96(%rsp), %xmm25
	vmovdqa64	32(%rsp), %xmm24
	.p2align	4, 0x90
.LBB2_30:
	vpaddd	.LCPI2_18(%rip), %xmm22, %xmm0
	vpaddd	.LCPI2_19(%rip), %xmm22, %xmm1
	vpaddd	.LCPI2_20(%rip), %xmm22, %xmm2
	vpaddd	.LCPI2_21(%rip), %xmm22, %xmm4
	vpaddd	.LCPI2_22(%rip), %xmm22, %xmm5
	vpxorq	%xmm31, %xmm21, %xmm6
	vpxorq	%xmm0, %xmm31, %xmm15
	vpxorq	%xmm1, %xmm31, %xmm1
	vpxorq	%xmm2, %xmm31, %xmm10
	vpxorq	%xmm4, %xmm31, %xmm4
	vpxorq	%xmm5, %xmm31, %xmm5
	vpxor	%xmm0, %xmm0, %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm9, %xmm9, %xmm9
	vmovdqa64	%xmm18, %xmm22
	vmovdqa64	%xmm11, %xmm18
	vmovapd	%xmm13, %xmm17
	vmovaps	160(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm11
	vpxor	%xmm2, %xmm11, %xmm2
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm11
	vpxor	%xmm2, %xmm11, %xmm2
	#NO_APP
	vmovaps	176(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovdqa	%xmm12, %xmm11
	vmovdqa64	%xmm28, %xmm13
	vmovaps	16(%rsp), %xmm12
	#APP
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm14, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm12, %xmm14, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm14, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm12, %xmm14, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovaps	144(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rsp), %xmm12
	vmovaps	(%rsp), %xmm13
	vmovapd	%xmm17, %xmm14
	#APP
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovaps	%xmm19, %xmm7
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm29, %xmm7
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm26, %xmm12
	vmovaps	-16(%rsp), %xmm13
	#APP
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm11, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm11, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm11, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm11, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovaps	%xmm16, %xmm7
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rsp), %xmm11
	vmovaps	%xmm25, %xmm12
	vmovdqa64	%xmm18, %xmm13
	#APP
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm13, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm12, %xmm13, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm13, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm12, %xmm13, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	#NO_APP
	vpxorq	%xmm8, %xmm23, %xmm7
	vmovaps	%xmm20, %xmm8
	#APP
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm30, %xmm11
	vmovaps	%xmm27, %xmm12
	#APP
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$0, %xmm12, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm7, %xmm8
	vpxor	%xmm8, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm12, %xmm7, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	#NO_APP
	vmovaps	-112(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm24, %xmm7
	#APP
	vaesenclast	%xmm7, %xmm6, %xmm6
	vaesenclast	%xmm7, %xmm15, %xmm15
	vaesenclast	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm7, %xmm10, %xmm10
	vaesenclast	%xmm7, %xmm4, %xmm4
	vaesenclast	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpxorq	(%rcx), %xmm6, %xmm23
	vpxor	%xmm7, %xmm7, %xmm7
	vpunpcklqdq	%xmm2, %xmm7, %xmm6
	vpunpckhqdq	%xmm7, %xmm2, %xmm2
	vpxor	%xmm6, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm6
	vmovdqa64	%xmm22, %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm2, %xmm9, %xmm8
	vpshufd	$78, %xmm0, %xmm2
	vmovdqa64	%xmm22, %xmm18
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	16(%rcx), %xmm15, %xmm11
	vpxor	32(%rcx), %xmm1, %xmm12
	vxorpd	48(%rcx), %xmm10, %xmm13
	vxorpd	64(%rcx), %xmm4, %xmm14
	vpxor	80(%rcx), %xmm5, %xmm7
	vpternlogq	$150, %xmm0, %xmm2, %xmm8
	addq	$96, %rcx
	vmovdqu64	%xmm23, (%rax)
	vmovdqu	%xmm11, 16(%rax)
	vmovdqu	%xmm12, 32(%rax)
	vmovupd	%xmm13, 48(%rax)
	vmovupd	%xmm14, 64(%rax)
	vmovdqu	%xmm7, 80(%rax)
	addq	$96, %rax
	addq	$-96, %r10
	vmovdqa64	%xmm21, %xmm22
	vpaddd	.LCPI2_17(%rip), %xmm21, %xmm21
	cmpq	$95, %r10
	ja	.LBB2_30
	vmovapd	160(%rsp), %xmm15
	vmovdqa64	256(%rsp), %xmm24
	vmovapd	144(%rsp), %xmm26
	vmovapd	128(%rsp), %xmm30
	vmovdqa64	240(%rsp), %xmm31
	vmovdqa64	112(%rsp), %xmm27
	vmovdqa	-112(%rsp), %xmm9
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm6
	vmovdqa	-16(%rsp), %xmm10
	vmovdqa64	224(%rsp), %xmm29
	vmovdqa64	208(%rsp), %xmm16
	vmovdqa64	192(%rsp), %xmm20
	jmp	.LBB2_28
.LBB2_12:
	vmovdqa	-32(%rsp), %xmm6
	vmovdqa	-96(%rsp), %xmm5
	vmovapd	%xmm23, %xmm1
	vmovdqa64	.LCPI2_0(%rip), %xmm21
	vpunpcklqdq	%xmm29, %xmm16, %xmm16
	cmpq	$16, %r10
	jae	.LBB2_32
.LBB2_14:
	movq	%r9, %rcx
	movq	%rdx, %rax
	vmovdqa64	%xmm22, %xmm4
	vmovdqa	%xmm7, %xmm2
	vmovdqa64	%xmm28, %xmm7
	vmovapd	%xmm1, %xmm27
	jmp	.LBB2_15
.LBB2_27:
	vmovapd	%xmm10, %xmm30
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm6
	vmovdqa	-16(%rsp), %xmm10
.LBB2_28:
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm5, %xmm4
	vpternlogq	$150, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm13, %xmm6, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm13, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm14, %xmm5, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm5
	vpternlogq	$150, %xmm5, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm12, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm10, %xmm5
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm10, %xmm0
	vmovdqa	96(%rsp), %xmm6
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm2
	vpternlogq	$150, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$17, %xmm12, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm5
	vpxorq	%xmm23, %xmm8, %xmm6
	vpternlogq	$150, %xmm0, %xmm4, %xmm5
	vmovdqa	48(%rsp), %xmm7
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm4
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm0
	vpslldq	$8, %xmm4, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm0
	vmovdqa64	%xmm18, %xmm6
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm8
	vpternlogq	$150, %xmm0, %xmm5, %xmm8
	vpsrldq	$8, %xmm4, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm8
	movq	%rcx, %r9
	movq	%rax, %rdx
	vmovdqa64	%xmm21, %xmm22
	vmovapd	80(%rsp), %xmm1
	vmovdqa	176(%rsp), %xmm7
	vmovdqa64	64(%rsp), %xmm28
	vmovdqa	-32(%rsp), %xmm6
	vmovdqa	-96(%rsp), %xmm5
	vmovapd	%xmm15, %xmm13
	vmovdqa	32(%rsp), %xmm11
	vmovdqa64	%xmm27, %xmm15
	vmovdqa64	.LCPI2_0(%rip), %xmm21
	vpunpcklqdq	%xmm29, %xmm16, %xmm16
	cmpq	$16, %r10
	jb	.LBB2_14
.LBB2_32:
	vmovdqa64	.LCPI2_2(%rip), %xmm23
	vmovdqa64	-48(%rsp), %xmm17
	vmovapd	%xmm1, %xmm27
	vmovdqa	-64(%rsp), %xmm1
	vmovdqa	-80(%rsp), %xmm10
	vmovdqa	%xmm9, %xmm12
	vmovdqa	-128(%rsp), %xmm9
	vmovdqa	%xmm7, %xmm2
	vmovapd	%xmm26, %xmm14
	vmovdqa64	%xmm28, %xmm7
	vmovapd	%xmm30, %xmm0
	.p2align	4, 0x90
.LBB2_33:
	vpxorq	%xmm27, %xmm22, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa64	%xmm17, %xmm6
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenclast	%xmm11, %xmm4, %xmm4
	vpxor	(%r9), %xmm4, %xmm5
	vpxor	%xmm5, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm3, %xmm4
	vpslldq	$8, %xmm6, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa64	%xmm3, %xmm29
	vmovdqa64	%xmm18, %xmm3
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm8
	vmovdqa64	%xmm29, %xmm3
	vpxor	%xmm4, %xmm8, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	leaq	16(%r9), %rcx
	leaq	16(%rdx), %rax
	addq	$-16, %r10
	vpaddd	%xmm23, %xmm22, %xmm4
	vmovdqu	%xmm5, (%rdx)
	vpsrldq	$8, %xmm6, %xmm5
	vmovdqa	-32(%rsp), %xmm6
	vpternlogq	$150, %xmm5, %xmm7, %xmm8
	vmovdqa64	%xmm28, %xmm7
	vmovdqa	-96(%rsp), %xmm5
	movq	%rax, %rdx
	vmovdqa64	%xmm4, %xmm22
	movq	%rcx, %r9
	cmpq	$15, %r10
	ja	.LBB2_33
.LBB2_15:
	vmovdqa	%xmm2, %xmm14
	vpermt2d	%xmm24, %xmm21, %xmm31
	vpsllq	$3, %xmm16, %xmm0
	testq	%r10, %r10
	je	.LBB2_16
	movl	$-1, %edx
	bzhil	%r10d, %edx, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rcx), %xmm1 {%k1} {z}

	#NO_APP
	vmovdqa64	%xmm27, %xmm10
	vpxorq	%xmm27, %xmm4, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovapd	%xmm26, %xmm4
	vaesenc	%xmm4, %xmm2, %xmm2
	vmovapd	%xmm30, %xmm12
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	-48(%rsp), %xmm7
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vmovdqa	-64(%rsp), %xmm4
	vmovdqa64	%xmm4, %xmm17
	vaesenc	%xmm4, %xmm2, %xmm2
	vmovdqa64	%xmm15, %xmm19
	vaesenc	%xmm15, %xmm2, %xmm2
	vmovdqa	-80(%rsp), %xmm15
	vaesenc	%xmm15, %xmm2, %xmm2
	vmovdqa	-128(%rsp), %xmm4
	vmovdqa64	%xmm4, %xmm16
	vaesenc	%xmm4, %xmm2, %xmm2
	vmovdqa	-112(%rsp), %xmm9
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenclast	%xmm11, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	#APP

	vmovdqu8	%xmm1, (%rax) {%k1}

	#NO_APP
	#APP

	vmovdqu8	(%rax), %xmm1 {%k1} {z}

	#NO_APP
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vmovdqa	%xmm3, %xmm8
	vmovdqa64	%xmm18, %xmm3
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm4
	vmovdqa	%xmm8, %xmm3
	vpxor	%xmm1, %xmm4, %xmm8
	vmovdqa	%xmm7, %xmm4
	vmovdqa64	%xmm28, %xmm7
	vpsrldq	$8, %xmm2, %xmm1
	vpternlogq	$150, %xmm1, %xmm5, %xmm8
	vmovdqa	-96(%rsp), %xmm5
	jmp	.LBB2_35
.LBB2_16:
	vmovdqa	-48(%rsp), %xmm4
	vmovdqa64	-64(%rsp), %xmm17
	vmovdqa64	%xmm15, %xmm19
	vmovdqa	-80(%rsp), %xmm15
	vmovdqa64	-128(%rsp), %xmm16
	vmovdqa	-112(%rsp), %xmm9
	vmovdqa64	%xmm27, %xmm10
	vmovapd	%xmm30, %xmm12
.LBB2_35:
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vmovdqa64	%xmm18, %xmm8
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm31, %xmm0, %xmm3
	vpsrldq	$8, %xmm1, %xmm0
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpternlogq	$120, .LCPI2_23(%rip), %xmm3, %xmm10
	vaesenc	%xmm13, %xmm10, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovapd	%xmm26, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa64	%xmm17, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa64	%xmm19, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vmovdqa64	%xmm16, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm0, %xmm0
	vpxorq	%xmm20, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_36:
	addq	$280, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_is_supported,@function
haberdashery_aes256gcmsiv_skylakex_is_supported:
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
	.size	haberdashery_aes256gcmsiv_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

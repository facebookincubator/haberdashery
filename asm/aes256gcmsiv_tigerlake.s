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
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_init,@function
haberdashery_aes256gcmsiv_tigerlake_init:
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
	.size	haberdashery_aes256gcmsiv_tigerlake_init, .Lfunc_end0-haberdashery_aes256gcmsiv_tigerlake_init
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
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_encrypt,@function
haberdashery_aes256gcmsiv_tigerlake_encrypt:
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
	subq	$432, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	480(%rsp), %r12
	xorl	%ebp, %ebp
	cmpq	496(%rsp), %r12
	jne	.LBB1_45
	cmpq	$12, %rdx
	jne	.LBB1_45
	movq	%r8, %r14
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	jae	.LBB1_45
	cmpq	%rax, %r12
	jae	.LBB1_45
	cmpq	$16, 512(%rsp)
	jne	.LBB1_45
	movq	%r9, %rbx
	vmovq	4(%rsi), %xmm21
	vmovd	(%rsi), %xmm20
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vpermi2d	%xmm21, %xmm20, %xmm0
	vpxor	(%rdi), %xmm0, %xmm4
	vpxor	.LCPI1_2(%rip), %xmm4, %xmm5
	vpxor	.LCPI1_3(%rip), %xmm4, %xmm2
	vpxor	.LCPI1_4(%rip), %xmm4, %xmm1
	vpxor	.LCPI1_5(%rip), %xmm4, %xmm0
	vpxor	.LCPI1_6(%rip), %xmm4, %xmm3
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovdqa	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm3, %xmm3
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm23
	vpclmulqdq	$0, %xmm23, %xmm23, %xmm4
	vpbroadcastq	.LCPI1_7(%rip), %xmm22
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm23, %xmm23, %xmm6
	vpshufd	$78, %xmm4, %xmm24
	vpternlogq	$150, %xmm5, %xmm6, %xmm24
	vpclmulqdq	$0, %xmm24, %xmm24, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm24, %xmm24, %xmm6
	vpshufd	$78, %xmm4, %xmm25
	vpternlogq	$150, %xmm5, %xmm6, %xmm25
	vpclmulqdq	$0, %xmm25, %xmm25, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm25, %xmm25, %xmm6
	vpshufd	$78, %xmm4, %xmm26
	vpternlogq	$150, %xmm5, %xmm6, %xmm26
	vpclmulqdq	$0, %xmm23, %xmm24, %xmm4
	vpclmulqdq	$16, %xmm23, %xmm24, %xmm5
	vpclmulqdq	$1, %xmm23, %xmm24, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm23, %xmm24, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm27
	vpternlogq	$150, %xmm5, %xmm6, %xmm27
	vpclmulqdq	$0, %xmm27, %xmm27, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm27, %xmm27, %xmm6
	vpshufd	$78, %xmm4, %xmm28
	vpternlogq	$150, %xmm5, %xmm6, %xmm28
	vpclmulqdq	$0, %xmm23, %xmm28, %xmm4
	vpclmulqdq	$16, %xmm23, %xmm28, %xmm5
	vpclmulqdq	$1, %xmm23, %xmm28, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm23, %xmm28, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm29
	vpternlogq	$150, %xmm5, %xmm6, %xmm29
	vpclmulqdq	$0, %xmm23, %xmm25, %xmm4
	vpclmulqdq	$16, %xmm23, %xmm25, %xmm5
	vpclmulqdq	$1, %xmm23, %xmm25, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm23, %xmm25, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm30
	vpternlogq	$150, %xmm5, %xmm6, %xmm30
	vpunpcklqdq	%xmm1, %xmm2, %xmm18
	vpunpcklqdq	%xmm3, %xmm0, %xmm5
	vpslldq	$4, %xmm18, %xmm3
	vxorpd	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm2, %xmm1, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm3, %xmm2
	vpbroadcastd	.LCPI1_21(%rip), %xmm31
	vpshufb	%xmm31, %xmm5, %xmm3
	vpbroadcastq	.LCPI1_9(%rip), %xmm4
	vaesenclast	%xmm4, %xmm3, %xmm4
	vpternlogq	$150, %xmm2, %xmm18, %xmm4
	vmovdqa	%xmm4, 288(%rsp)
	vpslldq	$4, %xmm5, %xmm2
	vpunpcklqdq	%xmm0, %xmm1, %xmm3
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm1, %xmm2, %xmm6
	vmovaps	%xmm5, 304(%rsp)
	vpternlogq	$150, %xmm0, %xmm5, %xmm6
	vmovdqa	%xmm6, 272(%rsp)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpbroadcastq	.LCPI1_10(%rip), %xmm0
	vpshufb	%xmm31, %xmm6, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vmovdqa	%xmm5, 256(%rsp)
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm2
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vmovdqa	%xmm4, 240(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm31, %xmm4, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm6
	vpternlogq	$150, %xmm3, %xmm5, %xmm6
	vmovdqa	%xmm6, 224(%rsp)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vmovdqa	%xmm5, 208(%rsp)
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm2
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm31, %xmm5, %xmm0
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vmovdqa	%xmm4, 192(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm4, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm6
	vpternlogq	$150, %xmm3, %xmm5, %xmm6
	vmovdqa	%xmm6, 176(%rsp)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpbroadcastq	.LCPI1_13(%rip), %xmm0
	vpshufb	%xmm31, %xmm6, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vmovdqa	%xmm5, 160(%rsp)
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm2
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm7
	vpternlogq	$150, %xmm3, %xmm6, %xmm7
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm31, %xmm7, %xmm0
	vpbroadcastq	.LCPI1_14(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm8
	vpternlogq	$150, %xmm3, %xmm5, %xmm8
	vpslldq	$4, %xmm7, %xmm2
	vpslldq	$8, %xmm7, %xmm3
	vpslldq	$12, %xmm7, %xmm0
	vpshufd	$255, %xmm8, %xmm4
	cmpq	$128, %r14
	vmovdqa	%xmm8, 16(%rsp)
	jae	.LBB1_32
	vpxor	%xmm14, %xmm14, %xmm14
	movq	%r14, %rax
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	vaesenclast	%xmm1, %xmm4, %xmm5
	cmpq	$16, %rax
	jae	.LBB1_8
	jmp	.LBB1_12
.LBB1_32:
	vmovapd	%xmm7, %xmm19
	vpxor	%xmm14, %xmm14, %xmm14
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB1_33:
	vmovdqu	16(%rcx), %xmm5
	vmovdqu	32(%rcx), %xmm6
	vmovdqu	48(%rcx), %xmm7
	vmovdqu	64(%rcx), %xmm8
	vmovdqu	80(%rcx), %xmm9
	vmovdqu	96(%rcx), %xmm10
	vmovdqu	112(%rcx), %xmm11
	addq	$-128, %rax
	vpxor	(%rcx), %xmm14, %xmm12
	subq	$-128, %rcx
	vpclmulqdq	$0, %xmm11, %xmm23, %xmm13
	vpclmulqdq	$1, %xmm11, %xmm23, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm23, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm11, %xmm23, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm24, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm24, %xmm16
	vpclmulqdq	$16, %xmm10, %xmm24, %xmm17
	vpternlogq	$150, %xmm16, %xmm14, %xmm17
	vpclmulqdq	$17, %xmm10, %xmm24, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm27, %xmm14
	vpternlogq	$150, %xmm13, %xmm15, %xmm14
	vpclmulqdq	$1, %xmm9, %xmm27, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm27, %xmm15
	vpternlogq	$150, %xmm13, %xmm17, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm27, %xmm9
	vpternlogq	$150, %xmm11, %xmm10, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm25, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm25, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm25, %xmm13
	vpternlogq	$150, %xmm11, %xmm15, %xmm13
	vpclmulqdq	$17, %xmm8, %xmm25, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm30, %xmm11
	vpternlogq	$150, %xmm10, %xmm14, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm30, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm30, %xmm14
	vpternlogq	$150, %xmm10, %xmm13, %xmm14
	vpclmulqdq	$17, %xmm7, %xmm30, %xmm7
	vpternlogq	$150, %xmm8, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm28, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm28, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm28, %xmm10
	vpternlogq	$150, %xmm9, %xmm14, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm28, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm29, %xmm9
	vpternlogq	$150, %xmm8, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm29, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm29, %xmm11
	vpternlogq	$150, %xmm8, %xmm10, %xmm11
	vpclmulqdq	$17, %xmm5, %xmm29, %xmm5
	vpternlogq	$150, %xmm6, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm26, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm26, %xmm7
	vpclmulqdq	$16, %xmm12, %xmm26, %xmm8
	vpternlogq	$150, %xmm7, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm12, %xmm26, %xmm7
	vpslldq	$8, %xmm8, %xmm10
	vpternlogq	$150, %xmm6, %xmm9, %xmm10
	vpsrldq	$8, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm22, %xmm10, %xmm8
	vpshufd	$78, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm22, %xmm8, %xmm9
	vpternlogq	$150, %xmm7, %xmm5, %xmm9
	vpshufd	$78, %xmm8, %xmm14
	vpternlogq	$150, %xmm6, %xmm9, %xmm14
	cmpq	$128, %rax
	jae	.LBB1_33
	vmovapd	%xmm19, %xmm7
	vmovdqa	16(%rsp), %xmm8
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	vaesenclast	%xmm1, %xmm4, %xmm5
	cmpq	$16, %rax
	jb	.LBB1_12
.LBB1_8:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_10
	vpxor	(%rcx), %xmm14, %xmm1
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm1, %xmm23, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm23, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm23, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm23, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm22, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm22, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm2, %xmm14
	vpternlogq	$150, %xmm3, %xmm1, %xmm14
	movq	%rdx, %rax
.LBB1_10:
	cmpq	$16, %rdx
	jb	.LBB1_13
	.p2align	4, 0x90
.LBB1_11:
	vpxor	(%rcx), %xmm14, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm23, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm23, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm23, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm23, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm22, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm22, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, 16(%rcx), %xmm4, %xmm1
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm1, %xmm23, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm23, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm23, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm23, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm22, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm22, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm2, %xmm14
	vpternlogq	$150, %xmm3, %xmm1, %xmm14
	cmpq	$15, %rax
	ja	.LBB1_11
.LBB1_12:
	movq	%rax, %rdx
.LBB1_13:
	vmovaps	%xmm18, 320(%rsp)
	vmovapd	%xmm7, 144(%rsp)
	vpternlogq	$150, %xmm0, %xmm7, %xmm5
	testq	%rdx, %rdx
	vmovdqa	%xmm5, 48(%rsp)
	vmovdqa64	%xmm22, 128(%rsp)
	vmovdqa64	%xmm23, 112(%rsp)
	je	.LBB1_15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	vmovdqa64	%xmm20, 64(%rsp)
	vmovdqa64	%xmm21, 32(%rsp)
	vmovdqa64	%xmm24, 80(%rsp)
	vmovdqa64	%xmm25, 416(%rsp)
	vmovdqa64	%xmm26, 400(%rsp)
	vmovdqa64	%xmm27, 384(%rsp)
	vmovdqa64	%xmm28, 368(%rsp)
	vmovdqa64	%xmm29, 352(%rsp)
	vmovdqa64	%xmm30, 336(%rsp)
	vmovdqa	%xmm14, 96(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vpbroadcastd	.LCPI1_21(%rip), %xmm31
	vmovdqa64	336(%rsp), %xmm30
	vmovdqa64	352(%rsp), %xmm29
	vmovdqa64	368(%rsp), %xmm28
	vmovdqa64	384(%rsp), %xmm27
	vmovdqa64	400(%rsp), %xmm26
	vmovdqa64	416(%rsp), %xmm25
	vmovdqa64	80(%rsp), %xmm24
	vmovdqa64	112(%rsp), %xmm23
	vmovdqa64	128(%rsp), %xmm22
	vmovdqa64	32(%rsp), %xmm21
	vmovdqa	48(%rsp), %xmm5
	vmovdqa64	64(%rsp), %xmm20
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm23, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm23, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm23, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm23, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm22, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm22, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm14
	vpternlogq	$150, %xmm2, %xmm0, %xmm14
.LBB1_15:
	vpslldq	$4, %xmm8, %xmm2
	vpslldq	$8, %xmm8, %xmm3
	vpslldq	$12, %xmm8, %xmm0
	vpshufb	%xmm31, %xmm5, %xmm4
	vpbroadcastq	.LCPI1_15(%rip), %xmm5
	vmovq	%r12, %xmm6
	vmovq	%r14, %xmm7
	cmpq	$128, %r12
	jae	.LBB1_35
	movq	%r12, %rax
	movq	%rbx, %rsi
	jmp	.LBB1_17
.LBB1_35:
	movq	%rbx, %rsi
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB1_36:
	vmovdqu	16(%rsi), %xmm1
	vmovdqu	32(%rsi), %xmm8
	vmovdqu	48(%rsi), %xmm9
	vmovdqu	64(%rsi), %xmm10
	vmovdqu	80(%rsi), %xmm11
	vmovdqu	96(%rsi), %xmm12
	vmovdqu	112(%rsi), %xmm13
	addq	$-128, %rax
	vpxor	(%rsi), %xmm14, %xmm14
	subq	$-128, %rsi
	vpclmulqdq	$0, %xmm13, %xmm23, %xmm15
	vpclmulqdq	$1, %xmm13, %xmm23, %xmm16
	vpclmulqdq	$16, %xmm13, %xmm23, %xmm17
	vpxorq	%xmm16, %xmm17, %xmm16
	vpclmulqdq	$17, %xmm13, %xmm23, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm24, %xmm17
	vpclmulqdq	$1, %xmm12, %xmm24, %xmm18
	vpclmulqdq	$16, %xmm12, %xmm24, %xmm19
	vpternlogq	$150, %xmm18, %xmm16, %xmm19
	vpclmulqdq	$17, %xmm12, %xmm24, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm27, %xmm16
	vpternlogq	$150, %xmm15, %xmm17, %xmm16
	vpclmulqdq	$1, %xmm11, %xmm27, %xmm15
	vpclmulqdq	$16, %xmm11, %xmm27, %xmm17
	vpternlogq	$150, %xmm15, %xmm19, %xmm17
	vpclmulqdq	$17, %xmm11, %xmm27, %xmm11
	vpternlogq	$150, %xmm13, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm25, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm25, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm25, %xmm15
	vpternlogq	$150, %xmm13, %xmm17, %xmm15
	vpclmulqdq	$17, %xmm10, %xmm25, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm30, %xmm13
	vpternlogq	$150, %xmm12, %xmm16, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm30, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm30, %xmm16
	vpternlogq	$150, %xmm12, %xmm15, %xmm16
	vpclmulqdq	$17, %xmm9, %xmm30, %xmm9
	vpternlogq	$150, %xmm10, %xmm11, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm28, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm28, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm28, %xmm12
	vpternlogq	$150, %xmm11, %xmm16, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm28, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm29, %xmm11
	vpternlogq	$150, %xmm10, %xmm13, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm29, %xmm10
	vpclmulqdq	$16, %xmm1, %xmm29, %xmm13
	vpternlogq	$150, %xmm10, %xmm12, %xmm13
	vpclmulqdq	$17, %xmm1, %xmm29, %xmm1
	vpternlogq	$150, %xmm8, %xmm9, %xmm1
	vpclmulqdq	$0, %xmm14, %xmm26, %xmm8
	vpclmulqdq	$1, %xmm14, %xmm26, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm26, %xmm10
	vpternlogq	$150, %xmm9, %xmm13, %xmm10
	vpclmulqdq	$17, %xmm14, %xmm26, %xmm9
	vpslldq	$8, %xmm10, %xmm12
	vpternlogq	$150, %xmm8, %xmm11, %xmm12
	vpsrldq	$8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm22, %xmm12, %xmm10
	vpshufd	$78, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm22, %xmm10, %xmm11
	vpternlogq	$150, %xmm9, %xmm1, %xmm11
	vpshufd	$78, %xmm10, %xmm14
	vpternlogq	$150, %xmm8, %xmm11, %xmm14
	cmpq	$128, %rax
	jae	.LBB1_36
	vmovapd	16(%rsp), %xmm8
.LBB1_17:
	vmovdqa	.LCPI1_0(%rip), %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	vaesenclast	%xmm5, %xmm4, %xmm9
	vpunpcklqdq	%xmm6, %xmm7, %xmm2
	cmpq	$16, %rax
	jb	.LBB1_22
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_20
	vpxor	(%rsi), %xmm14, %xmm3
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm3, %xmm23, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm23, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm23, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm23, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm14
	vpternlogq	$150, %xmm5, %xmm3, %xmm14
	movq	%rdx, %rax
.LBB1_20:
	cmpq	$16, %rdx
	jb	.LBB1_23
	.p2align	4, 0x90
.LBB1_21:
	vpxor	(%rsi), %xmm14, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm23, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm23, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm23, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm23, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpternlogq	$150, %xmm3, %xmm5, %xmm6
	vpshufd	$78, %xmm4, %xmm3
	vpternlogq	$150, 16(%rsi), %xmm6, %xmm3
	addq	$-32, %rax
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm3, %xmm23, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm23, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm23, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm23, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm22, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm14
	vpternlogq	$150, %xmm5, %xmm3, %xmm14
	cmpq	$15, %rax
	ja	.LBB1_21
.LBB1_22:
	movq	%rax, %rdx
.LBB1_23:
	movq	504(%rsp), %r14
	vpermt2d	%xmm21, %xmm1, %xmm20
	vpternlogq	$150, %xmm0, %xmm8, %xmm9
	vmovdqa	%xmm9, 32(%rsp)
	vpsllq	$3, %xmm2, %xmm0
	testq	%rdx, %rdx
	je	.LBB1_25
	vmovdqa	%xmm0, 80(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	vmovdqa64	%xmm20, 64(%rsp)
	vmovdqa	%xmm14, 96(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa64	112(%rsp), %xmm23
	vmovdqa64	128(%rsp), %xmm22
	vmovdqa64	64(%rsp), %xmm20
	vmovapd	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm23, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm23, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm23, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm23, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm22, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm22, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm14
	vpternlogq	$150, %xmm2, %xmm0, %xmm14
	vmovdqa	80(%rsp), %xmm0
.LBB1_25:
	vpxor	%xmm0, %xmm14, %xmm0
	movq	488(%rsp), %rax
	vpclmulqdq	$0, %xmm0, %xmm23, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm23, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm23, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm23, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm22, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm22, %xmm1, %xmm3
	vpternlogq	$150, %xmm20, %xmm0, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vmovdqa64	320(%rsp), %xmm18
	vpternlogq	$108, .LCPI1_16(%rip), %xmm18, %xmm0
	vmovdqa	304(%rsp), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	288(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	272(%rsp), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	256(%rsp), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	240(%rsp), %xmm9
	vaesenc	%xmm9, %xmm0, %xmm0
	vmovdqa	224(%rsp), %xmm10
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	208(%rsp), %xmm11
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	176(%rsp), %xmm13
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	160(%rsp), %xmm14
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa	144(%rsp), %xmm15
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	32(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, (%r14)
	vpor	.LCPI1_17(%rip), %xmm0, %xmm8
	cmpq	$128, %r12
	jb	.LBB1_29
	vmovdqa64	.LCPI1_4(%rip), %xmm20
	vmovdqa64	.LCPI1_5(%rip), %xmm21
	vmovdqa64	%xmm4, %xmm27
	vmovdqa64	.LCPI1_6(%rip), %xmm23
	vmovdqa64	.LCPI1_18(%rip), %xmm22
	vmovdqa64	.LCPI1_19(%rip), %xmm24
	vmovdqa64	.LCPI1_20(%rip), %xmm25
	vmovdqa64	%xmm9, %xmm29
	vmovdqa64	%xmm10, %xmm26
	vmovdqa64	%xmm11, %xmm28
	vmovdqa64	%xmm12, %xmm19
	vmovdqa64	%xmm13, %xmm31
	vmovdqa64	%xmm14, %xmm16
	vmovdqa64	%xmm15, %xmm30
	vmovdqa	16(%rsp), %xmm1
	vmovaps	48(%rsp), %xmm4
	vmovdqa	32(%rsp), %xmm3
	.p2align	4, 0x90
.LBB1_27:
	vpaddd	.LCPI1_2(%rip), %xmm8, %xmm0
	vpaddd	.LCPI1_3(%rip), %xmm8, %xmm11
	vpaddd	%xmm20, %xmm8, %xmm12
	vpaddd	%xmm21, %xmm8, %xmm13
	vpaddd	%xmm23, %xmm8, %xmm14
	vpaddd	%xmm22, %xmm8, %xmm15
	vpaddd	%xmm24, %xmm8, %xmm17
	vpxorq	%xmm18, %xmm8, %xmm9
	vpxorq	%xmm0, %xmm18, %xmm10
	vpxorq	%xmm11, %xmm18, %xmm11
	vpxorq	%xmm12, %xmm18, %xmm12
	vpxorq	%xmm13, %xmm18, %xmm13
	vpxorq	%xmm14, %xmm18, %xmm14
	vpxorq	%xmm15, %xmm18, %xmm15
	vpxorq	%xmm17, %xmm18, %xmm0
	vmovdqa64	%xmm27, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm29, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm26, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm28, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm19, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm31, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm16, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm30, %xmm2
	#APP
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	#NO_APP
	#APP
	vaesenclast	%xmm3, %xmm9, %xmm9
	vaesenclast	%xmm3, %xmm10, %xmm10
	vaesenclast	%xmm3, %xmm11, %xmm11
	vaesenclast	%xmm3, %xmm12, %xmm12
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpxor	(%rbx), %xmm9, %xmm9
	vpxor	16(%rbx), %xmm10, %xmm10
	vpxor	32(%rbx), %xmm11, %xmm11
	vpxor	48(%rbx), %xmm12, %xmm12
	vpxor	64(%rbx), %xmm13, %xmm13
	vpxor	80(%rbx), %xmm14, %xmm14
	vpxor	96(%rbx), %xmm15, %xmm15
	vpxor	112(%rbx), %xmm0, %xmm0
	leaq	128(%rbx), %rbx
	vmovdqu	%xmm9, (%rax)
	vmovdqu	%xmm10, 16(%rax)
	vmovdqu	%xmm11, 32(%rax)
	vmovdqu	%xmm12, 48(%rax)
	vmovdqu	%xmm13, 64(%rax)
	vmovdqu	%xmm14, 80(%rax)
	vmovdqu	%xmm15, 96(%rax)
	vmovdqu	%xmm0, 112(%rax)
	addq	$128, %rax
	addq	$-128, %r12
	vpaddd	%xmm25, %xmm8, %xmm8
	cmpq	$128, %r12
	jae	.LBB1_27
	vmovdqa64	%xmm27, %xmm4
	vmovdqa64	%xmm29, %xmm9
	vmovdqa64	%xmm26, %xmm10
	vmovdqa64	%xmm28, %xmm11
	vmovdqa64	%xmm19, %xmm12
	vmovdqa64	%xmm31, %xmm13
	vmovdqa64	%xmm16, %xmm14
	vmovdqa64	%xmm30, %xmm15
.LBB1_29:
	cmpq	$16, %r12
	jb	.LBB1_42
	leaq	-16(%r12), %r14
	testb	$16, %r14b
	jne	.LBB1_31
	leaq	16(%rbx), %rsi
	leaq	16(%rax), %r15
	vpaddd	.LCPI1_2(%rip), %xmm8, %xmm1
	vpxorq	%xmm18, %xmm8, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	32(%rsp), %xmm0, %xmm0
	vpxor	(%rbx), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	%r15, %rax
	vmovdqa	%xmm1, %xmm8
	movq	%r14, %r12
	movq	%rsi, %rbx
	jmp	.LBB1_39
.LBB1_31:
.LBB1_39:
	cmpq	$16, %r14
	jb	.LBB1_43
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vmovdqa	.LCPI1_3(%rip), %xmm1
	vmovdqa64	16(%rsp), %xmm16
	vmovdqa64	48(%rsp), %xmm17
	vmovdqa64	32(%rsp), %xmm19
	.p2align	4, 0x90
.LBB1_41:
	vpaddd	%xmm0, %xmm8, %xmm2
	vpxorq	%xmm18, %xmm8, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm16, %xmm3, %xmm3
	vaesenc	%xmm17, %xmm3, %xmm3
	vaesenclast	%xmm19, %xmm3, %xmm3
	vpxor	(%rbx), %xmm3, %xmm3
	vmovdqu	%xmm3, (%rax)
	vpxorq	%xmm2, %xmm18, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm16, %xmm2, %xmm2
	vaesenc	%xmm17, %xmm2, %xmm2
	vaesenclast	%xmm19, %xmm2, %xmm2
	vpxor	16(%rbx), %xmm2, %xmm2
	addq	$32, %rbx
	vmovdqu	%xmm2, 16(%rax)
	addq	$32, %rax
	addq	$-32, %r12
	vpaddd	%xmm1, %xmm8, %xmm8
	cmpq	$15, %r12
	ja	.LBB1_41
.LBB1_42:
	movq	%rbx, %rsi
	movq	%rax, %r15
	movq	%r12, %r14
	vmovdqa	%xmm8, %xmm1
.LBB1_43:
	movl	$1, %ebp
	testq	%r14, %r14
	je	.LBB1_45
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %rbx
	movq	%r14, %rdx
	vmovdqa	%xmm1, 64(%rsp)
	callq	*%rbx
	vmovdqa	64(%rsp), %xmm0
	vpxor	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	32(%rsp), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*%rbx
.LBB1_45:
	movl	%ebp, %eax
	addq	$432, %rsp
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
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_tigerlake_encrypt
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
.LCPI2_24:
	.zero	16
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
.LCPI2_25:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_decrypt,@function
haberdashery_aes256gcmsiv_tigerlake_decrypt:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$448, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	480(%rsp), %rbx
	xorl	%eax, %eax
	cmpq	512(%rsp), %rbx
	jne	.LBB2_33
	cmpq	$12, %rdx
	jne	.LBB2_33
	movq	%r8, %r15
	movabsq	$68719476736, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_33
	cmpq	%rdx, %rbx
	ja	.LBB2_33
	cmpq	$16, 496(%rsp)
	jb	.LBB2_33
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vmovdqa	.LCPI2_1(%rip), %xmm0
	vmovdqa	%xmm1, 432(%rsp)
	vmovdqa	%xmm2, 368(%rsp)
	vpermi2d	%xmm1, %xmm2, %xmm0
	vpxor	(%rdi), %xmm0, %xmm4
	vpxor	.LCPI2_2(%rip), %xmm4, %xmm5
	vpxor	.LCPI2_3(%rip), %xmm4, %xmm1
	vpxor	.LCPI2_4(%rip), %xmm4, %xmm2
	vpxor	.LCPI2_5(%rip), %xmm4, %xmm0
	vpxor	.LCPI2_6(%rip), %xmm4, %xmm3
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm3, %xmm3
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm12
	vpbroadcastq	.LCPI2_7(%rip), %xmm28
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm6
	vpshufd	$78, %xmm4, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm12, %xmm8, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm8, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm9
	vpternlogq	$150, %xmm5, %xmm6, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vmovdqa	%xmm4, 272(%rsp)
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm5
	vmovdqa	%xmm8, 288(%rsp)
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm6
	vpshufd	$78, %xmm4, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm12, %xmm7, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm6
	vmovdqa	%xmm7, 336(%rsp)
	vpclmulqdq	$17, %xmm12, %xmm7, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm5, %xmm6, %xmm4
	vmovdqa	%xmm4, 16(%rsp)
	vpunpcklqdq	%xmm2, %xmm1, %xmm29
	vpunpcklqdq	%xmm3, %xmm0, %xmm13
	vpslldq	$4, %xmm29, %xmm2
	vxorpd	%xmm30, %xmm30, %xmm30
	vpunpcklqdq	%xmm1, %xmm30, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI2_25(%rip), %xmm1
	vpshufb	%xmm1, %xmm13, %xmm2
	vpbroadcastq	.LCPI2_9(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm14
	vpternlogq	$150, %xmm4, %xmm29, %xmm14
	vpslldq	$4, %xmm13, %xmm2
	vpunpcklqdq	%xmm0, %xmm30, %xmm3
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm2, %xmm0
	vpshufd	$255, %xmm14, %xmm2
	vaesenclast	%xmm30, %xmm2, %xmm15
	vpternlogq	$150, %xmm0, %xmm13, %xmm15
	vpslldq	$4, %xmm14, %xmm0
	vpslldq	$8, %xmm14, %xmm2
	vpslldq	$12, %xmm14, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm1, %xmm15, %xmm0
	vpbroadcastq	.LCPI2_10(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm11
	vpternlogq	$150, %xmm3, %xmm14, %xmm11
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm2
	vpslldq	$12, %xmm15, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm11, %xmm0
	vaesenclast	%xmm30, %xmm0, %xmm10
	vpternlogq	$150, %xmm3, %xmm15, %xmm10
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm2
	vpslldq	$12, %xmm11, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm1, %xmm10, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm11, %xmm4
	vmovdqa	%xmm4, 80(%rsp)
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm2
	vpslldq	$12, %xmm10, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm4, %xmm0
	vaesenclast	%xmm30, %xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm10, %xmm5
	vmovdqa	%xmm5, 176(%rsp)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm1, %xmm5, %xmm0
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vmovdqa	%xmm6, 160(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm30, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm5, %xmm4
	vmovdqa	%xmm4, 128(%rsp)
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm2
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm1, %xmm4, %xmm0
	vpbroadcastq	.LCPI2_13(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm6, %xmm5
	vmovdqa	%xmm5, 112(%rsp)
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm30, %xmm0, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vmovdqa	%xmm6, 96(%rsp)
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufb	%xmm1, %xmm6, %xmm0
	vpbroadcastq	.LCPI2_14(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm8
	vpternlogq	$150, %xmm3, %xmm5, %xmm8
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm2
	vpslldq	$12, %xmm6, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpshufd	$255, %xmm8, %xmm0
	vaesenclast	%xmm30, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	cmpq	$96, %r15
	vmovaps	%xmm11, 144(%rsp)
	vmovaps	%xmm10, 192(%rsp)
	vmovdqa	%xmm8, 48(%rsp)
	vmovdqa	%xmm4, 32(%rsp)
	movq	%r15, %rax
	jb	.LBB2_6
	vmovdqa64	288(%rsp), %xmm16
	vmovdqa64	%xmm9, %xmm17
	vmovdqa64	336(%rsp), %xmm18
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu	16(%rcx), %xmm0
	vmovdqu	32(%rcx), %xmm2
	vmovdqu	48(%rcx), %xmm3
	vmovdqu	64(%rcx), %xmm4
	vmovdqu	80(%rcx), %xmm5
	addq	$-96, %rax
	vpxorq	(%rcx), %xmm30, %xmm6
	addq	$96, %rcx
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm16, %xmm9
	vpclmulqdq	$1, %xmm4, %xmm16, %xmm10
	vpclmulqdq	$16, %xmm4, %xmm16, %xmm11
	vpternlogq	$150, %xmm10, %xmm8, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm16, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm17, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm17, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm17, %xmm9
	vpternlogq	$150, %xmm7, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm17, %xmm3
	vpternlogq	$150, %xmm5, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm18, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm18, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm18, %xmm7
	vpternlogq	$150, %xmm5, %xmm9, %xmm7
	vmovdqa	272(%rsp), %xmm9
	vpclmulqdq	$17, %xmm2, %xmm18, %xmm2
	vpclmulqdq	$0, 16(%rsp), %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$16, 16(%rsp), %xmm0, %xmm4
	vpclmulqdq	$1, 16(%rsp), %xmm0, %xmm8
	vpternlogq	$150, %xmm4, %xmm7, %xmm8
	vpclmulqdq	$17, 16(%rsp), %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm4
	vpternlogq	$150, %xmm3, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpternlogq	$150, %xmm2, %xmm5, %xmm6
	vpsrldq	$8, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm28, %xmm6, %xmm4
	vpshufd	$78, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm0, %xmm5
	vpshufd	$78, %xmm4, %xmm30
	vpternlogq	$150, %xmm2, %xmm5, %xmm30
	cmpq	$96, %rax
	jae	.LBB2_19
	vmovapd	144(%rsp), %xmm11
	vmovapd	192(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm4
	vmovdqa64	%xmm17, %xmm9
.LBB2_6:
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm2
	vpslldq	$12, %xmm8, %xmm18
	vpshufb	%xmm1, %xmm4, %xmm1
	vpbroadcastq	.LCPI2_15(%rip), %xmm3
	movq	488(%rsp), %rsi
	cmpq	$16, %rax
	jb	.LBB2_11
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB2_9
	vpxorq	(%rcx), %xmm30, %xmm4
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm28, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm28, %xmm5, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpshufd	$78, %xmm5, %xmm30
	vpternlogq	$150, %xmm6, %xmm4, %xmm30
	movq	%rdx, %rax
.LBB2_9:
	cmpq	$16, %rdx
	jb	.LBB2_12
	.p2align	4, 0x90
.LBB2_10:
	vpxorq	(%rcx), %xmm30, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm28, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm28, %xmm5, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufd	$78, %xmm5, %xmm4
	vpternlogq	$150, 16(%rcx), %xmm7, %xmm4
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm28, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm28, %xmm5, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpshufd	$78, %xmm5, %xmm30
	vpternlogq	$150, %xmm6, %xmm4, %xmm30
	cmpq	$15, %rax
	ja	.LBB2_10
.LBB2_11:
	movq	%rax, %rdx
.LBB2_12:
	vpternlogq	$150, %xmm2, %xmm0, %xmm18
	vaesenclast	%xmm3, %xmm1, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, 416(%rsp)
	testq	%rdx, %rdx
	vmovaps	%xmm14, 256(%rsp)
	vmovaps	%xmm15, 240(%rsp)
	vmovdqa64	%xmm28, 400(%rsp)
	vmovdqa	%xmm12, 304(%rsp)
	vmovaps	%xmm29, 352(%rsp)
	vmovaps	%xmm13, 224(%rsp)
	vmovdqa	%xmm9, 384(%rsp)
	je	.LBB2_14
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	vmovdqa64	%xmm30, 208(%rsp)
	vmovdqa64	%xmm18, 320(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa64	320(%rsp), %xmm18
	vmovapd	48(%rsp), %xmm8
	vmovapd	192(%rsp), %xmm10
	vmovapd	144(%rsp), %xmm11
	vmovapd	240(%rsp), %xmm15
	vmovapd	256(%rsp), %xmm14
	vmovaps	224(%rsp), %xmm13
	vmovapd	352(%rsp), %xmm29
	vmovdqa	304(%rsp), %xmm12
	vmovdqa64	400(%rsp), %xmm28
	vmovdqa	208(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm28, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm28, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm30
	vpternlogq	$150, %xmm2, %xmm0, %xmm30
	vmovdqa	64(%rsp), %xmm0
.LBB2_14:
	vmovq	%rbx, %xmm16
	vmovq	%r15, %xmm17
	movq	504(%rsp), %rdx
	vpternlogq	$150, %xmm18, %xmm8, %xmm0
	vmovdqa	416(%rsp), %xmm1
	vpor	.LCPI2_16(%rip), %xmm1, %xmm4
	cmpq	$96, %rbx
	vmovdqa	%xmm0, 64(%rsp)
	jae	.LBB2_21
	vmovdqa	80(%rsp), %xmm9
	jmp	.LBB2_16
.LBB2_21:
	vpaddd	.LCPI2_2(%rip), %xmm4, %xmm1
	vpaddd	.LCPI2_3(%rip), %xmm4, %xmm2
	vpaddd	.LCPI2_4(%rip), %xmm4, %xmm3
	vpaddd	.LCPI2_5(%rip), %xmm4, %xmm5
	vpaddd	.LCPI2_6(%rip), %xmm4, %xmm6
	vmovdqa64	%xmm0, %xmm18
	vpxorq	%xmm29, %xmm4, %xmm0
	vpxorq	%xmm1, %xmm29, %xmm1
	vpxorq	%xmm2, %xmm29, %xmm2
	vpxorq	%xmm3, %xmm29, %xmm7
	vmovapd	%xmm8, %xmm19
	vpxorq	%xmm5, %xmm29, %xmm8
	vpxorq	%xmm6, %xmm29, %xmm9
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovaps	80(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	176(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	160(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	128(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	96(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovapd	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm18, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm9, %xmm9
	#NO_APP
	vpxorq	(%r14), %xmm0, %xmm31
	leaq	96(%r14), %rcx
	leaq	96(%rdx), %rax
	vpxorq	16(%r14), %xmm1, %xmm19
	vpxor	32(%r14), %xmm2, %xmm6
	vpxor	48(%r14), %xmm7, %xmm14
	vpxor	64(%r14), %xmm8, %xmm15
	vpxor	80(%r14), %xmm9, %xmm10
	vmovdqu64	%xmm31, (%rdx)
	vmovdqu64	%xmm19, 16(%rdx)
	vmovdqu	%xmm6, 32(%rdx)
	vmovdqu	%xmm14, 48(%rdx)
	vmovdqu	%xmm15, 64(%rdx)
	addq	$-96, %rbx
	vmovdqu	%xmm10, 80(%rdx)
	vpaddd	.LCPI2_17(%rip), %xmm4, %xmm25
	cmpq	$96, %rbx
	jae	.LBB2_23
	vmovdqa	80(%rsp), %xmm9
	vmovdqa	288(%rsp), %xmm7
	jmp	.LBB2_26
.LBB2_23:
	vmovdqa64	%xmm17, 320(%rsp)
	vmovdqa64	%xmm16, 208(%rsp)
	vmovaps	128(%rsp), %xmm26
	vmovdqa64	112(%rsp), %xmm20
	vmovaps	96(%rsp), %xmm17
	vmovdqa64	48(%rsp), %xmm21
	vmovaps	32(%rsp), %xmm16
	vmovaps	272(%rsp), %xmm27
	vmovdqa64	384(%rsp), %xmm18
	vmovaps	336(%rsp), %xmm23
	vmovdqa64	16(%rsp), %xmm22
	vmovaps	64(%rsp), %xmm24
	.p2align	4, 0x90
.LBB2_24:
	vpaddd	.LCPI2_18(%rip), %xmm4, %xmm0
	vpaddd	.LCPI2_19(%rip), %xmm4, %xmm1
	vpaddd	.LCPI2_20(%rip), %xmm4, %xmm7
	vpaddd	.LCPI2_21(%rip), %xmm4, %xmm9
	vpaddd	.LCPI2_22(%rip), %xmm4, %xmm11
	vpxorq	%xmm29, %xmm25, %xmm8
	vpxorq	%xmm0, %xmm29, %xmm4
	vpxorq	%xmm1, %xmm29, %xmm0
	vpxorq	%xmm7, %xmm29, %xmm1
	vpxorq	%xmm9, %xmm29, %xmm7
	vpxorq	%xmm11, %xmm29, %xmm9
	vxorps	%xmm13, %xmm13, %xmm13
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm11, %xmm11, %xmm11
	vmovaps	224(%rsp), %xmm5
	vmovaps	304(%rsp), %xmm3
	#APP
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm2
	vpxor	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	256(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovaps	288(%rsp), %xmm3
	vmovaps	240(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	144(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm18, %xmm5
	vmovaps	192(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm2
	vpxor	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	80(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovaps	176(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm23, %xmm5
	vmovaps	160(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	#NO_APP
	vmovaps	%xmm26, %xmm2
	#APP
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm20, %xmm3
	vmovdqa64	%xmm22, %xmm5
	vmovdqa64	%xmm19, %xmm6
	#APP
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm6, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	#NO_APP
	vpxorq	%xmm30, %xmm31, %xmm2
	vmovaps	%xmm17, %xmm3
	#APP
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm21, %xmm5
	vmovaps	%xmm27, %xmm6
	#APP
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpxor	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm2, %xmm3
	vpxor	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm2, %xmm3
	vpxor	%xmm3, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm6, %xmm2, %xmm3
	vpxor	%xmm3, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm13, %xmm2
	vpunpckhqdq	%xmm3, %xmm12, %xmm3
	vpxorq	%xmm3, %xmm11, %xmm30
	vmovaps	%xmm16, %xmm3
	#APP
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm24, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm4, %xmm4
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm9, %xmm9
	#NO_APP
	vpxorq	(%rcx), %xmm8, %xmm31
	vpclmulqdq	$16, %xmm28, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm28, %xmm2, %xmm8
	vpshufd	$78, %xmm2, %xmm2
	vpxorq	16(%rcx), %xmm4, %xmm19
	vpxor	32(%rcx), %xmm0, %xmm6
	vpxor	48(%rcx), %xmm1, %xmm14
	vpxor	64(%rcx), %xmm7, %xmm15
	vpxor	80(%rcx), %xmm9, %xmm10
	vpternlogq	$150, %xmm8, %xmm2, %xmm30
	addq	$96, %rcx
	vmovdqu64	%xmm31, (%rax)
	vmovdqu64	%xmm19, 16(%rax)
	vmovdqu	%xmm6, 32(%rax)
	vmovdqu	%xmm14, 48(%rax)
	vmovdqu	%xmm15, 64(%rax)
	vmovdqu	%xmm10, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vmovdqa64	%xmm25, %xmm4
	vpaddd	.LCPI2_17(%rip), %xmm25, %xmm25
	cmpq	$95, %rbx
	ja	.LBB2_24
	vmovdqa	304(%rsp), %xmm12
	vmovaps	224(%rsp), %xmm13
	vmovapd	144(%rsp), %xmm11
	vmovdqa	80(%rsp), %xmm9
	vmovdqa	288(%rsp), %xmm7
	vmovdqa64	208(%rsp), %xmm16
	vmovdqa64	320(%rsp), %xmm17
.LBB2_26:
	vpxorq	%xmm31, %xmm30, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm10, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm12, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm10, %xmm12, %xmm4
	vpclmulqdq	$0, %xmm15, %xmm7, %xmm5
	vmovdqa	%xmm7, %xmm10
	vpclmulqdq	$1, %xmm15, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm10, %xmm8
	vpternlogq	$150, %xmm7, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm15, %xmm10, %xmm2
	vmovdqa	384(%rsp), %xmm10
	vpclmulqdq	$0, %xmm14, %xmm10, %xmm7
	vpternlogq	$150, %xmm1, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm14, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm10, %xmm5
	vpternlogq	$150, %xmm1, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm14, %xmm10, %xmm1
	vpternlogq	$150, %xmm4, %xmm2, %xmm1
	vmovdqa	336(%rsp), %xmm10
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm10, %xmm8
	vpternlogq	$150, %xmm4, %xmm5, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm4
	vmovdqa	16(%rsp), %xmm10
	vpclmulqdq	$0, %xmm19, %xmm10, %xmm5
	vpternlogq	$150, %xmm2, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm19, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm19, %xmm10, %xmm6
	vpternlogq	$150, %xmm2, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm19, %xmm10, %xmm2
	vpternlogq	$150, %xmm4, %xmm1, %xmm2
	vmovdqa	272(%rsp), %xmm7
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpslldq	$8, %xmm4, %xmm3
	vpternlogq	$150, %xmm1, %xmm5, %xmm3
	vpsrldq	$8, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm28, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm28, %xmm3, %xmm4
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpshufd	$78, %xmm3, %xmm30
	vpternlogq	$150, %xmm1, %xmm4, %xmm30
	movq	%rcx, %r14
	movq	%rax, %rdx
	vmovdqa64	%xmm25, %xmm4
	vmovapd	256(%rsp), %xmm14
	vmovapd	240(%rsp), %xmm15
	vmovapd	192(%rsp), %xmm10
.LBB2_16:
	vmovdqa	176(%rsp), %xmm7
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	.LCPI2_0(%rip), %xmm0
	vpunpcklqdq	%xmm16, %xmm17, %xmm1
	cmpq	$16, %rbx
	jae	.LBB2_27
	movq	%r14, %rsi
	movq	%rdx, %r15
	vmovdqa64	%xmm4, %xmm22
	jmp	.LBB2_29
.LBB2_27:
	vmovdqa	.LCPI2_2(%rip), %xmm2
	vmovdqa64	128(%rsp), %xmm16
	vmovdqa64	112(%rsp), %xmm17
	vmovdqa64	96(%rsp), %xmm18
	vmovdqa64	48(%rsp), %xmm19
	vmovdqa64	32(%rsp), %xmm20
	vmovdqa64	64(%rsp), %xmm21
	.p2align	4, 0x90
.LBB2_28:
	leaq	16(%r14), %rsi
	leaq	16(%rdx), %r15
	addq	$-16, %rbx
	vpxorq	%xmm29, %xmm4, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm16, %xmm3, %xmm3
	vaesenc	%xmm17, %xmm3, %xmm3
	vaesenc	%xmm18, %xmm3, %xmm3
	vaesenc	%xmm19, %xmm3, %xmm3
	vaesenc	%xmm20, %xmm3, %xmm3
	vaesenclast	%xmm21, %xmm3, %xmm3
	vpxor	(%r14), %xmm3, %xmm3
	vmovdqu	%xmm3, (%rdx)
	vpaddd	%xmm2, %xmm4, %xmm22
	vpxorq	%xmm30, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm28, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm30
	vpternlogq	$150, %xmm5, %xmm3, %xmm30
	movq	%r15, %rdx
	vmovdqa64	%xmm22, %xmm4
	movq	%rsi, %r14
	cmpq	$15, %rbx
	ja	.LBB2_28
.LBB2_29:
	vmovdqa	368(%rsp), %xmm2
	vpermt2d	432(%rsp), %xmm0, %xmm2
	vmovdqa	%xmm2, 368(%rsp)
	vpsllq	$3, %xmm1, %xmm0
	testq	%rbx, %rbx
	je	.LBB2_30
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %r14
	movq	%rbx, %rdx
	vmovdqa64	%xmm30, 208(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa64	%xmm22, 272(%rsp)
	callq	*%r14
	vmovdqa	272(%rsp), %xmm0
	vpxor	352(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenclast	64(%rsp), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	*%r14
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%r14
	vmovdqa64	48(%rsp), %xmm18
	vmovdqa64	64(%rsp), %xmm17
	vmovdqa64	96(%rsp), %xmm16
	vmovdqa	32(%rsp), %xmm6
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm4
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	176(%rsp), %xmm7
	vmovdqa	80(%rsp), %xmm9
	vmovapd	192(%rsp), %xmm10
	vmovapd	144(%rsp), %xmm11
	vmovapd	240(%rsp), %xmm15
	vmovapd	256(%rsp), %xmm14
	vmovaps	224(%rsp), %xmm13
	vmovapd	352(%rsp), %xmm29
	vmovdqa	304(%rsp), %xmm12
	vmovdqa64	400(%rsp), %xmm28
	vmovdqa	208(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm28, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm28, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm30
	vpternlogq	$150, %xmm2, %xmm0, %xmm30
	vmovdqa	16(%rsp), %xmm0
	jmp	.LBB2_32
.LBB2_30:
	vmovdqa	128(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm5
	vmovdqa64	96(%rsp), %xmm16
	vmovdqa64	48(%rsp), %xmm18
	vmovdqa	32(%rsp), %xmm6
	vmovdqa64	64(%rsp), %xmm17
.LBB2_32:
	vpxorq	%xmm0, %xmm30, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm28, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm28, %xmm1, %xmm3
	vpternlogq	$150, 368(%rsp), %xmm0, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vpternlogq	$120, .LCPI2_23(%rip), %xmm0, %xmm29
	vaesenc	%xmm13, %xmm29, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm16, %xmm0, %xmm0
	vaesenc	%xmm18, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm17, %xmm0, %xmm0
	vpxor	416(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_33:
	addq	$448, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_is_supported,@function
haberdashery_aes256gcmsiv_tigerlake_is_supported:
	.cfi_startproc
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	notl	%r8d
	testl	$1993871875, %r8d
	jne	.LBB3_5
	andl	$125829120, %edi
	cmpl	$125829120, %edi
	jne	.LBB3_5
	notl	%r9d
	testl	$9175337, %r9d
	jne	.LBB3_5
	andl	$411041792, %ecx
	cmpl	$411041792, %ecx
	jne	.LBB3_5
	shrl	$8, %edx
	andl	$1, %edx
	movl	%edx, %esi
.LBB3_5:
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

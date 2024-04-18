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
	.section	.text.haberdashery_aes256gcmdndk_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_tigerlake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_tigerlake_init,@function
haberdashery_aes256gcmdndk_tigerlake_init:
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
	.size	haberdashery_aes256gcmdndk_tigerlake_init, .Lfunc_end0-haberdashery_aes256gcmdndk_tigerlake_init
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
.LCPI1_28:
	.zero	16
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
.LCPI1_29:
	.long	1
	.section	.text.haberdashery_aes256gcmdndk_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_tigerlake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_tigerlake_encrypt,@function
haberdashery_aes256gcmdndk_tigerlake_encrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	464(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	480(%rsp), %r13
	jne	.LBB1_43
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_43
	movq	%r8, %rbx
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_43
	cmpq	$24, %rdx
	jne	.LBB1_43
	cmpq	$16, 496(%rsp)
	jne	.LBB1_43
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI1_29(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vmovdqa	(%rdi), %xmm2
	vmovdqa	16(%rdi), %xmm3
	vmovdqa	32(%rdi), %xmm4
	vmovdqa	48(%rdi), %xmm5
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa64	.LCPI1_1(%rip), %xmm27
	vpxorq	%xmm27, %xmm0, %xmm2
	vpxorq	%xmm27, %xmm1, %xmm6
	vmovdqa	.LCPI1_2(%rip), %xmm7
	vpxor	%xmm7, %xmm0, %xmm8
	vpxor	%xmm7, %xmm1, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm3
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm8, %xmm7
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm6, %xmm4
	vaesenc	%xmm5, %xmm7, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	64(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	80(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	96(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	112(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	128(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	144(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	160(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	176(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	192(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	208(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa	224(%rdi), %xmm5
	vaesenclast	%xmm5, %xmm0, %xmm0
	vaesenclast	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm5, %xmm4, %xmm4
	vpxorq	%xmm4, %xmm2, %xmm25
	vaesenclast	%xmm5, %xmm6, %xmm2
	vaesenclast	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm12
	vpternlogq	$150, %xmm0, %xmm1, %xmm25
	vpternlogq	$150, %xmm0, %xmm1, %xmm12
	vpslldq	$4, %xmm25, %xmm0
	vpslldq	$8, %xmm25, %xmm1
	vpslldq	$12, %xmm25, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI1_6(%rip), %xmm16
	vpshufb	%xmm16, %xmm12, %xmm1
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm25, %xmm0
	vaesenc	%xmm12, %xmm25, %xmm1
	vpslldq	$4, %xmm12, %xmm2
	vpslldq	$8, %xmm12, %xmm3
	vpslldq	$12, %xmm12, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm0, %xmm2
	vpxor	%xmm14, %xmm14, %xmm14
	vaesenclast	%xmm14, %xmm2, %xmm7
	vpternlogq	$150, %xmm4, %xmm12, %xmm7
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa64	%xmm0, %xmm29
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpslldq	$12, %xmm0, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm7, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm0, %xmm6, %xmm8
	#NO_APP
	vmovdqa64	%xmm7, %xmm31
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm14, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm5, %xmm9
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovdqa64	%xmm8, %xmm30
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm9, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm6, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpslldq	$12, %xmm9, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm14, %xmm11, %xmm11
	vpternlogq	$150, %xmm9, %xmm5, %xmm11
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpslldq	$12, %xmm10, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm11, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpternlogq	$150, %xmm10, %xmm6, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm4
	vpslldq	$12, %xmm11, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm7, %xmm8
	vaesenclast	%xmm14, %xmm8, %xmm8
	vpternlogq	$150, %xmm11, %xmm5, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpslldq	$12, %xmm7, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm8, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpternlogq	$150, %xmm7, %xmm6, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm0, %xmm15
	vaesenclast	%xmm14, %xmm15, %xmm15
	vpternlogq	$150, %xmm8, %xmm5, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm0, 16(%rsp)
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpslldq	$12, %xmm0, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm15, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm0, %xmm6, %xmm13
	#NO_APP
	vmovapd	%xmm15, %xmm5
	vmovdqa	%xmm13, %xmm15
	vmovapd	%xmm5, 304(%rsp)
	vpslldq	$4, %xmm5, %xmm2
	vpunpcklqdq	%xmm5, %xmm14, %xmm3
	vinsertps	$55, %xmm5, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm13, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm13
	vpternlogq	$150, %xmm4, %xmm5, %xmm13
	vpslldq	$4, %xmm15, %xmm2
	vpunpcklqdq	%xmm15, %xmm14, %xmm3
	vinsertps	$55, %xmm15, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufb	%xmm16, %xmm13, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm15, %xmm2
	vpxor	%xmm4, %xmm4, %xmm4
	vmovdqa	%xmm2, 288(%rsp)
	vaesenc	%xmm5, %xmm1, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpblendd	$12, %xmm1, %xmm4, %xmm1
	vpsllq	$63, %xmm1, %xmm3
	vpternlogq	$30, %xmm2, %xmm0, %xmm3
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm6
	vpternlogq	$150, %xmm0, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm26
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm2
	vpshufd	$78, %xmm0, %xmm5
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm1
	vmovdqa	%xmm3, 352(%rsp)
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm14
	vpternlogq	$150, %xmm1, %xmm2, %xmm14
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm2
	vpshufd	$78, %xmm0, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm2
	vmovdqa	%xmm3, 336(%rsp)
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm28
	vpternlogq	$150, %xmm1, %xmm2, %xmm28
	leaq	-1(%rbx), %rdx
	cmpq	%rax, %rdx
	vmovdqa	%xmm6, 272(%rsp)
	vmovdqa64	%xmm28, 368(%rsp)
	jae	.LBB1_23
	cmpq	$96, %rbx
	jae	.LBB1_20
	movq	%rbx, %rax
	cmpq	$16, %rax
	jb	.LBB1_9
.LBB1_10:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB1_11
	cmpq	$16, %rdx
	jae	.LBB1_13
.LBB1_16:
	testq	%rdx, %rdx
	je	.LBB1_24
.LBB1_17:
	vmovdqa	%xmm5, 320(%rsp)
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	%xmm4, 32(%rsp)
	vmovdqa64	%xmm26, 240(%rsp)
	vmovdqa	%xmm13, 64(%rsp)
	vmovaps	%xmm15, 80(%rsp)
	vmovdqa	%xmm8, 96(%rsp)
	vmovdqa	%xmm7, 112(%rsp)
	vmovdqa	%xmm11, 128(%rsp)
	vmovdqa	%xmm10, 144(%rsp)
	vmovdqa	%xmm9, 160(%rsp)
	vmovdqa64	%xmm30, 176(%rsp)
	vmovdqa64	%xmm31, 192(%rsp)
	vmovdqa64	%xmm29, 208(%rsp)
	vmovaps	%xmm12, 224(%rsp)
	vmovaps	%xmm25, 256(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_41
	movabsq	$-68719476720, %rax
	leaq	(%r13,%rax), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovapd	256(%rsp), %xmm25
	vmovapd	224(%rsp), %xmm12
	vmovdqa64	208(%rsp), %xmm29
	vmovdqa64	192(%rsp), %xmm31
	vmovdqa64	176(%rsp), %xmm30
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	144(%rsp), %xmm10
	vmovdqa	128(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm6
	vmovaps	80(%rsp), %xmm15
	vmovdqa	64(%rsp), %xmm13
	vmovdqa64	240(%rsp), %xmm26
	vmovdqa64	.LCPI1_1(%rip), %xmm27
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	48(%rsp), %xmm14
	vmovdqa	320(%rsp), %xmm5
	jb	.LBB1_43
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	272(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	jmp	.LBB1_26
.LBB1_23:
	testq	%r13, %r13
	vmovdqa	16(%rsp), %xmm6
	je	.LBB1_42
.LBB1_26:
	movq	472(%rsp), %rax
	cmpq	$96, %r13
	vmovaps	%xmm12, 224(%rsp)
	vmovdqa64	%xmm29, 208(%rsp)
	vmovdqa64	%xmm31, 192(%rsp)
	vmovdqa64	%xmm30, 176(%rsp)
	vmovdqa	%xmm9, 160(%rsp)
	vmovdqa	%xmm10, 144(%rsp)
	vmovdqa	%xmm11, 128(%rsp)
	vmovdqa	%xmm7, 112(%rsp)
	vmovdqa	%xmm8, 96(%rsp)
	vmovaps	%xmm15, 80(%rsp)
	vmovdqa	%xmm13, 64(%rsp)
	vmovdqa64	%xmm26, 240(%rsp)
	jae	.LBB1_30
	movq	%r13, %r15
	cmpq	$16, %r15
	jb	.LBB1_29
.LBB1_35:
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vmovdqa	.LCPI1_21(%rip), %xmm1
	vmovdqa64	304(%rsp), %xmm16
	vmovdqa64	288(%rsp), %xmm17
	vmovdqa64	272(%rsp), %xmm18
	.p2align	4, 0x90
.LBB1_36:
	leaq	16(%r14), %rsi
	leaq	16(%rax), %r12
	addq	$-16, %r15
	vpshufb	%xmm0, %xmm27, %xmm2
	vpaddd	%xmm1, %xmm27, %xmm27
	vpxorq	%xmm2, %xmm25, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm29, %xmm2, %xmm2
	vaesenc	%xmm31, %xmm2, %xmm2
	vaesenc	%xmm30, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm16, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm17, %xmm2, %xmm2
	vpxor	(%r14), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rax)
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm18, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm18, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm18, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm18, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm26, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm26, %xmm3, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm4, %xmm2, %xmm3
	vmovdqa	%xmm3, %xmm4
	movq	%rsi, %r14
	movq	%r12, %rax
	cmpq	$15, %r15
	ja	.LBB1_36
	testq	%r15, %r15
	jne	.LBB1_38
	jmp	.LBB1_42
.LBB1_20:
	vmovdqa64	%xmm8, %xmm20
	vmovdqa64	%xmm7, %xmm19
	vmovdqa64	%xmm11, %xmm18
	vmovdqa64	%xmm10, %xmm17
	vmovdqa64	%xmm9, %xmm16
	vmovdqa	.LCPI1_12(%rip), %xmm0
	movq	%rbx, %rax
	vmovdqa64	%xmm6, %xmm21
	vmovdqa64	%xmm5, %xmm22
	vmovdqa64	352(%rsp), %xmm23
	vmovdqa64	336(%rsp), %xmm24
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqa	%xmm4, %xmm7
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	addq	$96, %rcx
	addq	$-96, %rax
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpshufb	%xmm0, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm4, %xmm4
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm21, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm21, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm21, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm21, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm22, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm22, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm22, %xmm11
	vpternlogq	$150, %xmm10, %xmm8, %xmm11
	vpclmulqdq	$17, %xmm5, %xmm22, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm23, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm23, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm23, %xmm9
	vpternlogq	$150, %xmm7, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm23, %xmm4
	vpternlogq	$150, %xmm6, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm24, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm24, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm24, %xmm7
	vpternlogq	$150, %xmm6, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm24, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm28, %xmm6
	vpternlogq	$150, %xmm5, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm28, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm28, %xmm8
	vpternlogq	$150, %xmm5, %xmm7, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm28, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm5
	vpternlogq	$150, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpslldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpsrldq	$8, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm26, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm26, %xmm4, %xmm5
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm3, %xmm5, %xmm4
	cmpq	$96, %rax
	jae	.LBB1_21
	vmovdqa64	%xmm16, %xmm9
	vmovdqa64	%xmm17, %xmm10
	vmovdqa64	%xmm18, %xmm11
	vmovdqa64	%xmm19, %xmm7
	vmovdqa64	%xmm20, %xmm8
	vmovdqa64	%xmm21, %xmm6
	vmovdqa64	%xmm22, %xmm5
	cmpq	$16, %rax
	jae	.LBB1_10
.LBB1_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_17
.LBB1_24:
	testq	%r13, %r13
	vmovdqa	16(%rsp), %xmm6
	je	.LBB1_42
	movabsq	$-68719476720, %rax
	leaq	(%r13,%rax), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jae	.LBB1_26
	jmp	.LBB1_43
.LBB1_30:
	vmovdqa	%xmm5, 320(%rsp)
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	%xmm4, 32(%rsp)
	vxorpd	.LCPI1_14(%rip), %xmm25, %xmm0
	vxorpd	.LCPI1_15(%rip), %xmm25, %xmm1
	vxorpd	.LCPI1_16(%rip), %xmm25, %xmm2
	vxorpd	.LCPI1_17(%rip), %xmm25, %xmm3
	vxorpd	.LCPI1_18(%rip), %xmm25, %xmm4
	vxorpd	.LCPI1_19(%rip), %xmm25, %xmm5
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	#NO_APP
	vmovdqa	%xmm7, %xmm12
	vmovdqa64	%xmm29, %xmm14
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm31, %xmm14
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm30, %xmm14
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	%xmm15, %xmm9
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovdqa	304(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	#NO_APP
	vmovaps	288(%rsp), %xmm9
	#APP
	vaesenclast	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm9, %xmm1, %xmm1
	vaesenclast	%xmm9, %xmm2, %xmm2
	vaesenclast	%xmm9, %xmm3, %xmm3
	vaesenclast	%xmm9, %xmm4, %xmm4
	vaesenclast	%xmm9, %xmm5, %xmm5
	#NO_APP
	vpxorq	(%r14), %xmm0, %xmm24
	vpxorq	16(%r14), %xmm1, %xmm31
	vpxorq	32(%r14), %xmm2, %xmm17
	vpxor	48(%r14), %xmm3, %xmm11
	vpxor	64(%r14), %xmm4, %xmm12
	vpxorq	80(%r14), %xmm5, %xmm19
	vmovdqu64	%xmm24, (%rax)
	vmovdqu64	%xmm31, 16(%rax)
	vmovdqu64	%xmm17, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu64	%xmm19, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	leaq	-96(%r13), %r15
	vmovdqa64	.LCPI1_20(%rip), %xmm27
	cmpq	$96, %r15
	jae	.LBB1_32
	vmovdqa64	240(%rsp), %xmm26
	vmovdqa64	272(%rsp), %xmm20
	vmovdqa64	32(%rsp), %xmm28
	vmovdqa64	320(%rsp), %xmm18
	vmovdqa64	352(%rsp), %xmm22
	vmovdqa64	336(%rsp), %xmm21
	vmovdqa64	368(%rsp), %xmm30
	jmp	.LBB1_34
.LBB1_11:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_16
.LBB1_13:
	vmovdqa64	%xmm5, %xmm16
	vmovdqa	.LCPI1_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_14:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm26, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm26, %xmm3, %xmm5
	vpternlogq	$150, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm3, %xmm1
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	cmpq	$15, %rax
	ja	.LBB1_14
	movq	%rax, %rdx
	vmovdqa64	%xmm16, %xmm5
	testq	%rdx, %rdx
	jne	.LBB1_17
	jmp	.LBB1_24
.LBB1_32:
	vmovdqa	.LCPI1_12(%rip), %xmm1
	vpxord	%xmm23, %xmm23, %xmm23
	vmovdqa64	304(%rsp), %xmm16
	vmovdqa64	288(%rsp), %xmm29
	vmovdqa64	240(%rsp), %xmm26
	vmovdqa64	272(%rsp), %xmm20
	vmovdqa64	32(%rsp), %xmm28
	vmovdqa64	320(%rsp), %xmm18
	vmovdqa64	352(%rsp), %xmm22
	vmovdqa64	336(%rsp), %xmm21
	vmovdqa64	368(%rsp), %xmm30
	.p2align	4, 0x90
.LBB1_33:
	vpshufb	%xmm1, %xmm27, %xmm2
	vpaddd	.LCPI1_21(%rip), %xmm27, %xmm3
	vpshufb	%xmm1, %xmm3, %xmm3
	vpaddd	.LCPI1_1(%rip), %xmm27, %xmm4
	vpshufb	%xmm1, %xmm4, %xmm4
	vpaddd	.LCPI1_22(%rip), %xmm27, %xmm5
	vpshufb	%xmm1, %xmm5, %xmm5
	vpaddd	.LCPI1_2(%rip), %xmm27, %xmm6
	vpshufb	%xmm1, %xmm6, %xmm6
	vpaddd	.LCPI1_23(%rip), %xmm27, %xmm7
	vpshufb	%xmm1, %xmm7, %xmm7
	vpxorq	%xmm2, %xmm25, %xmm13
	vpxorq	%xmm3, %xmm25, %xmm14
	vpxorq	%xmm4, %xmm25, %xmm15
	vpxorq	%xmm5, %xmm25, %xmm2
	vpxorq	%xmm6, %xmm25, %xmm3
	vpxorq	%xmm7, %xmm25, %xmm4
	vmovaps	224(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm1, %xmm19, %xmm8
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm5, %xmm5, %xmm5
	vmovaps	208(%rsp), %xmm9
	vmovdqa64	%xmm20, %xmm10
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	#NO_APP
	vmovaps	192(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm1, %xmm12, %xmm0
	vmovaps	176(%rsp), %xmm9
	vmovdqa64	%xmm18, %xmm12
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm12, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vmovaps	160(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm1, %xmm11, %xmm0
	vmovaps	144(%rsp), %xmm11
	vmovdqa64	%xmm22, %xmm9
	#APP
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vmovaps	128(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm1, %xmm17, %xmm0
	vmovdqa64	%xmm21, %xmm9
	vmovaps	112(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vmovaps	96(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm1, %xmm31, %xmm0
	vmovdqa64	%xmm30, %xmm10
	vmovaps	16(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vpshufb	%xmm1, %xmm24, %xmm0
	vpxorq	%xmm0, %xmm28, %xmm0
	vmovdqa64	%xmm16, %xmm8
	#APP
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	#NO_APP
	vmovaps	80(%rsp), %xmm9
	vmovdqa	48(%rsp), %xmm10
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vpunpcklqdq	%xmm7, %xmm23, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpunpckhqdq	%xmm23, %xmm7, %xmm6
	vmovaps	64(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovdqa64	%xmm29, %xmm7
	#APP
	vaesenclast	%xmm7, %xmm13, %xmm13
	vaesenclast	%xmm7, %xmm14, %xmm14
	vaesenclast	%xmm7, %xmm15, %xmm15
	vaesenclast	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpxorq	(%r14), %xmm13, %xmm24
	vpxorq	16(%r14), %xmm14, %xmm31
	vxorps	32(%r14), %xmm15, %xmm17
	vpxor	48(%r14), %xmm2, %xmm11
	vpxor	64(%r14), %xmm3, %xmm12
	vpxorq	80(%r14), %xmm4, %xmm19
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxorq	%xmm6, %xmm5, %xmm28
	vpclmulqdq	$16, %xmm26, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	vpaddd	.LCPI1_24(%rip), %xmm27, %xmm27
	vmovdqu64	%xmm24, (%rax)
	vmovdqu64	%xmm31, 16(%rax)
	vmovups	%xmm17, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu64	%xmm19, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	addq	$-96, %r15
	cmpq	$95, %r15
	ja	.LBB1_33
.LBB1_34:
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm24, %xmm1
	vpxorq	%xmm1, %xmm28, %xmm1
	vpshufb	%xmm0, %xmm31, %xmm2
	vpshufb	%xmm0, %xmm17, %xmm3
	vpshufb	%xmm0, %xmm11, %xmm4
	vpshufb	%xmm0, %xmm12, %xmm5
	vpshufb	%xmm0, %xmm19, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm20, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm20, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm20, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm20, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm18, %xmm8
	vpclmulqdq	$1, %xmm5, %xmm18, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm18, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm18, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm22, %xmm7
	vpternlogq	$150, %xmm6, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm22, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm22, %xmm8
	vpternlogq	$150, %xmm6, %xmm10, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm22, %xmm4
	vpternlogq	$150, %xmm0, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm21, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm21, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm21, %xmm6
	vpternlogq	$150, %xmm5, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm21, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm30, %xmm5
	vpternlogq	$150, %xmm0, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm30, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm30, %xmm7
	vpternlogq	$150, %xmm0, %xmm6, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm30, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vmovdqa64	48(%rsp), %xmm29
	vpclmulqdq	$0, %xmm1, %xmm29, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm29, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm29, %xmm4
	vpternlogq	$150, %xmm3, %xmm7, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm29, %xmm1
	vpslldq	$8, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm5, %xmm3
	vpsrldq	$8, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm26, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm26, %xmm3, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$78, %xmm3, %xmm0
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	vmovdqa	%xmm0, %xmm4
	vmovapd	224(%rsp), %xmm12
	vmovdqa64	208(%rsp), %xmm29
	vmovdqa64	192(%rsp), %xmm31
	vmovdqa64	176(%rsp), %xmm30
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	144(%rsp), %xmm10
	vmovdqa	128(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm6
	vmovaps	80(%rsp), %xmm15
	vmovdqa	64(%rsp), %xmm13
	cmpq	$16, %r15
	jae	.LBB1_35
.LBB1_29:
	movq	%rax, %r12
	movq	%r14, %rsi
	testq	%r15, %r15
	je	.LBB1_42
.LBB1_38:
	vmovdqa	%xmm4, 32(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %r14
	movq	%r15, %rdx
	vmovaps	%xmm25, 256(%rsp)
	vmovdqa64	%xmm27, 48(%rsp)
	callq	*%r14
	vmovdqa	48(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	256(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenclast	288(%rsp), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%r14
	testq	%r13, %r13
	je	.LBB1_39
	vmovaps	48(%rsp), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	384(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
.LBB1_41:
	vmovapd	256(%rsp), %xmm25
	vmovapd	224(%rsp), %xmm12
	vmovdqa64	208(%rsp), %xmm29
	vmovdqa64	192(%rsp), %xmm31
	vmovdqa64	176(%rsp), %xmm30
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	144(%rsp), %xmm10
	vmovdqa	128(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm6
	vmovaps	80(%rsp), %xmm15
	vmovdqa	64(%rsp), %xmm13
	vmovdqa64	240(%rsp), %xmm26
	vmovdqa	32(%rsp), %xmm1
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	272(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	jmp	.LBB1_42
.LBB1_39:
	vmovapd	256(%rsp), %xmm25
	vmovapd	224(%rsp), %xmm12
	vmovdqa64	208(%rsp), %xmm29
	vmovdqa64	192(%rsp), %xmm31
	vmovdqa64	176(%rsp), %xmm30
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	144(%rsp), %xmm10
	vmovdqa	128(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm6
	vmovaps	80(%rsp), %xmm15
	vmovdqa	64(%rsp), %xmm13
	vmovdqa64	240(%rsp), %xmm26
	vmovdqa	32(%rsp), %xmm4
.LBB1_42:
	movq	488(%rsp), %rax
	vmovq	%rbx, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vmovdqa	272(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm26, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	.LCPI1_25(%rip), %xmm25, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm29, %xmm3, %xmm3
	vaesenc	%xmm31, %xmm3, %xmm3
	vaesenc	%xmm30, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenclast	288(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_26(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_27(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	vmovdqu	%xmm1, (%rax)
	movl	$1, %ebp
.LBB1_43:
	movl	%ebp, %eax
	addq	$408, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndk_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_tigerlake_encrypt
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
	.section	.text.haberdashery_aes256gcmdndk_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_tigerlake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_tigerlake_decrypt,@function
haberdashery_aes256gcmdndk_tigerlake_decrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	480(%rsp), %r13
	xorl	%eax, %eax
	cmpq	512(%rsp), %r13
	jne	.LBB2_47
	movq	%r8, %rbx
	movabsq	$68719476719, %r8
	cmpq	%r8, %r13
	ja	.LBB2_47
	movabsq	$2305843009213693950, %r8
	cmpq	%r8, %rbx
	ja	.LBB2_47
	cmpq	$24, %rdx
	jne	.LBB2_47
	cmpq	$16, 496(%rsp)
	jne	.LBB2_47
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI2_21(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vmovdqa	(%rdi), %xmm3
	vmovdqa	16(%rdi), %xmm4
	vmovdqa	32(%rdi), %xmm5
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vmovdqa	48(%rdi), %xmm2
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa64	.LCPI2_1(%rip), %xmm26
	vpxor	%xmm1, %xmm3, %xmm1
	vpxorq	%xmm26, %xmm0, %xmm3
	vpxorq	%xmm26, %xmm1, %xmm6
	vmovdqa	.LCPI2_2(%rip), %xmm7
	vpxor	%xmm7, %xmm0, %xmm8
	vpxor	%xmm7, %xmm1, %xmm7
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm7, %xmm4
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm8, %xmm7
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm6, %xmm5
	vaesenc	%xmm2, %xmm7, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm2
	vmovdqa	64(%rdi), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm5
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm2, %xmm2
	vmovdqa	80(%rdi), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm5
	vaesenc	%xmm4, %xmm6, %xmm6
	vmovdqa	96(%rdi), %xmm7
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa	112(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	128(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	144(%rdi), %xmm7
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa	160(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	176(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	192(%rdi), %xmm7
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa	208(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	224(%rdi), %xmm6
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpxorq	%xmm4, %xmm3, %xmm25
	vaesenclast	%xmm6, %xmm5, %xmm3
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm12
	vpternlogq	$150, %xmm0, %xmm1, %xmm25
	vpternlogq	$150, %xmm0, %xmm1, %xmm12
	vpslldq	$4, %xmm25, %xmm0
	vpslldq	$8, %xmm25, %xmm1
	vpslldq	$12, %xmm25, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI2_6(%rip), %xmm16
	vpshufb	%xmm16, %xmm12, %xmm1
	vpbroadcastq	.LCPI2_4(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm25, %xmm0
	vaesenc	%xmm12, %xmm25, %xmm1
	vpslldq	$4, %xmm12, %xmm2
	vpslldq	$8, %xmm12, %xmm3
	vpslldq	$12, %xmm12, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm0, %xmm2
	vpxor	%xmm14, %xmm14, %xmm14
	vaesenclast	%xmm14, %xmm2, %xmm8
	vbroadcastss	.LCPI2_5(%rip), %xmm3
	vpternlogq	$150, %xmm4, %xmm12, %xmm8
	vbroadcastss	.LCPI2_6(%rip), %xmm2
	vmovdqa64	%xmm0, %xmm23
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpslldq	$12, %xmm0, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm8, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpternlogq	$150, %xmm0, %xmm6, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm3
	vmovdqa64	%xmm8, %xmm20
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm9, %xmm7
	vaesenclast	%xmm14, %xmm7, %xmm7
	vpternlogq	$150, %xmm8, %xmm6, %xmm7
	#NO_APP
	vmovdqa64	%xmm9, %xmm24
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm7, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm9, %xmm6, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm14, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm5, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm3
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm9, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm6, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpslldq	$12, %xmm9, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm14, %xmm11, %xmm11
	vpternlogq	$150, %xmm9, %xmm5, %xmm11
	#NO_APP
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpslldq	$12, %xmm10, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm11, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpternlogq	$150, %xmm10, %xmm6, %xmm0
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm3
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm5
	vpslldq	$12, %xmm11, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm0, %xmm15
	vaesenclast	%xmm14, %xmm15, %xmm15
	vpternlogq	$150, %xmm11, %xmm6, %xmm15
	#NO_APP
	vmovaps	%xmm0, 48(%rsp)
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpslldq	$12, %xmm0, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm15, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm0, %xmm6, %xmm13
	#NO_APP
	vmovapd	%xmm15, %xmm6
	vmovdqa	%xmm13, %xmm15
	vpslldq	$4, %xmm6, %xmm2
	vpunpcklqdq	%xmm6, %xmm14, %xmm3
	vinsertps	$55, %xmm6, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm13, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm13
	vpternlogq	$150, %xmm4, %xmm6, %xmm13
	vpslldq	$4, %xmm15, %xmm2
	vpunpcklqdq	%xmm15, %xmm14, %xmm3
	vinsertps	$55, %xmm15, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufb	%xmm16, %xmm13, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm15, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm5, %xmm0, %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpblendd	$12, %xmm1, %xmm14, %xmm1
	vpsllq	$63, %xmm1, %xmm3
	vpternlogq	$30, %xmm2, %xmm0, %xmm3
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm4
	vpternlogq	$150, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpbroadcastq	.LCPI2_13(%rip), %xmm27
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm2
	vpshufd	$78, %xmm0, %xmm16
	vpternlogq	$150, %xmm1, %xmm2, %xmm16
	vpclmulqdq	$0, %xmm4, %xmm16, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm16, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm16, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm16, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm1
	vmovdqa	%xmm3, 368(%rsp)
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	vmovdqa	%xmm0, 352(%rsp)
	vpclmulqdq	$0, %xmm16, %xmm16, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm1
	vmovdqa64	%xmm16, 16(%rsp)
	vpclmulqdq	$17, %xmm16, %xmm16, %xmm2
	vpshufd	$78, %xmm0, %xmm16
	vpternlogq	$150, %xmm1, %xmm2, %xmm16
	vpclmulqdq	$0, %xmm4, %xmm16, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm16, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm16, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm27, %xmm0, %xmm2
	vmovdqa	%xmm4, (%rsp)
	vpclmulqdq	$17, %xmm4, %xmm16, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	testq	%rbx, %rbx
	vmovdqa	%xmm7, 224(%rsp)
	vmovdqa	%xmm8, 208(%rsp)
	vmovdqa	%xmm9, 192(%rsp)
	vmovdqa	%xmm10, 176(%rsp)
	vmovdqa	%xmm11, 160(%rsp)
	vmovaps	%xmm6, 144(%rsp)
	vmovdqa	%xmm5, 240(%rsp)
	vmovdqa64	%xmm16, 384(%rsp)
	vmovdqa	%xmm0, 336(%rsp)
	je	.LBB2_6
	vpxord	%xmm28, %xmm28, %xmm28
	cmpq	$96, %rbx
	jae	.LBB2_19
	movq	%rbx, %rax
	vmovdqa64	%xmm20, %xmm14
	cmpq	$16, %rax
	vmovdqa	(%rsp), %xmm1
	jb	.LBB2_10
.LBB2_11:
	leaq	-16(%rax), %r15
	testb	$16, %r15b
	je	.LBB2_12
	cmpq	$16, %r15
	jae	.LBB2_14
.LBB2_17:
	testq	%r15, %r15
	je	.LBB2_18
.LBB2_22:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r15, %rdx
	vmovaps	%xmm25, 272(%rsp)
	vmovaps	%xmm12, 128(%rsp)
	vmovdqa64	%xmm23, 112(%rsp)
	vmovdqa	%xmm14, 96(%rsp)
	vmovdqa64	%xmm24, 80(%rsp)
	vmovaps	%xmm15, 64(%rsp)
	vmovdqa	%xmm13, 256(%rsp)
	vmovdqa64	%xmm27, 304(%rsp)
	vmovdqa64	%xmm28, 288(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa64	288(%rsp), %xmm28
	vmovdqa	(%rsp), %xmm1
	vmovdqa64	304(%rsp), %xmm27
	vmovdqa	240(%rsp), %xmm5
	vmovdqa	256(%rsp), %xmm13
	vmovaps	64(%rsp), %xmm15
	vmovaps	144(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm10
	vmovdqa64	.LCPI2_1(%rip), %xmm26
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	208(%rsp), %xmm8
	vmovdqa	224(%rsp), %xmm7
	vmovdqa64	80(%rsp), %xmm24
	vmovdqa	96(%rsp), %xmm14
	vmovdqa64	112(%rsp), %xmm23
	vmovapd	128(%rsp), %xmm12
	vmovapd	272(%rsp), %xmm25
	vmovdqa64	32(%rsp), %xmm29
	jmp	.LBB2_23
.LBB2_6:
	xorl	%r15d, %r15d
	vpxord	%xmm28, %xmm28, %xmm28
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm1
	vpxord	%xmm29, %xmm29, %xmm29
	vmovdqa64	%xmm20, %xmm14
	movq	488(%rsp), %rsi
	testq	%r13, %r13
	jne	.LBB2_28
.LBB2_25:
	testq	%r15, %r15
	je	.LBB2_27
	vpshufb	.LCPI2_12(%rip), %xmm29, %xmm0
	vpxorq	%xmm0, %xmm28, %xmm0
	vmovdqa64	%xmm1, %xmm16
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm16, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm16, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm16, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm28
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
.LBB2_27:
	vmovdqu64	(%rsi), %xmm17
	xorl	%r13d, %r13d
	jmp	.LBB2_46
.LBB2_19:
	vmovdqa64	%xmm16, %xmm4
	vmovdqa	.LCPI2_12(%rip), %xmm0
	movq	%rbx, %rax
	vmovdqa64	(%rsp), %xmm16
	vmovdqa	16(%rsp), %xmm10
	vmovdqa64	368(%rsp), %xmm17
	vmovdqa64	352(%rsp), %xmm18
	vmovdqa64	%xmm4, %xmm19
	vmovdqa64	%xmm20, %xmm14
	vmovdqa64	336(%rsp), %xmm20
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	addq	$96, %rcx
	addq	$-96, %rax
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxorq	%xmm1, %xmm28, %xmm1
	vpshufb	%xmm0, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm4, %xmm4
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm16, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm16, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm16, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm16, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm10, %xmm9
	vpclmulqdq	$16, 16(%rsp), %xmm5, %xmm10
	vpclmulqdq	$1, 16(%rsp), %xmm5, %xmm11
	vpternlogq	$150, %xmm10, %xmm8, %xmm11
	vmovdqa	16(%rsp), %xmm10
	vpclmulqdq	$17, %xmm5, %xmm10, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm17, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm17, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm17, %xmm9
	vpternlogq	$150, %xmm7, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm17, %xmm4
	vpternlogq	$150, %xmm6, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm19, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm19, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm19, %xmm7
	vpternlogq	$150, %xmm6, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm19, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm20, %xmm6
	vpternlogq	$150, %xmm5, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm20, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm20, %xmm8
	vpternlogq	$150, %xmm5, %xmm7, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm20, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm18, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm18, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm18, %xmm5
	vpternlogq	$150, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm18, %xmm1
	vpslldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpsrldq	$8, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm27, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm27, %xmm4, %xmm5
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	vpshufd	$78, %xmm4, %xmm28
	vpternlogq	$150, %xmm3, %xmm5, %xmm28
	cmpq	$96, %rax
	jae	.LBB2_20
	vmovdqa	224(%rsp), %xmm7
	vmovdqa	208(%rsp), %xmm8
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm11
	vmovaps	144(%rsp), %xmm6
	vmovdqa	240(%rsp), %xmm5
	cmpq	$16, %rax
	vmovdqa	(%rsp), %xmm1
	jae	.LBB2_11
.LBB2_10:
	movq	%rax, %r15
	testq	%r15, %r15
	jne	.LBB2_22
.LBB2_18:
	vpxord	%xmm29, %xmm29, %xmm29
	xorl	%r15d, %r15d
.LBB2_23:
	vmovdqa	48(%rsp), %xmm4
	movq	488(%rsp), %rsi
	testq	%r13, %r13
	je	.LBB2_25
.LBB2_28:
	movabsq	$-68719476720, %rcx
	leaq	(%r13,%rcx), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_47
	testq	%r15, %r15
	je	.LBB2_31
	vpshufb	.LCPI2_12(%rip), %xmm29, %xmm0
	vpxorq	%xmm0, %xmm28, %xmm0
	vmovdqa64	%xmm1, %xmm16
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm16, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm16, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm16, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm28
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	vpxord	%xmm29, %xmm29, %xmm29
.LBB2_31:
	movq	504(%rsp), %rax
	cmpq	$96, %r13
	vmovapd	%xmm12, 128(%rsp)
	vmovdqa64	%xmm23, 112(%rsp)
	vmovdqa	%xmm14, 96(%rsp)
	vmovdqa64	%xmm24, 80(%rsp)
	vmovaps	%xmm15, 64(%rsp)
	vmovdqa64	%xmm29, 320(%rsp)
	jae	.LBB2_35
	movq	%r13, %r15
	cmpq	$16, %r15
	jb	.LBB2_34
.LBB2_38:
	vmovdqa	.LCPI2_12(%rip), %xmm0
	vmovdqa	.LCPI2_14(%rip), %xmm1
	vmovdqa64	%xmm4, %xmm16
	vmovaps	%xmm6, %xmm17
	vmovdqa64	%xmm5, %xmm18
	vmovdqa64	(%rsp), %xmm19
	.p2align	4, 0x90
.LBB2_39:
	vmovdqu	(%r14), %xmm2
	addq	$16, %r14
	leaq	16(%rax), %r12
	addq	$-16, %r15
	vpshufb	%xmm0, %xmm2, %xmm3
	vpxorq	%xmm3, %xmm28, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm19, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm19, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm19, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm19, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm27, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm27, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm28
	vpternlogq	$150, %xmm5, %xmm3, %xmm28
	vmovdqa64	%xmm24, %xmm5
	vmovdqa64	%xmm23, %xmm4
	vpshufb	%xmm0, %xmm26, %xmm3
	vpaddd	%xmm1, %xmm26, %xmm26
	vxorpd	%xmm3, %xmm25, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm23, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm24, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm16, %xmm3, %xmm3
	vaesenc	%xmm17, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenclast	%xmm18, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rax)
	movq	%r12, %rax
	cmpq	$15, %r15
	ja	.LBB2_39
	jmp	.LBB2_40
.LBB2_12:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxorq	%xmm0, %xmm28, %xmm0
	vpclmulqdq	$0, (%rsp), %xmm0, %xmm1
	vpclmulqdq	$16, (%rsp), %xmm0, %xmm2
	vpclmulqdq	$1, (%rsp), %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, (%rsp), %xmm0, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm28
	vmovdqa	(%rsp), %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	movq	%r15, %rax
	cmpq	$16, %r15
	jb	.LBB2_17
.LBB2_14:
	vmovdqa	.LCPI2_12(%rip), %xmm0
	vmovdqa64	%xmm1, %xmm16
	.p2align	4, 0x90
.LBB2_15:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxorq	%xmm1, %xmm28, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm16, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm16, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm16, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm16, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm27, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm27, %xmm3, %xmm5
	vpternlogq	$150, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm3, %xmm1
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm16, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm16, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm16, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm16, %xmm2
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm1, %xmm28
	vpternlogq	$150, %xmm3, %xmm2, %xmm28
	cmpq	$15, %rax
	ja	.LBB2_15
	movq	%rax, %r15
	vmovdqa	240(%rsp), %xmm5
	vmovdqa64	%xmm16, %xmm1
	testq	%r15, %r15
	jne	.LBB2_22
	jmp	.LBB2_18
.LBB2_35:
	vmovdqa64	.LCPI2_1(%rip), %xmm26
	vmovdqa	.LCPI2_12(%rip), %xmm0
	movq	%r13, %r15
	vmovdqa64	%xmm13, %xmm30
	vmovdqa64	%xmm5, %xmm31
	vmovdqa64	(%rsp), %xmm16
	vmovaps	16(%rsp), %xmm21
	vmovdqa64	368(%rsp), %xmm19
	vmovdqa64	352(%rsp), %xmm22
	vmovdqa64	384(%rsp), %xmm20
	vmovdqa64	336(%rsp), %xmm29
	.p2align	4, 0x90
.LBB2_36:
	vmovdqu64	(%r14), %xmm23
	vmovdqu64	16(%r14), %xmm24
	vmovdqu64	32(%r14), %xmm17
	vmovdqu64	48(%r14), %xmm18
	vmovdqu	64(%r14), %xmm12
	vmovdqu	80(%r14), %xmm13
	vpshufb	%xmm0, %xmm26, %xmm1
	vpaddd	.LCPI2_14(%rip), %xmm26, %xmm2
	vpshufb	%xmm0, %xmm2, %xmm2
	vpaddd	.LCPI2_1(%rip), %xmm26, %xmm3
	vpshufb	%xmm0, %xmm3, %xmm3
	vpaddd	.LCPI2_15(%rip), %xmm26, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm4
	vpaddd	.LCPI2_2(%rip), %xmm26, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vpaddd	.LCPI2_16(%rip), %xmm26, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm6
	vxorpd	%xmm1, %xmm25, %xmm14
	vxorpd	%xmm2, %xmm25, %xmm15
	vxorpd	%xmm3, %xmm25, %xmm1
	vxorpd	%xmm4, %xmm25, %xmm2
	vxorpd	%xmm5, %xmm25, %xmm3
	vxorpd	%xmm6, %xmm25, %xmm4
	vmovaps	128(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm0, %xmm13, %xmm8
	vxorpd	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vxorps	%xmm5, %xmm5, %xmm5
	vmovaps	112(%rsp), %xmm10
	vmovdqa64	%xmm16, %xmm11
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vmovaps	96(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm0, %xmm12, %xmm8
	vmovaps	80(%rsp), %xmm10
	vmovaps	%xmm21, %xmm11
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vmovaps	224(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm0, %xmm18, %xmm8
	vmovaps	208(%rsp), %xmm10
	vmovdqa64	%xmm19, %xmm11
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vmovaps	192(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm0, %xmm17, %xmm8
	vmovdqa64	%xmm20, %xmm11
	vmovaps	176(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vmovaps	160(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm0, %xmm24, %xmm8
	vmovaps	48(%rsp), %xmm10
	vmovdqa64	%xmm29, %xmm11
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm0, %xmm23, %xmm8
	vpxorq	%xmm8, %xmm28, %xmm8
	vmovaps	144(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	#NO_APP
	vmovdqa64	%xmm22, %xmm11
	vmovdqa	64(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm7, %xmm9, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpunpckhqdq	%xmm9, %xmm7, %xmm7
	vpxorq	%xmm7, %xmm5, %xmm28
	vmovdqa64	%xmm30, %xmm5
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	#NO_APP
	vmovdqa64	%xmm31, %xmm5
	#APP
	vaesenclast	%xmm5, %xmm14, %xmm14
	vaesenclast	%xmm5, %xmm15, %xmm15
	vaesenclast	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm4, %xmm4
	#NO_APP
	vpxorq	%xmm23, %xmm14, %xmm5
	vpxorq	%xmm24, %xmm15, %xmm7
	vpxorq	%xmm17, %xmm1, %xmm1
	vpxorq	%xmm18, %xmm2, %xmm2
	vpxor	%xmm3, %xmm12, %xmm3
	vpxor	%xmm4, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm27, %xmm6, %xmm8
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vmovdqu	%xmm5, (%rax)
	vmovdqu	%xmm7, 16(%rax)
	vmovdqu	%xmm1, 32(%rax)
	vmovdqu	%xmm2, 48(%rax)
	vmovdqu	%xmm3, 64(%rax)
	vmovdqu	%xmm4, 80(%rax)
	vpclmulqdq	$16, %xmm27, %xmm6, %xmm1
	vpshufd	$78, %xmm6, %xmm2
	vpternlogq	$150, %xmm1, %xmm2, %xmm28
	addq	$96, %r14
	addq	$96, %rax
	addq	$-96, %r15
	vpaddd	.LCPI2_17(%rip), %xmm26, %xmm26
	cmpq	$96, %r15
	jae	.LBB2_36
	vmovapd	128(%rsp), %xmm12
	vmovdqa64	112(%rsp), %xmm23
	vmovdqa	96(%rsp), %xmm14
	vmovdqa64	80(%rsp), %xmm24
	vmovdqa	224(%rsp), %xmm7
	vmovdqa	208(%rsp), %xmm8
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	48(%rsp), %xmm4
	vmovaps	144(%rsp), %xmm6
	vmovaps	64(%rsp), %xmm15
	vmovdqa64	%xmm30, %xmm13
	vmovdqa64	%xmm31, %xmm5
	cmpq	$16, %r15
	jae	.LBB2_38
.LBB2_34:
	movq	%rax, %r12
.LBB2_40:
	vmovdqa64	%xmm28, 288(%rsp)
	vmovdqa64	%xmm27, 304(%rsp)
	vmovdqa	%xmm13, 256(%rsp)
	vmovapd	%xmm25, 272(%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	je	.LBB2_42
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r14, %rsi
	movq	%r15, %rdx
	vmovdqa64	%xmm26, 16(%rsp)
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	272(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenclast	240(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 320(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	488(%rsp), %rsi
.LBB2_42:
	vpxor	320(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	%xmm0, 400(%rsp)
	vmovdqa	%xmm2, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	400(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.LBB2_43
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	288(%rsp), %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vmovdqa64	304(%rsp), %xmm27
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm28
	vpternlogq	$150, %xmm2, %xmm0, %xmm28
	vmovapd	272(%rsp), %xmm25
	vmovapd	128(%rsp), %xmm12
	vmovdqa64	112(%rsp), %xmm23
	vmovdqa	96(%rsp), %xmm14
	vmovdqa64	80(%rsp), %xmm24
	vmovdqa	224(%rsp), %xmm7
	vmovdqa	208(%rsp), %xmm8
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	48(%rsp), %xmm4
	vmovaps	144(%rsp), %xmm6
	vmovaps	64(%rsp), %xmm15
	vmovdqa	256(%rsp), %xmm13
	vmovdqa	240(%rsp), %xmm5
	jmp	.LBB2_45
.LBB2_43:
	vmovapd	272(%rsp), %xmm25
	vmovapd	128(%rsp), %xmm12
	vmovdqa64	112(%rsp), %xmm23
	vmovdqa	96(%rsp), %xmm14
	vmovdqa64	80(%rsp), %xmm24
	vmovdqa	224(%rsp), %xmm7
	vmovdqa	208(%rsp), %xmm8
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	48(%rsp), %xmm4
	vmovaps	144(%rsp), %xmm6
	vmovaps	64(%rsp), %xmm15
	vmovdqa	256(%rsp), %xmm13
	vmovdqa	240(%rsp), %xmm5
	vmovdqa64	304(%rsp), %xmm27
	vmovdqa64	288(%rsp), %xmm28
.LBB2_45:
	shlq	$3, %r13
	vmovdqa64	16(%rsp), %xmm17
.LBB2_46:
	shlq	$3, %rbx
	vmovq	%r13, %xmm0
	vmovq	%rbx, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxorq	%xmm28, %xmm0, %xmm0
	vmovdqa64	(%rsp), %xmm16
	vpclmulqdq	$0, %xmm0, %xmm16, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm16, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm16, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm16, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm27, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vxorpd	.LCPI2_18(%rip), %xmm25, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm23, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm24, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm3, %xmm3
	vpshufb	.LCPI2_19(%rip), %xmm1, %xmm1
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_20(%rip), %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vpternlogq	$150, %xmm3, %xmm17, %xmm2
	xorl	%eax, %eax
	vptest	%xmm2, %xmm2
	sete	%al
.LBB2_47:
	addq	$424, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndk_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndk_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_tigerlake_is_supported,@function
haberdashery_aes256gcmdndk_tigerlake_is_supported:
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
	.size	haberdashery_aes256gcmdndk_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

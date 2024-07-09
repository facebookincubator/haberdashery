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
.LCPI0_1:
	.quad	4294967297
	.quad	4294967297
.LCPI0_2:
	.quad	8589934594
	.quad	8589934594
.LCPI0_3:
	.quad	17179869188
	.quad	17179869188
.LCPI0_4:
	.quad	34359738376
	.quad	34359738376
.LCPI0_5:
	.quad	68719476752
	.quad	68719476752
.LCPI0_6:
	.quad	137438953504
	.quad	137438953504
.LCPI0_7:
	.quad	274877907008
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmdndk_haswell_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_haswell_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_haswell_init,@function
haberdashery_aes256gcmdndk_haswell_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovups	(%rsi), %ymm0
	vmovdqu	(%rsi), %xmm1
	vmovdqu	16(%rsi), %xmm3
	vpslldq	$4, %xmm1, %xmm2
	vpslldq	$8, %xmm1, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpslldq	$12, %xmm1, %xmm4
	vpxor	%xmm4, %xmm2, %xmm4
	vpbroadcastd	.LCPI0_8(%rip), %xmm2
	vpshufb	%xmm2, %xmm3, %xmm5
	vaesenclast	.LCPI0_1(%rip), %xmm5, %xmm5
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpslldq	$4, %xmm3, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm1, %xmm6
	vpxor	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm6, %xmm6
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpslldq	$12, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm3, %xmm6
	vaesenclast	.LCPI0_2(%rip), %xmm6, %xmm6
	vpxor	%xmm1, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpslldq	$4, %xmm3, %xmm6
	vpslldq	$8, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$255, %xmm4, %xmm7
	vaesenclast	%xmm5, %xmm7, %xmm7
	vpxor	%xmm3, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$12, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufb	%xmm2, %xmm6, %xmm8
	vaesenclast	.LCPI0_3(%rip), %xmm8, %xmm8
	vpxor	%xmm4, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$4, %xmm6, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$255, %xmm7, %xmm9
	vaesenclast	%xmm5, %xmm9, %xmm9
	vpxor	%xmm6, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpslldq	$12, %xmm7, %xmm10
	vpshufb	%xmm2, %xmm8, %xmm11
	vaesenclast	.LCPI0_4(%rip), %xmm11, %xmm11
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm7, %xmm9, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpslldq	$12, %xmm8, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpshufd	$255, %xmm9, %xmm11
	vaesenclast	%xmm5, %xmm11, %xmm11
	vpxor	%xmm8, %xmm10, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpslldq	$12, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpshufb	%xmm2, %xmm10, %xmm12
	vaesenclast	.LCPI0_5(%rip), %xmm12, %xmm12
	vpxor	%xmm9, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpslldq	$12, %xmm10, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpshufd	$255, %xmm11, %xmm13
	vaesenclast	%xmm5, %xmm13, %xmm13
	vpxor	%xmm10, %xmm12, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpslldq	$12, %xmm11, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpshufb	%xmm2, %xmm12, %xmm14
	vaesenclast	.LCPI0_6(%rip), %xmm14, %xmm14
	vpxor	%xmm11, %xmm13, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpslldq	$12, %xmm12, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpshufd	$255, %xmm13, %xmm15
	vaesenclast	%xmm5, %xmm15, %xmm5
	vpxor	%xmm12, %xmm14, %xmm14
	vpxor	%xmm5, %xmm14, %xmm5
	vpslldq	$4, %xmm13, %xmm14
	vpslldq	$8, %xmm13, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpslldq	$12, %xmm13, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpshufb	%xmm2, %xmm5, %xmm2
	vaesenclast	.LCPI0_7(%rip), %xmm2, %xmm2
	vpxor	%xmm13, %xmm14, %xmm14
	vpxor	%xmm2, %xmm14, %xmm2
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
	.size	haberdashery_aes256gcmdndk_haswell_init, .Lfunc_end0-haberdashery_aes256gcmdndk_haswell_init
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
.LCPI1_4:
	.quad	4294967297
	.quad	4294967297
.LCPI1_11:
	.quad	274877907008
	.quad	274877907008
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
.LCPI1_13:
	.zero	8
	.quad	-4467570830351532032
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_30:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndk_haswell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_haswell_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_haswell_encrypt,@function
haberdashery_aes256gcmdndk_haswell_encrypt:
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
	subq	$440, %rsp
	.cfi_def_cfa_offset 496
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	496(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	512(%rsp), %r13
	jne	.LBB1_47
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_47
	movq	%r8, %rbx
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_47
	cmpq	$24, %rdx
	jne	.LBB1_47
	cmpq	$16, 528(%rsp)
	jne	.LBB1_47
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpbroadcastd	.LCPI1_29(%rip), %xmm3
	vpinsrd	$1, 12(%rsi), %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpunpcklqdq	%xmm1, %xmm3, %xmm1
	vmovdqa	(%rdi), %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	.LCPI1_1(%rip), %xmm3
	vpxor	%xmm3, %xmm0, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vmovdqa	.LCPI1_2(%rip), %xmm5
	vpxor	%xmm5, %xmm0, %xmm4
	vpxor	%xmm5, %xmm1, %xmm5
	vmovaps	16(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	32(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	48(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm5
	vpxor	%xmm0, %xmm4, %xmm7
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpbroadcastd	.LCPI1_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm7, %xmm3
	vaesenclast	.LCPI1_4(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vmovdqa	%xmm5, 48(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm1
	vpslldq	$4, %xmm7, %xmm2
	vpslldq	$8, %xmm7, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm7, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm6, %xmm3
	vpxor	%xmm11, %xmm11, %xmm11
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm7, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm8
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa	%xmm6, 16(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovdqa	%xmm8, %xmm9
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm10, %xmm6
	vaesenclast	%xmm11, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovaps	%xmm10, 256(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm6, 32(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm6, %xmm3, %xmm3
	vpshufd	$255, %xmm8, %xmm10
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpxor	%xmm3, %xmm10, %xmm10
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	vmovaps	%xmm8, 240(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpshufb	%xmm2, %xmm10, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm10, 224(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$255, %xmm6, %xmm8
	vaesenclast	%xmm11, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	vmovaps	%xmm6, 208(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm11, %xmm15, %xmm15
	vpxor	%xmm3, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm14, 320(%rsp)
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm14, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vpshufb	%xmm2, %xmm15, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpxor	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpslldq	$4, %xmm15, %xmm2
	vpunpcklqdq	%xmm15, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm15, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm13, %xmm3
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm14
	vpslldq	$4, %xmm13, %xmm2
	vpunpcklqdq	%xmm13, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm13, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm14, %xmm0
	vaesenclast	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm13, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovaps	%xmm15, 304(%rsp)
	vaesenc	%xmm15, %xmm1, %xmm0
	vmovaps	%xmm13, 288(%rsp)
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa	%xmm2, 272(%rsp)
	vaesenclast	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm11, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpbroadcastq	.LCPI1_30(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm6, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm6, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm6, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm2
	vpshufd	$78, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm10
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm10, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm15, %xmm10, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm10, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm4
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 368(%rsp)
	vpshufd	$78, %xmm3, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm10, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm12
	leaq	-1(%rbx), %rdx
	cmpq	%rax, %rdx
	vmovaps	%xmm8, 192(%rsp)
	vmovdqa	%xmm7, 112(%rsp)
	vmovdqa	%xmm9, 96(%rsp)
	vmovdqa	%xmm14, 80(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	jae	.LBB1_25
	cmpq	$96, %rbx
	vmovdqa	%xmm6, 160(%rsp)
	vmovdqa	%xmm10, 176(%rsp)
	jb	.LBB1_7
	vmovdqa	%xmm6, %xmm8
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm5
	vpshufb	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm6
	vpshufb	%xmm0, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm7
	vpshufb	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	%xmm11, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm7
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
	vmovdqu	(%rcx), %xmm6
	vpxor	%xmm1, %xmm3, %xmm1
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm3, %xmm3
	vmovdqa	%xmm11, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm5
	vmovdqa	%xmm12, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm1, %xmm7
	vmovdqa	368(%rsp), %xmm10
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm10, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm10, %xmm3
	vpxor	%xmm3, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	addq	$96, %rcx
	leaq	-96(%rbx), %rax
	cmpq	$96, %rax
	jb	.LBB1_15
	vmovdqa	176(%rsp), %xmm10
	vmovdqa	%xmm9, %xmm12
	vmovdqa	368(%rsp), %xmm13
	.p2align	4, 0x90
.LBB1_23:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm3, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_30(%rip), %xmm14
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm9
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm9
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm4
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm8
	vpxor	%xmm1, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm1
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpshufb	%xmm0, %xmm7, %xmm7
	vmovdqa	160(%rsp), %xmm14
	vpclmulqdq	$0, %xmm7, %xmm14, %xmm9
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm7, %xmm14, %xmm8
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm14, %xmm9
	vpshufb	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm14, %xmm7
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm9
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm8
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm10, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm5, %xmm10, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm10, %xmm8
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm6, %xmm8, %xmm6
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm10, %xmm5
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB1_23
	jmp	.LBB1_24
.LBB1_25:
	vmovdqa	%xmm0, (%rsp)
	testq	%r13, %r13
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	16(%rsp), %xmm8
	jne	.LBB1_28
	jmp	.LBB1_46
.LBB1_7:
	movq	%rbx, %rax
	vmovdqa	16(%rsp), %xmm8
	cmpq	$16, %rax
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm4
	jae	.LBB1_16
.LBB1_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	vmovdqa	%xmm0, (%rsp)
	jne	.LBB1_11
	jmp	.LBB1_26
.LBB1_15:
	vmovdqa	176(%rsp), %xmm10
	vmovdqa	%xmm9, %xmm12
.LBB1_24:
	vpslldq	$8, %xmm3, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm3, %xmm1
	vpbroadcastq	.LCPI1_30(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	160(%rsp), %xmm6
	vmovdqa	80(%rsp), %xmm14
	cmpq	$16, %rax
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm4
	jb	.LBB1_9
.LBB1_16:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB1_17
	cmpq	$16, %rdx
	jae	.LBB1_19
.LBB1_10:
	testq	%rdx, %rdx
	vmovdqa	%xmm0, (%rsp)
	je	.LBB1_26
.LBB1_11:
	vmovdqa	%xmm12, 336(%rsp)
	vmovdqa	%xmm11, 352(%rsp)
	vmovdqa	%xmm15, 128(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	64(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_45
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	160(%rsp), %xmm6
	vmovdqa	352(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm10
	vmovdqa	336(%rsp), %xmm12
	jb	.LBB1_47
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_30(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm0, (%rsp)
	jmp	.LBB1_28
.LBB1_17:
	vmovdqa	%xmm0, %xmm1
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_30(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_19:
	vmovdqa	%xmm0, %xmm2
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpbroadcastq	.LCPI1_30(%rip), %xmm13
	.p2align	4, 0x90
.LBB1_20:
	vmovdqu	(%rcx), %xmm1
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	addq	$-32, %rax
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm2
	cmpq	$15, %rax
	ja	.LBB1_20
	movq	%rax, %rdx
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	%xmm2, %xmm0
	testq	%rdx, %rdx
	vmovdqa	%xmm0, (%rsp)
	jne	.LBB1_11
.LBB1_26:
	testq	%r13, %r13
	je	.LBB1_46
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB1_47
.LBB1_28:
	movq	504(%rsp), %rdx
	cmpq	$96, %r13
	vmovdqa	%xmm15, 128(%rsp)
	jb	.LBB1_29
	vmovdqa	%xmm12, 336(%rsp)
	vmovdqa	%xmm10, 176(%rsp)
	vmovdqa	%xmm11, 352(%rsp)
	vmovdqa	%xmm6, 160(%rsp)
	leaq	96(%r14), %rax
	leaq	96(%rdx), %rcx
	vpxor	.LCPI1_14(%rip), %xmm4, %xmm0
	vpxor	.LCPI1_15(%rip), %xmm4, %xmm1
	vpxor	.LCPI1_16(%rip), %xmm4, %xmm2
	vpxor	.LCPI1_17(%rip), %xmm4, %xmm3
	vmovdqa	%xmm4, %xmm10
	vpxor	.LCPI1_18(%rip), %xmm4, %xmm4
	vmovdqa	%xmm5, %xmm6
	vpxor	.LCPI1_19(%rip), %xmm10, %xmm5
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
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	256(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	240(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	320(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	304(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	288(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	#NO_APP
	vmovaps	272(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	(%r14), %xmm0, %xmm12
	vxorps	16(%r14), %xmm1, %xmm11
	vpxor	32(%r14), %xmm2, %xmm6
	vpxor	48(%r14), %xmm3, %xmm10
	vpxor	64(%r14), %xmm4, %xmm1
	vpxor	80(%r14), %xmm5, %xmm2
	vmovdqu	%xmm12, (%rdx)
	vmovups	%xmm11, 16(%rdx)
	vmovdqu	%xmm6, 32(%rdx)
	vmovdqu	%xmm10, 48(%rdx)
	vmovdqu	%xmm1, 64(%rdx)
	leaq	-96(%r13), %r15
	vmovdqu	%xmm2, 80(%rdx)
	cmpq	$96, %r15
	jb	.LBB1_35
	vmovdqa	%xmm1, %xmm5
	vmovdqa	.LCPI1_20(%rip), %xmm1
	vmovdqa	(%rsp), %xmm9
	.p2align	4, 0x90
.LBB1_38:
	vmovdqa	%xmm5, 400(%rsp)
	vmovdqa	%xmm6, 384(%rsp)
	vmovaps	%xmm11, 144(%rsp)
	vmovdqa	.LCPI1_12(%rip), %xmm11
	vpshufb	%xmm11, %xmm1, %xmm3
	vpaddd	.LCPI1_21(%rip), %xmm1, %xmm4
	vpshufb	%xmm11, %xmm4, %xmm5
	vpaddd	.LCPI1_1(%rip), %xmm1, %xmm4
	vpshufb	%xmm11, %xmm4, %xmm6
	vpaddd	.LCPI1_22(%rip), %xmm1, %xmm4
	vpshufb	%xmm11, %xmm4, %xmm7
	vpaddd	.LCPI1_2(%rip), %xmm1, %xmm4
	vpshufb	%xmm11, %xmm4, %xmm8
	vpaddd	.LCPI1_23(%rip), %xmm1, %xmm4
	vpshufb	%xmm11, %xmm4, %xmm0
	vpshufb	%xmm11, %xmm12, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vmovdqa	%xmm4, (%rsp)
	vpshufb	%xmm11, %xmm2, %xmm9
	vmovdqa	48(%rsp), %xmm4
	vpxor	%xmm3, %xmm4, %xmm12
	vpxor	%xmm5, %xmm4, %xmm13
	vpxor	%xmm6, %xmm4, %xmm14
	vpxor	%xmm7, %xmm4, %xmm15
	vpxor	%xmm4, %xmm8, %xmm2
	vpxor	%xmm0, %xmm4, %xmm3
	vmovaps	112(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	16(%rsp), %xmm8
	vmovaps	128(%rsp), %xmm4
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	#NO_APP
	vmovdqa	400(%rsp), %xmm0
	vpshufb	%xmm11, %xmm0, %xmm0
	vmovaps	96(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	#NO_APP
	vmovaps	256(%rsp), %xmm4
	vmovaps	160(%rsp), %xmm9
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpshufb	%xmm11, %xmm10, %xmm0
	vmovaps	32(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	#NO_APP
	vmovaps	240(%rsp), %xmm4
	vmovaps	352(%rsp), %xmm9
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovdqa	384(%rsp), %xmm0
	vpshufb	%xmm11, %xmm0, %xmm0
	vmovaps	224(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	#NO_APP
	vmovaps	208(%rsp), %xmm4
	vmovaps	176(%rsp), %xmm9
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovdqa	144(%rsp), %xmm0
	vpshufb	%xmm11, %xmm0, %xmm0
	vmovaps	192(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	#NO_APP
	vmovaps	320(%rsp), %xmm9
	vmovaps	336(%rsp), %xmm4
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovaps	304(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vmovdqa	288(%rsp), %xmm8
	vmovdqa	368(%rsp), %xmm4
	vmovaps	(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpunpcklqdq	%xmm6, %xmm4, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpunpckhqdq	%xmm4, %xmm6, %xmm4
	vpbroadcastq	.LCPI1_30(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm6
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vmovaps	80(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	#NO_APP
	vmovaps	272(%rsp), %xmm5
	#APP
	vaesenclast	%xmm5, %xmm12, %xmm12
	vaesenclast	%xmm5, %xmm13, %xmm13
	vaesenclast	%xmm5, %xmm14, %xmm14
	vaesenclast	%xmm5, %xmm15, %xmm15
	vaesenclast	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpxor	(%rax), %xmm12, %xmm12
	vxorps	16(%rax), %xmm13, %xmm11
	vpxor	32(%rax), %xmm14, %xmm6
	vpxor	48(%rax), %xmm15, %xmm10
	vpxor	64(%rax), %xmm2, %xmm5
	vpxor	%xmm0, %xmm4, %xmm9
	vpxor	80(%rax), %xmm3, %xmm2
	addq	$96, %rax
	vmovdqu	%xmm12, (%rcx)
	vmovups	%xmm11, 16(%rcx)
	vmovdqu	%xmm6, 32(%rcx)
	vmovdqu	%xmm10, 48(%rcx)
	vmovdqu	%xmm5, 64(%rcx)
	vmovdqu	%xmm2, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %r15
	vpaddd	.LCPI1_24(%rip), %xmm1, %xmm1
	cmpq	$95, %r15
	ja	.LBB1_38
	vmovdqa	%xmm6, 384(%rsp)
	vmovdqa	%xmm9, (%rsp)
	vmovdqa	%xmm1, 144(%rsp)
	vpbroadcastq	.LCPI1_30(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	%xmm5, %xmm1
	jmp	.LBB1_36
.LBB1_29:
	vmovaps	.LCPI1_1(%rip), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	movq	%r13, %r15
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	(%rsp), %xmm0
	vmovdqa	192(%rsp), %xmm8
	vmovdqa	208(%rsp), %xmm10
	vmovdqa	240(%rsp), %xmm3
	vmovdqa	224(%rsp), %xmm6
	vpbroadcastq	.LCPI1_30(%rip), %xmm13
	cmpq	$16, %r15
	jae	.LBB1_40
.LBB1_31:
	movq	%rdx, %r12
	movq	%r14, %rsi
	vmovdqa	144(%rsp), %xmm7
	jmp	.LBB1_32
.LBB1_35:
	vmovdqa	%xmm6, 384(%rsp)
	vmovdqa	.LCPI1_20(%rip), %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vpbroadcastq	.LCPI1_30(%rip), %xmm13
.LBB1_36:
	vmovdqa	.LCPI1_12(%rip), %xmm3
	vpshufb	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm4
	vpshufb	%xmm3, %xmm1, %xmm5
	vmovdqa	160(%rsp), %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm7
	vpshufb	%xmm3, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm8
	vpxor	(%rsp), %xmm1, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpshufb	%xmm3, %xmm11, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm11
	vmovdqa	384(%rsp), %xmm9
	vpshufb	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm12
	vpshufb	%xmm3, %xmm10, %xmm3
	vmovdqa	352(%rsp), %xmm14
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm10
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm12
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm6
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm3
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vmovdqa	176(%rsp), %xmm11
	vpclmulqdq	$0, %xmm9, %xmm11, %xmm5
	vpxor	%xmm6, %xmm12, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm11, %xmm8
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$16, %xmm9, %xmm11, %xmm10
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm11, %xmm5
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	336(%rsp), %xmm7
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	368(%rsp), %xmm5
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	movq	%rcx, %rdx
	movq	%rax, %r14
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	240(%rsp), %xmm3
	vmovdqa	224(%rsp), %xmm6
	vmovdqa	208(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm8
	vmovdqa	80(%rsp), %xmm14
	cmpq	$16, %r15
	jb	.LBB1_31
.LBB1_40:
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm1
	.p2align	4, 0x90
.LBB1_41:
	vmovdqa	.LCPI1_12(%rip), %xmm12
	vpshufb	%xmm12, %xmm7, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vaesenc	112(%rsp), %xmm2, %xmm2
	vaesenc	16(%rsp), %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	320(%rsp), %xmm2, %xmm2
	vaesenc	304(%rsp), %xmm2, %xmm2
	vaesenc	288(%rsp), %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenclast	272(%rsp), %xmm2, %xmm2
	vpxor	(%r14), %xmm2, %xmm2
	vmovdqa	%xmm3, %xmm9
	vpshufb	%xmm12, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm3
	vmovdqa	%xmm10, %xmm12
	vmovdqa	%xmm8, %xmm10
	vmovdqa	%xmm4, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm4
	vmovdqa	%xmm5, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm5
	vmovdqu	%xmm2, (%rdx)
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqa	%xmm0, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm9, %xmm3
	vpxor	%xmm2, %xmm4, %xmm0
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm10, %xmm8
	vmovdqa	%xmm12, %xmm10
	leaq	16(%r14), %rsi
	leaq	16(%rdx), %r12
	addq	$-16, %r15
	vpaddd	.LCPI1_21(%rip), %xmm7, %xmm7
	movq	%r12, %rdx
	movq	%rsi, %r14
	cmpq	$15, %r15
	ja	.LBB1_41
.LBB1_32:
	vmovdqa	%xmm7, 144(%rsp)
	testq	%r15, %r15
	vmovdqa	%xmm0, (%rsp)
	je	.LBB1_33
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r14
	movq	%r15, %rdx
	callq	*%r14
	vmovdqa	144(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	48(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenclast	272(%rsp), %xmm0, %xmm0
	vpxor	64(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 160(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%r14
	testq	%r13, %r13
	je	.LBB1_43
	vmovaps	160(%rsp), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	64(%rsp), %xmm0
.LBB1_45:
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm14
	vpbroadcastq	.LCPI1_30(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm0, (%rsp)
	jmp	.LBB1_46
.LBB1_33:
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm9
	jmp	.LBB1_46
.LBB1_43:
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm15
.LBB1_46:
	vmovq	%rbx, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_30(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm3
	vpxor	.LCPI1_25(%rip), %xmm4, %xmm4
	vpxor	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm7, %xmm4, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vaesenc	208(%rsp), %xmm3, %xmm3
	vaesenc	192(%rsp), %xmm3, %xmm3
	vaesenc	320(%rsp), %xmm3, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vpshufb	.LCPI1_26(%rip), %xmm2, %xmm2
	vaesenclast	272(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_27(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	movq	520(%rsp), %rax
	vmovdqu	%xmm0, (%rax)
	movl	$1, %ebp
.LBB1_47:
	movl	%ebp, %eax
	addq	$440, %rsp
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
	.size	haberdashery_aes256gcmdndk_haswell_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_haswell_encrypt
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
.LCPI2_4:
	.quad	4294967297
	.quad	4294967297
.LCPI2_11:
	.quad	274877907008
	.quad	274877907008
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
.LCPI2_13:
	.zero	8
	.quad	-4467570830351532032
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
.LCPI2_20:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_22:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndk_haswell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_haswell_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_haswell_decrypt,@function
haberdashery_aes256gcmdndk_haswell_decrypt:
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
	subq	$504, %rsp
	.cfi_def_cfa_offset 560
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	560(%rsp), %r13
	xorl	%eax, %eax
	cmpq	592(%rsp), %r13
	jne	.LBB2_49
	movq	%r8, %rbx
	movabsq	$68719476719, %r8
	cmpq	%r8, %r13
	ja	.LBB2_49
	movabsq	$2305843009213693950, %r8
	cmpq	%r8, %rbx
	ja	.LBB2_49
	cmpq	$24, %rdx
	jne	.LBB2_49
	cmpq	$16, 576(%rsp)
	jne	.LBB2_49
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpbroadcastd	.LCPI2_21(%rip), %xmm3
	vpinsrd	$1, 12(%rsi), %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpunpcklqdq	%xmm1, %xmm3, %xmm1
	vmovdqa	(%rdi), %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	.LCPI2_1(%rip), %xmm3
	vpxor	%xmm3, %xmm0, %xmm2
	vmovdqa	%xmm3, (%rsp)
	vpxor	%xmm3, %xmm1, %xmm3
	vmovdqa	.LCPI2_2(%rip), %xmm5
	vpxor	%xmm5, %xmm0, %xmm4
	vpxor	%xmm5, %xmm1, %xmm5
	vmovaps	16(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	32(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	48(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm5
	vpxor	%xmm0, %xmm4, %xmm14
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpbroadcastd	.LCPI2_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm14, %xmm3
	vaesenclast	.LCPI2_4(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vmovdqa	%xmm5, 80(%rsp)
	vaesenc	%xmm14, %xmm5, %xmm1
	vpslldq	$4, %xmm14, %xmm2
	vpslldq	$8, %xmm14, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm14, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm6, %xmm3
	vpxor	%xmm10, %xmm10, %xmm10
	vaesenclast	%xmm10, %xmm3, %xmm3
	vpxor	%xmm2, %xmm14, %xmm2
	vpxor	%xmm2, %xmm3, %xmm7
	vbroadcastss	.LCPI2_5(%rip), %xmm3
	vbroadcastss	.LCPI2_6(%rip), %xmm2
	vmovdqa	%xmm6, 48(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovdqa	%xmm7, 32(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm3
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm10, %xmm9, %xmm9
	vpxor	%xmm3, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm3
	vmovaps	%xmm8, 128(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpshufb	%xmm2, %xmm9, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm9, %xmm5
	vmovaps	%xmm9, 288(%rsp)
	#APP
	vaesenc	%xmm5, %xmm1, %xmm1
	vpslldq	$4, %xmm5, %xmm3
	vpslldq	$8, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$255, %xmm6, %xmm9
	vaesenclast	%xmm10, %xmm9, %xmm9
	vpxor	%xmm3, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm3
	vmovaps	%xmm6, 64(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm9, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpshufd	$255, %xmm7, %xmm11
	vaesenclast	%xmm10, %xmm11, %xmm11
	vpxor	%xmm3, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	vmovaps	%xmm7, 272(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm11, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovdqa	%xmm11, 256(%rsp)
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm11, %xmm3
	vpshufd	$255, %xmm6, %xmm7
	vaesenclast	%xmm10, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm3
	vmovaps	%xmm6, 112(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm12
	vaesenclast	%xmm3, %xmm12, %xmm12
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vpslldq	$4, %xmm7, %xmm2
	vpunpcklqdq	%xmm7, %xmm10, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm7, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm12, %xmm3
	vaesenclast	%xmm10, %xmm3, %xmm3
	vpxor	%xmm7, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm6
	vpslldq	$4, %xmm12, %xmm2
	vpunpcklqdq	%xmm12, %xmm10, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm6, %xmm0
	vaesenclast	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm12, %xmm2
	vpxor	%xmm2, %xmm0, %xmm8
	vmovaps	%xmm7, 240(%rsp)
	vaesenc	%xmm7, %xmm1, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm10, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm0
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm4
	vmovdqa	%xmm4, 336(%rsp)
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm5
	vmovdqa	%xmm5, 320(%rsp)
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm2
	vpxor	%xmm1, %xmm0, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm2
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm13, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm13, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm5
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, 368(%rsp)
	vpshufd	$78, %xmm3, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vmovdqa	%xmm13, 384(%rsp)
	vpclmulqdq	$17, %xmm7, %xmm13, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, 304(%rsp)
	testq	%rbx, %rbx
	vmovdqa	%xmm14, 160(%rsp)
	vmovdqa	%xmm9, 144(%rsp)
	vmovaps	%xmm12, 208(%rsp)
	vmovdqa	%xmm6, 224(%rsp)
	vmovdqa	%xmm8, 192(%rsp)
	vmovdqa	%xmm7, 96(%rsp)
	je	.LBB2_6
	cmpq	$96, %rbx
	jb	.LBB2_8
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI2_12(%rip), %xmm8
	vpshufb	%xmm8, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm7, %xmm5
	vpshufb	%xmm8, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm7, %xmm6
	vpshufb	%xmm8, %xmm2, %xmm2
	vmovdqa	%xmm7, %xmm14
	vpclmulqdq	$16, %xmm4, %xmm7, %xmm7
	vpshufb	%xmm8, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm14, %xmm4
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqa	336(%rsp), %xmm12
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	vmovdqa	320(%rsp), %xmm11
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	384(%rsp), %xmm13
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm7
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vmovdqu	(%rcx), %xmm6
	vpxor	%xmm1, %xmm3, %xmm1
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm8, %xmm6, %xmm6
	vpshufb	%xmm8, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa	304(%rsp), %xmm0
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm7
	vmovdqa	368(%rsp), %xmm0
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	addq	$96, %rcx
	leaq	-96(%rbx), %rax
	cmpq	$96, %rax
	jb	.LBB2_14
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	336(%rsp), %xmm12
	vmovdqa	320(%rsp), %xmm11
	vmovdqa	304(%rsp), %xmm10
	.p2align	4, 0x90
.LBB2_23:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm3, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_22(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm9
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm9
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vmovdqa	.LCPI2_12(%rip), %xmm15
	vpshufb	%xmm15, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm15, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm4
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm8
	vpxor	%xmm1, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm1
	vpshufb	%xmm15, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm3
	vpshufb	%xmm15, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm9
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm8
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm9
	vpshufb	%xmm15, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm7
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm9
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm8
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm8
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm6, %xmm8, %xmm6
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm15, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm5
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB2_23
	jmp	.LBB2_24
.LBB2_6:
	xorl	%r15d, %r15d
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm4
	vmovdqa	80(%rsp), %xmm13
	vpxor	%xmm0, %xmm0, %xmm0
	movq	568(%rsp), %rsi
	testq	%r13, %r13
	jne	.LBB2_30
	jmp	.LBB2_27
.LBB2_8:
	movq	%rbx, %rax
	vpxor	%xmm2, %xmm2, %xmm2
	jmp	.LBB2_9
.LBB2_14:
	vmovdqa	96(%rsp), %xmm14
.LBB2_24:
	vpslldq	$8, %xmm3, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm3, %xmm1
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm2
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	%xmm14, %xmm7
	vmovdqa	160(%rsp), %xmm14
	vmovdqa	192(%rsp), %xmm8
	vmovaps	208(%rsp), %xmm12
.LBB2_9:
	cmpq	$16, %rax
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm4
	vmovdqa	80(%rsp), %xmm13
	jb	.LBB2_10
	leaq	-16(%rax), %r15
	testb	$16, %r15b
	jne	.LBB2_16
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm2
	movq	%r15, %rax
	vmovdqa	%xmm2, %xmm3
	jmp	.LBB2_18
.LBB2_10:
	vmovdqa	%xmm2, %xmm3
	movq	%rax, %r15
	jmp	.LBB2_11
.LBB2_16:
.LBB2_18:
	cmpq	$16, %r15
	jb	.LBB2_11
	vmovdqa	.LCPI2_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm1
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm2
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	addq	$-32, %rax
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm2
	cmpq	$15, %rax
	ja	.LBB2_20
	vmovdqa	%xmm2, %xmm3
	movq	%rax, %r15
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm4
.LBB2_11:
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	je	.LBB2_12
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r15, %rdx
	vmovdqa	%xmm3, 176(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	176(%rsp), %xmm3
	vmovdqa	96(%rsp), %xmm7
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vmovdqa	192(%rsp), %xmm8
	vmovaps	208(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm4
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	16(%rsp), %xmm0
	movq	568(%rsp), %rsi
	testq	%r13, %r13
	je	.LBB2_27
.LBB2_30:
	movabsq	$-68719476720, %rcx
	leaq	(%rcx,%r13), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_49
	testq	%r15, %r15
	je	.LBB2_33
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
.LBB2_33:
	movq	584(%rsp), %rax
	cmpq	$96, %r13
	vmovdqa	%xmm0, 352(%rsp)
	jb	.LBB2_34
	vmovdqa	.LCPI2_1(%rip), %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%r13, %r15
	vmovdqa	%xmm3, %xmm9
	.p2align	4, 0x90
.LBB2_38:
	vmovdqa	(%rsp), %xmm6
	vmovdqu	(%r14), %xmm4
	vmovdqa	%xmm4, 448(%rsp)
	vmovups	32(%r14), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovdqu	48(%r14), %xmm12
	vmovdqa	%xmm12, 400(%rsp)
	vmovdqu	64(%r14), %xmm10
	vmovdqa	%xmm10, 416(%rsp)
	vmovdqu	80(%r14), %xmm11
	vmovdqa	%xmm11, 464(%rsp)
	vmovdqa	.LCPI2_12(%rip), %xmm8
	vpshufb	%xmm8, %xmm6, %xmm0
	vpaddd	.LCPI2_14(%rip), %xmm6, %xmm1
	vpshufb	%xmm8, %xmm1, %xmm1
	vpaddd	.LCPI2_1(%rip), %xmm6, %xmm2
	vpshufb	%xmm8, %xmm2, %xmm2
	vpaddd	.LCPI2_15(%rip), %xmm6, %xmm3
	vpshufb	%xmm8, %xmm3, %xmm3
	vpaddd	.LCPI2_2(%rip), %xmm6, %xmm5
	vpshufb	%xmm8, %xmm5, %xmm5
	vpaddd	.LCPI2_16(%rip), %xmm6, %xmm6
	vpshufb	%xmm8, %xmm6, %xmm6
	vpshufb	%xmm8, %xmm4, %xmm7
	vpxor	%xmm7, %xmm9, %xmm4
	vmovdqa	%xmm4, 432(%rsp)
	vpshufb	%xmm8, %xmm11, %xmm4
	vpxor	%xmm0, %xmm13, %xmm14
	vpxor	%xmm1, %xmm13, %xmm15
	vpxor	%xmm2, %xmm13, %xmm1
	vpxor	%xmm3, %xmm13, %xmm2
	vpxor	%xmm5, %xmm13, %xmm3
	vpxor	80(%rsp), %xmm6, %xmm13
	vmovaps	160(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	96(%rsp), %xmm9
	vmovaps	48(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm8, %xmm10, %xmm0
	vmovaps	32(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	128(%rsp), %xmm9
	vmovaps	336(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm8, %xmm12, %xmm0
	vmovaps	288(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	64(%rsp), %xmm9
	vmovaps	320(%rsp), %xmm10
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqa	176(%rsp), %xmm0
	vpshufb	%xmm8, %xmm0, %xmm0
	vmovaps	144(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	272(%rsp), %xmm9
	vmovaps	384(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqu	16(%r14), %xmm9
	vmovaps	256(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm8, %xmm9, %xmm4
	vmovdqa	%xmm9, %xmm8
	vmovaps	112(%rsp), %xmm0
	vmovaps	304(%rsp), %xmm10
	#APP
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vmovaps	208(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm10
	vpbroadcastq	.LCPI2_22(%rip), %xmm11
	vmovaps	240(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vmovdqa	368(%rsp), %xmm0
	vmovaps	432(%rsp), %xmm9
	#APP
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm0, %xmm0, %xmm0
	vpunpcklqdq	%xmm5, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpunpckhqdq	%xmm0, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm9
	vmovaps	224(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenclast	%xmm10, %xmm14, %xmm14
	vaesenclast	%xmm10, %xmm15, %xmm15
	vaesenclast	%xmm10, %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm2, %xmm2
	vaesenclast	%xmm10, %xmm3, %xmm3
	vaesenclast	%xmm10, %xmm13, %xmm13
	#NO_APP
	vpxor	448(%rsp), %xmm14, %xmm4
	vpxor	%xmm8, %xmm15, %xmm0
	vpxor	176(%rsp), %xmm1, %xmm1
	vpxor	400(%rsp), %xmm2, %xmm2
	vpxor	416(%rsp), %xmm3, %xmm3
	vmovdqu	%xmm4, (%rax)
	vmovdqu	%xmm0, 16(%rax)
	vmovdqu	%xmm1, 32(%rax)
	vmovdqu	%xmm2, 48(%rax)
	vmovdqu	%xmm3, 64(%rax)
	vxorps	464(%rsp), %xmm13, %xmm0
	vmovdqa	80(%rsp), %xmm13
	vmovups	%xmm0, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	addq	$-96, %r15
	vmovdqa	(%rsp), %xmm0
	vpaddd	.LCPI2_17(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	cmpq	$95, %r15
	ja	.LBB2_38
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm4
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	%xmm9, %xmm3
	vmovdqa	%xmm10, %xmm8
	vmovdqa	%xmm11, %xmm10
	cmpq	$16, %r15
	jae	.LBB2_40
.LBB2_36:
	movq	%rax, %r12
	vmovdqa	%xmm3, %xmm14
	jmp	.LBB2_42
.LBB2_12:
	xorl	%r15d, %r15d
	movq	568(%rsp), %rsi
	testq	%r13, %r13
	jne	.LBB2_30
.LBB2_27:
	testq	%r15, %r15
	je	.LBB2_28
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
.LBB2_28:
	vmovdqa	112(%rsp), %xmm4
	vmovdqa	128(%rsp), %xmm15
	vmovdqu	(%rsi), %xmm11
	xorl	%r13d, %r13d
	jmp	.LBB2_48
.LBB2_34:
	movq	%r13, %r15
	cmpq	$16, %r15
	jb	.LBB2_36
.LBB2_40:
	vmovdqa	%xmm12, %xmm11
	vmovdqa	%xmm8, %xmm12
	vmovdqa	224(%rsp), %xmm9
	vmovdqa	%xmm3, %xmm14
	vmovdqa	.LCPI2_12(%rip), %xmm15
	.p2align	4, 0x90
.LBB2_41:
	vmovdqu	(%r14), %xmm2
	vpshufb	%xmm15, %xmm2, %xmm3
	vpxor	%xmm3, %xmm14, %xmm3
	vmovdqa	%xmm4, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm4
	vmovdqa	%xmm5, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm5
	vmovdqa	%xmm6, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	%xmm0, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm1, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm14
	vmovdqa	%xmm8, %xmm4
	vmovdqa	256(%rsp), %xmm1
	vmovdqa	272(%rsp), %xmm0
	vmovdqa	(%rsp), %xmm8
	vpshufb	%xmm15, %xmm8, %xmm3
	vpxor	%xmm3, %xmm13, %xmm3
	vaesenc	160(%rsp), %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	128(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	144(%rsp), %xmm3, %xmm3
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	112(%rsp), %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenclast	%xmm12, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rax)
	leaq	16(%rax), %r12
	addq	$-16, %r15
	addq	$16, %r14
	vpaddd	.LCPI2_14(%rip), %xmm8, %xmm8
	vmovdqa	%xmm8, (%rsp)
	movq	%r12, %rax
	cmpq	$15, %r15
	ja	.LBB2_41
.LBB2_42:
	vmovdqa	%xmm14, 176(%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	je	.LBB2_44
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%rbp
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenclast	192(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 352(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%rbp
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	568(%rsp), %rsi
.LBB2_44:
	vpxor	352(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, (%rsp)
	vmovdqa	%xmm0, 480(%rsp)
	vmovdqa	%xmm2, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	480(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.LBB2_45
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	176(%rsp), %xmm0, %xmm0
	vmovdqa	96(%rsp), %xmm7
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	160(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	112(%rsp), %xmm4
	vmovaps	208(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm8
	jmp	.LBB2_47
.LBB2_45:
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	160(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	112(%rsp), %xmm4
	vmovaps	208(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm8
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	176(%rsp), %xmm3
.LBB2_47:
	shlq	$3, %r13
	vmovdqa	(%rsp), %xmm11
.LBB2_48:
	shlq	$3, %rbx
	vmovq	%r13, %xmm0
	vmovq	%rbx, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	.LCPI2_18(%rip), %xmm13, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	64(%rsp), %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpshufb	.LCPI2_19(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_20(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_49:
	addq	$504, %rsp
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
	.size	haberdashery_aes256gcmdndk_haswell_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndk_haswell_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_haswell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_haswell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_haswell_is_supported,@function
haberdashery_aes256gcmdndk_haswell_is_supported:
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
	andl	$297, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndk_haswell_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_haswell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

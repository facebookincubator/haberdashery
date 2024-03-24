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
.LCPI1_5:
	.quad	8589934594
	.quad	8589934594
.LCPI1_6:
	.quad	17179869188
	.quad	17179869188
.LCPI1_7:
	.quad	34359738376
	.quad	34359738376
.LCPI1_8:
	.quad	68719476752
	.quad	68719476752
.LCPI1_9:
	.quad	137438953504
	.quad	137438953504
.LCPI1_10:
	.quad	274877907008
	.quad	274877907008
.LCPI1_11:
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
.LCPI1_12:
	.zero	8
	.quad	-4467570830351532032
.LCPI1_13:
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
	.byte	3
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
	.byte	4
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
	.byte	5
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
	.byte	6
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
	.byte	7
.LCPI1_19:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	3
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
.LCPI1_27:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_28:
	.long	1
.LCPI1_29:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
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
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	480(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	496(%rsp), %r13
	jne	.LBB1_44
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_44
	movq	%r8, %rbx
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_44
	cmpq	$24, %rdx
	jne	.LBB1_44
	cmpq	$16, 512(%rsp)
	jne	.LBB1_44
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI1_28(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vmovdqa	(%rdi), %xmm2
	vmovdqa	16(%rdi), %xmm3
	vmovdqa	32(%rdi), %xmm4
	vmovdqa	48(%rdi), %xmm5
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	.LCPI1_1(%rip), %xmm6
	vpxor	%xmm6, %xmm0, %xmm2
	vpxor	%xmm6, %xmm1, %xmm6
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
	vaesenclast	%xmm5, %xmm6, %xmm6
	vaesenclast	%xmm5, %xmm3, %xmm3
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm4
	vmovdqa	%xmm4, (%rsp)
	vpxor	%xmm0, %xmm6, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm13
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpbroadcastd	.LCPI1_29(%rip), %xmm0
	vpshufb	%xmm0, %xmm13, %xmm3
	vaesenclast	.LCPI1_4(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm10
	vpslldq	$4, %xmm13, %xmm1
	vpslldq	$8, %xmm13, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm13, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm10, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm2, %xmm15
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm10, %xmm2
	vpshufb	%xmm0, %xmm15, %xmm3
	vaesenclast	.LCPI1_5(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vpslldq	$4, %xmm15, %xmm1
	vpslldq	$8, %xmm15, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm15, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpxor	%xmm1, %xmm15, %xmm1
	vpxor	%xmm1, %xmm2, %xmm8
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm8, %xmm2
	vaesenclast	.LCPI1_6(%rip), %xmm2, %xmm2
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm11
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm11, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm2, %xmm12
	vpslldq	$4, %xmm11, %xmm1
	vpslldq	$8, %xmm11, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm12, %xmm2
	vaesenclast	.LCPI1_7(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm14
	vpslldq	$4, %xmm12, %xmm1
	vpslldq	$8, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm14, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm7
	vpslldq	$4, %xmm14, %xmm1
	vpslldq	$8, %xmm14, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm14, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm7, %xmm2
	vaesenclast	.LCPI1_8(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm14, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm7, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI1_9(%rip), %xmm2, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm9
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm9, %xmm2
	vaesenclast	.LCPI1_27(%rip), %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm9, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm0
	vaesenclast	.LCPI1_10(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vmovdqa	(%rsp), %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	%xmm9, %xmm2
	vmovdqa	%xmm10, 304(%rsp)
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	%xmm15, 240(%rsp)
	vaesenc	%xmm15, %xmm0, %xmm0
	vmovdqa	%xmm6, %xmm9
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	%xmm8, 192(%rsp)
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa	%xmm11, 176(%rsp)
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	%xmm12, 160(%rsp)
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	%xmm2, %xmm10
	vmovdqa	%xmm14, 288(%rsp)
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa	%xmm7, 272(%rsp)
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	%xmm4, 256(%rsp)
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm3, 144(%rsp)
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	%xmm1, 224(%rsp)
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$3, .LCPI1_27(%rip), %xmm1, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpbroadcastq	.LCPI1_30(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm14, %xmm6, %xmm0
	vpclmulqdq	$1, %xmm14, %xmm6, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm14, %xmm6, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm14, %xmm6, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm8
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm2
	vpshufd	$78, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm11
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm11, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm14, %xmm11, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm4
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 368(%rsp)
	vpshufd	$78, %xmm3, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vmovdqa	%xmm14, 32(%rsp)
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	leaq	-1(%rbx), %rdx
	cmpq	%rax, %rdx
	vmovdqa	%xmm5, 80(%rsp)
	vmovdqa	%xmm13, 128(%rsp)
	vmovdqa	%xmm9, 64(%rsp)
	vmovdqa	%xmm10, 16(%rsp)
	vmovdqa	%xmm0, 352(%rsp)
	jae	.LBB1_23
	vpxor	%xmm4, %xmm4, %xmm4
	cmpq	$96, %rbx
	vmovdqa	%xmm11, 208(%rsp)
	movq	%rbx, %rax
	jae	.LBB1_20
	vmovdqa	(%rsp), %xmm14
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
	vmovdqa	%xmm8, 320(%rsp)
	vmovdqa	%xmm6, 336(%rsp)
	vmovdqa	%xmm4, 48(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	96(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_42
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovdqa	(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm10
	vpbroadcastq	.LCPI1_30(%rip), %xmm7
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	336(%rsp), %xmm6
	vmovdqa	320(%rsp), %xmm8
	vmovdqa	208(%rsp), %xmm11
	jb	.LBB1_44
	vpshufb	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	32(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm4
	jmp	.LBB1_26
.LBB1_23:
	testq	%r13, %r13
	vpxor	%xmm4, %xmm4, %xmm4
	vmovdqa	(%rsp), %xmm14
	je	.LBB1_43
.LBB1_26:
	movq	488(%rsp), %rax
	cmpq	$96, %r13
	jae	.LBB1_30
	vmovdqa	%xmm7, %xmm2
	movq	%r13, %r15
	vmovdqa	192(%rsp), %xmm3
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	.LCPI1_1(%rip), %xmm12
	cmpq	$16, %r15
	jb	.LBB1_29
.LBB1_35:
	vmovdqa	%xmm2, %xmm14
	vmovdqa	%xmm13, %xmm9
	vmovdqa	224(%rsp), %xmm13
	vmovdqa	240(%rsp), %xmm1
	vmovdqa	32(%rsp), %xmm15
	vmovdqa	.LCPI1_11(%rip), %xmm7
	.p2align	4, 0x90
.LBB1_36:
	vpshufb	%xmm7, %xmm12, %xmm2
	vpxor	(%rsp), %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	304(%rsp), %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	288(%rsp), %xmm2, %xmm2
	vaesenc	272(%rsp), %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	256(%rsp), %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm13, %xmm2, %xmm2
	vpxor	(%r14), %xmm2, %xmm2
	vmovdqa	%xmm11, %xmm0
	vmovdqa	%xmm8, %xmm11
	vmovdqa	%xmm3, %xmm8
	vpshufb	%xmm7, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm5
	vmovdqu	%xmm2, (%rax)
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqa	80(%rsp), %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm8, %xmm3
	vmovdqa	%xmm11, %xmm8
	vmovdqa	%xmm0, %xmm11
	vpxor	%xmm2, %xmm4, %xmm4
	leaq	16(%r14), %rsi
	leaq	16(%rax), %r12
	addq	$-16, %r15
	vpaddd	.LCPI1_20(%rip), %xmm12, %xmm12
	movq	%rsi, %r14
	movq	%r12, %rax
	cmpq	$15, %r15
	ja	.LBB1_36
	vmovdqa	(%rsp), %xmm2
	vmovdqa	%xmm12, 112(%rsp)
	testq	%r15, %r15
	je	.LBB1_38
.LBB1_39:
	vmovdqa	%xmm4, 48(%rsp)
	vpxor	%xmm4, %xmm4, %xmm4
	vmovdqa	%xmm4, 96(%rsp)
	leaq	96(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r14
	movq	%r15, %rdx
	callq	*%r14
	vmovdqa	112(%rsp), %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenclast	224(%rsp), %xmm0, %xmm0
	vpxor	96(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%r14
	testq	%r13, %r13
	je	.LBB1_40
	vmovaps	112(%rsp), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rdi
	leaq	400(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	96(%rsp), %xmm0
.LBB1_42:
	vmovdqa	(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm10
	vpbroadcastq	.LCPI1_30(%rip), %xmm7
	vmovdqa	32(%rsp), %xmm4
	vmovdqa	48(%rsp), %xmm1
	vpshufb	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm4
	jmp	.LBB1_43
.LBB1_20:
	vmovdqa	%xmm6, %xmm12
	vmovdqa	%xmm8, %xmm13
	vmovdqa	352(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm0
	vmovdqa	.LCPI1_11(%rip), %xmm14
	vmovdqa	208(%rsp), %xmm11
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	32(%rcx), %xmm2
	vmovdqu	48(%rcx), %xmm3
	vmovdqa	%xmm4, %xmm9
	vmovdqu	80(%rcx), %xmm4
	vpshufb	%xmm14, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm5
	vmovdqu	64(%rcx), %xmm6
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm7
	vpshufb	%xmm14, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm8
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpshufb	%xmm14, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm12, %xmm9
	vpshufb	%xmm14, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm12, %xmm10
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm12, %xmm8
	vpshufb	%xmm14, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm12, %xmm6
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm9
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm10
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm8
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm6
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm10
	vpxor	%xmm6, %xmm9, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm10, %xmm8, %xmm6
	vmovdqu	16(%rcx), %xmm8
	vpshufb	%xmm14, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm3
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm8, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm15, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm15, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vmovdqa	368(%rsp), %xmm9
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_30(%rip), %xmm7
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm15, %xmm5
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm4
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$96, %rax
	jae	.LBB1_21
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	%xmm12, %xmm6
	vmovdqa	%xmm13, %xmm8
	vmovdqa	208(%rsp), %xmm11
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	(%rsp), %xmm14
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	16(%rsp), %xmm10
	cmpq	$16, %rax
	jae	.LBB1_10
.LBB1_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_17
.LBB1_24:
	testq	%r13, %r13
	je	.LBB1_43
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jae	.LBB1_26
	jmp	.LBB1_44
.LBB1_30:
	vmovdqa	%xmm11, 208(%rsp)
	vmovdqa	%xmm8, 320(%rsp)
	vmovdqa	%xmm6, 336(%rsp)
	vmovdqa	%xmm4, 48(%rsp)
	vpxor	.LCPI1_13(%rip), %xmm14, %xmm0
	vpxor	.LCPI1_14(%rip), %xmm14, %xmm1
	vpxor	.LCPI1_15(%rip), %xmm14, %xmm2
	vpxor	.LCPI1_16(%rip), %xmm14, %xmm3
	vpxor	.LCPI1_17(%rip), %xmm14, %xmm4
	vmovdqa	%xmm5, %xmm8
	vpxor	.LCPI1_18(%rip), %xmm14, %xmm5
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vmovdqa	304(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa	288(%rsp), %xmm12
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	240(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa	224(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm11
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vmovdqa	192(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa	272(%rsp), %xmm7
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	176(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vmovdqa	256(%rsp), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	144(%rsp), %xmm7
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenclast	%xmm14, %xmm0, %xmm0
	vaesenclast	%xmm14, %xmm1, %xmm1
	vaesenclast	%xmm14, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm3, %xmm3
	vaesenclast	%xmm14, %xmm4, %xmm4
	vaesenclast	%xmm14, %xmm5, %xmm5
	vpxor	(%r14), %xmm0, %xmm13
	vpxor	16(%r14), %xmm1, %xmm12
	vpxor	32(%r14), %xmm2, %xmm11
	vpxor	48(%r14), %xmm3, %xmm10
	vpxor	64(%r14), %xmm4, %xmm0
	vpxor	80(%r14), %xmm5, %xmm2
	vmovdqu	%xmm13, (%rax)
	vmovdqu	%xmm12, 16(%rax)
	vmovdqu	%xmm11, 32(%rax)
	vmovdqu	%xmm10, 48(%rax)
	vmovdqa	%xmm0, %xmm1
	vmovdqu	%xmm0, 64(%rax)
	vmovdqu	%xmm2, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	leaq	-96(%r13), %r15
	vmovaps	.LCPI1_19(%rip), %xmm0
	cmpq	$96, %r15
	jae	.LBB1_32
	vmovaps	%xmm0, 112(%rsp)
	vpbroadcastq	.LCPI1_30(%rip), %xmm14
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	%xmm1, %xmm0
	jmp	.LBB1_34
.LBB1_11:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vmovdqa	32(%rsp), %xmm12
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm4
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	64(%rsp), %xmm9
	vpxor	%xmm0, %xmm3, %xmm4
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_16
.LBB1_13:
	vmovdqa	.LCPI1_11(%rip), %xmm0
	vmovdqa	32(%rsp), %xmm12
	.p2align	4, 0x90
.LBB1_14:
	vmovdqu	(%rcx), %xmm1
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm2
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm3
	addq	$-32, %rax
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm4
	cmpq	$15, %rax
	ja	.LBB1_14
	movq	%rax, %rdx
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm10
	testq	%rdx, %rdx
	jne	.LBB1_17
	jmp	.LBB1_24
.LBB1_40:
	vmovdqa	(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm10
	vpbroadcastq	.LCPI1_30(%rip), %xmm7
	vmovdqa	48(%rsp), %xmm4
	jmp	.LBB1_43
.LBB1_32:
	vmovaps	%xmm0, 112(%rsp)
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	%xmm1, %xmm0
	.p2align	4, 0x90
.LBB1_33:
	vmovdqa	%xmm10, 384(%rsp)
	vmovdqa	%xmm2, 48(%rsp)
	vmovdqa	112(%rsp), %xmm4
	vmovdqa	.LCPI1_11(%rip), %xmm5
	vpshufb	%xmm5, %xmm4, %xmm1
	vpaddd	.LCPI1_20(%rip), %xmm4, %xmm14
	vpshufb	%xmm5, %xmm14, %xmm14
	vpaddd	.LCPI1_1(%rip), %xmm4, %xmm15
	vpshufb	%xmm5, %xmm15, %xmm15
	vpaddd	.LCPI1_21(%rip), %xmm4, %xmm2
	vpshufb	%xmm5, %xmm2, %xmm2
	vpaddd	.LCPI1_2(%rip), %xmm4, %xmm3
	vpshufb	%xmm5, %xmm3, %xmm3
	vpaddd	.LCPI1_22(%rip), %xmm4, %xmm4
	vpshufb	%xmm5, %xmm4, %xmm4
	vpshufb	%xmm5, %xmm13, %xmm13
	vpxor	%xmm13, %xmm8, %xmm13
	vpshufb	%xmm5, %xmm12, %xmm10
	vmovdqa	(%rsp), %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm14, %xmm8, %xmm6
	vpxor	%xmm15, %xmm8, %xmm15
	vmovdqa	368(%rsp), %xmm7
	vpclmulqdq	$1, %xmm13, %xmm7, %xmm12
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm7, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm7, %xmm14
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$17, %xmm13, %xmm7, %xmm13
	vpxor	%xmm4, %xmm8, %xmm4
	vmovaps	128(%rsp), %xmm7
	vmovaps	352(%rsp), %xmm9
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm9, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm10, %xmm9, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm10, %xmm9, %xmm8
	vpxor	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm10, %xmm9, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm5, %xmm11, %xmm9
	vmovdqa	304(%rsp), %xmm7
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm15, %xmm8
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	240(%rsp), %xmm7
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovaps	64(%rsp), %xmm15
	vmovaps	208(%rsp), %xmm7
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm11
	vpxor	%xmm11, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm11
	vpxor	%xmm11, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm11
	vpxor	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm11
	vpxor	%xmm11, %xmm12, %xmm12
	#NO_APP
	vmovdqa	384(%rsp), %xmm7
	vpshufb	%xmm5, %xmm7, %xmm9
	vmovdqa	192(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovaps	176(%rsp), %xmm11
	vmovaps	320(%rsp), %xmm7
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm10
	vpxor	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm10
	vpxor	%xmm10, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm10
	vpxor	%xmm10, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm10
	vpxor	%xmm10, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm5, %xmm0, %xmm11
	vmovdqa	160(%rsp), %xmm9
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vmovdqa	288(%rsp), %xmm9
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vmovaps	272(%rsp), %xmm10
	vmovaps	336(%rsp), %xmm7
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm9
	vpxor	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm9
	vpxor	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	#NO_APP
	vmovdqa	48(%rsp), %xmm0
	vpshufb	%xmm5, %xmm0, %xmm5
	vmovdqa	80(%rsp), %xmm7
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	256(%rsp), %xmm0
	vaesenc	%xmm0, %xmm1, %xmm7
	vaesenc	%xmm0, %xmm6, %xmm9
	vaesenc	%xmm0, %xmm8, %xmm10
	vaesenc	%xmm0, %xmm2, %xmm11
	vaesenc	%xmm0, %xmm3, %xmm15
	vaesenc	%xmm0, %xmm4, %xmm1
	vmovdqa	32(%rsp), %xmm3
	vmovaps	16(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm5, %xmm3, %xmm2
	vpxor	%xmm2, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm5, %xmm3, %xmm2
	vpxor	%xmm2, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm5, %xmm3, %xmm2
	vpxor	%xmm2, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm14, %xmm2
	vpbroadcastq	.LCPI1_30(%rip), %xmm14
	vpunpckhqdq	%xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm4, %xmm2, %xmm8
	vmovdqa	112(%rsp), %xmm0
	vpaddd	.LCPI1_23(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	vmovdqa	144(%rsp), %xmm0
	vaesenc	%xmm0, %xmm7, %xmm2
	vaesenc	%xmm0, %xmm9, %xmm3
	vaesenc	%xmm0, %xmm10, %xmm4
	vaesenc	%xmm0, %xmm11, %xmm5
	vaesenc	%xmm0, %xmm15, %xmm6
	vaesenc	%xmm0, %xmm1, %xmm1
	vmovdqa	224(%rsp), %xmm0
	vaesenclast	%xmm0, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm3, %xmm3
	vaesenclast	%xmm0, %xmm4, %xmm4
	vaesenclast	%xmm0, %xmm5, %xmm5
	vaesenclast	%xmm0, %xmm6, %xmm6
	vaesenclast	%xmm0, %xmm1, %xmm1
	vpxor	(%r14), %xmm2, %xmm13
	vpxor	16(%r14), %xmm3, %xmm12
	vpxor	32(%r14), %xmm4, %xmm11
	vpxor	48(%r14), %xmm5, %xmm10
	vpxor	64(%r14), %xmm6, %xmm0
	vpxor	80(%r14), %xmm1, %xmm2
	vmovdqu	%xmm13, (%rax)
	vmovdqu	%xmm12, 16(%rax)
	vmovdqu	%xmm11, 32(%rax)
	vmovdqu	%xmm10, 48(%rax)
	vmovdqu	%xmm0, 64(%rax)
	vmovdqu	%xmm2, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	addq	$-96, %r15
	cmpq	$95, %r15
	ja	.LBB1_33
.LBB1_34:
	vmovdqa	32(%rsp), %xmm15
	vmovdqa	.LCPI1_11(%rip), %xmm1
	vpshufb	%xmm1, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm3
	vpshufb	%xmm1, %xmm0, %xmm4
	vmovdqa	336(%rsp), %xmm9
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpshufb	%xmm1, %xmm13, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpshufb	%xmm1, %xmm12, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm9
	vpshufb	%xmm1, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm12
	vpshufb	%xmm1, %xmm10, %xmm1
	vmovdqa	320(%rsp), %xmm13
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm10
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm12
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm5
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vmovdqa	208(%rsp), %xmm13
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm4
	vpxor	%xmm5, %xmm12, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm13, %xmm7
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm13, %xmm9
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm4
	vpxor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	352(%rsp), %xmm6
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqa	368(%rsp), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm14, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm4
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	192(%rsp), %xmm3
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm10
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	112(%rsp), %xmm12
	cmpq	$16, %r15
	jae	.LBB1_35
.LBB1_29:
	movq	%rax, %r12
	movq	%r14, %rsi
	vmovdqa	%xmm13, %xmm9
	vmovdqa	(%rsp), %xmm2
	vmovdqa	%xmm12, 112(%rsp)
	testq	%r15, %r15
	jne	.LBB1_39
.LBB1_38:
	vmovdqa	16(%rsp), %xmm10
	vpbroadcastq	.LCPI1_30(%rip), %xmm7
	vmovdqa	%xmm9, %xmm13
	vmovdqa	%xmm2, %xmm14
	vmovdqa	64(%rsp), %xmm9
.LBB1_43:
	vmovq	%rbx, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vmovdqa	32(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpxor	.LCPI1_24(%rip), %xmm14, %xmm4
	vpxor	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm13, %xmm4, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	192(%rsp), %xmm3, %xmm3
	vaesenc	176(%rsp), %xmm3, %xmm3
	vaesenc	160(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	144(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_25(%rip), %xmm2, %xmm2
	vaesenclast	224(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_26(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufb	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	movq	504(%rsp), %rax
	vmovdqu	%xmm0, (%rax)
	movl	$1, %ebp
.LBB1_44:
	movl	%ebp, %eax
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
.LCPI2_5:
	.quad	8589934594
	.quad	8589934594
.LCPI2_6:
	.quad	17179869188
	.quad	17179869188
.LCPI2_7:
	.quad	34359738376
	.quad	34359738376
.LCPI2_8:
	.quad	68719476752
	.quad	68719476752
.LCPI2_9:
	.quad	137438953504
	.quad	137438953504
.LCPI2_10:
	.quad	274877907008
	.quad	274877907008
.LCPI2_11:
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
.LCPI2_12:
	.zero	8
	.quad	-4467570830351532032
.LCPI2_13:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_14:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_15:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_16:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_17:
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
.LCPI2_18:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_20:
	.long	1
.LCPI2_21:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
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
	subq	$520, %rsp
	.cfi_def_cfa_offset 576
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	576(%rsp), %r13
	xorl	%eax, %eax
	cmpq	608(%rsp), %r13
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
	cmpq	$16, 592(%rsp)
	jne	.LBB2_47
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI2_20(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vmovdqa	(%rdi), %xmm2
	vmovdqa	16(%rdi), %xmm3
	vmovdqa	32(%rdi), %xmm4
	vmovdqa	48(%rdi), %xmm5
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	.LCPI2_1(%rip), %xmm9
	vpxor	%xmm0, %xmm9, %xmm2
	vpxor	%xmm1, %xmm9, %xmm6
	vmovdqa	.LCPI2_2(%rip), %xmm7
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
	vaesenclast	%xmm5, %xmm6, %xmm6
	vaesenclast	%xmm5, %xmm3, %xmm3
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm11
	vmovdqa	%xmm11, 256(%rsp)
	vpxor	%xmm0, %xmm6, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm4
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpbroadcastd	.LCPI2_21(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm3
	vaesenclast	.LCPI2_4(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm3, %xmm10
	vmovdqa	%xmm4, 240(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm10, %xmm2
	vpxor	%xmm15, %xmm15, %xmm15
	vaesenclast	%xmm15, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm10, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vaesenclast	.LCPI2_5(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	vmovdqa	%xmm4, 224(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm15, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm13
	vmovdqa	%xmm3, 64(%rsp)
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm13, %xmm2
	vaesenclast	.LCPI2_6(%rip), %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm12
	vpslldq	$4, %xmm13, %xmm1
	vpslldq	$8, %xmm13, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm13, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm12, %xmm2
	vaesenclast	%xmm15, %xmm2, %xmm2
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm2, %xmm8
	vpslldq	$4, %xmm12, %xmm1
	vpslldq	$8, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm8, %xmm2
	vaesenclast	.LCPI2_7(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm15, %xmm2, %xmm2
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm5, %xmm2
	vaesenclast	.LCPI2_8(%rip), %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm2
	vaesenclast	%xmm15, %xmm2, %xmm2
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm7
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm7, %xmm2
	vaesenclast	.LCPI2_9(%rip), %xmm2, %xmm2
	vpslldq	$12, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm7, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm15, %xmm2, %xmm2
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm14
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm14, %xmm0
	vaesenclast	.LCPI2_10(%rip), %xmm0, %xmm0
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm15
	vaesenc	240(%rsp), %xmm11, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm14, %xmm1
	vaesenc	64(%rsp), %xmm0, %xmm0
	vpxor	%xmm14, %xmm14, %xmm14
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	%xmm12, 80(%rsp)
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	%xmm8, 272(%rsp)
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa	%xmm4, 176(%rsp)
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	%xmm5, 160(%rsp)
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	%xmm6, 144(%rsp)
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	%xmm7, 96(%rsp)
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	%xmm3, 128(%rsp)
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	%xmm1, 32(%rsp)
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenclast	%xmm15, %xmm0, %xmm0
	vpshufb	.LCPI2_11(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm14, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpbroadcastq	.LCPI2_22(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm12
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vmovdqa	%xmm4, 384(%rsp)
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm2
	vpxor	%xmm1, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm2
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm8, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm8, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm0, %xmm4
	vpshufd	$78, %xmm3, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vmovdqa	%xmm6, 16(%rsp)
	vpclmulqdq	$17, %xmm6, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	testq	%rbx, %rbx
	vmovdqa	%xmm13, 288(%rsp)
	vmovdqa	%xmm10, 192(%rsp)
	vmovdqa	%xmm15, 112(%rsp)
	vmovdqa	%xmm12, 368(%rsp)
	vmovdqa	%xmm4, 208(%rsp)
	vmovdqa	%xmm0, 352(%rsp)
	je	.LBB2_6
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	cmpq	$96, %rbx
	jae	.LBB2_19
	movq	%rbx, %rax
	vmovdqa	80(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm14
	cmpq	$16, %rax
	vmovdqa	64(%rsp), %xmm5
	jb	.LBB2_10
.LBB2_11:
	leaq	-16(%rax), %r15
	testb	$16, %r15b
	je	.LBB2_12
	cmpq	$16, %r15
	jae	.LBB2_14
.LBB2_17:
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	je	.LBB2_18
.LBB2_22:
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r15, %rdx
	vmovdqa	%xmm8, 304(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	304(%rsp), %xmm8
	vpbroadcastq	.LCPI2_22(%rip), %xmm7
	vmovdqa	112(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm6
	vmovdqa	.LCPI2_1(%rip), %xmm9
	vmovdqa	64(%rsp), %xmm5
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm0
	movq	584(%rsp), %rsi
	testq	%r13, %r13
	jne	.LBB2_26
	jmp	.LBB2_24
.LBB2_6:
	xorl	%r15d, %r15d
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	64(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm14
	movq	584(%rsp), %rsi
	testq	%r13, %r13
	je	.LBB2_24
.LBB2_26:
	movabsq	$-68719476720, %rcx
	leaq	(%rcx,%r13), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_47
	testq	%r15, %r15
	je	.LBB2_29
	vpshufb	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
.LBB2_29:
	movq	600(%rsp), %rax
	cmpq	$96, %r13
	vmovdqa	%xmm0, 336(%rsp)
	jae	.LBB2_33
	movq	%r13, %r15
	vmovdqa	32(%rsp), %xmm14
	cmpq	$16, %r15
	jb	.LBB2_32
.LBB2_36:
	vmovdqa	.LCPI2_11(%rip), %xmm13
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm0
	vmovdqa	(%rsp), %xmm1
	.p2align	4, 0x90
.LBB2_37:
	vmovdqu	(%r14), %xmm2
	vmovdqa	%xmm13, %xmm11
	vpshufb	%xmm13, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	vmovdqa	%xmm5, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vmovdqa	%xmm6, %xmm12
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	%xmm12, %xmm6
	vmovdqa	272(%rsp), %xmm12
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm1, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm1
	vpshufb	%xmm13, %xmm9, %xmm3
	vpxor	256(%rsp), %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	176(%rsp), %xmm3, %xmm3
	vaesenc	160(%rsp), %xmm3, %xmm3
	vaesenc	144(%rsp), %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	128(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rax)
	addq	$16, %r14
	leaq	16(%rax), %r12
	addq	$-16, %r15
	vpaddd	.LCPI2_13(%rip), %xmm9, %xmm9
	movq	%r12, %rax
	cmpq	$15, %r15
	ja	.LBB2_37
	jmp	.LBB2_38
.LBB2_19:
	vpxor	%xmm9, %xmm9, %xmm9
	movq	%rbx, %rax
	vmovdqa	16(%rsp), %xmm12
	vmovdqa	384(%rsp), %xmm11
	vmovdqa	368(%rsp), %xmm13
	vmovdqa	%xmm8, %xmm15
	vmovdqa	352(%rsp), %xmm0
	vmovdqa	.LCPI2_11(%rip), %xmm14
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	32(%rcx), %xmm2
	vmovdqu	48(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vpshufb	%xmm14, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm5
	vmovdqu	64(%rcx), %xmm6
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm7
	vpshufb	%xmm14, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm8
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpshufb	%xmm14, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm9
	vpshufb	%xmm14, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm10
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm8
	vpshufb	%xmm14, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm9
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm10
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm8
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm6
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm10
	vpxor	%xmm6, %xmm9, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm10, %xmm8, %xmm6
	vmovdqu	16(%rcx), %xmm8
	vpshufb	%xmm14, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm3
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vmovdqa	208(%rsp), %xmm9
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_22(%rip), %xmm7
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm5
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm9
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$96, %rax
	jae	.LBB2_20
	vmovdqa	%xmm9, (%rsp)
	vmovdqa	.LCPI2_1(%rip), %xmm9
	vmovdqa	80(%rsp), %xmm6
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	%xmm15, %xmm8
	vmovdqa	112(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm14
	cmpq	$16, %rax
	vmovdqa	64(%rsp), %xmm5
	jae	.LBB2_11
.LBB2_10:
	movq	%rax, %r15
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	jne	.LBB2_22
.LBB2_18:
	xorl	%r15d, %r15d
	movq	584(%rsp), %rsi
	testq	%r13, %r13
	jne	.LBB2_26
.LBB2_24:
	testq	%r15, %r15
	je	.LBB2_25
	vpshufb	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm9
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	176(%rsp), %xmm4
	vmovdqa	160(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	128(%rsp), %xmm8
	jmp	.LBB2_43
.LBB2_12:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm14, %xmm1
	vmovdqa	16(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm11
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm11, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%r15, %rax
	cmpq	$16, %r15
	jb	.LBB2_17
.LBB2_14:
	vmovdqa	%xmm8, %xmm15
	vmovdqa	%xmm6, %xmm8
	vmovdqa	.LCPI2_11(%rip), %xmm0
	vmovdqa	16(%rsp), %xmm6
	vmovdqa	(%rsp), %xmm2
	.p2align	4, 0x90
.LBB2_15:
	vmovdqu	(%rcx), %xmm1
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm2
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm3
	addq	$-32, %rax
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm2
	cmpq	$15, %rax
	ja	.LBB2_15
	vmovdqa	%xmm2, (%rsp)
	movq	%rax, %r15
	vmovdqa	64(%rsp), %xmm5
	vmovdqa	%xmm8, %xmm6
	vmovdqa	%xmm15, %xmm8
	vmovdqa	112(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm14
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	jne	.LBB2_22
	jmp	.LBB2_18
.LBB2_33:
	vmovdqa	.LCPI2_1(%rip), %xmm9
	movq	%r13, %r15
	vmovdqa	%xmm8, 304(%rsp)
	vmovdqa	(%rsp), %xmm8
	vmovdqa	256(%rsp), %xmm11
	.p2align	4, 0x90
.LBB2_34:
	vmovdqa	%xmm9, 320(%rsp)
	vmovdqu	(%r14), %xmm7
	vmovdqa	%xmm7, 480(%rsp)
	vmovdqu	16(%r14), %xmm13
	vmovdqa	%xmm13, 464(%rsp)
	vmovups	32(%r14), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovups	48(%r14), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovups	64(%r14), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vmovups	80(%r14), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovdqa	.LCPI2_11(%rip), %xmm12
	vpshufb	%xmm12, %xmm9, %xmm1
	vpaddd	.LCPI2_13(%rip), %xmm9, %xmm2
	vpshufb	%xmm12, %xmm2, %xmm2
	vpaddd	.LCPI2_1(%rip), %xmm9, %xmm3
	vpshufb	%xmm12, %xmm3, %xmm3
	vpaddd	.LCPI2_14(%rip), %xmm9, %xmm4
	vpshufb	%xmm12, %xmm4, %xmm4
	vpaddd	.LCPI2_2(%rip), %xmm9, %xmm5
	vpshufb	%xmm12, %xmm5, %xmm5
	vpaddd	.LCPI2_15(%rip), %xmm9, %xmm6
	vpshufb	%xmm12, %xmm6, %xmm6
	vpshufb	%xmm12, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufb	%xmm12, %xmm13, %xmm0
	vpxor	%xmm1, %xmm11, %xmm8
	vpxor	%xmm2, %xmm11, %xmm2
	vpxor	%xmm3, %xmm11, %xmm3
	vpxor	%xmm4, %xmm11, %xmm4
	vpxor	%xmm5, %xmm11, %xmm5
	vmovdqa	208(%rsp), %xmm13
	vpclmulqdq	$1, %xmm7, %xmm13, %xmm1
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm14
	vpxor	%xmm1, %xmm14, %xmm15
	vpclmulqdq	$0, %xmm7, %xmm13, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm13, %xmm14
	vmovdqa	%xmm10, %xmm9
	vmovaps	240(%rsp), %xmm10
	vmovaps	352(%rsp), %xmm13
	#APP
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm7
	vpxor	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	#NO_APP
	vmovdqa	432(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm8, %xmm7
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vmovdqa	224(%rsp), %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vmovaps	64(%rsp), %xmm10
	vmovaps	304(%rsp), %xmm9
	#APP
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	#NO_APP
	vmovdqa	416(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovdqa	288(%rsp), %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vmovaps	80(%rsp), %xmm10
	vmovaps	368(%rsp), %xmm9
	#APP
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	#NO_APP
	vmovdqa	400(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovdqa	272(%rsp), %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vmovdqa	176(%rsp), %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vmovaps	160(%rsp), %xmm9
	vmovaps	384(%rsp), %xmm10
	#APP
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	#NO_APP
	vmovdqa	(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovdqa	%xmm0, 448(%rsp)
	vmovdqa	144(%rsp), %xmm13
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm8
	vaesenc	%xmm13, %xmm4, %xmm9
	vaesenc	%xmm13, %xmm5, %xmm10
	vmovdqa	%xmm11, %xmm12
	vaesenc	%xmm13, %xmm6, %xmm11
	vmovdqa	96(%rsp), %xmm0
	vaesenc	%xmm0, %xmm7, %xmm13
	vaesenc	%xmm0, %xmm2, %xmm4
	vaesenc	%xmm0, %xmm8, %xmm5
	vaesenc	%xmm0, %xmm9, %xmm6
	vmovdqa	320(%rsp), %xmm9
	vaesenc	%xmm0, %xmm10, %xmm7
	vaesenc	%xmm0, %xmm11, %xmm2
	vmovdqa	%xmm12, %xmm11
	vmovdqa	192(%rsp), %xmm10
	vmovaps	128(%rsp), %xmm0
	vmovaps	16(%rsp), %xmm3
	vmovaps	448(%rsp), %xmm12
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm12, %xmm3, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm12, %xmm3, %xmm8
	vpxor	%xmm8, %xmm14, %xmm14
	vpclmulqdq	$1, %xmm12, %xmm3, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpunpcklqdq	%xmm15, %xmm8, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpunpckhqdq	%xmm8, %xmm15, %xmm1
	vmovdqa	112(%rsp), %xmm15
	vpbroadcastq	.LCPI2_22(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm8
	vpxor	%xmm1, %xmm14, %xmm1
	vmovdqa	32(%rsp), %xmm14
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$78, %xmm0, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm8
	vaesenc	%xmm14, %xmm13, %xmm0
	vaesenclast	%xmm15, %xmm0, %xmm0
	vpxor	480(%rsp), %xmm0, %xmm0
	vaesenc	%xmm14, %xmm4, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm1
	vpxor	464(%rsp), %xmm1, %xmm1
	vaesenc	%xmm14, %xmm5, %xmm3
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpxor	432(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm6, %xmm4
	vaesenclast	%xmm15, %xmm4, %xmm4
	vpxor	416(%rsp), %xmm4, %xmm4
	vaesenc	%xmm14, %xmm7, %xmm5
	vaesenclast	%xmm15, %xmm5, %xmm5
	vpxor	400(%rsp), %xmm5, %xmm5
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm3, 32(%rax)
	vmovdqu	%xmm4, 48(%rax)
	vmovdqu	%xmm5, 64(%rax)
	vaesenc	%xmm14, %xmm2, %xmm0
	vaesenclast	%xmm15, %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	addq	$-96, %r15
	vpaddd	.LCPI2_16(%rip), %xmm9, %xmm9
	cmpq	$96, %r15
	jae	.LBB2_34
	vmovdqa	%xmm8, (%rsp)
	vmovdqa	64(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm6
	vpbroadcastq	.LCPI2_22(%rip), %xmm7
	cmpq	$16, %r15
	jae	.LBB2_36
.LBB2_32:
	movq	%rax, %r12
	vmovdqa	(%rsp), %xmm1
.LBB2_38:
	vmovdqa	%xmm1, (%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	je	.LBB2_40
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r14, %rsi
	movq	%r15, %rdx
	vmovdqa	%xmm9, 320(%rsp)
	callq	*%rbp
	vmovdqa	320(%rsp), %xmm0
	vpshufb	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	256(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenclast	112(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 208(%rsp)
	vpxor	48(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 336(%rsp)
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%rbp
	vmovdqa	208(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	584(%rsp), %rsi
.LBB2_40:
	vpxor	336(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, 208(%rsp)
	vmovdqa	%xmm0, 496(%rsp)
	vmovdqa	%xmm2, 48(%rsp)
	leaq	48(%rsp), %rdi
	leaq	496(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.LBB2_41
	vmovdqa	48(%rsp), %xmm0
	vpshufb	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm9
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_22(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm4
	vmovdqa	160(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	128(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm15
	jmp	.LBB2_45
.LBB2_25:
	vmovdqa	176(%rsp), %xmm4
	vmovdqa	160(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	128(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm9
.LBB2_43:
	vmovdqu	(%rsi), %xmm12
	xorl	%r13d, %r13d
	jmp	.LBB2_46
.LBB2_41:
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm4
	vmovdqa	160(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	128(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm15
	vmovdqa	16(%rsp), %xmm9
.LBB2_45:
	shlq	$3, %r13
	vmovdqa	208(%rsp), %xmm12
.LBB2_46:
	shlq	$3, %rbx
	vmovq	%r13, %xmm0
	vmovq	%rbx, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_22(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	256(%rsp), %xmm3
	vpxor	.LCPI2_17(%rip), %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vaesenc	64(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	80(%rsp), %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpshufb	.LCPI2_18(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_19(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm12, %xmm1
	vpshufb	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_47:
	addq	$520, %rsp
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

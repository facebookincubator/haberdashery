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
	.section	.text.haberdashery_aes256gcmsiv_haswell_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_haswell_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_haswell_init,@function
haberdashery_aes256gcmsiv_haswell_init:
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
	.size	haberdashery_aes256gcmsiv_haswell_init, .Lfunc_end0-haberdashery_aes256gcmsiv_haswell_init
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
	.zero	8
	.quad	-4467570830351532032
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
.LCPI1_7:
	.quad	4294967297
	.quad	4294967297
.LCPI1_8:
	.quad	8589934594
	.quad	8589934594
.LCPI1_9:
	.quad	17179869188
	.quad	17179869188
.LCPI1_10:
	.quad	34359738376
	.quad	34359738376
.LCPI1_11:
	.quad	68719476752
	.quad	68719476752
.LCPI1_12:
	.quad	137438953504
	.quad	137438953504
.LCPI1_13:
	.quad	274877907008
	.quad	274877907008
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
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_17:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_18:
	.long	8
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_19:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_20:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_haswell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_haswell_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_haswell_encrypt,@function
haberdashery_aes256gcmsiv_haswell_encrypt:
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
	subq	$480, %rsp
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	528(%rsp), %r12
	xorl	%ebp, %ebp
	cmpq	544(%rsp), %r12
	jne	.LBB1_49
	cmpq	$12, %rdx
	jne	.LBB1_49
	movq	%r8, %r14
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	jae	.LBB1_49
	cmpq	%rax, %r12
	jae	.LBB1_49
	cmpq	$16, 560(%rsp)
	jne	.LBB1_49
	movq	%r9, %rbx
	vmovq	4(%rsi), %xmm1
	vmovd	(%rsi), %xmm0
	vmovdqa	%xmm0, 448(%rsp)
	vpsllq	$32, %xmm0, %xmm0
	vmovdqa	%xmm1, 432(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vpxor	.LCPI1_0(%rip), %xmm0, %xmm1
	vpxor	.LCPI1_1(%rip), %xmm0, %xmm2
	vpxor	.LCPI1_2(%rip), %xmm0, %xmm3
	vpxor	.LCPI1_3(%rip), %xmm0, %xmm4
	vpxor	.LCPI1_4(%rip), %xmm0, %xmm5
	vmovdqa	16(%rdi), %xmm6
	vmovdqa	32(%rdi), %xmm7
	vmovdqa	48(%rdi), %xmm8
	vmovdqa	64(%rdi), %xmm9
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
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
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vmovdqa	80(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	96(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	112(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	128(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	144(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm7
	vaesenc	%xmm6, %xmm5, %xmm6
	vmovdqa	160(%rdi), %xmm8
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm4
	vaesenc	%xmm8, %xmm7, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vmovdqa	176(%rdi), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm8
	vaesenc	%xmm7, %xmm2, %xmm3
	vmovdqa	192(%rdi), %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm8, %xmm8
	vmovdqa	208(%rdi), %xmm2
	vaesenc	%xmm2, %xmm0, %xmm9
	vaesenc	%xmm2, %xmm8, %xmm8
	vmovdqa	224(%rdi), %xmm0
	vaesenclast	%xmm0, %xmm9, %xmm9
	vaesenclast	%xmm0, %xmm8, %xmm8
	vpunpcklqdq	%xmm8, %xmm9, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm8
	vpbroadcastq	.LCPI1_19(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm9
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm9
	vaesenc	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm10
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm6, %xmm6
	vpshufd	$78, %xmm8, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm9, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm7
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm8
	vaesenc	%xmm1, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm9
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm8
	vaesenc	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm6
	vaesenc	%xmm2, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm9
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm10
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm1, %xmm11
	vpxor	%xmm9, %xmm10, %xmm1
	vmovdqa	%xmm14, %xmm10
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm9
	vpxor	%xmm2, %xmm6, %xmm6
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpshufd	$78, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm9
	vaesenclast	%xmm0, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm6
	vaesenclast	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm4
	vaesenclast	%xmm0, %xmm5, %xmm1
	vaesenclast	%xmm0, %xmm11, %xmm0
	vmovdqa	%xmm14, %xmm11
	vmovdqa	%xmm14, 16(%rsp)
	vpshufd	$78, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm5
	vpshufd	$78, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm11
	vmovdqa	%xmm11, 240(%rsp)
	vpclmulqdq	$0, %xmm13, %xmm11, %xmm4
	vpshufd	$78, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm11, %xmm6
	vpxor	%xmm5, %xmm9, %xmm5
	vmovdqa	%xmm15, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm11, %xmm7
	vpxor	%xmm5, %xmm8, %xmm5
	vmovdqa	%xmm5, 352(%rsp)
	vpxor	%xmm6, %xmm7, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm13, %xmm11, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm13, %xmm15, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm8
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm13, %xmm15, %xmm5
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	%xmm4, 384(%rsp)
	vpxor	%xmm5, %xmm8, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vmovdqa	%xmm13, 80(%rsp)
	vpclmulqdq	$17, %xmm13, %xmm15, %xmm6
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm4, 368(%rsp)
	vpunpcklqdq	%xmm3, %xmm2, %xmm3
	vpunpcklqdq	%xmm0, %xmm1, %xmm11
	vpslldq	$8, %xmm2, %xmm0
	vpslldq	$12, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpslldq	$4, %xmm3, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI1_20(%rip), %xmm5
	vpshufb	%xmm5, %xmm11, %xmm2
	vaesenclast	.LCPI1_7(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 224(%rsp)
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vpslldq	$8, %xmm1, %xmm0
	vpslldq	$12, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$4, %xmm11, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm5, %xmm4, %xmm2
	vaesenclast	.LCPI1_8(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 320(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vmovdqa	%xmm4, 304(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm5, %xmm4, %xmm2
	vaesenclast	.LCPI1_9(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 288(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm12
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm12, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vmovdqa	%xmm4, 208(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm15
	vpslldq	$4, %xmm12, %xmm1
	vpslldq	$8, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm5, %xmm15, %xmm2
	vaesenclast	.LCPI1_10(%rip), %xmm2, %xmm2
	vpslldq	$12, %xmm12, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm15, %xmm1
	vpslldq	$8, %xmm15, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm15, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	%xmm1, %xmm15, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vmovdqa	%xmm4, 144(%rsp)
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm5, %xmm4, %xmm2
	vaesenclast	.LCPI1_11(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 160(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vmovdqa	%xmm3, 128(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm5, %xmm4, %xmm2
	vaesenclast	.LCPI1_12(%rip), %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm2
	cmpq	$128, %r14
	vmovdqa	%xmm4, 112(%rsp)
	vmovdqa	%xmm5, (%rsp)
	vmovdqa	%xmm10, 64(%rsp)
	vmovdqa	%xmm11, 336(%rsp)
	vmovdqa	%xmm12, 192(%rsp)
	jae	.LBB1_17
	vpxor	%xmm6, %xmm6, %xmm6
	movq	%r14, %rax
	jmp	.LBB1_7
.LBB1_17:
	vmovdqa	%xmm2, 48(%rsp)
	vmovdqa	%xmm1, 96(%rsp)
	vpxor	%xmm6, %xmm6, %xmm6
	movq	%r14, %rax
	vpbroadcastq	.LCPI1_19(%rip), %xmm13
	vmovdqa	80(%rsp), %xmm1
	vmovdqa	%xmm9, %xmm2
	vmovdqa	352(%rsp), %xmm0
	.p2align	4, 0x90
.LBB1_18:
	vmovdqu	112(%rcx), %xmm3
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm5
	vmovdqa	%xmm6, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm3
	vmovdqu	96(%rcx), %xmm7
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm9
	vmovdqu	64(%rcx), %xmm10
	vpclmulqdq	$1, 64(%rsp), %xmm7, %xmm11
	vmovdqu	80(%rcx), %xmm12
	vpclmulqdq	$17, 64(%rsp), %xmm7, %xmm7
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, 16(%rsp), %xmm12, %xmm6
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$16, 16(%rsp), %xmm12, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$1, 16(%rsp), %xmm12, %xmm11
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm2, %xmm9
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm11, %xmm8, %xmm7
	vmovdqa	240(%rsp), %xmm11
	vpxor	%xmm6, %xmm9, %xmm6
	vmovdqu	32(%rcx), %xmm8
	vpclmulqdq	$17, 16(%rsp), %xmm12, %xmm9
	vmovdqa	368(%rsp), %xmm12
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm2, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm6
	vmovdqu	48(%rcx), %xmm7
	vpclmulqdq	$17, %xmm10, %xmm2, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm10
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm11, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm11, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm6
	vmovdqu	16(%rcx), %xmm10
	vpclmulqdq	$17, %xmm8, %xmm11, %xmm8
	vmovdqa	384(%rsp), %xmm11
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm9
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm8
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm9
	vmovdqa	64(%rsp), %xmm10
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm7, %xmm9, %xmm7
	vpxor	(%rcx), %xmm14, %xmm8
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm7
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm7, %xmm3, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm6
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm6
	addq	$-128, %rax
	subq	$-128, %rcx
	cmpq	$128, %rax
	jae	.LBB1_18
	vmovdqa	112(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	vmovdqa	%xmm2, %xmm9
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	96(%rsp), %xmm1
	vmovdqa	48(%rsp), %xmm2
.LBB1_7:
	vmovdqa	%xmm9, 464(%rsp)
	vaesenclast	%xmm0, %xmm2, %xmm0
	vpxor	%xmm4, %xmm1, %xmm2
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	cmpq	$16, %rax
	jae	.LBB1_9
	movq	%rax, %rdx
	jmp	.LBB1_15
.LBB1_9:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_11
	vpxor	(%rcx), %xmm6, %xmm4
	vmovdqa	80(%rsp), %xmm8
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm7
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpbroadcastq	.LCPI1_19(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm7
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm6
	vmovdqa	(%rsp), %xmm5
	movq	%rdx, %rax
.LBB1_11:
	cmpq	$16, %rdx
	jb	.LBB1_15
	vpbroadcastq	.LCPI1_19(%rip), %xmm8
	vmovdqa	80(%rsp), %xmm9
	.p2align	4, 0x90
.LBB1_13:
	vpxor	(%rcx), %xmm6, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm7
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	16(%rcx), %xmm4, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	addq	$-32, %rax
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	addq	$32, %rcx
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	cmpq	$15, %rax
	ja	.LBB1_13
	movq	%rax, %rdx
	vmovdqa	(%rsp), %xmm5
.LBB1_15:
	vmovdqa	%xmm15, 176(%rsp)
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	testq	%rdx, %rdx
	vmovdqa	%xmm0, 48(%rsp)
	je	.LBB1_16
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	vmovdqa	%xmm6, 96(%rsp)
	vmovdqa	%xmm1, 272(%rsp)
	vmovdqa	%xmm2, 256(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	96(%rsp), %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	80(%rsp), %xmm9
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_19(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	256(%rsp), %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	272(%rsp), %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vmovdqa	48(%rsp), %xmm0
	jmp	.LBB1_21
.LBB1_16:
	vpbroadcastq	.LCPI1_19(%rip), %xmm10
	vmovdqa	80(%rsp), %xmm9
.LBB1_21:
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI1_6(%rip), %xmm0, %xmm0
	vmovq	%r12, %xmm4
	vmovq	%r14, %xmm5
	cmpq	$128, %r12
	jae	.LBB1_39
	movq	%r12, %rax
	movq	%rbx, %rsi
	jmp	.LBB1_23
.LBB1_39:
	vmovdqa	%xmm5, 400(%rsp)
	vmovdqa	%xmm0, 416(%rsp)
	vmovdqa	%xmm4, 256(%rsp)
	vmovdqa	%xmm1, 272(%rsp)
	movq	%rbx, %rsi
	movq	%r12, %rax
	vmovdqa	16(%rsp), %xmm0
	vmovdqa	240(%rsp), %xmm5
	vmovdqa	352(%rsp), %xmm14
	vmovdqa	384(%rsp), %xmm15
	vmovdqa	368(%rsp), %xmm1
	.p2align	4, 0x90
.LBB1_40:
	vmovdqa	%xmm6, 96(%rsp)
	vmovdqu	112(%rsi), %xmm2
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm2
	vmovdqu	96(%rsi), %xmm8
	vmovdqa	64(%rsp), %xmm4
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm10
	vmovdqu	64(%rsi), %xmm11
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm12
	vmovdqu	80(%rsi), %xmm13
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm8
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm7
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm9
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm12
	vpxor	%xmm6, %xmm10, %xmm6
	vmovdqa	464(%rsp), %xmm4
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm10
	vpxor	%xmm2, %xmm8, %xmm2
	vpxor	%xmm12, %xmm9, %xmm8
	vpxor	%xmm7, %xmm10, %xmm7
	vmovdqu	32(%rsi), %xmm9
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm10
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm7
	vmovdqu	48(%rsi), %xmm8
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm11
	vpxor	%xmm2, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm8
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm7
	vmovdqu	16(%rsi), %xmm11
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm15, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm15, %xmm10
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm15, %xmm9
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm15, %xmm10
	vpxor	%xmm7, %xmm9, %xmm7
	vpxor	%xmm10, %xmm8, %xmm8
	vpbroadcastq	.LCPI1_19(%rip), %xmm10
	vmovdqa	96(%rsp), %xmm4
	vpxor	(%rsi), %xmm4, %xmm9
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$0, %xmm9, %xmm14, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm9, %xmm14, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm14, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm14, %xmm8
	vmovdqa	80(%rsp), %xmm9
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm2, %xmm8, %xmm2
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm7
	vpxor	%xmm6, %xmm2, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpshufd	$78, %xmm3, %xmm6
	vpxor	%xmm6, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm6
	addq	$-128, %rax
	subq	$-128, %rsi
	cmpq	$128, %rax
	jae	.LBB1_40
	vmovdqa	272(%rsp), %xmm1
	vmovdqa	256(%rsp), %xmm4
	vmovdqa	416(%rsp), %xmm0
	vmovdqa	400(%rsp), %xmm5
.LBB1_23:
	vaesenclast	.LCPI1_13(%rip), %xmm0, %xmm0
	vpshufd	$80, 432(%rsp), %xmm3
	vmovdqa	(%rsp), %xmm7
	vpxor	%xmm7, %xmm1, %xmm2
	vpunpcklqdq	%xmm4, %xmm5, %xmm1
	cmpq	$16, %rax
	jae	.LBB1_25
	movq	%rax, %rdx
	jmp	.LBB1_30
.LBB1_25:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_27
	vpxor	(%rsi), %xmm6, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	addq	$16, %rsi
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm6
	vmovdqa	(%rsp), %xmm7
	movq	%rdx, %rax
.LBB1_27:
	cmpq	$16, %rdx
	jb	.LBB1_30
	.p2align	4, 0x90
.LBB1_28:
	vpxor	(%rsi), %xmm6, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	16(%rsi), %xmm4, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	addq	$-32, %rax
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	addq	$32, %rsi
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	cmpq	$15, %rax
	ja	.LBB1_28
	movq	%rax, %rdx
	vmovdqa	(%rsp), %xmm7
.LBB1_30:
	movq	552(%rsp), %r14
	vpblendd	$9, 448(%rsp), %xmm3, %xmm4
	vpxor	%xmm2, %xmm0, %xmm8
	vpsllq	$3, %xmm1, %xmm0
	testq	%rdx, %rdx
	vmovdqa	%xmm8, 16(%rsp)
	je	.LBB1_32
	vmovdqa	%xmm0, 240(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	vmovdqa	%xmm6, 96(%rsp)
	vmovdqa	%xmm4, 64(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	64(%rsp), %xmm4
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	80(%rsp), %xmm9
	vpbroadcastq	.LCPI1_19(%rip), %xmm10
	vmovdqa	(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm0
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
	vpxor	%xmm0, %xmm3, %xmm6
	vmovdqa	240(%rsp), %xmm0
.LBB1_32:
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm4, %xmm0, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpand	.LCPI1_14(%rip), %xmm0, %xmm0
	vmovdqa	224(%rsp), %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vmovdqa	336(%rsp), %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa	320(%rsp), %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa	304(%rsp), %xmm10
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	288(%rsp), %xmm11
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	208(%rsp), %xmm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm13
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	176(%rsp), %xmm14
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa	160(%rsp), %xmm3
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	144(%rsp), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	128(%rsp), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	112(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r14)
	movq	536(%rsp), %rax
	vpor	.LCPI1_15(%rip), %xmm0, %xmm8
	cmpq	$128, %r12
	jb	.LBB1_36
	vmovdqa	%xmm10, %xmm4
	vmovdqa	%xmm11, %xmm5
	vmovdqa	48(%rsp), %xmm3
	vmovdqa	16(%rsp), %xmm7
	.p2align	4, 0x90
.LBB1_34:
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm9
	vpaddd	.LCPI1_1(%rip), %xmm8, %xmm10
	vpaddd	.LCPI1_2(%rip), %xmm8, %xmm11
	vpaddd	.LCPI1_3(%rip), %xmm8, %xmm12
	vpaddd	.LCPI1_4(%rip), %xmm8, %xmm13
	vpaddd	.LCPI1_16(%rip), %xmm8, %xmm14
	vpaddd	.LCPI1_17(%rip), %xmm8, %xmm15
	vmovdqa	224(%rsp), %xmm6
	vpxor	%xmm6, %xmm8, %xmm0
	vpxor	%xmm6, %xmm9, %xmm9
	vpxor	%xmm6, %xmm10, %xmm10
	vpxor	%xmm6, %xmm11, %xmm11
	vpxor	%xmm6, %xmm12, %xmm12
	vpxor	%xmm6, %xmm13, %xmm13
	vpxor	%xmm6, %xmm14, %xmm14
	vpxor	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vmovdqa	208(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vmovdqa	192(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vmovdqa	176(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vmovdqa	160(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vmovdqa	144(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vmovdqa	128(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vmovdqa	112(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vmovdqa	(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm7, %xmm0, %xmm0
	vaesenclast	%xmm7, %xmm9, %xmm9
	vaesenclast	%xmm7, %xmm10, %xmm10
	vaesenclast	%xmm7, %xmm11, %xmm11
	vaesenclast	%xmm7, %xmm12, %xmm12
	vaesenclast	%xmm7, %xmm13, %xmm13
	vaesenclast	%xmm7, %xmm14, %xmm14
	vaesenclast	%xmm7, %xmm15, %xmm15
	vpxor	(%rbx), %xmm0, %xmm0
	vpxor	16(%rbx), %xmm9, %xmm9
	vpxor	32(%rbx), %xmm10, %xmm10
	vpxor	48(%rbx), %xmm11, %xmm11
	vpxor	64(%rbx), %xmm12, %xmm12
	vpxor	80(%rbx), %xmm13, %xmm13
	vpxor	96(%rbx), %xmm14, %xmm14
	vpxor	112(%rbx), %xmm15, %xmm15
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm9, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu	%xmm13, 80(%rax)
	vmovdqu	%xmm14, 96(%rax)
	vmovdqu	%xmm15, 112(%rax)
	addq	$128, %rbx
	addq	$128, %rax
	addq	$-128, %r12
	vpaddd	.LCPI1_18(%rip), %xmm8, %xmm8
	cmpq	$128, %r12
	jae	.LBB1_34
	vmovdqa	224(%rsp), %xmm9
	vmovdqa	%xmm4, %xmm10
	vmovdqa	%xmm5, %xmm11
	vmovdqa	208(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm13
	vmovdqa	176(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm3
	vmovdqa	144(%rsp), %xmm4
	vmovdqa	128(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm6
	vmovdqa	(%rsp), %xmm7
.LBB1_36:
	cmpq	$16, %r12
	jb	.LBB1_46
	leaq	-16(%r12), %r14
	testb	$16, %r14b
	jne	.LBB1_38
	leaq	16(%rbx), %rsi
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm15
	leaq	16(%rax), %r15
	vpxor	%xmm9, %xmm8, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	16(%rsp), %xmm0, %xmm0
	vpxor	(%rbx), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	vmovdqa	%xmm15, %xmm0
	movq	%r15, %rax
	vmovdqa	%xmm15, %xmm8
	movq	%r14, %r12
	movq	%rsi, %rbx
	jmp	.LBB1_43
.LBB1_38:
.LBB1_43:
	cmpq	$16, %r14
	jb	.LBB1_47
	vmovdqa	224(%rsp), %xmm15
	vmovdqa	336(%rsp), %xmm1
	vmovdqa	320(%rsp), %xmm12
	vmovdqa	304(%rsp), %xmm10
	vmovdqa	288(%rsp), %xmm14
	vmovdqa	208(%rsp), %xmm11
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm13
	vmovdqa	160(%rsp), %xmm3
	vmovdqa	144(%rsp), %xmm4
	vmovdqa	128(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm6
	vmovdqa	(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm0
	.p2align	4, 0x90
.LBB1_45:
	vpxor	%xmm15, %xmm8, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	(%rbx), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rax)
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	16(%rbx), %xmm2, %xmm2
	vmovdqu	%xmm2, 16(%rax)
	addq	$32, %rbx
	addq	$32, %rax
	addq	$-32, %r12
	vpaddd	.LCPI1_1(%rip), %xmm8, %xmm8
	cmpq	$15, %r12
	ja	.LBB1_45
.LBB1_46:
	movq	%rbx, %rsi
	movq	%rax, %r15
	movq	%r12, %r14
	vmovdqa	%xmm8, %xmm0
.LBB1_47:
	movl	$1, %ebp
	testq	%r14, %r14
	je	.LBB1_49
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbx
	movq	%r14, %rdx
	callq	*%rbx
	vmovdqa	224(%rsp), %xmm0
	vpxor	64(%rsp), %xmm0, %xmm0
	vaesenc	336(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	16(%rsp), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*%rbx
.LBB1_49:
	movl	%ebp, %eax
	addq	$480, %rsp
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
	.size	haberdashery_aes256gcmsiv_haswell_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_haswell_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_1:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_3:
	.quad	4
	.quad	0
.LCPI2_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.zero	8
	.quad	-4467570830351532032
.LCPI2_6:
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
.LCPI2_7:
	.quad	4294967297
	.quad	4294967297
.LCPI2_8:
	.quad	8589934594
	.quad	8589934594
.LCPI2_9:
	.quad	17179869188
	.quad	17179869188
.LCPI2_10:
	.quad	34359738376
	.quad	34359738376
.LCPI2_11:
	.quad	68719476752
	.quad	68719476752
.LCPI2_12:
	.quad	137438953504
	.quad	137438953504
.LCPI2_13:
	.quad	274877907008
	.quad	274877907008
.LCPI2_14:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_15:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_16:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI2_17:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	10
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	12
	.long	0
	.long	0
	.long	0
.LCPI2_22:
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI2_23:
	.long	14
	.long	0
	.long	0
	.long	0
.LCPI2_24:
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI2_25:
	.quad	-1
	.quad	9223372036854775807
.LCPI2_26:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_27:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_28:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_haswell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_haswell_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_haswell_decrypt,@function
haberdashery_aes256gcmsiv_haswell_decrypt:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$544, %rsp
	.cfi_def_cfa_offset 576
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	576(%rsp), %rbx
	xorl	%eax, %eax
	cmpq	608(%rsp), %rbx
	jne	.LBB2_33
	cmpq	$12, %rdx
	jne	.LBB2_33
	movq	%r8, %r15
	movabsq	$68719476736, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_33
	cmpq	%rdx, %rbx
	ja	.LBB2_33
	cmpq	$16, 592(%rsp)
	jb	.LBB2_33
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm1
	vmovd	(%rsi), %xmm0
	vmovdqa	%xmm0, 528(%rsp)
	vpsllq	$32, %xmm0, %xmm0
	vmovdqa	%xmm1, 512(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vpxor	.LCPI2_0(%rip), %xmm0, %xmm1
	vpxor	.LCPI2_1(%rip), %xmm0, %xmm2
	vpxor	.LCPI2_2(%rip), %xmm0, %xmm3
	vpxor	.LCPI2_3(%rip), %xmm0, %xmm4
	vpxor	.LCPI2_4(%rip), %xmm0, %xmm5
	vmovdqa	16(%rdi), %xmm6
	vmovdqa	32(%rdi), %xmm7
	vmovdqa	48(%rdi), %xmm8
	vmovdqa	64(%rdi), %xmm9
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
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
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vmovdqa	80(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	96(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	112(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	128(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	144(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	160(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	176(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm7
	vaesenc	%xmm6, %xmm1, %xmm8
	vaesenc	%xmm6, %xmm2, %xmm9
	vaesenc	%xmm6, %xmm3, %xmm10
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm0
	vmovdqa	192(%rdi), %xmm1
	vaesenc	%xmm1, %xmm7, %xmm3
	vaesenc	%xmm1, %xmm8, %xmm5
	vmovdqa	208(%rdi), %xmm2
	vaesenc	%xmm2, %xmm3, %xmm6
	vaesenc	%xmm2, %xmm5, %xmm5
	vmovdqa	224(%rdi), %xmm3
	vaesenclast	%xmm3, %xmm6, %xmm6
	vaesenclast	%xmm3, %xmm5, %xmm5
	vpunpcklqdq	%xmm5, %xmm6, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm5
	vpbroadcastq	.LCPI2_27(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm6
	vaesenc	%xmm1, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm8
	vaesenc	%xmm1, %xmm10, %xmm9
	vaesenc	%xmm1, %xmm4, %xmm4
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpxor	%xmm6, %xmm5, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm6
	vaesenc	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm1
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm9, %xmm8
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm5
	vaesenc	%xmm2, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm6
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm9
	vaesenclast	%xmm3, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm14, %xmm11, %xmm7
	vaesenclast	%xmm3, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm11, %xmm8
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm11, %xmm10
	vaesenclast	%xmm3, %xmm6, %xmm3
	vpxor	%xmm8, %xmm10, %xmm6
	vpslldq	$8, %xmm6, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm7, %xmm8
	vpsrldq	$8, %xmm6, %xmm6
	vmovdqa	%xmm11, 368(%rsp)
	vpclmulqdq	$17, %xmm14, %xmm11, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm7
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm5
	vpshufd	$78, %xmm4, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm7, %xmm5, %xmm9
	vmovdqa	%xmm9, 80(%rsp)
	vpclmulqdq	$16, %xmm14, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm14, %xmm9, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm14, %xmm9, %xmm6
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm7
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqa	%xmm4, 96(%rsp)
	vpclmulqdq	$17, %xmm14, %xmm9, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$78, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm4, 336(%rsp)
	vpclmulqdq	$16, %xmm14, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm14, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm15, %xmm5
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm14, %xmm15, %xmm7
	vpxor	%xmm5, %xmm6, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpshufd	$78, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm4, 400(%rsp)
	vpunpcklqdq	%xmm2, %xmm0, %xmm8
	vpunpcklqdq	%xmm3, %xmm1, %xmm9
	vpslldq	$8, %xmm0, %xmm2
	vpslldq	$12, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpslldq	$4, %xmm8, %xmm2
	vpxor	%xmm0, %xmm2, %xmm2
	vpbroadcastd	.LCPI2_28(%rip), %xmm0
	vpshufb	%xmm0, %xmm9, %xmm3
	vaesenclast	.LCPI2_7(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm8, %xmm2
	vpxor	%xmm2, %xmm3, %xmm3
	vpslldq	$8, %xmm1, %xmm2
	vpslldq	$12, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$4, %xmm9, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vpxor	%xmm7, %xmm7, %xmm7
	vaesenclast	%xmm7, %xmm2, %xmm2
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_8(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 192(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm4, 176(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_9(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 160(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vmovdqa	%xmm3, 272(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm4, 144(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vmovdqa	%xmm4, 256(%rsp)
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_10(%rip), %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vmovdqa	%xmm5, 112(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vmovdqa	%xmm4, 240(%rsp)
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_11(%rip), %xmm2, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vmovdqa	%xmm3, 304(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vmovdqa	%xmm4, 352(%rsp)
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_12(%rip), %xmm2, %xmm2
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm2
	vpslldq	$12, %xmm6, %xmm1
	cmpq	$128, %r15
	vmovdqa	%xmm9, 64(%rsp)
	vmovdqa	%xmm6, 224(%rsp)
	vmovdqa	%xmm3, 288(%rsp)
	vmovdqa	%xmm8, 128(%rsp)
	jae	.LBB2_18
	movq	%r15, %rax
	jmp	.LBB2_7
.LBB2_18:
	vmovdqa	%xmm2, (%rsp)
	vmovdqa	%xmm1, 48(%rsp)
	movq	%r15, %rax
	vmovdqa	368(%rsp), %xmm1
	vmovdqa	%xmm10, %xmm2
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu	112(%rcx), %xmm3
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm3
	vmovdqa	%xmm7, %xmm0
	vmovdqu	96(%rcx), %xmm7
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm9
	vmovdqu	64(%rcx), %xmm10
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm11
	vmovdqu	80(%rcx), %xmm12
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm7
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm6
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm11
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm15, %xmm9
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm11, %xmm8, %xmm7
	vmovdqa	80(%rsp), %xmm11
	vpxor	%xmm6, %xmm9, %xmm6
	vmovdqu	32(%rcx), %xmm8
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm9
	vmovdqa	400(%rsp), %xmm12
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm15, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm15, %xmm6
	vmovdqu	48(%rcx), %xmm7
	vpclmulqdq	$17, %xmm10, %xmm15, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm10
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm11, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm11, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm6
	vmovdqu	16(%rcx), %xmm10
	vpclmulqdq	$17, %xmm8, %xmm11, %xmm8
	vmovdqa	336(%rsp), %xmm11
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm9
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm8
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm9
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm7, %xmm9, %xmm7
	vmovdqa	96(%rsp), %xmm9
	vpxor	(%rcx), %xmm0, %xmm8
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm7
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm7, %xmm3, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm6
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm7
	addq	$-128, %rax
	subq	$-128, %rcx
	cmpq	$128, %rax
	jae	.LBB2_19
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm6
	vmovdqa	288(%rsp), %xmm3
	vmovdqa	%xmm2, %xmm10
	vpbroadcastd	.LCPI2_28(%rip), %xmm0
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	(%rsp), %xmm2
.LBB2_7:
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm0
	movq	584(%rsp), %rsi
	cmpq	$16, %rax
	jb	.LBB2_12
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB2_10
	vpxor	(%rcx), %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm5
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm5
	vpxor	%xmm4, %xmm2, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm7
	movq	%rdx, %rax
.LBB2_10:
	cmpq	$16, %rdx
	jb	.LBB2_13
	.p2align	4, 0x90
.LBB2_11:
	vpxor	(%rcx), %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	16(%rcx), %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm3
	addq	$-32, %rax
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	addq	$32, %rcx
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm7
	cmpq	$15, %rax
	ja	.LBB2_11
.LBB2_12:
	movq	%rax, %rdx
.LBB2_13:
	vaesenclast	.LCPI2_13(%rip), %xmm0, %xmm2
	vpxor	%xmm6, %xmm1, %xmm4
	vmovdqu	(%rsi), %xmm0
	vmovdqa	%xmm0, 448(%rsp)
	testq	%rdx, %rdx
	vmovdqa	%xmm14, 208(%rsp)
	vmovdqa	%xmm15, 464(%rsp)
	vmovdqa	%xmm10, 384(%rsp)
	je	.LBB2_15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	vmovdqa	%xmm7, 32(%rsp)
	vmovdqa	%xmm2, 48(%rsp)
	vmovdqa	%xmm4, (%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	208(%rsp), %xmm4
	vpbroadcastq	.LCPI2_27(%rip), %xmm13
	vmovdqa	32(%rsp), %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vmovdqa	(%rsp), %xmm4
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm7
.LBB2_15:
	vmovdqa	192(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm14
	vmovq	%rbx, %xmm1
	vmovq	%r15, %xmm3
	movq	600(%rsp), %rdx
	vpxor	%xmm4, %xmm2, %xmm12
	vmovdqa	448(%rsp), %xmm0
	vpor	.LCPI2_14(%rip), %xmm0, %xmm2
	cmpq	$128, %rbx
	vmovdqa	%xmm12, 48(%rsp)
	jb	.LBB2_21
	vmovdqa	%xmm3, 480(%rsp)
	vmovdqa	%xmm1, 496(%rsp)
	vmovdqa	%xmm7, 32(%rsp)
	leaq	128(%r14), %rcx
	leaq	128(%rdx), %rax
	vpaddd	.LCPI2_0(%rip), %xmm2, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm2, %xmm1
	vpaddd	.LCPI2_2(%rip), %xmm2, %xmm3
	vpaddd	.LCPI2_3(%rip), %xmm2, %xmm4
	vmovdqa	%xmm5, %xmm13
	vpaddd	.LCPI2_4(%rip), %xmm2, %xmm5
	vpaddd	.LCPI2_15(%rip), %xmm2, %xmm6
	vpaddd	.LCPI2_16(%rip), %xmm2, %xmm7
	vmovdqa	128(%rsp), %xmm10
	vpxor	%xmm2, %xmm10, %xmm8
	vpxor	%xmm0, %xmm10, %xmm0
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm3, %xmm10, %xmm3
	vpxor	%xmm4, %xmm10, %xmm4
	vpxor	%xmm5, %xmm10, %xmm5
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm7, %xmm10, %xmm7
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vmovdqa	272(%rsp), %xmm9
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vmovdqa	256(%rsp), %xmm9
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vmovdqa	112(%rsp), %xmm9
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vmovdqa	240(%rsp), %xmm9
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vmovdqa	304(%rsp), %xmm11
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vmovdqa	352(%rsp), %xmm10
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vmovdqa	224(%rsp), %xmm9
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vmovdqa	288(%rsp), %xmm9
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenclast	%xmm12, %xmm8, %xmm8
	vaesenclast	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm1, %xmm9
	vaesenclast	%xmm12, %xmm3, %xmm3
	vaesenclast	%xmm12, %xmm4, %xmm4
	vaesenclast	%xmm12, %xmm5, %xmm5
	vaesenclast	%xmm12, %xmm6, %xmm6
	vaesenclast	%xmm12, %xmm7, %xmm7
	vpxor	(%r14), %xmm8, %xmm8
	vpxor	16(%r14), %xmm0, %xmm13
	vpxor	32(%r14), %xmm9, %xmm14
	vpxor	48(%r14), %xmm3, %xmm15
	vpxor	64(%r14), %xmm4, %xmm1
	vmovdqa	%xmm2, %xmm9
	vpxor	80(%r14), %xmm5, %xmm2
	vpxor	96(%r14), %xmm6, %xmm3
	vpxor	112(%r14), %xmm7, %xmm4
	vmovdqa	%xmm8, %xmm0
	vmovdqu	%xmm8, (%rdx)
	vmovdqu	%xmm13, 16(%rdx)
	vmovdqu	%xmm14, 32(%rdx)
	vmovdqu	%xmm15, 48(%rdx)
	vmovdqu	%xmm1, 64(%rdx)
	vmovdqu	%xmm2, 80(%rdx)
	vmovdqa	%xmm3, %xmm5
	vmovdqu	%xmm3, 96(%rdx)
	vmovdqu	%xmm4, 112(%rdx)
	addq	$-128, %rbx
	vpaddd	.LCPI2_17(%rip), %xmm9, %xmm12
	cmpq	$128, %rbx
	jae	.LBB2_23
	vmovdqa	%xmm2, %xmm10
	vmovdqa	%xmm1, 432(%rsp)
	vmovdqa	%xmm13, 416(%rsp)
	vmovdqa	%xmm12, (%rsp)
	vmovdqa	368(%rsp), %xmm2
	vmovdqa	384(%rsp), %xmm11
	vmovdqa	%xmm5, %xmm12
	jmp	.LBB2_26
.LBB2_23:
	vmovdqa	%xmm12, %xmm3
	vmovdqa	%xmm13, %xmm11
	vmovdqa	32(%rsp), %xmm13
	vmovdqa	%xmm0, 320(%rsp)
	vmovdqa	%xmm2, %xmm10
	vmovdqa	%xmm5, %xmm12
	.p2align	4, 0x90
.LBB2_24:
	vmovdqa	%xmm3, (%rsp)
	vmovdqa	208(%rsp), %xmm8
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm11, %xmm3
	vmovdqa	368(%rsp), %xmm11
	vpclmulqdq	$0, %xmm12, %xmm11, %xmm8
	vmovdqa	%xmm9, %xmm2
	vpclmulqdq	$1, %xmm12, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm12, %xmm11, %xmm0
	vpxor	320(%rsp), %xmm13, %xmm13
	vpclmulqdq	$17, %xmm12, %xmm11, %xmm4
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqa	384(%rsp), %xmm11
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm7
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm12
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm0
	vpxor	32(%rsp), %xmm4, %xmm4
	vmovdqa	%xmm4, 320(%rsp)
	vmovdqa	464(%rsp), %xmm11
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm4
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm9
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm7
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm5
	vpxor	%xmm9, %xmm8, %xmm8
	vmovdqa	400(%rsp), %xmm10
	vpclmulqdq	$0, %xmm15, %xmm10, %xmm9
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm15, %xmm10, %xmm8
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm10, %xmm5
	vpxor	320(%rsp), %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm10, %xmm1
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	80(%rsp), %xmm10
	vpclmulqdq	$0, %xmm14, %xmm10, %xmm8
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm14, %xmm10, %xmm7
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$16, %xmm14, %xmm10, %xmm9
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm14, %xmm10, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vmovdqa	336(%rsp), %xmm10
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm8
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm7
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpaddd	.LCPI2_18(%rip), %xmm2, %xmm8
	vpxor	%xmm5, %xmm6, %xmm5
	vpaddd	.LCPI2_19(%rip), %xmm2, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm9
	vpxor	%xmm1, %xmm9, %xmm3
	vmovdqa	96(%rsp), %xmm10
	vpclmulqdq	$0, %xmm13, %xmm10, %xmm9
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm10, %xmm3
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm10, %xmm9
	vpxor	%xmm3, %xmm7, %xmm3
	vpaddd	.LCPI2_20(%rip), %xmm2, %xmm7
	vpxor	%xmm3, %xmm9, %xmm3
	vpaddd	.LCPI2_21(%rip), %xmm2, %xmm9
	vpclmulqdq	$17, %xmm13, %xmm10, %xmm1
	vpxor	%xmm3, %xmm5, %xmm3
	vpaddd	.LCPI2_22(%rip), %xmm2, %xmm5
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpaddd	.LCPI2_23(%rip), %xmm2, %xmm4
	vpaddd	.LCPI2_24(%rip), %xmm2, %xmm10
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vpbroadcastq	.LCPI2_27(%rip), %xmm11
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	(%rsp), %xmm3
	vpxor	%xmm3, %xmm13, %xmm1
	vmovdqa	%xmm3, (%rsp)
	vpxor	%xmm8, %xmm13, %xmm3
	vpxor	%xmm6, %xmm13, %xmm6
	vpxor	%xmm7, %xmm13, %xmm7
	vpxor	%xmm9, %xmm13, %xmm8
	vpxor	%xmm5, %xmm13, %xmm5
	vpxor	%xmm4, %xmm13, %xmm4
	vpxor	%xmm10, %xmm13, %xmm9
	vmovdqa	64(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm9, %xmm9
	vmovdqa	192(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm9, %xmm9
	vmovdqa	176(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm9, %xmm9
	vmovdqa	160(%rsp), %xmm12
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm5, %xmm10
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm0
	vaesenc	%xmm12, %xmm9, %xmm4
	vmovdqa	144(%rsp), %xmm11
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm10, %xmm9
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm4, %xmm4
	vmovdqa	272(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	256(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	112(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	240(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	304(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	352(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	224(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	288(%rsp), %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	48(%rsp), %xmm11
	vaesenclast	%xmm11, %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm3, %xmm3
	vaesenclast	%xmm11, %xmm6, %xmm6
	vaesenclast	%xmm11, %xmm7, %xmm7
	vaesenclast	%xmm11, %xmm8, %xmm8
	vaesenclast	%xmm11, %xmm9, %xmm9
	vaesenclast	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm4, %xmm4
	vpxor	(%rcx), %xmm1, %xmm13
	vpxor	16(%rcx), %xmm3, %xmm11
	vpxor	32(%rcx), %xmm6, %xmm14
	vpxor	48(%rcx), %xmm7, %xmm15
	vpxor	64(%rcx), %xmm8, %xmm1
	vpxor	80(%rcx), %xmm9, %xmm10
	vpxor	96(%rcx), %xmm0, %xmm12
	vpxor	112(%rcx), %xmm4, %xmm4
	vmovdqa	%xmm13, 320(%rsp)
	vmovdqu	%xmm13, (%rax)
	vmovdqu	%xmm11, 16(%rax)
	vmovdqu	%xmm14, 32(%rax)
	vmovdqu	%xmm15, 48(%rax)
	vmovdqu	%xmm1, 64(%rax)
	vmovdqu	%xmm10, 80(%rax)
	vmovdqu	%xmm12, 96(%rax)
	addq	$128, %rcx
	vmovdqu	%xmm4, 112(%rax)
	addq	$128, %rax
	addq	$-128, %rbx
	vpxor	%xmm5, %xmm2, %xmm13
	vmovdqa	(%rsp), %xmm5
	vmovdqa	%xmm5, %xmm9
	vpaddd	.LCPI2_17(%rip), %xmm5, %xmm3
	cmpq	$127, %rbx
	ja	.LBB2_24
	vmovdqa	%xmm1, 432(%rsp)
	vmovdqa	%xmm11, 416(%rsp)
	vmovdqa	%xmm3, (%rsp)
	vmovdqa	%xmm13, 32(%rsp)
	vmovdqa	368(%rsp), %xmm2
	vmovdqa	384(%rsp), %xmm11
	vmovdqa	320(%rsp), %xmm0
.LBB2_26:
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm3
	vmovdqa	208(%rsp), %xmm2
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm9
	vpxor	32(%rsp), %xmm0, %xmm1
	vmovdqa	%xmm10, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm10
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm9
	vpxor	%xmm7, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm7
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vmovdqa	464(%rsp), %xmm11
	vmovdqa	432(%rsp), %xmm12
	vpclmulqdq	$0, %xmm12, %xmm11, %xmm4
	vpxor	%xmm7, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm11, %xmm7
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm11, %xmm8
	vpxor	%xmm4, %xmm13, %xmm2
	vpclmulqdq	$17, %xmm12, %xmm11, %xmm4
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	400(%rsp), %xmm9
	vpclmulqdq	$0, %xmm15, %xmm9, %xmm7
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm15, %xmm9, %xmm6
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm9, %xmm4
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm9, %xmm3
	vpxor	%xmm6, %xmm8, %xmm6
	vmovdqa	80(%rsp), %xmm9
	vpclmulqdq	$0, %xmm14, %xmm9, %xmm8
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm14, %xmm9, %xmm6
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm9, %xmm8
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm14, %xmm9, %xmm6
	vpxor	%xmm4, %xmm5, %xmm4
	vmovdqa	336(%rsp), %xmm9
	vmovdqa	416(%rsp), %xmm13
	vpclmulqdq	$0, %xmm13, %xmm9, %xmm5
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm13, %xmm9, %xmm6
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm9, %xmm7
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm9, %xmm5
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vmovdqa	96(%rsp), %xmm7
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_27(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm7
	movq	%rcx, %r14
	movq	%rax, %rdx
	vmovdqa	(%rsp), %xmm2
	vmovdqa	192(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm14
	vmovdqa	496(%rsp), %xmm1
	vmovdqa	480(%rsp), %xmm3
.LBB2_21:
	vpshufd	$80, 512(%rsp), %xmm0
	vpunpcklqdq	%xmm1, %xmm3, %xmm1
	cmpq	$16, %rbx
	vmovdqa	%xmm0, 96(%rsp)
	vmovdqa	%xmm1, 80(%rsp)
	jae	.LBB2_27
	movq	%r14, %rsi
	movq	%rdx, %r15
	vmovdqa	%xmm2, %xmm6
	vmovdqa	208(%rsp), %xmm8
	jmp	.LBB2_29
.LBB2_27:
	vmovdqa	208(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	304(%rsp), %xmm3
	vmovdqa	224(%rsp), %xmm12
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	128(%rsp), %xmm0
	.p2align	4, 0x90
.LBB2_28:
	vpxor	%xmm0, %xmm2, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	272(%rsp), %xmm4, %xmm4
	vaesenc	256(%rsp), %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	240(%rsp), %xmm4, %xmm4
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	352(%rsp), %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	288(%rsp), %xmm4, %xmm4
	vaesenclast	48(%rsp), %xmm4, %xmm4
	vpxor	(%r14), %xmm4, %xmm4
	vmovdqu	%xmm4, (%rdx)
	vpxor	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm5, %xmm1
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	leaq	16(%r14), %rsi
	leaq	16(%rdx), %r15
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm5
	addq	$-16, %rbx
	vpaddd	.LCPI2_0(%rip), %xmm2, %xmm6
	vpxor	%xmm4, %xmm5, %xmm7
	vmovdqa	%xmm1, %xmm5
	movq	%r15, %rdx
	vmovdqa	%xmm6, %xmm2
	movq	%rsi, %r14
	cmpq	$15, %rbx
	ja	.LBB2_28
.LBB2_29:
	vmovdqa	96(%rsp), %xmm0
	vpblendd	$9, 528(%rsp), %xmm0, %xmm1
	vmovdqa	80(%rsp), %xmm0
	vpsllq	$3, %xmm0, %xmm2
	testq	%rbx, %rbx
	vmovdqa	%xmm1, 96(%rsp)
	je	.LBB2_30
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r14
	movq	%rbx, %rdx
	vmovdqa	%xmm7, 32(%rsp)
	vmovdqa	%xmm2, 80(%rsp)
	vmovdqa	%xmm6, 336(%rsp)
	callq	*%r14
	vmovdqa	336(%rsp), %xmm0
	vpxor	128(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	352(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenclast	48(%rsp), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	*%r14
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%r14
	vmovdqa	240(%rsp), %xmm7
	vmovdqa	112(%rsp), %xmm6
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	272(%rsp), %xmm4
	vmovdqa	144(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	176(%rsp), %xmm9
	vmovdqa	192(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm10
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	208(%rsp), %xmm8
	vpbroadcastq	.LCPI2_27(%rip), %xmm13
	vmovdqa	32(%rsp), %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	80(%rsp), %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	jmp	.LBB2_32
.LBB2_30:
	vmovdqa	%xmm11, %xmm9
	vmovdqa	272(%rsp), %xmm4
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm6
	vmovdqa	%xmm7, %xmm0
	vmovdqa	240(%rsp), %xmm7
	vmovdqa	64(%rsp), %xmm10
	vmovdqa	128(%rsp), %xmm12
.LBB2_32:
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	96(%rsp), %xmm0, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpand	.LCPI2_25(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	352(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenclast	48(%rsp), %xmm0, %xmm0
	vpxor	448(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_33:
	addq	$544, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_haswell_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_haswell_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_haswell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_haswell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_haswell_is_supported,@function
haberdashery_aes256gcmsiv_haswell_is_supported:
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
	.size	haberdashery_aes256gcmsiv_haswell_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_haswell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

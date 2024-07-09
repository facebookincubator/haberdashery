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
	.section	.text.haberdashery_aes256gcmsiv_broadwell_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_broadwell_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_broadwell_init,@function
haberdashery_aes256gcmsiv_broadwell_init:
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
	.size	haberdashery_aes256gcmsiv_broadwell_init, .Lfunc_end0-haberdashery_aes256gcmsiv_broadwell_init
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
	.section	.text.haberdashery_aes256gcmsiv_broadwell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_broadwell_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_broadwell_encrypt,@function
haberdashery_aes256gcmsiv_broadwell_encrypt:
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
	subq	$448, %rsp
	.cfi_def_cfa_offset 496
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	496(%rsp), %r12
	xorl	%ebp, %ebp
	cmpq	512(%rsp), %r12
	jne	.LBB1_50
	cmpq	$12, %rdx
	jne	.LBB1_50
	movq	%r8, %r14
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	jae	.LBB1_50
	cmpq	%rax, %r12
	jae	.LBB1_50
	cmpq	$16, 528(%rsp)
	jne	.LBB1_50
	movq	%r9, %rbx
	vmovq	4(%rsi), %xmm1
	vmovd	(%rsi), %xmm0
	vmovdqa	%xmm0, 432(%rsp)
	vpsllq	$32, %xmm0, %xmm0
	vmovdqa	%xmm1, 416(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm4
	vpxor	.LCPI1_0(%rip), %xmm4, %xmm5
	vpxor	.LCPI1_1(%rip), %xmm4, %xmm2
	vpxor	.LCPI1_2(%rip), %xmm4, %xmm0
	vpxor	.LCPI1_3(%rip), %xmm4, %xmm1
	vpxor	.LCPI1_4(%rip), %xmm4, %xmm3
	vmovaps	16(%rdi), %xmm6
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	vmovaps	64(%rdi), %xmm9
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm3, %xmm3
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm4
	vpbroadcastq	.LCPI1_19(%rip), %xmm11
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	%xmm5, %xmm4, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	%xmm5, %xmm4, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm4, 32(%rsp)
	vpclmulqdq	$0, %xmm10, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm12, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm12, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm12, %xmm7
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	%xmm5, %xmm4, %xmm15
	vpclmulqdq	$0, %xmm10, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm15, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm15, %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm13, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm13, %xmm5
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm13, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm4, 48(%rsp)
	vpunpcklqdq	%xmm0, %xmm2, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpunpcklqdq	%xmm2, %xmm6, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpslldq	$4, %xmm5, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpunpcklqdq	%xmm3, %xmm1, %xmm4
	vpbroadcastd	.LCPI1_20(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm3
	vaesenclast	.LCPI1_7(%rip), %xmm3, %xmm3
	vmovdqa	%xmm5, 352(%rsp)
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm3
	vpunpcklqdq	%xmm1, %xmm6, %xmm2
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$4, %xmm4, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vmovdqa	%xmm4, 336(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI1_8(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 256(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vmovdqa	%xmm4, 320(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI1_9(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 304(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vmovdqa	%xmm4, 240(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI1_10(%rip), %xmm2, %xmm2
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	%xmm5, 224(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vmovdqa	%xmm4, 208(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI1_11(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 192(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vmovdqa	%xmm4, 176(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI1_12(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 160(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm8
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa	32(%rsp), %xmm2
	vpshufd	$255, %xmm8, %xmm3
	cmpq	$128, %r14
	vmovdqa	%xmm8, 112(%rsp)
	vmovdqa	%xmm10, 64(%rsp)
	vmovdqa	%xmm12, 80(%rsp)
	vmovdqa	%xmm13, 144(%rsp)
	vmovdqa	%xmm14, 288(%rsp)
	vmovdqa	%xmm15, 368(%rsp)
	vmovdqa	%xmm9, 272(%rsp)
	vmovdqa	%xmm4, 128(%rsp)
	jb	.LBB1_10
	vmovdqa	%xmm3, 96(%rsp)
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm5
	vmovdqu	96(%rcx), %xmm4
	vmovdqu	112(%rcx), %xmm6
	vmovdqa	%xmm9, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm10, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpxor	%xmm6, %xmm4, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm9
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm4
	vpxor	%xmm4, %xmm9, %xmm9
	vmovdqu	(%rcx), %xmm4
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vmovdqu	32(%rcx), %xmm9
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vmovdqu	48(%rcx), %xmm6
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	48(%rsp), %xmm1
	vpclmulqdq	$0, %xmm6, %xmm1, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm6, %xmm1, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm1, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm15, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm15, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vmovdqu	16(%rcx), %xmm8
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm9, %xmm15, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm15, %xmm7
	vpxor	%xmm7, %xmm3, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm9
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm5
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	subq	$-128, %rcx
	leaq	-128(%r14), %rax
	cmpq	$128, %rax
	jb	.LBB1_9
	vmovdqa	80(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm13
	vmovdqa	288(%rsp), %xmm14
	vmovdqa	368(%rsp), %xmm15
	vmovdqa	272(%rsp), %xmm0
	vmovdqa	48(%rsp), %xmm1
	.p2align	4, 0x90
.LBB1_8:
	vmovdqu	64(%rcx), %xmm6
	vmovdqu	80(%rcx), %xmm7
	vmovdqu	96(%rcx), %xmm8
	vmovdqu	112(%rcx), %xmm9
	vpslldq	$8, %xmm5, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm10
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm10
	vpshufd	$78, %xmm3, %xmm3
	vpxor	(%rcx), %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm10, %xmm4
	vmovdqa	64(%rsp), %xmm11
	vpclmulqdq	$0, %xmm9, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm9, %xmm11, %xmm5
	vpclmulqdq	$16, %xmm9, %xmm11, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm11, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm12, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm12, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm12, %xmm8
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm14, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm14, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm14, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm6, %xmm13, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vmovdqu	32(%rcx), %xmm11
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm13, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vmovdqu	48(%rcx), %xmm10
	vpclmulqdq	$17, %xmm7, %xmm14, %xmm7
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm13, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm13, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm15, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm15, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vmovdqu	16(%rcx), %xmm9
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm10
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm15, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm15, %xmm10
	vpbroadcastq	.LCPI1_19(%rip), %xmm11
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm2, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm2, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm2, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	subq	$-128, %rcx
	addq	$-128, %rax
	cmpq	$127, %rax
	ja	.LBB1_8
.LBB1_9:
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm5, %xmm3, %xmm13
	vmovdqa	112(%rsp), %xmm8
	vmovdqa	128(%rsp), %xmm0
	vpxor	%xmm6, %xmm6, %xmm6
	vmovdqa	16(%rsp), %xmm1
	vmovdqa	96(%rsp), %xmm3
	jmp	.LBB1_11
.LBB1_10:
	vmovdqa	%xmm4, %xmm0
	vpxor	%xmm13, %xmm13, %xmm13
	movq	%r14, %rax
.LBB1_11:
	vaesenclast	%xmm6, %xmm3, %xmm10
	vpxor	%xmm0, %xmm1, %xmm2
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm3
	cmpq	$16, %rax
	jb	.LBB1_17
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_14
	vpxor	(%rcx), %xmm13, %xmm4
	addq	$16, %rcx
	vmovdqa	64(%rsp), %xmm9
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm13
	movq	%rdx, %rax
.LBB1_14:
	cmpq	$16, %rdx
	jb	.LBB1_18
	vmovdqa	64(%rsp), %xmm9
	.p2align	4, 0x90
.LBB1_16:
	vpxor	(%rcx), %xmm13, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	addq	$-32, %rax
	vpxor	16(%rcx), %xmm4, %xmm4
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm13
	cmpq	$15, %rax
	ja	.LBB1_16
.LBB1_17:
	movq	%rax, %rdx
.LBB1_18:
	vpxor	%xmm2, %xmm10, %xmm4
	vpxor	%xmm3, %xmm1, %xmm2
	vpslldq	$12, %xmm8, %xmm5
	testq	%rdx, %rdx
	vmovdqa	%xmm4, 16(%rsp)
	je	.LBB1_20
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	vmovdqa	%xmm13, 96(%rsp)
	vmovdqa	%xmm2, 400(%rsp)
	vmovdqa	%xmm5, 384(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	384(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm4
	vpbroadcastq	.LCPI1_19(%rip), %xmm11
	vmovdqa	96(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	64(%rsp), %xmm14
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm13
	vmovdqa	400(%rsp), %xmm2
	jmp	.LBB1_21
.LBB1_20:
	vmovdqa	64(%rsp), %xmm14
.LBB1_21:
	vmovdqa	80(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm0
	vmovdqa	288(%rsp), %xmm1
	vmovdqa	272(%rsp), %xmm3
	vmovdqa	48(%rsp), %xmm12
	vpxor	%xmm5, %xmm2, %xmm6
	vpshufb	.LCPI1_6(%rip), %xmm4, %xmm2
	vmovq	%r12, %xmm7
	vmovq	%r14, %xmm9
	cmpq	$128, %r12
	jb	.LBB1_26
	vmovdqa	%xmm9, 144(%rsp)
	vmovdqa	%xmm2, 80(%rsp)
	vmovdqa	%xmm7, 96(%rsp)
	vmovdqa	%xmm6, 48(%rsp)
	vmovdqu	64(%rbx), %xmm4
	vmovdqu	80(%rbx), %xmm5
	vmovdqu	96(%rbx), %xmm6
	vmovdqu	112(%rbx), %xmm7
	vpclmulqdq	$0, %xmm7, %xmm14, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm14, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm14, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm14, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm10
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vmovdqu	32(%rbx), %xmm11
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vmovdqu	48(%rbx), %xmm10
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm5
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm12, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm12, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm12, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vmovdqa	368(%rsp), %xmm2
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vmovdqu	16(%rbx), %xmm9
	vpclmulqdq	$17, %xmm10, %xmm12, %xmm10
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm10
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	(%rbx), %xmm13, %xmm8
	vpxor	%xmm7, %xmm4, %xmm7
	vmovdqa	32(%rsp), %xmm9
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm6
	vpxor	%xmm6, %xmm5, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	leaq	128(%rbx), %rsi
	leaq	-128(%r12), %rax
	cmpq	$128, %rax
	jb	.LBB1_25
	vmovdqa	%xmm12, %xmm13
	.p2align	4, 0x90
.LBB1_24:
	vmovdqu	64(%rsi), %xmm7
	vmovdqu	80(%rsi), %xmm8
	vmovdqu	96(%rsi), %xmm9
	vmovdqu	112(%rsi), %xmm10
	vpslldq	$8, %xmm6, %xmm11
	vpxor	%xmm4, %xmm11, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpbroadcastq	.LCPI1_19(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm11
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm11, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm11
	vpshufd	$78, %xmm4, %xmm4
	vpxor	(%rsi), %xmm5, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm11, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm14, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm14, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm15, %xmm11
	vpxor	%xmm4, %xmm11, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm15, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm15, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm15, %xmm9
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vmovdqu	32(%rsi), %xmm12
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vmovdqu	48(%rsi), %xmm11
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm8
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm8
	vpclmulqdq	$1, %xmm11, %xmm13, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm13, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vmovdqu	16(%rsi), %xmm10
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm11
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm11
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm8
	vmovdqa	32(%rsp), %xmm10
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm10, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm5, %xmm10, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm10, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm5, %xmm10, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	subq	$-128, %rsi
	addq	$-128, %rax
	cmpq	$127, %rax
	ja	.LBB1_24
.LBB1_25:
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpbroadcastq	.LCPI1_19(%rip), %xmm11
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm13
	vmovdqa	48(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	80(%rsp), %xmm2
	vmovdqa	144(%rsp), %xmm9
	jmp	.LBB1_27
.LBB1_26:
	movq	%r12, %rax
	movq	%rbx, %rsi
.LBB1_27:
	vaesenclast	.LCPI1_13(%rip), %xmm2, %xmm2
	vpshufd	$80, 416(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm8
	vpxor	%xmm6, %xmm8, %xmm4
	vpunpcklqdq	%xmm7, %xmm9, %xmm0
	cmpq	$16, %rax
	jb	.LBB1_33
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_30
	vpxor	(%rsi), %xmm13, %xmm1
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm13
	movq	%rdx, %rax
.LBB1_30:
	cmpq	$16, %rdx
	jb	.LBB1_34
	.p2align	4, 0x90
.LBB1_31:
	vpxor	(%rsi), %xmm13, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	addq	$-32, %rax
	vpxor	16(%rsi), %xmm1, %xmm1
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm13
	cmpq	$15, %rax
	ja	.LBB1_31
.LBB1_33:
	movq	%rax, %rdx
.LBB1_34:
	movq	520(%rsp), %r14
	vpblendd	$9, 432(%rsp), %xmm5, %xmm3
	vpxor	%xmm4, %xmm2, %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	vpsllq	$3, %xmm0, %xmm0
	testq	%rdx, %rdx
	je	.LBB1_36
	vmovdqa	%xmm0, 80(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	vmovdqa	%xmm13, 96(%rsp)
	vmovdqa	%xmm3, 48(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	64(%rsp), %xmm14
	vpbroadcastq	.LCPI1_19(%rip), %xmm11
	vmovdqa	112(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	48(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm13
	vmovdqa	80(%rsp), %xmm0
.LBB1_36:
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpand	.LCPI1_14(%rip), %xmm0, %xmm0
	vmovdqa	352(%rsp), %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	336(%rsp), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	256(%rsp), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	320(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	304(%rsp), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
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
	vmovdqa	160(%rsp), %xmm3
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	128(%rsp), %xmm14
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r14)
	movq	504(%rsp), %rax
	vpor	.LCPI1_15(%rip), %xmm0, %xmm8
	cmpq	$128, %r12
	jb	.LBB1_40
	vmovaps	112(%rsp), %xmm3
	vmovaps	16(%rsp), %xmm5
	.p2align	4, 0x90
.LBB1_38:
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm0
	vpaddd	.LCPI1_1(%rip), %xmm8, %xmm11
	vpaddd	.LCPI1_2(%rip), %xmm8, %xmm12
	vpaddd	.LCPI1_3(%rip), %xmm8, %xmm13
	vpaddd	.LCPI1_4(%rip), %xmm8, %xmm14
	vpaddd	.LCPI1_16(%rip), %xmm8, %xmm15
	vpaddd	.LCPI1_17(%rip), %xmm8, %xmm1
	vpxor	%xmm2, %xmm8, %xmm9
	vpxor	%xmm0, %xmm2, %xmm10
	vpxor	%xmm2, %xmm11, %xmm11
	vpxor	%xmm2, %xmm12, %xmm12
	vpxor	%xmm2, %xmm13, %xmm13
	vpxor	%xmm2, %xmm14, %xmm14
	vpxor	%xmm2, %xmm15, %xmm15
	vpxor	%xmm1, %xmm2, %xmm0
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
	vmovaps	256(%rsp), %xmm1
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
	vmovaps	240(%rsp), %xmm1
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
	vmovaps	224(%rsp), %xmm1
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
	vmovaps	208(%rsp), %xmm1
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
	vmovaps	192(%rsp), %xmm1
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
	vmovaps	176(%rsp), %xmm1
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
	vmovaps	160(%rsp), %xmm1
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
	vmovaps	128(%rsp), %xmm1
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
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
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
	vmovaps	32(%rsp), %xmm1
	#APP
	vaesenclast	%xmm1, %xmm9, %xmm9
	vaesenclast	%xmm1, %xmm10, %xmm10
	vaesenclast	%xmm1, %xmm11, %xmm11
	vaesenclast	%xmm1, %xmm12, %xmm12
	vaesenclast	%xmm1, %xmm13, %xmm13
	vaesenclast	%xmm1, %xmm14, %xmm14
	vaesenclast	%xmm1, %xmm15, %xmm15
	vaesenclast	%xmm1, %xmm0, %xmm0
	#NO_APP
	vpxor	(%rbx), %xmm9, %xmm1
	vpxor	16(%rbx), %xmm10, %xmm9
	vpxor	32(%rbx), %xmm11, %xmm10
	vpxor	48(%rbx), %xmm12, %xmm11
	vpxor	64(%rbx), %xmm13, %xmm12
	vpxor	80(%rbx), %xmm14, %xmm13
	vpxor	96(%rbx), %xmm15, %xmm14
	vpxor	112(%rbx), %xmm0, %xmm0
	vmovdqu	%xmm1, (%rax)
	vmovdqu	%xmm9, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu	%xmm13, 80(%rax)
	vmovdqu	%xmm14, 96(%rax)
	vmovdqu	%xmm0, 112(%rax)
	addq	$128, %rbx
	addq	$128, %rax
	addq	$-128, %r12
	vpaddd	.LCPI1_18(%rip), %xmm8, %xmm8
	cmpq	$127, %r12
	ja	.LBB1_38
	vmovdqa	256(%rsp), %xmm5
	vmovdqa	240(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm10
	vmovdqa	208(%rsp), %xmm11
	vmovdqa	192(%rsp), %xmm12
	vmovdqa	176(%rsp), %xmm13
	vmovdqa	160(%rsp), %xmm3
	vmovdqa	128(%rsp), %xmm14
	vmovdqa	32(%rsp), %xmm1
.LBB1_40:
	cmpq	$16, %r12
	jb	.LBB1_47
	leaq	-16(%r12), %r14
	testb	$16, %r14b
	jne	.LBB1_43
	leaq	16(%rbx), %rsi
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm15
	leaq	16(%rax), %r15
	vpxor	%xmm2, %xmm8, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpxor	(%rbx), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	%r15, %rax
	vmovdqa	%xmm15, %xmm8
	movq	%r14, %r12
	movq	%rsi, %rbx
	jmp	.LBB1_44
.LBB1_43:
.LBB1_44:
	cmpq	$16, %r14
	jb	.LBB1_48
	vmovdqa	352(%rsp), %xmm15
	vmovdqa	336(%rsp), %xmm4
	vmovdqa	256(%rsp), %xmm5
	vmovdqa	320(%rsp), %xmm6
	vmovdqa	304(%rsp), %xmm7
	vmovdqa	240(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm10
	vmovdqa	208(%rsp), %xmm11
	vmovdqa	192(%rsp), %xmm12
	vmovdqa	176(%rsp), %xmm13
	vmovdqa	160(%rsp), %xmm3
	vmovdqa	128(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm1
	vmovdqa	32(%rsp), %xmm0
	.p2align	4, 0x90
.LBB1_46:
	vpxor	%xmm15, %xmm8, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	16(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	(%rbx), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rax)
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	16(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	16(%rbx), %xmm2, %xmm2
	vmovdqu	%xmm2, 16(%rax)
	addq	$32, %rbx
	addq	$32, %rax
	addq	$-32, %r12
	vpaddd	.LCPI1_1(%rip), %xmm8, %xmm8
	cmpq	$15, %r12
	ja	.LBB1_46
.LBB1_47:
	movq	%rbx, %rsi
	movq	%rax, %r15
	movq	%r12, %r14
	vmovdqa	%xmm8, %xmm15
.LBB1_48:
	movl	$1, %ebp
	testq	%r14, %r14
	je	.LBB1_50
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %rbx
	movq	%r14, %rdx
	vmovdqa	%xmm15, 64(%rsp)
	callq	*%rbx
	vmovdqa	64(%rsp), %xmm0
	vpxor	352(%rsp), %xmm0, %xmm0
	vaesenc	336(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenclast	32(%rsp), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*%rbx
.LBB1_50:
	movl	%ebp, %eax
	addq	$448, %rsp
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
	.size	haberdashery_aes256gcmsiv_broadwell_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_broadwell_encrypt
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
	.quad	-1
	.quad	9223372036854775807
.LCPI2_22:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_23:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_24:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_broadwell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_broadwell_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_broadwell_decrypt,@function
haberdashery_aes256gcmsiv_broadwell_decrypt:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$480, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	512(%rsp), %rbx
	xorl	%eax, %eax
	cmpq	544(%rsp), %rbx
	jne	.LBB2_36
	cmpq	$12, %rdx
	jne	.LBB2_36
	movq	%r8, %r15
	movabsq	$68719476736, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_36
	cmpq	%rdx, %rbx
	ja	.LBB2_36
	cmpq	$16, 528(%rsp)
	jb	.LBB2_36
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm1
	vmovd	(%rsi), %xmm10
	vpsllq	$32, %xmm10, %xmm0
	vmovdqa	%xmm1, 448(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm4
	vpxor	.LCPI2_0(%rip), %xmm4, %xmm5
	vpxor	.LCPI2_1(%rip), %xmm4, %xmm0
	vpxor	.LCPI2_2(%rip), %xmm4, %xmm2
	vpxor	.LCPI2_3(%rip), %xmm4, %xmm1
	vpxor	.LCPI2_4(%rip), %xmm4, %xmm3
	vmovaps	16(%rdi), %xmm6
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	vmovaps	64(%rdi), %xmm9
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm3, %xmm3
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm3, %xmm3
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm4
	vpbroadcastq	.LCPI2_23(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	%xmm5, %xmm4, %xmm14
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm7
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm8
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm4, 32(%rsp)
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpxor	%xmm5, %xmm4, %xmm15
	vpclmulqdq	$0, %xmm13, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm13, %xmm15, %xmm7
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	%xmm4, 352(%rsp)
	vpunpcklqdq	%xmm2, %xmm0, %xmm11
	vpunpcklqdq	%xmm3, %xmm1, %xmm5
	vpxor	%xmm7, %xmm7, %xmm7
	vpunpcklqdq	%xmm0, %xmm7, %xmm2
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vpbroadcastd	.LCPI2_24(%rip), %xmm0
	vpshufb	%xmm0, %xmm5, %xmm3
	vaesenclast	.LCPI2_7(%rip), %xmm3, %xmm3
	vpslldq	$4, %xmm11, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm11, %xmm2
	vpxor	%xmm2, %xmm3, %xmm3
	vpunpcklqdq	%xmm1, %xmm7, %xmm2
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$4, %xmm5, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm5, 48(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_8(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 128(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm4, 80(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_9(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 64(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm9
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm9, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm4, 256(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm9, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vaesenclast	.LCPI2_10(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm3, 240(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm5, %xmm2
	vaesenclast	.LCPI2_11(%rip), %xmm2, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	%xmm4, 224(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm5, 208(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI2_12(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 304(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm2
	vaesenclast	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm4, 272(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm6, %xmm2
	cmpq	$96, %r15
	vmovdqa	%xmm11, 160(%rsp)
	vmovdqa	%xmm6, 192(%rsp)
	vmovdqa	%xmm3, 176(%rsp)
	vmovdqa	%xmm10, 464(%rsp)
	vmovdqa	%xmm9, 112(%rsp)
	vmovdqa	%xmm14, 320(%rsp)
	vmovdqa	%xmm8, 400(%rsp)
	vmovdqa	%xmm15, 384(%rsp)
	jb	.LBB2_9
	vmovdqa	%xmm2, 96(%rsp)
	vmovdqa	%xmm1, (%rsp)
	vmovdqu	(%rcx), %xmm4
	vmovdqu	16(%rcx), %xmm3
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqa	%xmm8, %xmm1
	vmovdqu	80(%rcx), %xmm8
	vpclmulqdq	$0, %xmm8, %xmm13, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm13, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm13, %xmm11
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm8, %xmm13, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm14, %xmm11
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm14, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm14, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm14, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm1, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm1, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm11
	vpclmulqdq	$17, %xmm6, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vmovdqa	32(%rsp), %xmm11
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vmovdqa	352(%rsp), %xmm2
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm3
	vpxor	%xmm3, %xmm5, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	addq	$96, %rcx
	leaq	-96(%r15), %rax
	cmpq	$96, %rax
	jb	.LBB2_10
	vmovdqa	%xmm1, %xmm6
	vmovdqa	%xmm15, %xmm1
	vpbroadcastq	.LCPI2_23(%rip), %xmm12
	vmovdqa	%xmm6, %xmm15
	vmovdqa	320(%rsp), %xmm14
	.p2align	4, 0x90
.LBB2_8:
	vmovdqu	32(%rcx), %xmm6
	vmovdqu	48(%rcx), %xmm7
	vmovdqu	64(%rcx), %xmm8
	vmovdqu	80(%rcx), %xmm9
	vpslldq	$8, %xmm5, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm10
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm10
	vpshufd	$78, %xmm3, %xmm3
	vpxor	(%rcx), %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm10, %xmm4
	vpclmulqdq	$0, %xmm9, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm9, %xmm13, %xmm5
	vpclmulqdq	$16, %xmm9, %xmm13, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm14, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm14, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm14, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm14, %xmm8
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm15, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm15, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm15, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm6, %xmm1, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vmovdqa	32(%rsp), %xmm11
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm1, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm15, %xmm7
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm6, %xmm1, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vmovdqu	16(%rcx), %xmm9
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm6
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm9, %xmm2, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm2, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB2_8
	jmp	.LBB2_11
.LBB2_9:
	movq	%r15, %rax
	vmovdqa	48(%rsp), %xmm8
	jmp	.LBB2_12
.LBB2_10:
	vpbroadcastq	.LCPI2_23(%rip), %xmm12
.LBB2_11:
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm5, %xmm3, %xmm7
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	192(%rsp), %xmm6
	vmovdqa	176(%rsp), %xmm3
	vmovdqa	112(%rsp), %xmm9
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm1
	vmovdqa	96(%rsp), %xmm2
.LBB2_12:
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm0
	movq	520(%rsp), %rsi
	cmpq	$16, %rax
	jb	.LBB2_18
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB2_15
	vpxor	(%rcx), %xmm7, %xmm2
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm7
	movq	%rdx, %rax
.LBB2_15:
	cmpq	$16, %rdx
	jb	.LBB2_19
	.p2align	4, 0x90
.LBB2_16:
	vpxor	(%rcx), %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	addq	$-32, %rax
	vpxor	16(%rcx), %xmm2, %xmm2
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm7
	cmpq	$15, %rax
	ja	.LBB2_16
.LBB2_18:
	movq	%rax, %rdx
.LBB2_19:
	vaesenclast	.LCPI2_13(%rip), %xmm0, %xmm3
	vpxor	%xmm6, %xmm1, %xmm4
	vmovdqu	(%rsi), %xmm0
	vmovdqa	%xmm0, 368(%rsp)
	testq	%rdx, %rdx
	vmovdqa	%xmm13, 144(%rsp)
	je	.LBB2_21
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	vmovdqa	%xmm7, (%rsp)
	vmovdqa	%xmm3, 96(%rsp)
	vmovdqa	%xmm4, 288(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	112(%rsp), %xmm9
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	144(%rsp), %xmm4
	vpbroadcastq	.LCPI2_23(%rip), %xmm12
	vmovdqa	(%rsp), %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vmovdqa	288(%rsp), %xmm4
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	96(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm7
.LBB2_21:
	vmovdqa	128(%rsp), %xmm6
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm15
	vmovq	%rbx, %xmm1
	vmovq	%r15, %xmm2
	movq	536(%rsp), %rdx
	vpxor	%xmm4, %xmm3, %xmm13
	vmovdqa	368(%rsp), %xmm0
	vpor	.LCPI2_14(%rip), %xmm0, %xmm3
	cmpq	$96, %rbx
	vmovdqa	%xmm13, 336(%rsp)
	jb	.LBB2_28
	vmovdqa	%xmm2, 416(%rsp)
	vmovdqa	%xmm1, 432(%rsp)
	vmovdqa	%xmm7, (%rsp)
	leaq	96(%r14), %rcx
	leaq	96(%rdx), %rax
	vpaddd	.LCPI2_0(%rip), %xmm3, %xmm1
	vpaddd	.LCPI2_1(%rip), %xmm3, %xmm2
	vpaddd	.LCPI2_2(%rip), %xmm3, %xmm4
	vpaddd	.LCPI2_3(%rip), %xmm3, %xmm5
	vmovdqa	%xmm8, %xmm10
	vpaddd	.LCPI2_4(%rip), %xmm3, %xmm8
	vpxor	%xmm3, %xmm11, %xmm0
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm2, %xmm11, %xmm2
	vmovdqa	%xmm6, %xmm14
	vpxor	%xmm4, %xmm11, %xmm6
	vpxor	%xmm5, %xmm11, %xmm7
	vpxor	%xmm8, %xmm11, %xmm8
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	#NO_APP
	vmovaps	256(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	240(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	224(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	304(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	272(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	176(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenclast	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm13, %xmm6, %xmm6
	vaesenclast	%xmm13, %xmm7, %xmm7
	vaesenclast	%xmm13, %xmm8, %xmm8
	#NO_APP
	vpxor	(%r14), %xmm0, %xmm9
	vpxor	16(%r14), %xmm1, %xmm4
	vpxor	32(%r14), %xmm2, %xmm5
	vpxor	48(%r14), %xmm6, %xmm13
	vpxor	64(%r14), %xmm7, %xmm14
	vpxor	80(%r14), %xmm8, %xmm8
	vmovdqu	%xmm9, (%rdx)
	vmovdqu	%xmm4, 16(%rdx)
	vmovdqu	%xmm5, 32(%rdx)
	vmovdqu	%xmm13, 48(%rdx)
	vmovdqu	%xmm14, 64(%rdx)
	vmovdqu	%xmm8, 80(%rdx)
	addq	$-96, %rbx
	vpaddd	.LCPI2_15(%rip), %xmm3, %xmm2
	cmpq	$96, %rbx
	jb	.LBB2_26
	vmovdqa	(%rsp), %xmm0
	.p2align	4, 0x90
.LBB2_24:
	vmovdqa	%xmm4, 288(%rsp)
	vmovdqa	%xmm2, (%rsp)
	vpxor	%xmm0, %xmm9, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	vpaddd	.LCPI2_16(%rip), %xmm3, %xmm0
	vpaddd	.LCPI2_17(%rip), %xmm3, %xmm1
	vpaddd	.LCPI2_18(%rip), %xmm3, %xmm6
	vpaddd	.LCPI2_19(%rip), %xmm3, %xmm7
	vpaddd	.LCPI2_20(%rip), %xmm3, %xmm10
	vpxor	%xmm2, %xmm11, %xmm3
	vpxor	%xmm0, %xmm11, %xmm15
	vpxor	%xmm1, %xmm11, %xmm0
	vpxor	%xmm6, %xmm11, %xmm1
	vpxor	%xmm7, %xmm11, %xmm6
	vpxor	%xmm10, %xmm11, %xmm7
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm11, %xmm11, %xmm11
	vmovaps	144(%rsp), %xmm4
	vmovaps	48(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm9
	vpxor	%xmm9, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm9
	vpxor	%xmm9, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	#NO_APP
	vmovaps	128(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	320(%rsp), %xmm9
	vmovaps	80(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm14, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm14, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm14, %xmm8
	vpxor	%xmm8, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm9, %xmm14, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	#NO_APP
	vmovaps	64(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	400(%rsp), %xmm2
	vmovaps	256(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm8
	vpxor	%xmm8, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	#NO_APP
	vmovaps	112(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vmovaps	240(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	224(%rsp), %xmm2
	vmovaps	384(%rsp), %xmm4
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm8
	vpxor	%xmm8, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	#NO_APP
	vmovaps	208(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovaps	304(%rsp), %xmm2
	vmovaps	352(%rsp), %xmm4
	vmovaps	288(%rsp), %xmm8
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm5
	vpxor	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm5
	vpxor	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm5
	vpxor	%xmm5, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm5
	vpxor	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	272(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	#NO_APP
	vmovdqa	32(%rsp), %xmm5
	vmovaps	192(%rsp), %xmm2
	vmovaps	96(%rsp), %xmm8
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm4
	vpxor	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm4
	vpxor	%xmm4, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpunpcklqdq	%xmm12, %xmm5, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpunpckhqdq	%xmm5, %xmm12, %xmm5
	vpbroadcastq	.LCPI2_23(%rip), %xmm12
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm8
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm10
	vpshufd	$78, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm11
	vmovdqa	(%rsp), %xmm2
	vmovaps	176(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovaps	336(%rsp), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm3, %xmm3
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm1, %xmm1
	vaesenclast	%xmm4, %xmm6, %xmm6
	vaesenclast	%xmm4, %xmm7, %xmm7
	#NO_APP
	vpxor	(%rcx), %xmm3, %xmm9
	vpxor	16(%rcx), %xmm15, %xmm4
	vpxor	32(%rcx), %xmm0, %xmm5
	vpxor	48(%rcx), %xmm1, %xmm13
	vpxor	64(%rcx), %xmm6, %xmm14
	vpxor	80(%rcx), %xmm7, %xmm8
	vmovdqu	%xmm9, (%rax)
	vmovdqu	%xmm4, 16(%rax)
	vmovdqu	%xmm5, 32(%rax)
	vmovdqu	%xmm13, 48(%rax)
	vmovdqu	%xmm14, 64(%rax)
	vmovdqu	%xmm8, 80(%rax)
	addq	$96, %rcx
	addq	$96, %rax
	addq	$-96, %rbx
	vpclmulqdq	$16, %xmm12, %xmm10, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	%xmm2, %xmm3
	vpaddd	.LCPI2_15(%rip), %xmm2, %xmm2
	cmpq	$95, %rbx
	ja	.LBB2_24
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	320(%rsp), %xmm10
	jmp	.LBB2_27
.LBB2_26:
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	320(%rsp), %xmm10
	vmovdqa	(%rsp), %xmm0
.LBB2_27:
	vpxor	%xmm0, %xmm9, %xmm0
	vmovdqa	144(%rsp), %xmm9
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$0, %xmm14, %xmm10, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm14, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm14, %xmm10, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqa	400(%rsp), %xmm9
	vpclmulqdq	$1, %xmm13, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm13, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm9, %xmm9
	vmovdqa	384(%rsp), %xmm13
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vmovdqa	352(%rsp), %xmm8
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufd	$78, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm7
	movq	%rcx, %r14
	movq	%rax, %rdx
	vmovdqa	%xmm2, %xmm3
	vmovdqa	128(%rsp), %xmm6
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	336(%rsp), %xmm13
	vmovdqa	432(%rsp), %xmm1
	vmovdqa	416(%rsp), %xmm2
.LBB2_28:
	vpshufd	$80, 448(%rsp), %xmm0
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	cmpq	$16, %rbx
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm1, (%rsp)
	jb	.LBB2_31
	vmovdqa	144(%rsp), %xmm8
	vmovdqa	272(%rsp), %xmm2
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm0
	vmovdqa	48(%rsp), %xmm14
	vmovdqa	64(%rsp), %xmm1
	.p2align	4, 0x90
.LBB2_30:
	vpxor	%xmm3, %xmm11, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	256(%rsp), %xmm4, %xmm4
	vaesenc	112(%rsp), %xmm4, %xmm4
	vaesenc	240(%rsp), %xmm4, %xmm4
	vaesenc	224(%rsp), %xmm4, %xmm4
	vaesenc	208(%rsp), %xmm4, %xmm4
	vaesenc	304(%rsp), %xmm4, %xmm4
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenclast	%xmm13, %xmm4, %xmm4
	vpxor	(%r14), %xmm4, %xmm4
	vmovdqa	%xmm5, %xmm10
	vpxor	%xmm7, %xmm4, %xmm5
	vmovdqa	%xmm6, %xmm15
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm7
	vmovdqu	%xmm4, (%rdx)
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovdqa	%xmm15, %xmm6
	leaq	16(%r14), %rsi
	leaq	16(%rdx), %r15
	addq	$-16, %rbx
	vpaddd	.LCPI2_0(%rip), %xmm3, %xmm15
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm3
	vpxor	%xmm5, %xmm3, %xmm7
	vmovdqa	%xmm10, %xmm5
	movq	%r15, %rdx
	vmovdqa	%xmm15, %xmm3
	movq	%rsi, %r14
	cmpq	$15, %rbx
	ja	.LBB2_30
	jmp	.LBB2_32
.LBB2_31:
	movq	%r14, %rsi
	movq	%rdx, %r15
	vmovdqa	%xmm3, %xmm15
	vmovdqa	144(%rsp), %xmm8
.LBB2_32:
	vmovdqa	32(%rsp), %xmm0
	vpblendd	$9, 464(%rsp), %xmm0, %xmm3
	vmovdqa	(%rsp), %xmm0
	vpsllq	$3, %xmm0, %xmm1
	testq	%rbx, %rbx
	je	.LBB2_34
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r14
	movq	%rbx, %rdx
	vmovdqa	%xmm7, (%rsp)
	vmovdqa	%xmm3, 32(%rsp)
	vmovdqa	%xmm1, 96(%rsp)
	vmovdqa	%xmm15, 288(%rsp)
	callq	*%r14
	vmovdqa	288(%rsp), %xmm0
	vpxor	160(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenclast	336(%rsp), %xmm0, %xmm0
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
	vmovdqa	208(%rsp), %xmm13
	vmovdqa	224(%rsp), %xmm7
	vmovdqa	240(%rsp), %xmm10
	vmovdqa	112(%rsp), %xmm14
	vmovdqa	256(%rsp), %xmm4
	vmovdqa	64(%rsp), %xmm11
	vmovdqa	80(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm6
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	144(%rsp), %xmm8
	vpbroadcastq	.LCPI2_23(%rip), %xmm12
	vmovdqa	(%rsp), %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	32(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	96(%rsp), %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB2_35
.LBB2_34:
	vmovdqa	256(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm14
	vmovdqa	240(%rsp), %xmm10
	vmovdqa	%xmm7, %xmm0
	vmovdqa	224(%rsp), %xmm7
	vmovdqa	208(%rsp), %xmm13
	vmovdqa	%xmm11, %xmm9
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	64(%rsp), %xmm11
.LBB2_35:
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpand	.LCPI2_21(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenclast	336(%rsp), %xmm0, %xmm0
	vpxor	368(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_36:
	addq	$480, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_broadwell_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_broadwell_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_broadwell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_broadwell_is_supported,@function
haberdashery_aes256gcmsiv_broadwell_is_supported:
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
	andl	$786729, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_broadwell_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

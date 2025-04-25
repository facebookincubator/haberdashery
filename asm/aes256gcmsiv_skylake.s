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
	.section	.text.haberdashery_aes256gcmsiv_skylake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylake_init,@function
haberdashery_aes256gcmsiv_skylake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpbroadcastd	.LCPI0_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm4
	vaesenclast	.LCPI0_1(%rip), %xmm4, %xmm4
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm2, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vaesenclast	%xmm6, %xmm5, %xmm5
	vpxor	%xmm1, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpslldq	$12, %xmm2, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpshufb	%xmm3, %xmm4, %xmm7
	vaesenclast	.LCPI0_2(%rip), %xmm7, %xmm7
	vpxor	%xmm2, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$12, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$255, %xmm5, %xmm8
	vaesenclast	%xmm6, %xmm8, %xmm8
	vpxor	%xmm4, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufb	%xmm3, %xmm7, %xmm9
	vaesenclast	.LCPI0_3(%rip), %xmm9, %xmm9
	vpxor	%xmm5, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpslldq	$12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpshufd	$255, %xmm8, %xmm10
	vaesenclast	%xmm6, %xmm10, %xmm10
	vpxor	%xmm7, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpslldq	$12, %xmm8, %xmm11
	vpshufb	%xmm3, %xmm9, %xmm12
	vaesenclast	.LCPI0_4(%rip), %xmm12, %xmm12
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm8, %xmm10, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpslldq	$12, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpshufd	$255, %xmm10, %xmm12
	vaesenclast	%xmm6, %xmm12, %xmm12
	vpxor	%xmm9, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpslldq	$12, %xmm10, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpshufb	%xmm3, %xmm11, %xmm13
	vaesenclast	.LCPI0_5(%rip), %xmm13, %xmm13
	vpxor	%xmm10, %xmm12, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpslldq	$12, %xmm11, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpshufd	$255, %xmm12, %xmm14
	vaesenclast	%xmm6, %xmm14, %xmm14
	vpxor	%xmm11, %xmm13, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpslldq	$12, %xmm12, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpshufb	%xmm3, %xmm13, %xmm15
	vaesenclast	.LCPI0_6(%rip), %xmm15, %xmm15
	vpxor	%xmm12, %xmm14, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpslldq	$4, %xmm13, %xmm15
	vpslldq	$8, %xmm13, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vpslldq	$12, %xmm13, %xmm15
	vpxor	%xmm3, %xmm15, %xmm3
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm6, %xmm15, %xmm6
	vpxor	%xmm3, %xmm13, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpslldq	$4, %xmm14, %xmm6
	vpslldq	$8, %xmm14, %xmm15
	vpxor	%xmm6, %xmm15, %xmm6
	vpslldq	$12, %xmm14, %xmm15
	vpxor	%xmm6, %xmm15, %xmm6
	vpshufb	.LCPI0_0(%rip), %xmm3, %xmm15
	vaesenclast	.LCPI0_7(%rip), %xmm15, %xmm15
	vpxor	%xmm6, %xmm14, %xmm6
	vpxor	%xmm6, %xmm15, %xmm6
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
	vmovdqa	%xmm3, 208(%rdi)
	vmovdqa	%xmm6, 224(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmsiv_skylake_init, .Lfunc_end0-haberdashery_aes256gcmsiv_skylake_init
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
.LCPI1_6:
	.quad	4294967297
	.quad	4294967297
.LCPI1_7:
	.quad	8589934594
	.quad	8589934594
.LCPI1_8:
	.quad	17179869188
	.quad	17179869188
.LCPI1_9:
	.quad	34359738376
	.quad	34359738376
.LCPI1_10:
	.quad	68719476752
	.quad	68719476752
.LCPI1_11:
	.quad	137438953504
	.quad	137438953504
.LCPI1_12:
	.quad	274877907008
	.quad	274877907008
.LCPI1_13:
	.zero	8
	.quad	-4467570830351532032
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_19:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_20:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmsiv_skylake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylake_encrypt,@function
haberdashery_aes256gcmsiv_skylake_encrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$456, %rsp
	.cfi_def_cfa_offset 496
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	496(%rsp), %r15
	xorl	%eax, %eax
	cmpq	512(%rsp), %r15
	jne	.LBB1_45
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r10b
	cmpq	%rax, %r15
	setb	%al
	andb	%r10b, %al
	cmpq	$16, 528(%rsp)
	sete	%r10b
	cmpq	$12, %rdx
	sete	%bpl
	andb	%r10b, %bpl
	andb	%al, %bpl
	cmpb	$1, %bpl
	jne	.LBB1_44
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm0
	vxorps	.LCPI1_0(%rip), %xmm0, %xmm3
	vxorps	.LCPI1_1(%rip), %xmm0, %xmm2
	vxorps	.LCPI1_2(%rip), %xmm0, %xmm4
	vxorps	.LCPI1_3(%rip), %xmm0, %xmm1
	vxorps	.LCPI1_4(%rip), %xmm0, %xmm5
	vmovaps	16(%rdi), %xmm6
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	vmovdqa	64(%rdi), %xmm9
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovlhps	%xmm3, %xmm0, %xmm7
	vpunpcklqdq	%xmm4, %xmm2, %xmm6
	vpunpcklqdq	%xmm5, %xmm1, %xmm5
	vpslldq	$4, %xmm6, %xmm3
	vpxor	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm2, %xmm9, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastd	.LCPI1_19(%rip), %xmm0
	vpshufb	%xmm0, %xmm5, %xmm3
	vaesenclast	.LCPI1_6(%rip), %xmm3, %xmm3
	vmovdqa	%xmm6, 336(%rsp)
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm12
	vpslldq	$4, %xmm5, %xmm2
	vpunpcklqdq	%xmm1, %xmm9, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$255, %xmm12, %xmm2
	vaesenclast	%xmm9, %xmm2, %xmm2
	vmovdqa	%xmm5, 240(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm12, %xmm1
	vpslldq	$8, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vaesenclast	.LCPI1_7(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm9, %xmm2, %xmm2
	vmovdqa	%xmm3, 304(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vaesenclast	.LCPI1_8(%rip), %xmm2, %xmm2
	vmovdqa	%xmm4, 288(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm9, %xmm2, %xmm2
	vmovdqa	%xmm3, 224(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vaesenclast	.LCPI1_9(%rip), %xmm2, %xmm2
	vmovdqa	%xmm4, 208(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm10
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm10, %xmm2
	vaesenclast	%xmm9, %xmm2, %xmm2
	vmovdqa	%xmm3, 192(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm10, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vaesenclast	.LCPI1_10(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm9, %xmm2, %xmm2
	vmovdqa	%xmm4, 160(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm6, %xmm2
	vaesenclast	.LCPI1_11(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 144(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm8
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm2
	vpbroadcastq	.LCPI1_20(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm2, 48(%rsp)
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vmovdqa	%xmm1, 80(%rsp)
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm13, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm7, %xmm13, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vmovaps	%xmm7, 112(%rsp)
	vmovdqa	%xmm5, 64(%rsp)
	vpclmulqdq	$17, %xmm7, %xmm5, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm15
	vpshufd	$255, %xmm8, %xmm0
	cmpq	$128, %r8
	vmovdqa	%xmm8, 96(%rsp)
	vmovdqa	%xmm12, 320(%rsp)
	vmovdqa	%xmm10, 176(%rsp)
	vmovdqa	%xmm6, 128(%rsp)
	jb	.LBB1_6
	vmovdqa	%xmm0, 16(%rsp)
	vpxor	%xmm5, %xmm5, %xmm5
	movq	%r8, %rax
	vmovdqa	112(%rsp), %xmm1
	vmovdqa	80(%rsp), %xmm2
	vmovdqa	%xmm11, %xmm12
	vmovdqa	64(%rsp), %xmm11
	.p2align	4, 0x90
.LBB1_4:
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	%xmm5, %xmm0
	vmovdqu	96(%rcx), %xmm5
	vmovdqu	112(%rcx), %xmm6
	vpclmulqdq	$0, %xmm6, %xmm1, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm1, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vmovdqu	32(%rcx), %xmm10
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vmovdqu	48(%rcx), %xmm9
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm15, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$16, %xmm9, %xmm15, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm13, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm13, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vmovdqu	16(%rcx), %xmm8
	vpclmulqdq	$17, %xmm9, %xmm15, %xmm9
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm13, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm14, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm13, %xmm9
	vmovdqa	48(%rsp), %xmm10
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm14, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm8, %xmm14, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm14, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	(%rcx), %xmm0, %xmm8
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm10, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_20(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm5
	addq	$128, %rcx
	addq	$-128, %rax
	cmpq	$127, %rax
	ja	.LBB1_4
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	%xmm12, %xmm11
	vmovdqa	128(%rsp), %xmm6
	vpxor	%xmm9, %xmm9, %xmm9
	vmovdqa	16(%rsp), %xmm0
	jmp	.LBB1_7
.LBB1_6:
	vpxor	%xmm5, %xmm5, %xmm5
	movq	%r8, %rax
.LBB1_7:
	vmovdqa	%xmm14, 368(%rsp)
	vmovdqa	%xmm13, 384(%rsp)
	vaesenclast	%xmm9, %xmm0, %xmm0
	vpxor	32(%rsp), %xmm6, %xmm2
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm3
	cmpq	$16, %rax
	vmovdqa	%xmm15, 352(%rsp)
	jb	.LBB1_13
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_10
	vpxor	(%rcx), %xmm5, %xmm4
	addq	$16, %rcx
	vmovdqa	112(%rsp), %xmm9
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpbroadcastq	.LCPI1_20(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm5
	movq	%rdx, %rax
.LBB1_10:
	cmpq	$16, %rdx
	jb	.LBB1_14
	vmovdqa	112(%rsp), %xmm9
	vpbroadcastq	.LCPI1_20(%rip), %xmm10
	.p2align	4, 0x90
.LBB1_12:
	vpxor	(%rcx), %xmm5, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm6
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
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm5
	cmpq	$15, %rax
	ja	.LBB1_12
.LBB1_13:
	movq	%rax, %rdx
.LBB1_14:
	vmovdqa	%xmm11, 400(%rsp)
	vpxor	%xmm2, %xmm0, %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vmovss	8(%rsi), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovq	(%rsi), %xmm0
	vmovdqa	%xmm0, 416(%rsp)
	testq	%rdx, %rdx
	vmovdqa	%xmm4, 16(%rsp)
	je	.LBB1_16
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	movq	%r9, %rbx
	movq	%r8, %r14
	vmovdqa	%xmm5, 32(%rsp)
	vmovdqa	%xmm1, 272(%rsp)
	vmovdqa	%xmm2, 256(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm4
	movq	%r14, %r8
	movq	%rbx, %r9
	vmovdqa	32(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	112(%rsp), %xmm12
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_20(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	272(%rsp), %xmm1
	vpxor	%xmm0, %xmm2, %xmm5
	vmovdqa	256(%rsp), %xmm2
	jmp	.LBB1_17
.LBB1_16:
	vmovdqa	112(%rsp), %xmm12
	vpbroadcastq	.LCPI1_20(%rip), %xmm7
.LBB1_17:
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	64(%rsp), %xmm15
	vpxor	%xmm2, %xmm1, %xmm0
	vpshufb	.LCPI1_5(%rip), %xmm4, %xmm2
	vmovq	%r15, %xmm1
	vmovq	%r8, %xmm3
	cmpq	$128, %r15
	jb	.LBB1_21
	vmovdqa	%xmm3, 256(%rsp)
	vmovdqa	%xmm2, 272(%rsp)
	vmovdqa	%xmm1, 64(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	movq	%r9, %rsi
	movq	%r15, %rax
	vmovdqa	48(%rsp), %xmm0
	vmovdqa	400(%rsp), %xmm1
	vmovdqa	384(%rsp), %xmm2
	vmovdqa	368(%rsp), %xmm3
	vmovdqa	352(%rsp), %xmm13
	.p2align	4, 0x90
.LBB1_19:
	vmovdqa	%xmm5, 32(%rsp)
	vmovdqu	64(%rsi), %xmm4
	vmovdqu	80(%rsi), %xmm5
	vmovdqu	96(%rsi), %xmm6
	vmovdqu	112(%rsi), %xmm7
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm14, %xmm10
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm14, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm14, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm14, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vmovdqu	32(%rsi), %xmm11
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vmovdqu	48(%rsi), %xmm10
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm5
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm13, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm13, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm13, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vmovdqu	16(%rsi), %xmm9
	vpclmulqdq	$17, %xmm10, %xmm13, %xmm10
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
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vmovdqa	32(%rsp), %xmm9
	vpxor	(%rsi), %xmm9, %xmm9
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpbroadcastq	.LCPI1_20(%rip), %xmm7
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm5
	addq	$128, %rsi
	addq	$-128, %rax
	cmpq	$127, %rax
	ja	.LBB1_19
	vmovdqa	80(%rsp), %xmm0
	vmovdqa	64(%rsp), %xmm1
	vmovdqa	272(%rsp), %xmm2
	vmovdqa	256(%rsp), %xmm3
	jmp	.LBB1_22
.LBB1_21:
	movq	%r15, %rax
	movq	%r9, %rsi
.LBB1_22:
	vaesenclast	.LCPI1_12(%rip), %xmm2, %xmm2
	vmovdqa	96(%rsp), %xmm8
	vpxor	%xmm0, %xmm8, %xmm4
	vpunpcklqdq	%xmm1, %xmm3, %xmm0
	cmpq	$16, %rax
	jb	.LBB1_28
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_25
	vpxor	(%rsi), %xmm5, %xmm1
	addq	$16, %rsi
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	movq	%rdx, %rax
.LBB1_25:
	cmpq	$16, %rdx
	jb	.LBB1_29
	.p2align	4, 0x90
.LBB1_26:
	vpxor	(%rsi), %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	addq	$-32, %rax
	vpxor	16(%rsi), %xmm1, %xmm1
	addq	$32, %rsi
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	cmpq	$15, %rax
	ja	.LBB1_26
.LBB1_28:
	movq	%rax, %rdx
.LBB1_29:
	movq	520(%rsp), %rbx
	vmovdqa	416(%rsp), %xmm1
	vpunpcklqdq	432(%rsp), %xmm1, %xmm3
	vpxor	%xmm4, %xmm2, %xmm1
	vmovdqa	%xmm1, 48(%rsp)
	vpsllq	$3, %xmm0, %xmm0
	testq	%rdx, %rdx
	je	.LBB1_31
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%r9, %r14
	vmovdqa	%xmm5, 32(%rsp)
	vmovdqa	%xmm3, 80(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vpbroadcastq	.LCPI1_20(%rip), %xmm7
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm8
	movq	%r14, %r9
	vmovdqa	32(%rsp), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	80(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	vmovdqa	64(%rsp), %xmm0
.LBB1_31:
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	movq	504(%rsp), %rcx
	vpand	.LCPI1_14(%rip), %xmm0, %xmm0
	vmovdqa	336(%rsp), %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	240(%rsp), %xmm3
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	320(%rsp), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	304(%rsp), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	288(%rsp), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	224(%rsp), %xmm9
	vaesenc	%xmm9, %xmm0, %xmm0
	vmovdqa	208(%rsp), %xmm10
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm11
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	176(%rsp), %xmm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	160(%rsp), %xmm13
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	144(%rsp), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	128(%rsp), %xmm14
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rbx)
	vpor	.LCPI1_15(%rip), %xmm0, %xmm8
	cmpq	$128, %r15
	jb	.LBB1_35
	vmovaps	96(%rsp), %xmm4
	vmovaps	16(%rsp), %xmm3
	.p2align	4, 0x90
.LBB1_33:
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
	vmovaps	144(%rsp), %xmm1
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
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovaps	48(%rsp), %xmm1
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
	vpxor	(%r9), %xmm9, %xmm1
	vpxor	16(%r9), %xmm10, %xmm9
	vpxor	32(%r9), %xmm11, %xmm10
	vpxor	48(%r9), %xmm12, %xmm11
	vpxor	64(%r9), %xmm13, %xmm12
	vpxor	80(%r9), %xmm14, %xmm13
	vpxor	96(%r9), %xmm15, %xmm14
	vpxor	112(%r9), %xmm0, %xmm0
	vmovdqu	%xmm1, (%rcx)
	vmovdqu	%xmm9, 16(%rcx)
	vmovdqu	%xmm10, 32(%rcx)
	vmovdqu	%xmm11, 48(%rcx)
	vmovdqu	%xmm12, 64(%rcx)
	vmovdqu	%xmm13, 80(%rcx)
	vmovdqu	%xmm14, 96(%rcx)
	vmovdqu	%xmm0, 112(%rcx)
	addq	$128, %r9
	addq	$128, %rcx
	addq	$-128, %r15
	vpaddd	.LCPI1_18(%rip), %xmm8, %xmm8
	cmpq	$127, %r15
	ja	.LBB1_33
	vmovdqa	240(%rsp), %xmm3
	vmovdqa	224(%rsp), %xmm9
	vmovdqa	208(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm12
	vmovdqa	160(%rsp), %xmm13
	vmovdqa	144(%rsp), %xmm4
	vmovdqa	128(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm1
.LBB1_35:
	cmpq	$16, %r15
	jb	.LBB1_41
	leaq	-16(%r15), %rbx
	testb	$16, %bl
	jne	.LBB1_38
	leaq	16(%r9), %rsi
	leaq	16(%rcx), %r14
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm15
	vpxor	%xmm2, %xmm8, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpxor	(%r9), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movq	%r14, %rcx
	vmovdqa	%xmm15, %xmm8
	movq	%rbx, %r15
	movq	%rsi, %r9
	cmpq	$16, %rbx
	jae	.LBB1_39
	jmp	.LBB1_42
.LBB1_38:
	cmpq	$16, %rbx
	jb	.LBB1_42
.LBB1_39:
	vmovdqa	336(%rsp), %xmm3
	vmovdqa	240(%rsp), %xmm4
	vmovdqa	320(%rsp), %xmm5
	vmovdqa	304(%rsp), %xmm6
	vmovdqa	288(%rsp), %xmm7
	vmovdqa	224(%rsp), %xmm9
	vmovdqa	208(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm12
	vmovdqa	160(%rsp), %xmm13
	vmovdqa	144(%rsp), %xmm15
	vmovdqa	128(%rsp), %xmm14
	vmovdqa	96(%rsp), %xmm1
	vmovdqa	48(%rsp), %xmm0
	.p2align	4, 0x90
.LBB1_40:
	vpxor	%xmm3, %xmm8, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	16(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rcx)
	vpaddd	.LCPI1_0(%rip), %xmm8, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	16(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	16(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, 16(%rcx)
	addq	$32, %r9
	addq	$32, %rcx
	addq	$-32, %r15
	vpaddd	.LCPI1_1(%rip), %xmm8, %xmm8
	cmpq	$15, %r15
	ja	.LBB1_40
.LBB1_41:
	movq	%r9, %rsi
	movq	%rcx, %r14
	movq	%r15, %rbx
	vmovdqa	%xmm8, %xmm15
.LBB1_42:
	testq	%rbx, %rbx
	je	.LBB1_44
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%rbx, %rdx
	vmovdqa	%xmm15, 32(%rsp)
	callq	*%r15
	vmovdqa	32(%rsp), %xmm0
	vpxor	336(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenclast	48(%rsp), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r15
.LBB1_44:
	movzbl	%bpl, %eax
.LBB1_45:
	addq	$456, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_skylake_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_skylake_encrypt
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
.LCPI2_6:
	.quad	4294967297
	.quad	4294967297
.LCPI2_7:
	.quad	8589934594
	.quad	8589934594
.LCPI2_8:
	.quad	17179869188
	.quad	17179869188
.LCPI2_9:
	.quad	34359738376
	.quad	34359738376
.LCPI2_10:
	.quad	68719476752
	.quad	68719476752
.LCPI2_11:
	.quad	137438953504
	.quad	137438953504
.LCPI2_12:
	.quad	274877907008
	.quad	274877907008
.LCPI2_13:
	.zero	8
	.quad	-4467570830351532032
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_23:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_24:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmsiv_skylake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylake_decrypt,@function
haberdashery_aes256gcmsiv_skylake_decrypt:
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
	jne	.LBB2_34
	cmpq	$12, %rdx
	jne	.LBB2_34
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB2_34
	cmpq	%rdx, %rbx
	jae	.LBB2_34
	cmpq	$16, 528(%rsp)
	jb	.LBB2_34
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI2_0(%rip), %xmm2, %xmm3
	vxorps	.LCPI2_1(%rip), %xmm2, %xmm0
	vxorps	.LCPI2_2(%rip), %xmm2, %xmm4
	vxorps	.LCPI2_3(%rip), %xmm2, %xmm1
	vxorps	.LCPI2_4(%rip), %xmm2, %xmm5
	vmovaps	16(%rdi), %xmm6
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	vmovaps	64(%rdi), %xmm9
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovdqa	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm2, %xmm13
	vpunpcklqdq	%xmm4, %xmm0, %xmm4
	vpunpcklqdq	%xmm5, %xmm1, %xmm10
	vpslldq	$4, %xmm4, %xmm2
	vpxor	%xmm6, %xmm6, %xmm6
	vpunpcklqdq	%xmm0, %xmm6, %xmm3
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vpbroadcastd	.LCPI2_23(%rip), %xmm7
	vpshufb	%xmm7, %xmm10, %xmm3
	vaesenclast	.LCPI2_6(%rip), %xmm3, %xmm3
	vmovdqa	%xmm4, 304(%rsp)
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm9
	vpslldq	$4, %xmm10, %xmm2
	vpunpcklqdq	%xmm1, %xmm6, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$255, %xmm9, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm2, %xmm11
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm9, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm7, %xmm11, %xmm2
	vaesenclast	.LCPI2_7(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm11, %xmm1
	vpslldq	$8, %xmm11, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm7, %xmm4, %xmm2
	vaesenclast	.LCPI2_8(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 144(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vmovdqa	%xmm4, 128(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vmovdqa	%xmm4, 96(%rsp)
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm7, %xmm4, %xmm2
	vaesenclast	.LCPI2_9(%rip), %xmm2, %xmm2
	vmovdqa	%xmm3, 112(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vmovdqa	%xmm5, 208(%rsp)
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vmovdqa	%xmm4, 192(%rsp)
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpshufb	%xmm7, %xmm4, %xmm3
	vaesenclast	.LCPI2_10(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm1, %xmm3, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm0, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm0, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm7, %xmm3, %xmm2
	vaesenclast	.LCPI2_11(%rip), %xmm2, %xmm2
	vmovdqa	%xmm0, 240(%rsp)
	vpxor	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm0
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm0, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm2
	vmovdqa	%xmm3, 288(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm14
	vpslldq	$4, %xmm0, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm2
	vpbroadcastq	.LCPI2_24(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm13, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm7, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm7, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm8
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm2, 256(%rsp)
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm13, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm15, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm15, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm12
	vmovdqa	%xmm0, 80(%rsp)
	vpslldq	$12, %xmm0, %xmm0
	cmpq	$96, %r8
	vmovdqa	%xmm10, 64(%rsp)
	vmovdqa	%xmm9, 48(%rsp)
	vmovdqa	%xmm14, 224(%rsp)
	jb	.LBB2_9
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm1, (%rsp)
	movq	%r8, %rax
	vmovdqa	%xmm15, %xmm2
	vmovdqa	256(%rsp), %xmm15
	vmovdqa	%xmm7, %xmm1
	vmovdqa	%xmm8, %xmm0
	.p2align	4, 0x90
.LBB2_7:
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqa	%xmm5, %xmm14
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	vpclmulqdq	$0, %xmm6, %xmm13, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm13, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm13, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm13, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm9
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vmovdqu	16(%rcx), %xmm9
	vpxor	(%rcx), %xmm14, %xmm10
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm12, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm12, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$16, %xmm9, %xmm12, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm15, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm15, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm15, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm15, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpbroadcastq	.LCPI2_24(%rip), %xmm6
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm5
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB2_7
	vmovdqa	64(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm9
	vmovdqa	%xmm1, %xmm7
	vmovdqa	%xmm0, %xmm8
	vmovdqa	%xmm2, %xmm15
	vmovdqa	224(%rsp), %xmm14
	vmovdqa	(%rsp), %xmm1
	vmovdqa	32(%rsp), %xmm0
	jmp	.LBB2_10
.LBB2_9:
	movq	%r8, %rax
.LBB2_10:
	vmovdqa	%xmm12, 368(%rsp)
	vpxor	%xmm0, %xmm1, %xmm1
	vpshufb	.LCPI2_5(%rip), %xmm14, %xmm0
	movq	520(%rsp), %rdi
	cmpq	$16, %rax
	jb	.LBB2_16
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB2_13
	vpxor	(%rcx), %xmm5, %xmm2
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
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm5
	movq	%rdx, %rax
.LBB2_13:
	cmpq	$16, %rdx
	jb	.LBB2_17
	.p2align	4, 0x90
.LBB2_14:
	vpxor	(%rcx), %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
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
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm5
	cmpq	$15, %rax
	ja	.LBB2_14
.LBB2_16:
	movq	%rax, %rdx
.LBB2_17:
	vmovdqa	%xmm15, 336(%rsp)
	vmovdqa	%xmm8, 384(%rsp)
	vmovdqa	%xmm7, 400(%rsp)
	vmovss	8(%rsi), %xmm2
	vmovaps	%xmm2, 464(%rsp)
	vmovq	(%rsi), %xmm2
	vmovdqa	%xmm2, 448(%rsp)
	vaesenclast	.LCPI2_12(%rip), %xmm0, %xmm3
	vmovdqa	80(%rsp), %xmm7
	vpxor	%xmm7, %xmm1, %xmm4
	vmovdqu	(%rdi), %xmm0
	vmovdqa	%xmm0, 352(%rsp)
	testq	%rdx, %rdx
	vmovdqa	%xmm13, 176(%rsp)
	vmovdqa	%xmm11, 160(%rsp)
	vmovdqa	240(%rsp), %xmm15
	je	.LBB2_19
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r9, %r14
	movq	%r8, %r15
	vmovdqa	%xmm5, (%rsp)
	vmovdqa	%xmm3, 32(%rsp)
	vmovdqa	%xmm4, 272(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vpbroadcastq	.LCPI2_24(%rip), %xmm6
	vmovdqa	224(%rsp), %xmm14
	vmovdqa	240(%rsp), %xmm15
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm4
	vmovdqa	48(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm10
	movq	%r15, %r8
	movq	%r14, %r9
	vmovdqa	(%rsp), %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vmovdqa	272(%rsp), %xmm4
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	32(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
.LBB2_19:
	vmovq	%rbx, %xmm1
	vmovq	%r8, %xmm2
	movq	536(%rsp), %rdx
	vpxor	%xmm4, %xmm3, %xmm12
	vmovdqa	352(%rsp), %xmm0
	vpor	.LCPI2_14(%rip), %xmm0, %xmm3
	cmpq	$96, %rbx
	vmovdqa	%xmm12, 320(%rsp)
	jb	.LBB2_26
	vmovdqa	%xmm2, 416(%rsp)
	vmovdqa	%xmm1, 432(%rsp)
	vmovdqa	%xmm5, (%rsp)
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vpaddd	.LCPI2_0(%rip), %xmm3, %xmm1
	vpaddd	.LCPI2_1(%rip), %xmm3, %xmm4
	vpaddd	.LCPI2_2(%rip), %xmm3, %xmm6
	vpaddd	.LCPI2_3(%rip), %xmm3, %xmm7
	vpaddd	.LCPI2_4(%rip), %xmm3, %xmm8
	vmovdqa	%xmm11, %xmm13
	vmovdqa	304(%rsp), %xmm11
	vpxor	%xmm3, %xmm11, %xmm0
	vpxor	%xmm1, %xmm11, %xmm2
	vpxor	%xmm4, %xmm11, %xmm5
	vpxor	%xmm6, %xmm11, %xmm6
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm8, %xmm11, %xmm8
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	#NO_APP
	vmovaps	144(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	112(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	#NO_APP
	vmovaps	288(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenclast	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm2, %xmm2
	vaesenclast	%xmm12, %xmm5, %xmm5
	vaesenclast	%xmm12, %xmm6, %xmm6
	vaesenclast	%xmm12, %xmm7, %xmm7
	vaesenclast	%xmm12, %xmm8, %xmm8
	#NO_APP
	vpxor	(%r9), %xmm0, %xmm1
	vpxor	16(%r9), %xmm2, %xmm4
	vpxor	32(%r9), %xmm5, %xmm5
	vpxor	48(%r9), %xmm6, %xmm13
	vpxor	64(%r9), %xmm7, %xmm14
	vpxor	80(%r9), %xmm8, %xmm0
	vmovdqu	%xmm1, (%rdx)
	vmovdqu	%xmm4, 16(%rdx)
	vmovdqu	%xmm5, 32(%rdx)
	vmovdqu	%xmm13, 48(%rdx)
	vmovdqu	%xmm14, 64(%rdx)
	addq	$-96, %rbx
	vmovdqu	%xmm0, 80(%rdx)
	vpaddd	.LCPI2_15(%rip), %xmm3, %xmm2
	cmpq	$96, %rbx
	jb	.LBB2_24
	vmovdqa	(%rsp), %xmm6
	.p2align	4, 0x90
.LBB2_22:
	vmovdqa	%xmm4, 272(%rsp)
	vmovdqa	%xmm2, (%rsp)
	vpxor	%xmm6, %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	vpaddd	.LCPI2_16(%rip), %xmm3, %xmm6
	vpaddd	.LCPI2_17(%rip), %xmm3, %xmm7
	vpaddd	.LCPI2_18(%rip), %xmm3, %xmm8
	vpaddd	.LCPI2_19(%rip), %xmm3, %xmm9
	vpaddd	.LCPI2_20(%rip), %xmm3, %xmm10
	vmovdqa	304(%rsp), %xmm11
	vpxor	%xmm2, %xmm11, %xmm1
	vpxor	%xmm6, %xmm11, %xmm6
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm8, %xmm11, %xmm8
	vpxor	%xmm9, %xmm11, %xmm3
	vpxor	%xmm10, %xmm11, %xmm15
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm11, %xmm11, %xmm11
	vmovaps	64(%rsp), %xmm4
	vmovaps	176(%rsp), %xmm2
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	#NO_APP
	vmovdqa	256(%rsp), %xmm12
	vmovaps	48(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	#NO_APP
	vmovaps	160(%rsp), %xmm2
	vmovaps	400(%rsp), %xmm4
	#APP
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm4, %xmm14, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm14, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm14, %xmm0
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm4, %xmm14, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vmovaps	144(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	#NO_APP
	vmovaps	128(%rsp), %xmm2
	vmovaps	384(%rsp), %xmm4
	#APP
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm4, %xmm13, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm13, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm13, %xmm0
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm4, %xmm13, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	#NO_APP
	vmovaps	96(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	#NO_APP
	vmovaps	336(%rsp), %xmm4
	vmovaps	208(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm0
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vmovaps	192(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	#NO_APP
	vmovaps	240(%rsp), %xmm5
	vmovaps	368(%rsp), %xmm2
	vmovaps	272(%rsp), %xmm4
	#APP
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm2, %xmm4, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm2, %xmm4, %xmm0
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm4, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vmovaps	288(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	#NO_APP
	vmovaps	80(%rsp), %xmm2
	vmovdqa	32(%rsp), %xmm4
	#APP
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm0
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpunpcklqdq	%xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vmovaps	224(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm15, %xmm15
	#NO_APP
	vmovaps	320(%rsp), %xmm2
	#APP
	vaesenclast	%xmm2, %xmm1, %xmm1
	vaesenclast	%xmm2, %xmm6, %xmm6
	vaesenclast	%xmm2, %xmm7, %xmm7
	vaesenclast	%xmm2, %xmm8, %xmm8
	vaesenclast	%xmm2, %xmm3, %xmm3
	vaesenclast	%xmm2, %xmm15, %xmm15
	#NO_APP
	vpunpckhqdq	%xmm4, %xmm9, %xmm4
	vpxor	%xmm4, %xmm10, %xmm9
	vpbroadcastq	.LCPI2_24(%rip), %xmm11
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm10
	vpshufd	$78, %xmm10, %xmm0
	vpxor	(%rcx), %xmm1, %xmm1
	vpxor	16(%rcx), %xmm6, %xmm4
	vpxor	32(%rcx), %xmm7, %xmm5
	vpxor	48(%rcx), %xmm8, %xmm13
	vpxor	%xmm0, %xmm9, %xmm6
	vmovdqa	(%rsp), %xmm2
	vpxor	64(%rcx), %xmm3, %xmm14
	vpxor	80(%rcx), %xmm15, %xmm0
	addq	$96, %rcx
	vmovdqu	%xmm1, (%rax)
	vmovdqu	%xmm4, 16(%rax)
	vmovdqu	%xmm5, 32(%rax)
	vmovdqu	%xmm13, 48(%rax)
	vmovdqu	%xmm14, 64(%rax)
	vmovdqu	%xmm0, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpclmulqdq	$16, %xmm11, %xmm10, %xmm3
	vpxor	%xmm3, %xmm6, %xmm6
	vmovdqa	%xmm2, %xmm3
	vpaddd	.LCPI2_15(%rip), %xmm2, %xmm2
	cmpq	$95, %rbx
	ja	.LBB2_22
	vmovdqa	%xmm6, (%rsp)
	jmp	.LBB2_25
.LBB2_24:
	vmovdqa	256(%rsp), %xmm12
.LBB2_25:
	vmovdqa	336(%rsp), %xmm15
	vpxor	(%rsp), %xmm1, %xmm1
	vmovdqa	176(%rsp), %xmm9
	vpclmulqdq	$0, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqa	400(%rsp), %xmm10
	vpclmulqdq	$0, %xmm14, %xmm10, %xmm7
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$1, %xmm14, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm10, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm10, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vmovdqa	384(%rsp), %xmm9
	vpclmulqdq	$1, %xmm13, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm13, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vmovdqa	368(%rsp), %xmm8
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_24(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufd	$78, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm5
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa	%xmm2, %xmm3
	vmovdqa	432(%rsp), %xmm1
	vmovdqa	416(%rsp), %xmm2
.LBB2_26:
	vpunpcklqdq	%xmm1, %xmm2, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	cmpq	$16, %rbx
	jb	.LBB2_29
	vmovdqa	176(%rsp), %xmm7
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	320(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm0
	vmovdqa	128(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm15
	.p2align	4, 0x90
.LBB2_28:
	vpxor	304(%rsp), %xmm3, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	208(%rsp), %xmm2, %xmm2
	vaesenc	192(%rsp), %xmm2, %xmm2
	vaesenc	240(%rsp), %xmm2, %xmm2
	vaesenc	288(%rsp), %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	224(%rsp), %xmm2, %xmm2
	vaesenclast	%xmm11, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rdx)
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpbroadcastq	.LCPI2_24(%rip), %xmm6
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm2
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI2_0(%rip), %xmm3, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm5
	movq	%r14, %rdx
	vmovdqa	%xmm10, %xmm3
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB2_28
	jmp	.LBB2_30
.LBB2_29:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	%xmm3, %xmm10
	vmovdqa	176(%rsp), %xmm7
.LBB2_30:
	vmovdqa	%xmm5, (%rsp)
	vmovdqa	448(%rsp), %xmm0
	vpunpcklqdq	464(%rsp), %xmm0, %xmm3
	vmovdqa	32(%rsp), %xmm0
	vpsllq	$3, %xmm0, %xmm1
	testq	%rbx, %rbx
	je	.LBB2_32
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%rbx, %rdx
	vmovdqa	%xmm3, 32(%rsp)
	vmovdqa	%xmm1, 272(%rsp)
	vmovdqa	%xmm10, 256(%rsp)
	callq	*%r15
	vmovdqa	256(%rsp), %xmm0
	vpxor	304(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenclast	320(%rsp), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r15
	vmovdqa	80(%rsp), %xmm15
	vmovdqa	192(%rsp), %xmm14
	vmovdqa	208(%rsp), %xmm13
	vpbroadcastq	.LCPI2_24(%rip), %xmm6
	vmovdqa	96(%rsp), %xmm12
	vmovdqa	112(%rsp), %xmm9
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	144(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	176(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	32(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	272(%rsp), %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB2_33
.LBB2_32:
	vmovdqa	208(%rsp), %xmm13
	vmovdqa	192(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm15
	vmovdqa	64(%rsp), %xmm4
	vmovdqa	48(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm0
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm9
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	144(%rsp), %xmm11
	vmovdqa	96(%rsp), %xmm12
.LBB2_33:
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpand	.LCPI2_21(%rip), %xmm0, %xmm0
	vpxor	304(%rsp), %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenclast	320(%rsp), %xmm0, %xmm0
	vpxor	352(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_34:
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
	.size	haberdashery_aes256gcmsiv_skylake_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_skylake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylake_is_supported,@function
haberdashery_aes256gcmsiv_skylake_is_supported:
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
	andl	$9175337, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_skylake_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_skylake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

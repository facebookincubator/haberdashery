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
.LCPI0_7:
	.quad	4294967297
	.quad	4294967297
.LCPI0_14:
	.quad	274877907008
	.quad	274877907008
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
.LCPI0_16:
	.zero	8
	.quad	-4467570830351532032
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
.LCPI0_25:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_26:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndkv2kc_broadwell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_broadwell_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_broadwell_decrypt,@function
haberdashery_aes256gcmdndkv2kc_broadwell_decrypt:
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
	movq	560(%rsp), %r12
	xorl	%eax, %eax
	cmpq	592(%rsp), %r12
	jne	.LBB0_37
	movq	%r12, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB0_37
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB0_37
	cmpq	$24, %rdx
	jne	.LBB0_37
	cmpq	$48, 576(%rsp)
	jne	.LBB0_37
	movq	568(%rsp), %r15
	vmovdqu	(%rsi), %xmm0
	vmovdqa	%xmm0, 240(%rsp)
	vpand	.LCPI0_0(%rip), %xmm0, %xmm1
	vpxor	(%rdi), %xmm1, %xmm10
	vpxor	.LCPI0_1(%rip), %xmm10, %xmm1
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm9
	vmovdqa	48(%rdi), %xmm8
	vmovdqa	64(%rdi), %xmm7
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm2
	vmovdqa	80(%rdi), %xmm1
	vaesenc	%xmm1, %xmm2, %xmm3
	vmovdqa	96(%rdi), %xmm2
	vaesenc	%xmm2, %xmm3, %xmm4
	vmovdqa	112(%rdi), %xmm3
	vaesenc	%xmm3, %xmm4, %xmm5
	vmovdqa	128(%rdi), %xmm4
	vaesenc	%xmm4, %xmm5, %xmm6
	vmovdqa	144(%rdi), %xmm5
	vaesenc	%xmm5, %xmm6, %xmm12
	vmovdqa	160(%rdi), %xmm6
	vaesenc	%xmm6, %xmm12, %xmm12
	vpxor	.LCPI0_2(%rip), %xmm10, %xmm13
	vpxor	.LCPI0_3(%rip), %xmm10, %xmm14
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm14, %xmm14
	vpxor	.LCPI0_4(%rip), %xmm10, %xmm15
	vaesenc	%xmm11, %xmm15, %xmm15
	vpxor	.LCPI0_5(%rip), %xmm10, %xmm10
	vaesenc	%xmm11, %xmm10, %xmm11
	vmovdqa	176(%rdi), %xmm10
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm11, %xmm11
	vmovdqa	192(%rdi), %xmm9
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm11, %xmm8
	vmovdqa	208(%rdi), %xmm11
	vaesenc	%xmm11, %xmm12, %xmm0
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm8, %xmm8
	vmovdqa	224(%rdi), %xmm12
	vaesenclast	%xmm12, %xmm0, %xmm7
	vaesenc	%xmm1, %xmm13, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm8, %xmm1
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vmovdqa	%xmm1, (%rsp)
	vmovdqa	%xmm7, 192(%rsp)
	vpxor	%xmm7, %xmm13, %xmm5
	vpxor	%xmm7, %xmm14, %xmm10
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI0_6(%rip), %xmm10, %xmm3
	vaesenclast	.LCPI0_7(%rip), %xmm3, %xmm3
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm2
	vmovdqa	%xmm5, 304(%rsp)
	vaesenc	%xmm10, %xmm5, %xmm3
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpshufd	$255, %xmm2, %xmm6
	vpxor	%xmm4, %xmm4, %xmm4
	vaesenclast	%xmm4, %xmm6, %xmm6
	vpxor	%xmm5, %xmm10, %xmm5
	vpxor	%xmm5, %xmm6, %xmm11
	vbroadcastss	.LCPI0_8(%rip), %xmm6
	vbroadcastss	.LCPI0_9(%rip), %xmm5
	vmovdqa	%xmm2, 32(%rsp)
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vpslldq	$4, %xmm2, %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm2, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm2, %xmm8, %xmm8
	vpshufb	%xmm5, %xmm11, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vmovdqa	%xmm11, 80(%rsp)
	#APP
	vaesenc	%xmm11, %xmm3, %xmm3
	vpslldq	$4, %xmm11, %xmm6
	vpslldq	$8, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpslldq	$12, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm11, %xmm6
	vpshufd	$255, %xmm7, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	#NO_APP
	vbroadcastss	.LCPI0_10(%rip), %xmm6
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vpslldq	$4, %xmm7, %xmm8
	vpslldq	$8, %xmm7, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm7, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm8
	vpshufb	%xmm5, %xmm1, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpxor	%xmm8, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm1, %xmm3, %xmm3
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpslldq	$12, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm1, %xmm6, %xmm6
	vpshufd	$255, %xmm11, %xmm12
	vaesenclast	%xmm4, %xmm12, %xmm12
	vpxor	%xmm6, %xmm12, %xmm12
	#NO_APP
	vbroadcastss	.LCPI0_11(%rip), %xmm6
	#APP
	vaesenc	%xmm11, %xmm3, %xmm3
	vpslldq	$4, %xmm11, %xmm8
	vpslldq	$8, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm11, %xmm8, %xmm8
	vpshufb	%xmm5, %xmm12, %xmm14
	vaesenclast	%xmm6, %xmm14, %xmm14
	vpxor	%xmm8, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm3, %xmm3
	vpslldq	$4, %xmm12, %xmm6
	vpslldq	$8, %xmm12, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpslldq	$12, %xmm12, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm12, %xmm6
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm4, %xmm15, %xmm15
	vpxor	%xmm6, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI0_12(%rip), %xmm6
	#APP
	vaesenc	%xmm14, %xmm3, %xmm3
	vpslldq	$4, %xmm14, %xmm8
	vpslldq	$8, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm14, %xmm8, %xmm8
	vpshufb	%xmm5, %xmm15, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	#NO_APP
	vpxor	16(%r15), %xmm0, %xmm0
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vpslldq	$4, %xmm15, %xmm6
	vpslldq	$8, %xmm15, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpslldq	$12, %xmm15, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm15, %xmm6
	vpshufd	$255, %xmm2, %xmm13
	vaesenclast	%xmm4, %xmm13, %xmm13
	vpxor	%xmm6, %xmm13, %xmm13
	#NO_APP
	vpbroadcastd	.LCPI0_13(%rip), %xmm6
	#APP
	vaesenc	%xmm2, %xmm3, %xmm3
	vpslldq	$4, %xmm2, %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm2, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm2, %xmm8, %xmm8
	vpshufb	%xmm5, %xmm13, %xmm4
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	#NO_APP
	vmovaps	%xmm4, 256(%rsp)
	vmovdqa	192(%rsp), %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm4
	vpxor	32(%r15), %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpor	%xmm0, %xmm4, %xmm0
	vptest	%xmm0, %xmm0
	jne	.LBB0_37
	vmovaps	%xmm1, 176(%rsp)
	vmovaps	%xmm7, 64(%rsp)
	vmovdqa	%xmm10, 48(%rsp)
	vmovaps	%xmm2, 288(%rsp)
	vmovaps	%xmm15, 144(%rsp)
	vmovdqa	%xmm14, 96(%rsp)
	vmovdqa	%xmm12, 160(%rsp)
	vmovaps	%xmm11, 112(%rsp)
	vpslldq	$4, %xmm13, %xmm0
	vpxor	%xmm5, %xmm5, %xmm5
	vpunpcklqdq	%xmm13, %xmm5, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vinsertps	$55, %xmm13, %xmm0, %xmm4
	vxorps	%xmm4, %xmm0, %xmm0
	vmovdqa	256(%rsp), %xmm1
	vpshufd	$255, %xmm1, %xmm4
	vaesenclast	%xmm5, %xmm4, %xmm4
	vxorps	%xmm0, %xmm13, %xmm0
	vpxor	%xmm0, %xmm4, %xmm8
	vpslldq	$4, %xmm1, %xmm0
	vpunpcklqdq	%xmm1, %xmm5, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vinsertps	$55, %xmm1, %xmm0, %xmm4
	vxorps	%xmm4, %xmm0, %xmm0
	vpshufb	.LCPI0_6(%rip), %xmm8, %xmm2
	vaesenclast	.LCPI0_14(%rip), %xmm2, %xmm2
	vxorps	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqa	%xmm2, 272(%rsp)
	vaesenc	%xmm13, %xmm3, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI0_15(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm2
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm2, %xmm3
	vpor	%xmm3, %xmm0, %xmm0
	vpblendd	$12, %xmm2, %xmm5, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm0
	vpbroadcastq	.LCPI0_26(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm0, %xmm4
	vmovdqa	%xmm4, 352(%rsp)
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm2
	vmovdqa	%xmm2, 336(%rsp)
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm0, %xmm10
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm0, %xmm3
	vmovdqa	%xmm3, 320(%rsp)
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, 384(%rsp)
	movzbl	23(%rsi), %eax
	movzbl	16(%rsi), %edx
	shll	$8, %edx
	vmovdqa	240(%rsp), %xmm0
	vpextrb	$15, %xmm0, %edi
	orl	%edx, %edi
	movzbl	17(%rsi), %edx
	shll	$16, %edx
	orl	%edi, %edx
	movzbl	18(%rsi), %edi
	shll	$24, %edi
	orl	%edx, %edi
	vmovd	%edi, %xmm0
	vpinsrd	$1, 19(%rsi), %xmm0, %xmm0
	vpinsrd	$2, %eax, %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm1
	testq	%r8, %r8
	vmovdqa	%xmm13, %xmm4
	vmovdqa	%xmm11, 192(%rsp)
	vmovaps	%xmm13, 128(%rsp)
	vmovdqa	%xmm8, 224(%rsp)
	vmovdqa	%xmm1, 208(%rsp)
	vmovdqa	%xmm10, 400(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	je	.LBB0_24
	cmpq	$96, %r8
	vmovdqa	64(%rsp), %xmm9
	jb	.LBB0_8
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI0_15(%rip), %xmm13
	vpshufb	%xmm13, %xmm1, %xmm5
	vpshufb	%xmm13, %xmm2, %xmm1
	vpshufb	%xmm13, %xmm3, %xmm2
	vpshufb	%xmm13, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm3
	vmovdqa	352(%rsp), %xmm0
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	336(%rsp), %xmm8
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	320(%rsp), %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm13, %xmm6, %xmm6
	vpshufb	%xmm13, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	384(%rsp), %xmm15
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm10, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm10, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rax
	cmpq	$192, %r8
	jb	.LBB0_14
	vmovdqa	336(%rsp), %xmm14
	vmovdqa	320(%rsp), %xmm0
	vmovdqa	352(%rsp), %xmm12
	.p2align	4
.LBB0_13:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI0_26(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm13, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm3
	vpshufb	%xmm13, %xmm5, %xmm1
	vpshufb	%xmm13, %xmm6, %xmm2
	vpshufb	%xmm13, %xmm7, %xmm4
	vpshufb	%xmm13, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm11, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm11, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm1
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm15, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm15, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm15, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm15, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB0_13
.LBB0_14:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpbroadcastq	.LCPI0_26(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm7
	vmovdqa	128(%rsp), %xmm4
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	208(%rsp), %xmm1
	cmpq	$16, %rax
	jae	.LBB0_15
.LBB0_10:
	movq	%rax, %rdx
	vmovdqa	%xmm0, (%rsp)
	testq	%rdx, %rdx
	jne	.LBB0_23
	jmp	.LBB0_22
.LBB0_24:
	vmovdqa	%xmm0, (%rsp)
	xorl	%r8d, %r8d
	testq	%r12, %r12
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm12
	vmovdqa	48(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm7
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm11
	jne	.LBB0_26
	jmp	.LBB0_36
.LBB0_8:
	movq	%r8, %rax
	vmovdqa	48(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm7
	cmpq	$16, %rax
	jb	.LBB0_10
.LBB0_15:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB0_16
	cmpq	$16, %rdx
	jae	.LBB0_18
.LBB0_21:
	vmovdqa	%xmm0, (%rsp)
	testq	%rdx, %rdx
	je	.LBB0_22
.LBB0_23:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r8, %rbx
	movq	%r9, %r14
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	208(%rsp), %xmm12
	vpbroadcastq	.LCPI0_26(%rip), %xmm15
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	80(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm13
	movq	%r14, %r9
	movq	%rbx, %r8
	vmovdqa	16(%rsp), %xmm0
	shlq	$3, %r8
	vpshufb	.LCPI0_15(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vmovdqa	%xmm10, %xmm4
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm12, %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	testq	%r12, %r12
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm12
	jne	.LBB0_26
	jmp	.LBB0_36
.LBB0_16:
	vmovdqa	%xmm0, %xmm2
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI0_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	208(%rsp), %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB0_21
.LBB0_18:
	vmovdqa	%xmm0, %xmm3
	vmovdqa	.LCPI0_15(%rip), %xmm0
	.p2align	4
.LBB0_19:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	cmpq	$15, %rax
	ja	.LBB0_19
	movq	%rax, %rdx
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm4
	vmovdqa	208(%rsp), %xmm1
	vmovdqa	%xmm3, %xmm0
	vmovdqa	%xmm0, (%rsp)
	testq	%rdx, %rdx
	jne	.LBB0_23
.LBB0_22:
	shlq	$3, %r8
	testq	%r12, %r12
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm12
	vmovdqa	176(%rsp), %xmm11
	je	.LBB0_36
.LBB0_26:
	vmovdqa	%xmm10, %xmm2
	vpshufb	.LCPI0_17(%rip), %xmm1, %xmm0
	movq	584(%rsp), %rbx
	vpaddd	.LCPI0_18(%rip), %xmm0, %xmm10
	movq	%r12, %r14
	cmpq	$96, %r12
	jb	.LBB0_27
	vmovdqa	(%rsp), %xmm9
	.p2align	4
.LBB0_32:
	vmovdqa	%xmm10, 240(%rsp)
	vmovdqu	(%r9), %xmm4
	vmovdqa	%xmm4, 368(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovups	48(%r9), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovdqu	64(%r9), %xmm8
	vmovdqa	%xmm8, 464(%rsp)
	vmovdqu	80(%r9), %xmm11
	vmovdqa	%xmm11, 432(%rsp)
	vmovdqa	.LCPI0_15(%rip), %xmm12
	vpshufb	%xmm12, %xmm10, %xmm0
	vpaddd	.LCPI0_18(%rip), %xmm10, %xmm1
	vpshufb	%xmm12, %xmm1, %xmm1
	vpaddd	.LCPI0_19(%rip), %xmm10, %xmm2
	vpshufb	%xmm12, %xmm2, %xmm2
	vpaddd	.LCPI0_20(%rip), %xmm10, %xmm3
	vpshufb	%xmm12, %xmm3, %xmm3
	vpaddd	.LCPI0_21(%rip), %xmm10, %xmm5
	vpshufb	%xmm12, %xmm5, %xmm5
	vpaddd	.LCPI0_22(%rip), %xmm10, %xmm6
	vpshufb	%xmm12, %xmm6, %xmm6
	vpshufb	%xmm12, %xmm4, %xmm7
	vpxor	%xmm7, %xmm9, %xmm4
	vmovdqa	%xmm4, 448(%rsp)
	vpshufb	%xmm12, %xmm11, %xmm4
	vmovdqa	304(%rsp), %xmm7
	vpxor	%xmm0, %xmm7, %xmm14
	vpxor	%xmm1, %xmm7, %xmm15
	vpxor	%xmm2, %xmm7, %xmm1
	vpxor	%xmm3, %xmm7, %xmm2
	vpxor	%xmm5, %xmm7, %xmm3
	vpxor	%xmm6, %xmm7, %xmm13
	vmovaps	48(%rsp), %xmm0
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
	vmovaps	32(%rsp), %xmm9
	vmovaps	192(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	#NO_APP
	vpshufb	%xmm12, %xmm8, %xmm0
	vmovaps	80(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	64(%rsp), %xmm9
	vmovaps	352(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovdqa	(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovaps	176(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	336(%rsp), %xmm9
	vmovaps	112(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovdqa	416(%rsp), %xmm8
	vpshufb	%xmm12, %xmm8, %xmm0
	vmovaps	160(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	96(%rsp), %xmm9
	vmovaps	320(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovdqu	16(%r9), %xmm0
	vmovaps	144(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm12, %xmm0, %xmm4
	vmovaps	288(%rsp), %xmm12
	vmovaps	384(%rsp), %xmm11
	#APP
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	#NO_APP
	vmovdqa	112(%rsp), %xmm12
	vmovaps	128(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovdqa	256(%rsp), %xmm9
	vmovdqa	400(%rsp), %xmm11
	vmovaps	448(%rsp), %xmm10
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm10, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm10, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm10, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm6, %xmm9, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpunpckhqdq	%xmm9, %xmm6, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpbroadcastq	.LCPI0_26(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm9
	vmovaps	224(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	272(%rsp), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm14, %xmm14
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm1, %xmm1
	vaesenclast	%xmm4, %xmm2, %xmm2
	vaesenclast	%xmm4, %xmm3, %xmm3
	vaesenclast	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpxor	368(%rsp), %xmm14, %xmm4
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	(%rsp), %xmm2, %xmm2
	vpxor	464(%rsp), %xmm3, %xmm3
	vmovdqu	%xmm4, (%rbx)
	vmovdqu	%xmm0, 16(%rbx)
	vmovdqu	%xmm1, 32(%rbx)
	vmovdqu	%xmm2, 48(%rbx)
	vmovdqu	%xmm3, 64(%rbx)
	vpxor	432(%rsp), %xmm13, %xmm0
	vmovdqa	240(%rsp), %xmm10
	vmovdqu	%xmm0, 80(%rbx)
	addq	$96, %r9
	addq	$96, %rbx
	addq	$-96, %r14
	vpaddd	.LCPI0_23(%rip), %xmm10, %xmm10
	cmpq	$95, %r14
	ja	.LBB0_32
	vmovdqa	%xmm9, (%rsp)
	vmovdqa	48(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm7
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm0
	vmovdqa	128(%rsp), %xmm4
	vmovdqa	224(%rsp), %xmm6
	vmovdqa	%xmm12, %xmm14
	vmovdqa	%xmm0, %xmm12
	jmp	.LBB0_28
.LBB0_27:
	vmovdqa	%xmm2, %xmm14
	vmovdqa	224(%rsp), %xmm6
.LBB0_28:
	cmpq	$16, %r14
	vmovdqa	(%rsp), %xmm0
	jb	.LBB0_29
	.p2align	4
.LBB0_34:
	vmovdqu	(%r9), %xmm2
	vmovdqa	%xmm2, (%rsp)
	vmovdqa	.LCPI0_15(%rip), %xmm1
	vpshufb	%xmm1, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm3
	vmovdqa	%xmm8, %xmm14
	vmovdqa	%xmm4, %xmm15
	vmovdqa	192(%rsp), %xmm0
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	vmovdqa	%xmm6, %xmm2
	vmovdqa	%xmm11, %xmm8
	vmovdqa	%xmm9, %xmm11
	vmovdqa	%xmm12, %xmm9
	vmovdqa	%xmm7, %xmm12
	vmovdqa	%xmm5, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpbroadcastq	.LCPI0_26(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm7, %xmm5
	vmovdqa	%xmm12, %xmm7
	vmovdqa	%xmm9, %xmm12
	vmovdqa	%xmm11, %xmm9
	vmovdqa	%xmm8, %xmm11
	vmovdqa	%xmm2, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm0
	vmovdqa	%xmm15, %xmm4
	vmovdqa	288(%rsp), %xmm15
	vmovdqa	%xmm14, %xmm8
	vmovdqa	112(%rsp), %xmm14
	vpshufb	.LCPI0_15(%rip), %xmm10, %xmm3
	vpxor	304(%rsp), %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	96(%rsp), %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenclast	272(%rsp), %xmm3, %xmm3
	vpxor	(%rsp), %xmm3, %xmm2
	vmovdqu	%xmm2, (%rbx)
	addq	$16, %rbx
	addq	$-16, %r14
	addq	$16, %r9
	vpaddd	.LCPI0_18(%rip), %xmm10, %xmm10
	cmpq	$15, %r14
	ja	.LBB0_34
.LBB0_29:
	vmovdqa	%xmm10, 240(%rsp)
	vmovdqa	%xmm0, (%rsp)
	testq	%r14, %r14
	je	.LBB0_30
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%r9, %rsi
	movq	%r14, %rdx
	movq	%r8, %rbp
	callq	*%r13
	vmovdqa	16(%rsp), %xmm1
	vmovdqa	%xmm1, 368(%rsp)
	vmovdqa	240(%rsp), %xmm0
	vpshufb	.LCPI0_15(%rip), %xmm0, %xmm0
	vpxor	304(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenclast	272(%rsp), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*%r13
	vmovaps	368(%rsp), %xmm0
	vmovaps	%xmm0, 480(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	480(%rsp), %rsi
	movq	%r14, %rdx
	callq	*%r13
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	144(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm15
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	80(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm13
	movq	%rbp, %r8
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI0_15(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vmovdqa	%xmm10, %xmm4
	vmovdqa	%xmm15, %xmm10
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI0_26(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	208(%rsp), %xmm1
	jmp	.LBB0_36
.LBB0_30:
	vmovdqa	%xmm14, %xmm10
	vpbroadcastq	.LCPI0_26(%rip), %xmm15
	vmovdqa	208(%rsp), %xmm1
	vmovdqa	96(%rsp), %xmm14
.LBB0_36:
	vmovq	%r12, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vmovdqa	%xmm10, %xmm6
	vmovdqa	%xmm1, %xmm10
	vmovq	%r8, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm3
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	304(%rsp), %xmm10, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI0_24(%rip), %xmm1, %xmm1
	vaesenclast	272(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI0_25(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI0_15(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	(%r15), %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
.LBB0_37:
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
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndkv2kc_broadwell_decrypt, .Lfunc_end0-haberdashery_aes256gcmdndkv2kc_broadwell_decrypt
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
.LCPI1_7:
	.quad	4294967297
	.quad	4294967297
.LCPI1_14:
	.quad	274877907008
	.quad	274877907008
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
.LCPI1_16:
	.zero	8
	.quad	-4467570830351532032
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_27:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndkv2kc_broadwell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_broadwell_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_broadwell_encrypt,@function
haberdashery_aes256gcmdndkv2kc_broadwell_encrypt:
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
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	512(%rsp), %r15
	xorl	%eax, %eax
	cmpq	528(%rsp), %r15
	jne	.LBB1_44
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB1_44
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB1_44
	cmpq	$24, %rdx
	jne	.LBB1_44
	cmpq	$48, 544(%rsp)
	jne	.LBB1_44
	vmovdqu	(%rsi), %xmm0
	vpextrb	$15, %xmm0, %eax
	vpand	.LCPI1_0(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm10
	vpxor	.LCPI1_1(%rip), %xmm10, %xmm2
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm9
	vmovdqa	48(%rdi), %xmm1
	vmovdqa	64(%rdi), %xmm0
	vmovdqa	%xmm0, (%rsp)
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm3
	vmovdqa	80(%rdi), %xmm2
	vaesenc	%xmm2, %xmm3, %xmm4
	vmovdqa	96(%rdi), %xmm3
	vaesenc	%xmm3, %xmm4, %xmm5
	vmovdqa	112(%rdi), %xmm4
	vaesenc	%xmm4, %xmm5, %xmm6
	vmovdqa	128(%rdi), %xmm5
	vaesenc	%xmm5, %xmm6, %xmm7
	vmovdqa	144(%rdi), %xmm6
	vaesenc	%xmm6, %xmm7, %xmm8
	vmovdqa	160(%rdi), %xmm7
	vaesenc	%xmm7, %xmm8, %xmm12
	vmovdqa	176(%rdi), %xmm8
	vaesenc	%xmm8, %xmm12, %xmm12
	vpxor	.LCPI1_2(%rip), %xmm10, %xmm13
	vaesenc	%xmm11, %xmm13, %xmm13
	vpxor	.LCPI1_3(%rip), %xmm10, %xmm14
	vpxor	.LCPI1_4(%rip), %xmm10, %xmm15
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vpxor	.LCPI1_5(%rip), %xmm10, %xmm10
	vaesenc	%xmm11, %xmm10, %xmm11
	vmovdqa	192(%rdi), %xmm10
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm11, %xmm9
	vmovdqa	208(%rdi), %xmm11
	vaesenc	%xmm11, %xmm12, %xmm0
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm9, %xmm1
	vmovdqa	224(%rdi), %xmm12
	vaesenclast	%xmm12, %xmm0, %xmm0
	vmovdqa	%xmm0, 224(%rsp)
	vmovdqa	(%rsp), %xmm0
	vaesenc	%xmm0, %xmm13, %xmm9
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm8, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm9, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm9
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm8, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm9, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm9
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm8, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm9, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm2
	vmovdqa	224(%rsp), %xmm0
	vpxor	%xmm0, %xmm13, %xmm5
	vpxor	%xmm0, %xmm14, %xmm6
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm3
	vpbroadcastd	.LCPI1_9(%rip), %xmm1
	vpshufb	%xmm1, %xmm6, %xmm4
	vaesenclast	.LCPI1_7(%rip), %xmm4, %xmm4
	vpxor	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm8
	vmovdqa	%xmm5, 304(%rsp)
	vaesenc	%xmm6, %xmm5, %xmm3
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm8, %xmm5
	vpxor	%xmm10, %xmm10, %xmm10
	vaesenclast	%xmm10, %xmm5, %xmm5
	vmovdqa	%xmm6, 32(%rsp)
	vpxor	%xmm6, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm13
	vbroadcastss	.LCPI1_8(%rip), %xmm5
	vbroadcastss	.LCPI1_9(%rip), %xmm4
	vmovdqa	%xmm8, (%rsp)
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vpslldq	$4, %xmm8, %xmm6
	vpslldq	$8, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpshufb	%xmm4, %xmm13, %xmm11
	vaesenclast	%xmm5, %xmm11, %xmm11
	vpxor	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa	%xmm13, 64(%rsp)
	#APP
	vaesenc	%xmm13, %xmm3, %xmm3
	vpslldq	$4, %xmm13, %xmm5
	vpslldq	$8, %xmm13, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm13, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm13, %xmm5
	vpshufd	$255, %xmm11, %xmm8
	vaesenclast	%xmm10, %xmm8, %xmm8
	vpxor	%xmm5, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm5
	vmovaps	%xmm11, 176(%rsp)
	#APP
	vaesenc	%xmm11, %xmm3, %xmm3
	vpslldq	$4, %xmm11, %xmm6
	vpslldq	$8, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm11, %xmm6
	vpshufb	%xmm4, %xmm8, %xmm12
	vaesenclast	%xmm5, %xmm12, %xmm12
	vpxor	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	%xmm8, 288(%rsp)
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vpslldq	$4, %xmm8, %xmm5
	vpslldq	$8, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpshufd	$255, %xmm12, %xmm14
	vaesenclast	%xmm10, %xmm14, %xmm14
	vpxor	%xmm5, %xmm14, %xmm14
	#NO_APP
	vbroadcastss	.LCPI1_11(%rip), %xmm5
	#APP
	vaesenc	%xmm12, %xmm3, %xmm3
	vpslldq	$4, %xmm12, %xmm6
	vpslldq	$8, %xmm12, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm12, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm12, %xmm6
	vpshufb	%xmm4, %xmm14, %xmm15
	vaesenclast	%xmm5, %xmm15, %xmm15
	vpxor	%xmm6, %xmm15, %xmm15
	#NO_APP
	vmovaps	%xmm14, 272(%rsp)
	#APP
	vaesenc	%xmm14, %xmm3, %xmm3
	vpslldq	$4, %xmm14, %xmm5
	vpslldq	$8, %xmm14, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm14, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm14, %xmm5
	vpshufd	$255, %xmm15, %xmm7
	vaesenclast	%xmm10, %xmm7, %xmm7
	vpxor	%xmm5, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm7, %xmm11
	vbroadcastss	.LCPI1_12(%rip), %xmm5
	vmovaps	%xmm15, 16(%rsp)
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vpslldq	$4, %xmm15, %xmm6
	vpslldq	$8, %xmm15, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm15, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm15, %xmm6
	vpshufb	%xmm4, %xmm11, %xmm14
	vaesenclast	%xmm5, %xmm14, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	%xmm11, 48(%rsp)
	#APP
	vaesenc	%xmm11, %xmm3, %xmm3
	vpslldq	$4, %xmm11, %xmm5
	vpslldq	$8, %xmm11, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm11, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm11, %xmm5
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm10, %xmm15, %xmm15
	vpxor	%xmm5, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_13(%rip), %xmm5
	vmovaps	%xmm14, 96(%rsp)
	#APP
	vaesenc	%xmm14, %xmm3, %xmm3
	vpslldq	$4, %xmm14, %xmm6
	vpslldq	$8, %xmm14, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm14, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm14, %xmm6
	vpshufb	%xmm4, %xmm15, %xmm13
	vaesenclast	%xmm5, %xmm13, %xmm13
	vpxor	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovdqa	%xmm15, %xmm7
	vmovdqa	%xmm13, %xmm15
	vpslldq	$4, %xmm7, %xmm4
	vpunpcklqdq	%xmm7, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vinsertps	$55, %xmm7, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm13, %xmm5
	vaesenclast	%xmm10, %xmm5, %xmm5
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm6
	vpslldq	$4, %xmm13, %xmm4
	vpunpcklqdq	%xmm13, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vinsertps	$55, %xmm13, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm6, %xmm5
	vpshufb	%xmm1, %xmm6, %xmm1
	vaesenclast	.LCPI1_14(%rip), %xmm1, %xmm1
	vpxor	%xmm4, %xmm13, %xmm4
	vpxor	%xmm4, %xmm1, %xmm8
	vpxor	%xmm0, %xmm9, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpshufb	.LCPI1_15(%rip), %xmm3, %xmm3
	vpxor	%xmm0, %xmm2, %xmm0
	vpsrlq	$63, %xmm3, %xmm2
	vpaddq	%xmm3, %xmm3, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpor	%xmm4, %xmm3, %xmm3
	vpblendd	$12, %xmm2, %xmm10, %xmm2
	vpsllq	$63, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpsllq	$62, %xmm2, %xmm4
	vpsllq	$57, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm2
	vpbroadcastq	.LCPI1_27(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm2
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm4, 368(%rsp)
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm9
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm11, %xmm2
	vpclmulqdq	$1, %xmm13, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm11, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm11, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	%xmm2, 352(%rsp)
	movq	536(%rsp), %r12
	movzbl	16(%rsi), %edx
	movzbl	17(%rsi), %edi
	movzbl	23(%rsi), %r10d
	shll	$8, %edx
	orl	%eax, %edx
	shll	$16, %edi
	orl	%edx, %edi
	movzbl	18(%rsi), %eax
	shll	$24, %eax
	orl	%edi, %eax
	vmovd	%eax, %xmm2
	vpinsrd	$1, 19(%rsi), %xmm2, %xmm2
	vmovdqu	%xmm1, 16(%r12)
	vmovdqu	%xmm0, 32(%r12)
	vpinsrd	$2, %r10d, %xmm2, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, 384(%rsp)
	testq	%r8, %r8
	vmovdqa	%xmm12, 256(%rsp)
	vmovdqa	%xmm8, 240(%rsp)
	vmovdqa	%xmm13, 144(%rsp)
	vmovdqa	%xmm9, 224(%rsp)
	vmovdqa	%xmm14, 336(%rsp)
	vmovaps	%xmm7, 192(%rsp)
	vmovdqa	%xmm15, 160(%rsp)
	vmovdqa	%xmm5, 208(%rsp)
	je	.LBB1_6
	cmpq	$96, %r8
	jb	.LBB1_9
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI1_15(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	%xmm11, %xmm8
	vmovdqa	368(%rsp), %xmm11
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vmovdqa	%xmm8, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	352(%rsp), %xmm12
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rax
	vpbroadcastq	.LCPI1_27(%rip), %xmm14
	cmpq	$192, %r8
	jb	.LBB1_15
	vmovdqa	144(%rsp), %xmm13
	vmovdqa	336(%rsp), %xmm15
	.p2align	4
.LBB1_23:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm3
	vpshufb	%xmm0, %xmm5, %xmm1
	vpshufb	%xmm0, %xmm6, %xmm2
	vpshufb	%xmm0, %xmm7, %xmm4
	vpshufb	%xmm0, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vmovdqa	224(%rsp), %xmm9
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm1
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB1_23
	jmp	.LBB1_24
.LBB1_6:
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	(%rsp), %xmm4
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	64(%rsp), %xmm9
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm14
	testq	%r15, %r15
	jne	.LBB1_28
	jmp	.LBB1_43
.LBB1_9:
	movq	%r8, %rax
	vmovdqa	32(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm4
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm14
	cmpq	$16, %rax
	vmovdqa	64(%rsp), %xmm9
	jae	.LBB1_16
.LBB1_11:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_25
	jmp	.LBB1_13
.LBB1_15:
	vmovdqa	144(%rsp), %xmm13
.LBB1_24:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	vmovdqa	%xmm14, %xmm6
	vmovdqa	32(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm15
	vmovaps	192(%rsp), %xmm7
	vmovdqa	208(%rsp), %xmm5
	vmovdqa	%xmm10, %xmm11
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	(%rsp), %xmm4
	cmpq	$16, %rax
	vmovdqa	64(%rsp), %xmm9
	jb	.LBB1_11
.LBB1_16:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB1_17
	cmpq	$16, %rdx
	jae	.LBB1_19
.LBB1_12:
	testq	%rdx, %rdx
	je	.LBB1_13
.LBB1_25:
	vmovdqa	%xmm11, 320(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdi
	movq	%rcx, %rsi
	vmovdqa	%xmm3, 112(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	144(%rsp), %xmm13
	vmovdqa	80(%rsp), %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	112(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	testq	%r15, %r15
	je	.LBB1_26
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_27(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	(%rsp), %xmm4
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	16(%rsp), %xmm14
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	208(%rsp), %xmm5
	vmovdqa	320(%rsp), %xmm11
	jmp	.LBB1_28
.LBB1_17:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_12
.LBB1_19:
	vmovdqa	%xmm5, %xmm9
	vmovdqa	.LCPI1_15(%rip), %xmm0
	.p2align	4
.LBB1_20:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	cmpq	$15, %rax
	ja	.LBB1_20
	movq	%rax, %rdx
	vmovdqa	%xmm9, %xmm5
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm4
	testq	%rdx, %rdx
	jne	.LBB1_25
.LBB1_13:
	vmovdqa	%xmm8, %xmm12
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	176(%rsp), %xmm6
	testq	%r15, %r15
	je	.LBB1_43
.LBB1_28:
	vmovdqa	384(%rsp), %xmm0
	vpshufb	.LCPI1_17(%rip), %xmm0, %xmm1
	movq	520(%rsp), %r14
	vpaddd	.LCPI1_18(%rip), %xmm1, %xmm0
	cmpq	$96, %r15
	jb	.LBB1_29
	vmovdqa	%xmm3, 112(%rsp)
	vmovdqa	%xmm11, 320(%rsp)
	leaq	96(%r9), %rcx
	leaq	96(%r14), %rax
	vmovdqa	%xmm14, %xmm10
	vmovdqa	.LCPI1_15(%rip), %xmm14
	vpshufb	%xmm14, %xmm0, %xmm2
	vpaddd	.LCPI1_19(%rip), %xmm1, %xmm3
	vpshufb	%xmm14, %xmm3, %xmm3
	vmovdqa	%xmm4, %xmm0
	vpaddd	.LCPI1_20(%rip), %xmm1, %xmm4
	vmovdqa	%xmm5, %xmm11
	vpaddd	.LCPI1_21(%rip), %xmm1, %xmm5
	vpshufb	%xmm14, %xmm4, %xmm4
	vpshufb	%xmm14, %xmm5, %xmm5
	vmovdqa	%xmm6, %xmm8
	vpaddd	.LCPI1_22(%rip), %xmm1, %xmm6
	vpshufb	%xmm14, %xmm6, %xmm6
	vpaddd	.LCPI1_23(%rip), %xmm1, %xmm7
	vpshufb	%xmm14, %xmm7, %xmm7
	vpaddd	.LCPI1_24(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 128(%rsp)
	vmovdqa	304(%rsp), %xmm14
	vpxor	%xmm2, %xmm14, %xmm1
	vpxor	%xmm3, %xmm14, %xmm2
	vpxor	%xmm4, %xmm14, %xmm4
	vpxor	%xmm5, %xmm14, %xmm5
	vpxor	%xmm6, %xmm14, %xmm6
	vpxor	%xmm7, %xmm14, %xmm7
	#APP
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vmovaps	288(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	#NO_APP
	vmovaps	256(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	#NO_APP
	vmovaps	272(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	#NO_APP
	vmovaps	48(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	vmovaps	96(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	vmovaps	192(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovdqa	240(%rsp), %xmm0
	#APP
	vaesenclast	%xmm0, %xmm1, %xmm1
	vaesenclast	%xmm0, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm4, %xmm4
	vaesenclast	%xmm0, %xmm5, %xmm5
	vaesenclast	%xmm0, %xmm6, %xmm6
	vaesenclast	%xmm0, %xmm7, %xmm7
	#NO_APP
	vpxor	(%r9), %xmm1, %xmm3
	vpxor	16(%r9), %xmm2, %xmm8
	vpxor	32(%r9), %xmm4, %xmm4
	vpxor	48(%r9), %xmm5, %xmm5
	vpxor	64(%r9), %xmm6, %xmm11
	vpxor	80(%r9), %xmm7, %xmm1
	vmovdqu	%xmm3, (%r14)
	vmovdqu	%xmm8, 16(%r14)
	vmovdqu	%xmm4, 32(%r14)
	vmovdqu	%xmm5, 48(%r14)
	vmovdqu	%xmm11, 64(%r14)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm1, 80(%r14)
	cmpq	$192, %r15
	jb	.LBB1_35
	vmovdqa	112(%rsp), %xmm0
	vmovdqa	128(%rsp), %xmm9
	.p2align	4
.LBB1_37:
	vmovdqa	%xmm5, 400(%rsp)
	vmovdqa	%xmm8, 416(%rsp)
	vmovdqa	%xmm4, 112(%rsp)
	vmovdqa	.LCPI1_15(%rip), %xmm8
	vpshufb	%xmm8, %xmm9, %xmm2
	vpaddd	.LCPI1_18(%rip), %xmm9, %xmm4
	vpshufb	%xmm8, %xmm4, %xmm4
	vpaddd	.LCPI1_19(%rip), %xmm9, %xmm5
	vpshufb	%xmm8, %xmm5, %xmm5
	vpaddd	.LCPI1_20(%rip), %xmm9, %xmm6
	vpshufb	%xmm8, %xmm6, %xmm6
	vpaddd	.LCPI1_21(%rip), %xmm9, %xmm12
	vpshufb	%xmm8, %xmm12, %xmm12
	vpaddd	.LCPI1_22(%rip), %xmm9, %xmm13
	vpshufb	%xmm8, %xmm13, %xmm7
	vpshufb	%xmm8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vmovdqa	%xmm0, 128(%rsp)
	vpshufb	%xmm8, %xmm1, %xmm0
	vmovdqa	304(%rsp), %xmm3
	vpxor	%xmm2, %xmm3, %xmm13
	vpxor	%xmm4, %xmm3, %xmm14
	vpxor	%xmm5, %xmm3, %xmm15
	vpxor	%xmm6, %xmm3, %xmm1
	vpxor	%xmm3, %xmm12, %xmm2
	vpxor	%xmm7, %xmm3, %xmm12
	vmovaps	32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vmovaps	144(%rsp), %xmm3
	vmovaps	(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm8, %xmm11, %xmm0
	vmovaps	64(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	176(%rsp), %xmm3
	vmovaps	336(%rsp), %xmm10
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovdqa	400(%rsp), %xmm0
	vpshufb	%xmm8, %xmm0, %xmm0
	vmovaps	288(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	256(%rsp), %xmm3
	vmovaps	368(%rsp), %xmm10
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovdqa	112(%rsp), %xmm0
	vpshufb	%xmm8, %xmm0, %xmm0
	vmovaps	272(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	16(%rsp), %xmm3
	vmovdqa	320(%rsp), %xmm10
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovdqa	416(%rsp), %xmm0
	vpshufb	%xmm8, %xmm0, %xmm0
	vmovaps	48(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	96(%rsp), %xmm3
	vmovaps	352(%rsp), %xmm8
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovaps	192(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm12, %xmm12
	#NO_APP
	vmovdqa	160(%rsp), %xmm3
	vmovdqa	224(%rsp), %xmm7
	vmovaps	128(%rsp), %xmm8
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm8, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm8, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm7, %xmm8, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm4, %xmm3, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpunpckhqdq	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpbroadcastq	.LCPI1_27(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovaps	208(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	240(%rsp), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm12, %xmm12
	#NO_APP
	vpxor	(%rcx), %xmm13, %xmm3
	vpxor	16(%rcx), %xmm14, %xmm8
	vpxor	32(%rcx), %xmm15, %xmm4
	vpxor	48(%rcx), %xmm1, %xmm5
	vpxor	64(%rcx), %xmm2, %xmm11
	vpxor	80(%rcx), %xmm12, %xmm1
	addq	$96, %rcx
	vmovdqu	%xmm3, (%rax)
	vmovdqu	%xmm8, 16(%rax)
	vmovdqu	%xmm4, 32(%rax)
	vmovdqu	%xmm5, 48(%rax)
	vmovdqu	%xmm11, 64(%rax)
	vmovdqu	%xmm1, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI1_23(%rip), %xmm9, %xmm9
	cmpq	$95, %rbx
	ja	.LBB1_37
	vmovdqa	%xmm9, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	vmovdqa	144(%rsp), %xmm13
.LBB1_35:
	vmovdqa	.LCPI1_15(%rip), %xmm0
	vpshufb	%xmm0, %xmm3, %xmm2
	vpxor	112(%rsp), %xmm2, %xmm2
	vpshufb	%xmm0, %xmm8, %xmm3
	vpshufb	%xmm0, %xmm4, %xmm4
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm11, %xmm6
	vpshufb	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	336(%rsp), %xmm10
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm6
	vpxor	%xmm0, %xmm6, %xmm0
	vmovdqa	368(%rsp), %xmm9
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vmovdqa	320(%rsp), %xmm10
	vpclmulqdq	$0, %xmm4, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm10, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vmovdqa	352(%rsp), %xmm8
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vmovdqa	224(%rsp), %xmm5
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_27(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	movq	%rcx, %r9
	movq	%rax, %r14
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	256(%rsp), %xmm0
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	240(%rsp), %xmm11
	vmovdqa	208(%rsp), %xmm5
	movq	%r8, %r13
	cmpq	$16, %rbx
	jae	.LBB1_39
.LBB1_31:
	vmovdqa	128(%rsp), %xmm12
	jmp	.LBB1_32
.LBB1_29:
	vmovdqa	%xmm0, 128(%rsp)
	movq	%r15, %rbx
	vmovdqa	256(%rsp), %xmm0
	vmovdqa	240(%rsp), %xmm11
	movq	%r8, %r13
	cmpq	$16, %rbx
	jb	.LBB1_31
.LBB1_39:
	vmovdqa	%xmm0, %xmm15
	vmovdqa	144(%rsp), %xmm14
	vmovdqa	16(%rsp), %xmm7
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	192(%rsp), %xmm1
	vmovdqa	288(%rsp), %xmm0
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	272(%rsp), %xmm10
	.p2align	4
.LBB1_40:
	vmovdqa	.LCPI1_15(%rip), %xmm4
	vpshufb	%xmm4, %xmm12, %xmm2
	vpxor	304(%rsp), %xmm2, %xmm2
	vaesenc	32(%rsp), %xmm2, %xmm2
	vaesenc	(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm11, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%r14)
	vpshufb	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	vmovdqa	%xmm6, %xmm13
	vmovdqa	%xmm5, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm6, %xmm5
	vmovdqa	%xmm13, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_27(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	addq	$16, %r9
	addq	$16, %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_18(%rip), %xmm12, %xmm12
	cmpq	$15, %rbx
	ja	.LBB1_40
.LBB1_32:
	vmovdqa	%xmm12, 128(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_33
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm3, 112(%rsp)
	callq	*%rbp
	vmovdqa	128(%rsp), %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	304(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenclast	240(%rsp), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 224(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovaps	224(%rsp), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdi
	leaq	432(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	208(%rsp), %xmm5
	vmovdqa	160(%rsp), %xmm15
	vmovaps	192(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm14
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm4
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	80(%rsp), %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	112(%rsp), %xmm0, %xmm0
	vmovdqa	144(%rsp), %xmm13
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	movq	%r13, %r8
	jmp	.LBB1_42
.LBB1_33:
	movq	%r13, %r8
	vmovdqa	144(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	(%rsp), %xmm4
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm15
	vmovaps	192(%rsp), %xmm7
	jmp	.LBB1_43
.LBB1_26:
	movq	%rbx, %r8
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	(%rsp), %xmm4
	vmovdqa	64(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	16(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	96(%rsp), %xmm8
	vmovaps	192(%rsp), %xmm7
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	208(%rsp), %xmm5
.LBB1_42:
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_27(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
.LBB1_43:
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_27(%rip), %xmm3
	vmovdqa	%xmm4, %xmm11
	vmovdqa	%xmm3, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	304(%rsp), %xmm3
	vpxor	384(%rsp), %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenclast	240(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_25(%rip), %xmm1, %xmm1
	vpshufb	.LCPI1_26(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm0, (%r12)
	movl	$1, %eax
.LBB1_44:
	addq	$456, %rsp
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
	.size	haberdashery_aes256gcmdndkv2kc_broadwell_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndkv2kc_broadwell_encrypt
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
.LCPI2_1:
	.quad	4294967297
	.quad	4294967297
.LCPI2_2:
	.quad	8589934594
	.quad	8589934594
.LCPI2_3:
	.quad	17179869188
	.quad	17179869188
.LCPI2_4:
	.quad	34359738376
	.quad	34359738376
.LCPI2_5:
	.quad	68719476752
	.quad	68719476752
.LCPI2_6:
	.quad	137438953504
	.quad	137438953504
.LCPI2_7:
	.quad	274877907008
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmdndkv2kc_broadwell_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_broadwell_init
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_broadwell_init,@function
haberdashery_aes256gcmdndkv2kc_broadwell_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB2_2
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm0, %xmm4
	vpbroadcastd	.LCPI2_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm5
	vaesenclast	.LCPI2_1(%rip), %xmm5, %xmm5
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
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
	vpshufb	%xmm3, %xmm4, %xmm8
	vaesenclast	.LCPI2_2(%rip), %xmm8, %xmm8
	vpxor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm2, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
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
	vaesenclast	.LCPI2_3(%rip), %xmm9, %xmm9
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
	vpxor	%xmm11, %xmm10, %xmm10
	vpshufb	%xmm3, %xmm9, %xmm11
	vaesenclast	.LCPI2_4(%rip), %xmm11, %xmm11
	vpxor	%xmm8, %xmm10, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
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
	vaesenclast	.LCPI2_5(%rip), %xmm13, %xmm13
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
	vpshufb	%xmm3, %xmm13, %xmm15
	vaesenclast	.LCPI2_6(%rip), %xmm15, %xmm15
	vpslldq	$12, %xmm12, %xmm3
	vpxor	%xmm3, %xmm14, %xmm3
	vpxor	%xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vpslldq	$4, %xmm13, %xmm14
	vpslldq	$8, %xmm13, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpslldq	$12, %xmm13, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpshufd	$255, %xmm3, %xmm15
	vaesenclast	%xmm6, %xmm15, %xmm6
	vpxor	%xmm13, %xmm14, %xmm14
	vpxor	%xmm6, %xmm14, %xmm6
	vpslldq	$4, %xmm3, %xmm14
	vpslldq	$8, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpslldq	$12, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpshufb	.LCPI2_0(%rip), %xmm6, %xmm15
	vaesenclast	.LCPI2_7(%rip), %xmm15, %xmm15
	vpxor	%xmm3, %xmm14, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
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
	vmovdqa	%xmm3, 192(%rdi)
	vmovdqa	%xmm6, 208(%rdi)
	vmovdqa	%xmm14, 224(%rdi)
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndkv2kc_broadwell_init, .Lfunc_end2-haberdashery_aes256gcmdndkv2kc_broadwell_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndkv2kc_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_broadwell_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_broadwell_is_supported,@function
haberdashery_aes256gcmdndkv2kc_broadwell_is_supported:
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
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	movl	$7, %eax
	movl	$1, %ecx
	#APP

	movq	%rbx, %r10
	cpuid
	xchgq	%rbx, %r10

	#NO_APP
	notl	%r8d
	testl	$1054347779, %r8d
	jne	.LBB3_4
	andl	$125829120, %edi
	cmpl	$125829120, %edi
	jne	.LBB3_4
	andl	$524585, %r9d
	cmpl	$524585, %r9d
	jne	.LBB3_4
	xorl	%ecx, %ecx
	xgetbv
	notl	%eax
	xorl	%esi, %esi
	testb	$6, %al
	sete	%sil
.LBB3_4:
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndkv2kc_broadwell_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndkv2kc_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.98.0-nightly (c397dae80 2026-07-02)"
	.section	".note.GNU-stack","",@progbits

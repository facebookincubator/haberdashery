# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_0:
	.long	1
.LCPI0_5:
	.long	0x00000002
.LCPI0_6:
	.long	0x0c0f0e0d
.LCPI0_7:
	.long	0x00000004
.LCPI0_8:
	.long	0x00000008
.LCPI0_9:
	.long	0x00000010
.LCPI0_10:
	.long	0x00000020
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.quad	2
	.quad	0
.LCPI0_2:
	.quad	4
	.quad	0
.LCPI0_3:
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
.LCPI0_4:
	.quad	4294967297
	.quad	4294967297
.LCPI0_11:
	.quad	274877907008
	.quad	274877907008
.LCPI0_12:
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
.LCPI0_13:
	.zero	8
	.quad	-4467570830351532032
.LCPI0_14:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI0_15:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_16:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI0_17:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI0_18:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI0_19:
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
.LCPI0_20:
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
.LCPI0_21:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndk_broadwell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_broadwell_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_broadwell_decrypt,@function
haberdashery_aes256gcmdndk_broadwell_decrypt:
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
	subq	$472, %rsp
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	528(%rsp), %r15
	xorl	%eax, %eax
	cmpq	560(%rsp), %r15
	jne	.LBB0_37
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB0_37
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB0_37
	cmpq	$24, %rdx
	jne	.LBB0_37
	cmpq	$16, 544(%rsp)
	jne	.LBB0_37
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vpbroadcastd	.LCPI0_0(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpinsrd	$2, 16(%rsi), %xmm2, %xmm2
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vpinsrd	$3, 20(%rsi), %xmm2, %xmm1
	vmovaps	(%rdi), %xmm2
	vxorps	%xmm0, %xmm2, %xmm0
	vxorps	%xmm1, %xmm2, %xmm1
	vmovss	.LCPI0_5(%rip), %xmm13
	vxorps	%xmm0, %xmm13, %xmm2
	vxorps	%xmm1, %xmm13, %xmm3
	vmovss	.LCPI0_7(%rip), %xmm5
	vxorps	%xmm5, %xmm0, %xmm4
	vxorps	%xmm5, %xmm1, %xmm5
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
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm2, %xmm1
	vpxor	%xmm0, %xmm1, %xmm9
	vpxor	%xmm0, %xmm4, %xmm14
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpbroadcastd	.LCPI0_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm14, %xmm2
	vaesenclast	.LCPI0_4(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vaesenc	%xmm14, %xmm9, %xmm1
	vpslldq	$4, %xmm14, %xmm2
	vpslldq	$8, %xmm14, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm14, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm6, %xmm3
	vpxor	%xmm8, %xmm8, %xmm8
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpxor	%xmm2, %xmm14, %xmm2
	vpxor	%xmm2, %xmm3, %xmm10
	vbroadcastss	.LCPI0_5(%rip), %xmm3
	vbroadcastss	.LCPI0_6(%rip), %xmm2
	vmovdqa	%xmm6, 16(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm10, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovdqa	%xmm10, 272(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$255, %xmm7, %xmm6
	vaesenclast	%xmm8, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vbroadcastss	.LCPI0_7(%rip), %xmm3
	vmovaps	%xmm7, 32(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovaps	%xmm6, 208(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm6, %xmm3, %xmm3
	vpshufd	$255, %xmm10, %xmm7
	vaesenclast	%xmm8, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI0_8(%rip), %xmm3
	vmovaps	%xmm10, 192(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm7, 176(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm3
	vpshufd	$255, %xmm6, %xmm11
	vaesenclast	%xmm8, %xmm11, %xmm11
	vpxor	%xmm3, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI0_9(%rip), %xmm3
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm11, %xmm15
	vaesenclast	%xmm3, %xmm15, %xmm15
	vpxor	%xmm4, %xmm15, %xmm15
	#NO_APP
	vmovaps	%xmm11, 256(%rsp)
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm11, %xmm3
	vpshufd	$255, %xmm15, %xmm5
	vaesenclast	%xmm8, %xmm5, %xmm5
	vpxor	%xmm3, %xmm5, %xmm5
	#NO_APP
	vmovdqa	%xmm5, %xmm12
	vbroadcastss	.LCPI0_10(%rip), %xmm3
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm4
	vpslldq	$8, %xmm15, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm15, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vpshufb	%xmm2, %xmm12, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm10
	#NO_APP
	vpslldq	$4, %xmm12, %xmm2
	vpunpcklqdq	%xmm12, %xmm8, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm10, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpxor	%xmm2, %xmm12, %xmm2
	vpxor	%xmm2, %xmm3, %xmm4
	vpslldq	$4, %xmm10, %xmm2
	vpunpcklqdq	%xmm10, %xmm8, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm0
	vaesenclast	.LCPI0_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm10, %xmm2
	vpxor	%xmm2, %xmm0, %xmm5
	vaesenc	%xmm12, %xmm1, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm5, %xmm0, %xmm0
	vpshufb	.LCPI0_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm8, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm8
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm0
	vpbroadcastq	.LCPI0_21(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm11, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm11, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm11, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	vmovdqa	%xmm2, 320(%rsp)
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 384(%rsp)
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vmovdqa	%xmm3, 304(%rsp)
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm3, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 288(%rsp)
	movq	536(%rsp), %r12
	testq	%r8, %r8
	vmovdqa	%xmm14, 224(%rsp)
	vmovdqa	%xmm15, %xmm14
	vmovdqa	%xmm6, 128(%rsp)
	vmovdqa	%xmm15, 112(%rsp)
	vmovaps	%xmm12, 96(%rsp)
	vmovaps	%xmm10, 80(%rsp)
	vmovdqa	%xmm4, 48(%rsp)
	vmovdqa	%xmm5, 240(%rsp)
	vmovdqa	%xmm8, 64(%rsp)
	vmovdqa	%xmm11, 368(%rsp)
	vmovdqa	%xmm9, 144(%rsp)
	je	.LBB0_24
	cmpq	$96, %r8
	jb	.LBB0_7
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI0_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	320(%rsp), %xmm8
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	304(%rsp), %xmm9
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	288(%rsp), %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vmovdqa	384(%rsp), %xmm14
	vpclmulqdq	$0, %xmm6, %xmm14, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm14, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm14, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm14, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rax
	cmpq	$192, %r8
	jb	.LBB0_13
	vmovdqa	368(%rsp), %xmm15
	vmovdqa	320(%rsp), %xmm12
	vmovdqa	304(%rsp), %xmm11
	vmovdqa	288(%rsp), %xmm0
	vmovdqa	.LCPI0_12(%rip), %xmm10
	.p2align	4
.LBB0_12:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI0_21(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm10, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm3
	vpshufb	%xmm10, %xmm5, %xmm1
	vpshufb	%xmm10, %xmm6, %xmm2
	vpshufb	%xmm10, %xmm7, %xmm4
	vpshufb	%xmm10, %xmm8, %xmm5
	vmovdqa	64(%rsp), %xmm9
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm10, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm1
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB0_12
.LBB0_13:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpbroadcastq	.LCPI0_21(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm15
	vmovdqa	128(%rsp), %xmm6
	vmovdqa	64(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm11
	vmovaps	96(%rsp), %xmm12
	vmovaps	80(%rsp), %xmm10
	vmovdqa	112(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm4
	cmpq	$16, %rax
	jae	.LBB0_14
.LBB0_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB0_23
	jmp	.LBB0_21
.LBB0_24:
	vpxor	%xmm15, %xmm15, %xmm15
	xorl	%r8d, %r8d
	testq	%r15, %r15
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	32(%rsp), %xmm11
	jne	.LBB0_25
	jmp	.LBB0_36
.LBB0_7:
	movq	%r8, %rax
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	32(%rsp), %xmm11
	vpxor	%xmm15, %xmm15, %xmm15
	cmpq	$16, %rax
	jb	.LBB0_9
.LBB0_14:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB0_15
	cmpq	$16, %rdx
	jae	.LBB0_17
.LBB0_20:
	testq	%rdx, %rdx
	je	.LBB0_21
.LBB0_23:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rbx
	movq	%r9, %r14
	vmovdqa	%xmm15, 160(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	64(%rsp), %xmm8
	vpbroadcastq	.LCPI0_21(%rip), %xmm7
	vmovdqa	48(%rsp), %xmm4
	vmovaps	80(%rsp), %xmm10
	vmovaps	96(%rsp), %xmm12
	vmovdqa	112(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm9
	vmovss	.LCPI0_5(%rip), %xmm13
	movq	%r14, %r9
	movq	%rbx, %r8
	vmovdqa	(%rsp), %xmm0
	shlq	$3, %r8
	vpshufb	.LCPI0_12(%rip), %xmm0, %xmm0
	vpxor	160(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
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
	vpxor	%xmm0, %xmm2, %xmm15
	testq	%r15, %r15
	jne	.LBB0_25
	jmp	.LBB0_36
.LBB0_15:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI0_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
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
	vpxor	%xmm0, %xmm2, %xmm15
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB0_20
.LBB0_17:
	vmovdqa	.LCPI0_12(%rip), %xmm0
	.p2align	4
.LBB0_18:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
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
	vpxor	%xmm1, %xmm3, %xmm15
	cmpq	$15, %rax
	ja	.LBB0_18
	movq	%rax, %rdx
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm4
	testq	%rdx, %rdx
	jne	.LBB0_23
.LBB0_21:
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB0_36
.LBB0_25:
	movq	552(%rsp), %rbx
	cmpq	$96, %r15
	jb	.LBB0_26
	vmovd	.LCPI0_5(%rip), %xmm13
	movq	%r15, %r14
	vmovaps	224(%rsp), %xmm9
	.p2align	4
.LBB0_33:
	vmovdqa	%xmm13, 352(%rsp)
	vmovdqu	(%r9), %xmm7
	vmovdqa	%xmm7, 432(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovdqu	48(%r9), %xmm11
	vmovdqu	64(%r9), %xmm4
	vmovdqa	%xmm4, 416(%rsp)
	vmovdqu	80(%r9), %xmm8
	vmovdqa	%xmm8, 336(%rsp)
	vmovdqa	.LCPI0_12(%rip), %xmm10
	vpshufb	%xmm10, %xmm13, %xmm0
	vpaddd	.LCPI0_14(%rip), %xmm13, %xmm1
	vpshufb	%xmm10, %xmm1, %xmm1
	vpaddd	.LCPI0_1(%rip), %xmm13, %xmm2
	vpshufb	%xmm10, %xmm2, %xmm2
	vpaddd	.LCPI0_15(%rip), %xmm13, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm3
	vpaddd	.LCPI0_2(%rip), %xmm13, %xmm5
	vpshufb	%xmm10, %xmm5, %xmm5
	vpaddd	.LCPI0_16(%rip), %xmm13, %xmm6
	vpshufb	%xmm10, %xmm6, %xmm6
	vpshufb	%xmm10, %xmm7, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vmovdqa	%xmm7, 400(%rsp)
	vpshufb	%xmm10, %xmm8, %xmm12
	vmovdqa	144(%rsp), %xmm7
	vpxor	%xmm0, %xmm7, %xmm14
	vpxor	%xmm1, %xmm7, %xmm15
	vpxor	%xmm2, %xmm7, %xmm1
	vpxor	%xmm3, %xmm7, %xmm2
	vpxor	%xmm5, %xmm7, %xmm3
	vpxor	%xmm6, %xmm7, %xmm13
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	64(%rsp), %xmm9
	vmovaps	16(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm12, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm12, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm12, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm10, %xmm4, %xmm0
	vmovaps	272(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	32(%rsp), %xmm8
	vmovaps	368(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm10, %xmm11, %xmm0
	vmovaps	208(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	192(%rsp), %xmm9
	vmovaps	320(%rsp), %xmm8
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqa	160(%rsp), %xmm0
	vpshufb	%xmm10, %xmm0, %xmm0
	vmovaps	176(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	128(%rsp), %xmm9
	vmovaps	304(%rsp), %xmm8
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqu	16(%r9), %xmm0
	vmovaps	256(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm10, %xmm0, %xmm4
	vmovaps	112(%rsp), %xmm8
	vmovaps	288(%rsp), %xmm12
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vmovaps	224(%rsp), %xmm9
	vmovaps	96(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovdqa	80(%rsp), %xmm8
	vmovaps	384(%rsp), %xmm12
	vmovaps	400(%rsp), %xmm10
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpunpcklqdq	%xmm5, %xmm8, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpunpckhqdq	%xmm8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpbroadcastq	.LCPI0_21(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vmovaps	48(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	240(%rsp), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm14, %xmm14
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm1, %xmm1
	vaesenclast	%xmm4, %xmm2, %xmm2
	vaesenclast	%xmm4, %xmm3, %xmm3
	vaesenclast	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpxor	432(%rsp), %xmm14, %xmm4
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	160(%rsp), %xmm1, %xmm1
	vpxor	%xmm2, %xmm11, %xmm2
	vpxor	416(%rsp), %xmm3, %xmm3
	vmovdqu	%xmm4, (%rbx)
	vmovdqa	%xmm5, %xmm15
	vmovdqu	%xmm0, 16(%rbx)
	vmovdqu	%xmm1, 32(%rbx)
	vmovdqu	%xmm2, 48(%rbx)
	vmovdqu	%xmm3, 64(%rbx)
	vpxor	336(%rsp), %xmm13, %xmm0
	vmovdqa	352(%rsp), %xmm13
	vmovdqu	%xmm0, 80(%rbx)
	addq	$96, %r9
	addq	$96, %rbx
	addq	$-96, %r14
	vpaddd	.LCPI0_17(%rip), %xmm13, %xmm13
	cmpq	$95, %r14
	ja	.LBB0_33
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	208(%rsp), %xmm0
	vmovdqa	192(%rsp), %xmm12
	vmovdqa	176(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm6
	cmpq	$16, %r14
	jae	.LBB0_28
	jmp	.LBB0_30
.LBB0_26:
	movq	%r15, %r14
	vmovdqa	208(%rsp), %xmm0
	vmovdqa	192(%rsp), %xmm12
	vmovdqa	176(%rsp), %xmm14
	cmpq	$16, %r14
	jb	.LBB0_30
.LBB0_28:
	vmovdqa	64(%rsp), %xmm1
	vmovdqa	32(%rsp), %xmm8
	vmovdqa	224(%rsp), %xmm10
	vmovdqa	.LCPI0_12(%rip), %xmm7
	vpbroadcastq	.LCPI0_21(%rip), %xmm11
	.p2align	4
.LBB0_29:
	vmovdqu	(%r9), %xmm2
	vpshufb	%xmm7, %xmm2, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm4
	vmovdqa	%xmm14, %xmm15
	vmovdqa	%xmm12, %xmm14
	vmovdqa	%xmm0, %xmm12
	vmovdqa	%xmm9, %xmm0
	vmovdqa	%xmm5, %xmm9
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	128(%rsp), %xmm6
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm9, %xmm5
	vmovdqa	%xmm0, %xmm9
	vmovdqa	%xmm12, %xmm0
	vmovdqa	%xmm14, %xmm12
	vmovdqa	%xmm15, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm15
	vpshufb	%xmm7, %xmm13, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	112(%rsp), %xmm3, %xmm3
	vaesenc	96(%rsp), %xmm3, %xmm3
	vaesenc	80(%rsp), %xmm3, %xmm3
	vaesenc	48(%rsp), %xmm3, %xmm3
	vaesenclast	240(%rsp), %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rbx)
	addq	$16, %rbx
	addq	$-16, %r14
	addq	$16, %r9
	vpaddd	.LCPI0_14(%rip), %xmm13, %xmm13
	cmpq	$15, %r14
	ja	.LBB0_29
.LBB0_30:
	testq	%r14, %r14
	je	.LBB0_31
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%r9, %rsi
	movq	%r14, %rdx
	movq	%r8, %rbp
	vmovdqa	%xmm13, 352(%rsp)
	vmovdqa	%xmm15, 160(%rsp)
	callq	*%r13
	vmovdqa	(%rsp), %xmm1
	vmovdqa	%xmm1, 336(%rsp)
	vmovdqa	352(%rsp), %xmm0
	vpshufb	.LCPI0_12(%rip), %xmm0, %xmm0
	vpxor	144(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	240(%rsp), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*%r13
	vmovaps	336(%rsp), %xmm0
	vmovaps	%xmm0, 448(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	448(%rsp), %rsi
	movq	%r14, %rdx
	callq	*%r13
	vmovdqa	48(%rsp), %xmm4
	vmovaps	80(%rsp), %xmm10
	vmovaps	96(%rsp), %xmm12
	vmovdqa	112(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm6
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	144(%rsp), %xmm9
	movq	%rbp, %r8
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI0_12(%rip), %xmm0, %xmm0
	vpxor	160(%rsp), %xmm0, %xmm0
	vmovdqa	64(%rsp), %xmm8
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI0_21(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm15
	jmp	.LBB0_36
.LBB0_31:
	vmovdqa	112(%rsp), %xmm14
	vmovaps	96(%rsp), %xmm12
	vmovaps	80(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm4
	vpbroadcastq	.LCPI0_21(%rip), %xmm7
	vmovdqa	64(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm11
.LBB0_36:
	vmovq	%r15, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vmovq	%r8, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm3
	vmovdqa	%xmm4, %xmm7
	vpxor	.LCPI0_18(%rip), %xmm9, %xmm4
	vpxor	%xmm0, %xmm3, %xmm0
	vaesenc	224(%rsp), %xmm4, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	208(%rsp), %xmm3, %xmm3
	vaesenc	192(%rsp), %xmm3, %xmm3
	vaesenc	176(%rsp), %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vpshufb	.LCPI0_19(%rip), %xmm1, %xmm1
	vaesenclast	240(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI0_20(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI0_12(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	(%r12), %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
.LBB0_37:
	addq	$472, %rsp
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
	.size	haberdashery_aes256gcmdndk_broadwell_decrypt, .Lfunc_end0-haberdashery_aes256gcmdndk_broadwell_decrypt
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_0:
	.long	1
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.quad	2
	.quad	0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_28:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndk_broadwell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_broadwell_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_broadwell_encrypt,@function
haberdashery_aes256gcmdndk_broadwell_encrypt:
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
	movq	496(%rsp), %r15
	xorl	%eax, %eax
	cmpq	512(%rsp), %r15
	jne	.LBB1_45
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB1_45
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB1_45
	cmpq	$24, %rdx
	jne	.LBB1_45
	cmpq	$16, 528(%rsp)
	jne	.LBB1_45
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vpbroadcastd	.LCPI1_0(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpinsrd	$2, 16(%rsi), %xmm2, %xmm2
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vpinsrd	$3, 20(%rsi), %xmm2, %xmm1
	vmovaps	(%rdi), %xmm2
	vxorps	%xmm0, %xmm2, %xmm0
	vxorps	%xmm1, %xmm2, %xmm1
	vmovss	.LCPI1_5(%rip), %xmm3
	vxorps	%xmm3, %xmm0, %xmm2
	vxorps	%xmm3, %xmm1, %xmm3
	vmovss	.LCPI1_7(%rip), %xmm5
	vxorps	%xmm5, %xmm0, %xmm4
	vxorps	%xmm5, %xmm1, %xmm5
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
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm2, %xmm1
	vpxor	%xmm0, %xmm1, %xmm13
	vpxor	%xmm0, %xmm4, %xmm4
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpbroadcastd	.LCPI1_6(%rip), %xmm12
	vpshufb	%xmm12, %xmm4, %xmm2
	vaesenclast	.LCPI1_4(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm2, %xmm7
	vaesenc	%xmm4, %xmm13, %xmm1
	vpslldq	$4, %xmm4, %xmm2
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm7, %xmm3
	vpxor	%xmm8, %xmm8, %xmm8
	vaesenclast	%xmm8, %xmm3, %xmm3
	vmovdqa	%xmm4, 256(%rsp)
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm6
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa	%xmm7, 32(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	#NO_APP
	vmovdqa	%xmm6, 80(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm6, %xmm3, %xmm3
	vpshufd	$255, %xmm0, %xmm9
	vaesenclast	%xmm8, %xmm9, %xmm9
	vpxor	%xmm3, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovaps	%xmm0, (%rsp)
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm0, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm9, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpxor	%xmm4, %xmm11, %xmm11
	#NO_APP
	vmovaps	%xmm9, 16(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpshufd	$255, %xmm11, %xmm7
	vaesenclast	%xmm8, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm11, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm11, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm3
	vpshufd	$255, %xmm10, %xmm6
	vaesenclast	%xmm8, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm6, %xmm3, %xmm3
	vpshufd	$255, %xmm0, %xmm15
	vaesenclast	%xmm8, %xmm15, %xmm15
	vpxor	%xmm3, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm0, 48(%rsp)
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm0, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm15, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	#NO_APP
	vpslldq	$4, %xmm15, %xmm2
	vpunpcklqdq	%xmm15, %xmm8, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm15, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm14, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpxor	%xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm4
	vpslldq	$4, %xmm14, %xmm2
	vpunpcklqdq	%xmm14, %xmm8, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm14, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpshufb	%xmm12, %xmm4, %xmm0
	vaesenclast	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm14, %xmm2
	vpxor	%xmm2, %xmm0, %xmm5
	vmovaps	%xmm15, 336(%rsp)
	vaesenc	%xmm15, %xmm1, %xmm0
	vmovaps	%xmm14, 320(%rsp)
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa	%xmm4, 304(%rsp)
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	%xmm6, %xmm4
	vaesenclast	%xmm5, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm3, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpbroadcastq	.LCPI1_28(%rip), %xmm14
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm9, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm9, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm9, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm8
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm15, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm12, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm12, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm12, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vmovdqa	%xmm10, %xmm0
	movq	520(%rsp), %r12
	testq	%r8, %r8
	vmovaps	%xmm11, 224(%rsp)
	vmovaps	%xmm7, 208(%rsp)
	vmovdqa	%xmm10, 112(%rsp)
	vmovdqa	%xmm4, 240(%rsp)
	vmovdqa	%xmm5, 288(%rsp)
	vmovdqa	%xmm15, 192(%rsp)
	vmovdqa	%xmm8, 272(%rsp)
	vmovdqa	%xmm13, 128(%rsp)
	je	.LBB1_6
	cmpq	$96, %r8
	vmovdqa	%xmm12, 160(%rsp)
	jb	.LBB1_9
	vmovdqa	%xmm1, %xmm10
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm4
	vmovdqa	%xmm12, %xmm13
	vmovdqa	%xmm6, %xmm12
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	%xmm9, %xmm11
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vmovdqa	%xmm12, %xmm13
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm10, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm10, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm10, %xmm4
	vmovdqa	%xmm10, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm10, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm8, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm8, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm8, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rax
	cmpq	$192, %r8
	jb	.LBB1_15
	vmovdqa	160(%rsp), %xmm12
	vmovdqa	%xmm9, %xmm10
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
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vmovdqa	272(%rsp), %xmm8
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm1
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB1_23
	jmp	.LBB1_24
.LBB1_6:
	vmovdqa	%xmm0, %xmm10
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm11
	testq	%r15, %r15
	je	.LBB1_44
.LBB1_28:
	movq	504(%rsp), %r14
	cmpq	$96, %r15
	jb	.LBB1_29
.LBB1_34:
	vmovdqa	%xmm3, 96(%rsp)
	vmovdqa	%xmm1, 176(%rsp)
	vmovdqa	%xmm6, 352(%rsp)
	vmovdqa	%xmm9, 368(%rsp)
	leaq	96(%r9), %rcx
	leaq	96(%r14), %rax
	vpxor	.LCPI1_14(%rip), %xmm13, %xmm0
	vpxor	.LCPI1_15(%rip), %xmm13, %xmm1
	vpxor	.LCPI1_16(%rip), %xmm13, %xmm2
	vpxor	.LCPI1_17(%rip), %xmm13, %xmm3
	vpxor	.LCPI1_18(%rip), %xmm13, %xmm4
	vmovdqa	%xmm5, %xmm6
	vpxor	.LCPI1_19(%rip), %xmm13, %xmm5
	vmovaps	256(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
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
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
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
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
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
	vmovaps	48(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	336(%rsp), %xmm6
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
	vmovdqa	304(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovdqa	288(%rsp), %xmm8
	#APP
	vaesenclast	%xmm8, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm1, %xmm1
	vaesenclast	%xmm8, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm4, %xmm4
	vaesenclast	%xmm8, %xmm5, %xmm5
	#NO_APP
	vpxor	(%r9), %xmm0, %xmm13
	vpxor	16(%r9), %xmm1, %xmm10
	vpxor	32(%r9), %xmm2, %xmm0
	vpxor	48(%r9), %xmm3, %xmm2
	vpxor	64(%r9), %xmm4, %xmm11
	vmovdqa	%xmm0, %xmm4
	vpxor	80(%r9), %xmm5, %xmm1
	vmovdqa	%xmm2, %xmm5
	vmovdqu	%xmm13, (%r14)
	vmovdqu	%xmm10, 16(%r14)
	vmovdqu	%xmm0, 32(%r14)
	vmovdqu	%xmm2, 48(%r14)
	vmovdqu	%xmm11, 64(%r14)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm1, 80(%r14)
	vmovd	.LCPI1_8(%rip), %xmm0
	cmpq	$192, %r15
	jb	.LBB1_35
	vmovdqa	%xmm12, 160(%rsp)
	vmovdqa	96(%rsp), %xmm8
	.p2align	4
.LBB1_38:
	vmovdqa	%xmm5, 384(%rsp)
	vmovdqa	%xmm4, 400(%rsp)
	vmovdqa	%xmm10, 144(%rsp)
	vmovdqa	.LCPI1_12(%rip), %xmm9
	vpshufb	%xmm9, %xmm0, %xmm2
	vpaddd	.LCPI1_21(%rip), %xmm0, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm4
	vpaddd	.LCPI1_1(%rip), %xmm0, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm5
	vpaddd	.LCPI1_22(%rip), %xmm0, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm6
	vpaddd	.LCPI1_2(%rip), %xmm0, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm12
	vpaddd	.LCPI1_23(%rip), %xmm0, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm7
	vpshufb	%xmm9, %xmm13, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vmovdqa	%xmm3, 96(%rsp)
	vpshufb	%xmm9, %xmm1, %xmm8
	vmovdqa	128(%rsp), %xmm10
	vpxor	%xmm2, %xmm10, %xmm13
	vpxor	%xmm4, %xmm10, %xmm14
	vpxor	%xmm5, %xmm10, %xmm15
	vpxor	%xmm6, %xmm10, %xmm1
	vpxor	%xmm12, %xmm10, %xmm2
	vpxor	%xmm7, %xmm10, %xmm12
	vmovaps	256(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vxorps	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vmovaps	32(%rsp), %xmm10
	vmovaps	192(%rsp), %xmm3
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm9, %xmm11, %xmm7
	vmovaps	80(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	(%rsp), %xmm3
	vmovaps	368(%rsp), %xmm10
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	384(%rsp), %xmm3
	vpshufb	%xmm9, %xmm3, %xmm7
	vmovaps	16(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	224(%rsp), %xmm3
	vmovaps	352(%rsp), %xmm10
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	400(%rsp), %xmm3
	vpshufb	%xmm9, %xmm3, %xmm7
	vmovaps	208(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	160(%rsp), %xmm10
	vmovaps	112(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	144(%rsp), %xmm3
	vpshufb	%xmm9, %xmm3, %xmm7
	vmovaps	240(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovaps	48(%rsp), %xmm3
	vmovaps	176(%rsp), %xmm9
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovaps	336(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovaps	320(%rsp), %xmm8
	vmovaps	272(%rsp), %xmm10
	vmovaps	96(%rsp), %xmm3
	#APP
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpunpcklqdq	%xmm5, %xmm7, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpunpckhqdq	%xmm7, %xmm5, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpbroadcastq	.LCPI1_28(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpshufd	$78, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm8
	vmovaps	304(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm12, %xmm12
	#NO_APP
	vmovdqa	288(%rsp), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm12, %xmm12
	#NO_APP
	vpxor	(%rcx), %xmm13, %xmm13
	vpxor	16(%rcx), %xmm14, %xmm10
	vpxor	32(%rcx), %xmm15, %xmm4
	vpxor	48(%rcx), %xmm1, %xmm5
	vpxor	64(%rcx), %xmm2, %xmm11
	vpxor	80(%rcx), %xmm12, %xmm1
	addq	$96, %rcx
	vmovdqu	%xmm13, (%rax)
	vmovdqu	%xmm10, 16(%rax)
	vmovdqu	%xmm4, 32(%rax)
	vmovdqu	%xmm5, 48(%rax)
	vmovdqu	%xmm11, 64(%rax)
	vmovdqu	%xmm1, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI1_24(%rip), %xmm0, %xmm0
	cmpq	$95, %rbx
	ja	.LBB1_38
	vmovdqa	%xmm8, 96(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
	vpbroadcastq	.LCPI1_28(%rip), %xmm14
	vmovdqa	192(%rsp), %xmm15
	vmovdqa	160(%rsp), %xmm12
	jmp	.LBB1_36
.LBB1_9:
	movq	%r8, %rax
	vmovdqa	(%rsp), %xmm5
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm11
	cmpq	$16, %rax
	vmovdqa	80(%rsp), %xmm8
	jae	.LBB1_16
.LBB1_11:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_25
	jmp	.LBB1_13
.LBB1_15:
	vmovdqa	160(%rsp), %xmm12
	vmovdqa	%xmm9, %xmm10
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
	vmovdqa	112(%rsp), %xmm0
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	%xmm11, %xmm9
	vmovdqa	%xmm13, %xmm6
	vmovdqa	%xmm10, %xmm1
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	(%rsp), %xmm5
	cmpq	$16, %rax
	vmovdqa	80(%rsp), %xmm8
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
	vmovdqa	%xmm1, 176(%rsp)
	vmovdqa	%xmm6, 352(%rsp)
	vmovdqa	%xmm9, 368(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	%rcx, %rsi
	vmovdqa	%xmm3, 96(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	192(%rsp), %xmm15
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	96(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	testq	%r15, %r15
	je	.LBB1_26
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_28(%rip), %xmm14
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	80(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	368(%rsp), %xmm9
	vmovdqa	352(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm12
	vmovdqa	176(%rsp), %xmm1
	movq	504(%rsp), %r14
	cmpq	$96, %r15
	jae	.LBB1_34
.LBB1_29:
	vmovss	.LCPI1_5(%rip), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	movq	%r15, %rbx
	vmovdqa	%xmm10, %xmm0
	vmovdqa	208(%rsp), %xmm14
	vmovdqa	224(%rsp), %xmm12
	movq	%r8, %r13
	cmpq	$16, %rbx
	jae	.LBB1_40
.LBB1_31:
	vmovdqa	144(%rsp), %xmm9
	jmp	.LBB1_32
.LBB1_35:
	vmovdqa	%xmm0, 144(%rsp)
.LBB1_36:
	vmovdqa	.LCPI1_12(%rip), %xmm3
	vpshufb	%xmm3, %xmm13, %xmm0
	vpxor	96(%rsp), %xmm0, %xmm0
	vpshufb	%xmm3, %xmm10, %xmm2
	vpshufb	%xmm3, %xmm4, %xmm4
	vpshufb	%xmm3, %xmm5, %xmm5
	vpshufb	%xmm3, %xmm11, %xmm6
	vpshufb	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	368(%rsp), %xmm10
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vmovdqa	352(%rsp), %xmm9
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqa	176(%rsp), %xmm8
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa	272(%rsp), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
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
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	movq	%rcx, %r9
	movq	%rax, %r14
	vmovdqa	(%rsp), %xmm5
	vmovdqa	224(%rsp), %xmm12
	vmovdqa	208(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm0
	vmovdqa	48(%rsp), %xmm4
	movq	%r8, %r13
	cmpq	$16, %rbx
	jb	.LBB1_31
.LBB1_40:
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	128(%rsp), %xmm8
	vmovdqa	256(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm6
	vmovdqa	16(%rsp), %xmm1
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	240(%rsp), %xmm15
	.p2align	4
.LBB1_41:
	vmovdqa	.LCPI1_12(%rip), %xmm13
	vpshufb	%xmm13, %xmm9, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	336(%rsp), %xmm2, %xmm2
	vaesenc	320(%rsp), %xmm2, %xmm2
	vaesenc	304(%rsp), %xmm2, %xmm2
	vaesenclast	288(%rsp), %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%r14)
	vpshufb	%xmm13, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm10, %xmm4
	vmovdqa	%xmm12, %xmm13
	vmovdqa	%xmm14, %xmm12
	vmovdqa	%xmm0, %xmm14
	vmovdqa	%xmm5, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm10, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm0, %xmm5
	vmovdqa	%xmm14, %xmm0
	vmovdqa	%xmm12, %xmm14
	vmovdqa	%xmm13, %xmm12
	vpclmulqdq	$17, %xmm2, %xmm10, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_28(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vmovdqa	48(%rsp), %xmm4
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	addq	$16, %r9
	addq	$16, %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_21(%rip), %xmm9, %xmm9
	cmpq	$15, %rbx
	ja	.LBB1_41
.LBB1_32:
	vmovdqa	%xmm9, 144(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_33
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm3, 96(%rsp)
	callq	*%rbp
	vmovdqa	144(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	128(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	336(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenclast	288(%rsp), %xmm0, %xmm0
	vpxor	64(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 272(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovaps	272(%rsp), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	96(%rsp), %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm15
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	movq	%r13, %r8
	jmp	.LBB1_43
.LBB1_33:
	vmovdqa	%xmm0, %xmm10
	movq	%r13, %r8
	vpbroadcastq	.LCPI1_28(%rip), %xmm14
	vmovdqa	192(%rsp), %xmm15
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	80(%rsp), %xmm8
	jmp	.LBB1_44
.LBB1_17:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm1, %xmm10
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm10, %xmm1
	vpxor	%xmm0, %xmm2, %xmm3
	vmovdqa	112(%rsp), %xmm0
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_12
.LBB1_19:
	vmovdqa	%xmm1, 176(%rsp)
	vmovdqa	%xmm0, %xmm10
	vmovdqa	.LCPI1_12(%rip), %xmm0
	.p2align	4
.LBB1_20:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	cmpq	$15, %rax
	ja	.LBB1_20
	movq	%rax, %rdx
	vmovdqa	(%rsp), %xmm5
	vmovdqa	%xmm10, %xmm0
	vmovdqa	176(%rsp), %xmm1
	testq	%rdx, %rdx
	jne	.LBB1_25
.LBB1_13:
	vmovdqa	%xmm0, %xmm10
	vmovdqa	48(%rsp), %xmm4
	testq	%r15, %r15
	jne	.LBB1_28
	jmp	.LBB1_44
.LBB1_26:
	movq	%rbx, %r8
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	80(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm5
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm4
.LBB1_43:
	vpbroadcastq	.LCPI1_28(%rip), %xmm14
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
.LBB1_44:
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	.LCPI1_25(%rip), %xmm13, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vaesenc	208(%rsp), %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	336(%rsp), %xmm3, %xmm3
	vaesenc	320(%rsp), %xmm3, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenclast	288(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_26(%rip), %xmm1, %xmm1
	vpshufb	.LCPI1_27(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm0, (%r12)
	movl	$1, %eax
.LBB1_45:
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
	.size	haberdashery_aes256gcmdndk_broadwell_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_broadwell_encrypt
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
	.section	.text.haberdashery_aes256gcmdndk_broadwell_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_broadwell_init
	.p2align	4
	.type	haberdashery_aes256gcmdndk_broadwell_init,@function
haberdashery_aes256gcmdndk_broadwell_init:
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
	.size	haberdashery_aes256gcmdndk_broadwell_init, .Lfunc_end2-haberdashery_aes256gcmdndk_broadwell_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_broadwell_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndk_broadwell_is_supported,@function
haberdashery_aes256gcmdndk_broadwell_is_supported:
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
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r8
	cpuid
	xchgq	%rbx, %r8

	#NO_APP
	movl	$1, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	andl	$920130051, %esi
	andl	$125829120, %edi
	orl	%esi, %edi
	notl	%r8d
	andl	$524585, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndk_broadwell_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

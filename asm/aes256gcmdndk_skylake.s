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
	.section	.text.haberdashery_aes256gcmdndk_skylake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylake_init,@function
haberdashery_aes256gcmdndk_skylake_init:
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
	.size	haberdashery_aes256gcmdndk_skylake_init, .Lfunc_end0-haberdashery_aes256gcmdndk_skylake_init
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
.LCPI1_28:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_29:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI1_30:
	.byte	8
	.byte	0
.LCPI1_31:
	.byte	2
	.byte	0
	.section	.text.haberdashery_aes256gcmdndk_skylake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylake_encrypt,@function
haberdashery_aes256gcmdndk_skylake_encrypt:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$432, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	480(%rsp), %r15
	xorl	%eax, %eax
	cmpq	496(%rsp), %r15
	jne	.LBB1_49
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB1_49
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB1_49
	cmpq	$24, %rdx
	jne	.LBB1_49
	cmpq	$16, 512(%rsp)
	jne	.LBB1_49
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vpbroadcastd	.LCPI1_0(%rip), %xmm1
	vpinsrd	$1, 12(%rsi), %xmm1, %xmm1
	vpinsrd	$2, 16(%rsi), %xmm1, %xmm1
	vpinsrd	$3, 20(%rsi), %xmm1, %xmm1
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
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpbroadcastd	.LCPI1_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm3
	vaesenclast	.LCPI1_4(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vmovdqa	%xmm5, 16(%rsp)
	vaesenc	%xmm4, %xmm5, %xmm1
	vpslldq	$4, %xmm4, %xmm2
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm6, %xmm3
	vpxor	%xmm10, %xmm10, %xmm10
	vaesenclast	%xmm10, %xmm3, %xmm3
	vmovdqa	%xmm4, 96(%rsp)
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm7
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa	%xmm6, 64(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpxor	%xmm4, %xmm9, %xmm9
	#NO_APP
	vmovdqa	%xmm7, 48(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm3
	vpshufd	$255, %xmm9, %xmm8
	vaesenclast	%xmm10, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovaps	%xmm9, (%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm8, 32(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm6, %xmm11
	vaesenclast	%xmm10, %xmm11, %xmm11
	vpxor	%xmm3, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm11, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm11, %xmm3
	vpshufd	$255, %xmm8, %xmm7
	vaesenclast	%xmm10, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm3
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm10, %xmm15, %xmm15
	vpxor	%xmm3, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm14, 336(%rsp)
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
	vpunpcklqdq	%xmm15, %xmm10, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm15, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm13, %xmm3
	vaesenclast	%xmm10, %xmm3, %xmm3
	vpxor	%xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm5
	vpslldq	$4, %xmm13, %xmm2
	vpunpcklqdq	%xmm13, %xmm10, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm13, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm0
	vaesenclast	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm13, %xmm2
	vpxor	%xmm2, %xmm0, %xmm4
	vmovaps	%xmm15, 320(%rsp)
	vaesenc	%xmm15, %xmm1, %xmm0
	vmovaps	%xmm13, 304(%rsp)
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	%xmm5, %xmm12
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
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
	vpxor	%xmm1, %xmm0, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm3, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm3, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm3, 272(%rsp)
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm15, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm14, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm14, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm14, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	testq	%r8, %r8
	vmovdqa	%xmm6, %xmm0
	vmovdqa	%xmm6, 144(%rsp)
	vmovaps	%xmm11, 256(%rsp)
	vmovaps	%xmm8, 240(%rsp)
	vmovaps	%xmm7, 208(%rsp)
	vmovdqa	%xmm4, 288(%rsp)
	vmovdqa	%xmm9, 224(%rsp)
	vmovdqa	%xmm5, 160(%rsp)
	je	.LBB1_24
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqu	32(%rcx), %xmm1
	vmovdqa	%xmm2, %xmm11
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vmovdqa	272(%rsp), %xmm8
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vmovdqa	%xmm14, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vmovdqa	%xmm10, %xmm14
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm11, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm11, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm11, %xmm4
	vmovdqa	%xmm11, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm11, %xmm5
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
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB1_14
	vmovdqa	272(%rsp), %xmm10
	vmovdqa	%xmm14, %xmm11
	vmovdqa	%xmm7, %xmm14
	.p2align	4, 0x90
.LBB1_22:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
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
	vpclmulqdq	$0, %xmm4, %xmm10, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm10, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vmovdqa	224(%rsp), %xmm9
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm1
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
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB1_22
	jmp	.LBB1_23
.LBB1_24:
	vpxor	%xmm3, %xmm3, %xmm3
	testq	%r15, %r15
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm4
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	%xmm0, %xmm6
	vmovdqa	%xmm12, %xmm11
	vmovdqa	32(%rsp), %xmm12
	jne	.LBB1_29
	jmp	.LBB1_48
.LBB1_7:
	movq	%r8, %rsi
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm4
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	%xmm12, %xmm11
	vmovdqa	32(%rsp), %xmm12
	cmpq	$16, %rsi
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	%xmm2, 192(%rsp)
	jae	.LBB1_15
.LBB1_9:
	movq	%rsi, %rdx
	vmovdqa	%xmm0, %xmm6
	testq	%rdx, %rdx
	jne	.LBB1_11
	jmp	.LBB1_25
.LBB1_14:
	vmovdqa	%xmm14, %xmm11
	vmovdqa	%xmm7, %xmm14
.LBB1_23:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	vmovdqa	144(%rsp), %xmm0
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	%xmm11, %xmm10
	vmovdqa	%xmm12, %xmm2
	vmovdqa	160(%rsp), %xmm11
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm4
	cmpq	$16, %rsi
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	%xmm2, 192(%rsp)
	jb	.LBB1_9
.LBB1_15:
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	vmovdqa	%xmm0, %xmm6
	je	.LBB1_16
	cmpq	$16, %rdx
	jae	.LBB1_18
.LBB1_10:
	testq	%rdx, %rdx
	je	.LBB1_25
.LBB1_11:
	vmovdqa	%xmm3, 80(%rsp)
	vmovdqa	%xmm14, 352(%rsp)
	vmovdqa	%xmm10, 368(%rsp)
	vmovdqa	%xmm15, 128(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	112(%rsp), %xmm0
	testq	%r15, %r15
	je	.LBB1_12
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm4
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm11
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	368(%rsp), %xmm10
	vmovdqa	352(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm1
	jb	.LBB1_49
	movq	%rbx, %r8
	movq	%r14, %r9
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vmovdqa	192(%rsp), %xmm2
	jmp	.LBB1_29
.LBB1_16:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	addq	$16, %rcx
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vmovdqa	192(%rsp), %xmm2
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_18:
	vmovdqa	.LCPI1_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_19:
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
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rsi
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
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	cmpq	$15, %rsi
	ja	.LBB1_19
	movq	%rsi, %rdx
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm4
	vmovdqa	192(%rsp), %xmm2
	testq	%rdx, %rdx
	jne	.LBB1_11
.LBB1_25:
	testq	%r15, %r15
	je	.LBB1_48
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_49
.LBB1_29:
	movq	488(%rsp), %rdx
	cmpq	$96, %r15
	vmovdqa	%xmm15, 128(%rsp)
	jb	.LBB1_30
	vmovdqa	%xmm3, 80(%rsp)
	vmovdqa	%xmm2, 192(%rsp)
	vmovdqa	%xmm10, 368(%rsp)
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vpxor	.LCPI1_14(%rip), %xmm5, %xmm0
	vpxor	.LCPI1_15(%rip), %xmm5, %xmm1
	vpxor	.LCPI1_16(%rip), %xmm5, %xmm2
	vpxor	.LCPI1_17(%rip), %xmm5, %xmm3
	vmovdqa	%xmm9, %xmm10
	vmovdqa	%xmm4, %xmm9
	vpxor	.LCPI1_18(%rip), %xmm5, %xmm4
	vpxor	.LCPI1_19(%rip), %xmm5, %xmm5
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
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
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	256(%rsp), %xmm6
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
	vmovaps	208(%rsp), %xmm6
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
	vmovaps	304(%rsp), %xmm6
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
	vmovaps	288(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	(%r9), %xmm0, %xmm12
	vpxor	16(%r9), %xmm1, %xmm6
	vpxor	32(%r9), %xmm2, %xmm10
	vpxor	48(%r9), %xmm3, %xmm0
	vpxor	64(%r9), %xmm4, %xmm11
	vpxor	80(%r9), %xmm5, %xmm1
	vmovdqa	%xmm0, %xmm5
	vmovdqu	%xmm12, (%rdx)
	vmovdqu	%xmm6, 16(%rdx)
	vmovdqu	%xmm10, 32(%rdx)
	vmovdqu	%xmm0, 48(%rdx)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm11, 64(%rdx)
	vmovdqu	%xmm1, 80(%rdx)
	vpmovsxbq	.LCPI1_30(%rip), %xmm0
	cmpq	$96, %rbx
	jb	.LBB1_36
	vmovdqa	%xmm14, 352(%rsp)
	vmovdqa	80(%rsp), %xmm9
	.p2align	4, 0x90
.LBB1_39:
	vmovdqa	%xmm5, 384(%rsp)
	vmovdqa	%xmm10, 400(%rsp)
	vmovdqa	%xmm6, 176(%rsp)
	vmovdqa	.LCPI1_12(%rip), %xmm10
	vpshufb	%xmm10, %xmm0, %xmm2
	vpaddd	.LCPI1_21(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm4
	vpaddd	.LCPI1_1(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm5
	vpaddd	.LCPI1_22(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm6
	vpaddd	.LCPI1_2(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vpaddd	.LCPI1_23(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm8
	vpshufb	%xmm10, %xmm12, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vmovdqa	%xmm3, 80(%rsp)
	vpshufb	%xmm10, %xmm1, %xmm9
	vmovdqa	16(%rsp), %xmm3
	vpxor	%xmm2, %xmm3, %xmm12
	vpxor	%xmm4, %xmm3, %xmm13
	vpxor	%xmm5, %xmm3, %xmm14
	vpxor	%xmm6, %xmm3, %xmm15
	vpxor	%xmm7, %xmm3, %xmm1
	vpxor	%xmm3, %xmm8, %xmm2
	vmovaps	96(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	#NO_APP
	vxorps	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vmovaps	64(%rsp), %xmm8
	vmovaps	128(%rsp), %xmm3
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm10, %xmm11, %xmm7
	vmovaps	48(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovaps	272(%rsp), %xmm9
	vmovaps	(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	#NO_APP
	vmovdqa	384(%rsp), %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vmovaps	32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	144(%rsp), %xmm3
	vmovaps	368(%rsp), %xmm9
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	#NO_APP
	vmovdqa	400(%rsp), %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vmovaps	256(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	352(%rsp), %xmm9
	vmovaps	240(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	#NO_APP
	vmovdqa	176(%rsp), %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vmovaps	208(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovaps	336(%rsp), %xmm9
	vmovaps	192(%rsp), %xmm3
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	#NO_APP
	vmovaps	320(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovdqa	304(%rsp), %xmm8
	vmovaps	224(%rsp), %xmm9
	vmovaps	80(%rsp), %xmm3
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpunpcklqdq	%xmm4, %xmm7, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpunpckhqdq	%xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpbroadcastq	.LCPI1_29(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpshufd	$78, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovaps	160(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	288(%rsp), %xmm5
	#APP
	vaesenclast	%xmm5, %xmm12, %xmm12
	vaesenclast	%xmm5, %xmm13, %xmm13
	vaesenclast	%xmm5, %xmm14, %xmm14
	vaesenclast	%xmm5, %xmm15, %xmm15
	vaesenclast	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm2, %xmm2
	#NO_APP
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	(%rcx), %xmm12, %xmm12
	vpxor	16(%rcx), %xmm13, %xmm6
	vpxor	32(%rcx), %xmm14, %xmm10
	vpxor	48(%rcx), %xmm15, %xmm5
	vpxor	64(%rcx), %xmm1, %xmm11
	vpxor	80(%rcx), %xmm2, %xmm1
	vpxor	%xmm3, %xmm4, %xmm9
	addq	$96, %rcx
	vmovdqu	%xmm12, (%rax)
	vmovdqu	%xmm6, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm5, 48(%rax)
	vmovdqu	%xmm11, 64(%rax)
	vmovdqu	%xmm1, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI1_24(%rip), %xmm0, %xmm0
	cmpq	$95, %rbx
	ja	.LBB1_39
	vmovdqa	%xmm9, 80(%rsp)
	vmovdqa	%xmm0, 176(%rsp)
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	272(%rsp), %xmm9
	vmovdqa	352(%rsp), %xmm14
	jmp	.LBB1_37
.LBB1_30:
	vpmovsxbq	.LCPI1_31(%rip), %xmm0
	vmovdqa	%xmm0, 176(%rsp)
	movq	%r15, %rbx
	vmovdqa	208(%rsp), %xmm14
	movq	%r8, %r12
	cmpq	$16, %rbx
	jae	.LBB1_41
.LBB1_32:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	176(%rsp), %xmm8
	jmp	.LBB1_33
.LBB1_12:
	movq	%rbx, %r8
	jmp	.LBB1_46
.LBB1_36:
	vmovdqa	%xmm0, 176(%rsp)
	vmovdqa	272(%rsp), %xmm9
.LBB1_37:
	vmovdqa	.LCPI1_12(%rip), %xmm3
	vpshufb	%xmm3, %xmm12, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vpshufb	%xmm3, %xmm6, %xmm2
	vpshufb	%xmm3, %xmm10, %xmm4
	vpshufb	%xmm3, %xmm5, %xmm5
	vpshufb	%xmm3, %xmm11, %xmm6
	vpshufb	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm8
	vmovdqa	%xmm9, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vmovdqa	368(%rsp), %xmm9
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm14, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm14, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm14, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqa	192(%rsp), %xmm8
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa	224(%rsp), %xmm5
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
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm4
	vmovdqa	208(%rsp), %xmm14
	movq	%r8, %r12
	cmpq	$16, %rbx
	jb	.LBB1_32
.LBB1_41:
	vpbroadcastq	.LCPI1_29(%rip), %xmm10
	vmovdqa	128(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	64(%rsp), %xmm6
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	32(%rsp), %xmm0
	vmovdqa	240(%rsp), %xmm11
	vmovdqa	256(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm13
	vmovdqa	.LCPI1_12(%rip), %xmm12
	.p2align	4, 0x90
.LBB1_42:
	vpshufb	%xmm12, %xmm8, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	336(%rsp), %xmm2, %xmm2
	vaesenc	320(%rsp), %xmm2, %xmm2
	vaesenc	304(%rsp), %xmm2, %xmm2
	vaesenc	160(%rsp), %xmm2, %xmm2
	vaesenclast	288(%rsp), %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rdx)
	vpshufb	%xmm12, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm3
	vmovdqa	%xmm4, %xmm15
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm4
	vmovdqa	%xmm14, %xmm11
	vmovdqa	%xmm5, %xmm14
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm14, %xmm5
	vmovdqa	%xmm11, %xmm14
	vmovdqa	240(%rsp), %xmm11
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vmovdqa	%xmm15, %xmm4
	vmovdqa	256(%rsp), %xmm15
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_21(%rip), %xmm8, %xmm8
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB1_42
.LBB1_33:
	vmovdqa	%xmm8, 176(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_34
	vmovdqa	%xmm3, 80(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%rbx, %rdx
	callq	*%r13
	vmovdqa	176(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	336(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenclast	288(%rsp), %xmm0, %xmm0
	vpxor	112(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 224(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r13
	testq	%r15, %r15
	je	.LBB1_44
	vmovaps	224(%rsp), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	112(%rsp), %xmm0
	movq	%r12, %r8
.LBB1_46:
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm4
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm11
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm1
	jmp	.LBB1_47
.LBB1_34:
	movq	%r12, %r8
	vmovdqa	160(%rsp), %xmm11
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm6
	jmp	.LBB1_48
.LBB1_44:
	movq	%r12, %r8
	vmovdqa	16(%rsp), %xmm5
	vmovdqa	96(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm4
	vmovdqa	32(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm11
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm1
	vmovdqa	224(%rsp), %xmm0
.LBB1_47:
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
.LBB1_48:
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
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	.LCPI1_25(%rip), %xmm5, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	208(%rsp), %xmm3, %xmm3
	vaesenc	336(%rsp), %xmm3, %xmm3
	vaesenc	320(%rsp), %xmm3, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vpshufb	.LCPI1_26(%rip), %xmm1, %xmm1
	vaesenclast	288(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_27(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	movq	504(%rsp), %rax
	vmovdqu	%xmm0, (%rax)
	movl	$1, %eax
.LBB1_49:
	addq	$432, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndk_skylake_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_skylake_encrypt
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_0:
	.long	1
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.quad	2
	.quad	0
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
.LCPI2_21:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_22:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI2_23:
	.byte	2
	.byte	0
	.section	.text.haberdashery_aes256gcmdndk_skylake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylake_decrypt,@function
haberdashery_aes256gcmdndk_skylake_decrypt:
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
	subq	$488, %rsp
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	544(%rsp), %r15
	xorl	%eax, %eax
	cmpq	576(%rsp), %r15
	jne	.LBB2_44
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB2_44
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB2_44
	cmpq	$24, %rdx
	jne	.LBB2_44
	cmpq	$16, 560(%rsp)
	jne	.LBB2_44
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vpbroadcastd	.LCPI2_0(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpinsrd	$2, 16(%rsi), %xmm2, %xmm2
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vpinsrd	$3, 20(%rsi), %xmm2, %xmm1
	vmovaps	(%rdi), %xmm2
	vxorps	%xmm0, %xmm2, %xmm0
	vxorps	%xmm1, %xmm2, %xmm1
	vmovss	.LCPI2_5(%rip), %xmm15
	vxorps	%xmm0, %xmm15, %xmm2
	vxorps	%xmm1, %xmm15, %xmm3
	vmovss	.LCPI2_7(%rip), %xmm5
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
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm13
	vpxor	%xmm0, %xmm4, %xmm7
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpbroadcastd	.LCPI2_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm7, %xmm2
	vaesenclast	.LCPI2_4(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vaesenc	%xmm7, %xmm13, %xmm1
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
	vbroadcastss	.LCPI2_5(%rip), %xmm3
	vbroadcastss	.LCPI2_6(%rip), %xmm2
	vmovdqa	%xmm6, 32(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpxor	%xmm4, %xmm9, %xmm9
	#NO_APP
	vmovdqa	%xmm8, 192(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm9, %xmm10
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpxor	%xmm3, %xmm10, %xmm10
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm3
	vmovaps	%xmm9, 176(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vpshufb	%xmm2, %xmm10, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm10, 160(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$255, %xmm8, %xmm6
	vaesenclast	%xmm11, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm3
	vmovaps	%xmm8, (%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovaps	%xmm6, 144(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm6, %xmm3, %xmm3
	vpshufd	$255, %xmm10, %xmm9
	vaesenclast	%xmm11, %xmm9, %xmm9
	vpxor	%xmm3, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	vmovaps	%xmm10, 128(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufb	%xmm2, %xmm9, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm9, 240(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpshufd	$255, %xmm6, %xmm8
	vaesenclast	%xmm11, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm3
	vmovaps	%xmm6, 208(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpxor	%xmm4, %xmm9, %xmm9
	#NO_APP
	vpslldq	$4, %xmm8, %xmm2
	vpunpcklqdq	%xmm8, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm9, %xmm3
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm2, %xmm8, %xmm2
	vpxor	%xmm2, %xmm3, %xmm12
	vpslldq	$4, %xmm9, %xmm2
	vpunpcklqdq	%xmm9, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm9, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm12, %xmm0
	vaesenclast	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm9, %xmm2
	vpxor	%xmm2, %xmm0, %xmm14
	vaesenc	%xmm8, %xmm1, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
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
	vpxor	%xmm1, %xmm0, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm0
	vpbroadcastq	.LCPI2_22(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 400(%rsp)
	movq	552(%rsp), %r12
	testq	%r8, %r8
	vmovaps	%xmm8, 320(%rsp)
	vmovaps	%xmm9, 304(%rsp)
	vmovdqa	%xmm12, 288(%rsp)
	vmovdqa	%xmm14, 272(%rsp)
	vmovdqa	%xmm10, 48(%rsp)
	vmovdqa	%xmm4, 384(%rsp)
	vmovdqa	%xmm11, 368(%rsp)
	vmovdqa	%xmm13, 112(%rsp)
	vmovdqa	%xmm7, 96(%rsp)
	je	.LBB2_37
	cmpq	$96, %r8
	vmovdqa	%xmm3, 64(%rsp)
	jb	.LBB2_7
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqa	%xmm3, %xmm12
	vmovdqu	64(%rcx), %xmm3
	vmovdqa	%xmm4, %xmm9
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI2_12(%rip), %xmm0
	vmovdqa	%xmm5, %xmm8
	vpshufb	%xmm0, %xmm1, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	%xmm8, %xmm14
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	400(%rsp), %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB2_11
	vmovdqa	384(%rsp), %xmm11
	vmovdqa	368(%rsp), %xmm12
	vmovdqa	64(%rsp), %xmm13
	vmovdqa	.LCPI2_12(%rip), %xmm10
	.p2align	4, 0x90
.LBB2_22:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_22(%rip), %xmm9
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
	vmovdqa	48(%rsp), %xmm9
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm14, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm14, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm10, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm1
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
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB2_22
	jmp	.LBB2_23
.LBB2_37:
	vpxor	%xmm2, %xmm2, %xmm2
	xorl	%r8d, %r8d
	testq	%r15, %r15
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	(%rsp), %xmm14
	jne	.LBB2_27
	jmp	.LBB2_38
.LBB2_7:
	movq	%r8, %rsi
	vpxor	%xmm4, %xmm4, %xmm4
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	(%rsp), %xmm14
	cmpq	$16, %rsi
	jae	.LBB2_12
.LBB2_9:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_24
	jmp	.LBB2_19
.LBB2_11:
	vmovdqa	64(%rsp), %xmm13
.LBB2_23:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpbroadcastq	.LCPI2_22(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm4
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	%xmm14, %xmm5
	vmovdqa	(%rsp), %xmm14
	vmovdqa	%xmm13, %xmm3
	vmovdqa	112(%rsp), %xmm13
	cmpq	$16, %rsi
	jb	.LBB2_9
.LBB2_12:
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB2_13
	cmpq	$16, %rdx
	jae	.LBB2_15
.LBB2_18:
	testq	%rdx, %rdx
	je	.LBB2_19
.LBB2_24:
	vmovdqa	%xmm4, 80(%rsp)
	vmovdqa	%xmm5, 336(%rsp)
	movq	%r9, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r8, %r14
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r14, %r8
	vmovdqa	16(%rsp), %xmm0
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB2_45
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	112(%rsp), %xmm13
	vmovss	.LCPI2_5(%rip), %xmm15
	vpbroadcastq	.LCPI2_22(%rip), %xmm4
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	336(%rsp), %xmm5
	jb	.LBB2_44
	movq	%rbx, %r9
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	64(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	jmp	.LBB2_27
.LBB2_13:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	addq	$16, %rcx
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	64(%rsp), %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm4
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB2_18
.LBB2_15:
	vmovdqa	%xmm5, %xmm14
	vmovdqa	.LCPI2_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_16:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
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
	addq	$-32, %rsi
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
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
	vpxor	%xmm1, %xmm3, %xmm4
	cmpq	$15, %rsi
	ja	.LBB2_16
	movq	%rsi, %rdx
	vmovdqa	%xmm14, %xmm5
	vmovdqa	64(%rsp), %xmm3
	vmovdqa	(%rsp), %xmm14
	testq	%rdx, %rdx
	jne	.LBB2_24
.LBB2_19:
	vmovdqa	%xmm4, %xmm2
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB2_38
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_44
.LBB2_27:
	movq	568(%rsp), %rax
	cmpq	$96, %r15
	jb	.LBB2_28
	vpmovsxbq	.LCPI2_23(%rip), %xmm15
	movq	%r15, %rbx
	vmovdqa	%xmm5, 336(%rsp)
	vmovdqa	%xmm3, 64(%rsp)
	vmovdqa	%xmm2, %xmm4
	.p2align	4, 0x90
.LBB2_32:
	vmovdqa	%xmm15, 256(%rsp)
	vmovdqu	(%r9), %xmm7
	vmovdqa	%xmm7, 352(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovdqu	48(%r9), %xmm10
	vmovdqa	%xmm10, 416(%rsp)
	vmovdqu	64(%r9), %xmm8
	vmovdqa	%xmm8, 448(%rsp)
	vmovdqu	80(%r9), %xmm9
	vmovdqa	%xmm9, 80(%rsp)
	vmovdqa	.LCPI2_12(%rip), %xmm12
	vpshufb	%xmm12, %xmm15, %xmm0
	vpaddd	.LCPI2_14(%rip), %xmm15, %xmm1
	vpshufb	%xmm12, %xmm1, %xmm1
	vpaddd	.LCPI2_1(%rip), %xmm15, %xmm2
	vpshufb	%xmm12, %xmm2, %xmm2
	vpaddd	.LCPI2_15(%rip), %xmm15, %xmm3
	vpshufb	%xmm12, %xmm3, %xmm3
	vpaddd	.LCPI2_2(%rip), %xmm15, %xmm5
	vpshufb	%xmm12, %xmm5, %xmm5
	vpaddd	.LCPI2_16(%rip), %xmm15, %xmm6
	vpshufb	%xmm12, %xmm6, %xmm6
	vpshufb	%xmm12, %xmm7, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm4, 432(%rsp)
	vpshufb	%xmm12, %xmm9, %xmm4
	vpxor	%xmm0, %xmm13, %xmm14
	vpxor	%xmm1, %xmm13, %xmm15
	vpxor	%xmm2, %xmm13, %xmm1
	vpxor	%xmm3, %xmm13, %xmm2
	vpxor	%xmm5, %xmm13, %xmm3
	vpxor	112(%rsp), %xmm6, %xmm13
	vmovaps	96(%rsp), %xmm0
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
	vmovaps	48(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	#NO_APP
	vpshufb	%xmm12, %xmm8, %xmm0
	vmovaps	192(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	176(%rsp), %xmm9
	vmovaps	336(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vpshufb	%xmm12, %xmm10, %xmm0
	vmovaps	160(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	#NO_APP
	vmovaps	(%rsp), %xmm9
	vmovaps	384(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovdqa	224(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovdqa	144(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vmovaps	128(%rsp), %xmm9
	vmovaps	64(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovdqu	16(%r9), %xmm0
	vmovaps	240(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm12, %xmm0, %xmm4
	vmovdqa	208(%rsp), %xmm10
	vmovaps	400(%rsp), %xmm12
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vmovaps	320(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovdqa	304(%rsp), %xmm11
	vmovdqa	368(%rsp), %xmm9
	vmovdqa	432(%rsp), %xmm12
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm7, %xmm9, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpunpckhqdq	%xmm9, %xmm7, %xmm5
	vpbroadcastq	.LCPI2_22(%rip), %xmm7
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovaps	288(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	272(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm14, %xmm14
	vaesenclast	%xmm6, %xmm15, %xmm15
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm13, %xmm13
	#NO_APP
	vpxor	352(%rsp), %xmm14, %xmm6
	vpxor	%xmm0, %xmm15, %xmm0
	vmovdqa	256(%rsp), %xmm15
	vpxor	224(%rsp), %xmm1, %xmm1
	vpxor	416(%rsp), %xmm2, %xmm2
	vpxor	448(%rsp), %xmm3, %xmm3
	vmovdqu	%xmm6, (%rax)
	vmovdqu	%xmm0, 16(%rax)
	vmovdqu	%xmm1, 32(%rax)
	vmovdqu	%xmm2, 48(%rax)
	vxorps	80(%rsp), %xmm13, %xmm0
	vmovdqa	112(%rsp), %xmm13
	vmovdqu	%xmm3, 64(%rax)
	vmovups	%xmm0, 80(%rax)
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm4
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI2_17(%rip), %xmm15, %xmm15
	cmpq	$95, %rbx
	ja	.LBB2_32
	vmovdqa	240(%rsp), %xmm6
	cmpq	$16, %rbx
	jb	.LBB2_30
.LBB2_33:
	vmovdqa	48(%rsp), %xmm9
	vmovdqa	160(%rsp), %xmm1
	vmovdqa	192(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm7
	vmovdqa	(%rsp), %xmm12
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	.LCPI2_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_34:
	vmovdqu	(%r9), %xmm2
	vpshufb	%xmm0, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm5
	vmovdqa	%xmm6, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	%xmm8, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_22(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm15, %xmm5
	vpxor	%xmm5, %xmm13, %xmm5
	vaesenc	96(%rsp), %xmm5, %xmm5
	vaesenc	32(%rsp), %xmm5, %xmm5
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	208(%rsp), %xmm5, %xmm5
	vaesenc	320(%rsp), %xmm5, %xmm5
	vaesenc	304(%rsp), %xmm5, %xmm5
	vaesenc	288(%rsp), %xmm5, %xmm5
	vaesenclast	272(%rsp), %xmm5, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vmovdqu	%xmm2, (%rax)
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm2
	vpxor	%xmm3, %xmm2, %xmm4
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI2_14(%rip), %xmm15, %xmm15
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB2_34
	vmovdqa	%xmm4, 80(%rsp)
	testq	%rbx, %rbx
	je	.LBB2_36
.LBB2_39:
	movq	%r8, %r13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm15, 256(%rsp)
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm1
	vmovdqa	256(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	112(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenclast	272(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm1, 256(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 352(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovups	(%r12), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	testq	%r15, %r15
	je	.LBB2_40
	vmovaps	256(%rsp), %xmm0
	vmovaps	%xmm0, 464(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	464(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm0
	movq	%r13, %r8
	jmp	.LBB2_42
.LBB2_28:
	movq	%r15, %rbx
	vmovdqa	%xmm2, %xmm4
	vmovdqa	240(%rsp), %xmm6
	cmpq	$16, %rbx
	jae	.LBB2_33
.LBB2_30:
	movq	%rax, %r14
	vmovdqa	%xmm4, 80(%rsp)
	testq	%rbx, %rbx
	jne	.LBB2_39
.LBB2_36:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, 224(%rsp)
	vmovdqa	208(%rsp), %xmm4
	vpbroadcastq	.LCPI2_22(%rip), %xmm6
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	80(%rsp), %xmm2
	jmp	.LBB2_43
.LBB2_45:
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm10
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_22(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqa	112(%rsp), %xmm13
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	(%rsp), %xmm14
.LBB2_38:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, 224(%rsp)
	vmovdqa	208(%rsp), %xmm4
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	128(%rsp), %xmm12
	jmp	.LBB2_43
.LBB2_40:
	movq	%r13, %r8
	vmovdqa	352(%rsp), %xmm0
.LBB2_42:
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm10
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_22(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqa	112(%rsp), %xmm13
	vmovdqa	96(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm11
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	160(%rsp), %xmm15
	vmovdqa	(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	208(%rsp), %xmm4
.LBB2_43:
	shlq	$3, %r15
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	.LCPI2_18(%rip), %xmm13, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	320(%rsp), %xmm3, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenclast	272(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI2_19(%rip), %xmm1, %xmm1
	vpshufb	.LCPI2_20(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	224(%rsp), %xmm1, %xmm1
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_44:
	addq	$488, %rsp
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
	.size	haberdashery_aes256gcmdndk_skylake_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndk_skylake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylake_is_supported,@function
haberdashery_aes256gcmdndk_skylake_is_supported:
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
	.size	haberdashery_aes256gcmdndk_skylake_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_skylake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

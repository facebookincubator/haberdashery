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
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm0, %xmm4
	vpbroadcastd	.LCPI0_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm5
	vaesenclast	.LCPI0_1(%rip), %xmm5, %xmm5
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
	vaesenclast	.LCPI0_2(%rip), %xmm8, %xmm8
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
	vpxor	%xmm11, %xmm10, %xmm10
	vpshufb	%xmm3, %xmm9, %xmm11
	vaesenclast	.LCPI0_4(%rip), %xmm11, %xmm11
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
	vpshufb	%xmm3, %xmm13, %xmm15
	vaesenclast	.LCPI0_6(%rip), %xmm15, %xmm15
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
	vpshufb	.LCPI0_0(%rip), %xmm6, %xmm15
	vaesenclast	.LCPI0_7(%rip), %xmm15, %xmm15
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
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndk_haswell_init, .Lfunc_end0-haberdashery_aes256gcmdndk_haswell_init
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
	.byte	5
	.byte	0
.LCPI1_32:
	.byte	2
	.byte	0
	.section	.text.haberdashery_aes256gcmdndk_haswell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_haswell_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_haswell_encrypt,@function
haberdashery_aes256gcmdndk_haswell_encrypt:
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
	jne	.LBB1_47
	movabsq	$68719476719, %r10
	cmpq	%r10, %r15
	ja	.LBB1_47
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB1_47
	cmpq	$24, %rdx
	jne	.LBB1_47
	cmpq	$16, 512(%rsp)
	jne	.LBB1_47
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
	vmovdqa	%xmm5, 80(%rsp)
	vaesenc	%xmm4, %xmm5, %xmm1
	vpslldq	$4, %xmm4, %xmm2
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm6, %xmm3
	vpxor	%xmm12, %xmm12, %xmm12
	vaesenclast	%xmm12, %xmm3, %xmm3
	vmovdqa	%xmm4, 48(%rsp)
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm8
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa	%xmm6, 304(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm7, %xmm9
	vmovdqa	%xmm8, 64(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm9, %xmm7
	vaesenclast	%xmm12, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovaps	%xmm9, 256(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm7, 240(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm3
	vpshufd	$255, %xmm6, %xmm10
	vaesenclast	%xmm12, %xmm10, %xmm10
	vpxor	%xmm3, %xmm10, %xmm10
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
	vpshufb	%xmm2, %xmm10, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$255, %xmm7, %xmm11
	vaesenclast	%xmm12, %xmm11, %xmm11
	vpxor	%xmm3, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm11, %xmm15
	vaesenclast	%xmm3, %xmm15, %xmm15
	vpxor	%xmm4, %xmm15, %xmm15
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm11, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm11, %xmm3
	vpshufd	$255, %xmm15, %xmm14
	vaesenclast	%xmm12, %xmm14, %xmm14
	vpxor	%xmm3, %xmm14, %xmm14
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm15, 96(%rsp)
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm4
	vpslldq	$8, %xmm15, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm15, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vpshufb	%xmm2, %xmm14, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpxor	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovdqa	%xmm13, %xmm9
	vpslldq	$4, %xmm14, %xmm2
	vpunpcklqdq	%xmm14, %xmm12, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm14, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm13, %xmm3
	vaesenclast	%xmm12, %xmm3, %xmm3
	vpxor	%xmm2, %xmm14, %xmm2
	vpxor	%xmm2, %xmm3, %xmm4
	vpslldq	$4, %xmm13, %xmm2
	vpunpcklqdq	%xmm13, %xmm12, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm13, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm0
	vaesenclast	.LCPI1_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm13, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovaps	%xmm14, 288(%rsp)
	vaesenc	%xmm14, %xmm1, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	%xmm4, 32(%rsp)
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	%xmm2, 272(%rsp)
	vaesenclast	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm12, %xmm1
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
	vpxor	%xmm0, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm4, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm4, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm4, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm14
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vmovdqa	%xmm4, 336(%rsp)
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm2
	vpxor	%xmm1, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm8, %xmm2
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm8, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm8, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm5
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, 368(%rsp)
	vpshufd	$78, %xmm3, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vmovdqa	%xmm8, 192(%rsp)
	vpclmulqdq	$17, %xmm15, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm12
	testq	%r8, %r8
	vmovdqa	%xmm6, %xmm1
	vmovdqa	%xmm6, 160(%rsp)
	vmovdqa	%xmm10, %xmm3
	vmovdqa	%xmm10, 144(%rsp)
	vmovaps	%xmm7, 224(%rsp)
	vmovdqa	%xmm11, 208(%rsp)
	vmovdqa	%xmm14, 384(%rsp)
	vmovdqa	%xmm9, 176(%rsp)
	je	.LBB1_22
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm5
	vpshufb	%xmm0, %xmm1, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm7
	vpshufb	%xmm0, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm2
	vpshufb	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqa	336(%rsp), %xmm8
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vmovdqa	368(%rsp), %xmm8
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqa	192(%rsp), %xmm9
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm7
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm5
	vmovdqu	(%rcx), %xmm6
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm4
	vpxor	%xmm4, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm7
	vmovdqa	%xmm12, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm8, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm8, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm8, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB1_21
	vmovdqa	336(%rsp), %xmm11
	vmovdqa	384(%rsp), %xmm14
	vmovdqa	192(%rsp), %xmm12
	.p2align	4, 0x90
.LBB1_20:
	vmovdqu	(%rcx), %xmm5
	vmovdqu	32(%rcx), %xmm6
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm3, %xmm9
	vpxor	%xmm2, %xmm9, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm9
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm9
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm5
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm8
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm9
	vpshufb	%xmm0, %xmm6, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpshufb	%xmm0, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm7
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm9
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm4, %xmm14, %xmm9
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm14, %xmm8
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm14, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm14, %xmm4
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm8
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqa	368(%rsp), %xmm8
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm2
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm2
	vpxor	%xmm2, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB1_20
.LBB1_21:
	vpslldq	$8, %xmm3, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpsrldq	$8, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm2
	vmovdqa	160(%rsp), %xmm6
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	176(%rsp), %xmm9
	vmovdqa	%xmm10, %xmm12
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	32(%rsp), %xmm8
	cmpq	$16, %rsi
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm11
	jae	.LBB1_9
	jmp	.LBB1_14
.LBB1_22:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	testq	%r15, %r15
	vmovdqa	96(%rsp), %xmm5
	vmovdqa	32(%rsp), %xmm8
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	%xmm1, %xmm6
	vmovdqa	%xmm3, %xmm7
	vmovdqa	48(%rsp), %xmm10
	jne	.LBB1_27
	jmp	.LBB1_46
.LBB1_7:
	movq	%r8, %rsi
	vmovdqa	32(%rsp), %xmm8
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqa	%xmm1, %xmm6
	vmovdqa	%xmm3, %xmm7
	vmovdqa	48(%rsp), %xmm10
	cmpq	$16, %rsi
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm11
	jb	.LBB1_14
.LBB1_9:
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB1_10
	cmpq	$16, %rdx
	jae	.LBB1_12
.LBB1_15:
	testq	%rdx, %rdx
	vmovdqa	%xmm2, (%rsp)
	je	.LBB1_23
.LBB1_16:
	vmovdqa	%xmm12, 320(%rsp)
	vmovdqa	%xmm15, 128(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	112(%rsp), %xmm1
	testq	%r15, %r15
	je	.LBB1_17
	movabsq	$-68719476720, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm6
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm8
	vpbroadcastq	.LCPI1_29(%rip), %xmm4
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	320(%rsp), %xmm12
	jb	.LBB1_47
	movq	%rbx, %r8
	movq	%r14, %r9
	vpshufb	.LCPI1_12(%rip), %xmm1, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm0, (%rsp)
	jmp	.LBB1_27
.LBB1_10:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	addq	$16, %rcx
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
	vpxor	%xmm0, %xmm3, %xmm2
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB1_15
.LBB1_12:
	vmovdqa	.LCPI1_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_13:
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
	addq	$-32, %rsi
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
	cmpq	$15, %rsi
	ja	.LBB1_13
.LBB1_14:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	vmovdqa	%xmm2, (%rsp)
	jne	.LBB1_16
.LBB1_23:
	testq	%r15, %r15
	vmovdqa	96(%rsp), %xmm5
	je	.LBB1_46
	movabsq	$-68719476720, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_47
.LBB1_27:
	movq	488(%rsp), %rdx
	cmpq	$96, %r15
	vmovdqa	%xmm15, 128(%rsp)
	jb	.LBB1_28
	vmovdqa	%xmm12, 320(%rsp)
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vpxor	.LCPI1_14(%rip), %xmm11, %xmm0
	vpxor	.LCPI1_15(%rip), %xmm11, %xmm1
	vpxor	.LCPI1_16(%rip), %xmm11, %xmm2
	vpxor	.LCPI1_17(%rip), %xmm11, %xmm3
	vpxor	.LCPI1_18(%rip), %xmm11, %xmm4
	vmovdqa	%xmm5, %xmm13
	vpxor	.LCPI1_19(%rip), %xmm11, %xmm5
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	#NO_APP
	vmovdqa	304(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	#NO_APP
	vmovaps	256(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	#NO_APP
	vmovaps	240(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
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
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
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
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	#NO_APP
	vmovaps	288(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
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
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	vmovdqa	272(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	(%r9), %xmm0, %xmm13
	vpxor	16(%r9), %xmm1, %xmm14
	vpxor	32(%r9), %xmm2, %xmm1
	vpxor	48(%r9), %xmm3, %xmm7
	vpxor	64(%r9), %xmm4, %xmm11
	vpxor	80(%r9), %xmm5, %xmm2
	vmovdqu	%xmm13, (%rdx)
	vmovdqu	%xmm14, 16(%rdx)
	vmovdqu	%xmm1, 32(%rdx)
	vmovdqu	%xmm7, 48(%rdx)
	vmovdqu	%xmm11, 64(%rdx)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm2, 80(%rdx)
	cmpq	$96, %rbx
	jb	.LBB1_34
	vpmovsxbq	.LCPI1_30(%rip), %xmm8
	vmovdqa	(%rsp), %xmm0
	vmovdqa	%xmm14, %xmm10
	vmovdqa	.LCPI1_12(%rip), %xmm9
	.p2align	4, 0x90
.LBB1_37:
	vmovdqa	%xmm7, 352(%rsp)
	vmovdqa	%xmm1, 400(%rsp)
	vmovdqa	%xmm8, 16(%rsp)
	vpshufb	%xmm9, %xmm8, %xmm3
	vpaddd	.LCPI1_21(%rip), %xmm8, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm5
	vpaddd	.LCPI1_1(%rip), %xmm8, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm6
	vpaddd	.LCPI1_22(%rip), %xmm8, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm7
	vpaddd	.LCPI1_2(%rip), %xmm8, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm12
	vpmovsxbq	.LCPI1_31(%rip), %xmm4
	vpaddd	16(%rsp), %xmm4, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm8
	vpshufb	%xmm9, %xmm13, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpshufb	%xmm9, %xmm2, %xmm0
	vmovdqa	80(%rsp), %xmm1
	vpxor	%xmm3, %xmm1, %xmm13
	vpxor	%xmm5, %xmm1, %xmm14
	vpxor	%xmm6, %xmm1, %xmm15
	vpxor	%xmm7, %xmm1, %xmm2
	vpxor	%xmm1, %xmm12, %xmm3
	vpxor	%xmm1, %xmm8, %xmm12
	vmovaps	48(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vxorps	%xmm5, %xmm5, %xmm5
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	304(%rsp), %xmm4
	vmovaps	128(%rsp), %xmm1
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpshufb	%xmm9, %xmm11, %xmm0
	vmovaps	64(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	#NO_APP
	vmovaps	256(%rsp), %xmm1
	vmovaps	336(%rsp), %xmm4
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovdqa	352(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	240(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	#NO_APP
	vmovaps	160(%rsp), %xmm1
	vmovaps	384(%rsp), %xmm4
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovdqa	400(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	144(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	#NO_APP
	vmovaps	192(%rsp), %xmm11
	vmovaps	224(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpshufb	%xmm9, %xmm10, %xmm0
	vmovaps	208(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	#NO_APP
	vmovaps	96(%rsp), %xmm1
	vmovaps	320(%rsp), %xmm4
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovaps	288(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm12, %xmm12
	#NO_APP
	vmovdqa	176(%rsp), %xmm1
	vmovaps	368(%rsp), %xmm4
	vmovaps	(%rsp), %xmm8
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm6, %xmm1, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpunpckhqdq	%xmm1, %xmm6, %xmm4
	vpbroadcastq	.LCPI1_29(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm0
	vmovaps	32(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm12
	#NO_APP
	vmovdqa	272(%rsp), %xmm5
	#APP
	vaesenclast	%xmm5, %xmm13, %xmm13
	vaesenclast	%xmm5, %xmm14, %xmm14
	vaesenclast	%xmm5, %xmm15, %xmm15
	vaesenclast	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm12, %xmm12
	#NO_APP
	vpxor	(%rcx), %xmm13, %xmm13
	vpxor	16(%rcx), %xmm14, %xmm10
	vpxor	32(%rcx), %xmm15, %xmm1
	vpxor	48(%rcx), %xmm2, %xmm7
	vpxor	64(%rcx), %xmm3, %xmm11
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	80(%rcx), %xmm12, %xmm2
	vmovdqa	16(%rsp), %xmm8
	addq	$96, %rcx
	vmovdqu	%xmm13, (%rax)
	vmovdqu	%xmm10, 16(%rax)
	vmovdqu	%xmm1, 32(%rax)
	vmovdqu	%xmm7, 48(%rax)
	vmovdqu	%xmm11, 64(%rax)
	vmovdqu	%xmm2, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI1_24(%rip), %xmm8, %xmm8
	cmpq	$95, %rbx
	ja	.LBB1_37
	vmovdqa	%xmm7, 352(%rsp)
	vmovdqa	%xmm1, %xmm12
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	%xmm8, 16(%rsp)
	vmovdqa	128(%rsp), %xmm15
	jmp	.LBB1_35
.LBB1_28:
	vpmovsxbq	.LCPI1_32(%rip), %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	movq	%r15, %rbx
	vmovdqa	(%rsp), %xmm4
	movq	%r8, %r12
	cmpq	$16, %rbx
	jae	.LBB1_39
.LBB1_30:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	16(%rsp), %xmm11
	jmp	.LBB1_31
.LBB1_17:
	movq	%rbx, %r8
	jmp	.LBB1_44
.LBB1_34:
	vmovdqa	%xmm7, 352(%rsp)
	vmovdqa	%xmm1, %xmm12
	vmovdqa	%xmm14, %xmm10
	vpmovsxbq	.LCPI1_30(%rip), %xmm0
	vmovdqa	%xmm0, 16(%rsp)
.LBB1_35:
	vmovdqa	192(%rsp), %xmm14
	vmovdqa	.LCPI1_12(%rip), %xmm3
	vpshufb	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm4
	vpshufb	%xmm3, %xmm11, %xmm5
	vmovdqa	336(%rsp), %xmm0
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm7
	vpshufb	%xmm3, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm8
	vpxor	(%rsp), %xmm1, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpshufb	%xmm3, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm11
	vpshufb	%xmm3, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm12
	vmovdqa	352(%rsp), %xmm10
	vpshufb	%xmm3, %xmm10, %xmm3
	vmovdqa	384(%rsp), %xmm13
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm10
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm12
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm6
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm3
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm9, %xmm14, %xmm5
	vpxor	%xmm6, %xmm12, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm14, %xmm8
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$16, %xmm9, %xmm14, %xmm10
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm14, %xmm5
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	320(%rsp), %xmm7
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
	vpbroadcastq	.LCPI1_29(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm4
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa	96(%rsp), %xmm5
	movq	%r8, %r12
	cmpq	$16, %rbx
	jb	.LBB1_30
.LBB1_39:
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	240(%rsp), %xmm6
	vmovdqa	256(%rsp), %xmm1
	vmovdqa	64(%rsp), %xmm0
	vmovdqa	80(%rsp), %xmm15
	vmovdqa	208(%rsp), %xmm13
	vmovdqa	224(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm8
	vpbroadcastq	.LCPI1_29(%rip), %xmm9
	.p2align	4, 0x90
.LBB1_40:
	vmovdqa	.LCPI1_12(%rip), %xmm3
	vpshufb	%xmm3, %xmm11, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenc	304(%rsp), %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	288(%rsp), %xmm2, %xmm2
	vaesenc	176(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenclast	272(%rsp), %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vpshufb	%xmm3, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm5
	vmovdqu	%xmm2, (%rdx)
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm2
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqa	96(%rsp), %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpxor	%xmm2, %xmm4, %xmm4
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_21(%rip), %xmm11, %xmm11
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB1_40
.LBB1_31:
	vmovdqa	%xmm4, (%rsp)
	vmovdqa	%xmm11, 16(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_32
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%rbx, %rdx
	callq	*%r13
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenclast	272(%rsp), %xmm0, %xmm0
	vpxor	112(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r13
	testq	%r15, %r15
	je	.LBB1_42
	vmovdqa	16(%rsp), %xmm0
	vmovdqa	%xmm0, 416(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	112(%rsp), %xmm1
	movq	%r12, %r8
.LBB1_44:
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm6
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm8
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	jmp	.LBB1_45
.LBB1_32:
	movq	%r12, %r8
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm8
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm6
	vmovdqa	144(%rsp), %xmm7
	jmp	.LBB1_46
.LBB1_42:
	movq	%r12, %r8
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm6
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm8
	vpbroadcastq	.LCPI1_29(%rip), %xmm13
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	16(%rsp), %xmm1
.LBB1_45:
	vpshufb	.LCPI1_12(%rip), %xmm1, %xmm0
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
.LBB1_46:
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
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
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpxor	.LCPI1_25(%rip), %xmm11, %xmm4
	vpxor	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vaesenc	208(%rsp), %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vpshufb	.LCPI1_26(%rip), %xmm2, %xmm2
	vaesenclast	272(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_27(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	movq	504(%rsp), %rax
	vmovdqu	%xmm0, (%rax)
	movl	$1, %eax
.LBB1_47:
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
	.size	haberdashery_aes256gcmdndk_haswell_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_haswell_encrypt
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
	jne	.LBB2_45
	movabsq	$68719476719, %r10
	cmpq	%r10, %r15
	ja	.LBB2_45
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB2_45
	cmpq	$24, %rdx
	jne	.LBB2_45
	cmpq	$16, 560(%rsp)
	jne	.LBB2_45
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vpbroadcastd	.LCPI2_0(%rip), %xmm1
	vpinsrd	$1, 12(%rsi), %xmm1, %xmm1
	vpinsrd	$2, 16(%rsi), %xmm1, %xmm1
	vpinsrd	$3, 20(%rsi), %xmm1, %xmm1
	vmovaps	(%rdi), %xmm2
	vxorps	%xmm0, %xmm2, %xmm0
	vxorps	%xmm1, %xmm2, %xmm1
	vmovss	.LCPI2_5(%rip), %xmm7
	vxorps	%xmm7, %xmm0, %xmm2
	vxorps	%xmm7, %xmm1, %xmm3
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
	vpxor	%xmm0, %xmm4, %xmm4
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm13, %xmm2
	vpbroadcastd	.LCPI2_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm3
	vaesenclast	.LCPI2_4(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vaesenc	%xmm4, %xmm13, %xmm1
	vpslldq	$4, %xmm4, %xmm2
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm6, %xmm3
	vpxor	%xmm11, %xmm11, %xmm11
	vaesenclast	%xmm11, %xmm3, %xmm3
	vmovdqa	%xmm4, 208(%rsp)
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm8
	vbroadcastss	.LCPI2_5(%rip), %xmm3
	vbroadcastss	.LCPI2_6(%rip), %xmm2
	vmovdqa	%xmm6, 192(%rsp)
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
	vmovdqa	%xmm8, 176(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm9, %xmm6
	vaesenclast	%xmm11, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm3
	vmovaps	%xmm9, 128(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm9, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
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
	vpshufd	$255, %xmm10, %xmm15
	vaesenclast	%xmm11, %xmm15, %xmm15
	vpxor	%xmm3, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm3
	vmovaps	%xmm10, 112(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufb	%xmm2, %xmm15, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	%xmm15, 256(%rsp)
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm3
	vpslldq	$8, %xmm15, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm15, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vpshufd	$255, %xmm14, %xmm9
	vaesenclast	%xmm11, %xmm9, %xmm9
	vpxor	%xmm3, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	vmovaps	%xmm14, 96(%rsp)
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm14, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vpshufb	%xmm2, %xmm9, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovdqa	%xmm9, %xmm14
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpshufd	$255, %xmm6, %xmm15
	vaesenclast	%xmm11, %xmm15, %xmm15
	vpxor	%xmm3, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm3
	vmovaps	%xmm6, 160(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm15, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm8
	#NO_APP
	vpslldq	$4, %xmm15, %xmm2
	vpunpcklqdq	%xmm15, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm15, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm8, %xmm3
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm12
	vpslldq	$4, %xmm8, %xmm2
	vpunpcklqdq	%xmm8, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm12, %xmm0
	vaesenclast	.LCPI2_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm8, %xmm2
	vpxor	%xmm2, %xmm0, %xmm3
	vaesenc	%xmm15, %xmm1, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm11, %xmm1
	vmovdqa	%xmm3, %xmm11
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm2
	vpshufd	$78, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm9
	vmovdqa	%xmm4, 400(%rsp)
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm4
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 352(%rsp)
	vpshufd	$78, %xmm3, %xmm0
	vmovdqa	%xmm9, %xmm3
	vpxor	%xmm0, %xmm4, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm2
	movq	552(%rsp), %r12
	testq	%r8, %r8
	vmovaps	%xmm15, 320(%rsp)
	vmovaps	%xmm8, 304(%rsp)
	vmovdqa	%xmm12, 288(%rsp)
	vmovdqa	%xmm11, 272(%rsp)
	vmovdqa	%xmm6, 16(%rsp)
	vmovdqa	%xmm13, 80(%rsp)
	vmovdqa	%xmm14, 48(%rsp)
	je	.LBB2_38
	cmpq	$96, %r8
	jb	.LBB2_7
	vmovdqu	32(%rcx), %xmm1
	vmovdqa	%xmm2, %xmm12
	vmovdqu	48(%rcx), %xmm2
	vmovdqa	%xmm3, %xmm15
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI2_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm4
	vmovdqa	%xmm5, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm5
	vmovdqa	%xmm6, %xmm8
	vpshufb	%xmm0, %xmm1, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm7
	vpshufb	%xmm0, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm2
	vpshufb	%xmm0, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqa	%xmm9, %xmm11
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vmovdqa	352(%rsp), %xmm8
	vpxor	%xmm4, %xmm3, %xmm3
	vmovdqa	400(%rsp), %xmm14
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm7
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqa	%xmm15, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm5
	vmovdqu	(%rcx), %xmm6
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm4
	vpxor	%xmm4, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm7
	vmovdqa	%xmm12, %xmm15
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm8, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm8, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm8, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB2_11
	vmovdqa	16(%rsp), %xmm12
	vpbroadcastq	.LCPI2_22(%rip), %xmm13
	.p2align	4, 0x90
.LBB2_22:
	vmovdqu	(%rcx), %xmm5
	vmovdqu	32(%rcx), %xmm6
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm3, %xmm9
	vpxor	%xmm2, %xmm9, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm9
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm9
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm5
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm8
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm9
	vpshufb	%xmm0, %xmm6, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpshufb	%xmm0, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm7
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm9
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm4, %xmm14, %xmm9
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm14, %xmm8
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm14, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm10, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vmovdqa	352(%rsp), %xmm9
	vpclmulqdq	$17, %xmm4, %xmm14, %xmm4
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm10, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm10, %xmm8
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm10, %xmm2
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm15, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm15, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm15, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB2_22
	jmp	.LBB2_23
.LBB2_38:
	vmovdqa	%xmm14, %xmm9
	vpxor	%xmm14, %xmm14, %xmm14
	xorl	%r8d, %r8d
	testq	%r15, %r15
	jne	.LBB2_27
	jmp	.LBB2_39
.LBB2_7:
	vmovdqa	%xmm14, %xmm9
	movq	%r8, %rsi
	vpxor	%xmm14, %xmm14, %xmm14
	cmpq	$16, %rsi
	jae	.LBB2_12
.LBB2_9:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_24
	jmp	.LBB2_19
.LBB2_11:
	vmovdqa	16(%rsp), %xmm12
.LBB2_23:
	vpslldq	$8, %xmm3, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_22(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm14
	vmovss	.LCPI2_5(%rip), %xmm7
	vmovdqa	%xmm12, %xmm6
	vmovdqa	%xmm11, %xmm5
	vmovdqa	48(%rsp), %xmm9
	vmovdqa	%xmm15, %xmm2
	vmovdqa	%xmm10, %xmm3
	vmovdqa	80(%rsp), %xmm13
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
	vmovdqa	%xmm14, 32(%rsp)
	vmovdqa	%xmm2, 224(%rsp)
	vmovdqa	%xmm3, 240(%rsp)
	vmovdqa	%xmm5, 336(%rsp)
	movq	%r9, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	movq	%r8, %r14
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r14, %r8
	vmovdqa	(%rsp), %xmm0
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB2_46
	movabsq	$-68719476720, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	80(%rsp), %xmm13
	vmovss	.LCPI2_5(%rip), %xmm7
	vmovdqa	16(%rsp), %xmm6
	vmovdqa	336(%rsp), %xmm5
	vmovdqa	240(%rsp), %xmm10
	vmovdqa	224(%rsp), %xmm12
	vmovdqa	32(%rsp), %xmm1
	jb	.LBB2_45
	movq	%rbx, %r9
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
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
	vmovdqa	%xmm12, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm14
	vmovdqa	%xmm10, %xmm3
	jmp	.LBB2_27
.LBB2_13:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vmovdqa	%xmm2, %xmm14
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vmovdqa	%xmm3, %xmm10
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
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
	vmovdqa	%xmm14, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm14
	vmovdqa	%xmm10, %xmm3
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB2_18
.LBB2_15:
	vmovdqa	%xmm2, 224(%rsp)
	vmovdqa	%xmm3, 240(%rsp)
	vmovdqa	%xmm5, %xmm11
	vmovdqa	.LCPI2_12(%rip), %xmm0
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	.p2align	4, 0x90
.LBB2_16:
	vmovdqu	(%rcx), %xmm1
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
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
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm2
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm3
	addq	$-32, %rsi
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
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
	vpxor	%xmm1, %xmm3, %xmm14
	cmpq	$15, %rsi
	ja	.LBB2_16
	movq	%rsi, %rdx
	vmovdqa	%xmm11, %xmm5
	vmovdqa	240(%rsp), %xmm3
	vmovdqa	224(%rsp), %xmm2
	testq	%rdx, %rdx
	jne	.LBB2_24
.LBB2_19:
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB2_39
	movabsq	$-68719476720, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_45
.LBB2_27:
	movq	568(%rsp), %rax
	cmpq	$96, %r15
	jb	.LBB2_28
	vpmovsxbq	.LCPI2_23(%rip), %xmm7
	movq	%r15, %rbx
	vmovdqa	%xmm5, 336(%rsp)
	vmovdqa	%xmm3, 240(%rsp)
	vmovdqa	%xmm2, 224(%rsp)
	.p2align	4, 0x90
.LBB2_32:
	vmovdqa	%xmm7, 64(%rsp)
	vmovdqu	(%r9), %xmm9
	vmovdqa	%xmm9, 368(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovdqu	48(%r9), %xmm11
	vmovdqa	%xmm11, 416(%rsp)
	vmovdqu	64(%r9), %xmm4
	vmovdqa	%xmm4, 448(%rsp)
	vmovdqu	80(%r9), %xmm8
	vmovdqa	%xmm8, 384(%rsp)
	vmovdqa	.LCPI2_12(%rip), %xmm12
	vpshufb	%xmm12, %xmm7, %xmm0
	vpaddd	.LCPI2_14(%rip), %xmm7, %xmm1
	vpshufb	%xmm12, %xmm1, %xmm1
	vpaddd	.LCPI2_1(%rip), %xmm7, %xmm2
	vpshufb	%xmm12, %xmm2, %xmm2
	vpaddd	.LCPI2_15(%rip), %xmm7, %xmm3
	vpshufb	%xmm12, %xmm3, %xmm3
	vpaddd	.LCPI2_2(%rip), %xmm7, %xmm5
	vpshufb	%xmm12, %xmm5, %xmm5
	vpaddd	.LCPI2_16(%rip), %xmm7, %xmm6
	vpshufb	%xmm12, %xmm6, %xmm6
	vpshufb	%xmm12, %xmm9, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vmovdqa	%xmm7, 432(%rsp)
	vpshufb	%xmm12, %xmm8, %xmm8
	vpxor	%xmm0, %xmm13, %xmm14
	vpxor	%xmm1, %xmm13, %xmm15
	vpxor	%xmm2, %xmm13, %xmm1
	vpxor	%xmm3, %xmm13, %xmm2
	vpxor	%xmm5, %xmm13, %xmm3
	vpxor	80(%rsp), %xmm6, %xmm13
	vmovaps	208(%rsp), %xmm0
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
	vmovaps	16(%rsp), %xmm9
	vmovaps	192(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm8, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm8, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	#NO_APP
	vpshufb	%xmm12, %xmm4, %xmm0
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
	vmovaps	336(%rsp), %xmm10
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vpshufb	%xmm12, %xmm11, %xmm0
	vmovaps	144(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	400(%rsp), %xmm9
	vmovdqa	112(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovdqa	32(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovaps	256(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	240(%rsp), %xmm9
	vmovdqa	96(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovdqu	16(%r9), %xmm0
	vmovaps	48(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm12, %xmm0, %xmm4
	vmovaps	160(%rsp), %xmm10
	vmovaps	224(%rsp), %xmm12
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
	vmovdqa	352(%rsp), %xmm9
	vmovdqa	304(%rsp), %xmm10
	vmovdqa	432(%rsp), %xmm12
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
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
	vmovdqa	64(%rsp), %xmm7
	vpxor	%xmm5, %xmm6, %xmm5
	vpbroadcastq	.LCPI2_22(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm6, %xmm4, %xmm5
	vmovaps	288(%rsp), %xmm4
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
	vpxor	32(%rsp), %xmm1, %xmm1
	vpxor	416(%rsp), %xmm2, %xmm2
	vpxor	448(%rsp), %xmm3, %xmm3
	vmovdqu	%xmm4, (%rax)
	vmovdqa	%xmm5, %xmm14
	vmovdqu	%xmm0, 16(%rax)
	vmovdqu	%xmm1, 32(%rax)
	vmovdqu	%xmm2, 48(%rax)
	vmovdqu	%xmm3, 64(%rax)
	vpxor	384(%rsp), %xmm13, %xmm0
	vmovdqa	80(%rsp), %xmm13
	vmovdqu	%xmm0, 80(%rax)
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI2_17(%rip), %xmm7, %xmm7
	cmpq	$95, %rbx
	ja	.LBB2_32
	vpbroadcastq	.LCPI2_22(%rip), %xmm1
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	16(%rsp), %xmm6
	cmpq	$16, %rbx
	jae	.LBB2_34
.LBB2_30:
	movq	%rax, %r14
	jmp	.LBB2_36
.LBB2_28:
	vpbroadcastq	.LCPI2_22(%rip), %xmm1
	movq	%r15, %rbx
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	256(%rsp), %xmm11
	cmpq	$16, %rbx
	jb	.LBB2_30
.LBB2_34:
	vmovdqa	128(%rsp), %xmm0
	vmovdqa	112(%rsp), %xmm9
	vmovdqa	96(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm12
	vmovdqa	.LCPI2_12(%rip), %xmm8
	.p2align	4, 0x90
.LBB2_35:
	vmovdqu	(%r9), %xmm2
	vpshufb	%xmm8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm14, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm6, %xmm4
	vmovdqa	%xmm5, %xmm15
	vpclmulqdq	$1, %xmm3, %xmm6, %xmm5
	vpclmulqdq	$1, 16(%rsp), %xmm3, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	16(%rsp), %xmm6
	vpclmulqdq	$17, %xmm3, %xmm6, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm15, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm14
	vpshufb	%xmm8, %xmm7, %xmm3
	vpxor	%xmm3, %xmm13, %xmm3
	vaesenc	208(%rsp), %xmm3, %xmm3
	vaesenc	192(%rsp), %xmm3, %xmm3
	vaesenc	176(%rsp), %xmm3, %xmm3
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	160(%rsp), %xmm3, %xmm3
	vaesenc	320(%rsp), %xmm3, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenclast	272(%rsp), %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rax)
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI2_14(%rip), %xmm7, %xmm7
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB2_35
.LBB2_36:
	vmovdqa	%xmm14, 32(%rsp)
	testq	%rbx, %rbx
	je	.LBB2_37
	movq	%r8, %r13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm7, 64(%rsp)
	callq	*%rbp
	vmovdqa	(%rsp), %xmm1
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	320(%rsp), %xmm0, %xmm0
	vaesenc	304(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenclast	272(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm1, 384(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 368(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovups	(%r12), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	testq	%r15, %r15
	je	.LBB2_41
	vmovaps	384(%rsp), %xmm0
	vmovaps	%xmm0, 464(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	464(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	movq	%r13, %r8
	jmp	.LBB2_43
.LBB2_37:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	160(%rsp), %xmm4
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vmovdqa	208(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm9
	vmovdqa	32(%rsp), %xmm2
	jmp	.LBB2_44
.LBB2_46:
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm6
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
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
	vpxor	%xmm0, %xmm3, %xmm14
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	48(%rsp), %xmm9
.LBB2_39:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	%xmm14, %xmm2
	vmovdqa	160(%rsp), %xmm4
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm14
	vpbroadcastq	.LCPI2_22(%rip), %xmm10
	vmovdqa	208(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	128(%rsp), %xmm15
	jmp	.LBB2_44
.LBB2_41:
	movq	%r13, %r8
	vmovdqa	368(%rsp), %xmm0
.LBB2_43:
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm6
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
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
	vpxor	%xmm0, %xmm3, %xmm2
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	208(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm11
	vmovdqa	176(%rsp), %xmm8
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm9
	vmovdqa	160(%rsp), %xmm4
.LBB2_44:
	shlq	$3, %r15
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	.LCPI2_18(%rip), %xmm13, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	320(%rsp), %xmm3, %xmm3
	vaesenc	304(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenclast	272(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI2_19(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_20(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	64(%rsp), %xmm1, %xmm1
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_45:
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

	.ident	"rustc version 1.83.0-nightly (4ac7bcbaa 2024-09-04)"
	.section	".note.GNU-stack","",@progbits

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
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2kc_skylake_init,@function
haberdashery_aes256gcmdndkv2kc_skylake_init:
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
	.size	haberdashery_aes256gcmdndkv2kc_skylake_init, .Lfunc_end0-haberdashery_aes256gcmdndkv2kc_skylake_init
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
.LCPI1_27:
	.zero	16
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
.LCPI1_28:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2kc_skylake_encrypt,@function
haberdashery_aes256gcmdndkv2kc_skylake_encrypt:
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
	jne	.LBB1_50
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB1_50
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB1_50
	cmpq	$24, %rdx
	jne	.LBB1_50
	cmpq	$48, 544(%rsp)
	jne	.LBB1_50
	vmovdqu	(%rsi), %xmm0
	vpextrb	$15, %xmm0, %edx
	vpand	.LCPI1_0(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm10
	vpxor	.LCPI1_1(%rip), %xmm10, %xmm2
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm9
	vmovdqa	48(%rdi), %xmm1
	vmovdqa	64(%rdi), %xmm0
	vmovdqa	%xmm0, 16(%rsp)
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
	vaesenc	%xmm11, %xmm14, %xmm14
	vpxor	.LCPI1_4(%rip), %xmm10, %xmm15
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
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	16(%rsp), %xmm0
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
	vmovdqa	(%rsp), %xmm0
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
	vmovdqa	%xmm5, 16(%rsp)
	vaesenc	%xmm6, %xmm5, %xmm3
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm8, %xmm5
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm5, %xmm5
	vmovdqa	%xmm6, 64(%rsp)
	vpxor	%xmm6, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm11
	vbroadcastss	.LCPI1_8(%rip), %xmm5
	vbroadcastss	.LCPI1_9(%rip), %xmm4
	vmovdqa	%xmm8, 288(%rsp)
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vpslldq	$4, %xmm8, %xmm6
	vpslldq	$8, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpshufb	%xmm4, %xmm11, %xmm10
	vaesenclast	%xmm5, %xmm10, %xmm10
	vpxor	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovdqa	%xmm11, 272(%rsp)
	#APP
	vaesenc	%xmm11, %xmm3, %xmm3
	vpslldq	$4, %xmm11, %xmm5
	vpslldq	$8, %xmm11, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm11, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm11, %xmm5
	vpshufd	$255, %xmm10, %xmm8
	vaesenclast	%xmm13, %xmm8, %xmm8
	vpxor	%xmm5, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm5
	vmovaps	%xmm10, 48(%rsp)
	#APP
	vaesenc	%xmm10, %xmm3, %xmm3
	vpslldq	$4, %xmm10, %xmm6
	vpslldq	$8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm10, %xmm6
	vpshufb	%xmm4, %xmm8, %xmm12
	vaesenclast	%xmm5, %xmm12, %xmm12
	vpxor	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	%xmm8, 192(%rsp)
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vpslldq	$4, %xmm8, %xmm5
	vpslldq	$8, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpshufd	$255, %xmm12, %xmm14
	vaesenclast	%xmm13, %xmm14, %xmm14
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
	vmovaps	%xmm14, 96(%rsp)
	#APP
	vaesenc	%xmm14, %xmm3, %xmm3
	vpslldq	$4, %xmm14, %xmm5
	vpslldq	$8, %xmm14, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm14, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm14, %xmm5
	vpshufd	$255, %xmm15, %xmm8
	vaesenclast	%xmm13, %xmm8, %xmm8
	vpxor	%xmm5, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_12(%rip), %xmm5
	vmovdqa	%xmm15, %xmm10
	#APP
	vaesenc	%xmm15, %xmm3, %xmm3
	vpslldq	$4, %xmm15, %xmm6
	vpslldq	$8, %xmm15, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm15, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm15, %xmm6
	vpshufb	%xmm4, %xmm8, %xmm14
	vaesenclast	%xmm5, %xmm14, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vpslldq	$4, %xmm8, %xmm5
	vpslldq	$8, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm13, %xmm15, %xmm15
	vpxor	%xmm5, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_13(%rip), %xmm5
	vmovaps	%xmm14, 112(%rsp)
	#APP
	vaesenc	%xmm14, %xmm3, %xmm3
	vpslldq	$4, %xmm14, %xmm6
	vpslldq	$8, %xmm14, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm14, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm14, %xmm6
	vpshufb	%xmm4, %xmm15, %xmm11
	vaesenclast	%xmm5, %xmm11, %xmm11
	vpxor	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa	%xmm15, %xmm7
	vpslldq	$4, %xmm15, %xmm4
	vpunpcklqdq	%xmm15, %xmm13, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vinsertps	$55, %xmm15, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm11, %xmm5
	vaesenclast	%xmm13, %xmm5, %xmm5
	vpxor	%xmm4, %xmm15, %xmm4
	vpxor	%xmm4, %xmm5, %xmm6
	vpslldq	$4, %xmm11, %xmm4
	vpunpcklqdq	%xmm11, %xmm13, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vinsertps	$55, %xmm11, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovdqa	%xmm6, %xmm5
	vpshufb	%xmm1, %xmm6, %xmm1
	vaesenclast	.LCPI1_14(%rip), %xmm1, %xmm1
	vpxor	%xmm4, %xmm11, %xmm4
	vpxor	%xmm4, %xmm1, %xmm15
	vpxor	%xmm0, %xmm9, %xmm1
	vmovdqa	%xmm11, %xmm9
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpshufb	.LCPI1_15(%rip), %xmm3, %xmm3
	vpxor	%xmm0, %xmm2, %xmm0
	vpsrlq	$63, %xmm3, %xmm2
	vpaddq	%xmm3, %xmm3, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpor	%xmm4, %xmm3, %xmm3
	vpblendd	$12, %xmm2, %xmm13, %xmm2
	vpsllq	$63, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpsllq	$62, %xmm2, %xmm4
	vpsllq	$57, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm2
	vpbroadcastq	.LCPI1_28(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm11, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm2, 336(%rsp)
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm13, 320(%rsp)
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm13, %xmm2
	vpclmulqdq	$1, %xmm11, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	%xmm2, 368(%rsp)
	movq	536(%rsp), %r12
	movzbl	16(%rsi), %edi
	movzbl	17(%rsi), %r10d
	movzbl	23(%rsi), %r11d
	shll	$8, %edi
	orl	%edx, %edi
	shll	$16, %r10d
	orl	%edi, %r10d
	movzbl	18(%rsi), %edx
	shll	$24, %edx
	orl	%r10d, %edx
	vmovd	%edx, %xmm2
	vpinsrd	$1, 19(%rsi), %xmm2, %xmm2
	vmovdqu	%xmm1, (%r12)
	vmovdqu	%xmm0, 16(%r12)
	vpinsrd	$2, %r11d, %xmm2, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 384(%rsp)
	testq	%r8, %r8
	vmovaps	%xmm12, 240(%rsp)
	vmovdqa	%xmm15, 208(%rsp)
	vmovdqa	%xmm11, 80(%rsp)
	vmovdqa	%xmm14, 352(%rsp)
	vmovdqa	%xmm10, 256(%rsp)
	vmovdqa	%xmm8, 160(%rsp)
	vmovdqa	%xmm7, 144(%rsp)
	vmovdqa	%xmm9, 224(%rsp)
	vmovdqa	%xmm5, 176(%rsp)
	je	.LBB1_24
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI1_15(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm3
	vmovdqa	320(%rsp), %xmm8
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vmovdqa	%xmm13, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	368(%rsp), %xmm15
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vmovdqa	336(%rsp), %xmm7
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB1_14
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	336(%rsp), %xmm10
	vmovdqa	352(%rsp), %xmm13
	vmovdqa	320(%rsp), %xmm14
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
	vpbroadcastq	.LCPI1_28(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm3
	vpshufb	%xmm0, %xmm5, %xmm1
	vpshufb	%xmm0, %xmm6, %xmm2
	vpshufb	%xmm0, %xmm7, %xmm4
	vpshufb	%xmm0, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm11, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm11, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm14, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm14, %xmm4
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
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm1
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
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB1_22
	jmp	.LBB1_23
.LBB1_24:
	vpxor	%xmm3, %xmm3, %xmm3
	testq	%r15, %r15
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	192(%rsp), %xmm6
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm9
	jne	.LBB1_30
	jmp	.LBB1_49
.LBB1_7:
	movq	%r8, %rsi
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa	16(%rsp), %xmm12
	cmpq	$16, %rsi
	vmovdqa	48(%rsp), %xmm10
	jae	.LBB1_15
.LBB1_9:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_11
	jmp	.LBB1_25
.LBB1_14:
	vmovdqa	80(%rsp), %xmm11
.LBB1_23:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpbroadcastq	.LCPI1_28(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	%xmm12, %xmm13
	vmovdqa	16(%rsp), %xmm12
	vmovdqa	176(%rsp), %xmm5
	cmpq	$16, %rsi
	vmovdqa	48(%rsp), %xmm10
	jb	.LBB1_9
.LBB1_15:
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB1_16
	cmpq	$16, %rdx
	jae	.LBB1_18
.LBB1_10:
	testq	%rdx, %rdx
	je	.LBB1_25
.LBB1_11:
	vmovdqa	%xmm3, (%rsp)
	vmovdqa	%xmm13, 304(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 128(%rsp)
	leaq	128(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	128(%rsp), %xmm0
	testq	%r15, %r15
	je	.LBB1_12
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	176(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm4
	vmovdqa	304(%rsp), %xmm13
	vmovdqa	(%rsp), %xmm1
	jb	.LBB1_50
	movq	%rbx, %r8
	movq	%r14, %r9
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_28(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	jmp	.LBB1_30
.LBB1_16:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	addq	$16, %rcx
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
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
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_18:
	vmovdqa	%xmm5, %xmm10
	vmovdqa	.LCPI1_15(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_19:
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
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
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
	cmpq	$15, %rsi
	ja	.LBB1_19
	movq	%rsi, %rdx
	vmovdqa	%xmm10, %xmm5
	vmovdqa	48(%rsp), %xmm10
	testq	%rdx, %rdx
	jne	.LBB1_11
.LBB1_25:
	vmovdqa	%xmm12, %xmm9
	testq	%r15, %r15
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm6
	je	.LBB1_26
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	vmovdqa	64(%rsp), %xmm15
	jb	.LBB1_50
.LBB1_30:
	movq	520(%rsp), %rdx
	vmovdqa	384(%rsp), %xmm0
	vpshufb	.LCPI1_17(%rip), %xmm0, %xmm1
	vpaddd	.LCPI1_18(%rip), %xmm1, %xmm0
	cmpq	$96, %r15
	jb	.LBB1_31
	vmovdqa	%xmm3, (%rsp)
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vmovdqa	.LCPI1_15(%rip), %xmm14
	vpshufb	%xmm14, %xmm0, %xmm2
	vpaddd	.LCPI1_19(%rip), %xmm1, %xmm3
	vpshufb	%xmm14, %xmm3, %xmm3
	vpaddd	.LCPI1_20(%rip), %xmm1, %xmm4
	vpshufb	%xmm14, %xmm4, %xmm4
	vpaddd	.LCPI1_21(%rip), %xmm1, %xmm5
	vpshufb	%xmm14, %xmm5, %xmm5
	vmovdqa	%xmm6, %xmm11
	vpaddd	.LCPI1_22(%rip), %xmm1, %xmm6
	vpshufb	%xmm14, %xmm6, %xmm6
	vmovdqa	%xmm7, %xmm12
	vpaddd	.LCPI1_23(%rip), %xmm1, %xmm7
	vpshufb	%xmm14, %xmm7, %xmm7
	vpaddd	.LCPI1_24(%rip), %xmm1, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm12, %xmm14
	vpxor	%xmm2, %xmm9, %xmm1
	vpxor	%xmm3, %xmm9, %xmm2
	vpxor	%xmm4, %xmm9, %xmm4
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm6, %xmm9, %xmm6
	vpxor	%xmm7, %xmm9, %xmm7
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	#NO_APP
	vmovdqa	288(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovdqa	272(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovaps	240(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	#NO_APP
	vmovaps	96(%rsp), %xmm3
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
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vmovaps	112(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	#NO_APP
	vmovaps	224(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	#NO_APP
	vmovaps	176(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	#NO_APP
	vmovaps	208(%rsp), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm2, %xmm2
	vaesenclast	%xmm3, %xmm4, %xmm4
	vaesenclast	%xmm3, %xmm5, %xmm5
	vaesenclast	%xmm3, %xmm6, %xmm6
	vaesenclast	%xmm3, %xmm7, %xmm7
	#NO_APP
	vpxor	(%r9), %xmm1, %xmm3
	vpxor	16(%r9), %xmm2, %xmm1
	vpxor	32(%r9), %xmm4, %xmm10
	vpxor	48(%r9), %xmm5, %xmm11
	vmovdqa	%xmm1, %xmm5
	vpxor	64(%r9), %xmm6, %xmm6
	vpxor	80(%r9), %xmm7, %xmm1
	vmovdqu	%xmm3, (%rdx)
	vmovdqu	%xmm5, 16(%rdx)
	vmovdqu	%xmm10, 32(%rdx)
	vmovdqu	%xmm11, 48(%rdx)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm6, 64(%rdx)
	vmovdqu	%xmm1, 80(%rdx)
	cmpq	$96, %rbx
	jb	.LBB1_37
	vmovdqa	%xmm13, 304(%rsp)
	vmovdqa	(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm9
	vmovdqa	.LCPI1_15(%rip), %xmm7
	.p2align	4, 0x90
.LBB1_40:
	vmovdqa	%xmm6, 400(%rsp)
	vmovdqa	%xmm10, 416(%rsp)
	vmovdqa	%xmm5, 32(%rsp)
	vpshufb	%xmm7, %xmm9, %xmm2
	vpaddd	.LCPI1_18(%rip), %xmm9, %xmm4
	vpshufb	%xmm7, %xmm4, %xmm4
	vpaddd	.LCPI1_19(%rip), %xmm9, %xmm5
	vpshufb	%xmm7, %xmm5, %xmm5
	vpaddd	.LCPI1_20(%rip), %xmm9, %xmm6
	vpshufb	%xmm7, %xmm6, %xmm6
	vpaddd	.LCPI1_21(%rip), %xmm9, %xmm12
	vpshufb	.LCPI1_15(%rip), %xmm12, %xmm7
	vpaddd	.LCPI1_22(%rip), %xmm9, %xmm12
	vpshufb	.LCPI1_15(%rip), %xmm12, %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm3, %xmm3
	vpxor	%xmm3, %xmm13, %xmm3
	vmovdqa	%xmm3, (%rsp)
	vpshufb	.LCPI1_15(%rip), %xmm1, %xmm3
	vmovdqa	16(%rsp), %xmm8
	vpxor	%xmm2, %xmm8, %xmm12
	vpxor	%xmm4, %xmm8, %xmm13
	vpxor	%xmm5, %xmm8, %xmm14
	vpxor	%xmm6, %xmm8, %xmm15
	vpxor	%xmm7, %xmm8, %xmm1
	vmovdqa	.LCPI1_15(%rip), %xmm7
	vpxor	%xmm0, %xmm8, %xmm2
	vmovaps	64(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vmovaps	288(%rsp), %xmm8
	vmovaps	80(%rsp), %xmm10
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm3, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm3, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm3, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	#NO_APP
	vmovdqa	400(%rsp), %xmm0
	vpshufb	%xmm7, %xmm0, %xmm0
	vmovaps	272(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	48(%rsp), %xmm8
	vmovaps	320(%rsp), %xmm10
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm7, %xmm11, %xmm0
	vmovaps	192(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	240(%rsp), %xmm8
	vmovaps	352(%rsp), %xmm10
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	#NO_APP
	vmovdqa	416(%rsp), %xmm0
	vpshufb	%xmm7, %xmm0, %xmm0
	vmovaps	96(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	256(%rsp), %xmm10
	vmovaps	304(%rsp), %xmm11
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm3
	vpxor	%xmm3, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	#NO_APP
	vmovdqa	32(%rsp), %xmm0
	vpshufb	%xmm7, %xmm0, %xmm0
	vmovaps	160(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	112(%rsp), %xmm8
	vmovaps	368(%rsp), %xmm10
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	#NO_APP
	vmovaps	144(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	#NO_APP
	vmovdqa	224(%rsp), %xmm3
	vmovdqa	336(%rsp), %xmm8
	vmovaps	(%rsp), %xmm10
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm8, %xmm10, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm4, %xmm3, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpunpckhqdq	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpbroadcastq	.LCPI1_28(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm4
	vmovaps	176(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	208(%rsp), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm12, %xmm12
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm3, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm2, %xmm2
	#NO_APP
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	(%rcx), %xmm12, %xmm3
	vpxor	16(%rcx), %xmm13, %xmm5
	vpxor	32(%rcx), %xmm14, %xmm10
	vpxor	48(%rcx), %xmm15, %xmm11
	vpxor	64(%rcx), %xmm1, %xmm6
	vpxor	80(%rcx), %xmm2, %xmm1
	vpxor	%xmm0, %xmm4, %xmm13
	addq	$96, %rcx
	vmovdqu	%xmm3, (%rax)
	vmovdqu	%xmm5, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm6, 64(%rax)
	vmovdqu	%xmm1, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI1_23(%rip), %xmm9, %xmm9
	cmpq	$95, %rbx
	ja	.LBB1_40
	vmovdqa	%xmm9, 32(%rsp)
	vmovdqa	%xmm13, (%rsp)
	vmovdqa	304(%rsp), %xmm13
	jmp	.LBB1_38
.LBB1_31:
	vmovdqa	%xmm0, 32(%rsp)
	movq	%r15, %rbx
	vmovdqa	%xmm12, %xmm8
	movq	%r8, %r13
	cmpq	$16, %rbx
	jae	.LBB1_42
.LBB1_33:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	32(%rsp), %xmm10
	jmp	.LBB1_34
.LBB1_12:
	movq	%rbx, %r8
	jmp	.LBB1_47
.LBB1_37:
	vmovdqa	.LCPI1_15(%rip), %xmm7
.LBB1_38:
	vpshufb	%xmm7, %xmm3, %xmm2
	vpxor	(%rsp), %xmm2, %xmm2
	vpshufb	%xmm7, %xmm5, %xmm3
	vpshufb	%xmm7, %xmm10, %xmm4
	vpshufb	%xmm7, %xmm11, %xmm5
	vpshufb	%xmm7, %xmm6, %xmm6
	vpshufb	%xmm7, %xmm1, %xmm0
	vmovdqa	80(%rsp), %xmm10
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	320(%rsp), %xmm11
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpxor	%xmm0, %xmm6, %xmm0
	vmovdqa	352(%rsp), %xmm9
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm13, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm13, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm13, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vmovdqa	368(%rsp), %xmm8
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vmovdqa	336(%rsp), %xmm5
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
	vpbroadcastq	.LCPI1_28(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa	192(%rsp), %xmm6
	vmovdqa	112(%rsp), %xmm8
	vmovdqa	176(%rsp), %xmm5
	movq	%r8, %r13
	cmpq	$16, %rbx
	jb	.LBB1_33
.LBB1_42:
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm7
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm1
	vmovdqa	48(%rsp), %xmm11
	vmovdqa	32(%rsp), %xmm10
	vmovdqa	240(%rsp), %xmm13
	vmovdqa	208(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm15
	.p2align	4, 0x90
.LBB1_43:
	vmovdqa	.LCPI1_15(%rip), %xmm0
	vpshufb	%xmm0, %xmm10, %xmm2
	vpxor	16(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	288(%rsp), %xmm2, %xmm2
	vaesenc	272(%rsp), %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	256(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm12, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rdx)
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	vmovdqa	%xmm6, %xmm0
	vmovdqa	%xmm5, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm6, %xmm5
	vmovdqa	%xmm0, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_28(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_18(%rip), %xmm10, %xmm10
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB1_43
.LBB1_34:
	vmovdqa	%xmm10, 32(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_35
	vmovdqa	%xmm3, (%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 128(%rsp)
	leaq	128(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenclast	208(%rsp), %xmm0, %xmm0
	vpxor	128(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, 128(%rsp)
	leaq	128(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	testq	%r15, %r15
	je	.LBB1_45
	vmovaps	32(%rsp), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 128(%rsp)
	leaq	128(%rsp), %rdi
	leaq	432(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	128(%rsp), %xmm0
	movq	%r13, %r8
.LBB1_47:
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	176(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	(%rsp), %xmm1
	jmp	.LBB1_48
.LBB1_35:
	vmovdqa	%xmm8, %xmm12
	movq	%r13, %r8
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	96(%rsp), %xmm14
	jmp	.LBB1_49
.LBB1_45:
	movq	%r13, %r8
	vmovdqa	16(%rsp), %xmm9
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm6
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm7
	vmovdqa	176(%rsp), %xmm5
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	(%rsp), %xmm1
	vmovdqa	32(%rsp), %xmm0
.LBB1_48:
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_28(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
.LBB1_49:
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_28(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	384(%rsp), %xmm9, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenclast	208(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_25(%rip), %xmm1, %xmm1
	vpshufb	.LCPI1_26(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm0, 32(%r12)
	movl	$1, %eax
.LBB1_50:
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
.LBB1_26:
	.cfi_def_cfa_offset 512
	vmovdqa	64(%rsp), %xmm15
	jmp	.LBB1_49
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndkv2kc_skylake_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndkv2kc_skylake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
.LCPI2_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_2:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_3:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_4:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_5:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_14:
	.quad	274877907008
	.quad	274877907008
.LCPI2_15:
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
.LCPI2_16:
	.zero	8
	.quad	-4467570830351532032
.LCPI2_17:
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
.LCPI2_18:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI2_22:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_23:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_24:
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
.LCPI2_25:
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
.LCPI2_26:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_8:
	.long	0x00000002
.LCPI2_9:
	.long	0x0c0f0e0d
.LCPI2_10:
	.long	0x00000004
.LCPI2_11:
	.long	0x00000008
.LCPI2_12:
	.long	0x00000010
.LCPI2_13:
	.long	0x00000020
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_27:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2kc_skylake_decrypt,@function
haberdashery_aes256gcmdndkv2kc_skylake_decrypt:
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
	movq	560(%rsp), %r15
	xorl	%eax, %eax
	cmpq	592(%rsp), %r15
	jne	.LBB2_46
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB2_46
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB2_46
	cmpq	$24, %rdx
	jne	.LBB2_46
	cmpq	$48, 576(%rsp)
	jne	.LBB2_46
	vmovdqu	(%rsi), %xmm0
	vmovdqa	%xmm0, 320(%rsp)
	vpand	.LCPI2_0(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm1
	movq	568(%rsp), %r12
	vpxor	.LCPI2_1(%rip), %xmm1, %xmm0
	vmovdqa	16(%rdi), %xmm5
	vmovdqa	%xmm5, 32(%rsp)
	vmovdqa	32(%rdi), %xmm11
	vmovdqa	48(%rdi), %xmm2
	vmovdqa	64(%rdi), %xmm3
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	80(%rdi), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	96(%rdi), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	112(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	128(%rdi), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	144(%rdi), %xmm8
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa	160(%rdi), %xmm9
	vaesenc	%xmm9, %xmm0, %xmm0
	vmovdqa	176(%rdi), %xmm10
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	192(%rdi), %xmm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm13
	vaesenc	%xmm13, %xmm0, %xmm14
	vmovdqa	224(%rdi), %xmm15
	vaesenclast	%xmm15, %xmm14, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpxor	.LCPI2_4(%rip), %xmm1, %xmm14
	vmovdqa	32(%rsp), %xmm0
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm13, %xmm14, %xmm14
	vmovdqa	%xmm1, 304(%rsp)
	vpxor	.LCPI2_5(%rip), %xmm1, %xmm1
	vaesenclast	%xmm15, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm1, %xmm1
	vmovdqa	%xmm11, 352(%rsp)
	vaesenc	%xmm11, %xmm1, %xmm1
	vmovdqa	%xmm2, 16(%rsp)
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa	%xmm3, 208(%rsp)
	vaesenc	%xmm3, %xmm1, %xmm1
	vmovdqa	%xmm4, 112(%rsp)
	vaesenc	%xmm4, %xmm1, %xmm1
	vmovdqa	%xmm5, 192(%rsp)
	vaesenc	%xmm5, %xmm1, %xmm1
	vmovdqa	%xmm6, 176(%rsp)
	vaesenc	%xmm6, %xmm1, %xmm1
	vmovdqa	%xmm7, 272(%rsp)
	vaesenc	%xmm7, %xmm1, %xmm1
	vmovdqa	%xmm8, 256(%rsp)
	vaesenc	%xmm8, %xmm1, %xmm1
	vmovdqa	%xmm9, 160(%rsp)
	vaesenc	%xmm9, %xmm1, %xmm1
	vmovdqa	%xmm10, 240(%rsp)
	vaesenc	%xmm10, %xmm1, %xmm1
	vmovdqa	%xmm12, 368(%rsp)
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm1
	vpxor	(%r12), %xmm14, %xmm14
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm0, %xmm14, %xmm14
	vpxor	16(%r12), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	vpor	%xmm1, %xmm14, %xmm1
	vptest	%xmm1, %xmm1
	jne	.LBB2_46
	vmovdqa	304(%rsp), %xmm2
	vpxor	.LCPI2_2(%rip), %xmm2, %xmm1
	vmovdqa	32(%rsp), %xmm0
	vaesenc	%xmm0, %xmm1, %xmm1
	vpxor	.LCPI2_3(%rip), %xmm2, %xmm10
	vaesenc	%xmm0, %xmm10, %xmm10
	vmovdqa	352(%rsp), %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm10, %xmm10
	vmovdqa	16(%rsp), %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa	208(%rsp), %xmm3
	vaesenc	%xmm3, %xmm1, %xmm1
	vmovdqa	112(%rsp), %xmm4
	vaesenc	%xmm4, %xmm1, %xmm1
	vmovdqa	192(%rsp), %xmm5
	vaesenc	%xmm5, %xmm1, %xmm1
	vmovdqa	176(%rsp), %xmm6
	vaesenc	%xmm6, %xmm1, %xmm1
	vmovdqa	272(%rsp), %xmm7
	vaesenc	%xmm7, %xmm1, %xmm1
	vmovdqa	256(%rsp), %xmm8
	vaesenc	%xmm8, %xmm1, %xmm1
	vmovdqa	160(%rsp), %xmm9
	vaesenc	%xmm9, %xmm1, %xmm1
	vmovdqa	240(%rsp), %xmm12
	vaesenc	%xmm12, %xmm1, %xmm1
	vmovdqa	368(%rsp), %xmm11
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm10, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm15, %xmm2, %xmm0
	vmovdqa	(%rsp), %xmm2
	vpxor	%xmm2, %xmm1, %xmm13
	vpxor	%xmm2, %xmm0, %xmm5
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpbroadcastd	.LCPI2_9(%rip), %xmm1
	vpshufb	%xmm1, %xmm5, %xmm2
	vaesenclast	.LCPI2_7(%rip), %xmm2, %xmm2
	vpxor	%xmm0, %xmm13, %xmm0
	vpxor	%xmm0, %xmm2, %xmm7
	vaesenc	%xmm5, %xmm13, %xmm2
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm0, %xmm3
	vpshufd	$255, %xmm7, %xmm4
	vpxor	%xmm0, %xmm0, %xmm0
	vaesenclast	%xmm0, %xmm4, %xmm4
	vmovdqa	%xmm5, 16(%rsp)
	vpxor	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm8
	vbroadcastss	.LCPI2_8(%rip), %xmm4
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	vmovdqa	%xmm7, 192(%rsp)
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vpslldq	$4, %xmm7, %xmm5
	vpslldq	$8, %xmm7, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm7, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm7, %xmm5, %xmm5
	vpshufb	%xmm3, %xmm8, %xmm11
	vaesenclast	%xmm4, %xmm11, %xmm11
	vpxor	%xmm5, %xmm11, %xmm11
	#NO_APP
	vmovdqa	%xmm8, 176(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpshufd	$255, %xmm11, %xmm12
	vaesenclast	%xmm0, %xmm12, %xmm12
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm4
	vmovaps	%xmm11, 96(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vpslldq	$4, %xmm11, %xmm5
	vpslldq	$8, %xmm11, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm11, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm11, %xmm5
	vpshufb	%xmm3, %xmm12, %xmm7
	vaesenclast	%xmm4, %xmm7, %xmm7
	vpxor	%xmm5, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm12, 272(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vpslldq	$4, %xmm12, %xmm4
	vpslldq	$8, %xmm12, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm12, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm12, %xmm4
	vpshufd	$255, %xmm7, %xmm11
	vaesenclast	%xmm0, %xmm11, %xmm11
	vpxor	%xmm4, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI2_11(%rip), %xmm4
	vmovaps	%xmm7, 256(%rsp)
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vpslldq	$4, %xmm7, %xmm5
	vpslldq	$8, %xmm7, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm7, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm7, %xmm5, %xmm5
	vpshufb	%xmm3, %xmm11, %xmm8
	vaesenclast	%xmm4, %xmm8, %xmm8
	vpxor	%xmm5, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm11, 80(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm11, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm11, %xmm4
	vpshufd	$255, %xmm8, %xmm7
	vaesenclast	%xmm0, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI2_12(%rip), %xmm4
	vmovaps	%xmm8, 160(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vpslldq	$4, %xmm8, %xmm5
	vpslldq	$8, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpshufb	%xmm3, %xmm7, %xmm10
	vaesenclast	%xmm4, %xmm10, %xmm10
	vpxor	%xmm5, %xmm10, %xmm10
	#NO_APP
	vmovdqa	%xmm7, 144(%rsp)
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpshufd	$255, %xmm10, %xmm14
	vaesenclast	%xmm0, %xmm14, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	#NO_APP
	vbroadcastss	.LCPI2_13(%rip), %xmm4
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vpslldq	$4, %xmm10, %xmm5
	vpslldq	$8, %xmm10, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpslldq	$12, %xmm10, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpxor	%xmm5, %xmm10, %xmm5
	vpshufb	%xmm3, %xmm14, %xmm15
	vaesenclast	%xmm4, %xmm15, %xmm15
	vpxor	%xmm5, %xmm15, %xmm15
	#NO_APP
	vmovdqa	%xmm14, %xmm6
	vpslldq	$4, %xmm14, %xmm3
	vpunpcklqdq	%xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vinsertps	$55, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufd	$255, %xmm15, %xmm4
	vaesenclast	%xmm0, %xmm4, %xmm4
	vpxor	%xmm3, %xmm14, %xmm3
	vpxor	%xmm3, %xmm4, %xmm5
	vpslldq	$4, %xmm15, %xmm3
	vpunpcklqdq	%xmm15, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vinsertps	$55, %xmm15, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufb	%xmm1, %xmm5, %xmm1
	vaesenclast	.LCPI2_14(%rip), %xmm1, %xmm1
	vpxor	%xmm3, %xmm15, %xmm3
	vpxor	%xmm3, %xmm1, %xmm4
	vaesenc	%xmm14, %xmm2, %xmm1
	vmovaps	%xmm15, 288(%rsp)
	vaesenc	%xmm15, %xmm1, %xmm1
	vmovdqa	%xmm5, 48(%rsp)
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpshufb	.LCPI2_15(%rip), %xmm1, %xmm1
	vpsrlq	$63, %xmm1, %xmm2
	vpaddq	%xmm1, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm3
	vpor	%xmm3, %xmm1, %xmm1
	vpblendd	$12, %xmm2, %xmm0, %xmm0
	vpsllq	$63, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsllq	$62, %xmm0, %xmm2
	vpsllq	$57, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm0
	vpbroadcastq	.LCPI2_27(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm8, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm8, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm8, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm9
	vpclmulqdq	$16, %xmm12, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm12, %xmm9, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm12, %xmm9, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm9, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm14
	vmovdqa	320(%rsp), %xmm0
	vpextrb	$15, %xmm0, %edx
	movzbl	23(%rsi), %edi
	movzbl	17(%rsi), %r10d
	movzbl	16(%rsi), %r11d
	shll	$8, %r11d
	orl	%edx, %r11d
	shll	$16, %r10d
	orl	%r11d, %r10d
	movzbl	18(%rsi), %edx
	shll	$24, %edx
	orl	%r10d, %edx
	vmovd	%edx, %xmm0
	vpinsrd	$1, 19(%rsi), %xmm0, %xmm0
	vpinsrd	$2, %edi, %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 384(%rsp)
	testq	%r8, %r8
	vmovdqa	%xmm4, 208(%rsp)
	vmovdqa	%xmm12, 128(%rsp)
	vmovdqa	%xmm8, 448(%rsp)
	vmovdqa	%xmm15, 432(%rsp)
	vmovdqa	%xmm9, 416(%rsp)
	vmovdqa	%xmm14, 400(%rsp)
	vmovdqa	%xmm13, 112(%rsp)
	vmovdqa	%xmm10, 240(%rsp)
	vmovdqa	%xmm6, 224(%rsp)
	je	.LBB2_39
	vpxor	%xmm3, %xmm3, %xmm3
	cmpq	$96, %r8
	jb	.LBB2_8
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI2_15(%rip), %xmm13
	vpshufb	%xmm13, %xmm1, %xmm5
	vpshufb	%xmm13, %xmm2, %xmm1
	vpshufb	%xmm13, %xmm3, %xmm2
	vpshufb	%xmm13, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm7
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
	vpshufb	%xmm13, %xmm6, %xmm6
	vpshufb	%xmm13, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vmovdqa	%xmm11, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB2_12
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	448(%rsp), %xmm15
	vmovdqa	432(%rsp), %xmm11
	vmovdqa	416(%rsp), %xmm10
	vmovdqa	400(%rsp), %xmm0
	.p2align	4, 0x90
.LBB2_23:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_27(%rip), %xmm9
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
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm5
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
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm13, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm1
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
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB2_23
	jmp	.LBB2_24
.LBB2_39:
	vpxor	%xmm2, %xmm2, %xmm2
	xorl	%r8d, %r8d
	testq	%r15, %r15
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	16(%rsp), %xmm8
	jne	.LBB2_28
	jmp	.LBB2_40
.LBB2_8:
	movq	%r8, %rsi
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	16(%rsp), %xmm8
	cmpq	$16, %rsi
	vmovdqa	144(%rsp), %xmm9
	jae	.LBB2_13
.LBB2_10:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_25
	jmp	.LBB2_20
.LBB2_12:
	vmovdqa	128(%rsp), %xmm12
.LBB2_24:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpbroadcastq	.LCPI2_27(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	vmovdqa	224(%rsp), %xmm6
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	%xmm14, %xmm11
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	112(%rsp), %xmm13
	cmpq	$16, %rsi
	vmovdqa	144(%rsp), %xmm9
	jb	.LBB2_10
.LBB2_13:
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB2_14
	cmpq	$16, %rdx
	jae	.LBB2_16
.LBB2_19:
	testq	%rdx, %rdx
	je	.LBB2_20
.LBB2_25:
	vmovdqa	%xmm3, 32(%rsp)
	vmovdqa	%xmm11, 336(%rsp)
	movq	%r9, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r8, %r14
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r14, %r8
	vmovdqa	64(%rsp), %xmm0
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB2_47
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	112(%rsp), %xmm13
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm6
	vmovdqa	48(%rsp), %xmm4
	vpbroadcastq	.LCPI2_27(%rip), %xmm5
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	336(%rsp), %xmm11
	jb	.LBB2_46
	movq	%rbx, %r9
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm4, %xmm1
	vpxor	%xmm0, %xmm2, %xmm2
	jmp	.LBB2_28
.LBB2_14:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	addq	$16, %rcx
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm1
	vpxor	%xmm0, %xmm2, %xmm3
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB2_19
.LBB2_16:
	vmovdqa	.LCPI2_15(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_17:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_27(%rip), %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	cmpq	$15, %rsi
	ja	.LBB2_17
	movq	%rsi, %rdx
	vmovdqa	48(%rsp), %xmm1
	testq	%rdx, %rdx
	jne	.LBB2_25
.LBB2_20:
	vmovdqa	%xmm3, %xmm2
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB2_40
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_46
.LBB2_28:
	movq	584(%rsp), %rax
	vmovdqa	384(%rsp), %xmm0
	vpshufb	.LCPI2_17(%rip), %xmm0, %xmm0
	vpaddd	.LCPI2_18(%rip), %xmm0, %xmm0
	cmpq	$96, %r15
	jb	.LBB2_29
	movq	%r15, %rbx
	vmovdqa	%xmm11, 336(%rsp)
	vmovdqa	%xmm2, %xmm4
	.p2align	4, 0x90
.LBB2_33:
	vmovdqu	(%r9), %xmm7
	vmovdqa	%xmm7, 304(%rsp)
	vmovups	32(%r9), %xmm1
	vmovaps	%xmm1, (%rsp)
	vmovups	48(%r9), %xmm1
	vmovaps	%xmm1, 32(%rsp)
	vmovdqu	64(%r9), %xmm11
	vmovdqa	%xmm11, 368(%rsp)
	vmovdqu	80(%r9), %xmm8
	vmovdqa	%xmm8, 320(%rsp)
	vmovdqa	%xmm0, %xmm12
	vmovdqa	.LCPI2_15(%rip), %xmm10
	vpshufb	%xmm10, %xmm0, %xmm0
	vpaddd	.LCPI2_18(%rip), %xmm12, %xmm1
	vpshufb	%xmm10, %xmm1, %xmm1
	vpaddd	.LCPI2_19(%rip), %xmm12, %xmm2
	vpshufb	%xmm10, %xmm2, %xmm2
	vpaddd	.LCPI2_20(%rip), %xmm12, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm3
	vpaddd	.LCPI2_21(%rip), %xmm12, %xmm5
	vpshufb	%xmm10, %xmm5, %xmm5
	vpaddd	.LCPI2_22(%rip), %xmm12, %xmm6
	vpshufb	%xmm10, %xmm6, %xmm6
	vpshufb	%xmm10, %xmm7, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm4, 352(%rsp)
	vpshufb	%xmm10, %xmm8, %xmm4
	vpxor	%xmm0, %xmm13, %xmm14
	vpxor	%xmm1, %xmm13, %xmm15
	vpxor	%xmm2, %xmm13, %xmm1
	vpxor	%xmm3, %xmm13, %xmm2
	vpxor	%xmm5, %xmm13, %xmm3
	vpxor	112(%rsp), %xmm6, %xmm13
	vmovaps	16(%rsp), %xmm0
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
	vmovaps	128(%rsp), %xmm9
	vmovaps	192(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm10, %xmm11, %xmm0
	vmovaps	176(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	96(%rsp), %xmm8
	vmovaps	448(%rsp), %xmm9
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
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqa	32(%rsp), %xmm0
	vpshufb	%xmm10, %xmm0, %xmm0
	vmovaps	272(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	432(%rsp), %xmm8
	vmovaps	256(%rsp), %xmm9
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
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqa	(%rsp), %xmm0
	vpshufb	%xmm10, %xmm0, %xmm0
	vmovaps	80(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	416(%rsp), %xmm8
	vmovdqa	160(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vmovdqu	16(%r9), %xmm0
	vmovdqa	%xmm0, 464(%rsp)
	vmovaps	144(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm10, %xmm0, %xmm4
	vmovaps	240(%rsp), %xmm10
	vmovaps	400(%rsp), %xmm0
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vmovdqa	208(%rsp), %xmm9
	vmovaps	224(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovdqa	288(%rsp), %xmm10
	vmovdqa	336(%rsp), %xmm8
	vmovaps	352(%rsp), %xmm0
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
	vpunpcklqdq	%xmm5, %xmm10, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpunpckhqdq	%xmm10, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpbroadcastq	.LCPI2_27(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovaps	48(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenclast	%xmm9, %xmm14, %xmm14
	vaesenclast	%xmm9, %xmm15, %xmm15
	vaesenclast	%xmm9, %xmm1, %xmm1
	vaesenclast	%xmm9, %xmm2, %xmm2
	vaesenclast	%xmm9, %xmm3, %xmm3
	vaesenclast	%xmm9, %xmm13, %xmm13
	#NO_APP
	vpxor	304(%rsp), %xmm14, %xmm6
	vpxor	464(%rsp), %xmm15, %xmm0
	vpxor	(%rsp), %xmm1, %xmm1
	vpxor	32(%rsp), %xmm2, %xmm2
	vpxor	368(%rsp), %xmm3, %xmm3
	vmovdqu	%xmm6, (%rax)
	vmovdqu	%xmm0, 16(%rax)
	vmovdqu	%xmm1, 32(%rax)
	vmovdqu	%xmm2, 48(%rax)
	vxorps	320(%rsp), %xmm13, %xmm0
	vmovdqa	112(%rsp), %xmm13
	vmovdqu	%xmm3, 64(%rax)
	vmovups	%xmm0, 80(%rax)
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm4
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI2_23(%rip), %xmm12, %xmm0
	cmpq	$95, %rbx
	ja	.LBB2_33
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm6
	vmovdqa	288(%rsp), %xmm0
	vmovdqa	48(%rsp), %xmm1
	cmpq	$16, %rbx
	vmovdqa	208(%rsp), %xmm12
	movq	%r8, %r13
	jae	.LBB2_35
.LBB2_31:
	movq	%rax, %r14
	vmovdqa	(%rsp), %xmm8
	jmp	.LBB2_37
.LBB2_29:
	vmovdqa	%xmm0, (%rsp)
	movq	%r15, %rbx
	vmovdqa	288(%rsp), %xmm0
	vmovdqa	%xmm2, %xmm4
	cmpq	$16, %rbx
	vmovdqa	208(%rsp), %xmm12
	movq	%r8, %r13
	jb	.LBB2_31
.LBB2_35:
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	(%rsp), %xmm8
	vmovdqa	208(%rsp), %xmm12
	.p2align	4, 0x90
.LBB2_36:
	vmovdqu	(%r9), %xmm2
	vmovdqa	.LCPI2_15(%rip), %xmm3
	vpshufb	%xmm3, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm5
	vmovdqa	%xmm1, %xmm11
	vmovdqa	%xmm9, %xmm1
	vmovdqa	%xmm14, %xmm7
	vmovdqa	%xmm6, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqa	272(%rsp), %xmm9
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_27(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufb	.LCPI2_15(%rip), %xmm8, %xmm5
	vpxor	%xmm5, %xmm13, %xmm5
	vaesenc	16(%rsp), %xmm5, %xmm5
	vaesenc	192(%rsp), %xmm5, %xmm5
	vaesenc	176(%rsp), %xmm5, %xmm5
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm5, %xmm5
	vmovdqa	%xmm1, %xmm9
	vmovdqa	%xmm11, %xmm1
	vaesenc	256(%rsp), %xmm5, %xmm5
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	160(%rsp), %xmm5, %xmm5
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	240(%rsp), %xmm5, %xmm5
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenclast	%xmm12, %xmm5, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vmovdqu	%xmm2, (%rax)
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm2
	vmovdqa	%xmm14, %xmm6
	vmovdqa	%xmm7, %xmm14
	vpxor	%xmm3, %xmm2, %xmm4
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI2_18(%rip), %xmm8, %xmm8
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB2_36
.LBB2_37:
	vmovdqa	%xmm8, (%rsp)
	vmovdqa	%xmm4, 32(%rsp)
	testq	%rbx, %rbx
	je	.LBB2_38
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqa	%xmm2, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r9, %rsi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	64(%rsp), %xmm1
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	112(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenclast	208(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm1, 320(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 304(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovups	32(%r12), %xmm0
	vmovaps	%xmm0, (%rsp)
	testq	%r15, %r15
	je	.LBB2_42
	vmovaps	320(%rsp), %xmm0
	vmovaps	%xmm0, 480(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	480(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	64(%rsp), %xmm0
	movq	%r13, %r8
	jmp	.LBB2_44
.LBB2_38:
	vmovdqa	%xmm12, %xmm7
	vmovups	32(%r12), %xmm2
	vmovaps	%xmm2, (%rsp)
	movq	%r13, %r8
	vpbroadcastq	.LCPI2_27(%rip), %xmm5
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm4
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	32(%rsp), %xmm2
	jmp	.LBB2_45
.LBB2_47:
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	128(%rsp), %xmm12
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_27(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqa	112(%rsp), %xmm13
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm6
.LBB2_40:
	vmovdqu	32(%r12), %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	%xmm8, %xmm11
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	208(%rsp), %xmm7
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm4
	jmp	.LBB2_45
.LBB2_42:
	movq	%r13, %r8
	vmovdqa	304(%rsp), %xmm0
.LBB2_44:
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	128(%rsp), %xmm12
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_27(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqa	112(%rsp), %xmm13
	vmovdqa	16(%rsp), %xmm11
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm4
	vmovdqa	96(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm14
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm6
	vmovdqa	208(%rsp), %xmm7
.LBB2_45:
	shlq	$3, %r15
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	384(%rsp), %xmm13, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	48(%rsp), %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm3, %xmm3
	vpshufb	.LCPI2_24(%rip), %xmm1, %xmm1
	vpshufb	.LCPI2_25(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	(%rsp), %xmm1, %xmm1
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_46:
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
	.size	haberdashery_aes256gcmdndkv2kc_skylake_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndkv2kc_skylake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndkv2kc_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2kc_skylake_is_supported,@function
haberdashery_aes256gcmdndkv2kc_skylake_is_supported:
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
	.size	haberdashery_aes256gcmdndkv2kc_skylake_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndkv2kc_skylake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

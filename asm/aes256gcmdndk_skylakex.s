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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	4294967297
.LCPI0_2:
	.quad	8589934594
.LCPI0_3:
	.quad	17179869188
.LCPI0_4:
	.quad	34359738376
.LCPI0_5:
	.quad	68719476752
.LCPI0_6:
	.quad	137438953504
.LCPI0_7:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmdndk_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_init,@function
haberdashery_aes256gcmdndk_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovups	(%rsi), %ymm0
	vmovupd	(%rsi), %xmm1
	vmovdqu	16(%rsi), %xmm3
	vpslldq	$4, %xmm1, %xmm2
	vpslldq	$8, %xmm1, %xmm4
	vxorpd	%xmm4, %xmm2, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpbroadcastd	.LCPI0_8(%rip), %xmm2
	vpshufb	%xmm2, %xmm3, %xmm6
	vpbroadcastq	.LCPI0_1(%rip), %xmm7
	vaesenclast	%xmm7, %xmm6, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	vpslldq	$4, %xmm3, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vxorpd	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm3, %xmm6
	vpshufd	$255, %xmm1, %xmm7
	vxorpd	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm3
	vpternlogq	$150, %xmm6, %xmm4, %xmm3
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm6, %xmm4, %xmm7
	vpshufb	%xmm2, %xmm3, %xmm4
	vpbroadcastq	.LCPI0_2(%rip), %xmm6
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm1, %xmm4
	vpslldq	$4, %xmm3, %xmm6
	vpslldq	$8, %xmm3, %xmm7
	vpslldq	$12, %xmm3, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm4, %xmm6
	vaesenclast	%xmm5, %xmm6, %xmm6
	vpternlogq	$150, %xmm8, %xmm3, %xmm6
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufb	%xmm2, %xmm6, %xmm7
	vpbroadcastq	.LCPI0_3(%rip), %xmm8
	vaesenclast	%xmm8, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm4, %xmm7
	vpslldq	$4, %xmm6, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpslldq	$12, %xmm6, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpshufd	$255, %xmm7, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm6, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufb	%xmm2, %xmm8, %xmm9
	vpbroadcastq	.LCPI0_4(%rip), %xmm10
	vaesenclast	%xmm10, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm7, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vpshufd	$255, %xmm9, %xmm10
	vaesenclast	%xmm5, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpslldq	$12, %xmm9, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	vpshufb	%xmm2, %xmm10, %xmm11
	vpbroadcastq	.LCPI0_5(%rip), %xmm12
	vaesenclast	%xmm12, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpslldq	$12, %xmm10, %xmm14
	vpternlogq	$150, %xmm13, %xmm12, %xmm14
	vpshufd	$255, %xmm11, %xmm12
	vaesenclast	%xmm5, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpslldq	$12, %xmm11, %xmm15
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpshufb	%xmm2, %xmm12, %xmm13
	vpbroadcastq	.LCPI0_6(%rip), %xmm14
	vaesenclast	%xmm14, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpslldq	$12, %xmm12, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufd	$255, %xmm13, %xmm14
	vaesenclast	%xmm5, %xmm14, %xmm5
	vpternlogq	$150, %xmm16, %xmm12, %xmm5
	vpslldq	$4, %xmm13, %xmm14
	vpslldq	$8, %xmm13, %xmm15
	vpslldq	$12, %xmm13, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufb	%xmm2, %xmm5, %xmm2
	vpbroadcastq	.LCPI0_7(%rip), %xmm14
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpternlogq	$150, %xmm16, %xmm13, %xmm2
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
	.size	haberdashery_aes256gcmdndk_skylakex_init, .Lfunc_end0-haberdashery_aes256gcmdndk_skylakex_init
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
.LCPI1_4:
	.quad	4294967297
.LCPI1_11:
	.quad	274877907008
.LCPI1_13:
	.quad	-4467570830351532032
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
	.section	.text.haberdashery_aes256gcmdndk_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_encrypt,@function
haberdashery_aes256gcmdndk_skylakex_encrypt:
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
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	464(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	480(%rsp), %r13
	jne	.LBB1_45
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_45
	movq	%r8, %rbx
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_45
	cmpq	$24, %rdx
	jne	.LBB1_45
	cmpq	$16, 496(%rsp)
	jne	.LBB1_45
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI1_29(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vmovdqa	(%rdi), %xmm2
	vmovdqa	16(%rdi), %xmm3
	vmovdqa	32(%rdi), %xmm4
	vmovdqa	48(%rdi), %xmm5
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa64	.LCPI1_1(%rip), %xmm29
	vpxorq	%xmm29, %xmm0, %xmm2
	vpxorq	%xmm29, %xmm1, %xmm6
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
	vpxor	%xmm4, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm6, %xmm5
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI1_6(%rip), %xmm16
	vpshufb	%xmm16, %xmm5, %xmm1
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	vmovdqa64	%xmm4, %xmm25
	vaesenc	%xmm5, %xmm4, %xmm1
	vpslldq	$4, %xmm5, %xmm2
	vpslldq	$8, %xmm5, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm0, %xmm2
	vpxor	%xmm9, %xmm9, %xmm9
	vaesenclast	%xmm9, %xmm2, %xmm7
	vmovdqa64	%xmm5, %xmm23
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa64	%xmm0, %xmm24
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm5
	vpslldq	$12, %xmm0, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm7, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm0, %xmm6, %xmm10
	#NO_APP
	vmovdqa64	%xmm7, %xmm26
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm10, %xmm8
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpternlogq	$150, %xmm7, %xmm5, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovdqa64	%xmm10, %xmm21
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpslldq	$12, %xmm10, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm8, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpternlogq	$150, %xmm10, %xmm6, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm7, %xmm10
	vaesenclast	%xmm9, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm5, %xmm10
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpslldq	$12, %xmm7, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm10, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm7, %xmm6, %xmm11
	#NO_APP
	vmovdqa64	%xmm10, %xmm19
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm11, %xmm0
	vaesenclast	%xmm9, %xmm0, %xmm0
	vpternlogq	$150, %xmm10, %xmm5, %xmm0
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	vmovdqa64	%xmm11, %xmm20
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm5
	vpslldq	$12, %xmm11, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm0, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpternlogq	$150, %xmm11, %xmm6, %xmm14
	#NO_APP
	vmovaps	%xmm0, 16(%rsp)
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm3
	vpslldq	$8, %xmm0, %xmm4
	vpslldq	$12, %xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm9, %xmm15, %xmm15
	vpternlogq	$150, %xmm0, %xmm5, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm14, (%rsp)
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm5
	vpslldq	$12, %xmm14, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm15, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpternlogq	$150, %xmm14, %xmm6, %xmm0
	#NO_APP
	vmovaps	%xmm0, %xmm5
	vpslldq	$4, %xmm15, %xmm2
	vpunpcklqdq	%xmm15, %xmm9, %xmm3
	vinsertps	$55, %xmm15, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vshufps	$255, %xmm0, %xmm0, %xmm2
	vaesenclast	%xmm9, %xmm2, %xmm6
	vpternlogq	$150, %xmm4, %xmm15, %xmm6
	vpshufb	%xmm16, %xmm6, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm4
	vpslldq	$4, %xmm5, %xmm0
	vpunpcklqdq	%xmm5, %xmm9, %xmm2
	vinsertps	$55, %xmm5, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpternlogq	$150, %xmm3, %xmm5, %xmm4
	vmovdqa	%xmm4, 304(%rsp)
	vmovdqa64	%xmm15, %xmm30
	vaesenc	%xmm15, %xmm1, %xmm0
	vmovdqa64	%xmm5, %xmm31
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpaddq	%xmm0, %xmm0, %xmm1
	vpsrlq	$63, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpblendd	$12, %xmm0, %xmm9, %xmm0
	vpsllq	$63, %xmm0, %xmm3
	vpternlogq	$30, %xmm2, %xmm1, %xmm3
	vpsllq	$62, %xmm0, %xmm1
	vpsllq	$57, %xmm0, %xmm11
	vpternlogq	$150, %xmm1, %xmm3, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm14
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm11, %xmm14, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm11, %xmm14, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm0, %xmm2, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm13
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm13, %xmm0
	vpclmulqdq	$1, %xmm11, %xmm13, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm12
	vpternlogq	$150, %xmm0, %xmm2, %xmm12
	leaq	-1(%rbx), %rdx
	cmpq	%rax, %rdx
	vmovdqa	%xmm6, 64(%rsp)
	vmovdqa	%xmm11, 256(%rsp)
	vmovdqa	%xmm10, 240(%rsp)
	vmovdqa	%xmm4, 272(%rsp)
	jae	.LBB1_23
	cmpq	$96, %rbx
	jae	.LBB1_20
	movq	%rbx, %rax
	cmpq	$16, %rax
	vmovdqa64	%xmm30, %xmm5
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
	vmovdqa	%xmm12, 320(%rsp)
	vmovdqa	%xmm13, 336(%rsp)
	vmovdqa	%xmm15, 352(%rsp)
	vmovdqa	%xmm14, 368(%rsp)
	vmovdqa	%xmm9, 48(%rsp)
	vmovdqa64	%xmm31, 80(%rsp)
	vmovdqa	%xmm5, 96(%rsp)
	vmovdqa64	%xmm20, 112(%rsp)
	vmovdqa64	%xmm19, 128(%rsp)
	vmovdqa	%xmm7, 144(%rsp)
	vmovdqa	%xmm8, 160(%rsp)
	vmovdqa64	%xmm21, 176(%rsp)
	vmovdqa64	%xmm26, 192(%rsp)
	vmovdqa64	%xmm24, 208(%rsp)
	vmovdqa64	%xmm23, 224(%rsp)
	vmovdqa64	%xmm25, 288(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_43
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovdqa64	288(%rsp), %xmm25
	vmovdqa64	224(%rsp), %xmm23
	vmovdqa64	208(%rsp), %xmm24
	vmovdqa64	192(%rsp), %xmm26
	vmovdqa64	176(%rsp), %xmm21
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm7
	vmovdqa64	128(%rsp), %xmm19
	vmovdqa64	112(%rsp), %xmm20
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	vmovdqa64	96(%rsp), %xmm30
	vmovdqa64	80(%rsp), %xmm31
	vmovdqa	64(%rsp), %xmm6
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	240(%rsp), %xmm10
	vmovdqa64	.LCPI1_1(%rip), %xmm29
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	368(%rsp), %xmm14
	vmovdqa	352(%rsp), %xmm15
	vmovdqa	336(%rsp), %xmm13
	vmovdqa	320(%rsp), %xmm12
	jb	.LBB1_45
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	jmp	.LBB1_26
.LBB1_23:
	testq	%r13, %r13
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	je	.LBB1_44
.LBB1_26:
	movq	472(%rsp), %rax
	cmpq	$96, %r13
	vmovdqa64	%xmm23, 224(%rsp)
	vmovdqa64	%xmm24, 208(%rsp)
	vmovdqa64	%xmm26, 192(%rsp)
	vmovdqa64	%xmm21, 176(%rsp)
	vmovdqa	%xmm8, 160(%rsp)
	vmovdqa	%xmm7, 144(%rsp)
	vmovdqa64	%xmm19, 128(%rsp)
	vmovdqa64	%xmm20, 112(%rsp)
	vmovdqa64	%xmm30, 96(%rsp)
	vmovdqa64	%xmm31, 80(%rsp)
	jae	.LBB1_30
	movq	%r13, %r15
	vmovdqa64	%xmm23, %xmm14
	vmovdqa64	%xmm26, %xmm15
	vmovdqa64	%xmm21, %xmm3
	cmpq	$16, %r15
	jb	.LBB1_29
.LBB1_35:
	vmovdqa64	.LCPI1_12(%rip), %xmm21
	vmovdqa64	.LCPI1_21(%rip), %xmm17
	vmovdqa64	%xmm9, %xmm16
	vmovdqa	304(%rsp), %xmm0
	vmovdqa64	%xmm24, %xmm9
	vmovdqa64	%xmm30, %xmm1
	vmovdqa64	%xmm19, %xmm12
	vmovdqa64	%xmm20, %xmm13
	.p2align	4, 0x90
.LBB1_36:
	vpshufb	%xmm21, %xmm29, %xmm2
	vpxorq	%xmm2, %xmm25, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vmovdqa64	%xmm31, %xmm4
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm2, %xmm2
	vpxor	(%r14), %xmm2, %xmm2
	vmovdqa64	%xmm3, %xmm18
	vpshufb	%xmm21, %xmm2, %xmm3
	vpxorq	%xmm3, %xmm16, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpxorq	%xmm3, %xmm6, %xmm16
	vmovdqa	64(%rsp), %xmm6
	vpshufd	$78, %xmm5, %xmm3
	vmovdqa	(%rsp), %xmm5
	leaq	16(%r14), %rsi
	leaq	16(%rax), %r12
	addq	$-16, %r15
	vpaddd	%xmm17, %xmm29, %xmm29
	vmovdqu	%xmm2, (%rax)
	vpsrldq	$8, %xmm4, %xmm2
	vmovdqa	16(%rsp), %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm16
	vmovdqa64	%xmm18, %xmm3
	movq	%rsi, %r14
	movq	%r12, %rax
	cmpq	$15, %r15
	ja	.LBB1_36
	vmovdqa64	%xmm16, 48(%rsp)
	testq	%r15, %r15
	je	.LBB1_38
.LBB1_40:
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r14
	movq	%r15, %rdx
	vmovdqa64	%xmm25, 288(%rsp)
	vmovdqa64	%xmm29, 272(%rsp)
	callq	*%r14
	vmovdqa	272(%rsp), %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	288(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenclast	304(%rsp), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 272(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%r14
	testq	%r13, %r13
	je	.LBB1_41
	vmovaps	272(%rsp), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	384(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
.LBB1_43:
	vmovdqa64	288(%rsp), %xmm25
	vmovdqa64	224(%rsp), %xmm23
	vmovdqa64	208(%rsp), %xmm24
	vmovdqa64	192(%rsp), %xmm26
	vmovdqa64	176(%rsp), %xmm21
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm7
	vmovdqa64	128(%rsp), %xmm19
	vmovdqa64	112(%rsp), %xmm20
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	vmovdqa64	96(%rsp), %xmm30
	vmovdqa64	80(%rsp), %xmm31
	vmovdqa	64(%rsp), %xmm6
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	240(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm1
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	jmp	.LBB1_44
.LBB1_20:
	vmovdqa64	%xmm7, %xmm18
	vmovdqa64	%xmm8, %xmm17
	vmovdqa64	%xmm21, %xmm16
	vmovdqa64	.LCPI1_12(%rip), %xmm22
	movq	%rbx, %rax
	vmovdqa	%xmm12, %xmm0
	vmovdqa	%xmm13, %xmm12
	vmovdqa	%xmm15, %xmm13
	vmovdqa	%xmm14, %xmm15
	vmovdqa	%xmm4, %xmm14
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	vpshufb	%xmm22, %xmm4, %xmm4
	vpshufb	%xmm22, %xmm5, %xmm5
	vpshufb	%xmm22, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm8
	vmovdqa64	%xmm9, %xmm21
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm11
	vpternlogq	$150, %xmm10, %xmm8, %xmm11
	vmovdqa	240(%rsp), %xmm10
	vpclmulqdq	$0, %xmm4, %xmm13, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm13, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm13, %xmm9
	vpternlogq	$150, %xmm7, %xmm11, %xmm9
	vmovdqa	256(%rsp), %xmm11
	vpshufb	%xmm22, %xmm2, %xmm2
	vpshufb	%xmm22, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm13, %xmm4
	vpternlogq	$150, %xmm6, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm6
	vpternlogq	$150, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm7
	vpternlogq	$150, %xmm5, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufb	%xmm22, %xmm1, %xmm1
	vpxorq	%xmm1, %xmm21, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm4
	vpternlogq	$150, %xmm3, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm3
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm9
	vpternlogq	$150, %xmm1, %xmm2, %xmm9
	vpsrldq	$8, %xmm4, %xmm1
	vpshufd	$78, %xmm3, %xmm2
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm1, %xmm2, %xmm9
	cmpq	$96, %rax
	jae	.LBB1_21
	vmovdqa64	%xmm16, %xmm21
	vmovdqa64	%xmm17, %xmm8
	vmovdqa64	%xmm18, %xmm7
	vmovdqa	64(%rsp), %xmm6
	vmovdqa	%xmm15, %xmm14
	vmovdqa	%xmm13, %xmm15
	vmovdqa	%xmm12, %xmm13
	vmovdqa	%xmm0, %xmm12
	cmpq	$16, %rax
	vmovdqa64	%xmm30, %xmm5
	jae	.LBB1_10
.LBB1_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_17
.LBB1_24:
	testq	%r13, %r13
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	je	.LBB1_44
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jae	.LBB1_26
	jmp	.LBB1_45
.LBB1_30:
	vmovdqa	%xmm12, 320(%rsp)
	vmovdqa	%xmm13, 336(%rsp)
	vmovdqa	%xmm15, 352(%rsp)
	vmovdqa	%xmm14, 368(%rsp)
	vmovdqa	%xmm9, 48(%rsp)
	vmovdqa64	%xmm25, %xmm9
	vpxorq	.LCPI1_14(%rip), %xmm25, %xmm0
	vpxorq	.LCPI1_15(%rip), %xmm25, %xmm1
	vpxorq	.LCPI1_16(%rip), %xmm25, %xmm2
	vpxorq	.LCPI1_17(%rip), %xmm25, %xmm3
	vmovdqa64	%xmm6, %xmm16
	vmovdqa	%xmm4, %xmm6
	vpxorq	.LCPI1_18(%rip), %xmm25, %xmm4
	vmovdqa64	%xmm5, %xmm17
	vpxorq	.LCPI1_19(%rip), %xmm25, %xmm5
	vmovdqa64	%xmm23, %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm19, %xmm12
	vmovdqa64	%xmm24, %xmm9
	vmovdqa	%xmm7, %xmm11
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovdqa	%xmm8, %xmm10
	vmovdqa64	%xmm20, %xmm8
	vmovdqa64	%xmm26, %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm21, %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm30, %xmm10
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm31, %xmm11
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
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
	vmovdqa64	%xmm17, %xmm6
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
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm16, %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	#NO_APP
	vmovdqa	304(%rsp), %xmm10
	#APP
	vaesenclast	%xmm10, %xmm0, %xmm0
	vaesenclast	%xmm10, %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm2, %xmm2
	vaesenclast	%xmm10, %xmm3, %xmm3
	vaesenclast	%xmm10, %xmm4, %xmm4
	vaesenclast	%xmm10, %xmm5, %xmm5
	#NO_APP
	vpxorq	(%r14), %xmm0, %xmm24
	vpxorq	16(%r14), %xmm1, %xmm30
	vpxorq	32(%r14), %xmm2, %xmm19
	vpxor	48(%r14), %xmm3, %xmm11
	vpxor	64(%r14), %xmm4, %xmm12
	vpxorq	80(%r14), %xmm5, %xmm21
	vmovdqu64	%xmm24, (%rax)
	vmovdqu64	%xmm30, 16(%rax)
	vmovdqu64	%xmm19, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu64	%xmm21, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	leaq	-96(%r13), %r15
	vmovdqa64	.LCPI1_20(%rip), %xmm29
	cmpq	$96, %r15
	jae	.LBB1_32
	vmovdqa64	256(%rsp), %xmm28
	vmovdqa64	240(%rsp), %xmm27
	vmovdqa64	48(%rsp), %xmm26
	vmovdqa64	272(%rsp), %xmm20
	vmovdqa64	368(%rsp), %xmm31
	vmovdqa64	352(%rsp), %xmm18
	vmovdqa64	336(%rsp), %xmm17
	vmovdqa64	320(%rsp), %xmm22
	jmp	.LBB1_34
.LBB1_11:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_16
.LBB1_13:
	vmovdqa64	%xmm12, %xmm16
	vmovdqa	%xmm13, %xmm12
	vmovdqa	%xmm15, %xmm13
	vmovdqa	%xmm14, %xmm15
	vmovdqa	.LCPI1_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_14:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm4, %xmm5
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm9
	vpternlogq	$150, %xmm3, %xmm2, %xmm9
	cmpq	$15, %rax
	ja	.LBB1_14
	movq	%rax, %rdx
	vmovdqa	%xmm15, %xmm14
	vmovdqa	%xmm13, %xmm15
	vmovdqa	%xmm12, %xmm13
	vmovdqa64	%xmm16, %xmm12
	vmovdqa64	%xmm30, %xmm5
	testq	%rdx, %rdx
	jne	.LBB1_17
	jmp	.LBB1_24
.LBB1_41:
	vmovdqa64	288(%rsp), %xmm25
	vmovdqa64	224(%rsp), %xmm23
	vmovdqa64	208(%rsp), %xmm24
	vmovdqa64	192(%rsp), %xmm26
	vmovdqa64	176(%rsp), %xmm21
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm7
	vmovdqa64	128(%rsp), %xmm19
	vmovdqa64	112(%rsp), %xmm20
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	vmovdqa64	96(%rsp), %xmm30
	vmovdqa64	80(%rsp), %xmm31
	vmovdqa	64(%rsp), %xmm6
	jmp	.LBB1_39
.LBB1_32:
	vmovdqa	.LCPI1_12(%rip), %xmm2
	vpxord	%xmm23, %xmm23, %xmm23
	vmovdqa64	304(%rsp), %xmm16
	vmovdqa64	256(%rsp), %xmm28
	vmovdqa64	240(%rsp), %xmm27
	vmovdqa64	48(%rsp), %xmm26
	vmovdqa64	272(%rsp), %xmm20
	vmovdqa64	368(%rsp), %xmm31
	vmovdqa64	352(%rsp), %xmm18
	vmovdqa64	336(%rsp), %xmm17
	vmovdqa64	320(%rsp), %xmm22
	.p2align	4, 0x90
.LBB1_33:
	vpshufb	%xmm2, %xmm29, %xmm3
	vpaddd	.LCPI1_21(%rip), %xmm29, %xmm4
	vpshufb	%xmm2, %xmm4, %xmm4
	vpaddd	.LCPI1_1(%rip), %xmm29, %xmm5
	vpshufb	%xmm2, %xmm5, %xmm5
	vpaddd	.LCPI1_22(%rip), %xmm29, %xmm6
	vpshufb	%xmm2, %xmm6, %xmm6
	vpaddd	.LCPI1_2(%rip), %xmm29, %xmm7
	vpshufb	%xmm2, %xmm7, %xmm7
	vpaddd	.LCPI1_23(%rip), %xmm29, %xmm8
	vpshufb	%xmm2, %xmm8, %xmm8
	vpxorq	%xmm3, %xmm25, %xmm13
	vpxorq	%xmm4, %xmm25, %xmm14
	vpxorq	%xmm5, %xmm25, %xmm15
	vpxorq	%xmm6, %xmm25, %xmm3
	vpxorq	%xmm7, %xmm25, %xmm4
	vpxorq	%xmm8, %xmm25, %xmm5
	vmovaps	224(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm2, %xmm21, %xmm9
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm7, %xmm7, %xmm7
	vmovdqa64	%xmm28, %xmm1
	vmovaps	208(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	#NO_APP
	vmovaps	192(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm2, %xmm12, %xmm0
	vmovaps	176(%rsp), %xmm1
	vmovdqa64	%xmm31, %xmm10
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm2, %xmm11, %xmm0
	vmovaps	144(%rsp), %xmm1
	vmovdqa64	%xmm18, %xmm10
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm2, %xmm19, %xmm0
	vmovaps	112(%rsp), %xmm1
	vmovdqa64	%xmm17, %xmm10
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	16(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm2, %xmm30, %xmm0
	vmovdqa64	%xmm22, %xmm10
	vmovaps	(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm2, %xmm24, %xmm0
	vpxorq	%xmm0, %xmm26, %xmm0
	vmovaps	96(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm20, %xmm10
	vmovdqa	80(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm7, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	#NO_APP
	vmovaps	64(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	#NO_APP
	vmovdqa64	%xmm16, %xmm0
	#APP
	vaesenclast	%xmm0, %xmm13, %xmm13
	vaesenclast	%xmm0, %xmm14, %xmm14
	vaesenclast	%xmm0, %xmm15, %xmm15
	vaesenclast	%xmm0, %xmm3, %xmm3
	vaesenclast	%xmm0, %xmm4, %xmm4
	vaesenclast	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpxorq	(%r14), %xmm13, %xmm24
	vpxorq	16(%r14), %xmm14, %xmm30
	vpxorq	32(%r14), %xmm15, %xmm19
	vpxor	48(%r14), %xmm3, %xmm11
	vpunpcklqdq	%xmm8, %xmm23, %xmm0
	vpunpckhqdq	%xmm23, %xmm8, %xmm3
	vpxor	64(%r14), %xmm4, %xmm12
	vpxorq	80(%r14), %xmm5, %xmm21
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm0, %xmm4
	vmovdqa64	%xmm27, %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpxorq	%xmm3, %xmm7, %xmm26
	vpshufd	$78, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm26
	vpaddd	.LCPI1_24(%rip), %xmm29, %xmm29
	vmovdqu64	%xmm24, (%rax)
	vmovdqu64	%xmm30, 16(%rax)
	vmovdqu64	%xmm19, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu64	%xmm21, 80(%rax)
	addq	$96, %r14
	addq	$96, %rax
	addq	$-96, %r15
	cmpq	$95, %r15
	ja	.LBB1_33
.LBB1_34:
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm11, %xmm2
	vpshufb	%xmm0, %xmm12, %xmm3
	vpshufb	%xmm0, %xmm21, %xmm4
	vmovdqa64	%xmm28, %xmm11
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqa64	%xmm31, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm6
	vmovdqa64	%xmm18, %xmm9
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm6
	vpternlogq	$150, %xmm5, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm3
	vpshufb	%xmm0, %xmm30, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm2
	vpshufb	%xmm0, %xmm19, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpternlogq	$150, %xmm4, %xmm3, %xmm2
	vmovdqa64	%xmm17, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm3
	vmovdqa64	%xmm22, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm6
	vpternlogq	$150, %xmm3, %xmm7, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm7
	vpternlogq	$150, %xmm3, %xmm4, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpshufb	%xmm0, %xmm24, %xmm0
	vpxorq	%xmm0, %xmm26, %xmm0
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vmovdqa64	%xmm20, %xmm5
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm2
	vpslldq	$8, %xmm3, %xmm4
	vpternlogq	$150, %xmm2, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vmovdqa64	%xmm27, %xmm10
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm2
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm9
	vpternlogq	$150, %xmm0, %xmm1, %xmm9
	vpsrldq	$8, %xmm3, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm9
	vmovdqa	224(%rsp), %xmm14
	vmovdqa64	208(%rsp), %xmm24
	vmovdqa	192(%rsp), %xmm15
	vmovdqa	176(%rsp), %xmm3
	vmovdqa	160(%rsp), %xmm8
	vmovdqa	144(%rsp), %xmm7
	vmovdqa64	128(%rsp), %xmm19
	vmovdqa64	112(%rsp), %xmm20
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm5
	vmovdqa64	96(%rsp), %xmm30
	vmovdqa64	80(%rsp), %xmm31
	vmovdqa	64(%rsp), %xmm6
	cmpq	$16, %r15
	jae	.LBB1_35
.LBB1_29:
	movq	%rax, %r12
	movq	%r14, %rsi
	vmovdqa64	%xmm9, %xmm16
	vmovdqa64	%xmm24, %xmm9
	vmovdqa64	%xmm16, 48(%rsp)
	testq	%r15, %r15
	jne	.LBB1_40
.LBB1_38:
	vmovdqa64	%xmm3, %xmm21
	vmovdqa64	%xmm15, %xmm26
	vmovdqa64	%xmm9, %xmm24
	vmovdqa64	%xmm14, %xmm23
.LBB1_39:
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	240(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm9
.LBB1_44:
	vmovq	%rbx, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	.LCPI1_25(%rip), %xmm25, %xmm3
	vmovdqa64	%xmm23, %xmm9
	vaesenc	%xmm9, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm9
	vaesenc	%xmm9, %xmm3, %xmm3
	vmovdqa64	%xmm26, %xmm9
	vaesenc	%xmm9, %xmm3, %xmm3
	vmovdqa64	%xmm21, %xmm9
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vmovdqa64	%xmm19, %xmm7
	vaesenc	%xmm7, %xmm3, %xmm3
	vmovdqa64	%xmm20, %xmm7
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa64	%xmm30, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm31, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenclast	304(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_27(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_26(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	movq	488(%rsp), %rax
	vmovdqu	%xmm2, (%rax)
	movl	$1, %ebp
.LBB1_45:
	movl	%ebp, %eax
	addq	$408, %rsp
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
	.size	haberdashery_aes256gcmdndk_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_skylakex_encrypt
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
.LCPI2_20:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_4:
	.quad	4294967297
.LCPI2_11:
	.quad	274877907008
.LCPI2_13:
	.quad	-4467570830351532032
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
	.section	.text.haberdashery_aes256gcmdndk_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_decrypt,@function
haberdashery_aes256gcmdndk_skylakex_decrypt:
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
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	464(%rsp), %r13
	xorl	%eax, %eax
	cmpq	496(%rsp), %r13
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
	cmpq	$16, 480(%rsp)
	jne	.LBB2_47
	movq	%r9, %r14
	vmovq	4(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vmovd	(%rsi), %xmm2
	vpsllq	$32, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpbroadcastd	.LCPI2_21(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vmovdqa	(%rdi), %xmm3
	vmovdqa	16(%rdi), %xmm4
	vmovdqa	32(%rdi), %xmm5
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vmovdqa	48(%rdi), %xmm2
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa64	.LCPI2_1(%rip), %xmm26
	vpxor	%xmm1, %xmm3, %xmm1
	vpxorq	%xmm26, %xmm0, %xmm3
	vpxorq	%xmm26, %xmm1, %xmm6
	vmovdqa	.LCPI2_2(%rip), %xmm7
	vpxor	%xmm7, %xmm0, %xmm8
	vpxor	%xmm7, %xmm1, %xmm7
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm7, %xmm4
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm8, %xmm7
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm6, %xmm5
	vaesenc	%xmm2, %xmm7, %xmm6
	vaesenc	%xmm2, %xmm4, %xmm2
	vmovdqa	64(%rdi), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm5
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm2, %xmm2
	vmovdqa	80(%rdi), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm5
	vaesenc	%xmm4, %xmm6, %xmm6
	vmovdqa	96(%rdi), %xmm7
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa	112(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	128(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	144(%rdi), %xmm7
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa	160(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	176(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa	192(%rdi), %xmm7
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm2, %xmm2
	vmovdqa	208(%rdi), %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm2, %xmm2
	vmovdqa	224(%rdi), %xmm6
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	%xmm4, %xmm3, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpxor	%xmm2, %xmm5, %xmm5
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI2_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm5, %xmm1
	vpbroadcastq	.LCPI2_4(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm7
	vpternlogq	$150, %xmm2, %xmm4, %xmm7
	vmovdqa64	%xmm4, %xmm25
	vaesenc	%xmm5, %xmm4, %xmm1
	vpslldq	$4, %xmm5, %xmm2
	vpslldq	$8, %xmm5, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm7, %xmm2
	vpxor	%xmm12, %xmm12, %xmm12
	vaesenclast	%xmm12, %xmm2, %xmm8
	vbroadcastss	.LCPI2_5(%rip), %xmm3
	vmovdqa64	%xmm5, %xmm27
	vpternlogq	$150, %xmm4, %xmm5, %xmm8
	vbroadcastss	.LCPI2_6(%rip), %xmm2
	vmovdqa64	%xmm7, %xmm17
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpslldq	$12, %xmm7, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm8, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm6, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm3
	vmovdqa64	%xmm8, %xmm23
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm9, %xmm13
	vaesenclast	%xmm12, %xmm13, %xmm13
	vpternlogq	$150, %xmm8, %xmm6, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm13, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm6, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm3
	vpslldq	$8, %xmm13, %xmm4
	vpslldq	$12, %xmm13, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm7, %xmm8
	vaesenclast	%xmm12, %xmm8, %xmm8
	vpternlogq	$150, %xmm13, %xmm5, %xmm8
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm3
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpslldq	$12, %xmm7, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm8, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm7, %xmm6, %xmm11
	#NO_APP
	vmovdqa64	%xmm7, %xmm16
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpslldq	$12, %xmm8, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm11, %xmm14
	vaesenclast	%xmm12, %xmm14, %xmm14
	vpternlogq	$150, %xmm8, %xmm5, %xmm14
	#NO_APP
	vmovdqa64	%xmm8, %xmm19
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm5
	vpslldq	$12, %xmm11, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm14, %xmm15
	vaesenclast	%xmm3, %xmm15, %xmm15
	vpternlogq	$150, %xmm11, %xmm6, %xmm15
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm3
	vmovaps	%xmm14, 32(%rsp)
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm5
	vpslldq	$12, %xmm14, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm15, %xmm7
	vaesenclast	%xmm12, %xmm7, %xmm7
	vpternlogq	$150, %xmm14, %xmm6, %xmm7
	#NO_APP
	vmovdqa	%xmm9, %xmm8
	vmovapd	%xmm7, %xmm9
	vmovaps	%xmm15, 48(%rsp)
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm4
	vpslldq	$8, %xmm15, %xmm5
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufb	%xmm2, %xmm7, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpternlogq	$150, %xmm15, %xmm6, %xmm14
	#NO_APP
	vpslldq	$4, %xmm7, %xmm2
	vpunpcklqdq	%xmm7, %xmm12, %xmm3
	vinsertps	$55, %xmm7, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm14, %xmm2
	vaesenclast	%xmm12, %xmm2, %xmm7
	vpternlogq	$150, %xmm4, %xmm9, %xmm7
	vpshufb	%xmm0, %xmm7, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm15
	vpslldq	$4, %xmm14, %xmm0
	vpunpcklqdq	%xmm14, %xmm12, %xmm2
	vinsertps	$55, %xmm14, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpternlogq	$150, %xmm3, %xmm14, %xmm15
	vmovdqa64	%xmm9, %xmm29
	vaesenc	%xmm9, %xmm1, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenclast	%xmm15, %xmm0, %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpaddq	%xmm0, %xmm0, %xmm1
	vpsrlq	$63, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpblendd	$12, %xmm0, %xmm12, %xmm0
	vpsllq	$63, %xmm0, %xmm3
	vpternlogq	$30, %xmm2, %xmm1, %xmm3
	vpsllq	$62, %xmm0, %xmm1
	vpsllq	$57, %xmm0, %xmm6
	vpternlogq	$150, %xmm1, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpbroadcastq	.LCPI2_13(%rip), %xmm10
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm0, %xmm2, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm2
	vmovdqa64	%xmm6, %xmm21
	vmovdqa64	%xmm3, %xmm22
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	testq	%rbx, %rbx
	vmovdqa	%xmm8, 208(%rsp)
	vmovdqa64	%xmm13, %xmm18
	vmovdqa	%xmm13, 176(%rsp)
	vmovdqa64	%xmm16, %xmm13
	vmovdqa64	%xmm19, %xmm6
	vmovdqa64	%xmm16, 160(%rsp)
	vmovdqa64	%xmm19, 144(%rsp)
	vmovdqa	%xmm11, 128(%rsp)
	vmovdqa	%xmm14, %xmm0
	vmovaps	%xmm14, 272(%rsp)
	vmovdqa	%xmm15, %xmm14
	vmovdqa64	%xmm7, %xmm31
	vmovdqa	%xmm7, 256(%rsp)
	vmovdqa	%xmm15, 112(%rsp)
	vmovdqa	%xmm10, 288(%rsp)
	vmovdqa	%xmm4, 16(%rsp)
	vmovdqa	%xmm5, 368(%rsp)
	vmovdqa	%xmm9, 352(%rsp)
	je	.LBB2_6
	vpxor	%xmm9, %xmm9, %xmm9
	cmpq	$96, %rbx
	jae	.LBB2_19
	vmovdqa64	%xmm11, %xmm24
	movq	%rbx, %rax
	vmovdqa64	%xmm21, %xmm11
	vmovdqa	%xmm0, %xmm7
	vmovdqa64	%xmm22, %xmm21
	cmpq	$16, %rax
	vmovdqa64	%xmm17, %xmm5
	vmovdqa64	%xmm23, %xmm4
	jb	.LBB2_10
.LBB2_11:
	leaq	-16(%rax), %r15
	testb	$16, %r15b
	je	.LBB2_12
	cmpq	$16, %r15
	jae	.LBB2_14
.LBB2_17:
	testq	%r15, %r15
	je	.LBB2_18
.LBB2_22:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	movq	%r15, %rdx
	vmovdqa64	%xmm25, 240(%rsp)
	vmovdqa64	%xmm27, 96(%rsp)
	vmovdqa	%xmm5, 80(%rsp)
	vmovdqa	%xmm4, 64(%rsp)
	vmovdqa64	%xmm29, 224(%rsp)
	vmovdqa	%xmm11, 192(%rsp)
	vmovdqa	%xmm9, 320(%rsp)
	vmovdqa64	%xmm21, 304(%rsp)
	vmovdqa	%xmm1, 336(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	336(%rsp), %xmm1
	vmovdqa64	304(%rsp), %xmm21
	vmovdqa	320(%rsp), %xmm9
	vmovdqa	192(%rsp), %xmm11
	vmovdqa	288(%rsp), %xmm10
	vmovdqa	112(%rsp), %xmm14
	vmovdqa64	256(%rsp), %xmm31
	vmovdqa	272(%rsp), %xmm7
	vmovdqa64	224(%rsp), %xmm29
	vmovdqa64	.LCPI2_1(%rip), %xmm26
	vmovdqa64	128(%rsp), %xmm24
	vmovdqa	144(%rsp), %xmm6
	vmovdqa	160(%rsp), %xmm13
	vmovdqa64	176(%rsp), %xmm18
	vmovdqa	208(%rsp), %xmm8
	vmovdqa64	64(%rsp), %xmm23
	vmovdqa	80(%rsp), %xmm5
	vmovdqa64	96(%rsp), %xmm27
	vmovdqa64	240(%rsp), %xmm25
	vmovdqa	(%rsp), %xmm12
	jmp	.LBB2_23
.LBB2_6:
	vmovdqa64	%xmm11, %xmm24
	xorl	%r15d, %r15d
	vpxor	%xmm9, %xmm9, %xmm9
	vmovdqa	32(%rsp), %xmm4
	vmovdqa64	%xmm17, %xmm5
	vmovdqa64	%xmm21, %xmm11
	vmovdqa	%xmm0, %xmm7
	vmovdqa64	%xmm22, %xmm21
	movq	472(%rsp), %rsi
	testq	%r13, %r13
	jne	.LBB2_28
.LBB2_25:
	testq	%r15, %r15
	je	.LBB2_26
	vpshufb	.LCPI2_12(%rip), %xmm12, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
.LBB2_26:
	vmovdqa64	%xmm29, %xmm12
	vmovdqa	48(%rsp), %xmm15
	vmovdqu64	(%rsi), %xmm16
	xorl	%r13d, %r13d
	jmp	.LBB2_46
.LBB2_19:
	vmovdqa64	%xmm25, %xmm19
	vmovdqa64	.LCPI2_12(%rip), %xmm20
	movq	%rbx, %rax
	vmovdqa	16(%rsp), %xmm14
	vmovdqa64	%xmm22, %xmm12
	vmovdqa	368(%rsp), %xmm15
	vmovdqa	352(%rsp), %xmm13
	vmovdqa	%xmm1, %xmm0
	vmovdqa64	%xmm21, %xmm11
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	vpshufb	%xmm20, %xmm4, %xmm4
	vpshufb	%xmm20, %xmm5, %xmm5
	vpshufb	%xmm20, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm8
	vmovdqa64	%xmm9, %xmm18
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm11
	vpternlogq	$150, %xmm10, %xmm8, %xmm11
	vmovdqa	288(%rsp), %xmm10
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm9
	vpternlogq	$150, %xmm7, %xmm11, %xmm9
	vmovdqa64	%xmm21, %xmm11
	vpshufb	%xmm20, %xmm2, %xmm2
	vpshufb	%xmm20, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpternlogq	$150, %xmm6, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm6
	vpternlogq	$150, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm7
	vpternlogq	$150, %xmm5, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufb	%xmm20, %xmm1, %xmm1
	vpxorq	%xmm1, %xmm18, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm4
	vpternlogq	$150, %xmm3, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm3
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm9
	vpternlogq	$150, %xmm1, %xmm2, %xmm9
	vpsrldq	$8, %xmm4, %xmm1
	vpshufd	$78, %xmm3, %xmm2
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm1, %xmm2, %xmm9
	cmpq	$96, %rax
	jae	.LBB2_20
	vmovdqa	208(%rsp), %xmm8
	vmovdqa64	176(%rsp), %xmm18
	vmovdqa	160(%rsp), %xmm13
	vmovdqa	144(%rsp), %xmm6
	vmovdqa64	128(%rsp), %xmm24
	vmovdqa	272(%rsp), %xmm7
	vmovdqa64	256(%rsp), %xmm31
	vmovdqa	112(%rsp), %xmm14
	vmovdqa64	%xmm19, %xmm25
	vmovdqa64	%xmm12, %xmm21
	vmovdqa	%xmm0, %xmm1
	cmpq	$16, %rax
	vmovdqa64	%xmm17, %xmm5
	vmovdqa64	%xmm23, %xmm4
	jae	.LBB2_11
.LBB2_10:
	movq	%rax, %r15
	testq	%r15, %r15
	jne	.LBB2_22
.LBB2_18:
	vpxor	%xmm12, %xmm12, %xmm12
	xorl	%r15d, %r15d
.LBB2_23:
	vmovdqa	32(%rsp), %xmm4
	movq	472(%rsp), %rsi
	testq	%r13, %r13
	je	.LBB2_25
.LBB2_28:
	movabsq	$-68719476720, %rcx
	leaq	(%rcx,%r13), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_47
	vmovdqa	%xmm1, 336(%rsp)
	testq	%r15, %r15
	je	.LBB2_31
	vpshufb	.LCPI2_12(%rip), %xmm12, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	vpxor	%xmm12, %xmm12, %xmm12
.LBB2_31:
	vmovdqa64	%xmm18, %xmm1
	movq	488(%rsp), %rax
	cmpq	$96, %r13
	vmovdqa64	%xmm27, 96(%rsp)
	vmovdqa	%xmm5, 80(%rsp)
	vmovdqa64	%xmm23, 64(%rsp)
	vmovdqa	%xmm11, 192(%rsp)
	vmovdqa	%xmm12, 304(%rsp)
	jae	.LBB2_35
	vmovdqa	%xmm14, %xmm0
	movq	%r13, %r15
	cmpq	$16, %r15
	jb	.LBB2_34
.LBB2_38:
	vmovdqa64	.LCPI2_12(%rip), %xmm20
	vmovdqa64	.LCPI2_14(%rip), %xmm17
	vmovdqa64	%xmm8, %xmm21
	vmovdqa	48(%rsp), %xmm14
	vmovdqa64	%xmm29, %xmm15
	vmovdqa64	%xmm6, %xmm22
	vmovdqa	%xmm0, %xmm8
	vmovdqa64	%xmm1, %xmm28
	vmovdqa	%xmm11, %xmm12
	vmovdqa64	%xmm4, %xmm29
	vmovdqa64	%xmm25, %xmm16
	vmovdqa	%xmm13, %xmm0
	vmovdqa64	%xmm31, %xmm13
	vmovdqa64	%xmm9, %xmm19
	vmovdqa64	%xmm23, %xmm9
	vmovdqa64	%xmm24, %xmm1
	.p2align	4, 0x90
.LBB2_39:
	vmovdqu	(%r14), %xmm2
	vpshufb	%xmm20, %xmm2, %xmm3
	vpxorq	%xmm3, %xmm19, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm4
	vmovdqa64	%xmm5, %xmm18
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm5
	vpxorq	%xmm3, %xmm5, %xmm19
	vmovdqa64	%xmm18, %xmm5
	vpshufb	%xmm20, %xmm26, %xmm3
	vpxorq	%xmm3, %xmm16, %xmm3
	vmovdqa64	%xmm27, %xmm11
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vmovdqa64	%xmm21, %xmm11
	vaesenc	%xmm11, %xmm3, %xmm3
	vmovdqa64	%xmm28, %xmm11
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm3, %xmm3
	vmovdqa64	%xmm22, %xmm11
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm3, %xmm3
	vmovdqa64	%xmm29, %xmm11
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	addq	$16, %r14
	leaq	16(%rax), %r12
	addq	$-16, %r15
	vpsrldq	$8, %xmm4, %xmm3
	vpternlogq	$150, %xmm3, %xmm6, %xmm19
	vpaddd	%xmm17, %xmm26, %xmm26
	vmovdqu	%xmm2, (%rax)
	movq	%r12, %rax
	cmpq	$15, %r15
	ja	.LBB2_39
	jmp	.LBB2_40
.LBB2_12:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vmovdqa	%xmm1, %xmm12
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	vmovdqa	%xmm12, %xmm1
	movq	%r15, %rax
	cmpq	$16, %r15
	jb	.LBB2_17
.LBB2_14:
	vmovdqa	%xmm1, %xmm12
	vmovdqa	.LCPI2_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_15:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm4, %xmm5
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm9
	vpternlogq	$150, %xmm3, %xmm2, %xmm9
	cmpq	$15, %rax
	ja	.LBB2_15
	movq	%rax, %r15
	vmovdqa64	%xmm17, %xmm5
	vmovdqa64	%xmm23, %xmm4
	vmovdqa	%xmm12, %xmm1
	testq	%r15, %r15
	jne	.LBB2_22
	jmp	.LBB2_18
.LBB2_35:
	vmovdqa64	.LCPI2_1(%rip), %xmm26
	vmovdqa	.LCPI2_12(%rip), %xmm0
	movq	%r13, %r15
	vmovdqa64	48(%rsp), %xmm16
	vmovdqa64	%xmm7, %xmm30
	vmovdqa64	16(%rsp), %xmm18
	vmovdqa64	368(%rsp), %xmm20
	vmovdqa64	352(%rsp), %xmm22
	vmovdqa64	336(%rsp), %xmm28
	vmovdqa	80(%rsp), %xmm12
	.p2align	4, 0x90
.LBB2_36:
	vmovdqu64	16(%r14), %xmm23
	vmovdqu64	32(%r14), %xmm24
	vmovdqu64	48(%r14), %xmm27
	vmovdqu64	64(%r14), %xmm19
	vmovdqu64	80(%r14), %xmm17
	vpshufb	%xmm0, %xmm26, %xmm1
	vpaddd	.LCPI2_14(%rip), %xmm26, %xmm2
	vpshufb	%xmm0, %xmm2, %xmm2
	vpaddd	.LCPI2_1(%rip), %xmm26, %xmm3
	vpshufb	%xmm0, %xmm3, %xmm3
	vpaddd	.LCPI2_15(%rip), %xmm26, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm4
	vpaddd	.LCPI2_2(%rip), %xmm26, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vpaddd	.LCPI2_16(%rip), %xmm26, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm6
	vpxorq	%xmm1, %xmm25, %xmm13
	vmovdqa	%xmm8, %xmm10
	vpxorq	%xmm2, %xmm25, %xmm14
	vpxorq	%xmm3, %xmm25, %xmm15
	vpxorq	%xmm4, %xmm25, %xmm1
	vpxorq	%xmm5, %xmm25, %xmm2
	vpxorq	%xmm6, %xmm25, %xmm3
	vmovaps	96(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm17, %xmm7
	vxorps	%xmm4, %xmm4, %xmm4
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm5, %xmm5, %xmm5
	vmovaps	192(%rsp), %xmm11
	#APP
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovaps	64(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm19, %xmm7
	vmovdqa64	%xmm18, %xmm11
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovaps	176(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm27, %xmm7
	vmovaps	160(%rsp), %xmm10
	vmovdqa64	%xmm20, %xmm11
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovaps	144(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm24, %xmm7
	vmovdqa64	%xmm21, %xmm11
	vmovaps	128(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovaps	32(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm0, %xmm23, %xmm7
	vmovdqa64	%xmm16, %xmm10
	vmovdqa64	%xmm28, %xmm11
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovdqu	(%r14), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vmovdqa64	%xmm29, %xmm9
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	#NO_APP
	vmovdqa64	%xmm30, %xmm10
	vmovdqa64	%xmm22, %xmm11
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm6, %xmm9, %xmm8
	vpunpckhqdq	%xmm9, %xmm6, %xmm6
	vmovdqa64	%xmm31, %xmm9
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	#NO_APP
	vmovaps	112(%rsp), %xmm9
	#APP
	vaesenclast	%xmm9, %xmm13, %xmm13
	vaesenclast	%xmm9, %xmm14, %xmm14
	vaesenclast	%xmm9, %xmm15, %xmm15
	vaesenclast	%xmm9, %xmm1, %xmm1
	vaesenclast	%xmm9, %xmm2, %xmm2
	vaesenclast	%xmm9, %xmm3, %xmm3
	#NO_APP
	vpxor	%xmm7, %xmm13, %xmm7
	vpxorq	%xmm23, %xmm14, %xmm9
	vpxorq	%xmm24, %xmm15, %xmm13
	vpxorq	%xmm27, %xmm1, %xmm1
	vmovdqa	288(%rsp), %xmm10
	vpxorq	%xmm19, %xmm2, %xmm2
	vpxorq	%xmm17, %xmm3, %xmm3
	vpxor	%xmm4, %xmm8, %xmm4
	vpshufd	$78, %xmm4, %xmm8
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpxor	%xmm6, %xmm5, %xmm5
	vmovdqu	%xmm7, (%rax)
	vmovdqu	%xmm9, 16(%rax)
	vmovdqa	%xmm5, %xmm9
	vmovdqa	208(%rsp), %xmm8
	vmovdqu	%xmm13, 32(%rax)
	vmovdqu	%xmm1, 48(%rax)
	vmovdqu	%xmm2, 64(%rax)
	vmovdqu	%xmm3, 80(%rax)
	vpshufd	$78, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm2
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	addq	$96, %r14
	addq	$96, %rax
	addq	$-96, %r15
	vpaddd	.LCPI2_17(%rip), %xmm26, %xmm26
	cmpq	$96, %r15
	jae	.LBB2_36
	vmovdqa64	96(%rsp), %xmm27
	vmovdqa	80(%rsp), %xmm5
	vmovdqa64	64(%rsp), %xmm23
	vmovdqa	176(%rsp), %xmm1
	vmovdqa	160(%rsp), %xmm13
	vmovdqa	144(%rsp), %xmm6
	vmovdqa64	128(%rsp), %xmm24
	vmovdqa	32(%rsp), %xmm4
	vmovdqa64	%xmm30, %xmm7
	vmovdqa	112(%rsp), %xmm0
	vmovdqa	192(%rsp), %xmm11
	cmpq	$16, %r15
	jae	.LBB2_38
.LBB2_34:
	movq	%rax, %r12
	vmovdqa64	%xmm29, %xmm15
	vmovdqa64	%xmm25, %xmm16
	vmovdqa64	%xmm9, %xmm19
.LBB2_40:
	vmovdqa64	%xmm19, 320(%rsp)
	vmovdqa	%xmm15, 224(%rsp)
	vmovdqa64	%xmm16, 240(%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r15, %r15
	je	.LBB2_42
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r14, %rsi
	movq	%r15, %rdx
	vmovdqa64	%xmm26, 16(%rsp)
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	240(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenclast	112(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 304(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	472(%rsp), %rsi
.LBB2_42:
	vpxor	304(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	%xmm0, 384(%rsp)
	vmovdqa	%xmm2, (%rsp)
	movq	%rsp, %rdi
	leaq	384(%rsp), %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.LBB2_43
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpxor	320(%rsp), %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm11
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vmovdqa	288(%rsp), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	vmovdqa64	240(%rsp), %xmm25
	vmovdqa64	96(%rsp), %xmm27
	vmovdqa	80(%rsp), %xmm5
	vmovdqa64	64(%rsp), %xmm23
	vmovdqa	208(%rsp), %xmm8
	vmovdqa64	176(%rsp), %xmm18
	vmovdqa	160(%rsp), %xmm13
	vmovdqa	144(%rsp), %xmm6
	vmovdqa64	128(%rsp), %xmm24
	vmovdqa	32(%rsp), %xmm4
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	224(%rsp), %xmm12
	vmovdqa	272(%rsp), %xmm7
	vmovdqa64	256(%rsp), %xmm31
	vmovdqa	112(%rsp), %xmm14
	jmp	.LBB2_45
.LBB2_43:
	vmovdqa64	240(%rsp), %xmm25
	vmovdqa64	96(%rsp), %xmm27
	vmovdqa	80(%rsp), %xmm5
	vmovdqa64	64(%rsp), %xmm23
	vmovdqa	208(%rsp), %xmm8
	vmovdqa64	176(%rsp), %xmm18
	vmovdqa	160(%rsp), %xmm13
	vmovdqa	144(%rsp), %xmm6
	vmovdqa64	128(%rsp), %xmm24
	vmovdqa	32(%rsp), %xmm4
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	224(%rsp), %xmm12
	vmovdqa	272(%rsp), %xmm7
	vmovdqa64	256(%rsp), %xmm31
	vmovdqa	112(%rsp), %xmm14
	vmovdqa	288(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm11
	vmovdqa	320(%rsp), %xmm9
.LBB2_45:
	shlq	$3, %r13
	vmovdqa64	16(%rsp), %xmm16
.LBB2_46:
	shlq	$3, %rbx
	vmovq	%r13, %xmm0
	vmovq	%rbx, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm11, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm11, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm11, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	.LCPI2_18(%rip), %xmm25, %xmm3
	vmovdqa64	%xmm27, %xmm9
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa64	%xmm23, %xmm5
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vmovdqa64	%xmm18, %xmm5
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm5
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vmovdqa64	%xmm31, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenclast	%xmm14, %xmm3, %xmm3
	vpshufb	.LCPI2_19(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_20(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm16, %xmm1
	xorl	%eax, %eax
	vptest	%xmm1, %xmm1
	sete	%al
.LBB2_47:
	addq	$408, %rsp
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
	.size	haberdashery_aes256gcmdndk_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndk_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndk_skylakex_is_supported,@function
haberdashery_aes256gcmdndk_skylakex_is_supported:
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
	andl	$-779221719, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndk_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

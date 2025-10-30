# @generated
# https://github.com/facebookincubator/haberdashery/
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
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_init
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_init,@function
haberdashery_aes256gcmdndkv2kc_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI0_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm2
	vpbroadcastq	.LCPI0_1(%rip), %xmm5
	vaesenclast	%xmm5, %xmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm0, %xmm2
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm5
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm5, %xmm4, %xmm7
	vpshufd	$255, %xmm2, %xmm4
	vpxor	%xmm6, %xmm6, %xmm6
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm1, %xmm4
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm7
	vpslldq	$12, %xmm2, %xmm8
	vpternlogq	$150, %xmm7, %xmm5, %xmm8
	vpshufb	%xmm3, %xmm4, %xmm5
	vpbroadcastq	.LCPI0_2(%rip), %xmm7
	vaesenclast	%xmm7, %xmm5, %xmm5
	vpternlogq	$150, %xmm8, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufd	$255, %xmm5, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm4, %xmm7
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpshufb	%xmm3, %xmm7, %xmm8
	vpbroadcastq	.LCPI0_3(%rip), %xmm9
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm5, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm6, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm7, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vpshufb	%xmm3, %xmm9, %xmm10
	vpbroadcastq	.LCPI0_4(%rip), %xmm11
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpslldq	$12, %xmm9, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpslldq	$12, %xmm10, %xmm14
	vpternlogq	$150, %xmm13, %xmm12, %xmm14
	vpshufb	%xmm3, %xmm11, %xmm12
	vpbroadcastq	.LCPI0_5(%rip), %xmm13
	vaesenclast	%xmm13, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpslldq	$12, %xmm11, %xmm15
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpshufd	$255, %xmm12, %xmm13
	vaesenclast	%xmm6, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpslldq	$12, %xmm12, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufb	%xmm3, %xmm13, %xmm14
	vpbroadcastq	.LCPI0_6(%rip), %xmm15
	vaesenclast	%xmm15, %xmm14, %xmm14
	vpternlogq	$150, %xmm16, %xmm12, %xmm14
	vpslldq	$4, %xmm13, %xmm15
	vpslldq	$8, %xmm13, %xmm16
	vpslldq	$12, %xmm13, %xmm17
	vpternlogq	$150, %xmm16, %xmm15, %xmm17
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm6, %xmm15, %xmm6
	vpternlogq	$150, %xmm17, %xmm13, %xmm6
	vpslldq	$4, %xmm14, %xmm15
	vpslldq	$8, %xmm14, %xmm16
	vpslldq	$12, %xmm14, %xmm17
	vpternlogq	$150, %xmm16, %xmm15, %xmm17
	vpshufb	%xmm3, %xmm6, %xmm3
	vpbroadcastq	.LCPI0_7(%rip), %xmm15
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpternlogq	$150, %xmm17, %xmm14, %xmm3
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
	vmovdqa	%xmm6, 208(%rdi)
	vmovdqa	%xmm3, 224(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_init, .Lfunc_end0-haberdashery_aes256gcmdndkv2kc_skylakex_init
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_7:
	.quad	4294967297
.LCPI1_14:
	.quad	274877907008
.LCPI1_16:
	.quad	-4467570830351532032
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
	.section	.rodata,"a",@progbits
.LCPI1_27:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_encrypt,@function
haberdashery_aes256gcmdndkv2kc_skylakex_encrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$168, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	192(%rsp), %r10
	xorl	%eax, %eax
	cmpq	208(%rsp), %r10
	jne	.LBB1_44
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB1_44
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB1_44
	cmpq	$24, %rdx
	jne	.LBB1_44
	cmpq	$48, 224(%rsp)
	jne	.LBB1_44
	vmovdqu64	(%rsi), %xmm18
	vmovdqa	(%rdi), %xmm12
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm9
	vmovdqa	48(%rdi), %xmm8
	vpternlogq	$120, .LCPI1_0(%rip), %xmm18, %xmm12
	vpxor	.LCPI1_1(%rip), %xmm12, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm1
	vmovdqa	64(%rdi), %xmm0
	vaesenc	%xmm0, %xmm1, %xmm2
	vmovdqa	80(%rdi), %xmm1
	vaesenc	%xmm1, %xmm2, %xmm3
	vmovdqa	96(%rdi), %xmm2
	vaesenc	%xmm2, %xmm3, %xmm4
	vmovdqa	112(%rdi), %xmm3
	vaesenc	%xmm3, %xmm4, %xmm5
	vmovdqa	128(%rdi), %xmm4
	vaesenc	%xmm4, %xmm5, %xmm6
	vmovdqa	144(%rdi), %xmm5
	vaesenc	%xmm5, %xmm6, %xmm7
	vmovdqa	160(%rdi), %xmm6
	vaesenc	%xmm6, %xmm7, %xmm13
	vmovdqa	176(%rdi), %xmm7
	vaesenc	%xmm7, %xmm13, %xmm13
	vpxor	.LCPI1_2(%rip), %xmm12, %xmm14
	vaesenc	%xmm11, %xmm14, %xmm14
	vpxor	.LCPI1_3(%rip), %xmm12, %xmm15
	vaesenc	%xmm11, %xmm15, %xmm15
	vpxor	.LCPI1_4(%rip), %xmm12, %xmm10
	vaesenc	%xmm11, %xmm10, %xmm10
	vpxor	.LCPI1_5(%rip), %xmm12, %xmm12
	vaesenc	%xmm11, %xmm12, %xmm12
	vmovdqa	192(%rdi), %xmm11
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm12, %xmm12
	vmovdqa	208(%rdi), %xmm9
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm12, %xmm8
	vmovdqa64	%xmm8, %xmm16
	vmovdqa	224(%rdi), %xmm12
	vaesenc	%xmm9, %xmm13, %xmm8
	vaesenclast	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm13
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenclast	%xmm12, %xmm13, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm13
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenclast	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenclast	%xmm12, %xmm10, %xmm10
	vmovdqa64	%xmm16, %xmm15
	vaesenc	%xmm0, %xmm15, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpxor	%xmm8, %xmm14, %xmm4
	vpxor	%xmm8, %xmm13, %xmm6
	vpxorq	%xmm8, %xmm10, %xmm16
	vpxorq	%xmm8, %xmm0, %xmm17
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI1_9(%rip), %xmm1
	vpshufb	%xmm1, %xmm6, %xmm0
	vpbroadcastq	.LCPI1_7(%rip), %xmm3
	vaesenclast	%xmm3, %xmm0, %xmm8
	vpternlogq	$150, %xmm2, %xmm4, %xmm8
	vmovdqa64	%xmm4, %xmm29
	vaesenc	%xmm6, %xmm4, %xmm0
	vpslldq	$4, %xmm6, %xmm2
	vpslldq	$8, %xmm6, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm8, %xmm2
	vpxor	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm2, %xmm12
	vmovaps	%xmm6, -128(%rsp)
	vpternlogq	$150, %xmm4, %xmm6, %xmm12
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	vbroadcastss	.LCPI1_9(%rip), %xmm2
	vmovdqa64	%xmm8, %xmm27
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm12, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm8, %xmm7, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vpslldq	$4, %xmm12, %xmm3
	vpslldq	$8, %xmm12, %xmm4
	vpslldq	$12, %xmm12, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm11, %xmm9
	vaesenclast	%xmm5, %xmm9, %xmm9
	vpternlogq	$150, %xmm12, %xmm6, %xmm9
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovdqa64	%xmm11, %xmm31
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm6
	vpslldq	$12, %xmm11, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm9, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm11, %xmm7, %xmm8
	#NO_APP
	vmovdqa64	%xmm9, %xmm30
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm8, %xmm15
	vaesenclast	%xmm5, %xmm15, %xmm15
	vpternlogq	$150, %xmm9, %xmm6, %xmm15
	#NO_APP
	vbroadcastss	.LCPI1_11(%rip), %xmm3
	vmovaps	%xmm8, -48(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm15, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpternlogq	$150, %xmm8, %xmm7, %xmm14
	#NO_APP
	vmovaps	%xmm15, -64(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vpslldq	$4, %xmm15, %xmm3
	vpslldq	$8, %xmm15, %xmm4
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm14, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm15, %xmm6, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_12(%rip), %xmm3
	vmovaps	%xmm14, -80(%rsp)
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm6
	vpslldq	$12, %xmm14, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm8, %xmm15
	vaesenclast	%xmm3, %xmm15, %xmm15
	vpternlogq	$150, %xmm14, %xmm7, %xmm15
	#NO_APP
	vmovaps	%xmm8, %xmm7
	vmovaps	%xmm8, -16(%rsp)
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpslldq	$12, %xmm7, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm15, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_13(%rip), %xmm3
	vmovaps	%xmm15, -112(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vpslldq	$4, %xmm15, %xmm4
	vpslldq	$8, %xmm15, %xmm6
	vpslldq	$12, %xmm15, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm8, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpternlogq	$150, %xmm15, %xmm7, %xmm14
	#NO_APP
	vpslldq	$4, %xmm8, %xmm2
	vpunpcklqdq	%xmm8, %xmm5, %xmm3
	vinsertps	$55, %xmm8, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm14, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm13
	vpternlogq	$150, %xmm4, %xmm8, %xmm13
	vpshufb	%xmm1, %xmm13, %xmm1
	vpbroadcastq	.LCPI1_14(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm6
	vpslldq	$4, %xmm14, %xmm1
	vpunpcklqdq	%xmm14, %xmm5, %xmm2
	vinsertps	$55, %xmm14, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm14, %xmm6
	vmovaps	%xmm8, -32(%rsp)
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm0, %xmm0
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpaddq	%xmm0, %xmm0, %xmm1
	vpsrlq	$63, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpblendd	$12, %xmm0, %xmm5, %xmm0
	vpsllq	$63, %xmm0, %xmm3
	vpternlogq	$30, %xmm2, %xmm1, %xmm3
	vpsllq	$62, %xmm0, %xmm1
	vpsllq	$57, %xmm0, %xmm15
	vpternlogq	$150, %xmm1, %xmm3, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpbroadcastq	.LCPI1_16(%rip), %xmm11
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm7
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm7, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm7, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm4
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm8
	vmovdqa64	%xmm7, %xmm21
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm15, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm8, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	movq	216(%rsp), %rdx
	movzbl	16(%rsi), %edi
	movzbl	17(%rsi), %r11d
	vpextrb	$15, %xmm18, %ebx
	movzbl	23(%rsi), %ebp
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	shll	$8, %edi
	orl	%ebx, %edi
	shll	$16, %r11d
	orl	%edi, %r11d
	movzbl	18(%rsi), %edi
	shll	$24, %edi
	orl	%r11d, %edi
	vmovd	%edi, %xmm0
	vpinsrd	$1, 19(%rsi), %xmm0, %xmm0
	vmovdqu64	%xmm16, 16(%rdx)
	vmovdqu64	%xmm17, 32(%rdx)
	vpinsrd	$2, %ebp, %xmm0, %xmm0
	movl	$16777216, %esi
	vpinsrd	$3, %esi, %xmm0, %xmm22
	testq	%r8, %r8
	vmovdqa	%xmm6, -96(%rsp)
	je	.LBB1_11
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqa64	%xmm22, %xmm18
	vmovdqa64	%xmm13, %xmm22
	vmovaps	%xmm14, %xmm28
	vmovdqa64	%xmm30, %xmm24
	vmovdqa64	%xmm12, %xmm16
	vmovdqa64	%xmm29, %xmm17
	vmovdqa64	.LCPI1_15(%rip), %xmm30
	movq	%r8, %rsi
	vmovdqa64	%xmm15, %xmm25
	vmovdqa64	%xmm21, %xmm15
	vmovdqa	%xmm8, %xmm7
	vmovdqa	%xmm4, %xmm8
	vmovdqa	%xmm3, %xmm0
	.p2align	4
.LBB1_20:
	vmovdqu64	(%rcx), %xmm21
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm6
	vmovdqu	80(%rcx), %xmm11
	vpshufb	%xmm30, %xmm4, %xmm4
	vpshufb	%xmm30, %xmm6, %xmm6
	vpshufb	%xmm30, %xmm11, %xmm11
	vmovdqa64	%xmm25, %xmm1
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm14
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm10
	vmovdqa64	%xmm9, %xmm29
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm9
	vpternlogq	$150, %xmm10, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm10
	vpternlogq	$150, %xmm12, %xmm14, %xmm10
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm13
	vpternlogq	$150, %xmm12, %xmm9, %xmm13
	vpshufb	%xmm30, %xmm2, %xmm2
	vpshufb	%xmm30, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm6
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpternlogq	$150, %xmm9, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm9
	vpternlogq	$150, %xmm6, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm11
	vpternlogq	$150, %xmm6, %xmm10, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm10
	vpternlogq	$150, %xmm6, %xmm9, %xmm10
	vmovdqa64	%xmm29, %xmm9
	vpshufb	%xmm30, %xmm21, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm4
	vpternlogq	$150, %xmm3, %xmm10, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm3
	vpslldq	$8, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm11, %xmm5
	vpbroadcastq	.LCPI1_16(%rip), %xmm11
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm3
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	vpsrldq	$8, %xmm4, %xmm1
	vpshufd	$78, %xmm3, %xmm2
	addq	$96, %rcx
	addq	$-96, %rsi
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	cmpq	$95, %rsi
	ja	.LBB1_20
	vmovdqa64	%xmm17, %xmm29
	vmovdqa64	%xmm16, %xmm12
	vmovdqa64	%xmm24, %xmm30
	vmovaps	%xmm28, %xmm14
	vmovdqa64	%xmm22, %xmm13
	vmovdqa	-96(%rsp), %xmm6
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm7, %xmm8
	vmovdqa64	%xmm15, %xmm21
	vmovdqa64	%xmm25, %xmm15
	vmovdqa	%xmm0, %xmm3
	vmovdqa64	%xmm18, %xmm22
	cmpq	$16, %rsi
	jae	.LBB1_13
.LBB1_9:
	movq	%rsi, %rdi
	testq	%rdi, %rdi
	jne	.LBB1_22
	jmp	.LBB1_11
.LBB1_7:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB1_9
.LBB1_13:
	leaq	-16(%rsi), %rdi
	testb	$16, %dil
	je	.LBB1_14
	cmpq	$16, %rdi
	jae	.LBB1_16
.LBB1_10:
	testq	%rdi, %rdi
	je	.LBB1_11
.LBB1_22:
	movl	$-1, %esi
	bzhil	%edi, %esi, %esi
	kmovd	%esi, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	testq	%r10, %r10
	je	.LBB1_23
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rsi
	incq	%rcx
	cmpq	%rcx, %rsi
	jb	.LBB1_44
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vmovdqa	%xmm3, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm5
	vmovdqa	%xmm6, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	jmp	.LBB1_27
.LBB1_14:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vmovdqa64	%xmm3, %xmm16
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm5
	vmovdqa64	%xmm16, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	movq	%rdi, %rsi
	cmpq	$16, %rdi
	jb	.LBB1_10
.LBB1_16:
	vmovdqa64	%xmm3, %xmm17
	vmovdqa64	%xmm12, %xmm16
	vmovdqa	%xmm8, %xmm7
	vmovdqa	%xmm4, %xmm8
	vmovdqa	.LCPI1_15(%rip), %xmm0
	.p2align	4
.LBB1_17:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm4, %xmm5
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm5
	vpternlogq	$150, %xmm3, %xmm2, %xmm5
	cmpq	$15, %rsi
	ja	.LBB1_17
	movq	%rsi, %rdi
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm7, %xmm8
	vmovdqa64	%xmm16, %xmm12
	vmovdqa64	%xmm17, %xmm3
	testq	%rdi, %rdi
	jne	.LBB1_22
.LBB1_11:
	testq	%r10, %r10
	je	.LBB1_12
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rsi
	incq	%rcx
	cmpq	%rcx, %rsi
	jb	.LBB1_44
.LBB1_27:
	movq	200(%rsp), %rsi
	vpshufb	.LCPI1_17(%rip), %xmm22, %xmm1
	vpaddd	.LCPI1_18(%rip), %xmm1, %xmm17
	cmpq	$96, %r10
	vmovdqa	%xmm12, (%rsp)
	jb	.LBB1_28
	vmovdqa	%xmm3, 16(%rsp)
	vmovdqa	%xmm4, 32(%rsp)
	vmovdqa	%xmm9, 48(%rsp)
	vmovdqa64	.LCPI1_15(%rip), %xmm18
	vpshufb	%xmm18, %xmm17, %xmm0
	vpaddd	.LCPI1_19(%rip), %xmm1, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm2
	vpaddd	.LCPI1_20(%rip), %xmm1, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm3
	vpaddd	.LCPI1_21(%rip), %xmm1, %xmm4
	vpshufb	%xmm18, %xmm4, %xmm4
	vpaddd	.LCPI1_22(%rip), %xmm1, %xmm6
	vpshufb	%xmm18, %xmm6, %xmm6
	vpaddd	.LCPI1_23(%rip), %xmm1, %xmm9
	vpshufb	%xmm18, %xmm9, %xmm9
	vpxorq	%xmm0, %xmm29, %xmm0
	vpxorq	%xmm2, %xmm29, %xmm2
	vpxorq	%xmm3, %xmm29, %xmm3
	vpxorq	%xmm4, %xmm29, %xmm4
	vpxorq	%xmm6, %xmm29, %xmm11
	vmovdqa64	%xmm29, 64(%rsp)
	vmovdqa	%xmm12, %xmm7
	vpxorq	%xmm9, %xmm29, %xmm12
	vmovdqa	-128(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm27, %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm31, %xmm6
	vmovdqa64	%xmm31, 128(%rsp)
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm30, %xmm6
	vmovdqa64	%xmm30, 112(%rsp)
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-48(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-64(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-80(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-16(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	#NO_APP
	vmovaps	-112(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	-32(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm12, %xmm12
	#NO_APP
	vmovaps	-96(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm11, %xmm11
	vaesenclast	%xmm6, %xmm12, %xmm12
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm19
	vpxorq	16(%r9), %xmm2, %xmm20
	vpxorq	32(%r9), %xmm3, %xmm28
	vpxorq	48(%r9), %xmm4, %xmm29
	vpxorq	64(%r9), %xmm11, %xmm30
	vpxor	80(%r9), %xmm12, %xmm2
	leaq	96(%r9), %r9
	leaq	96(%rsi), %rcx
	vpaddd	.LCPI1_24(%rip), %xmm1, %xmm17
	vmovdqu64	%xmm19, (%rsi)
	vmovdqu64	%xmm20, 16(%rsi)
	vmovdqu64	%xmm28, 32(%rsi)
	vmovdqu64	%xmm29, 48(%rsi)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm30, 64(%rsi)
	vmovdqu	%xmm2, 80(%rsi)
	cmpq	$96, %rax
	jb	.LBB1_32
	vmovdqa64	%xmm22, 144(%rsp)
	vmovdqa64	64(%rsp), %xmm31
	vmovaps	%xmm9, %xmm22
	vmovaps	-112(%rsp), %xmm23
	vmovaps	%xmm14, 80(%rsp)
	vmovdqa	%xmm13, 96(%rsp)
	vmovdqa64	48(%rsp), %xmm24
	vmovdqa64	32(%rsp), %xmm25
	vmovdqa64	16(%rsp), %xmm26
	.p2align	4
.LBB1_34:
	vpshufb	%xmm18, %xmm17, %xmm0
	vpaddd	.LCPI1_18(%rip), %xmm17, %xmm1
	vpshufb	%xmm18, %xmm1, %xmm1
	vpaddd	.LCPI1_19(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm4
	vpaddd	.LCPI1_20(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm9
	vpaddd	.LCPI1_21(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm10
	vpaddd	.LCPI1_22(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm12
	vpshufb	%xmm18, %xmm2, %xmm6
	vpxorq	%xmm0, %xmm31, %xmm3
	vpxorq	%xmm1, %xmm31, %xmm13
	vpxorq	%xmm4, %xmm31, %xmm1
	vpxorq	%xmm9, %xmm31, %xmm11
	vpxorq	%xmm10, %xmm31, %xmm14
	vmovdqa64	%xmm27, %xmm7
	vpxorq	%xmm12, %xmm31, %xmm2
	vmovaps	-128(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm2, %xmm2
	#NO_APP
	vxorps	%xmm0, %xmm0, %xmm0
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm12, %xmm12, %xmm12
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm15, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm15, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vpshufb	%xmm18, %xmm30, %xmm6
	vmovaps	(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovaps	128(%rsp), %xmm10
	vmovdqa64	%xmm21, %xmm7
	#APP
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vpshufb	%xmm18, %xmm29, %xmm6
	vmovaps	112(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm8, %xmm16
	vmovdqa64	%xmm25, %xmm10
	vmovaps	-48(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vmovdqa64	%xmm16, %xmm8
	vpshufb	%xmm18, %xmm28, %xmm6
	vmovaps	-64(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovaps	-80(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vpshufb	%xmm18, %xmm20, %xmm6
	vmovaps	%xmm22, %xmm9
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovaps	%xmm23, %xmm10
	vmovdqa64	%xmm26, %xmm7
	#APP
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm9
	vpxor	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vpshufb	%xmm18, %xmm19, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovaps	-32(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm2, %xmm2
	#NO_APP
	vmovaps	80(%rsp), %xmm9
	vmovdqa64	%xmm24, %xmm10
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vmovaps	96(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	-96(%rsp), %xmm5
	#APP
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm13, %xmm13
	vaesenclast	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm11, %xmm11
	vaesenclast	%xmm5, %xmm14, %xmm14
	vaesenclast	%xmm5, %xmm2, %xmm2
	#NO_APP
	vpxorq	(%r9), %xmm3, %xmm19
	vpxorq	16(%r9), %xmm13, %xmm20
	vpxorq	32(%r9), %xmm1, %xmm28
	vpxorq	48(%r9), %xmm11, %xmm29
	vpbroadcastq	.LCPI1_16(%rip), %xmm11
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm4, %xmm3, %xmm1
	vpunpckhqdq	%xmm3, %xmm4, %xmm3
	vxorps	64(%r9), %xmm14, %xmm30
	vpxor	80(%r9), %xmm2, %xmm2
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm12, %xmm5
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	addq	$96, %r9
	vmovdqu64	%xmm19, (%rcx)
	vmovdqu64	%xmm20, 16(%rcx)
	vmovdqu64	%xmm28, 32(%rcx)
	vmovdqu64	%xmm29, 48(%rcx)
	vmovups	%xmm30, 64(%rcx)
	vmovdqu	%xmm2, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_23(%rip), %xmm17, %xmm17
	cmpq	$95, %rax
	ja	.LBB1_34
	vmovdqa	%xmm8, %xmm12
	vmovaps	80(%rsp), %xmm14
	vmovdqa	96(%rsp), %xmm13
	vmovdqa64	144(%rsp), %xmm22
	jmp	.LBB1_36
.LBB1_12:
	vmovdqa	-48(%rsp), %xmm10
	vmovdqa64	-64(%rsp), %xmm24
	vmovdqa	-128(%rsp), %xmm9
	vmovdqa64	%xmm30, %xmm7
	vmovdqa64	%xmm31, %xmm8
	jmp	.LBB1_43
.LBB1_28:
	movq	%r10, %rax
	jmp	.LBB1_29
.LBB1_23:
	vmovdqa	-48(%rsp), %xmm10
	vmovdqa64	-64(%rsp), %xmm24
	vmovdqa	-128(%rsp), %xmm9
	vmovdqa64	%xmm30, %xmm7
	vmovdqa64	%xmm31, %xmm8
	jmp	.LBB1_42
.LBB1_32:
	vmovdqa	%xmm8, %xmm12
	vpbroadcastq	.LCPI1_16(%rip), %xmm11
.LBB1_36:
	vpshufb	%xmm18, %xmm29, %xmm0
	vpshufb	%xmm18, %xmm30, %xmm1
	vpshufb	%xmm18, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vmovdqa64	%xmm21, %xmm7
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm9
	vpternlogq	$150, %xmm6, %xmm4, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm4
	vmovdqa	32(%rsp), %xmm8
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm4
	vpternlogq	$150, %xmm3, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
	vpshufb	%xmm18, %xmm20, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpshufb	%xmm18, %xmm28, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm2
	vpternlogq	$150, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm1
	vmovdqa	16(%rsp), %xmm8
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm4
	vpternlogq	$150, %xmm1, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm6
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm2
	vpshufb	%xmm18, %xmm19, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vmovdqa	48(%rsp), %xmm7
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm1
	vpternlogq	$150, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm0
	vpslldq	$8, %xmm1, %xmm5
	vpternlogq	$150, %xmm0, %xmm4, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm3
	vpshufd	$78, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm5
	vpternlogq	$150, %xmm0, %xmm2, %xmm5
	vpsrldq	$8, %xmm1, %xmm0
	vpshufd	$78, %xmm3, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	movq	%rcx, %rsi
	vmovdqa64	64(%rsp), %xmm29
	vmovdqa64	128(%rsp), %xmm31
	vmovdqa64	112(%rsp), %xmm30
.LBB1_29:
	vmovdqa	-80(%rsp), %xmm3
	vmovdqa	-112(%rsp), %xmm4
	vmovdqa64	%xmm27, %xmm19
	vmovdqa64	%xmm13, %xmm18
	vmovdqa64	%xmm14, %xmm16
	cmpq	$16, %rax
	vmovdqa64	-48(%rsp), %xmm23
	vmovdqa64	-64(%rsp), %xmm24
	jb	.LBB1_30
	vmovdqa64	.LCPI1_15(%rip), %xmm21
	vpmovsxbq	.LCPI1_27(%rip), %xmm20
	vmovdqa64	-32(%rsp), %xmm25
	vmovdqa64	%xmm16, %xmm27
	vmovdqa64	%xmm18, %xmm11
	vmovdqa	-96(%rsp), %xmm6
	vpbroadcastq	.LCPI1_16(%rip), %xmm26
	vmovdqa	-128(%rsp), %xmm10
	vmovdqa64	%xmm19, %xmm12
	vmovdqa	(%rsp), %xmm1
	vmovdqa	-16(%rsp), %xmm8
	vmovdqa64	%xmm29, %xmm28
	vmovdqa64	%xmm30, %xmm7
	vmovdqa64	%xmm31, %xmm0
	vmovdqa64	%xmm23, %xmm9
	vmovdqa64	%xmm24, %xmm14
	.p2align	4
.LBB1_38:
	vpshufb	%xmm21, %xmm17, %xmm2
	vpxorq	%xmm2, %xmm28, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vmovdqa64	%xmm25, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vmovdqa64	%xmm27, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vpshufb	%xmm21, %xmm2, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm26, %xmm13
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm5
	vpxor	%xmm3, %xmm5, %xmm5
	vpshufd	$78, %xmm6, %xmm3
	vmovdqa	-96(%rsp), %xmm6
	leaq	16(%r9), %rdi
	leaq	16(%rsi), %rcx
	addq	$-16, %rax
	vpaddd	%xmm20, %xmm17, %xmm17
	vmovdqu	%xmm2, (%rsi)
	vpsrldq	$8, %xmm4, %xmm2
	vmovdqa	-112(%rsp), %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm5
	vmovdqa	-80(%rsp), %xmm3
	movq	%rcx, %rsi
	movq	%rdi, %r9
	cmpq	$15, %rax
	ja	.LBB1_38
	testq	%rax, %rax
	je	.LBB1_40
.LBB1_41:
	movl	$-1, %esi
	bzhil	%eax, %esi, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rdi), %xmm0 {%k1} {z}
	vpshufb	.LCPI1_15(%rip), %xmm17, %xmm1
	vpxorq	%xmm1, %xmm29, %xmm1
	vmovdqa	-128(%rsp), %xmm9
	vaesenc	%xmm9, %xmm1, %xmm1
	vmovdqa64	%xmm19, %xmm2
	vmovdqa64	%xmm19, %xmm27
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa	(%rsp), %xmm12
	vaesenc	%xmm12, %xmm1, %xmm1
	vmovdqa64	%xmm31, %xmm8
	vaesenc	%xmm8, %xmm1, %xmm1
	vmovdqa64	%xmm30, %xmm7
	vaesenc	%xmm7, %xmm1, %xmm1
	vmovdqa64	%xmm23, %xmm10
	vaesenc	%xmm10, %xmm1, %xmm1
	vmovdqa64	%xmm24, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	-16(%rsp), %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	-32(%rsp), %xmm1, %xmm1
	vmovdqa64	%xmm16, %xmm14
	vaesenc	%xmm14, %xmm1, %xmm1
	vmovdqa64	%xmm18, %xmm13
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rcx) {%k1}
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpbroadcastq	.LCPI1_16(%rip), %xmm11
.LBB1_42:
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm5
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	jmp	.LBB1_43
.LBB1_30:
	movq	%rsi, %rcx
	movq	%r9, %rdi
	vmovdqa	-96(%rsp), %xmm6
	testq	%rax, %rax
	jne	.LBB1_41
.LBB1_40:
	vmovdqa64	%xmm16, %xmm14
	vmovdqa64	%xmm18, %xmm13
	vpbroadcastq	.LCPI1_16(%rip), %xmm11
	vmovdqa	-128(%rsp), %xmm9
	vmovdqa64	%xmm19, %xmm27
	vmovdqa	(%rsp), %xmm12
	vmovdqa64	%xmm30, %xmm7
	vmovdqa64	%xmm31, %xmm8
	vmovdqa64	%xmm23, %xmm10
.LBB1_43:
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	%xmm22, %xmm29, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vmovdqa64	%xmm27, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	-80(%rsp), %xmm3, %xmm3
	vaesenc	-16(%rsp), %xmm3, %xmm3
	vaesenc	-112(%rsp), %xmm3, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vpshufb	.LCPI1_26(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_15(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_25(%rip), %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm3, %xmm3
	vpxor	%xmm1, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rdx)
	movl	$1, %eax
.LBB1_44:
	addq	$168, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndkv2kc_skylakex_encrypt
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
.LCPI2_25:
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
.LCPI2_7:
	.quad	4294967297
.LCPI2_14:
	.quad	274877907008
.LCPI2_16:
	.quad	-4467570830351532032
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
	.section	.rodata,"a",@progbits
.LCPI2_26:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_decrypt,@function
haberdashery_aes256gcmdndkv2kc_skylakex_decrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	128(%rsp), %r10
	xorl	%eax, %eax
	cmpq	160(%rsp), %r10
	jne	.LBB2_44
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB2_44
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB2_44
	cmpq	$24, %rdx
	jne	.LBB2_44
	cmpq	$48, 144(%rsp)
	jne	.LBB2_44
	vmovdqu64	(%rsi), %xmm16
	vmovdqa64	(%rdi), %xmm23
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm1
	vmovdqa	48(%rdi), %xmm8
	vpternlogq	$120, .LCPI2_0(%rip), %xmm16, %xmm23
	movq	136(%rsp), %rdx
	vpxorq	.LCPI2_1(%rip), %xmm23, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm3
	vmovdqa	64(%rdi), %xmm0
	vaesenc	%xmm0, %xmm3, %xmm4
	vmovdqa	80(%rdi), %xmm2
	vaesenc	%xmm2, %xmm4, %xmm5
	vmovdqa	96(%rdi), %xmm3
	vaesenc	%xmm3, %xmm5, %xmm6
	vmovdqa	112(%rdi), %xmm12
	vaesenc	%xmm12, %xmm6, %xmm7
	vmovdqa	128(%rdi), %xmm13
	vaesenc	%xmm13, %xmm7, %xmm10
	vmovdqa	144(%rdi), %xmm14
	vaesenc	%xmm14, %xmm10, %xmm10
	vmovdqa	160(%rdi), %xmm5
	vaesenc	%xmm5, %xmm10, %xmm10
	vmovdqa	176(%rdi), %xmm6
	vaesenc	%xmm6, %xmm10, %xmm10
	vmovdqa	192(%rdi), %xmm7
	vaesenc	%xmm7, %xmm10, %xmm10
	vmovdqa	208(%rdi), %xmm9
	vaesenc	%xmm9, %xmm10, %xmm15
	vmovdqa	224(%rdi), %xmm10
	vaesenclast	%xmm10, %xmm15, %xmm4
	vpxorq	.LCPI2_4(%rip), %xmm23, %xmm15
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm15, %xmm15
	vmovdqa64	%xmm0, %xmm17
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm14, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenclast	%xmm10, %xmm15, %xmm15
	vpxor	16(%rdx), %xmm15, %xmm15
	vpxorq	.LCPI2_5(%rip), %xmm23, %xmm0
	vmovdqa64	%xmm11, %xmm19
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	%xmm2, %xmm11
	vmovdqa64	%xmm17, %xmm2
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm0
	vpternlogq	$150, 32(%rdx), %xmm4, %xmm0
	vpternlogq	$246, %xmm4, %xmm15, %xmm0
	vptest	%xmm0, %xmm0
	jne	.LBB2_44
	vmovdqa64	%xmm1, %xmm17
	vmovdqa64	%xmm8, %xmm18
	vmovdqa64	%xmm9, %xmm24
	vpxorq	.LCPI2_2(%rip), %xmm23, %xmm0
	vmovdqa64	%xmm19, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vpxorq	.LCPI2_3(%rip), %xmm23, %xmm9
	vaesenc	%xmm1, %xmm9, %xmm8
	vmovdqa64	%xmm17, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa64	%xmm18, %xmm9
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa64	%xmm24, %xmm15
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm8, %xmm1
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenclast	%xmm10, %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm11
	vpxor	%xmm4, %xmm1, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm3
	vpbroadcastd	.LCPI2_9(%rip), %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm3
	vpshufb	%xmm2, %xmm12, %xmm0
	vpbroadcastq	.LCPI2_7(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm8
	vpternlogq	$150, %xmm3, %xmm11, %xmm8
	vaesenc	%xmm12, %xmm11, %xmm1
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm3
	vpslldq	$12, %xmm12, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpshufd	$255, %xmm8, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	vaesenclast	%xmm0, %xmm3, %xmm9
	vbroadcastss	.LCPI2_8(%rip), %xmm5
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	vpternlogq	$150, %xmm4, %xmm12, %xmm9
	vmovdqa64	%xmm8, %xmm27
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm3, %xmm9, %xmm10
	vaesenclast	%xmm5, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm7, %xmm10
	#NO_APP
	vmovdqa64	%xmm9, %xmm18
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm10, %xmm13
	vaesenclast	%xmm0, %xmm13, %xmm13
	vpternlogq	$150, %xmm9, %xmm6, %xmm13
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm4
	vmovdqa64	%xmm10, %xmm19
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm5
	vpslldq	$8, %xmm10, %xmm6
	vpslldq	$12, %xmm10, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufb	%xmm3, %xmm13, %xmm8
	vaesenclast	%xmm4, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm7, %xmm8
	#NO_APP
	vmovdqa64	%xmm13, %xmm29
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm4
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm8, %xmm10
	vaesenclast	%xmm0, %xmm10, %xmm10
	vpternlogq	$150, %xmm13, %xmm6, %xmm10
	#NO_APP
	vbroadcastss	.LCPI2_11(%rip), %xmm4
	vmovaps	%xmm8, -32(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm5
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufb	%xmm3, %xmm10, %xmm13
	vaesenclast	%xmm4, %xmm13, %xmm13
	vpternlogq	$150, %xmm8, %xmm7, %xmm13
	#NO_APP
	vbroadcastss	.LCPI2_12(%rip), %xmm4
	vmovdqa	%xmm10, -48(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm5
	vpslldq	$8, %xmm10, %xmm6
	vpslldq	$12, %xmm10, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufd	$255, %xmm13, %xmm15
	vaesenclast	%xmm0, %xmm15, %xmm15
	vpternlogq	$150, %xmm10, %xmm7, %xmm15
	#NO_APP
	vmovdqa64	%xmm13, %xmm24
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm5
	vpslldq	$8, %xmm13, %xmm6
	vpslldq	$12, %xmm13, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufb	%xmm3, %xmm15, %xmm9
	vaesenclast	%xmm4, %xmm9, %xmm9
	vpternlogq	$150, %xmm13, %xmm7, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm4
	vpslldq	$8, %xmm15, %xmm5
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm9, %xmm13
	vaesenclast	%xmm0, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm6, %xmm13
	#NO_APP
	vbroadcastss	.LCPI2_13(%rip), %xmm4
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm5
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufb	%xmm3, %xmm13, %xmm8
	vaesenclast	%xmm4, %xmm8, %xmm8
	vpternlogq	$150, %xmm9, %xmm7, %xmm8
	#NO_APP
	vpslldq	$4, %xmm13, %xmm3
	vpunpcklqdq	%xmm13, %xmm0, %xmm4
	vinsertps	$55, %xmm13, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm8, %xmm3
	vaesenclast	%xmm0, %xmm3, %xmm7
	vpternlogq	$150, %xmm5, %xmm13, %xmm7
	vpshufb	%xmm2, %xmm7, %xmm2
	vpbroadcastq	.LCPI2_14(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm14
	vpslldq	$4, %xmm8, %xmm2
	vpunpcklqdq	%xmm8, %xmm0, %xmm3
	vinsertps	$55, %xmm8, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpternlogq	$150, %xmm4, %xmm8, %xmm14
	vaesenc	%xmm13, %xmm1, %xmm1
	vmovaps	%xmm8, -64(%rsp)
	vaesenc	%xmm8, %xmm1, %xmm1
	vmovdqa	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm1
	vpshufb	.LCPI2_15(%rip), %xmm1, %xmm1
	vpsrlq	$63, %xmm1, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpblendd	$12, %xmm2, %xmm0, %xmm0
	vpaddq	%xmm1, %xmm1, %xmm1
	vpsllq	$63, %xmm0, %xmm2
	vpternlogq	$30, %xmm3, %xmm1, %xmm2
	vpsllq	$62, %xmm0, %xmm1
	vpsllq	$57, %xmm0, %xmm4
	vpternlogq	$150, %xmm1, %xmm2, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpbroadcastq	.LCPI2_16(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm31
	vmovdqa64	%xmm3, %xmm30
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm31
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm5
	vmovdqa	%xmm8, 16(%rsp)
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpextrb	$15, %xmm16, %edi
	movzbl	23(%rsi), %r11d
	movzbl	17(%rsi), %ebx
	movzbl	16(%rsi), %ebp
	shll	$8, %ebp
	orl	%edi, %ebp
	shll	$16, %ebx
	orl	%ebp, %ebx
	movzbl	18(%rsi), %edi
	shll	$24, %edi
	orl	%ebx, %edi
	vmovd	%edi, %xmm0
	vpinsrd	$1, 19(%rsi), %xmm0, %xmm0
	vpinsrd	$2, %r11d, %xmm0, %xmm0
	movl	$16777216, %esi
	vpinsrd	$3, %esi, %xmm0, %xmm28
	testq	%r8, %r8
	vmovdqa	%xmm5, 80(%rsp)
	vmovdqa	%xmm1, (%rsp)
	vpxor	%xmm10, %xmm10, %xmm10
	je	.LBB2_25
	cmpq	$96, %r8
	jb	.LBB2_8
	vmovdqa	%xmm14, -112(%rsp)
	vmovdqa	%xmm6, -96(%rsp)
	vmovaps	%xmm13, -128(%rsp)
	vmovdqa64	%xmm9, %xmm23
	vmovdqa64	%xmm15, %xmm22
	vmovdqa64	%xmm24, %xmm21
	vmovdqa64	%xmm29, %xmm20
	vmovdqa64	%xmm27, %xmm17
	vmovapd	%xmm12, %xmm16
	vmovapd	%xmm11, %xmm27
	vmovdqa64	.LCPI2_15(%rip), %xmm29
	movq	%r8, %rsi
	vmovdqa64	%xmm4, %xmm25
	vmovdqa	%xmm5, %xmm0
	vpbroadcastq	.LCPI2_16(%rip), %xmm24
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm5
	.p2align	4
.LBB2_21:
	vmovdqu64	(%rcx), %xmm26
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm11
	vmovdqu	64(%rcx), %xmm12
	vmovdqu	80(%rcx), %xmm13
	vpshufb	%xmm29, %xmm11, %xmm11
	vpshufb	%xmm29, %xmm12, %xmm12
	vpshufb	%xmm29, %xmm13, %xmm13
	vmovdqa64	%xmm25, %xmm1
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm14
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm8, %xmm15
	vpclmulqdq	$1, %xmm12, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm9
	vpternlogq	$150, %xmm6, %xmm7, %xmm9
	vmovdqa64	%xmm30, %xmm4
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm6
	vpternlogq	$150, %xmm14, %xmm15, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm7
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm14
	vpternlogq	$150, %xmm7, %xmm9, %xmm14
	vpshufb	%xmm29, %xmm2, %xmm2
	vpshufb	%xmm29, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm8, %xmm9
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpternlogq	$150, %xmm7, %xmm9, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm9
	vpternlogq	$150, %xmm7, %xmm14, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm7
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm12
	vpternlogq	$150, %xmm7, %xmm6, %xmm12
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm7
	vpternlogq	$150, %xmm6, %xmm9, %xmm7
	vpshufb	%xmm29, %xmm26, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	vpternlogq	$150, %xmm3, %xmm11, %xmm2
	vmovdqa64	%xmm31, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpternlogq	$150, %xmm3, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm3
	vpslldq	$8, %xmm6, %xmm7
	vpternlogq	$150, %xmm3, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vmovdqa64	%xmm24, %xmm4
	vpclmulqdq	$16, %xmm4, %xmm7, %xmm3
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm10
	vpternlogq	$150, %xmm1, %xmm2, %xmm10
	vpsrldq	$8, %xmm6, %xmm1
	vpshufd	$78, %xmm3, %xmm2
	addq	$96, %rcx
	addq	$-96, %rsi
	vpternlogq	$150, %xmm1, %xmm2, %xmm10
	cmpq	$95, %rsi
	ja	.LBB2_21
	vmovapd	%xmm27, %xmm11
	vmovapd	%xmm16, %xmm12
	vmovdqa64	%xmm17, %xmm27
	vmovdqa64	%xmm18, %xmm8
	vmovdqa64	%xmm19, %xmm7
	vmovdqa64	%xmm20, %xmm29
	vmovdqa64	%xmm21, %xmm24
	vmovdqa64	%xmm22, %xmm15
	vmovdqa64	%xmm23, %xmm9
	vmovaps	-128(%rsp), %xmm13
	vmovdqa	-96(%rsp), %xmm6
	vmovdqa	-112(%rsp), %xmm14
	vmovdqa64	%xmm25, %xmm4
	cmpq	$16, %rsi
	jae	.LBB2_11
.LBB2_10:
	movq	%rsi, %rdi
	vmovdqa64	%xmm27, %xmm5
	testq	%rdi, %rdi
	jne	.LBB2_23
	jmp	.LBB2_18
.LBB2_25:
	xorl	%r8d, %r8d
	testq	%r10, %r10
	vmovdqa64	%xmm27, %xmm5
	vmovdqa64	%xmm18, %xmm8
	vmovdqa64	%xmm19, %xmm7
	jne	.LBB2_28
	jmp	.LBB2_43
.LBB2_8:
	movq	%r8, %rsi
	vmovdqa64	%xmm18, %xmm8
	vmovdqa64	%xmm19, %xmm7
	cmpq	$16, %rsi
	jb	.LBB2_10
.LBB2_11:
	leaq	-16(%rsi), %rdi
	testb	$16, %dil
	vmovdqa64	%xmm27, %xmm5
	je	.LBB2_12
	cmpq	$16, %rdi
	jae	.LBB2_14
.LBB2_17:
	testq	%rdi, %rdi
	je	.LBB2_18
.LBB2_23:
	movl	$-1, %esi
	bzhil	%edi, %esi, %esi
	kmovd	%esi, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	shlq	$3, %r8
	testq	%r10, %r10
	je	.LBB2_24
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rsi
	incq	%rcx
	cmpq	%rcx, %rsi
	jb	.LBB2_44
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_16(%rip), %xmm3
	vmovdqa	%xmm7, %xmm10
	vmovdqa	%xmm3, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vmovdqa	%xmm10, %xmm7
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
	jmp	.LBB2_28
.LBB2_12:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_16(%rip), %xmm3
	vmovdqa	%xmm7, %xmm10
	vmovdqa	%xmm3, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vmovdqa	%xmm10, %xmm7
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
	movq	%rdi, %rsi
	cmpq	$16, %rdi
	jb	.LBB2_17
.LBB2_14:
	vmovdqa64	%xmm7, %xmm18
	vmovapd	%xmm12, %xmm17
	vmovdqa	%xmm6, %xmm5
	vmovdqa	.LCPI2_15(%rip), %xmm0
	vpbroadcastq	.LCPI2_16(%rip), %xmm12
	.p2align	4
.LBB2_15:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm3, %xmm6
	vpxor	%xmm6, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm6, %xmm10
	vpternlogq	$150, %xmm3, %xmm2, %xmm10
	cmpq	$15, %rsi
	ja	.LBB2_15
	movq	%rsi, %rdi
	vmovdqa	%xmm5, %xmm6
	vmovapd	%xmm17, %xmm12
	vmovdqa64	%xmm27, %xmm5
	vmovdqa64	%xmm18, %xmm7
	testq	%rdi, %rdi
	jne	.LBB2_23
.LBB2_18:
	shlq	$3, %r8
	testq	%r10, %r10
	je	.LBB2_43
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rsi
	incq	%rcx
	cmpq	%rcx, %rsi
	jb	.LBB2_44
.LBB2_28:
	vmovaps	%xmm13, -128(%rsp)
	vmovdqa	%xmm15, -80(%rsp)
	movq	152(%rsp), %rax
	vpshufb	.LCPI2_17(%rip), %xmm28, %xmm0
	vpaddd	.LCPI2_18(%rip), %xmm0, %xmm17
	cmpq	$96, %r10
	vmovdqa64	%xmm28, -16(%rsp)
	jb	.LBB2_29
	vmovdqa64	.LCPI2_15(%rip), %xmm18
	movq	%r10, %rcx
	vmovdqa	%xmm5, 32(%rsp)
	vmovdqa	%xmm8, 64(%rsp)
	vmovdqa	%xmm7, 48(%rsp)
	vmovdqa64	%xmm29, -112(%rsp)
	vmovdqa64	%xmm9, %xmm25
	vmovdqa	%xmm6, -96(%rsp)
	vmovdqa64	%xmm14, %xmm22
	vmovdqa64	16(%rsp), %xmm20
	vmovdqa64	%xmm31, %xmm21
	vmovdqa64	80(%rsp), %xmm23
	vmovdqa64	(%rsp), %xmm19
	vmovdqa64	%xmm30, %xmm8
	.p2align	4
.LBB2_35:
	vmovdqu64	16(%r9), %xmm26
	vmovdqu64	32(%r9), %xmm27
	vmovdqu64	48(%r9), %xmm28
	vmovdqu64	64(%r9), %xmm29
	vmovdqu64	80(%r9), %xmm30
	vpshufb	%xmm18, %xmm17, %xmm0
	vpaddd	.LCPI2_18(%rip), %xmm17, %xmm1
	vpshufb	%xmm18, %xmm1, %xmm1
	vpaddd	.LCPI2_19(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm3
	vpaddd	.LCPI2_20(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm6
	vpaddd	.LCPI2_21(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm7
	vpaddd	.LCPI2_22(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm9
	vpshufb	%xmm18, %xmm30, %xmm5
	vpxor	%xmm0, %xmm11, %xmm2
	vpxor	%xmm1, %xmm11, %xmm14
	vpxor	%xmm3, %xmm11, %xmm3
	vpxor	%xmm6, %xmm11, %xmm13
	vpxor	%xmm7, %xmm11, %xmm1
	vmovapd	%xmm11, %xmm31
	vpxor	%xmm9, %xmm11, %xmm11
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm15, %xmm15, %xmm15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm12, %xmm16
	vxorpd	%xmm12, %xmm12, %xmm12
	vmovaps	32(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm4, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm6
	vpxor	%xmm6, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm4, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm4, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm29, %xmm5
	vmovaps	64(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovaps	48(%rsp), %xmm7
	vmovdqa64	%xmm20, %xmm9
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm28, %xmm5
	vmovaps	-112(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovaps	-32(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm27, %xmm5
	vmovaps	-48(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm24, %xmm7
	vmovdqa64	%xmm23, %xmm9
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm26, %xmm5
	vmovaps	-80(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm25, %xmm7
	vmovdqa64	%xmm19, %xmm9
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vmovdqu	(%r9), %xmm5
	vpshufb	%xmm18, %xmm5, %xmm6
	vpxor	%xmm6, %xmm10, %xmm6
	vmovaps	-128(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm21, %xmm10
	vmovaps	-64(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpunpcklqdq	%xmm0, %xmm7, %xmm6
	vpunpckhqdq	%xmm7, %xmm0, %xmm0
	vmovaps	-96(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm22, %xmm7
	#APP
	vaesenclast	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm7, %xmm14, %xmm14
	vaesenclast	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm13, %xmm13
	vaesenclast	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm7, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm5, %xmm2, %xmm2
	vpxorq	%xmm26, %xmm14, %xmm5
	vpxorq	%xmm27, %xmm3, %xmm3
	vpxorq	%xmm28, %xmm13, %xmm7
	vpxorq	%xmm29, %xmm1, %xmm1
	vpxorq	%xmm30, %xmm11, %xmm9
	vmovapd	%xmm31, %xmm11
	vpxor	%xmm6, %xmm15, %xmm6
	vpshufd	$78, %xmm6, %xmm10
	vpbroadcastq	.LCPI2_16(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm6
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm0, %xmm12, %xmm10
	vmovapd	%xmm16, %xmm12
	vmovdqu	%xmm2, (%rax)
	vmovdqu	%xmm5, 16(%rax)
	vmovdqu	%xmm3, 32(%rax)
	vmovdqu	%xmm7, 48(%rax)
	vmovdqu	%xmm1, 64(%rax)
	vmovdqu	%xmm9, 80(%rax)
	vpshufd	$78, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm6, %xmm1
	vpternlogq	$150, %xmm1, %xmm0, %xmm10
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI2_23(%rip), %xmm17, %xmm17
	cmpq	$95, %rcx
	ja	.LBB2_35
	vmovapd	%xmm12, %xmm27
	vmovdqa64	%xmm22, %xmm12
	vmovdqa64	%xmm25, %xmm13
	vmovdqa64	%xmm24, %xmm15
	vmovdqa	32(%rsp), %xmm5
	vmovdqa	64(%rsp), %xmm8
	vmovdqa	48(%rsp), %xmm7
	vmovdqa64	-112(%rsp), %xmm29
	vmovdqa	-96(%rsp), %xmm6
	jmp	.LBB2_30
.LBB2_29:
	vmovapd	%xmm12, %xmm27
	vmovdqa	%xmm14, %xmm12
	vmovdqa	%xmm9, %xmm13
	vmovdqa64	%xmm24, %xmm15
	movq	%r10, %rcx
.LBB2_30:
	vmovdqa64	%xmm7, %xmm23
	vmovdqa64	%xmm8, %xmm22
	vmovdqa64	%xmm5, %xmm28
	cmpq	$16, %rcx
	jb	.LBB2_31
	vmovdqa64	.LCPI2_15(%rip), %xmm19
	vpmovsxbq	.LCPI2_26(%rip), %xmm16
	vmovdqa64	-48(%rsp), %xmm20
	vmovdqa64	-80(%rsp), %xmm24
	vmovdqa64	-128(%rsp), %xmm25
	vmovdqa64	-64(%rsp), %xmm26
	vpbroadcastq	.LCPI2_16(%rip), %xmm30
	vmovapd	%xmm27, %xmm31
	vmovdqa64	%xmm28, %xmm21
	vmovdqa64	%xmm22, %xmm8
	vmovdqa64	%xmm23, %xmm9
	vmovdqa64	%xmm29, %xmm0
	vmovdqa	-32(%rsp), %xmm14
	.p2align	4
.LBB2_38:
	vmovdqu	(%r9), %xmm2
	vpshufb	%xmm19, %xmm2, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm5
	vmovdqa64	%xmm6, %xmm18
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vmovdqa64	%xmm30, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm10
	vpshufb	%xmm19, %xmm17, %xmm3
	vxorpd	%xmm3, %xmm11, %xmm3
	vmovapd	%xmm31, %xmm1
	vaesenc	%xmm1, %xmm3, %xmm3
	vmovdqa64	%xmm21, %xmm1
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vmovdqa64	%xmm20, %xmm6
	vaesenc	%xmm6, %xmm3, %xmm3
	vmovdqa64	%xmm18, %xmm1
	vaesenc	%xmm15, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm6
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vmovdqa64	%xmm25, %xmm6
	vaesenc	%xmm6, %xmm3, %xmm3
	vmovdqa64	%xmm26, %xmm6
	vaesenc	%xmm6, %xmm3, %xmm3
	vmovdqa64	%xmm18, %xmm6
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenclast	%xmm12, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	leaq	16(%rax), %rsi
	addq	$-16, %rcx
	addq	$16, %r9
	vpsrldq	$8, %xmm5, %xmm3
	vpternlogq	$150, %xmm3, %xmm7, %xmm10
	vpaddd	%xmm16, %xmm17, %xmm17
	vmovdqu	%xmm2, (%rax)
	movq	%rsi, %rax
	cmpq	$15, %rcx
	ja	.LBB2_38
	vmovdqa	%xmm12, %xmm14
	testq	%rcx, %rcx
	je	.LBB2_33
.LBB2_39:
	movl	$-1, %eax
	bzhil	%ecx, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%r9), %xmm1 {%k1} {z}
	vpshufb	.LCPI2_15(%rip), %xmm17, %xmm0
	vxorpd	%xmm0, %xmm11, %xmm0
	vmovapd	%xmm27, %xmm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa64	%xmm28, %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa64	%xmm22, %xmm8
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa64	%xmm23, %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vmovdqa64	%xmm29, %xmm2
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	-32(%rsp), %xmm0, %xmm0
	vaesenc	-48(%rsp), %xmm0, %xmm0
	vmovdqa64	%xmm15, %xmm24
	vaesenc	%xmm15, %xmm0, %xmm0
	vmovdqa	-80(%rsp), %xmm15
	vaesenc	%xmm15, %xmm0, %xmm0
	vmovdqa	%xmm13, %xmm9
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	-128(%rsp), %xmm13
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	-64(%rsp), %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu8	%xmm0, (%rsi) {%k1}
	testq	%r10, %r10
	je	.LBB2_41
	vmovdqa	%xmm1, %xmm0
.LBB2_41:
	vpbroadcastq	.LCPI2_16(%rip), %xmm7
	vmovdqa64	%xmm28, %xmm5
	vmovdqa64	-16(%rsp), %xmm28
	jmp	.LBB2_42
.LBB2_31:
	movq	%rax, %rsi
	vmovdqa	%xmm12, %xmm14
	testq	%rcx, %rcx
	jne	.LBB2_39
.LBB2_33:
	vmovdqa64	%xmm15, %xmm24
	vmovdqa	-80(%rsp), %xmm15
	vmovdqa	%xmm13, %xmm9
	vmovaps	-128(%rsp), %xmm13
	vmovapd	%xmm27, %xmm12
	vmovdqa64	%xmm28, %xmm5
	vmovdqa64	%xmm22, %xmm8
	vmovdqa64	%xmm23, %xmm7
	vmovdqa64	-16(%rsp), %xmm28
	jmp	.LBB2_43
.LBB2_24:
	vmovdqa64	%xmm7, %xmm23
	vpbroadcastq	.LCPI2_16(%rip), %xmm7
.LBB2_42:
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm10
	vpternlogq	$150, %xmm2, %xmm1, %xmm10
	vmovdqa64	%xmm23, %xmm7
.LBB2_43:
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpbroadcastq	.LCPI2_16(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	%xmm28, %xmm11, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vmovdqa64	%xmm29, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vaesenc	-48(%rsp), %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	-64(%rsp), %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vpshufb	.LCPI2_24(%rip), %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm3, %xmm3
	vpshufb	.LCPI2_15(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_25(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpternlogq	$150, (%rdx), %xmm3, %xmm1
	xorl	%eax, %eax
	vptest	%xmm1, %xmm1
	sete	%al
.LBB2_44:
	addq	$104, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndkv2kc_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndkv2kc_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_skylakex_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_skylakex_is_supported,@function
haberdashery_aes256gcmdndkv2kc_skylakex_is_supported:
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
	andl	$1993871875, %esi
	andl	$125829120, %edi
	orl	%esi, %edi
	notl	%r8d
	andl	$-779157207, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndkv2kc_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndkv2kc_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

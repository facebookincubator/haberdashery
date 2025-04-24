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
	.section	.text.haberdashery_aes256gcmdndkv2_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2_tigerlake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2_tigerlake_init,@function
haberdashery_aes256gcmdndkv2_tigerlake_init:
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
	.size	haberdashery_aes256gcmdndkv2_tigerlake_init, .Lfunc_end0-haberdashery_aes256gcmdndkv2_tigerlake_init
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
	.byte	96
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
	.byte	97
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
	.byte	98
.LCPI1_4:
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
.LCPI1_13:
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
.LCPI1_15:
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
.LCPI1_16:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_17:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_18:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_23:
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
.LCPI1_24:
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
.LCPI1_5:
	.quad	4294967297
.LCPI1_12:
	.quad	274877907008
.LCPI1_14:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_6:
	.long	0x00000002
.LCPI1_7:
	.long	0x0c0f0e0d
.LCPI1_8:
	.long	0x00000004
.LCPI1_9:
	.long	0x00000008
.LCPI1_10:
	.long	0x00000010
.LCPI1_11:
	.long	0x00000020
	.section	.rodata,"a",@progbits
.LCPI1_25:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcmdndkv2_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2_tigerlake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2_tigerlake_encrypt,@function
haberdashery_aes256gcmdndkv2_tigerlake_encrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	160(%rsp), %r10
	xorl	%eax, %eax
	cmpq	176(%rsp), %r10
	jne	.LBB1_25
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB1_25
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB1_25
	cmpq	$24, %rdx
	jne	.LBB1_25
	cmpq	$16, 192(%rsp)
	jne	.LBB1_25
	vmovdqu	(%rsi), %xmm0
	movzbl	16(%rsi), %ebx
	movzbl	17(%rsi), %r11d
	movzbl	23(%rsi), %edx
	vpextrb	$15, %xmm0, %ebp
	vmovdqa	(%rdi), %xmm1
	vmovdqa	16(%rdi), %xmm2
	vmovdqa	32(%rdi), %xmm3
	vmovdqa	48(%rdi), %xmm4
	vpternlogq	$120, .LCPI1_0(%rip), %xmm0, %xmm1
	vpxor	.LCPI1_1(%rip), %xmm1, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	64(%rdi), %xmm5
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	80(%rdi), %xmm6
	vmovdqa	96(%rdi), %xmm7
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	112(%rdi), %xmm8
	vmovdqa	128(%rdi), %xmm9
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vmovdqa	144(%rdi), %xmm10
	vmovdqa	160(%rdi), %xmm11
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	176(%rdi), %xmm12
	vmovdqa	192(%rdi), %xmm13
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm14
	vmovdqa	224(%rdi), %xmm15
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenclast	%xmm15, %xmm0, %xmm0
	vpxorq	.LCPI1_2(%rip), %xmm1, %xmm16
	vaesenc	%xmm2, %xmm16, %xmm16
	vaesenc	%xmm3, %xmm16, %xmm16
	vaesenc	%xmm4, %xmm16, %xmm16
	vaesenc	%xmm5, %xmm16, %xmm16
	vaesenc	%xmm6, %xmm16, %xmm16
	vaesenc	%xmm7, %xmm16, %xmm16
	vaesenc	%xmm8, %xmm16, %xmm16
	vaesenc	%xmm9, %xmm16, %xmm16
	vaesenc	%xmm10, %xmm16, %xmm16
	vaesenc	%xmm11, %xmm16, %xmm16
	vaesenc	%xmm12, %xmm16, %xmm16
	vaesenc	%xmm13, %xmm16, %xmm16
	vaesenc	%xmm14, %xmm16, %xmm16
	vaesenclast	%xmm15, %xmm16, %xmm16
	vpxor	.LCPI1_3(%rip), %xmm1, %xmm1
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm1
	vpxorq	%xmm0, %xmm16, %xmm31
	vpxor	%xmm0, %xmm1, %xmm10
	vpslldq	$4, %xmm31, %xmm0
	vpslldq	$8, %xmm31, %xmm1
	vpslldq	$12, %xmm31, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI1_7(%rip), %xmm16
	vpshufb	%xmm16, %xmm10, %xmm1
	vpbroadcastq	.LCPI1_5(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm14
	vpternlogq	$150, %xmm2, %xmm31, %xmm14
	vaesenc	%xmm10, %xmm31, %xmm1
	vpslldq	$4, %xmm10, %xmm2
	vpslldq	$8, %xmm10, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm14, %xmm2
	vpxor	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm2, %xmm15
	vpternlogq	$150, %xmm4, %xmm10, %xmm15
	vbroadcastss	.LCPI1_6(%rip), %xmm3
	vbroadcastss	.LCPI1_7(%rip), %xmm2
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm6
	vpslldq	$12, %xmm14, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm15, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpternlogq	$150, %xmm14, %xmm7, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm3
	vpslldq	$8, %xmm15, %xmm4
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm0, %xmm12
	vaesenclast	%xmm5, %xmm12, %xmm12
	vpternlogq	$150, %xmm15, %xmm6, %xmm12
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	vmovapd	%xmm0, %xmm27
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm0, %xmm6
	vpslldq	$12, %xmm0, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm12, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm0, %xmm7, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm1, %xmm1
	vpslldq	$4, %xmm12, %xmm3
	vpslldq	$8, %xmm12, %xmm4
	vpslldq	$12, %xmm12, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm13, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm12, %xmm6, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm4
	vpslldq	$8, %xmm13, %xmm6
	vpslldq	$12, %xmm13, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm8, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpternlogq	$150, %xmm13, %xmm7, %xmm9
	#NO_APP
	vmovaps	%xmm8, -32(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpslldq	$12, %xmm8, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm9, %xmm0
	vaesenclast	%xmm5, %xmm0, %xmm0
	vpternlogq	$150, %xmm8, %xmm6, %xmm0
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm9, -48(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm0, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm9, %xmm7, %xmm8
	#NO_APP
	vmovaps	%xmm0, -64(%rsp)
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm3
	vpslldq	$8, %xmm0, %xmm4
	vpslldq	$12, %xmm0, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm5, %xmm9, %xmm9
	vpternlogq	$150, %xmm0, %xmm6, %xmm9
	#NO_APP
	vbroadcastss	.LCPI1_11(%rip), %xmm3
	vmovdqa	%xmm8, -80(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm9, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm8, %xmm7, %xmm11
	#NO_APP
	vpslldq	$4, %xmm9, %xmm2
	vpunpcklqdq	%xmm9, %xmm5, %xmm3
	vinsertps	$55, %xmm9, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm11, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm6
	vpternlogq	$150, %xmm4, %xmm9, %xmm6
	vpslldq	$4, %xmm11, %xmm2
	vpunpcklqdq	%xmm11, %xmm5, %xmm3
	vinsertps	$55, %xmm11, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vpshufb	%xmm16, %xmm6, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm11, %xmm2
	vmovaps	%xmm9, -96(%rsp)
	vaesenc	%xmm9, %xmm1, %xmm0
	vmovaps	%xmm11, -112(%rsp)
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	%xmm6, %xmm11
	vaesenc	%xmm6, %xmm0, %xmm0
	vmovdqa	%xmm2, -128(%rsp)
	vaesenclast	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_13(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpblendd	$12, %xmm1, %xmm5, %xmm1
	vpsllq	$63, %xmm1, %xmm3
	vpternlogq	$30, %xmm2, %xmm0, %xmm3
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm4
	vpternlogq	$150, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpbroadcastq	.LCPI1_14(%rip), %xmm16
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm2
	vpshufd	$78, %xmm0, %xmm7
	vpternlogq	$150, %xmm1, %xmm2, %xmm7
	vpclmulqdq	$0, %xmm4, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm7, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm7, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vmovdqa64	%xmm3, %xmm23
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm6
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm2
	vpshufd	$78, %xmm0, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm2
	vmovdqa64	%xmm3, %xmm24
	vpclmulqdq	$17, %xmm4, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	shll	$8, %ebx
	orl	%ebp, %ebx
	shll	$16, %r11d
	orl	%ebx, %r11d
	movzbl	18(%rsi), %edi
	shll	$24, %edi
	orl	%r11d, %edi
	vmovd	%edi, %xmm0
	vpinsrd	$1, 19(%rsi), %xmm0, %xmm0
	vpinsrd	$2, %edx, %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm22
	testq	%r8, %r8
	je	.LBB1_23
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqa64	%xmm22, %xmm28
	vmovdqa	%xmm11, %xmm8
	vmovdqa64	%xmm13, %xmm22
	vmovdqa64	%xmm12, %xmm21
	vmovapd	%xmm27, %xmm20
	vmovdqa64	%xmm15, %xmm19
	vmovdqa64	%xmm14, %xmm18
	vmovdqa	.LCPI1_13(%rip), %xmm0
	movq	%r8, %rdx
	vmovdqa64	%xmm6, %xmm25
	vmovdqa64	%xmm3, %xmm26
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm11
	vmovdqu	80(%rcx), %xmm12
	addq	$96, %rcx
	addq	$-96, %rdx
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufb	%xmm0, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm6, %xmm5
	vpshufb	%xmm0, %xmm11, %xmm6
	vpshufb	%xmm0, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm14
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm15
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm17
	vpternlogq	$150, %xmm15, %xmm13, %xmm17
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm23, %xmm13
	vpternlogq	$150, %xmm12, %xmm14, %xmm13
	vpclmulqdq	$1, %xmm5, %xmm23, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm23, %xmm14
	vpternlogq	$150, %xmm12, %xmm17, %xmm14
	vpclmulqdq	$17, %xmm5, %xmm23, %xmm5
	vpternlogq	$150, %xmm11, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm24, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm24, %xmm11
	vpclmulqdq	$16, %xmm3, %xmm24, %xmm12
	vpternlogq	$150, %xmm11, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm3, %xmm24, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm11
	vpternlogq	$150, %xmm6, %xmm13, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm13
	vpternlogq	$150, %xmm6, %xmm12, %xmm13
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm25, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm25, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm25, %xmm6
	vpternlogq	$150, %xmm5, %xmm13, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm25, %xmm1
	vpslldq	$8, %xmm6, %xmm5
	vpternlogq	$150, %xmm3, %xmm11, %xmm5
	vpsrldq	$8, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm5, %xmm6
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm6, %xmm5
	cmpq	$95, %rdx
	ja	.LBB1_21
	vmovdqa64	%xmm18, %xmm14
	vmovdqa64	%xmm19, %xmm15
	vmovapd	%xmm20, %xmm27
	vmovdqa64	%xmm21, %xmm12
	vmovdqa64	%xmm22, %xmm13
	vmovdqa	%xmm8, %xmm11
	vmovdqa64	%xmm25, %xmm6
	vmovdqa64	%xmm26, %xmm3
	vmovdqa64	%xmm28, %xmm22
	cmpq	$16, %rdx
	jae	.LBB1_14
.LBB1_9:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_11
	jmp	.LBB1_26
.LBB1_23:
	testq	%r10, %r10
	jne	.LBB1_28
	jmp	.LBB1_24
.LBB1_7:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB1_9
.LBB1_14:
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB1_15
	cmpq	$16, %rsi
	jae	.LBB1_17
.LBB1_10:
	testq	%rsi, %rsi
	je	.LBB1_26
.LBB1_11:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	testq	%r10, %r10
	je	.LBB1_35
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_25
	vpshufb	.LCPI1_13(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vmovdqa	%xmm3, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm5, %xmm3
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	jmp	.LBB1_28
.LBB1_15:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_13(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vmovdqa	%xmm3, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	%xmm5, %xmm3
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB1_10
.LBB1_17:
	vmovdqa64	%xmm3, %xmm18
	vmovdqa64	%xmm6, %xmm17
	vmovdqa	.LCPI1_13(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_18:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm6
	vpternlogq	$150, %xmm1, %xmm5, %xmm6
	vpshufd	$78, %xmm3, %xmm1
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm0, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm4, %xmm2
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm3, %xmm2, %xmm5
	cmpq	$15, %rdx
	ja	.LBB1_18
	movq	%rdx, %rsi
	vmovdqa64	%xmm17, %xmm6
	vmovdqa64	%xmm18, %xmm3
	testq	%rsi, %rsi
	jne	.LBB1_11
.LBB1_26:
	testq	%r10, %r10
	je	.LBB1_24
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_25
.LBB1_28:
	movq	168(%rsp), %rdx
	vpshufb	.LCPI1_15(%rip), %xmm22, %xmm1
	vpaddd	.LCPI1_16(%rip), %xmm1, %xmm17
	cmpq	$96, %r10
	jb	.LBB1_29
	vmovdqa	%xmm3, -16(%rsp)
	vmovdqa	%xmm6, (%rsp)
	vmovdqa64	.LCPI1_13(%rip), %xmm18
	vpshufb	%xmm18, %xmm17, %xmm0
	vpaddd	.LCPI1_17(%rip), %xmm1, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm2
	vpaddd	.LCPI1_18(%rip), %xmm1, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm3
	vpaddd	.LCPI1_19(%rip), %xmm1, %xmm6
	vpshufb	%xmm18, %xmm6, %xmm6
	vmovdqa	%xmm11, %xmm8
	vpaddd	.LCPI1_20(%rip), %xmm1, %xmm11
	vmovdqa64	%xmm12, %xmm17
	vpshufb	%xmm18, %xmm11, %xmm12
	vpaddd	.LCPI1_21(%rip), %xmm1, %xmm11
	vmovdqa	%xmm13, %xmm9
	vpshufb	%xmm18, %xmm11, %xmm13
	vpxorq	%xmm0, %xmm31, %xmm0
	vpxorq	%xmm2, %xmm31, %xmm2
	vpxorq	%xmm3, %xmm31, %xmm3
	vpxorq	%xmm6, %xmm31, %xmm11
	vpxorq	%xmm12, %xmm31, %xmm12
	vpxorq	%xmm13, %xmm31, %xmm13
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	#NO_APP
	vmovdqa	%xmm14, 96(%rsp)
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovdqa	%xmm15, 80(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm13, %xmm13
	#NO_APP
	vmovapd	%xmm27, %xmm6
	vmovapd	%xmm27, 64(%rsp)
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm17, %xmm6
	vmovdqa64	%xmm17, 48(%rsp)
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovdqa	%xmm9, 32(%rsp)
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	#NO_APP
	vmovaps	-32(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	-48(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	-64(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	-80(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	-96(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	-112(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovdqa	%xmm8, 16(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vmovdqa	-128(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm11, %xmm11
	vaesenclast	%xmm6, %xmm12, %xmm12
	vaesenclast	%xmm6, %xmm13, %xmm13
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm19
	vpxorq	16(%r9), %xmm2, %xmm27
	vpxorq	32(%r9), %xmm3, %xmm28
	vpxorq	48(%r9), %xmm11, %xmm29
	vpxorq	64(%r9), %xmm12, %xmm30
	vpxor	80(%r9), %xmm13, %xmm2
	leaq	96(%r9), %r9
	leaq	96(%rdx), %rcx
	vpaddd	.LCPI1_22(%rip), %xmm1, %xmm17
	vmovdqu64	%xmm19, (%rdx)
	vmovdqu64	%xmm27, 16(%rdx)
	vmovdqu64	%xmm28, 32(%rdx)
	vmovdqu64	%xmm29, 48(%rdx)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm30, 64(%rdx)
	vmovdqu	%xmm2, 80(%rdx)
	cmpq	$96, %rax
	jb	.LBB1_40
	vmovdqa64	%xmm22, 112(%rsp)
	vmovdqa64	-128(%rsp), %xmm26
	vmovdqa64	(%rsp), %xmm25
	vmovdqa64	-16(%rsp), %xmm21
	.p2align	4, 0x90
.LBB1_38:
	vpshufb	%xmm18, %xmm17, %xmm0
	vpaddd	.LCPI1_16(%rip), %xmm17, %xmm1
	vpshufb	%xmm18, %xmm1, %xmm1
	vpaddd	.LCPI1_17(%rip), %xmm17, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm3
	vpaddd	.LCPI1_18(%rip), %xmm17, %xmm6
	vpshufb	%xmm18, %xmm6, %xmm11
	vpaddd	.LCPI1_19(%rip), %xmm17, %xmm6
	vpshufb	%xmm18, %xmm6, %xmm12
	vpaddd	.LCPI1_20(%rip), %xmm17, %xmm6
	vpshufb	%xmm18, %xmm6, %xmm15
	vpshufb	%xmm18, %xmm2, %xmm6
	vpxorq	%xmm0, %xmm31, %xmm14
	vpxorq	%xmm1, %xmm31, %xmm2
	vpxorq	%xmm3, %xmm31, %xmm3
	vpxorq	%xmm11, %xmm31, %xmm13
	vpxorq	%xmm12, %xmm31, %xmm1
	vpxorq	%xmm15, %xmm31, %xmm11
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm0, %xmm0, %xmm0
	vpxor	%xmm15, %xmm15, %xmm15
	vpxor	%xmm12, %xmm12, %xmm12
	vmovapd	%xmm10, %xmm20
	vmovaps	96(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm6, %xmm10
	vpxor	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm4, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm23, %xmm8
	vpshufb	%xmm18, %xmm30, %xmm6
	vmovaps	80(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	#NO_APP
	vmovaps	64(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm10
	vpxor	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm24, %xmm9
	vpshufb	%xmm18, %xmm29, %xmm6
	vmovaps	48(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm7, %xmm22
	vmovaps	32(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm10
	vpxor	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm22, %xmm7
	vpshufb	%xmm18, %xmm28, %xmm6
	vmovaps	-32(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovaps	-48(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm10
	vpxor	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm18, %xmm27, %xmm6
	vmovaps	-64(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm21, %xmm9
	vmovaps	-80(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm10
	vpxor	%xmm10, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm10
	vpxor	%xmm10, %xmm15, %xmm15
	#NO_APP
	vmovapd	%xmm20, %xmm10
	vpshufb	%xmm18, %xmm19, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovaps	-96(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa	-112(%rsp), %xmm8
	vmovdqa64	%xmm25, %xmm9
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm15, %xmm15
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpunpcklqdq	%xmm15, %xmm6, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpunpckhqdq	%xmm6, %xmm15, %xmm5
	vmovaps	16(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm26, %xmm6
	#APP
	vaesenclast	%xmm6, %xmm14, %xmm14
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm13, %xmm13
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm11, %xmm11
	#NO_APP
	vpxorq	(%r9), %xmm14, %xmm19
	vpxorq	16(%r9), %xmm2, %xmm27
	vpxorq	32(%r9), %xmm3, %xmm28
	vpxorq	48(%r9), %xmm13, %xmm29
	vpxorq	64(%r9), %xmm1, %xmm30
	vpxor	80(%r9), %xmm11, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm5, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm5
	addq	$96, %r9
	vmovdqu64	%xmm19, (%rcx)
	vmovdqu64	%xmm27, 16(%rcx)
	vmovdqu64	%xmm28, 32(%rcx)
	vmovdqu64	%xmm29, 48(%rcx)
	vmovdqu64	%xmm30, 64(%rcx)
	vmovdqu	%xmm2, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_21(%rip), %xmm17, %xmm17
	cmpq	$95, %rax
	ja	.LBB1_38
	vmovdqa64	112(%rsp), %xmm22
.LBB1_40:
	vpshufb	%xmm18, %xmm19, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpshufb	%xmm18, %xmm27, %xmm1
	vpshufb	%xmm18, %xmm28, %xmm3
	vpshufb	%xmm18, %xmm29, %xmm5
	vpshufb	%xmm18, %xmm30, %xmm6
	vpshufb	%xmm18, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm4, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm4, %xmm12
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm13
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm13
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm14
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm15
	vpternlogq	$150, %xmm14, %xmm12, %xmm15
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm23, %xmm7
	vpternlogq	$150, %xmm11, %xmm13, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm23, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm23, %xmm12
	vpternlogq	$150, %xmm11, %xmm15, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm23, %xmm5
	vpternlogq	$150, %xmm2, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm24, %xmm2
	vpclmulqdq	$1, %xmm3, %xmm24, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm24, %xmm8
	vpternlogq	$150, %xmm6, %xmm12, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm24, %xmm3
	vmovdqa	-16(%rsp), %xmm9
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm6
	vpternlogq	$150, %xmm2, %xmm7, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm7
	vpternlogq	$150, %xmm2, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	vmovdqa	(%rsp), %xmm8
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm5
	vpternlogq	$150, %xmm3, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpslldq	$8, %xmm5, %xmm3
	vpternlogq	$150, %xmm2, %xmm6, %xmm3
	vpsrldq	$8, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm6
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	vpshufd	$78, %xmm3, %xmm5
	vpternlogq	$150, %xmm2, %xmm6, %xmm5
	movq	%rcx, %rdx
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm15
	vmovapd	64(%rsp), %xmm3
	vmovdqa	48(%rsp), %xmm12
	vmovdqa	32(%rsp), %xmm13
	vmovdqa	16(%rsp), %xmm11
	jmp	.LBB1_30
.LBB1_29:
	movq	%r10, %rax
	vmovapd	%xmm27, %xmm3
.LBB1_30:
	cmpq	$16, %rax
	vmovdqa	-32(%rsp), %xmm7
	vmovdqa	-48(%rsp), %xmm8
	vmovdqa	-64(%rsp), %xmm9
	vmovapd	%xmm3, %xmm27
	jb	.LBB1_31
	vmovdqa	.LCPI1_13(%rip), %xmm0
	vpmovsxbq	.LCPI1_25(%rip), %xmm1
	vmovdqa64	-80(%rsp), %xmm18
	vmovdqa64	-96(%rsp), %xmm19
	vmovdqa64	-112(%rsp), %xmm20
	vmovdqa64	-128(%rsp), %xmm21
	.p2align	4, 0x90
.LBB1_42:
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %rcx
	addq	$-16, %rax
	vpshufb	%xmm0, %xmm17, %xmm2
	vpaddd	%xmm1, %xmm17, %xmm17
	vpxorq	%xmm2, %xmm31, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm18, %xmm2, %xmm2
	vaesenc	%xmm19, %xmm2, %xmm2
	vaesenc	%xmm20, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm21, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rdx)
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm4, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpshufd	$78, %xmm3, %xmm5
	vmovapd	%xmm27, %xmm3
	vpternlogq	$150, %xmm6, %xmm2, %xmm5
	movq	%rcx, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rax
	ja	.LBB1_42
	testq	%rax, %rax
	jne	.LBB1_33
	jmp	.LBB1_24
.LBB1_31:
	movq	%rdx, %rcx
	movq	%r9, %rsi
	testq	%rax, %rax
	je	.LBB1_24
.LBB1_33:
	movl	$-1, %edx
	bzhil	%eax, %edx, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rsi), %xmm0 {%k1} {z}
	vpshufb	.LCPI1_13(%rip), %xmm17, %xmm1
	vpxorq	%xmm1, %xmm31, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	-80(%rsp), %xmm1, %xmm1
	vaesenc	-96(%rsp), %xmm1, %xmm1
	vaesenc	-112(%rsp), %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenclast	-128(%rsp), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rcx) {%k1}
	testq	%r10, %r10
	je	.LBB1_35
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
.LBB1_35:
	vpshufb	.LCPI1_13(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
.LBB1_24:
	movq	184(%rsp), %rax
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	%xmm22, %xmm31, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm27, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vaesenc	-48(%rsp), %xmm3, %xmm3
	vaesenc	-64(%rsp), %xmm3, %xmm3
	vaesenc	-80(%rsp), %xmm3, %xmm3
	vaesenc	-96(%rsp), %xmm3, %xmm3
	vaesenc	-112(%rsp), %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenclast	-128(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI1_13(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_23(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_24(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	vmovdqu	%xmm1, (%rax)
	movl	$1, %eax
.LBB1_25:
	addq	$136, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndkv2_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndkv2_tigerlake_encrypt
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
	.byte	96
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
	.byte	97
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
	.byte	98
.LCPI2_4:
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
.LCPI2_13:
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
.LCPI2_15:
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
.LCPI2_16:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_17:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_22:
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
.LCPI2_23:
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
.LCPI2_5:
	.quad	4294967297
.LCPI2_12:
	.quad	274877907008
.LCPI2_14:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_6:
	.long	0x00000002
.LCPI2_7:
	.long	0x0c0f0e0d
.LCPI2_8:
	.long	0x00000004
.LCPI2_9:
	.long	0x00000008
.LCPI2_10:
	.long	0x00000010
.LCPI2_11:
	.long	0x00000020
	.section	.rodata,"a",@progbits
.LCPI2_24:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcmdndkv2_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2_tigerlake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2_tigerlake_decrypt,@function
haberdashery_aes256gcmdndkv2_tigerlake_decrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	144(%rsp), %r10
	xorl	%eax, %eax
	cmpq	176(%rsp), %r10
	jne	.LBB2_43
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB2_43
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB2_43
	cmpq	$24, %rdx
	jne	.LBB2_43
	cmpq	$16, 160(%rsp)
	jne	.LBB2_43
	movq	152(%rsp), %rdx
	vmovdqu	(%rsi), %xmm0
	movzbl	16(%rsi), %ebp
	movzbl	17(%rsi), %ebx
	movzbl	23(%rsi), %r11d
	vpextrb	$15, %xmm0, %r14d
	vmovdqa	(%rdi), %xmm1
	vmovdqa	16(%rdi), %xmm2
	vmovdqa	32(%rdi), %xmm3
	vmovdqa	48(%rdi), %xmm4
	vpternlogq	$120, .LCPI2_0(%rip), %xmm0, %xmm1
	vpxor	.LCPI2_1(%rip), %xmm1, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	64(%rdi), %xmm5
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa	80(%rdi), %xmm6
	vmovdqa	96(%rdi), %xmm7
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	112(%rdi), %xmm8
	vmovdqa	128(%rdi), %xmm9
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vmovdqa	144(%rdi), %xmm10
	vmovdqa	160(%rdi), %xmm11
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	176(%rdi), %xmm12
	vmovdqa	192(%rdi), %xmm13
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm14
	vmovdqa	224(%rdi), %xmm15
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenclast	%xmm15, %xmm0, %xmm0
	vpxorq	.LCPI2_2(%rip), %xmm1, %xmm16
	vaesenc	%xmm2, %xmm16, %xmm16
	vaesenc	%xmm3, %xmm16, %xmm16
	vaesenc	%xmm4, %xmm16, %xmm16
	vaesenc	%xmm5, %xmm16, %xmm16
	vaesenc	%xmm6, %xmm16, %xmm16
	vaesenc	%xmm7, %xmm16, %xmm16
	vaesenc	%xmm8, %xmm16, %xmm16
	vaesenc	%xmm9, %xmm16, %xmm16
	vaesenc	%xmm10, %xmm16, %xmm16
	vaesenc	%xmm11, %xmm16, %xmm16
	vaesenc	%xmm12, %xmm16, %xmm16
	vaesenc	%xmm13, %xmm16, %xmm16
	vaesenc	%xmm14, %xmm16, %xmm16
	vaesenclast	%xmm15, %xmm16, %xmm16
	vpxor	.LCPI2_3(%rip), %xmm1, %xmm1
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm14, %xmm1, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm1
	vpxorq	%xmm0, %xmm16, %xmm16
	vpxor	%xmm0, %xmm1, %xmm8
	vpslldq	$4, %xmm16, %xmm0
	vpslldq	$8, %xmm16, %xmm1
	vpslldq	$12, %xmm16, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI2_7(%rip), %xmm17
	vpshufb	%xmm17, %xmm8, %xmm1
	vpbroadcastq	.LCPI2_5(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm12
	vpternlogq	$150, %xmm2, %xmm16, %xmm12
	vaesenc	%xmm8, %xmm16, %xmm1
	vpslldq	$4, %xmm8, %xmm2
	vpslldq	$8, %xmm8, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm12, %xmm2
	vpxor	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm2, %xmm13
	vpternlogq	$150, %xmm4, %xmm8, %xmm13
	vbroadcastss	.LCPI2_6(%rip), %xmm3
	vbroadcastss	.LCPI2_7(%rip), %xmm2
	#APP
	vaesenc	%xmm12, %xmm1, %xmm1
	vpslldq	$4, %xmm12, %xmm4
	vpslldq	$8, %xmm12, %xmm6
	vpslldq	$12, %xmm12, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm13, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpternlogq	$150, %xmm12, %xmm7, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm3
	vpslldq	$8, %xmm13, %xmm4
	vpslldq	$12, %xmm13, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm5, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm6, %xmm15
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm3
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm6
	vpslldq	$12, %xmm14, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm15, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm14, %xmm7, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm3
	vpslldq	$8, %xmm15, %xmm4
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm11, %xmm9
	vaesenclast	%xmm5, %xmm9, %xmm9
	vpternlogq	$150, %xmm15, %xmm6, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_9(%rip), %xmm3
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm6
	vpslldq	$12, %xmm11, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm9, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm11, %xmm7, %xmm10
	#NO_APP
	vmovaps	%xmm9, -16(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm4
	vpslldq	$12, %xmm9, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm10, %xmm0
	vaesenclast	%xmm5, %xmm0, %xmm0
	vpternlogq	$150, %xmm9, %xmm6, %xmm0
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm3
	vmovaps	%xmm10, -32(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm6
	vpslldq	$12, %xmm10, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm0, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpternlogq	$150, %xmm10, %xmm7, %xmm9
	#NO_APP
	vmovaps	%xmm0, -48(%rsp)
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm3
	vpslldq	$8, %xmm0, %xmm4
	vpslldq	$12, %xmm0, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpshufd	$255, %xmm9, %xmm10
	vaesenclast	%xmm5, %xmm10, %xmm10
	vpternlogq	$150, %xmm0, %xmm6, %xmm10
	#NO_APP
	vbroadcastss	.LCPI2_11(%rip), %xmm3
	vmovaps	%xmm9, -128(%rsp)
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm4, %xmm6, %xmm7
	vpshufb	%xmm2, %xmm10, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpternlogq	$150, %xmm9, %xmm7, %xmm0
	#NO_APP
	vmovaps	%xmm0, %xmm7
	vmovaps	%xmm0, -80(%rsp)
	vmovapd	%xmm10, -64(%rsp)
	vpslldq	$4, %xmm10, %xmm2
	vpunpcklqdq	%xmm10, %xmm5, %xmm3
	vinsertps	$55, %xmm10, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vshufps	$255, %xmm0, %xmm0, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm9
	vpternlogq	$150, %xmm4, %xmm10, %xmm9
	vpslldq	$4, %xmm0, %xmm2
	vpunpcklqdq	%xmm0, %xmm5, %xmm3
	vinsertps	$55, %xmm0, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	vpshufb	%xmm17, %xmm9, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm7, %xmm2
	vaesenc	%xmm10, %xmm1, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	%xmm2, -112(%rsp)
	vmovdqa	%xmm9, -96(%rsp)
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI2_13(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpblendd	$12, %xmm1, %xmm5, %xmm1
	vpsllq	$63, %xmm1, %xmm3
	vpternlogq	$30, %xmm2, %xmm0, %xmm3
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm4
	vpternlogq	$150, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpbroadcastq	.LCPI2_14(%rip), %xmm31
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm2
	vpshufd	$78, %xmm0, %xmm6
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm6, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm26
	vpternlogq	$150, %xmm1, %xmm2, %xmm26
	vpclmulqdq	$0, %xmm26, %xmm26, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm26, %xmm26, %xmm2
	vpshufd	$78, %xmm0, %xmm27
	vpternlogq	$150, %xmm1, %xmm2, %xmm27
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm1
	vmovdqa64	%xmm6, %xmm20
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm2
	vpshufd	$78, %xmm0, %xmm9
	vpternlogq	$150, %xmm1, %xmm2, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm31, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm21
	vpternlogq	$150, %xmm1, %xmm2, %xmm21
	shll	$8, %ebp
	orl	%r14d, %ebp
	shll	$16, %ebx
	orl	%ebp, %ebx
	movzbl	18(%rsi), %edi
	shll	$24, %edi
	orl	%ebx, %edi
	vmovd	%edi, %xmm0
	vpinsrd	$1, 19(%rsi), %xmm0, %xmm0
	vpinsrd	$2, %r11d, %xmm0, %xmm0
	movl	$16777216, %esi
	vpinsrd	$3, %esi, %xmm0, %xmm23
	testq	%r8, %r8
	je	.LBB2_37
	cmpq	$96, %r8
	jb	.LBB2_7
	vmovdqa64	%xmm11, %xmm22
	vmovdqa	%xmm15, %xmm10
	vmovdqa	%xmm14, %xmm6
	vmovdqa64	%xmm13, %xmm19
	vmovdqa	%xmm12, %xmm7
	vmovdqa	.LCPI2_13(%rip), %xmm0
	movq	%r8, %rsi
	vmovdqa64	%xmm26, %xmm24
	vmovdqa64	%xmm27, %xmm25
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm11
	vmovdqu	64(%rcx), %xmm12
	vmovdqu	80(%rcx), %xmm13
	addq	$96, %rcx
	addq	$-96, %rsi
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufb	%xmm0, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm11, %xmm5
	vpshufb	%xmm0, %xmm12, %xmm11
	vpshufb	%xmm0, %xmm13, %xmm12
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm13
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm14
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm20, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm20, %xmm17
	vpclmulqdq	$16, %xmm11, %xmm20, %xmm18
	vpternlogq	$150, %xmm17, %xmm14, %xmm18
	vpclmulqdq	$17, %xmm11, %xmm20, %xmm11
	vpclmulqdq	$0, %xmm5, %xmm24, %xmm14
	vpternlogq	$150, %xmm13, %xmm15, %xmm14
	vpclmulqdq	$1, %xmm5, %xmm24, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm24, %xmm15
	vpternlogq	$150, %xmm13, %xmm18, %xmm15
	vpclmulqdq	$17, %xmm5, %xmm24, %xmm5
	vpternlogq	$150, %xmm12, %xmm11, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm12
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm13
	vpternlogq	$150, %xmm12, %xmm15, %xmm13
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm21, %xmm12
	vpternlogq	$150, %xmm11, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm2, %xmm21, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm21, %xmm14
	vpternlogq	$150, %xmm11, %xmm13, %xmm14
	vpclmulqdq	$17, %xmm2, %xmm21, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm25, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm25, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm25, %xmm11
	vpternlogq	$150, %xmm5, %xmm14, %xmm11
	vpclmulqdq	$17, %xmm1, %xmm25, %xmm1
	vpslldq	$8, %xmm11, %xmm5
	vpternlogq	$150, %xmm3, %xmm12, %xmm5
	vpsrldq	$8, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm31, %xmm5, %xmm11
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$16, %xmm31, %xmm5, %xmm11
	vpternlogq	$150, %xmm1, %xmm2, %xmm11
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm11, %xmm5
	cmpq	$95, %rsi
	ja	.LBB2_20
	vmovdqa	%xmm7, %xmm12
	vmovdqa64	%xmm19, %xmm13
	vmovdqa	%xmm6, %xmm14
	vmovdqa	%xmm10, %xmm15
	vmovdqa64	%xmm22, %xmm11
	vmovdqa	-128(%rsp), %xmm7
	cmpq	$16, %rsi
	jae	.LBB2_10
.LBB2_9:
	movq	%rsi, %rdi
	testq	%rdi, %rdi
	jne	.LBB2_22
	jmp	.LBB2_17
.LBB2_37:
	xorl	%r8d, %r8d
	testq	%r10, %r10
	vmovdqa	-128(%rsp), %xmm7
	jne	.LBB2_25
	jmp	.LBB2_38
.LBB2_7:
	movq	%r8, %rsi
	vmovdqa	-128(%rsp), %xmm7
	cmpq	$16, %rsi
	jb	.LBB2_9
.LBB2_10:
	leaq	-16(%rsi), %rdi
	testb	$16, %dil
	je	.LBB2_11
	cmpq	$16, %rdi
	jae	.LBB2_13
.LBB2_16:
	testq	%rdi, %rdi
	je	.LBB2_17
.LBB2_22:
	movl	$-1, %esi
	bzhil	%edi, %esi, %esi
	kmovd	%esi, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	shlq	$3, %r8
	testq	%r10, %r10
	je	.LBB2_44
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rsi
	incq	%rcx
	cmpq	%rcx, %rsi
	jb	.LBB2_43
	vpshufb	.LCPI2_13(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	jmp	.LBB2_25
.LBB2_11:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI2_13(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	movq	%rdi, %rsi
	cmpq	$16, %rdi
	jb	.LBB2_16
.LBB2_13:
	vmovdqa	%xmm11, %xmm7
	vmovdqa	.LCPI2_13(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_14:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm11
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm5, %xmm11
	vpxor	%xmm3, %xmm11, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm31, %xmm3, %xmm11
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm31, %xmm3, %xmm11
	vpternlogq	$150, %xmm1, %xmm5, %xmm11
	vpshufd	$78, %xmm3, %xmm1
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm0, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm4, %xmm2
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm3, %xmm2, %xmm5
	cmpq	$15, %rsi
	ja	.LBB2_14
	movq	%rsi, %rdi
	vmovdqa	%xmm7, %xmm11
	vmovdqa	-128(%rsp), %xmm7
	testq	%rdi, %rdi
	jne	.LBB2_22
.LBB2_17:
	shlq	$3, %r8
	testq	%r10, %r10
	je	.LBB2_38
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rsi
	incq	%rcx
	cmpq	%rcx, %rsi
	jb	.LBB2_43
.LBB2_25:
	movq	168(%rsp), %rax
	vpshufb	.LCPI2_15(%rip), %xmm23, %xmm0
	vpaddd	.LCPI2_16(%rip), %xmm0, %xmm17
	cmpq	$96, %r10
	jb	.LBB2_26
	vmovdqa64	%xmm23, 96(%rsp)
	vmovdqa64	.LCPI2_13(%rip), %xmm18
	movq	%r10, %rcx
	vmovaps	%xmm8, 32(%rsp)
	vmovdqa	%xmm12, 16(%rsp)
	vmovdqa	%xmm13, 80(%rsp)
	vmovdqa	%xmm14, 64(%rsp)
	vmovdqa	%xmm15, (%rsp)
	vmovdqa	%xmm11, 48(%rsp)
	vmovaps	-80(%rsp), %xmm22
	vmovdqa64	-96(%rsp), %xmm25
	vmovaps	-112(%rsp), %xmm23
	vmovdqa64	%xmm26, %xmm19
	vmovdqa64	%xmm27, %xmm24
	.p2align	4, 0x90
.LBB2_30:
	vmovdqu64	16(%r9), %xmm26
	vmovdqu64	32(%r9), %xmm27
	vmovdqu64	48(%r9), %xmm28
	vmovdqu64	64(%r9), %xmm29
	vmovdqu64	80(%r9), %xmm30
	vpshufb	%xmm18, %xmm17, %xmm0
	vpaddd	.LCPI2_16(%rip), %xmm17, %xmm1
	vpshufb	%xmm18, %xmm1, %xmm1
	vpaddd	.LCPI2_17(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm3
	vpaddd	.LCPI2_18(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm11
	vpaddd	.LCPI2_19(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm12
	vpaddd	.LCPI2_20(%rip), %xmm17, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm15
	vpshufb	%xmm18, %xmm30, %xmm8
	vpxorq	%xmm0, %xmm16, %xmm2
	vpxorq	%xmm1, %xmm16, %xmm14
	vpxorq	%xmm3, %xmm16, %xmm3
	vpxorq	%xmm11, %xmm16, %xmm13
	vpxorq	%xmm12, %xmm16, %xmm1
	vpxorq	%xmm15, %xmm16, %xmm11
	vmovaps	32(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm15, %xmm15, %xmm15
	vxorps	%xmm0, %xmm0, %xmm0
	vpxor	%xmm12, %xmm12, %xmm12
	vmovaps	16(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm7
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm7
	vpxor	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm29, %xmm7
	vmovaps	80(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovaps	64(%rsp), %xmm10
	vmovdqa64	%xmm20, %xmm6
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm28, %xmm7
	vmovaps	(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm9, %xmm20
	vmovaps	48(%rsp), %xmm9
	vmovdqa64	%xmm19, %xmm10
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	#NO_APP
	vmovdqa64	%xmm20, %xmm9
	vpshufb	%xmm18, %xmm27, %xmm7
	vmovaps	-16(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovaps	-32(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	#NO_APP
	vpshufb	%xmm18, %xmm26, %xmm7
	vmovaps	-48(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm6, %xmm20
	vmovdqa64	%xmm21, %xmm6
	vmovaps	-128(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm7, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm6, %xmm7, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm6, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	#NO_APP
	vmovdqu	(%r9), %xmm7
	vpshufb	%xmm18, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vmovaps	-64(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovaps	%xmm22, %xmm10
	vmovdqa64	%xmm24, %xmm6
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm8
	vpxor	%xmm8, %xmm15, %xmm15
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpunpcklqdq	%xmm0, %xmm8, %xmm5
	vpxor	%xmm5, %xmm15, %xmm5
	vpunpckhqdq	%xmm8, %xmm0, %xmm0
	vmovdqa64	%xmm25, %xmm8
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm11, %xmm11
	#NO_APP
	vmovaps	%xmm23, %xmm8
	#APP
	vaesenclast	%xmm8, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm14, %xmm14
	vaesenclast	%xmm8, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm13, %xmm13
	vaesenclast	%xmm8, %xmm1, %xmm1
	vaesenclast	%xmm8, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm7, %xmm2, %xmm2
	vpxorq	%xmm26, %xmm14, %xmm7
	vpxorq	%xmm27, %xmm3, %xmm3
	vpxorq	%xmm28, %xmm13, %xmm8
	vpxorq	%xmm29, %xmm1, %xmm1
	vpxorq	%xmm30, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm31, %xmm5, %xmm13
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm13, %xmm13
	vpxor	%xmm0, %xmm12, %xmm5
	vmovdqu	%xmm2, (%rax)
	vmovdqu	%xmm7, 16(%rax)
	vmovdqu	%xmm3, 32(%rax)
	vmovdqu	%xmm8, 48(%rax)
	vmovdqu	%xmm1, 64(%rax)
	vmovdqu	%xmm11, 80(%rax)
	vpclmulqdq	$16, %xmm31, %xmm13, %xmm0
	vpshufd	$78, %xmm13, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI2_21(%rip), %xmm17, %xmm17
	cmpq	$95, %rcx
	ja	.LBB2_30
	vmovapd	32(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm12
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	(%rsp), %xmm15
	vmovdqa	48(%rsp), %xmm11
	vmovdqa	-128(%rsp), %xmm7
	vmovdqa64	96(%rsp), %xmm23
	jmp	.LBB2_27
.LBB2_26:
	movq	%r10, %rcx
.LBB2_27:
	cmpq	$16, %rcx
	vmovdqa	-16(%rsp), %xmm9
	vmovdqa	-32(%rsp), %xmm10
	vmovdqa	-48(%rsp), %xmm6
	jb	.LBB2_28
	vmovdqa	.LCPI2_13(%rip), %xmm0
	vpmovsxbq	.LCPI2_24(%rip), %xmm1
	vmovdqa64	-64(%rsp), %xmm18
	vmovdqa64	-80(%rsp), %xmm19
	vmovdqa64	-96(%rsp), %xmm20
	vmovdqa64	-112(%rsp), %xmm21
	.p2align	4, 0x90
.LBB2_33:
	leaq	16(%rax), %rsi
	addq	$-16, %rcx
	vmovdqu	(%r9), %xmm2
	addq	$16, %r9
	vpshufb	%xmm0, %xmm2, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm4, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm31, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm31, %xmm5, %xmm7
	vpxor	%xmm3, %xmm7, %xmm3
	vmovdqa	-128(%rsp), %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm6, %xmm3, %xmm5
	vmovdqa	-48(%rsp), %xmm6
	vpshufb	%xmm0, %xmm17, %xmm3
	vpaddd	%xmm1, %xmm17, %xmm17
	vpxorq	%xmm3, %xmm16, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm18, %xmm3, %xmm3
	vaesenc	%xmm19, %xmm3, %xmm3
	vaesenc	%xmm20, %xmm3, %xmm3
	vaesenclast	%xmm21, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqu	%xmm2, (%rax)
	movq	%rsi, %rax
	cmpq	$15, %rcx
	ja	.LBB2_33
	testq	%rcx, %rcx
	je	.LBB2_39
.LBB2_35:
	movl	$-1, %eax
	bzhil	%ecx, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%r9), %xmm1 {%k1} {z}
	vpshufb	.LCPI2_13(%rip), %xmm17, %xmm0
	vpxorq	%xmm0, %xmm16, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	-64(%rsp), %xmm0, %xmm0
	vaesenc	-80(%rsp), %xmm0, %xmm0
	vaesenc	-96(%rsp), %xmm0, %xmm0
	vaesenclast	-112(%rsp), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
	vmovdqu8	%xmm2, (%rsi) {%k1}
	vmovdqu	(%rdx), %xmm0
	testq	%r10, %r10
	je	.LBB2_36
	vpshufb	.LCPI2_13(%rip), %xmm1, %xmm1
	jmp	.LBB2_41
.LBB2_28:
	movq	%rax, %rsi
	testq	%rcx, %rcx
	jne	.LBB2_35
.LBB2_39:
	vmovdqu	(%rdx), %xmm0
	jmp	.LBB2_42
.LBB2_44:
	vpshufb	.LCPI2_13(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm31, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
.LBB2_38:
	vmovdqu	(%rdx), %xmm0
	vmovdqa	-16(%rsp), %xmm9
	vmovdqa	-32(%rsp), %xmm10
	vmovdqa	-48(%rsp), %xmm6
	jmp	.LBB2_42
.LBB2_36:
	vpshufb	.LCPI2_13(%rip), %xmm2, %xmm1
.LBB2_41:
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm31, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm31, %xmm2, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufd	$78, %xmm2, %xmm5
	vpternlogq	$150, %xmm3, %xmm1, %xmm5
.LBB2_42:
	shlq	$3, %r10
	vmovq	%r8, %xmm1
	vmovq	%r10, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm31, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm31, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpxorq	%xmm23, %xmm16, %xmm4
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	-64(%rsp), %xmm4, %xmm4
	vaesenc	-80(%rsp), %xmm4, %xmm4
	vaesenc	-96(%rsp), %xmm4, %xmm4
	vaesenclast	-112(%rsp), %xmm4, %xmm4
	vpshufb	.LCPI2_22(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_13(%rip), %xmm1, %xmm1
	vpshufb	.LCPI2_23(%rip), %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vpternlogq	$150, %xmm4, %xmm0, %xmm3
	xorl	%eax, %eax
	vptest	%xmm3, %xmm3
	sete	%al
.LBB2_43:
	addq	$112, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndkv2_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndkv2_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndkv2_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmdndkv2_tigerlake_is_supported,@function
haberdashery_aes256gcmdndkv2_tigerlake_is_supported:
	.cfi_startproc
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %edi
	movl	%edx, %r8d
	notl	%r8d
	notl	%edi
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	andl	$1993871875, %edi
	andl	$125829120, %r8d
	orl	%edi, %r8d
	jne	.LBB3_3
	notl	%r9d
	andl	$-240189143, %r9d
	notl	%ecx
	andl	$415260490, %ecx
	orl	%r9d, %ecx
	jne	.LBB3_3
	shrl	$8, %edx
	andl	$1, %edx
	movl	%edx, %esi
.LBB3_3:
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndkv2_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndkv2_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

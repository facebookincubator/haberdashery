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
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_init
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_init,@function
haberdashery_aes256gcmsiv_tigerlake_init:
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
	.size	haberdashery_aes256gcmsiv_tigerlake_init, .Lfunc_end0-haberdashery_aes256gcmsiv_tigerlake_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_1:
	.quad	2
	.quad	0
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
.LCPI1_16:
	.quad	-1
	.quad	9223372036854775807
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
	.byte	128
.LCPI1_25:
	.long	16
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_6:
	.quad	4294967297
.LCPI1_7:
	.quad	8589934594
.LCPI1_8:
	.quad	17179869188
.LCPI1_9:
	.quad	34359738376
.LCPI1_10:
	.quad	68719476752
.LCPI1_11:
	.quad	137438953504
.LCPI1_12:
	.quad	274877907008
.LCPI1_13:
	.quad	-4467570830351532032
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_14:
	.quad	0
	.quad	4
	.quad	0
	.quad	6
.LCPI1_15:
	.quad	1
	.quad	5
	.quad	1
	.quad	7
.LCPI1_18:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI1_23:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI1_24:
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_26:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
.LCPI1_27:
	.byte	0
	.byte	4
	.byte	0
	.byte	6
.LCPI1_28:
	.byte	1
	.byte	5
	.byte	1
	.byte	7
.LCPI1_29:
	.byte	2
	.byte	0
	.byte	3
	.byte	0
.LCPI1_30:
	.byte	4
	.byte	0
	.byte	5
	.byte	0
.LCPI1_31:
	.byte	6
	.byte	0
	.byte	7
	.byte	0
.LCPI1_32:
	.byte	8
	.byte	0
	.byte	9
	.byte	0
.LCPI1_33:
	.byte	10
	.byte	0
	.byte	11
	.byte	0
.LCPI1_34:
	.byte	12
	.byte	0
	.byte	13
	.byte	0
.LCPI1_35:
	.byte	14
	.byte	0
	.byte	15
	.byte	0
	.section	.rodata,"a",@progbits
.LCPI1_36:
	.byte	16
	.byte	0
.LCPI1_37:
	.byte	1
	.byte	0
.LCPI1_38:
	.byte	4
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_encrypt,@function
haberdashery_aes256gcmsiv_tigerlake_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$464, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -16
	movq	480(%rsp), %r10
	xorl	%eax, %eax
	cmpq	496(%rsp), %r10
	jne	.LBB1_50
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r11b
	cmpq	%rax, %r10
	setb	%bl
	andb	%r11b, %bl
	cmpq	$16, 512(%rsp)
	sete	%r11b
	cmpq	$12, %rdx
	sete	%al
	andb	%r11b, %al
	andb	%bl, %al
	cmpb	$1, %al
	jne	.LBB1_49
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI1_0(%rip), %xmm2, %xmm3
	vxorps	.LCPI1_1(%rip), %xmm2, %xmm1
	vxorps	.LCPI1_2(%rip), %xmm2, %xmm4
	vxorps	.LCPI1_3(%rip), %xmm2, %xmm0
	vxorps	.LCPI1_4(%rip), %xmm2, %xmm5
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	vmovaps	96(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	vmovaps	128(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	vmovaps	160(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	vmovaps	192(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	vmovaps	224(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenclast	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm7, %xmm4, %xmm4
	vaesenclast	%xmm7, %xmm0, %xmm0
	vaesenclast	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm2, %xmm14
	vpunpcklqdq	%xmm4, %xmm1, %xmm7
	vpunpcklqdq	%xmm5, %xmm0, %xmm12
	vpslldq	$4, %xmm7, %xmm2
	vxorpd	%xmm13, %xmm13, %xmm13
	vpunpcklqdq	%xmm1, %xmm13, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vpbroadcastd	.LCPI1_26(%rip), %xmm5
	vpshufb	%xmm5, %xmm12, %xmm2
	vpbroadcastq	.LCPI1_6(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm8
	vpternlogq	$150, %xmm1, %xmm7, %xmm8
	vpslldq	$4, %xmm12, %xmm1
	vpunpcklqdq	%xmm0, %xmm13, %xmm2
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpshufd	$255, %xmm8, %xmm1
	vaesenclast	%xmm13, %xmm1, %xmm9
	vpternlogq	$150, %xmm0, %xmm12, %xmm9
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_7(%rip), %xmm0
	vpshufb	%xmm5, %xmm9, %xmm1
	vaesenclast	%xmm0, %xmm1, %xmm10
	vpternlogq	$150, %xmm2, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpslldq	$12, %xmm9, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm10, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm11
	vpternlogq	$150, %xmm2, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpslldq	$12, %xmm10, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm5, %xmm11, %xmm0
	vpbroadcastq	.LCPI1_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm10, %xmm3
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm3, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm27
	vpternlogq	$150, %xmm2, %xmm11, %xmm27
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm5, %xmm27, %xmm0
	vpbroadcastq	.LCPI1_9(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm28
	vmovups	%ymm3, 144(%rsp)
	vpternlogq	$150, %xmm2, %xmm3, %xmm28
	vpslldq	$4, %xmm27, %xmm0
	vpslldq	$8, %xmm27, %xmm1
	vpslldq	$12, %xmm27, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm28, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm27, %xmm3
	vpslldq	$4, %xmm28, %xmm0
	vpslldq	$8, %xmm28, %xmm1
	vpslldq	$12, %xmm28, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_10(%rip), %xmm0
	vpshufb	%xmm5, %xmm3, %xmm1
	vaesenclast	%xmm0, %xmm1, %xmm30
	vpternlogq	$150, %xmm2, %xmm28, %xmm30
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm30, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm31
	vmovups	%ymm3, 368(%rsp)
	vpternlogq	$150, %xmm2, %xmm3, %xmm31
	vpslldq	$4, %xmm30, %xmm0
	vpslldq	$8, %xmm30, %xmm1
	vpslldq	$12, %xmm30, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm5, %xmm31, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm6
	vpternlogq	$150, %xmm2, %xmm30, %xmm6
	vpslldq	$4, %xmm31, %xmm25
	vpslldq	$8, %xmm31, %xmm0
	vmovapd	%xmm0, -80(%rsp)
	vpslldq	$12, %xmm31, %xmm26
	vpshufd	$255, %xmm6, %xmm0
	vmovdqa	%xmm0, -112(%rsp)
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %ymm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm3
	vpshufd	$78, %xmm0, %xmm16
	vpternlogq	$150, %xmm2, %xmm3, %xmm16
	vpclmulqdq	$0, %xmm16, %xmm16, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$17, %xmm16, %xmm16, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm3, %xmm0
	vinserti32x4	$1, %xmm0, %ymm0, %ymm17
	vinserti32x4	$1, %xmm0, %ymm16, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm17, %ymm2
	vpunpckhqdq	%ymm0, %ymm17, %ymm3
	vpunpcklqdq	%ymm0, %ymm17, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm0, %ymm17, %ymm0
	vpternlogq	$150, %ymm2, %ymm0, %ymm3
	vpslldq	$8, %ymm3, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm2, %ymm19
	vpternlogq	$150, %ymm3, %ymm0, %ymm19
	vextracti32x4	$1, %ymm19, %xmm18
	vpclmulqdq	$0, %ymm19, %ymm17, %ymm0
	vpunpckhqdq	%ymm19, %ymm17, %ymm2
	vpunpcklqdq	%ymm19, %ymm17, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm19, %ymm17, %ymm3
	vpternlogq	$150, %ymm0, %ymm3, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm0, %ymm4
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm4, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm0, %ymm4
	vpsrldq	$8, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpshufd	$78, %ymm0, %ymm20
	vpternlogq	$150, %ymm2, %ymm3, %ymm20
	vextracti32x4	$1, %ymm20, %xmm1
	vpunpcklqdq	%ymm20, %ymm17, %ymm0
	vpunpckhqdq	%ymm20, %ymm17, %ymm2
	vpxor	%ymm0, %ymm2, %ymm0
	vpclmulqdq	$0, %ymm20, %ymm17, %ymm2
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm20, %ymm17, %ymm3
	vpternlogq	$150, %ymm2, %ymm3, %ymm0
	vpslldq	$8, %ymm0, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpsrldq	$8, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vpshufd	$78, %ymm2, %ymm21
	vpternlogq	$150, %ymm0, %ymm3, %ymm21
	vextracti32x4	$1, %ymm21, %xmm4
	vpxord	%xmm29, %xmm29, %xmm29
	vpermq	$68, %ymm19, %ymm22
	vpermq	$68, %ymm20, %ymm23
	vpermq	$68, %ymm21, %ymm24
	cmpq	$256, %r8
	vmovups	%ymm7, 304(%rsp)
	vmovups	%ymm8, 272(%rsp)
	vmovups	%ymm9, 240(%rsp)
	vmovups	%ymm10, 208(%rsp)
	vmovups	%ymm11, 176(%rsp)
	vmovups	%ymm27, 112(%rsp)
	vmovups	%ymm28, 80(%rsp)
	vmovups	%ymm30, 48(%rsp)
	vmovups	%ymm31, 16(%rsp)
	vmovdqu	%ymm6, -48(%rsp)
	vmovdqu	%ymm1, 432(%rsp)
	vmovdqu	%ymm4, 400(%rsp)
	jb	.LBB1_6
	vmovapd	%xmm25, -128(%rsp)
	vinserti32x4	$1, %xmm16, %ymm16, %ymm0
	vmovdqu64	%ymm18, -16(%rsp)
	vinserti32x4	$1, %xmm18, %ymm18, %ymm2
	vinserti128	$1, %xmm1, %ymm1, %ymm3
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vpmovsxbq	.LCPI1_27(%rip), %ymm5
	vpmovsxbq	.LCPI1_28(%rip), %ymm25
	movq	%r8, %rdx
	.p2align	4
.LBB1_4:
	vmovdqu64	32(%rcx), %ymm27
	vmovdqu64	64(%rcx), %ymm28
	vmovdqu64	96(%rcx), %ymm18
	vmovdqu64	128(%rcx), %ymm30
	vmovdqu64	160(%rcx), %ymm31
	vmovdqu	192(%rcx), %ymm1
	vmovdqu	224(%rcx), %ymm6
	vpxorq	(%rcx), %ymm29, %ymm29
	addq	$256, %rcx
	addq	$-256, %rdx
	vpunpcklqdq	%ymm6, %ymm0, %ymm7
	vpunpckhqdq	%ymm6, %ymm0, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm6, %ymm0, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm6, %ymm0, %ymm6
	vpunpcklqdq	%ymm1, %ymm17, %ymm9
	vpunpckhqdq	%ymm1, %ymm17, %ymm10
	vpxor	%ymm9, %ymm10, %ymm9
	vpclmulqdq	$0, %ymm1, %ymm17, %ymm10
	vpxor	%ymm8, %ymm10, %ymm8
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpxor	%ymm7, %ymm9, %ymm7
	vpclmulqdq	$17, %ymm1, %ymm17, %ymm1
	vpxor	%ymm6, %ymm1, %ymm1
	vmovdqa64	%ymm19, %ymm6
	vpermt2q	%ymm31, %ymm5, %ymm6
	vmovdqa64	%ymm19, %ymm9
	vpermt2q	%ymm31, %ymm25, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpclmulqdq	$0, %ymm31, %ymm22, %ymm9
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm31, %ymm22, %ymm10
	vpunpcklqdq	%ymm30, %ymm2, %ymm31
	vpunpckhqdq	%ymm30, %ymm2, %ymm11
	vpxorq	%ymm31, %ymm11, %ymm11
	vpclmulqdq	$0, %ymm30, %ymm2, %ymm31
	vpternlogq	$150, %ymm9, %ymm8, %ymm31
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm8
	vpternlogq	$150, %ymm6, %ymm7, %ymm8
	vpclmulqdq	$17, %ymm30, %ymm2, %ymm6
	vpternlogq	$150, %ymm10, %ymm1, %ymm6
	vmovdqa64	%ymm20, %ymm1
	vpermt2q	%ymm18, %ymm5, %ymm1
	vmovdqa64	%ymm20, %ymm7
	vpermt2q	%ymm18, %ymm25, %ymm7
	vpxor	%ymm1, %ymm7, %ymm1
	vpclmulqdq	$0, %ymm18, %ymm23, %ymm7
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm18, %ymm23, %ymm9
	vpunpcklqdq	%ymm28, %ymm3, %ymm10
	vpunpckhqdq	%ymm28, %ymm3, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm28, %ymm3, %ymm11
	vpternlogq	$150, %ymm7, %ymm31, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm7
	vpternlogq	$150, %ymm1, %ymm8, %ymm7
	vpclmulqdq	$17, %ymm28, %ymm3, %ymm1
	vpternlogq	$150, %ymm9, %ymm6, %ymm1
	vmovdqa64	%ymm21, %ymm6
	vpermt2q	%ymm27, %ymm5, %ymm6
	vmovdqa64	%ymm21, %ymm8
	vpermt2q	%ymm27, %ymm25, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpclmulqdq	$0, %ymm27, %ymm24, %ymm8
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm27, %ymm24, %ymm9
	vpunpcklqdq	%ymm29, %ymm4, %ymm10
	vpunpckhqdq	%ymm29, %ymm4, %ymm18
	vpxorq	%ymm10, %ymm18, %ymm10
	vpclmulqdq	$0, %ymm29, %ymm4, %ymm18
	vpternlogq	$150, %ymm8, %ymm11, %ymm18
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm8
	vpternlogq	$150, %ymm6, %ymm7, %ymm8
	vpclmulqdq	$17, %ymm29, %ymm4, %ymm6
	vpternlogq	$150, %ymm9, %ymm1, %ymm6
	vpternlogq	$150, %ymm18, %ymm6, %ymm8
	vpslldq	$8, %ymm8, %ymm1
	vpxorq	%ymm1, %ymm18, %ymm1
	vpsrldq	$8, %ymm8, %ymm7
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm8
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm8, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpshufd	$78, %ymm1, %ymm29
	vpternlogq	$150, %ymm7, %ymm6, %ymm29
	cmpq	$255, %rdx
	ja	.LBB1_4
	vmovupd	304(%rsp), %ymm7
	vmovupd	272(%rsp), %ymm8
	vmovupd	240(%rsp), %ymm9
	vmovupd	208(%rsp), %ymm10
	vmovupd	176(%rsp), %ymm11
	vmovupd	112(%rsp), %ymm27
	vmovupd	80(%rsp), %ymm28
	vmovupd	48(%rsp), %ymm30
	vmovupd	16(%rsp), %ymm31
	vmovdqu	-48(%rsp), %ymm6
	vpbroadcastd	.LCPI1_26(%rip), %xmm5
	vmovdqu64	-16(%rsp), %ymm18
	vmovapd	-128(%rsp), %xmm25
	jmp	.LBB1_7
.LBB1_6:
	movq	%r8, %rdx
.LBB1_7:
	vpternlogq	$150, -80(%rsp), %xmm25, %xmm26
	vmovdqa	-112(%rsp), %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm25
	cmpq	$32, %rdx
	jb	.LBB1_14
	vinserti32x4	$1, %xmm16, %ymm16, %ymm0
	leaq	-32(%rdx), %rdi
	testb	$32, %dil
	jne	.LBB1_9
	vpxorq	(%rcx), %ymm29, %ymm1
	addq	$32, %rcx
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm1, %ymm0, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm1, %ymm0, %ymm1
	vpternlogq	$150, %ymm3, %ymm1, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm2
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm2, %ymm1, %ymm29
	movq	%rdi, %rdx
	cmpq	$32, %rdi
	jb	.LBB1_10
	jmp	.LBB1_13
.LBB1_9:
	cmpq	$32, %rdi
	jae	.LBB1_13
.LBB1_10:
	vpternlogq	$150, %xmm26, %xmm31, %xmm25
	testq	%rdi, %rdi
	jne	.LBB1_15
	jmp	.LBB1_18
	.p2align	4
.LBB1_13:
	vpxorq	(%rcx), %ymm29, %ymm1
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm1, %ymm0, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm1, %ymm0, %ymm1
	vpternlogq	$150, %ymm3, %ymm1, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpternlogq	$150, %ymm2, %ymm4, %ymm3
	addq	$-64, %rdx
	vpternlogq	$150, 32(%rcx), %ymm1, %ymm3
	addq	$64, %rcx
	vpunpcklqdq	%ymm3, %ymm0, %ymm1
	vpunpckhqdq	%ymm3, %ymm0, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	vpclmulqdq	$0, %ymm3, %ymm0, %ymm2
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm3, %ymm0, %ymm3
	vpternlogq	$150, %ymm2, %ymm3, %ymm1
	vpslldq	$8, %ymm1, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpsrldq	$8, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm2, %ymm4
	vpxor	%ymm1, %ymm4, %ymm1
	vpshufd	$78, %ymm2, %ymm29
	vpternlogq	$150, %ymm1, %ymm3, %ymm29
	cmpq	$31, %rdx
	ja	.LBB1_13
.LBB1_14:
	movq	%rdx, %rdi
	vpternlogq	$150, %xmm26, %xmm31, %xmm25
	testq	%rdi, %rdi
	je	.LBB1_18
.LBB1_15:
	movl	$-1, %edx
	bzhil	%edi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %ymm0 {%k1} {z}
	vpxorq	%ymm0, %ymm29, %ymm0
	vmovdqa64	%xmm16, %xmm1
	cmpq	$17, %rdi
	jae	.LBB1_17
	vmovdqa	%xmm14, %xmm1
.LBB1_17:
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vpunpcklqdq	%ymm0, %ymm1, %ymm2
	vpunpckhqdq	%ymm0, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpternlogq	$150, %ymm3, %ymm0, %ymm2
	vpslldq	$8, %ymm2, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpshufd	$78, %ymm1, %ymm29
	vpternlogq	$150, %ymm2, %ymm0, %ymm29
.LBB1_18:
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm26
	vpshufb	%xmm5, %xmm25, %xmm2
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	vmovq	%r10, %xmm4
	vmovq	%r8, %xmm5
	cmpq	$256, %r10
	vmovups	%ymm12, 336(%rsp)
	vmovdqu64	%ymm25, -80(%rsp)
	jb	.LBB1_22
	vmovapd	%xmm1, -128(%rsp)
	vmovapd	%xmm0, -16(%rsp)
	vmovdqa	%xmm14, -112(%rsp)
	vinserti32x4	$1, %xmm16, %ymm16, %ymm13
	vinserti32x4	$1, %xmm18, %ymm18, %ymm18
	vmovdqu	432(%rsp), %ymm0
	vinserti32x4	$1, %xmm0, %ymm0, %ymm25
	vmovdqu	400(%rsp), %ymm0
	vinserti32x4	$1, %xmm0, %ymm0, %ymm27
	vpmovsxbq	.LCPI1_27(%rip), %ymm28
	vpmovsxbq	.LCPI1_28(%rip), %ymm30
	movq	%r9, %rcx
	movq	%r10, %rdx
	.p2align	4
.LBB1_20:
	vmovdqu64	32(%rcx), %ymm31
	vmovdqu	64(%rcx), %ymm6
	vmovdqu	96(%rcx), %ymm7
	vmovdqu	128(%rcx), %ymm8
	vmovdqu	160(%rcx), %ymm9
	vmovdqu	192(%rcx), %ymm10
	vmovdqu	224(%rcx), %ymm11
	vpxorq	(%rcx), %ymm29, %ymm29
	addq	$256, %rcx
	addq	$-256, %rdx
	vpunpcklqdq	%ymm11, %ymm13, %ymm3
	vpunpckhqdq	%ymm11, %ymm13, %ymm12
	vpxor	%ymm3, %ymm12, %ymm3
	vpclmulqdq	$0, %ymm11, %ymm13, %ymm12
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm11, %ymm13, %ymm11
	vpunpcklqdq	%ymm10, %ymm17, %ymm14
	vpunpckhqdq	%ymm10, %ymm17, %ymm0
	vpxor	%ymm0, %ymm14, %ymm0
	vpclmulqdq	$0, %ymm10, %ymm17, %ymm14
	vpxor	%ymm12, %ymm14, %ymm12
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm10, %ymm17, %ymm3
	vpxor	%ymm3, %ymm11, %ymm3
	vmovdqa64	%ymm19, %ymm10
	vpermt2q	%ymm9, %ymm28, %ymm10
	vmovdqa64	%ymm19, %ymm11
	vpermt2q	%ymm9, %ymm30, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm9, %ymm22, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm10
	vpclmulqdq	$17, %ymm9, %ymm22, %ymm9
	vpunpcklqdq	%ymm8, %ymm18, %ymm14
	vpunpckhqdq	%ymm8, %ymm18, %ymm1
	vpxor	%ymm1, %ymm14, %ymm1
	vpclmulqdq	$0, %ymm8, %ymm18, %ymm14
	vpternlogq	$150, %ymm11, %ymm12, %ymm14
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpternlogq	$150, %ymm10, %ymm0, %ymm1
	vpclmulqdq	$17, %ymm8, %ymm18, %ymm0
	vpternlogq	$150, %ymm9, %ymm3, %ymm0
	vmovdqa64	%ymm20, %ymm3
	vpermt2q	%ymm7, %ymm28, %ymm3
	vmovdqa64	%ymm20, %ymm8
	vpermt2q	%ymm7, %ymm30, %ymm8
	vpxor	%ymm3, %ymm8, %ymm3
	vpclmulqdq	$0, %ymm7, %ymm23, %ymm8
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm7, %ymm23, %ymm7
	vpunpcklqdq	%ymm6, %ymm25, %ymm9
	vpunpckhqdq	%ymm6, %ymm25, %ymm10
	vpxor	%ymm9, %ymm10, %ymm9
	vpclmulqdq	$0, %ymm6, %ymm25, %ymm10
	vpternlogq	$150, %ymm8, %ymm14, %ymm10
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm8
	vpternlogq	$150, %ymm3, %ymm1, %ymm8
	vpclmulqdq	$17, %ymm6, %ymm25, %ymm1
	vpternlogq	$150, %ymm7, %ymm0, %ymm1
	vmovdqa64	%ymm21, %ymm0
	vpermt2q	%ymm31, %ymm28, %ymm0
	vmovdqa64	%ymm21, %ymm3
	vpermt2q	%ymm31, %ymm30, %ymm3
	vpxor	%ymm0, %ymm3, %ymm0
	vpclmulqdq	$0, %ymm31, %ymm24, %ymm3
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm31, %ymm24, %ymm6
	vpunpcklqdq	%ymm29, %ymm27, %ymm7
	vpunpckhqdq	%ymm29, %ymm27, %ymm9
	vpxor	%ymm7, %ymm9, %ymm7
	vpclmulqdq	$0, %ymm29, %ymm27, %ymm9
	vpternlogq	$150, %ymm3, %ymm10, %ymm9
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm3
	vpternlogq	$150, %ymm0, %ymm8, %ymm3
	vpclmulqdq	$17, %ymm29, %ymm27, %ymm0
	vpternlogq	$150, %ymm6, %ymm1, %ymm0
	vpternlogq	$150, %ymm9, %ymm0, %ymm3
	vpslldq	$8, %ymm3, %ymm1
	vpxor	%ymm1, %ymm9, %ymm1
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm6
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm6, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vpshufd	$78, %ymm1, %ymm29
	vpternlogq	$150, %ymm3, %ymm0, %ymm29
	cmpq	$255, %rdx
	ja	.LBB1_20
	vmovups	336(%rsp), %ymm12
	vmovupd	304(%rsp), %ymm7
	vmovupd	272(%rsp), %ymm8
	vmovupd	240(%rsp), %ymm9
	vmovupd	208(%rsp), %ymm10
	vmovupd	176(%rsp), %ymm11
	vmovupd	112(%rsp), %ymm27
	vmovupd	80(%rsp), %ymm28
	vmovupd	48(%rsp), %ymm30
	vmovupd	16(%rsp), %ymm31
	vmovupd	-48(%rsp), %ymm6
	vmovdqu64	-80(%rsp), %ymm25
	vmovdqa	-112(%rsp), %xmm14
	vmovapd	-16(%rsp), %xmm0
	vmovapd	-128(%rsp), %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	jmp	.LBB1_23
.LBB1_22:
	movq	%r10, %rdx
	movq	%r9, %rcx
.LBB1_23:
	vmovd	8(%rsi), %xmm13
	vmovq	(%rsi), %xmm17
	vpternlogq	$150, %xmm1, %xmm0, %xmm26
	vaesenclast	%xmm3, %xmm2, %xmm24
	vpunpcklqdq	%xmm4, %xmm5, %xmm0
	cmpq	$32, %rdx
	jb	.LBB1_29
	vinserti32x4	$1, %xmm16, %ymm16, %ymm1
	leaq	-32(%rdx), %rsi
	testb	$32, %sil
	jne	.LBB1_26
	vpxorq	(%rcx), %ymm29, %ymm2
	addq	$32, %rcx
	vpunpcklqdq	%ymm2, %ymm1, %ymm3
	vpunpckhqdq	%ymm2, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm1, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm2, %ymm1, %ymm2
	vpternlogq	$150, %ymm4, %ymm2, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vpshufd	$78, %ymm4, %ymm29
	vpternlogq	$150, %ymm3, %ymm2, %ymm29
	movq	%rsi, %rdx
.LBB1_26:
	cmpq	$32, %rsi
	jb	.LBB1_30
	.p2align	4
.LBB1_27:
	vpxorq	(%rcx), %ymm29, %ymm2
	vpunpcklqdq	%ymm2, %ymm1, %ymm3
	vpunpckhqdq	%ymm2, %ymm1, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm1, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm2, %ymm1, %ymm2
	vpternlogq	$150, %ymm4, %ymm2, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$16, %ymm15, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpternlogq	$150, %ymm3, %ymm5, %ymm4
	addq	$-64, %rdx
	vpternlogq	$150, 32(%rcx), %ymm2, %ymm4
	addq	$64, %rcx
	vpunpcklqdq	%ymm4, %ymm1, %ymm2
	vpunpckhqdq	%ymm4, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm4, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm4, %ymm1, %ymm4
	vpternlogq	$150, %ymm3, %ymm4, %ymm2
	vpslldq	$8, %ymm2, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm2, %ymm4, %ymm29
	cmpq	$31, %rdx
	ja	.LBB1_27
.LBB1_29:
	movq	%rdx, %rsi
.LBB1_30:
	movq	504(%rsp), %rdx
	vpunpcklqdq	%xmm13, %xmm17, %xmm1
	vpternlogq	$150, %xmm26, %xmm6, %xmm24
	vpsllq	$3, %xmm0, %xmm0
	testq	%rsi, %rsi
	je	.LBB1_34
	movl	$-1, %edi
	bzhil	%esi, %edi, %edi
	kmovd	%edi, %k1
	vmovdqu8	(%rcx), %ymm2 {%k1} {z}
	vpxorq	%ymm2, %ymm29, %ymm2
	cmpq	$17, %rsi
	vmovdqu64	144(%rsp), %ymm26
	jae	.LBB1_33
	vmovdqa64	%xmm14, %xmm16
.LBB1_33:
	vinserti32x4	$1, %xmm16, %ymm16, %ymm3
	vpunpcklqdq	%ymm2, %ymm3, %ymm4
	vpunpckhqdq	%ymm2, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm2, %ymm3, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm3, %ymm2
	vpternlogq	$150, %ymm5, %ymm2, %ymm4
	vpslldq	$8, %ymm4, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm4, %ymm2, %ymm29
	jmp	.LBB1_35
.LBB1_34:
	vmovdqu64	144(%rsp), %ymm26
.LBB1_35:
	movq	488(%rsp), %rcx
	vextracti32x4	$1, %ymm29, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxorq	%xmm0, %xmm29, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_13(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$108, .LCPI1_16(%rip), %xmm7, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm28, %xmm0, %xmm0
	vmovdqu64	368(%rsp), %ymm29
	vaesenc	%xmm29, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm31, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm25, %xmm0, %xmm0
	vaesenclast	%xmm24, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rdx)
	vpor	.LCPI1_17(%rip), %xmm0, %xmm14
	cmpq	$256, %r10
	jb	.LBB1_39
	vinserti128	$1, %xmm7, %ymm7, %ymm1
	vinserti128	$1, %xmm12, %ymm12, %ymm15
	vinserti32x4	$1, %xmm8, %ymm8, %ymm16
	vinserti32x4	$1, %xmm9, %ymm9, %ymm18
	vinserti32x4	$1, %xmm10, %ymm10, %ymm19
	vinserti32x4	$1, %xmm11, %ymm11, %ymm20
	vinserti32x4	$1, %xmm26, %ymm26, %ymm21
	vinserti32x4	$1, %xmm27, %ymm27, %ymm22
	vinserti32x4	$1, %xmm28, %ymm28, %ymm23
	vmovdqa64	%ymm24, %ymm2
	vinserti32x4	$1, %xmm29, %ymm29, %ymm24
	vmovdqa64	%ymm25, %ymm0
	vinserti32x4	$1, %xmm30, %ymm30, %ymm25
	vinserti32x4	$1, %xmm31, %ymm31, %ymm26
	vinserti32x4	$1, %xmm6, %ymm6, %ymm27
	vinserti32x4	$1, %xmm0, %ymm0, %ymm28
	vmovdqu	%ymm2, -112(%rsp)
	vinserti32x4	$1, %xmm2, %ymm2, %ymm29
	vpmovsxbq	.LCPI1_29(%rip), %ymm31
	vpmovsxbq	.LCPI1_30(%rip), %ymm0
	vpmovsxbq	.LCPI1_31(%rip), %ymm13
	vpmovsxbq	.LCPI1_32(%rip), %ymm17
	vpmovsxbq	.LCPI1_33(%rip), %ymm2
	vpmovsxbq	.LCPI1_34(%rip), %ymm3
	vpmovsxbq	.LCPI1_35(%rip), %ymm4
	vpmovsxbq	.LCPI1_36(%rip), %xmm5
	.p2align	4
.LBB1_37:
	vpaddd	.LCPI1_0(%rip), %xmm14, %xmm6
	vinserti128	$1, %xmm6, %ymm14, %ymm6
	vinserti128	$1, %xmm14, %ymm14, %ymm7
	vpaddd	%ymm31, %ymm7, %ymm8
	vpaddd	%ymm0, %ymm7, %ymm9
	vpaddd	%ymm7, %ymm13, %ymm10
	vpaddd	%ymm17, %ymm7, %ymm11
	vpaddd	%ymm2, %ymm7, %ymm12
	vpaddd	%ymm3, %ymm7, %ymm30
	vpaddd	%ymm4, %ymm7, %ymm7
	vpxor	%ymm6, %ymm1, %ymm6
	vpxor	%ymm1, %ymm8, %ymm8
	vpxor	%ymm1, %ymm9, %ymm9
	vpxor	%ymm1, %ymm10, %ymm10
	vpxor	%ymm1, %ymm11, %ymm11
	vpxor	%ymm1, %ymm12, %ymm12
	vpxorq	%ymm30, %ymm1, %ymm30
	vpxor	%ymm7, %ymm1, %ymm7
	vaesenc	%ymm15, %ymm6, %ymm6
	vaesenc	%ymm15, %ymm8, %ymm8
	vaesenc	%ymm15, %ymm9, %ymm9
	vaesenc	%ymm15, %ymm10, %ymm10
	vaesenc	%ymm15, %ymm11, %ymm11
	vaesenc	%ymm15, %ymm12, %ymm12
	vaesenc	%ymm15, %ymm30, %ymm30
	vaesenc	%ymm15, %ymm7, %ymm7
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm8, %ymm8
	vaesenc	%ymm16, %ymm9, %ymm9
	vaesenc	%ymm16, %ymm10, %ymm10
	vaesenc	%ymm16, %ymm11, %ymm11
	vaesenc	%ymm16, %ymm12, %ymm12
	vaesenc	%ymm16, %ymm30, %ymm30
	vaesenc	%ymm16, %ymm7, %ymm7
	vaesenc	%ymm18, %ymm6, %ymm6
	vaesenc	%ymm18, %ymm8, %ymm8
	vaesenc	%ymm18, %ymm9, %ymm9
	vaesenc	%ymm18, %ymm10, %ymm10
	vaesenc	%ymm18, %ymm11, %ymm11
	vaesenc	%ymm18, %ymm12, %ymm12
	vaesenc	%ymm18, %ymm30, %ymm30
	vaesenc	%ymm18, %ymm7, %ymm7
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm8, %ymm8
	vaesenc	%ymm19, %ymm9, %ymm9
	vaesenc	%ymm19, %ymm10, %ymm10
	vaesenc	%ymm19, %ymm11, %ymm11
	vaesenc	%ymm19, %ymm12, %ymm12
	vaesenc	%ymm19, %ymm30, %ymm30
	vaesenc	%ymm19, %ymm7, %ymm7
	vaesenc	%ymm20, %ymm6, %ymm6
	vaesenc	%ymm20, %ymm8, %ymm8
	vaesenc	%ymm20, %ymm9, %ymm9
	vaesenc	%ymm20, %ymm10, %ymm10
	vaesenc	%ymm20, %ymm11, %ymm11
	vaesenc	%ymm20, %ymm12, %ymm12
	vaesenc	%ymm20, %ymm30, %ymm30
	vaesenc	%ymm20, %ymm7, %ymm7
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm8, %ymm8
	vaesenc	%ymm21, %ymm9, %ymm9
	vaesenc	%ymm21, %ymm10, %ymm10
	vaesenc	%ymm21, %ymm11, %ymm11
	vaesenc	%ymm21, %ymm12, %ymm12
	vaesenc	%ymm21, %ymm30, %ymm30
	vaesenc	%ymm21, %ymm7, %ymm7
	vaesenc	%ymm22, %ymm6, %ymm6
	vaesenc	%ymm22, %ymm8, %ymm8
	vaesenc	%ymm22, %ymm9, %ymm9
	vaesenc	%ymm22, %ymm10, %ymm10
	vaesenc	%ymm22, %ymm11, %ymm11
	vaesenc	%ymm22, %ymm12, %ymm12
	vaesenc	%ymm22, %ymm30, %ymm30
	vaesenc	%ymm22, %ymm7, %ymm7
	vaesenc	%ymm23, %ymm6, %ymm6
	vaesenc	%ymm23, %ymm8, %ymm8
	vaesenc	%ymm23, %ymm9, %ymm9
	vaesenc	%ymm23, %ymm10, %ymm10
	vaesenc	%ymm23, %ymm11, %ymm11
	vaesenc	%ymm23, %ymm12, %ymm12
	vaesenc	%ymm23, %ymm30, %ymm30
	vaesenc	%ymm23, %ymm7, %ymm7
	vaesenc	%ymm24, %ymm6, %ymm6
	vaesenc	%ymm24, %ymm8, %ymm8
	vaesenc	%ymm24, %ymm9, %ymm9
	vaesenc	%ymm24, %ymm10, %ymm10
	vaesenc	%ymm24, %ymm11, %ymm11
	vaesenc	%ymm24, %ymm12, %ymm12
	vaesenc	%ymm24, %ymm30, %ymm30
	vaesenc	%ymm24, %ymm7, %ymm7
	vaesenc	%ymm25, %ymm6, %ymm6
	vaesenc	%ymm25, %ymm8, %ymm8
	vaesenc	%ymm25, %ymm9, %ymm9
	vaesenc	%ymm25, %ymm10, %ymm10
	vaesenc	%ymm25, %ymm11, %ymm11
	vaesenc	%ymm25, %ymm12, %ymm12
	vaesenc	%ymm25, %ymm30, %ymm30
	vaesenc	%ymm25, %ymm7, %ymm7
	vaesenc	%ymm26, %ymm6, %ymm6
	vaesenc	%ymm26, %ymm8, %ymm8
	vaesenc	%ymm26, %ymm9, %ymm9
	vaesenc	%ymm26, %ymm10, %ymm10
	vaesenc	%ymm26, %ymm11, %ymm11
	vaesenc	%ymm26, %ymm12, %ymm12
	vaesenc	%ymm26, %ymm30, %ymm30
	vaesenc	%ymm26, %ymm7, %ymm7
	vaesenc	%ymm27, %ymm6, %ymm6
	vaesenc	%ymm27, %ymm8, %ymm8
	vaesenc	%ymm27, %ymm9, %ymm9
	vaesenc	%ymm27, %ymm10, %ymm10
	vaesenc	%ymm27, %ymm11, %ymm11
	vaesenc	%ymm27, %ymm12, %ymm12
	vaesenc	%ymm27, %ymm30, %ymm30
	vaesenc	%ymm27, %ymm7, %ymm7
	vaesenc	%ymm28, %ymm6, %ymm6
	vaesenc	%ymm28, %ymm8, %ymm8
	vaesenc	%ymm28, %ymm9, %ymm9
	vaesenc	%ymm28, %ymm10, %ymm10
	vaesenc	%ymm28, %ymm11, %ymm11
	vaesenc	%ymm28, %ymm12, %ymm12
	vaesenc	%ymm28, %ymm30, %ymm30
	vaesenc	%ymm28, %ymm7, %ymm7
	vaesenclast	%ymm29, %ymm6, %ymm6
	vaesenclast	%ymm29, %ymm8, %ymm8
	vaesenclast	%ymm29, %ymm9, %ymm9
	vaesenclast	%ymm29, %ymm10, %ymm10
	vaesenclast	%ymm29, %ymm11, %ymm11
	vaesenclast	%ymm29, %ymm12, %ymm12
	vaesenclast	%ymm29, %ymm30, %ymm30
	vaesenclast	%ymm29, %ymm7, %ymm7
	vpxor	(%r9), %ymm6, %ymm6
	vpxor	32(%r9), %ymm8, %ymm8
	vpxor	64(%r9), %ymm9, %ymm9
	vpxor	96(%r9), %ymm10, %ymm10
	vpxor	128(%r9), %ymm11, %ymm11
	vpxor	160(%r9), %ymm12, %ymm12
	vpxorq	192(%r9), %ymm30, %ymm30
	vpxor	224(%r9), %ymm7, %ymm7
	vmovdqu	%ymm6, (%rcx)
	vmovdqu	%ymm8, 32(%rcx)
	vmovdqu	%ymm9, 64(%rcx)
	vmovdqu	%ymm10, 96(%rcx)
	vmovdqu	%ymm11, 128(%rcx)
	vmovdqu	%ymm12, 160(%rcx)
	vmovdqu64	%ymm30, 192(%rcx)
	vmovdqu	%ymm7, 224(%rcx)
	addq	$256, %r9
	addq	$256, %rcx
	addq	$-256, %r10
	vpaddd	%xmm5, %xmm14, %xmm14
	cmpq	$255, %r10
	ja	.LBB1_37
	vmovups	336(%rsp), %ymm12
	vmovupd	304(%rsp), %ymm7
	vmovupd	272(%rsp), %ymm8
	vmovupd	240(%rsp), %ymm9
	vmovupd	208(%rsp), %ymm10
	vmovupd	176(%rsp), %ymm11
	vmovdqu64	144(%rsp), %ymm26
	vmovupd	112(%rsp), %ymm27
	vmovupd	80(%rsp), %ymm28
	vmovdqu64	368(%rsp), %ymm29
	vmovupd	48(%rsp), %ymm30
	vmovupd	16(%rsp), %ymm31
	vmovupd	-48(%rsp), %ymm6
	vmovdqu64	-80(%rsp), %ymm25
	vmovdqu64	-112(%rsp), %ymm24
.LBB1_39:
	cmpq	$32, %r10
	jb	.LBB1_42
	vinsertf128	$1, %xmm7, %ymm7, %ymm0
	vinsertf128	$1, %xmm12, %ymm12, %ymm1
	vinsertf128	$1, %xmm8, %ymm8, %ymm2
	vinsertf128	$1, %xmm9, %ymm9, %ymm3
	vinsertf128	$1, %xmm10, %ymm10, %ymm4
	vinsertf128	$1, %xmm11, %ymm11, %ymm5
	vinserti32x4	$1, %xmm26, %ymm26, %ymm13
	vinsertf32x4	$1, %xmm27, %ymm27, %ymm15
	vinsertf32x4	$1, %xmm28, %ymm28, %ymm16
	vinserti32x4	$1, %xmm29, %ymm29, %ymm17
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm18
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm19
	vinsertf32x4	$1, %xmm6, %ymm6, %ymm20
	vinserti32x4	$1, %xmm25, %ymm25, %ymm21
	vinserti32x4	$1, %xmm24, %ymm24, %ymm22
	leaq	-32(%r10), %rsi
	testb	$32, %sil
	jne	.LBB1_43
	leaq	32(%r9), %rdi
	leaq	32(%rcx), %rdx
	vpaddd	.LCPI1_0(%rip), %xmm14, %xmm6
	vpaddd	.LCPI1_1(%rip), %xmm14, %xmm23
	vinserti128	$1, %xmm6, %ymm14, %ymm6
	vxorpd	%ymm6, %ymm0, %ymm6
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm2, %ymm6, %ymm6
	vaesenc	%ymm3, %ymm6, %ymm6
	vaesenc	%ymm4, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm13, %ymm6, %ymm6
	vaesenc	%ymm15, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm18, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm20, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenclast	%ymm22, %ymm6, %ymm6
	vpxor	(%r9), %ymm6, %ymm6
	vmovdqu	%ymm6, (%rcx)
	vmovupd	-48(%rsp), %ymm6
	movq	%rdx, %rcx
	vmovdqa64	%xmm23, %xmm14
	movq	%rsi, %r10
	movq	%rdi, %r9
	cmpq	$32, %rsi
	jae	.LBB1_44
	jmp	.LBB1_47
.LBB1_42:
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovdqa64	%xmm14, %xmm23
	jmp	.LBB1_47
.LBB1_43:
	cmpq	$32, %rsi
	jb	.LBB1_47
.LBB1_44:
	vmovdqu64	%ymm24, -112(%rsp)
	vpmovsxbq	.LCPI1_37(%rip), %xmm23
	vpmovsxbq	.LCPI1_38(%rip), %xmm24
	vpmovsxbq	.LCPI1_29(%rip), %ymm25
	.p2align	4
.LBB1_45:
	vpaddd	%xmm23, %xmm14, %xmm6
	vinserti128	$1, %xmm6, %ymm14, %ymm6
	vxorpd	%ymm6, %ymm0, %ymm6
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm2, %ymm6, %ymm6
	vaesenc	%ymm3, %ymm6, %ymm6
	vaesenc	%ymm4, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm13, %ymm6, %ymm6
	vaesenc	%ymm15, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm18, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm20, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenclast	%ymm22, %ymm6, %ymm6
	vpxor	(%r9), %ymm6, %ymm6
	vmovdqu	%ymm6, (%rcx)
	vinserti128	$1, %xmm14, %ymm14, %ymm6
	vpaddd	%ymm25, %ymm6, %ymm6
	vxorpd	%ymm6, %ymm0, %ymm6
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm2, %ymm6, %ymm6
	vaesenc	%ymm3, %ymm6, %ymm6
	vaesenc	%ymm4, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm13, %ymm6, %ymm6
	vaesenc	%ymm15, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm18, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm20, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenclast	%ymm22, %ymm6, %ymm6
	vpxor	32(%r9), %ymm6, %ymm6
	addq	$64, %r9
	vmovdqu	%ymm6, 32(%rcx)
	addq	$64, %rcx
	addq	$-64, %r10
	vpaddd	%xmm24, %xmm14, %xmm14
	cmpq	$31, %r10
	ja	.LBB1_45
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovdqa64	%xmm14, %xmm23
	vmovupd	-48(%rsp), %ymm6
	vmovdqu64	-80(%rsp), %ymm25
	vmovdqu64	-112(%rsp), %ymm24
.LBB1_47:
	testq	%rsi, %rsi
	je	.LBB1_49
	movl	$-1, %ecx
	bzhil	%esi, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdi), %ymm0 {%k1} {z}
	vpaddd	.LCPI1_0(%rip), %xmm23, %xmm1
	vinserti32x4	$1, %xmm1, %ymm23, %ymm1
	vinsertf128	$1, %xmm7, %ymm7, %ymm2
	vxorpd	%ymm1, %ymm2, %ymm1
	vinsertf128	$1, %xmm12, %ymm12, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm8, %ymm8, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm9, %ymm9, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm10, %ymm10, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm11, %ymm11, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm26, %ymm26, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm27, %ymm27, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm28, %ymm28, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm29, %ymm29, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm6, %ymm6, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm25, %ymm25, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm24, %ymm24, %ymm2
	vaesenclast	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu8	%ymm0, (%rdx) {%k1}
.LBB1_49:
	movzbl	%al, %eax
.LBB1_50:
	addq	$464, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_tigerlake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_1:
	.quad	2
	.quad	0
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
.LCPI2_16:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_24:
	.long	16
	.long	0
	.long	0
	.long	0
.LCPI2_25:
	.long	17
	.long	0
	.long	0
	.long	0
.LCPI2_33:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_6:
	.quad	4294967297
.LCPI2_7:
	.quad	8589934594
.LCPI2_8:
	.quad	17179869188
.LCPI2_9:
	.quad	34359738376
.LCPI2_10:
	.quad	68719476752
.LCPI2_11:
	.quad	137438953504
.LCPI2_12:
	.quad	274877907008
.LCPI2_13:
	.quad	-4467570830351532032
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI2_14:
	.quad	0
	.quad	4
	.quad	0
	.quad	6
.LCPI2_15:
	.quad	1
	.quad	5
	.quad	1
	.quad	7
.LCPI2_17:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI2_22:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI2_23:
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI2_26:
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI2_27:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
.LCPI2_28:
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
.LCPI2_29:
	.long	24
	.long	0
	.long	0
	.long	0
	.long	25
	.long	0
	.long	0
	.long	0
.LCPI2_30:
	.long	26
	.long	0
	.long	0
	.long	0
	.long	27
	.long	0
	.long	0
	.long	0
.LCPI2_31:
	.long	28
	.long	0
	.long	0
	.long	0
	.long	29
	.long	0
	.long	0
	.long	0
.LCPI2_32:
	.long	30
	.long	0
	.long	0
	.long	0
	.long	31
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_34:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
.LCPI2_35:
	.byte	0
	.byte	4
	.byte	0
	.byte	6
.LCPI2_36:
	.byte	1
	.byte	5
	.byte	1
	.byte	7
	.section	.rodata,"a",@progbits
.LCPI2_37:
	.byte	1
	.byte	0
.LCPI2_38:
	.byte	2
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_decrypt,@function
haberdashery_aes256gcmsiv_tigerlake_decrypt:
	.cfi_startproc
	subq	$1256, %rsp
	.cfi_def_cfa_offset 1264
	movq	1264(%rsp), %r10
	xorl	%eax, %eax
	cmpq	1296(%rsp), %r10
	jne	.LBB2_39
	cmpq	$12, %rdx
	jne	.LBB2_39
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB2_39
	cmpq	%rdx, %r10
	jae	.LBB2_39
	cmpq	$16, 1280(%rsp)
	jb	.LBB2_39
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI2_0(%rip), %xmm2, %xmm3
	vxorps	.LCPI2_1(%rip), %xmm2, %xmm1
	vxorps	.LCPI2_2(%rip), %xmm2, %xmm4
	vxorps	.LCPI2_3(%rip), %xmm2, %xmm0
	vxorps	.LCPI2_4(%rip), %xmm2, %xmm5
	vmovaps	16(%rdi), %xmm7
	vmovdqa	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	vmovaps	112(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	vmovaps	144(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	vmovaps	176(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	vmovaps	208(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm2, %xmm20
	vpunpcklqdq	%xmm4, %xmm1, %xmm6
	vpunpcklqdq	%xmm5, %xmm0, %xmm16
	vpslldq	$4, %xmm6, %xmm2
	vxorpd	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm1, %xmm3, %xmm4
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm4, %xmm2, %xmm1
	vpbroadcastd	.LCPI2_34(%rip), %xmm2
	vpshufb	%xmm2, %xmm16, %xmm4
	vpbroadcastq	.LCPI2_6(%rip), %xmm5
	vaesenclast	%xmm5, %xmm4, %xmm30
	vmovupd	%ymm6, 288(%rsp)
	vpternlogq	$150, %xmm1, %xmm6, %xmm30
	vpslldq	$4, %xmm16, %xmm1
	vpunpcklqdq	%xmm0, %xmm3, %xmm4
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm4, %xmm1, %xmm0
	vpshufd	$255, %xmm30, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm23
	vpternlogq	$150, %xmm0, %xmm16, %xmm23
	vpslldq	$4, %xmm30, %xmm0
	vpslldq	$8, %xmm30, %xmm1
	vpslldq	$12, %xmm30, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm2, %xmm23, %xmm0
	vpbroadcastq	.LCPI2_7(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm24
	vpternlogq	$150, %xmm4, %xmm30, %xmm24
	vpslldq	$4, %xmm23, %xmm0
	vpslldq	$8, %xmm23, %xmm1
	vpslldq	$12, %xmm23, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm24, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm26
	vpternlogq	$150, %xmm4, %xmm23, %xmm26
	vpslldq	$4, %xmm24, %xmm0
	vpslldq	$8, %xmm24, %xmm1
	vpslldq	$12, %xmm24, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm2, %xmm26, %xmm0
	vpbroadcastq	.LCPI2_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm15
	vpternlogq	$150, %xmm4, %xmm24, %xmm15
	vpslldq	$4, %xmm26, %xmm0
	vpslldq	$8, %xmm26, %xmm1
	vpslldq	$12, %xmm26, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm15, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm26, %xmm5
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpslldq	$12, %xmm15, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm2, %xmm5, %xmm0
	vpbroadcastq	.LCPI2_9(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm6
	vpternlogq	$150, %xmm4, %xmm15, %xmm6
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm6, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm7
	vmovups	%ymm5, 144(%rsp)
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm0
	vpbroadcastq	.LCPI2_10(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm5
	vmovups	%ymm6, 112(%rsp)
	vpternlogq	$150, %xmm4, %xmm6, %xmm5
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm5, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm6
	vmovups	%ymm7, 80(%rsp)
	vpternlogq	$150, %xmm4, %xmm7, %xmm6
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm13
	vmovups	%ymm5, 48(%rsp)
	vpternlogq	$150, %xmm4, %xmm5, %xmm13
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpslldq	$12, %xmm6, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$255, %xmm13, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm14
	vmovups	%ymm6, 16(%rsp)
	vpternlogq	$150, %xmm4, %xmm6, %xmm14
	vpclmulqdq	$0, %xmm20, %xmm20, %xmm0
	vpbroadcastq	.LCPI2_13(%rip), %ymm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm20, %xmm20, %xmm3
	vpshufd	$78, %xmm0, %xmm9
	vpternlogq	$150, %xmm1, %xmm3, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm3, %xmm0
	vinserti128	$1, %xmm0, %ymm0, %ymm7
	vinserti128	$1, %xmm0, %ymm9, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm7, %ymm1
	vpunpckhqdq	%ymm0, %ymm7, %ymm3
	vpunpcklqdq	%ymm0, %ymm7, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm0, %ymm7, %ymm0
	vpternlogq	$150, %ymm1, %ymm0, %ymm3
	vpslldq	$8, %ymm3, %ymm4
	vpxor	%ymm4, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm6, %ymm1, %ymm4
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpclmulqdq	$16, %ymm6, %ymm1, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm1, %ymm22
	vpternlogq	$150, %ymm3, %ymm0, %ymm22
	vextracti32x4	$1, %ymm22, %xmm17
	vpclmulqdq	$0, %ymm22, %ymm7, %ymm0
	vpunpckhqdq	%ymm22, %ymm7, %ymm1
	vpunpcklqdq	%ymm22, %ymm7, %ymm3
	vpxor	%ymm3, %ymm1, %ymm1
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm22, %ymm7, %ymm3
	vpternlogq	$150, %ymm0, %ymm3, %ymm1
	vpslldq	$8, %ymm1, %ymm5
	vpxor	%ymm5, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm6, %ymm0, %ymm5
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm5, %ymm0
	vpclmulqdq	$16, %ymm6, %ymm0, %ymm5
	vpsrldq	$8, %ymm1, %ymm1
	vpxor	%ymm1, %ymm5, %ymm1
	vpshufd	$78, %ymm0, %ymm27
	vpternlogq	$150, %ymm1, %ymm3, %ymm27
	vextracti32x4	$1, %ymm27, %xmm18
	vpunpcklqdq	%ymm27, %ymm7, %ymm0
	vpunpckhqdq	%ymm27, %ymm7, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpclmulqdq	$0, %ymm27, %ymm7, %ymm1
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm27, %ymm7, %ymm3
	vpternlogq	$150, %ymm1, %ymm3, %ymm0
	vpslldq	$8, %ymm0, %ymm5
	vpxor	%ymm5, %ymm1, %ymm1
	vpsrldq	$8, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm6, %ymm1, %ymm5
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm5, %ymm1
	vmovdqa64	%ymm6, %ymm25
	vpclmulqdq	$16, %ymm6, %ymm1, %ymm5
	vpxor	%ymm0, %ymm5, %ymm0
	vpshufd	$78, %ymm1, %ymm31
	vpternlogq	$150, %ymm0, %ymm3, %ymm31
	vextracti32x4	$1, %ymm31, %xmm5
	vpxord	%xmm29, %xmm29, %xmm29
	vpermq	$68, %ymm22, %ymm28
	vpermq	$68, %ymm27, %ymm4
	vpermq	$68, %ymm31, %ymm6
	cmpq	$256, %r8
	vmovups	%ymm15, -80(%rsp)
	vmovdqu	%ymm13, -16(%rsp)
	vmovdqu	%ymm14, -48(%rsp)
	vmovdqu	%ymm9, -112(%rsp)
	vmovups	%ymm16, 480(%rsp)
	vmovups	%ymm23, 448(%rsp)
	vmovups	%ymm24, 416(%rsp)
	vmovups	%ymm26, 384(%rsp)
	vmovdqu	%ymm7, 704(%rsp)
	vmovdqu	%ymm6, 672(%rsp)
	vmovdqu	%ymm4, 640(%rsp)
	vmovdqu64	%ymm28, 608(%rsp)
	vmovdqu	%ymm5, 352(%rsp)
	jb	.LBB2_6
	vinserti128	$1, %xmm9, %ymm9, %ymm0
	vmovdqu64	%ymm17, 320(%rsp)
	vinserti32x4	$1, %xmm17, %ymm17, %ymm1
	vmovdqa64	%ymm18, %ymm21
	vinserti32x4	$1, %xmm18, %ymm18, %ymm3
	vinserti128	$1, %xmm5, %ymm5, %ymm5
	vpmovsxbq	.LCPI2_35(%rip), %ymm8
	vpmovsxbq	.LCPI2_36(%rip), %ymm9
	movq	%r8, %rax
	.p2align	4
.LBB2_21:
	vmovdqu	32(%rcx), %ymm11
	vmovdqu	64(%rcx), %ymm12
	vmovdqu	96(%rcx), %ymm13
	vmovdqu	128(%rcx), %ymm14
	vmovdqu	160(%rcx), %ymm15
	vmovdqu64	192(%rcx), %ymm16
	vmovdqu64	224(%rcx), %ymm17
	vpxorq	(%rcx), %ymm29, %ymm10
	addq	$256, %rcx
	addq	$-256, %rax
	vpunpcklqdq	%ymm17, %ymm0, %ymm18
	vpunpckhqdq	%ymm17, %ymm0, %ymm19
	vpxorq	%ymm18, %ymm19, %ymm18
	vpclmulqdq	$0, %ymm17, %ymm0, %ymm19
	vpclmulqdq	$1, %ymm18, %ymm18, %ymm18
	vpclmulqdq	$17, %ymm17, %ymm0, %ymm17
	vpunpcklqdq	%ymm16, %ymm7, %ymm23
	vpunpckhqdq	%ymm16, %ymm7, %ymm24
	vpxorq	%ymm23, %ymm24, %ymm23
	vpclmulqdq	$0, %ymm16, %ymm7, %ymm24
	vpxorq	%ymm19, %ymm24, %ymm19
	vpclmulqdq	$1, %ymm23, %ymm23, %ymm23
	vpxorq	%ymm18, %ymm23, %ymm18
	vpclmulqdq	$17, %ymm16, %ymm7, %ymm16
	vpxorq	%ymm17, %ymm16, %ymm16
	vmovdqa64	%ymm22, %ymm17
	vpermt2q	%ymm15, %ymm8, %ymm17
	vmovdqa64	%ymm22, %ymm23
	vpermt2q	%ymm15, %ymm9, %ymm23
	vpxorq	%ymm17, %ymm23, %ymm17
	vpclmulqdq	$0, %ymm15, %ymm28, %ymm23
	vpclmulqdq	$1, %ymm17, %ymm17, %ymm17
	vpclmulqdq	$17, %ymm15, %ymm28, %ymm15
	vpunpcklqdq	%ymm14, %ymm1, %ymm24
	vpunpckhqdq	%ymm14, %ymm1, %ymm26
	vpxorq	%ymm24, %ymm26, %ymm24
	vpclmulqdq	$0, %ymm14, %ymm1, %ymm26
	vpternlogq	$150, %ymm23, %ymm19, %ymm26
	vpclmulqdq	$1, %ymm24, %ymm24, %ymm19
	vpternlogq	$150, %ymm17, %ymm18, %ymm19
	vpclmulqdq	$17, %ymm14, %ymm1, %ymm14
	vpternlogq	$150, %ymm15, %ymm16, %ymm14
	vmovdqa64	%ymm27, %ymm15
	vpermt2q	%ymm13, %ymm8, %ymm15
	vmovdqa64	%ymm27, %ymm16
	vpermt2q	%ymm13, %ymm9, %ymm16
	vpxorq	%ymm15, %ymm16, %ymm15
	vpclmulqdq	$0, %ymm13, %ymm4, %ymm16
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm15
	vpclmulqdq	$17, %ymm13, %ymm4, %ymm13
	vpunpcklqdq	%ymm12, %ymm3, %ymm17
	vpunpckhqdq	%ymm12, %ymm3, %ymm18
	vpxorq	%ymm17, %ymm18, %ymm17
	vpclmulqdq	$0, %ymm12, %ymm3, %ymm18
	vpternlogq	$150, %ymm16, %ymm26, %ymm18
	vpclmulqdq	$1, %ymm17, %ymm17, %ymm16
	vpternlogq	$150, %ymm15, %ymm19, %ymm16
	vpclmulqdq	$17, %ymm12, %ymm3, %ymm12
	vpternlogq	$150, %ymm13, %ymm14, %ymm12
	vmovdqa64	%ymm31, %ymm13
	vpermt2q	%ymm11, %ymm8, %ymm13
	vmovdqa64	%ymm31, %ymm14
	vpermt2q	%ymm11, %ymm9, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm11, %ymm6, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm11, %ymm6, %ymm11
	vpunpcklqdq	%ymm10, %ymm5, %ymm15
	vpunpckhqdq	%ymm10, %ymm5, %ymm17
	vpxorq	%ymm15, %ymm17, %ymm15
	vpclmulqdq	$0, %ymm10, %ymm5, %ymm17
	vpternlogq	$150, %ymm14, %ymm18, %ymm17
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm14
	vpternlogq	$150, %ymm13, %ymm16, %ymm14
	vpclmulqdq	$17, %ymm10, %ymm5, %ymm10
	vpternlogq	$150, %ymm11, %ymm12, %ymm10
	vpternlogq	$150, %ymm17, %ymm10, %ymm14
	vpslldq	$8, %ymm14, %ymm11
	vpxorq	%ymm11, %ymm17, %ymm11
	vpsrldq	$8, %ymm14, %ymm12
	vpclmulqdq	$16, %ymm25, %ymm11, %ymm13
	vpshufd	$78, %ymm11, %ymm11
	vpxor	%ymm11, %ymm13, %ymm11
	vpclmulqdq	$16, %ymm25, %ymm11, %ymm13
	vpxor	%ymm12, %ymm13, %ymm12
	vpshufd	$78, %ymm11, %ymm29
	vpternlogq	$150, %ymm12, %ymm10, %ymm29
	cmpq	$255, %rax
	ja	.LBB2_21
	vmovupd	448(%rsp), %ymm23
	vmovupd	416(%rsp), %ymm24
	vmovupd	384(%rsp), %ymm26
	vmovupd	-80(%rsp), %ymm15
	vmovdqu	-16(%rsp), %ymm13
	vmovdqu	-48(%rsp), %ymm14
	vmovdqu	-112(%rsp), %ymm9
	vmovups	480(%rsp), %ymm16
	vmovdqu64	320(%rsp), %ymm17
	vmovdqa64	%ymm21, %ymm18
	jmp	.LBB2_7
.LBB2_6:
	movq	%r8, %rax
.LBB2_7:
	vpslldq	$4, %xmm13, %xmm3
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm0
	vpshufb	%xmm2, %xmm14, %xmm2
	vpbroadcastq	.LCPI2_12(%rip), %xmm1
	movq	1272(%rsp), %rdx
	cmpq	$32, %rax
	vmovdqu64	288(%rsp), %ymm28
	jb	.LBB2_8
	vinserti128	$1, %xmm9, %ymm9, %ymm8
	leaq	-32(%rax), %rdi
	testb	$32, %dil
	jne	.LBB2_11
	vpxorq	(%rcx), %ymm29, %ymm9
	addq	$32, %rcx
	vpunpcklqdq	%ymm9, %ymm8, %ymm10
	vpunpckhqdq	%ymm9, %ymm8, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm9, %ymm8, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm10
	vpclmulqdq	$17, %ymm9, %ymm8, %ymm9
	vpternlogq	$150, %ymm11, %ymm9, %ymm10
	vpslldq	$8, %ymm10, %ymm12
	vpxor	%ymm12, %ymm11, %ymm11
	vpsrldq	$8, %ymm10, %ymm10
	vpclmulqdq	$16, %ymm25, %ymm11, %ymm12
	vpshufd	$78, %ymm11, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$16, %ymm25, %ymm11, %ymm12
	vpxor	%ymm10, %ymm12, %ymm10
	vpshufd	$78, %ymm11, %ymm29
	vpternlogq	$150, %ymm10, %ymm9, %ymm29
	vmovdqu	-112(%rsp), %ymm9
	movq	%rdi, %rax
.LBB2_11:
	cmpq	$32, %rdi
	jb	.LBB2_12
	.p2align	4
.LBB2_23:
	vpxorq	(%rcx), %ymm29, %ymm9
	vpunpcklqdq	%ymm9, %ymm8, %ymm10
	vpunpckhqdq	%ymm9, %ymm8, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm9, %ymm8, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm10
	vpclmulqdq	$17, %ymm9, %ymm8, %ymm9
	vpternlogq	$150, %ymm11, %ymm9, %ymm10
	vpslldq	$8, %ymm10, %ymm12
	vpxor	%ymm12, %ymm11, %ymm11
	vpsrldq	$8, %ymm10, %ymm10
	vpclmulqdq	$16, %ymm25, %ymm11, %ymm12
	vpshufd	$78, %ymm11, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$16, %ymm25, %ymm11, %ymm12
	vpshufd	$78, %ymm11, %ymm11
	vpternlogq	$150, %ymm10, %ymm12, %ymm11
	addq	$-64, %rax
	vpternlogq	$150, 32(%rcx), %ymm9, %ymm11
	addq	$64, %rcx
	vpunpcklqdq	%ymm11, %ymm8, %ymm9
	vpunpckhqdq	%ymm11, %ymm8, %ymm10
	vpxor	%ymm9, %ymm10, %ymm9
	vpclmulqdq	$0, %ymm11, %ymm8, %ymm10
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm11, %ymm8, %ymm11
	vpternlogq	$150, %ymm10, %ymm11, %ymm9
	vpslldq	$8, %ymm9, %ymm12
	vpxor	%ymm12, %ymm10, %ymm10
	vpsrldq	$8, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm25, %ymm10, %ymm12
	vpshufd	$78, %ymm10, %ymm10
	vpxor	%ymm10, %ymm12, %ymm10
	vpclmulqdq	$16, %ymm25, %ymm10, %ymm12
	vpxor	%ymm9, %ymm12, %ymm9
	vpshufd	$78, %ymm10, %ymm29
	vpternlogq	$150, %ymm9, %ymm11, %ymm29
	cmpq	$31, %rax
	ja	.LBB2_23
	movq	%rax, %rdi
	vmovdqu	-112(%rsp), %ymm9
	jmp	.LBB2_12
.LBB2_8:
	movq	%rax, %rdi
.LBB2_12:
	vpternlogq	$150, %xmm5, %xmm3, %xmm0
	vaesenclast	%xmm1, %xmm2, %xmm10
	vmovdqu	(%rdx), %xmm4
	testq	%rdi, %rdi
	je	.LBB2_16
	movl	$-1, %eax
	bzhil	%edi, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rcx), %ymm1 {%k1} {z}
	vpxorq	%ymm1, %ymm29, %ymm1
	vmovdqa	%xmm9, %xmm2
	cmpq	$17, %rdi
	jae	.LBB2_15
	vmovdqa64	%xmm20, %xmm2
.LBB2_15:
	vinserti128	$1, %xmm2, %ymm2, %ymm2
	vpunpcklqdq	%ymm1, %ymm2, %ymm3
	vpunpckhqdq	%ymm1, %ymm2, %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$0, %ymm1, %ymm2, %ymm5
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm1, %ymm2, %ymm1
	vpternlogq	$150, %ymm5, %ymm1, %ymm3
	vpslldq	$8, %ymm3, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm25, %ymm2, %ymm5
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$16, %ymm25, %ymm2, %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vpshufd	$78, %ymm2, %ymm29
	vpternlogq	$150, %ymm3, %ymm1, %ymm29
.LBB2_16:
	vmovq	%r10, %xmm2
	vmovq	%r8, %xmm3
	vmovss	8(%rsi), %xmm1
	vmovaps	%xmm1, 224(%rsp)
	vmovq	(%rsi), %xmm1
	vmovdqa	%xmm1, 208(%rsp)
	movq	1288(%rsp), %rdx
	vpternlogq	$150, %xmm0, %xmm13, %xmm10
	vporq	.LCPI2_16(%rip), %xmm4, %xmm19
	vinserti128	$1, %xmm9, %ymm9, %ymm12
	cmpq	$256, %r10
	vmovaps	%xmm20, -128(%rsp)
	vmovdqa	%xmm4, 240(%rsp)
	vmovdqu	%ymm10, 256(%rsp)
	jb	.LBB2_17
	vmovdqa	%xmm3, 176(%rsp)
	vmovdqa	%xmm2, 192(%rsp)
	vinserti32x4	$1, %xmm17, %ymm17, %ymm0
	vmovdqu	%ymm0, 544(%rsp)
	vinserti32x4	$1, %xmm18, %ymm18, %ymm0
	vmovdqu	%ymm0, 576(%rsp)
	vmovapd	%ymm26, %ymm8
	vmovdqu	352(%rsp), %ymm0
	vinserti32x4	$1, %xmm0, %ymm0, %ymm26
	leaq	256(%r9), %rax
	leaq	256(%rdx), %rcx
	vpaddd	.LCPI2_0(%rip), %xmm19, %xmm0
	vinserti32x4	$1, %xmm19, %ymm19, %ymm1
	vpaddd	.LCPI2_17(%rip), %ymm1, %ymm2
	vpaddd	.LCPI2_18(%rip), %ymm1, %ymm3
	vpaddd	.LCPI2_19(%rip), %ymm1, %ymm4
	vpaddd	.LCPI2_20(%rip), %ymm1, %ymm5
	vpaddd	.LCPI2_21(%rip), %ymm1, %ymm6
	vpaddd	.LCPI2_22(%rip), %ymm1, %ymm7
	vpaddd	.LCPI2_23(%rip), %ymm1, %ymm1
	vinserti32x4	$1, %xmm0, %ymm19, %ymm0
	vinserti32x4	$1, %xmm28, %ymm28, %ymm20
	vpxorq	%ymm0, %ymm20, %ymm0
	vpxorq	%ymm2, %ymm20, %ymm2
	vpxorq	%ymm3, %ymm20, %ymm3
	vpxorq	%ymm4, %ymm20, %ymm4
	vpxorq	%ymm5, %ymm20, %ymm5
	vpxorq	%ymm6, %ymm20, %ymm6
	vpxorq	%ymm7, %ymm20, %ymm7
	vpxorq	%ymm1, %ymm20, %ymm1
	vinsertf32x4	$1, %xmm16, %ymm16, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovups	%ymm9, 1120(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovups	%ymm30, 832(%rsp)
	vinserti32x4	$1, %xmm30, %ymm30, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqu	%ymm9, 1088(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm23, %ymm23, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovups	%ymm9, 1056(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm24, %ymm24, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovups	%ymm9, 1024(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vinsertf128	$1, %xmm8, %ymm8, %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vmovups	%ymm8, 992(%rsp)
	vaesenc	%ymm8, %ymm1, %ymm1
	vinsertf128	$1, %xmm15, %ymm15, %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vmovups	%ymm8, 960(%rsp)
	vaesenc	%ymm8, %ymm1, %ymm1
	vmovdqu	144(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm8, 928(%rsp)
	vaesenc	%ymm8, %ymm1, %ymm1
	vmovdqu	112(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm28
	vaesenc	%ymm28, %ymm0, %ymm0
	vaesenc	%ymm28, %ymm2, %ymm2
	vaesenc	%ymm28, %ymm3, %ymm3
	vaesenc	%ymm28, %ymm4, %ymm4
	vaesenc	%ymm28, %ymm5, %ymm5
	vaesenc	%ymm28, %ymm6, %ymm6
	vaesenc	%ymm28, %ymm7, %ymm7
	vaesenc	%ymm28, %ymm1, %ymm1
	vmovdqu	80(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm30
	vaesenc	%ymm30, %ymm0, %ymm0
	vaesenc	%ymm30, %ymm2, %ymm2
	vaesenc	%ymm30, %ymm3, %ymm3
	vaesenc	%ymm30, %ymm4, %ymm4
	vaesenc	%ymm30, %ymm5, %ymm5
	vaesenc	%ymm30, %ymm6, %ymm6
	vaesenc	%ymm30, %ymm7, %ymm7
	vaesenc	%ymm30, %ymm1, %ymm1
	vmovdqu	48(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm21
	vaesenc	%ymm21, %ymm0, %ymm0
	vaesenc	%ymm21, %ymm2, %ymm2
	vaesenc	%ymm21, %ymm3, %ymm3
	vaesenc	%ymm21, %ymm4, %ymm4
	vaesenc	%ymm21, %ymm5, %ymm5
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm7, %ymm7
	vaesenc	%ymm21, %ymm1, %ymm1
	vmovdqu	16(%rsp), %ymm8
	vinserti32x4	$1, %xmm8, %ymm8, %ymm16
	vaesenc	%ymm16, %ymm0, %ymm0
	vaesenc	%ymm16, %ymm2, %ymm2
	vaesenc	%ymm16, %ymm3, %ymm3
	vaesenc	%ymm16, %ymm4, %ymm4
	vaesenc	%ymm16, %ymm5, %ymm5
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm7, %ymm7
	vaesenc	%ymm16, %ymm1, %ymm1
	vinserti32x4	$1, %xmm13, %ymm13, %ymm17
	vaesenc	%ymm17, %ymm0, %ymm0
	vaesenc	%ymm17, %ymm2, %ymm2
	vaesenc	%ymm17, %ymm3, %ymm3
	vaesenc	%ymm17, %ymm4, %ymm4
	vaesenc	%ymm17, %ymm5, %ymm5
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm7, %ymm7
	vaesenc	%ymm17, %ymm1, %ymm1
	vinserti128	$1, %xmm14, %ymm14, %ymm14
	vaesenc	%ymm14, %ymm0, %ymm0
	vaesenc	%ymm14, %ymm2, %ymm2
	vaesenc	%ymm14, %ymm3, %ymm3
	vaesenc	%ymm14, %ymm4, %ymm4
	vaesenc	%ymm14, %ymm5, %ymm5
	vaesenc	%ymm14, %ymm6, %ymm6
	vaesenc	%ymm14, %ymm7, %ymm7
	vaesenc	%ymm14, %ymm1, %ymm1
	vinserti32x4	$1, %xmm10, %ymm10, %ymm23
	vaesenclast	%ymm23, %ymm0, %ymm0
	vaesenclast	%ymm23, %ymm2, %ymm2
	vaesenclast	%ymm23, %ymm3, %ymm8
	vaesenclast	%ymm23, %ymm4, %ymm4
	vaesenclast	%ymm23, %ymm5, %ymm5
	vaesenclast	%ymm23, %ymm6, %ymm10
	vaesenclast	%ymm23, %ymm7, %ymm11
	vaesenclast	%ymm23, %ymm1, %ymm1
	vpxor	(%r9), %ymm0, %ymm3
	vpxor	32(%r9), %ymm2, %ymm9
	vpxor	64(%r9), %ymm8, %ymm8
	vpxor	96(%r9), %ymm4, %ymm7
	vpxorq	128(%r9), %ymm5, %ymm18
	vpxor	160(%r9), %ymm10, %ymm13
	vpxor	192(%r9), %ymm11, %ymm11
	vpxor	224(%r9), %ymm1, %ymm4
	vmovdqu	%ymm3, (%rdx)
	vmovdqu	%ymm9, 32(%rdx)
	vmovdqu	%ymm8, 64(%rdx)
	vmovdqu	%ymm7, 96(%rdx)
	vmovdqu64	%ymm18, 128(%rdx)
	vmovdqu	%ymm13, 160(%rdx)
	vmovdqu	%ymm11, 192(%rdx)
	addq	$-256, %r10
	vmovdqu	%ymm4, 224(%rdx)
	vpaddd	.LCPI2_24(%rip), %xmm19, %xmm0
	cmpq	$256, %r10
	jb	.LBB2_26
	vmovdqu64	%ymm27, 736(%rsp)
	vmovdqu64	%ymm22, 768(%rsp)
	vmovdqu64	%ymm31, 800(%rsp)
	vmovdqu	%ymm12, 512(%rsp)
	vmovdqu	%ymm14, 896(%rsp)
	vmovdqu64	%ymm28, 864(%rsp)
	.p2align	4
.LBB2_28:
	vmovdqu	%ymm13, 1184(%rsp)
	vmovdqu	%ymm11, 1216(%rsp)
	vmovdqu	%ymm4, 320(%rsp)
	vmovdqa	%xmm0, %xmm1
	vmovdqu	%ymm1, 352(%rsp)
	vpxorq	%ymm29, %ymm3, %ymm29
	vpaddd	.LCPI2_25(%rip), %xmm19, %xmm0
	vinserti128	$1, %xmm0, %ymm1, %ymm0
	vinserti32x4	$1, %xmm19, %ymm19, %ymm1
	vpaddd	.LCPI2_26(%rip), %ymm1, %ymm6
	vpaddd	.LCPI2_27(%rip), %ymm1, %ymm2
	vpaddd	.LCPI2_28(%rip), %ymm1, %ymm4
	vpaddd	.LCPI2_29(%rip), %ymm1, %ymm5
	vpaddd	.LCPI2_30(%rip), %ymm1, %ymm13
	vpaddd	.LCPI2_31(%rip), %ymm1, %ymm10
	vpaddd	.LCPI2_32(%rip), %ymm1, %ymm19
	vpxorq	%ymm0, %ymm20, %ymm3
	vpxorq	%ymm6, %ymm20, %ymm11
	vpxorq	%ymm2, %ymm20, %ymm12
	vpxorq	%ymm4, %ymm20, %ymm14
	vmovdqa64	%ymm25, %ymm24
	vmovdqa64	%ymm18, %ymm25
	vpxorq	%ymm5, %ymm20, %ymm15
	vpxorq	%ymm13, %ymm20, %ymm1
	vpxorq	%ymm10, %ymm20, %ymm10
	vpxorq	%ymm19, %ymm20, %ymm2
	vpclmulqdq	$0, %ymm26, %ymm29, %ymm0
	vmovups	672(%rsp), %ymm5
	vmovups	1120(%rsp), %ymm6
	vmovdqa64	%ymm7, %ymm18
	#APP
	vaesenc	%ymm6, %ymm3, %ymm3
	vaesenc	%ymm6, %ymm11, %ymm11
	vaesenc	%ymm6, %ymm12, %ymm12
	vaesenc	%ymm6, %ymm14, %ymm14
	vaesenc	%ymm6, %ymm15, %ymm15
	vaesenc	%ymm6, %ymm1, %ymm1
	vaesenc	%ymm6, %ymm10, %ymm10
	vaesenc	%ymm6, %ymm2, %ymm2
	vpunpcklqdq	%ymm9, %ymm5, %ymm7
	vpunpckhqdq	%ymm9, %ymm5, %ymm13
	vpxor	%ymm7, %ymm13, %ymm13
	vpclmulqdq	$16, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$0, %ymm9, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm9, %ymm5, %ymm7
	#NO_APP
	vmovups	%ymm13, 1152(%rsp)
	vmovdqa64	%ymm7, %ymm28
	vpxor	%ymm0, %ymm4, %ymm7
	vmovups	1088(%rsp), %ymm0
	vmovups	576(%rsp), %ymm4
	#APP
	vaesenc	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm0, %ymm11, %ymm11
	vaesenc	%ymm0, %ymm12, %ymm12
	vaesenc	%ymm0, %ymm14, %ymm14
	vaesenc	%ymm0, %ymm15, %ymm15
	vaesenc	%ymm0, %ymm1, %ymm1
	vaesenc	%ymm0, %ymm10, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm2
	vpunpcklqdq	%ymm8, %ymm4, %ymm9
	vpunpckhqdq	%ymm8, %ymm4, %ymm5
	vpxor	%ymm5, %ymm9, %ymm5
	vpclmulqdq	$16, %ymm5, %ymm5, %ymm5
	vpclmulqdq	$0, %ymm8, %ymm4, %ymm6
	vpclmulqdq	$17, %ymm8, %ymm4, %ymm9
	#NO_APP
	vmovdqa64	%ymm20, %ymm27
	vmovdqa64	%ymm9, %ymm20
	vmovdqa64	%ymm5, %ymm22
	vmovups	640(%rsp), %ymm5
	vmovups	1056(%rsp), %ymm13
	vmovdqa64	%ymm18, %ymm9
	#APP
	vaesenc	%ymm13, %ymm3, %ymm3
	vaesenc	%ymm13, %ymm11, %ymm11
	vaesenc	%ymm13, %ymm12, %ymm12
	vaesenc	%ymm13, %ymm14, %ymm14
	vaesenc	%ymm13, %ymm15, %ymm15
	vaesenc	%ymm13, %ymm1, %ymm1
	vaesenc	%ymm13, %ymm10, %ymm10
	vaesenc	%ymm13, %ymm2, %ymm2
	vpunpcklqdq	%ymm9, %ymm5, %ymm4
	vpunpckhqdq	%ymm9, %ymm5, %ymm8
	vpxor	%ymm4, %ymm8, %ymm8
	vpclmulqdq	$16, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$0, %ymm9, %ymm5, %ymm0
	vpclmulqdq	$17, %ymm9, %ymm5, %ymm4
	#NO_APP
	vmovdqa64	%ymm23, %ymm19
	vmovdqa64	%ymm17, %ymm23
	vmovdqa64	%ymm16, %ymm17
	vmovdqa64	%ymm21, %ymm18
	vmovdqa64	%ymm30, %ymm21
	vmovdqa64	%ymm8, %ymm30
	vpternlogq	$150, %ymm6, %ymm7, %ymm0
	vmovups	544(%rsp), %ymm6
	vmovups	1024(%rsp), %ymm7
	vmovdqa64	%ymm25, %ymm5
	#APP
	vaesenc	%ymm7, %ymm3, %ymm3
	vaesenc	%ymm7, %ymm11, %ymm11
	vaesenc	%ymm7, %ymm12, %ymm12
	vaesenc	%ymm7, %ymm14, %ymm14
	vaesenc	%ymm7, %ymm15, %ymm15
	vaesenc	%ymm7, %ymm1, %ymm1
	vaesenc	%ymm7, %ymm10, %ymm10
	vaesenc	%ymm7, %ymm2, %ymm2
	vpunpcklqdq	%ymm5, %ymm6, %ymm9
	vpunpckhqdq	%ymm5, %ymm6, %ymm8
	vpxor	%ymm9, %ymm8, %ymm8
	vpclmulqdq	$16, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$0, %ymm5, %ymm6, %ymm13
	vpclmulqdq	$17, %ymm5, %ymm6, %ymm9
	#NO_APP
	vmovdqa64	%ymm13, %ymm31
	vmovdqa64	%ymm9, %ymm16
	vmovdqa64	%ymm8, %ymm25
	vmovaps	%ymm2, %ymm9
	vmovaps	%ymm1, %ymm7
	vmovups	992(%rsp), %ymm13
	vmovups	608(%rsp), %ymm5
	vmovups	1184(%rsp), %ymm6
	#APP
	vaesenc	%ymm13, %ymm3, %ymm3
	vaesenc	%ymm13, %ymm11, %ymm11
	vaesenc	%ymm13, %ymm12, %ymm12
	vaesenc	%ymm13, %ymm14, %ymm14
	vaesenc	%ymm13, %ymm15, %ymm15
	vaesenc	%ymm13, %ymm7, %ymm7
	vaesenc	%ymm13, %ymm10, %ymm10
	vaesenc	%ymm13, %ymm9, %ymm9
	vpunpcklqdq	%ymm6, %ymm5, %ymm1
	vpunpckhqdq	%ymm6, %ymm5, %ymm2
	vpxor	%ymm1, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$0, %ymm6, %ymm5, %ymm8
	vpclmulqdq	$17, %ymm6, %ymm5, %ymm1
	#NO_APP
	vpternlogq	$150, %ymm31, %ymm0, %ymm8
	vmovdqa64	%ymm8, %ymm31
	vpclmulqdq	$17, %ymm26, %ymm29, %ymm0
	vpxorq	%ymm0, %ymm28, %ymm0
	vmovdqu64	864(%rsp), %ymm28
	vpternlogq	$150, %ymm20, %ymm0, %ymm4
	vmovdqa64	%ymm27, %ymm20
	vpternlogq	$150, %ymm16, %ymm4, %ymm1
	vmovdqa64	%ymm1, %ymm27
	vpunpcklqdq	%ymm26, %ymm29, %ymm0
	vpunpckhqdq	%ymm26, %ymm29, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpxor	1152(%rsp), %ymm0, %ymm0
	vmovdqa64	%ymm30, %ymm1
	vmovdqa64	%ymm21, %ymm30
	vmovdqa64	%ymm18, %ymm21
	vmovdqa64	%ymm17, %ymm16
	vmovdqa64	%ymm23, %ymm17
	vmovdqa64	%ymm19, %ymm23
	vpternlogq	$150, %ymm22, %ymm0, %ymm1
	vpternlogq	$150, %ymm25, %ymm1, %ymm2
	vmovdqa	%ymm2, %ymm1
	vmovups	704(%rsp), %ymm5
	vmovups	960(%rsp), %ymm8
	vmovups	1216(%rsp), %ymm0
	vmovaps	%ymm9, %ymm2
	#APP
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm11, %ymm11
	vaesenc	%ymm8, %ymm12, %ymm12
	vaesenc	%ymm8, %ymm14, %ymm14
	vaesenc	%ymm8, %ymm15, %ymm15
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm10, %ymm10
	vaesenc	%ymm8, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm5, %ymm4
	vpunpckhqdq	%ymm0, %ymm5, %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm0, %ymm5, %ymm6
	vpclmulqdq	$17, %ymm0, %ymm5, %ymm4
	#NO_APP
	vmovdqa64	%ymm6, %ymm22
	vmovdqa64	%ymm4, %ymm19
	vmovups	512(%rsp), %ymm13
	vmovups	928(%rsp), %ymm4
	vmovups	320(%rsp), %ymm8
	#APP
	vaesenc	%ymm4, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm11, %ymm11
	vaesenc	%ymm4, %ymm12, %ymm12
	vaesenc	%ymm4, %ymm14, %ymm14
	vaesenc	%ymm4, %ymm15, %ymm15
	vaesenc	%ymm4, %ymm7, %ymm7
	vaesenc	%ymm4, %ymm10, %ymm10
	vaesenc	%ymm4, %ymm2, %ymm2
	vpunpcklqdq	%ymm8, %ymm13, %ymm6
	vpunpckhqdq	%ymm8, %ymm13, %ymm5
	vpxor	%ymm6, %ymm5, %ymm5
	vpclmulqdq	$16, %ymm5, %ymm5, %ymm5
	vpclmulqdq	$0, %ymm8, %ymm13, %ymm0
	vpclmulqdq	$17, %ymm8, %ymm13, %ymm6
	#NO_APP
	vmovdqa64	%ymm2, %ymm18
	vmovdqa	%ymm14, %ymm13
	vmovdqu	896(%rsp), %ymm14
	vpternlogq	$150, %ymm22, %ymm31, %ymm0
	vpternlogq	$150, %ymm19, %ymm27, %ymm6
	vpternlogq	$150, %ymm9, %ymm1, %ymm5
	vaesenc	%ymm28, %ymm3, %ymm1
	vmovdqa	%ymm0, %ymm4
	vpternlogq	$150, %ymm0, %ymm6, %ymm5
	vpslldq	$8, %ymm5, %ymm0
	vpxor	%ymm0, %ymm4, %ymm0
	vpsrldq	$8, %ymm5, %ymm4
	vpclmulqdq	$16, %ymm24, %ymm0, %ymm5
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm5, %ymm0
	vmovdqa64	%ymm24, %ymm25
	vpclmulqdq	$16, %ymm24, %ymm0, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpshufd	$78, %ymm0, %ymm29
	vpternlogq	$150, %ymm4, %ymm6, %ymm29
	vaesenc	%ymm28, %ymm11, %ymm0
	vaesenc	%ymm28, %ymm12, %ymm4
	vaesenc	%ymm28, %ymm13, %ymm5
	vaesenc	%ymm28, %ymm15, %ymm6
	vaesenc	%ymm28, %ymm7, %ymm2
	vaesenc	%ymm28, %ymm10, %ymm3
	vaesenc	%ymm28, %ymm18, %ymm7
	vaesenc	%ymm30, %ymm1, %ymm1
	vaesenc	%ymm30, %ymm0, %ymm0
	vaesenc	%ymm30, %ymm4, %ymm4
	vaesenc	%ymm30, %ymm5, %ymm5
	vaesenc	%ymm30, %ymm6, %ymm6
	vaesenc	%ymm30, %ymm2, %ymm2
	vaesenc	%ymm30, %ymm3, %ymm3
	vaesenc	%ymm30, %ymm7, %ymm7
	vaesenc	%ymm21, %ymm1, %ymm1
	vaesenc	%ymm21, %ymm0, %ymm0
	vaesenc	%ymm21, %ymm4, %ymm4
	vaesenc	%ymm21, %ymm5, %ymm5
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm2, %ymm2
	vaesenc	%ymm21, %ymm3, %ymm3
	vaesenc	%ymm21, %ymm7, %ymm7
	vaesenc	%ymm16, %ymm1, %ymm1
	vaesenc	%ymm16, %ymm0, %ymm0
	vaesenc	%ymm16, %ymm4, %ymm4
	vaesenc	%ymm16, %ymm5, %ymm5
	vaesenc	%ymm16, %ymm6, %ymm6
	vaesenc	%ymm16, %ymm2, %ymm2
	vaesenc	%ymm16, %ymm3, %ymm3
	vaesenc	%ymm16, %ymm7, %ymm7
	vaesenc	%ymm17, %ymm1, %ymm1
	vaesenc	%ymm17, %ymm0, %ymm0
	vaesenc	%ymm17, %ymm4, %ymm4
	vaesenc	%ymm17, %ymm5, %ymm5
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm2, %ymm2
	vaesenc	%ymm17, %ymm3, %ymm3
	vaesenc	%ymm17, %ymm7, %ymm7
	vaesenc	%ymm14, %ymm1, %ymm1
	vaesenc	%ymm14, %ymm0, %ymm0
	vaesenc	%ymm14, %ymm4, %ymm4
	vaesenc	%ymm14, %ymm5, %ymm5
	vaesenc	%ymm14, %ymm6, %ymm6
	vaesenc	%ymm14, %ymm2, %ymm2
	vaesenc	%ymm14, %ymm3, %ymm3
	vaesenc	%ymm14, %ymm7, %ymm10
	vaesenclast	%ymm23, %ymm1, %ymm1
	vaesenclast	%ymm23, %ymm0, %ymm0
	vaesenclast	%ymm23, %ymm4, %ymm4
	vaesenclast	%ymm23, %ymm5, %ymm5
	vaesenclast	%ymm23, %ymm6, %ymm6
	vaesenclast	%ymm23, %ymm2, %ymm2
	vaesenclast	%ymm23, %ymm3, %ymm11
	vpxor	(%rax), %ymm1, %ymm3
	vpxor	32(%rax), %ymm0, %ymm9
	vpxor	64(%rax), %ymm4, %ymm8
	vpxor	96(%rax), %ymm5, %ymm7
	vpxorq	128(%rax), %ymm6, %ymm18
	vpxor	160(%rax), %ymm2, %ymm13
	vpxor	192(%rax), %ymm11, %ymm11
	vaesenclast	%ymm23, %ymm10, %ymm0
	vpxor	224(%rax), %ymm0, %ymm4
	leaq	256(%rax), %rax
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm9, 32(%rcx)
	vmovdqu	%ymm8, 64(%rcx)
	vmovdqu	%ymm7, 96(%rcx)
	vmovdqu64	%ymm18, 128(%rcx)
	vmovdqu	%ymm13, 160(%rcx)
	vmovdqu	%ymm11, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	addq	$256, %rcx
	addq	$-256, %r10
	vmovdqu	352(%rsp), %ymm0
	vmovdqa64	%xmm0, %xmm19
	vpaddd	.LCPI2_24(%rip), %xmm0, %xmm0
	cmpq	$255, %r10
	ja	.LBB2_28
	vmovdqu64	288(%rsp), %ymm28
	vmovupd	-80(%rsp), %ymm15
	vmovdqu	512(%rsp), %ymm12
	vmovdqu64	800(%rsp), %ymm31
	vmovdqu64	768(%rsp), %ymm22
	vmovdqu64	736(%rsp), %ymm27
	jmp	.LBB2_30
.LBB2_17:
	vmovdqa64	%ymm12, %ymm17
	vpunpcklqdq	%xmm2, %xmm3, %xmm0
	cmpq	$32, %r10
	jae	.LBB2_31
.LBB2_19:
	vmovaps	%ymm16, %ymm31
	vmovdqa64	%ymm28, %ymm27
	movq	%rdx, %rax
	movq	%r9, %rcx
	vmovdqa64	%xmm19, %xmm28
	jmp	.LBB2_33
.LBB2_26:
	vmovdqu64	288(%rsp), %ymm28
.LBB2_30:
	vpxorq	%ymm29, %ymm3, %ymm1
	vpunpcklqdq	%ymm4, %ymm12, %ymm2
	vpunpckhqdq	%ymm4, %ymm12, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm4, %ymm12, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vmovdqa64	%ymm12, %ymm17
	vpclmulqdq	$17, %ymm4, %ymm12, %ymm4
	vmovdqu	704(%rsp), %ymm10
	vpunpcklqdq	%ymm11, %ymm10, %ymm5
	vpunpckhqdq	%ymm11, %ymm10, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm11, %ymm10, %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$17, %ymm11, %ymm10, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpmovsxbq	.LCPI2_35(%rip), %ymm5
	vmovdqa64	%ymm22, %ymm6
	vpermt2q	%ymm13, %ymm5, %ymm6
	vpmovsxbq	.LCPI2_36(%rip), %ymm10
	vpermt2q	%ymm13, %ymm10, %ymm22
	vpxorq	%ymm6, %ymm22, %ymm6
	vmovdqu	608(%rsp), %ymm12
	vpclmulqdq	$0, %ymm13, %ymm12, %ymm11
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm13, %ymm12, %ymm12
	vmovdqu64	544(%rsp), %ymm16
	vpunpcklqdq	%ymm18, %ymm16, %ymm13
	vpunpckhqdq	%ymm18, %ymm16, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm18, %ymm16, %ymm14
	vpternlogq	$150, %ymm11, %ymm3, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm3
	vpternlogq	$150, %ymm6, %ymm2, %ymm3
	vpclmulqdq	$17, %ymm18, %ymm16, %ymm2
	vpternlogq	$150, %ymm12, %ymm4, %ymm2
	vmovdqa64	%ymm27, %ymm4
	vpermt2q	%ymm7, %ymm5, %ymm4
	vpermt2q	%ymm7, %ymm10, %ymm27
	vpxorq	%ymm4, %ymm27, %ymm4
	vmovdqu	640(%rsp), %ymm11
	vpclmulqdq	$0, %ymm7, %ymm11, %ymm6
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm7, %ymm11, %ymm7
	vmovdqu	576(%rsp), %ymm13
	vpunpcklqdq	%ymm8, %ymm13, %ymm11
	vpunpckhqdq	%ymm8, %ymm13, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm8, %ymm13, %ymm12
	vpternlogq	$150, %ymm6, %ymm14, %ymm12
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm6
	vpternlogq	$150, %ymm4, %ymm3, %ymm6
	vpclmulqdq	$17, %ymm8, %ymm13, %ymm3
	vpternlogq	$150, %ymm7, %ymm2, %ymm3
	vpermi2q	%ymm9, %ymm31, %ymm5
	vpermt2q	%ymm9, %ymm10, %ymm31
	vpxorq	%ymm5, %ymm31, %ymm2
	vmovdqu	672(%rsp), %ymm5
	vpclmulqdq	$0, %ymm9, %ymm5, %ymm4
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm9, %ymm5, %ymm5
	vpunpcklqdq	%ymm1, %ymm26, %ymm7
	vpunpckhqdq	%ymm1, %ymm26, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm1, %ymm26, %ymm8
	vpternlogq	$150, %ymm4, %ymm12, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm4
	vpternlogq	$150, %ymm2, %ymm6, %ymm4
	vpclmulqdq	$17, %ymm1, %ymm26, %ymm1
	vpternlogq	$150, %ymm5, %ymm3, %ymm1
	vpternlogq	$150, %ymm8, %ymm1, %ymm4
	vpslldq	$8, %ymm4, %ymm2
	vpxor	%ymm2, %ymm8, %ymm2
	vpsrldq	$8, %ymm4, %ymm3
	vpclmulqdq	$16, %ymm25, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm25, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm2, %ymm29
	vpternlogq	$150, %ymm3, %ymm1, %ymm29
	movq	%rcx, %rdx
	movq	%rax, %r9
	vmovdqa64	%xmm0, %xmm19
	vmovups	480(%rsp), %ymm16
	vmovupd	832(%rsp), %ymm30
	vmovupd	448(%rsp), %ymm23
	vmovupd	416(%rsp), %ymm24
	vmovupd	384(%rsp), %ymm26
	vmovdqa	192(%rsp), %xmm2
	vmovdqa	176(%rsp), %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm0
	cmpq	$32, %r10
	jb	.LBB2_19
.LBB2_31:
	vmovdqa64	%ymm28, %ymm27
	vinserti32x4	$1, %xmm28, %ymm28, %ymm1
	vmovaps	%ymm16, %ymm31
	vinsertf32x4	$1, %xmm16, %ymm16, %ymm3
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm4
	vinsertf32x4	$1, %xmm23, %ymm23, %ymm5
	vinsertf32x4	$1, %xmm24, %ymm24, %ymm6
	vinsertf32x4	$1, %xmm26, %ymm26, %ymm7
	vinsertf128	$1, %xmm15, %ymm15, %ymm8
	vmovdqu	144(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm9
	vmovdqu	112(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm10
	vmovdqu	80(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm11
	vmovdqu	48(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm12
	vmovdqu	16(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm13
	vmovdqu	-16(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm14
	vmovdqu	-48(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm15
	vmovdqu	256(%rsp), %ymm2
	vinserti32x4	$1, %xmm2, %ymm2, %ymm16
	vpmovsxbq	.LCPI2_37(%rip), %xmm18
	vpmovsxbq	.LCPI2_38(%rip), %xmm20
	.p2align	4
.LBB2_32:
	leaq	32(%r9), %rcx
	leaq	32(%rdx), %rax
	addq	$-32, %r10
	vpaddd	%xmm18, %xmm19, %xmm2
	vpaddd	%xmm20, %xmm19, %xmm28
	vinserti32x4	$1, %xmm2, %ymm19, %ymm2
	vpxor	%ymm2, %ymm1, %ymm2
	vaesenc	%ymm3, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm5, %ymm2, %ymm2
	vaesenc	%ymm6, %ymm2, %ymm2
	vaesenc	%ymm7, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm10, %ymm2, %ymm2
	vaesenc	%ymm11, %ymm2, %ymm2
	vaesenc	%ymm12, %ymm2, %ymm2
	vaesenc	%ymm13, %ymm2, %ymm2
	vaesenc	%ymm14, %ymm2, %ymm2
	vaesenc	%ymm15, %ymm2, %ymm2
	vaesenclast	%ymm16, %ymm2, %ymm2
	vpxor	(%r9), %ymm2, %ymm2
	vmovdqu	%ymm2, (%rdx)
	vpxorq	%ymm29, %ymm2, %ymm2
	vpunpcklqdq	%ymm2, %ymm17, %ymm19
	vpunpckhqdq	%ymm2, %ymm17, %ymm21
	vpxorq	%ymm19, %ymm21, %ymm19
	vpclmulqdq	$0, %ymm2, %ymm17, %ymm21
	vpclmulqdq	$1, %ymm19, %ymm19, %ymm19
	vpclmulqdq	$17, %ymm2, %ymm17, %ymm2
	vpternlogq	$150, %ymm21, %ymm2, %ymm19
	vpslldq	$8, %ymm19, %ymm22
	vpxorq	%ymm22, %ymm21, %ymm21
	vpsrldq	$8, %ymm19, %ymm19
	vpclmulqdq	$16, %ymm25, %ymm21, %ymm22
	vpshufd	$78, %ymm21, %ymm21
	vpxorq	%ymm21, %ymm22, %ymm21
	vpclmulqdq	$16, %ymm25, %ymm21, %ymm22
	vpxorq	%ymm19, %ymm22, %ymm19
	vpshufd	$78, %ymm21, %ymm29
	vpternlogq	$150, %ymm19, %ymm2, %ymm29
	movq	%rax, %rdx
	vmovdqa64	%xmm28, %xmm19
	movq	%rcx, %r9
	cmpq	$31, %r10
	ja	.LBB2_32
.LBB2_33:
	vmovdqa	208(%rsp), %xmm1
	vpunpcklqdq	224(%rsp), %xmm1, %xmm1
	vpsllq	$3, %xmm0, %xmm0
	testq	%r10, %r10
	je	.LBB2_34
	movl	$-1, %edx
	bzhil	%r10d, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %ymm2 {%k1} {z}
	vpaddd	.LCPI2_0(%rip), %xmm28, %xmm3
	vinserti32x4	$1, %xmm3, %ymm28, %ymm3
	vinserti32x4	$1, %xmm27, %ymm27, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm23, %ymm23, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm24, %ymm24, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm26, %ymm26, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-80(%rsp), %ymm6
	vinserti128	$1, %xmm6, %ymm6, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	144(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	112(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	80(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	48(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	16(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-16(%rsp), %ymm7
	vinserti128	$1, %xmm7, %ymm7, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-48(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	256(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm4
	vaesenclast	%ymm4, %ymm3, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vmovdqu8	%ymm2, (%rax) {%k1}
	vmovdqu8	(%rax), %ymm2 {%k1} {z}
	vpxorq	%ymm2, %ymm29, %ymm2
	cmpq	$17, %r10
	vmovdqu	-112(%rsp), %ymm3
	jae	.LBB2_37
	vmovaps	-128(%rsp), %xmm3
.LBB2_37:
	vinserti128	$1, %xmm3, %ymm3, %ymm3
	vpunpcklqdq	%ymm2, %ymm3, %ymm4
	vpunpckhqdq	%ymm2, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm2, %ymm3, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm3, %ymm2
	vpternlogq	$150, %ymm5, %ymm2, %ymm4
	vpslldq	$8, %ymm4, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm25, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm25, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpshufd	$78, %ymm3, %ymm29
	vpternlogq	$150, %ymm4, %ymm2, %ymm29
	jmp	.LBB2_38
.LBB2_34:
	vmovdqu	-80(%rsp), %ymm6
	vmovdqu	-16(%rsp), %ymm7
	vmovdqu	-48(%rsp), %ymm8
	vmovdqu	256(%rsp), %ymm9
.LBB2_38:
	vextracti32x4	$1, %ymm29, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxorq	%xmm0, %xmm29, %xmm0
	vmovdqa	-128(%rsp), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_13(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$120, .LCPI2_33(%rip), %xmm0, %xmm27
	vaesenc	%xmm31, %xmm27, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm23, %xmm0, %xmm0
	vaesenc	%xmm24, %xmm0, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	16(%rsp), %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenclast	%xmm9, %xmm0, %xmm0
	vpxor	240(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_39:
	addq	$1256, %rsp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmsiv_tigerlake_is_supported,@function
haberdashery_aes256gcmsiv_tigerlake_is_supported:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %r9d
	movl	%edx, %r10d
	notl	%r10d
	notl	%r9d
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r11
	cpuid
	xchgq	%rbx, %r11

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	movl	$7, %eax
	movl	$1, %ecx
	#APP

	movq	%rbx, %rbx
	cpuid
	xchgq	%rbx, %rbx

	#NO_APP
	andl	$1993871875, %r9d
	andl	$125829120, %r10d
	orl	%r9d, %r10d
	jne	.LBB3_2
	notl	%r8d
	notl	%r11d
	andl	$-240189143, %r11d
	andl	$415260490, %r8d
	orl	%r11d, %r8d
	sete	%al
	shrl	$8, %edi
	andl	$1, %edi
	andb	%al, %dil
	movzbl	%dil, %esi
.LBB3_2:
	movl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

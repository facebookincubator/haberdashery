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
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_init
	.p2align	4, 0x90
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
.LCPI1_23:
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
.LCPI1_16:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_17:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_18:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI1_22:
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
.LCPI1_24:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
.LCPI1_25:
	.byte	2
	.byte	0
	.byte	3
	.byte	0
.LCPI1_26:
	.byte	4
	.byte	0
	.byte	5
	.byte	0
.LCPI1_27:
	.byte	6
	.byte	0
	.byte	7
	.byte	0
.LCPI1_28:
	.byte	8
	.byte	0
	.byte	9
	.byte	0
.LCPI1_29:
	.byte	10
	.byte	0
	.byte	11
	.byte	0
.LCPI1_30:
	.byte	12
	.byte	0
	.byte	13
	.byte	0
.LCPI1_31:
	.byte	14
	.byte	0
	.byte	15
	.byte	0
	.section	.rodata,"a",@progbits
.LCPI1_32:
	.byte	16
	.byte	0
.LCPI1_33:
	.byte	1
	.byte	0
.LCPI1_34:
	.byte	4
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_encrypt,@function
haberdashery_aes256gcmsiv_tigerlake_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$400, %rsp
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -16
	movq	416(%rsp), %r10
	xorl	%eax, %eax
	cmpq	432(%rsp), %r10
	jne	.LBB1_49
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r11b
	cmpq	%rax, %r10
	setb	%bl
	andb	%r11b, %bl
	cmpq	$16, 448(%rsp)
	sete	%r11b
	cmpq	$12, %rdx
	sete	%al
	andb	%r11b, %al
	andb	%bl, %al
	cmpb	$1, %al
	jne	.LBB1_48
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
	vpunpcklqdq	%xmm4, %xmm1, %xmm24
	vpunpcklqdq	%xmm5, %xmm0, %xmm31
	vpslldq	$4, %xmm24, %xmm2
	vxorpd	%xmm13, %xmm13, %xmm13
	vpunpcklqdq	%xmm1, %xmm13, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vpbroadcastd	.LCPI1_24(%rip), %xmm16
	vpshufb	%xmm16, %xmm31, %xmm2
	vpbroadcastq	.LCPI1_6(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm7
	vpternlogq	$150, %xmm1, %xmm24, %xmm7
	vpslldq	$4, %xmm31, %xmm1
	vpunpcklqdq	%xmm0, %xmm13, %xmm2
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpshufd	$255, %xmm7, %xmm1
	vaesenclast	%xmm13, %xmm1, %xmm8
	vpternlogq	$150, %xmm0, %xmm31, %xmm8
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpslldq	$12, %xmm7, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_7(%rip), %xmm0
	vpshufb	%xmm16, %xmm8, %xmm1
	vaesenclast	%xmm0, %xmm1, %xmm9
	vpternlogq	$150, %xmm2, %xmm7, %xmm9
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm9, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm10
	vpternlogq	$150, %xmm2, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpslldq	$12, %xmm9, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm16, %xmm10, %xmm0
	vpbroadcastq	.LCPI1_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm11
	vpternlogq	$150, %xmm2, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpslldq	$12, %xmm10, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm11, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm12
	vpternlogq	$150, %xmm2, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm16, %xmm12, %xmm0
	vpbroadcastq	.LCPI1_9(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm11, %xmm3
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpslldq	$12, %xmm12, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm3, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm27
	vpternlogq	$150, %xmm2, %xmm12, %xmm27
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastq	.LCPI1_10(%rip), %xmm0
	vpshufb	%xmm16, %xmm27, %xmm1
	vaesenclast	%xmm0, %xmm1, %xmm28
	vmovups	%ymm3, 336(%rsp)
	vpternlogq	$150, %xmm2, %xmm3, %xmm28
	vpslldq	$4, %xmm27, %xmm0
	vpslldq	$8, %xmm27, %xmm1
	vpslldq	$12, %xmm27, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm28, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm29
	vpternlogq	$150, %xmm2, %xmm27, %xmm29
	vpslldq	$4, %xmm28, %xmm0
	vpslldq	$8, %xmm28, %xmm1
	vpslldq	$12, %xmm28, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm16, %xmm29, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm30
	vpternlogq	$150, %xmm2, %xmm28, %xmm30
	vpslldq	$4, %xmm29, %xmm6
	vpslldq	$8, %xmm29, %xmm0
	vmovapd	%xmm0, -128(%rsp)
	vpslldq	$12, %xmm29, %xmm23
	vpshufd	$255, %xmm30, %xmm0
	vmovdqa	%xmm0, -96(%rsp)
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %ymm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm2
	vpshufd	$78, %xmm0, %xmm17
	vpternlogq	$150, %xmm1, %xmm2, %xmm17
	vpclmulqdq	$0, %xmm17, %xmm17, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm17, %xmm17, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	vinserti32x4	$1, %xmm0, %ymm0, %ymm18
	vinserti32x4	$1, %xmm0, %ymm17, %ymm0
	vpclmulqdq	$0, %ymm0, %ymm18, %ymm1
	vpunpckhqdq	%ymm0, %ymm18, %ymm2
	vpunpcklqdq	%ymm0, %ymm18, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm0, %ymm18, %ymm0
	vpternlogq	$150, %ymm1, %ymm0, %ymm2
	vpslldq	$8, %ymm2, %ymm3
	vpxor	%ymm3, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpclmulqdq	$16, %ymm15, %ymm1, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpshufd	$78, %ymm1, %ymm1
	vpternlogq	$150, %ymm2, %ymm0, %ymm1
	vextracti32x4	$1, %ymm1, %xmm22
	vpclmulqdq	$0, %ymm1, %ymm18, %ymm0
	vpunpckhqdq	%ymm1, %ymm18, %ymm2
	vpunpcklqdq	%ymm1, %ymm18, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm1, %ymm18, %ymm3
	vpternlogq	$150, %ymm0, %ymm3, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm0, %ymm4
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm4, %ymm0
	vpclmulqdq	$16, %ymm15, %ymm0, %ymm4
	vpsrldq	$8, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpshufd	$78, %ymm0, %ymm0
	vpternlogq	$150, %ymm2, %ymm3, %ymm0
	vextracti32x4	$1, %ymm0, %xmm25
	vpunpcklqdq	%ymm0, %ymm18, %ymm2
	vpunpckhqdq	%ymm0, %ymm18, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm0, %ymm18, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm0, %ymm18, %ymm4
	vpternlogq	$150, %ymm3, %ymm4, %ymm2
	vpslldq	$8, %ymm2, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vpshufd	$78, %ymm3, %ymm3
	vpternlogq	$150, %ymm2, %ymm4, %ymm3
	vextracti128	$1, %ymm3, %xmm4
	vpxord	%xmm26, %xmm26, %xmm26
	vpermq	$68, %ymm1, %ymm19
	vpermq	$68, %ymm0, %ymm20
	vpermq	$68, %ymm3, %ymm21
	cmpq	$256, %r8
	vmovups	%ymm27, 144(%rsp)
	vmovups	%ymm28, 112(%rsp)
	vmovups	%ymm29, 80(%rsp)
	vmovdqu64	%ymm30, 48(%rsp)
	vmovups	%ymm31, 176(%rsp)
	vmovups	%ymm24, -64(%rsp)
	vmovdqu	%ymm4, 16(%rsp)
	jb	.LBB1_6
	vmovapd	%xmm6, -32(%rsp)
	vinserti32x4	$1, %xmm17, %ymm17, %ymm0
	vmovdqu64	%ymm22, -16(%rsp)
	vinserti32x4	$1, %xmm22, %ymm22, %ymm1
	vmovdqu64	%ymm25, 368(%rsp)
	vinserti32x4	$1, %xmm25, %ymm25, %ymm2
	vinserti128	$1, %xmm4, %ymm4, %ymm3
	movq	%r8, %rdx
	.p2align	4, 0x90
.LBB1_4:
	vmovdqu	32(%rcx), %ymm5
	vmovdqu64	64(%rcx), %ymm30
	vmovdqu64	96(%rcx), %ymm31
	vmovdqu64	128(%rcx), %ymm22
	vmovdqu64	160(%rcx), %ymm24
	vmovdqu64	192(%rcx), %ymm25
	vmovdqu64	224(%rcx), %ymm16
	vpxorq	(%rcx), %ymm26, %ymm4
	addq	$256, %rcx
	addq	$-256, %rdx
	vpunpcklqdq	%ymm16, %ymm0, %ymm26
	vpunpckhqdq	%ymm16, %ymm0, %ymm27
	vpxorq	%ymm26, %ymm27, %ymm26
	vpclmulqdq	$0, %ymm16, %ymm0, %ymm27
	vpclmulqdq	$1, %ymm26, %ymm26, %ymm26
	vpclmulqdq	$17, %ymm16, %ymm0, %ymm16
	vpunpcklqdq	%ymm25, %ymm18, %ymm28
	vpunpckhqdq	%ymm25, %ymm18, %ymm29
	vpxorq	%ymm28, %ymm29, %ymm28
	vpclmulqdq	$0, %ymm25, %ymm18, %ymm29
	vpxorq	%ymm27, %ymm29, %ymm27
	vpclmulqdq	$1, %ymm28, %ymm28, %ymm28
	vpxorq	%ymm26, %ymm28, %ymm26
	vpclmulqdq	$17, %ymm25, %ymm18, %ymm25
	vpxorq	%ymm16, %ymm25, %ymm16
	vpunpcklqdq	%ymm24, %ymm19, %ymm25
	vpunpckhqdq	%ymm24, %ymm19, %ymm28
	vpxorq	%ymm25, %ymm28, %ymm25
	vpclmulqdq	$0, %ymm24, %ymm19, %ymm28
	vpclmulqdq	$1, %ymm25, %ymm25, %ymm25
	vpclmulqdq	$17, %ymm24, %ymm19, %ymm24
	vpunpcklqdq	%ymm22, %ymm1, %ymm29
	vpunpckhqdq	%ymm22, %ymm1, %ymm6
	vpxorq	%ymm29, %ymm6, %ymm6
	vpclmulqdq	$0, %ymm22, %ymm1, %ymm29
	vpternlogq	$150, %ymm28, %ymm27, %ymm29
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpternlogq	$150, %ymm25, %ymm26, %ymm6
	vpclmulqdq	$17, %ymm22, %ymm1, %ymm22
	vpternlogq	$150, %ymm24, %ymm16, %ymm22
	vpunpcklqdq	%ymm31, %ymm20, %ymm16
	vpunpckhqdq	%ymm31, %ymm20, %ymm24
	vpxorq	%ymm16, %ymm24, %ymm16
	vpclmulqdq	$0, %ymm31, %ymm20, %ymm24
	vpclmulqdq	$1, %ymm16, %ymm16, %ymm16
	vpclmulqdq	$17, %ymm31, %ymm20, %ymm25
	vpunpcklqdq	%ymm30, %ymm2, %ymm26
	vpunpckhqdq	%ymm30, %ymm2, %ymm27
	vpxorq	%ymm26, %ymm27, %ymm26
	vpclmulqdq	$0, %ymm30, %ymm2, %ymm27
	vpternlogq	$150, %ymm24, %ymm29, %ymm27
	vpclmulqdq	$1, %ymm26, %ymm26, %ymm24
	vpternlogq	$150, %ymm16, %ymm6, %ymm24
	vpclmulqdq	$17, %ymm30, %ymm2, %ymm6
	vpternlogq	$150, %ymm25, %ymm22, %ymm6
	vpunpcklqdq	%ymm5, %ymm21, %ymm16
	vpunpckhqdq	%ymm5, %ymm21, %ymm22
	vpxorq	%ymm16, %ymm22, %ymm16
	vpclmulqdq	$0, %ymm5, %ymm21, %ymm22
	vpclmulqdq	$1, %ymm16, %ymm16, %ymm16
	vpclmulqdq	$17, %ymm5, %ymm21, %ymm5
	vpunpcklqdq	%ymm4, %ymm3, %ymm25
	vpunpckhqdq	%ymm4, %ymm3, %ymm26
	vpxorq	%ymm25, %ymm26, %ymm25
	vpclmulqdq	$0, %ymm4, %ymm3, %ymm26
	vpternlogq	$150, %ymm22, %ymm27, %ymm26
	vpclmulqdq	$1, %ymm25, %ymm25, %ymm22
	vpternlogq	$150, %ymm16, %ymm24, %ymm22
	vpclmulqdq	$17, %ymm4, %ymm3, %ymm4
	vpternlogq	$150, %ymm5, %ymm6, %ymm4
	vpternlogq	$150, %ymm26, %ymm4, %ymm22
	vpslldq	$8, %ymm22, %ymm5
	vpxorq	%ymm5, %ymm26, %ymm5
	vpsrldq	$8, %ymm22, %ymm6
	vpclmulqdq	$16, %ymm15, %ymm5, %ymm16
	vpshufd	$78, %ymm5, %ymm5
	vpxorq	%ymm5, %ymm16, %ymm5
	vpclmulqdq	$16, %ymm15, %ymm5, %ymm16
	vpxorq	%ymm6, %ymm16, %ymm6
	vpshufd	$78, %ymm5, %ymm26
	vpternlogq	$150, %ymm6, %ymm4, %ymm26
	cmpq	$255, %rdx
	ja	.LBB1_4
	vmovupd	144(%rsp), %ymm27
	vmovupd	112(%rsp), %ymm28
	vmovupd	80(%rsp), %ymm29
	vmovdqu64	48(%rsp), %ymm30
	vmovups	176(%rsp), %ymm31
	vmovupd	-64(%rsp), %ymm24
	vpbroadcastd	.LCPI1_24(%rip), %xmm16
	vmovdqu64	-16(%rsp), %ymm22
	vmovdqu64	368(%rsp), %ymm25
	vmovapd	-32(%rsp), %xmm6
	jmp	.LBB1_7
.LBB1_6:
	movq	%r8, %rdx
.LBB1_7:
	vpternlogq	$150, -128(%rsp), %xmm6, %xmm23
	vmovdqa	-96(%rsp), %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm6
	cmpq	$32, %rdx
	jb	.LBB1_14
	vinserti32x4	$1, %xmm17, %ymm17, %ymm0
	leaq	-32(%rdx), %rdi
	testb	$32, %dil
	jne	.LBB1_9
	vpxorq	(%rcx), %ymm26, %ymm1
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
	vpshufd	$78, %ymm3, %ymm26
	vpternlogq	$150, %ymm2, %ymm1, %ymm26
	movq	%rdi, %rdx
	cmpq	$32, %rdi
	jb	.LBB1_10
	jmp	.LBB1_13
.LBB1_9:
	cmpq	$32, %rdi
	jae	.LBB1_13
.LBB1_10:
	vpternlogq	$150, %xmm23, %xmm29, %xmm6
	testq	%rdi, %rdi
	jne	.LBB1_15
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_13:
	vpxorq	(%rcx), %ymm26, %ymm1
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
	vpshufd	$78, %ymm2, %ymm26
	vpternlogq	$150, %ymm1, %ymm3, %ymm26
	cmpq	$31, %rdx
	ja	.LBB1_13
.LBB1_14:
	movq	%rdx, %rdi
	vpternlogq	$150, %xmm23, %xmm29, %xmm6
	testq	%rdi, %rdi
	je	.LBB1_18
.LBB1_15:
	movl	$-1, %edx
	bzhil	%edi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %ymm0 {%k1} {z}
	vpxorq	%ymm0, %ymm26, %ymm0
	vmovdqa64	%xmm17, %xmm1
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
	vpshufd	$78, %ymm1, %ymm26
	vpternlogq	$150, %ymm2, %ymm0, %ymm26
.LBB1_18:
	vpslldq	$4, %xmm30, %xmm0
	vpslldq	$8, %xmm30, %xmm1
	vpslldq	$12, %xmm30, %xmm23
	vpshufb	%xmm16, %xmm6, %xmm2
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	vmovq	%r10, %xmm4
	vmovq	%r8, %xmm5
	cmpq	$256, %r10
	vmovdqu	%ymm6, -128(%rsp)
	vmovups	%ymm9, 304(%rsp)
	vmovups	%ymm10, 272(%rsp)
	vmovups	%ymm11, 240(%rsp)
	vmovups	%ymm12, 208(%rsp)
	jb	.LBB1_22
	vmovapd	%ymm8, %ymm11
	vmovapd	%ymm7, %ymm12
	vinserti32x4	$1, %xmm17, %ymm17, %ymm13
	vinserti32x4	$1, %xmm22, %ymm22, %ymm16
	vinserti32x4	$1, %xmm25, %ymm25, %ymm22
	vmovdqu	16(%rsp), %ymm3
	vinserti32x4	$1, %xmm3, %ymm3, %ymm24
	movq	%r9, %rcx
	movq	%r10, %rdx
	.p2align	4, 0x90
.LBB1_20:
	vmovdqu64	32(%rcx), %ymm27
	vmovdqu	64(%rcx), %ymm6
	vmovdqu64	96(%rcx), %ymm28
	vmovdqu64	128(%rcx), %ymm29
	vmovdqu64	160(%rcx), %ymm30
	vmovdqu64	192(%rcx), %ymm31
	vmovdqu	224(%rcx), %ymm3
	vpxorq	(%rcx), %ymm26, %ymm25
	addq	$256, %rcx
	addq	$-256, %rdx
	vpunpcklqdq	%ymm3, %ymm13, %ymm26
	vpunpckhqdq	%ymm3, %ymm13, %ymm7
	vpxorq	%ymm26, %ymm7, %ymm7
	vpclmulqdq	$0, %ymm3, %ymm13, %ymm26
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm3, %ymm13, %ymm3
	vpunpcklqdq	%ymm31, %ymm18, %ymm8
	vpunpckhqdq	%ymm31, %ymm18, %ymm9
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$0, %ymm31, %ymm18, %ymm9
	vpxorq	%ymm26, %ymm9, %ymm9
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$17, %ymm31, %ymm18, %ymm8
	vpxor	%ymm3, %ymm8, %ymm3
	vpunpcklqdq	%ymm30, %ymm19, %ymm8
	vpunpckhqdq	%ymm30, %ymm19, %ymm26
	vpxorq	%ymm8, %ymm26, %ymm8
	vpclmulqdq	$0, %ymm30, %ymm19, %ymm26
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm30, %ymm19, %ymm30
	vpunpcklqdq	%ymm29, %ymm16, %ymm31
	vpunpckhqdq	%ymm29, %ymm16, %ymm10
	vpxorq	%ymm31, %ymm10, %ymm10
	vpclmulqdq	$0, %ymm29, %ymm16, %ymm31
	vpternlogq	$150, %ymm26, %ymm9, %ymm31
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm9
	vpternlogq	$150, %ymm8, %ymm7, %ymm9
	vpclmulqdq	$17, %ymm29, %ymm16, %ymm7
	vpternlogq	$150, %ymm30, %ymm3, %ymm7
	vpunpcklqdq	%ymm28, %ymm20, %ymm3
	vpunpckhqdq	%ymm28, %ymm20, %ymm8
	vpxor	%ymm3, %ymm8, %ymm3
	vpclmulqdq	$0, %ymm28, %ymm20, %ymm8
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm28, %ymm20, %ymm10
	vpunpcklqdq	%ymm6, %ymm22, %ymm26
	vpunpckhqdq	%ymm6, %ymm22, %ymm28
	vpxorq	%ymm26, %ymm28, %ymm26
	vpclmulqdq	$0, %ymm6, %ymm22, %ymm28
	vpternlogq	$150, %ymm8, %ymm31, %ymm28
	vpclmulqdq	$1, %ymm26, %ymm26, %ymm8
	vpternlogq	$150, %ymm3, %ymm9, %ymm8
	vpclmulqdq	$17, %ymm6, %ymm22, %ymm3
	vpternlogq	$150, %ymm10, %ymm7, %ymm3
	vpunpcklqdq	%ymm27, %ymm21, %ymm6
	vpunpckhqdq	%ymm27, %ymm21, %ymm7
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$0, %ymm27, %ymm21, %ymm7
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm27, %ymm21, %ymm9
	vpunpcklqdq	%ymm25, %ymm24, %ymm10
	vpunpckhqdq	%ymm25, %ymm24, %ymm26
	vpxorq	%ymm10, %ymm26, %ymm10
	vpclmulqdq	$0, %ymm25, %ymm24, %ymm26
	vpternlogq	$150, %ymm7, %ymm28, %ymm26
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm7
	vpternlogq	$150, %ymm6, %ymm8, %ymm7
	vpclmulqdq	$17, %ymm25, %ymm24, %ymm6
	vpternlogq	$150, %ymm9, %ymm3, %ymm6
	vpternlogq	$150, %ymm26, %ymm6, %ymm7
	vpslldq	$8, %ymm7, %ymm3
	vpxorq	%ymm3, %ymm26, %ymm3
	vpsrldq	$8, %ymm7, %ymm7
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm8
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm8, %ymm3
	vpclmulqdq	$16, %ymm15, %ymm3, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpshufd	$78, %ymm3, %ymm26
	vpternlogq	$150, %ymm7, %ymm6, %ymm26
	cmpq	$255, %rdx
	ja	.LBB1_20
	vmovapd	%ymm12, %ymm7
	vmovapd	%ymm11, %ymm8
	vmovupd	304(%rsp), %ymm9
	vmovupd	272(%rsp), %ymm10
	vmovupd	240(%rsp), %ymm11
	vmovupd	208(%rsp), %ymm12
	vmovupd	144(%rsp), %ymm27
	vmovupd	112(%rsp), %ymm28
	vmovupd	80(%rsp), %ymm29
	vmovupd	48(%rsp), %ymm30
	vmovups	176(%rsp), %ymm31
	vmovupd	-64(%rsp), %ymm24
	vmovdqu	-128(%rsp), %ymm6
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	jmp	.LBB1_23
.LBB1_22:
	movq	%r10, %rdx
	movq	%r9, %rcx
.LBB1_23:
	vmovd	8(%rsi), %xmm13
	vmovq	(%rsi), %xmm16
	vpternlogq	$150, %xmm1, %xmm0, %xmm23
	vaesenclast	%xmm3, %xmm2, %xmm25
	vpunpcklqdq	%xmm4, %xmm5, %xmm0
	cmpq	$32, %rdx
	jb	.LBB1_29
	vinserti32x4	$1, %xmm17, %ymm17, %ymm1
	leaq	-32(%rdx), %rsi
	testb	$32, %sil
	jne	.LBB1_26
	vpxorq	(%rcx), %ymm26, %ymm2
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
	vpshufd	$78, %ymm4, %ymm26
	vpternlogq	$150, %ymm3, %ymm2, %ymm26
	movq	%rsi, %rdx
.LBB1_26:
	cmpq	$32, %rsi
	jb	.LBB1_30
	.p2align	4, 0x90
.LBB1_27:
	vpxorq	(%rcx), %ymm26, %ymm2
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
	vpshufd	$78, %ymm3, %ymm26
	vpternlogq	$150, %ymm2, %ymm4, %ymm26
	cmpq	$31, %rdx
	ja	.LBB1_27
.LBB1_29:
	movq	%rdx, %rsi
.LBB1_30:
	movq	440(%rsp), %rdx
	vpunpcklqdq	%xmm13, %xmm16, %xmm1
	vpternlogq	$150, %xmm23, %xmm30, %xmm25
	vpsllq	$3, %xmm0, %xmm0
	testq	%rsi, %rsi
	je	.LBB1_34
	movl	$-1, %edi
	bzhil	%esi, %edi, %edi
	kmovd	%edi, %k1
	vmovdqu8	(%rcx), %ymm2 {%k1} {z}
	vpxorq	%ymm2, %ymm26, %ymm2
	cmpq	$17, %rsi
	jae	.LBB1_33
	vmovdqa64	%xmm14, %xmm17
.LBB1_33:
	vinserti32x4	$1, %xmm17, %ymm17, %ymm3
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
	vpshufd	$78, %ymm3, %ymm26
	vpternlogq	$150, %ymm4, %ymm2, %ymm26
.LBB1_34:
	movq	424(%rsp), %rcx
	vextracti32x4	$1, %ymm26, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxorq	%xmm0, %xmm26, %xmm0
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
	vpternlogq	$108, .LCPI1_14(%rip), %xmm24, %xmm0
	vaesenc	%xmm31, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqu64	336(%rsp), %ymm26
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm28, %xmm0, %xmm0
	vaesenc	%xmm29, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm25, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rdx)
	vpor	.LCPI1_15(%rip), %xmm0, %xmm14
	cmpq	$256, %r10
	jb	.LBB1_38
	vinserti32x4	$1, %xmm24, %ymm24, %ymm15
	vinserti32x4	$1, %xmm31, %ymm31, %ymm17
	vmovups	%ymm7, 16(%rsp)
	vinserti32x4	$1, %xmm7, %ymm7, %ymm18
	vmovups	%ymm8, -16(%rsp)
	vinserti32x4	$1, %xmm8, %ymm8, %ymm19
	vinserti32x4	$1, %xmm9, %ymm9, %ymm20
	vinserti32x4	$1, %xmm10, %ymm10, %ymm21
	vinserti32x4	$1, %xmm11, %ymm11, %ymm22
	vinserti32x4	$1, %xmm12, %ymm12, %ymm23
	vinserti32x4	$1, %xmm26, %ymm26, %ymm24
	vmovdqa64	%ymm25, %ymm0
	vinserti32x4	$1, %xmm27, %ymm27, %ymm25
	vinserti32x4	$1, %xmm28, %ymm28, %ymm26
	vinserti32x4	$1, %xmm29, %ymm29, %ymm27
	vinserti32x4	$1, %xmm30, %ymm30, %ymm28
	vinserti32x4	$1, %xmm6, %ymm6, %ymm29
	vmovdqu	%ymm0, -96(%rsp)
	vinserti32x4	$1, %xmm0, %ymm0, %ymm30
	vpmovsxbq	.LCPI1_25(%rip), %ymm1
	vpmovsxbq	.LCPI1_26(%rip), %ymm0
	vpmovsxbq	.LCPI1_27(%rip), %ymm13
	vpmovsxbq	.LCPI1_28(%rip), %ymm16
	vpmovsxbq	.LCPI1_29(%rip), %ymm2
	vpmovsxbq	.LCPI1_30(%rip), %ymm3
	vpmovsxbq	.LCPI1_31(%rip), %ymm4
	vpmovsxbq	.LCPI1_32(%rip), %xmm5
	.p2align	4, 0x90
.LBB1_36:
	vpaddd	.LCPI1_0(%rip), %xmm14, %xmm6
	vinserti128	$1, %xmm6, %ymm14, %ymm6
	vinserti128	$1, %xmm14, %ymm14, %ymm7
	vpaddd	%ymm1, %ymm7, %ymm8
	vpaddd	%ymm0, %ymm7, %ymm9
	vpaddd	%ymm7, %ymm13, %ymm10
	vpaddd	%ymm16, %ymm7, %ymm11
	vpaddd	%ymm2, %ymm7, %ymm12
	vpaddd	%ymm3, %ymm7, %ymm31
	vpaddd	%ymm4, %ymm7, %ymm7
	vpxor	%ymm6, %ymm15, %ymm6
	vpxor	%ymm8, %ymm15, %ymm8
	vpxor	%ymm9, %ymm15, %ymm9
	vpxor	%ymm10, %ymm15, %ymm10
	vpxor	%ymm11, %ymm15, %ymm11
	vpxor	%ymm12, %ymm15, %ymm12
	vpxorq	%ymm31, %ymm15, %ymm31
	vpxor	%ymm7, %ymm15, %ymm7
	vaesenc	%ymm17, %ymm6, %ymm6
	vaesenc	%ymm17, %ymm8, %ymm8
	vaesenc	%ymm17, %ymm9, %ymm9
	vaesenc	%ymm17, %ymm10, %ymm10
	vaesenc	%ymm17, %ymm11, %ymm11
	vaesenc	%ymm17, %ymm12, %ymm12
	vaesenc	%ymm17, %ymm31, %ymm31
	vaesenc	%ymm17, %ymm7, %ymm7
	vaesenc	%ymm18, %ymm6, %ymm6
	vaesenc	%ymm18, %ymm8, %ymm8
	vaesenc	%ymm18, %ymm9, %ymm9
	vaesenc	%ymm18, %ymm10, %ymm10
	vaesenc	%ymm18, %ymm11, %ymm11
	vaesenc	%ymm18, %ymm12, %ymm12
	vaesenc	%ymm18, %ymm31, %ymm31
	vaesenc	%ymm18, %ymm7, %ymm7
	vaesenc	%ymm19, %ymm6, %ymm6
	vaesenc	%ymm19, %ymm8, %ymm8
	vaesenc	%ymm19, %ymm9, %ymm9
	vaesenc	%ymm19, %ymm10, %ymm10
	vaesenc	%ymm19, %ymm11, %ymm11
	vaesenc	%ymm19, %ymm12, %ymm12
	vaesenc	%ymm19, %ymm31, %ymm31
	vaesenc	%ymm19, %ymm7, %ymm7
	vaesenc	%ymm20, %ymm6, %ymm6
	vaesenc	%ymm20, %ymm8, %ymm8
	vaesenc	%ymm20, %ymm9, %ymm9
	vaesenc	%ymm20, %ymm10, %ymm10
	vaesenc	%ymm20, %ymm11, %ymm11
	vaesenc	%ymm20, %ymm12, %ymm12
	vaesenc	%ymm20, %ymm31, %ymm31
	vaesenc	%ymm20, %ymm7, %ymm7
	vaesenc	%ymm21, %ymm6, %ymm6
	vaesenc	%ymm21, %ymm8, %ymm8
	vaesenc	%ymm21, %ymm9, %ymm9
	vaesenc	%ymm21, %ymm10, %ymm10
	vaesenc	%ymm21, %ymm11, %ymm11
	vaesenc	%ymm21, %ymm12, %ymm12
	vaesenc	%ymm21, %ymm31, %ymm31
	vaesenc	%ymm21, %ymm7, %ymm7
	vaesenc	%ymm22, %ymm6, %ymm6
	vaesenc	%ymm22, %ymm8, %ymm8
	vaesenc	%ymm22, %ymm9, %ymm9
	vaesenc	%ymm22, %ymm10, %ymm10
	vaesenc	%ymm22, %ymm11, %ymm11
	vaesenc	%ymm22, %ymm12, %ymm12
	vaesenc	%ymm22, %ymm31, %ymm31
	vaesenc	%ymm22, %ymm7, %ymm7
	vaesenc	%ymm23, %ymm6, %ymm6
	vaesenc	%ymm23, %ymm8, %ymm8
	vaesenc	%ymm23, %ymm9, %ymm9
	vaesenc	%ymm23, %ymm10, %ymm10
	vaesenc	%ymm23, %ymm11, %ymm11
	vaesenc	%ymm23, %ymm12, %ymm12
	vaesenc	%ymm23, %ymm31, %ymm31
	vaesenc	%ymm23, %ymm7, %ymm7
	vaesenc	%ymm24, %ymm6, %ymm6
	vaesenc	%ymm24, %ymm8, %ymm8
	vaesenc	%ymm24, %ymm9, %ymm9
	vaesenc	%ymm24, %ymm10, %ymm10
	vaesenc	%ymm24, %ymm11, %ymm11
	vaesenc	%ymm24, %ymm12, %ymm12
	vaesenc	%ymm24, %ymm31, %ymm31
	vaesenc	%ymm24, %ymm7, %ymm7
	vaesenc	%ymm25, %ymm6, %ymm6
	vaesenc	%ymm25, %ymm8, %ymm8
	vaesenc	%ymm25, %ymm9, %ymm9
	vaesenc	%ymm25, %ymm10, %ymm10
	vaesenc	%ymm25, %ymm11, %ymm11
	vaesenc	%ymm25, %ymm12, %ymm12
	vaesenc	%ymm25, %ymm31, %ymm31
	vaesenc	%ymm25, %ymm7, %ymm7
	vaesenc	%ymm26, %ymm6, %ymm6
	vaesenc	%ymm26, %ymm8, %ymm8
	vaesenc	%ymm26, %ymm9, %ymm9
	vaesenc	%ymm26, %ymm10, %ymm10
	vaesenc	%ymm26, %ymm11, %ymm11
	vaesenc	%ymm26, %ymm12, %ymm12
	vaesenc	%ymm26, %ymm31, %ymm31
	vaesenc	%ymm26, %ymm7, %ymm7
	vaesenc	%ymm27, %ymm6, %ymm6
	vaesenc	%ymm27, %ymm8, %ymm8
	vaesenc	%ymm27, %ymm9, %ymm9
	vaesenc	%ymm27, %ymm10, %ymm10
	vaesenc	%ymm27, %ymm11, %ymm11
	vaesenc	%ymm27, %ymm12, %ymm12
	vaesenc	%ymm27, %ymm31, %ymm31
	vaesenc	%ymm27, %ymm7, %ymm7
	vaesenc	%ymm28, %ymm6, %ymm6
	vaesenc	%ymm28, %ymm8, %ymm8
	vaesenc	%ymm28, %ymm9, %ymm9
	vaesenc	%ymm28, %ymm10, %ymm10
	vaesenc	%ymm28, %ymm11, %ymm11
	vaesenc	%ymm28, %ymm12, %ymm12
	vaesenc	%ymm28, %ymm31, %ymm31
	vaesenc	%ymm28, %ymm7, %ymm7
	vaesenc	%ymm29, %ymm6, %ymm6
	vaesenc	%ymm29, %ymm8, %ymm8
	vaesenc	%ymm29, %ymm9, %ymm9
	vaesenc	%ymm29, %ymm10, %ymm10
	vaesenc	%ymm29, %ymm11, %ymm11
	vaesenc	%ymm29, %ymm12, %ymm12
	vaesenc	%ymm29, %ymm31, %ymm31
	vaesenc	%ymm29, %ymm7, %ymm7
	vaesenclast	%ymm30, %ymm6, %ymm6
	vaesenclast	%ymm30, %ymm8, %ymm8
	vaesenclast	%ymm30, %ymm9, %ymm9
	vaesenclast	%ymm30, %ymm10, %ymm10
	vaesenclast	%ymm30, %ymm11, %ymm11
	vaesenclast	%ymm30, %ymm12, %ymm12
	vaesenclast	%ymm30, %ymm31, %ymm31
	vaesenclast	%ymm30, %ymm7, %ymm7
	vpxor	(%r9), %ymm6, %ymm6
	vpxor	32(%r9), %ymm8, %ymm8
	vpxor	64(%r9), %ymm9, %ymm9
	vpxor	96(%r9), %ymm10, %ymm10
	vpxor	128(%r9), %ymm11, %ymm11
	vpxor	160(%r9), %ymm12, %ymm12
	vpxorq	192(%r9), %ymm31, %ymm31
	vpxor	224(%r9), %ymm7, %ymm7
	vmovdqu	%ymm6, (%rcx)
	vmovdqu	%ymm8, 32(%rcx)
	vmovdqu	%ymm9, 64(%rcx)
	vmovdqu	%ymm10, 96(%rcx)
	vmovdqu	%ymm11, 128(%rcx)
	vmovdqu	%ymm12, 160(%rcx)
	vmovdqu64	%ymm31, 192(%rcx)
	vmovdqu	%ymm7, 224(%rcx)
	addq	$256, %r9
	addq	$256, %rcx
	addq	$-256, %r10
	vpaddd	%xmm5, %xmm14, %xmm14
	cmpq	$255, %r10
	ja	.LBB1_36
	vmovups	176(%rsp), %ymm31
	vmovupd	-64(%rsp), %ymm24
	vmovupd	16(%rsp), %ymm7
	vmovupd	-16(%rsp), %ymm8
	vmovupd	304(%rsp), %ymm9
	vmovupd	272(%rsp), %ymm10
	vmovupd	240(%rsp), %ymm11
	vmovupd	208(%rsp), %ymm12
	vmovdqu64	336(%rsp), %ymm26
	vmovupd	144(%rsp), %ymm27
	vmovupd	112(%rsp), %ymm28
	vmovupd	80(%rsp), %ymm29
	vmovupd	48(%rsp), %ymm30
	vmovdqu	-128(%rsp), %ymm6
	vmovdqu64	-96(%rsp), %ymm25
.LBB1_38:
	cmpq	$32, %r10
	jb	.LBB1_41
	vinsertf32x4	$1, %xmm24, %ymm24, %ymm0
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm1
	vinsertf128	$1, %xmm7, %ymm7, %ymm2
	vinsertf128	$1, %xmm8, %ymm8, %ymm3
	vinsertf128	$1, %xmm9, %ymm9, %ymm4
	vinsertf128	$1, %xmm10, %ymm10, %ymm5
	vinsertf128	$1, %xmm11, %ymm11, %ymm13
	vinsertf128	$1, %xmm12, %ymm12, %ymm15
	vinserti32x4	$1, %xmm26, %ymm26, %ymm16
	vinsertf32x4	$1, %xmm27, %ymm27, %ymm17
	vinsertf32x4	$1, %xmm28, %ymm28, %ymm18
	vinsertf32x4	$1, %xmm29, %ymm29, %ymm19
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm20
	vinserti32x4	$1, %xmm6, %ymm6, %ymm21
	vinserti32x4	$1, %xmm25, %ymm25, %ymm22
	leaq	-32(%r10), %rsi
	testb	$32, %sil
	jne	.LBB1_42
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
	vmovdqu	-128(%rsp), %ymm6
	movq	%rdx, %rcx
	vmovdqa64	%xmm23, %xmm14
	movq	%rsi, %r10
	movq	%rdi, %r9
	cmpq	$32, %rsi
	jae	.LBB1_43
	jmp	.LBB1_46
.LBB1_41:
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovdqa64	%xmm14, %xmm23
	jmp	.LBB1_46
.LBB1_42:
	cmpq	$32, %rsi
	jb	.LBB1_46
.LBB1_43:
	vmovdqu64	%ymm25, -96(%rsp)
	vpmovsxbq	.LCPI1_33(%rip), %xmm23
	vpmovsxbq	.LCPI1_34(%rip), %xmm24
	vpmovsxbq	.LCPI1_25(%rip), %ymm25
	.p2align	4, 0x90
.LBB1_44:
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
	ja	.LBB1_44
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovdqa64	%xmm14, %xmm23
	vmovupd	-64(%rsp), %ymm24
	vmovdqu	-128(%rsp), %ymm6
	vmovdqu64	-96(%rsp), %ymm25
.LBB1_46:
	testq	%rsi, %rsi
	je	.LBB1_48
	movl	$-1, %ecx
	bzhil	%esi, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdi), %ymm0 {%k1} {z}
	vpaddd	.LCPI1_0(%rip), %xmm23, %xmm1
	vinserti32x4	$1, %xmm1, %ymm23, %ymm1
	vinsertf32x4	$1, %xmm24, %ymm24, %ymm2
	vxorpd	%ymm1, %ymm2, %ymm1
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm7, %ymm7, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm8, %ymm8, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm9, %ymm9, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm10, %ymm10, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm11, %ymm11, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm12, %ymm12, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm26, %ymm26, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm27, %ymm27, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm28, %ymm28, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm29, %ymm29, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti128	$1, %xmm6, %ymm6, %ymm2
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti32x4	$1, %xmm25, %ymm25, %ymm2
	vaesenclast	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu8	%ymm0, (%rdx) {%k1}
.LBB1_48:
	movzbl	%al, %eax
.LBB1_49:
	addq	$400, %rsp
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
.LCPI2_20:
	.long	12
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI2_27:
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
.LCPI2_15:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_16:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_17:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI2_22:
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI2_23:
	.long	16
	.long	0
	.long	0
	.long	0
	.long	17
	.long	0
	.long	0
	.long	0
.LCPI2_24:
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI2_25:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
.LCPI2_26:
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_28:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata,"a",@progbits
.LCPI2_29:
	.byte	1
	.byte	0
.LCPI2_30:
	.byte	2
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_decrypt,@function
haberdashery_aes256gcmsiv_tigerlake_decrypt:
	.cfi_startproc
	subq	$584, %rsp
	.cfi_def_cfa_offset 592
	movq	592(%rsp), %r10
	xorl	%eax, %eax
	cmpq	624(%rsp), %r10
	jne	.LBB2_37
	cmpq	$12, %rdx
	jne	.LBB2_37
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB2_37
	cmpq	%rdx, %r10
	jae	.LBB2_37
	cmpq	$16, 608(%rsp)
	jb	.LBB2_37
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI2_0(%rip), %xmm2, %xmm3
	vxorps	.LCPI2_1(%rip), %xmm2, %xmm0
	vxorps	.LCPI2_2(%rip), %xmm2, %xmm4
	vxorps	.LCPI2_3(%rip), %xmm2, %xmm1
	vxorps	.LCPI2_4(%rip), %xmm2, %xmm5
	vmovaps	16(%rdi), %xmm7
	vmovdqa	32(%rdi), %xmm8
	vmovdqa	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
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
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
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
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm2, %xmm26
	vpunpcklqdq	%xmm4, %xmm0, %xmm25
	vpunpcklqdq	%xmm5, %xmm1, %xmm23
	vpslldq	$4, %xmm25, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm4
	vinsertps	$55, %xmm0, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpbroadcastd	.LCPI2_28(%rip), %xmm0
	vpbroadcastq	.LCPI2_6(%rip), %xmm3
	vpshufb	%xmm0, %xmm23, %xmm4
	vaesenclast	%xmm3, %xmm4, %xmm28
	vpternlogq	$150, %xmm5, %xmm25, %xmm28
	vpslldq	$4, %xmm23, %xmm3
	vpunpcklqdq	%xmm1, %xmm2, %xmm4
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm4, %xmm3, %xmm1
	vpshufd	$255, %xmm28, %xmm3
	vaesenclast	%xmm2, %xmm3, %xmm30
	vpternlogq	$150, %xmm1, %xmm23, %xmm30
	vpslldq	$4, %xmm28, %xmm1
	vpslldq	$8, %xmm28, %xmm3
	vpslldq	$12, %xmm28, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufb	%xmm0, %xmm30, %xmm1
	vpbroadcastq	.LCPI2_7(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm31
	vpternlogq	$150, %xmm4, %xmm28, %xmm31
	vpslldq	$4, %xmm30, %xmm1
	vpslldq	$8, %xmm30, %xmm3
	vpslldq	$12, %xmm30, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufd	$255, %xmm31, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm15
	vpternlogq	$150, %xmm4, %xmm30, %xmm15
	vpslldq	$4, %xmm31, %xmm1
	vpslldq	$8, %xmm31, %xmm3
	vpslldq	$12, %xmm31, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufb	%xmm0, %xmm15, %xmm1
	vpbroadcastq	.LCPI2_8(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm16
	vpternlogq	$150, %xmm4, %xmm31, %xmm16
	vpslldq	$4, %xmm15, %xmm1
	vpslldq	$8, %xmm15, %xmm3
	vpslldq	$12, %xmm15, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufd	$255, %xmm16, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm18
	vpternlogq	$150, %xmm4, %xmm15, %xmm18
	vpslldq	$4, %xmm16, %xmm1
	vpslldq	$8, %xmm16, %xmm3
	vpslldq	$12, %xmm16, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpbroadcastq	.LCPI2_9(%rip), %xmm1
	vpshufb	%xmm0, %xmm18, %xmm3
	vaesenclast	%xmm1, %xmm3, %xmm5
	vpternlogq	$150, %xmm4, %xmm16, %xmm5
	vpslldq	$4, %xmm18, %xmm1
	vpslldq	$8, %xmm18, %xmm3
	vpslldq	$12, %xmm18, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufd	$255, %xmm5, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm6
	vpternlogq	$150, %xmm4, %xmm18, %xmm6
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufb	%xmm0, %xmm6, %xmm1
	vpbroadcastq	.LCPI2_10(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm7
	vmovups	%ymm5, 32(%rsp)
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufd	$255, %xmm7, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm5
	vmovups	%ymm6, (%rsp)
	vpternlogq	$150, %xmm4, %xmm6, %xmm5
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufb	%xmm0, %xmm5, %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm3
	vaesenclast	%xmm3, %xmm1, %xmm10
	vmovups	%ymm7, -32(%rsp)
	vpternlogq	$150, %xmm4, %xmm7, %xmm10
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm1, %xmm4
	vpshufd	$255, %xmm10, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm11
	vmovups	%ymm5, -64(%rsp)
	vpternlogq	$150, %xmm4, %xmm5, %xmm11
	vpclmulqdq	$0, %xmm26, %xmm26, %xmm1
	vpclmulqdq	$17, %xmm26, %xmm26, %xmm2
	vpbroadcastq	.LCPI2_13(%rip), %ymm17
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm22
	vpternlogq	$150, %xmm2, %xmm3, %xmm22
	vpclmulqdq	$0, %xmm22, %xmm22, %xmm1
	vpclmulqdq	$17, %xmm22, %xmm22, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vinserti32x4	$1, %xmm1, %ymm22, %ymm2
	vinserti32x4	$1, %xmm1, %ymm1, %ymm19
	vpunpcklqdq	%ymm2, %ymm19, %ymm1
	vpunpckhqdq	%ymm2, %ymm19, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpclmulqdq	$0, %ymm2, %ymm19, %ymm3
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm2, %ymm19, %ymm2
	vpternlogq	$150, %ymm3, %ymm2, %ymm1
	vpslldq	$8, %ymm1, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpsrldq	$8, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm17, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$16, %ymm17, %ymm3, %ymm4
	vpxor	%ymm1, %ymm4, %ymm1
	vpshufd	$78, %ymm3, %ymm3
	vpternlogq	$150, %ymm1, %ymm2, %ymm3
	vextracti32x4	$1, %ymm3, %xmm29
	vpunpcklqdq	%ymm3, %ymm19, %ymm1
	vpunpckhqdq	%ymm3, %ymm19, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	vpclmulqdq	$0, %ymm3, %ymm19, %ymm2
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm3, %ymm19, %ymm4
	vpternlogq	$150, %ymm2, %ymm4, %ymm1
	vpslldq	$8, %ymm1, %ymm5
	vpxor	%ymm5, %ymm2, %ymm2
	vpsrldq	$8, %ymm1, %ymm1
	vpclmulqdq	$16, %ymm17, %ymm2, %ymm5
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$16, %ymm17, %ymm2, %ymm5
	vpxor	%ymm1, %ymm5, %ymm1
	vpshufd	$78, %ymm2, %ymm2
	vpternlogq	$150, %ymm1, %ymm4, %ymm2
	vextracti32x4	$1, %ymm2, %xmm27
	vpxord	%xmm24, %xmm24, %xmm24
	vpermq	$68, %ymm3, %ymm21
	vpermq	$68, %ymm2, %ymm20
	cmpq	$192, %r8
	vmovdqu	%ymm10, -96(%rsp)
	vmovdqu	%ymm11, -128(%rsp)
	jb	.LBB2_9
	vinserti32x4	$1, %xmm22, %ymm22, %ymm1
	vinserti32x4	$1, %xmm29, %ymm29, %ymm2
	vinserti32x4	$1, %xmm27, %ymm27, %ymm3
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB2_7:
	vmovdqu	32(%rcx), %ymm4
	vmovdqu	64(%rcx), %ymm5
	vmovdqu	96(%rcx), %ymm6
	vmovdqu	128(%rcx), %ymm7
	vmovdqu	160(%rcx), %ymm8
	vpxorq	(%rcx), %ymm24, %ymm9
	addq	$192, %rcx
	addq	$-192, %rax
	vpunpcklqdq	%ymm8, %ymm1, %ymm10
	vpunpckhqdq	%ymm8, %ymm1, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm8, %ymm1, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm10
	vpclmulqdq	$17, %ymm8, %ymm1, %ymm8
	vpunpcklqdq	%ymm7, %ymm19, %ymm12
	vpunpckhqdq	%ymm7, %ymm19, %ymm13
	vpxor	%ymm12, %ymm13, %ymm12
	vpclmulqdq	$0, %ymm7, %ymm19, %ymm13
	vpxor	%ymm11, %ymm13, %ymm11
	vpclmulqdq	$1, %ymm12, %ymm12, %ymm12
	vpxor	%ymm10, %ymm12, %ymm10
	vpclmulqdq	$17, %ymm7, %ymm19, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpunpcklqdq	%ymm6, %ymm21, %ymm8
	vpunpckhqdq	%ymm6, %ymm21, %ymm12
	vpxor	%ymm8, %ymm12, %ymm8
	vpclmulqdq	$0, %ymm6, %ymm21, %ymm12
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm6, %ymm21, %ymm6
	vpunpcklqdq	%ymm5, %ymm2, %ymm13
	vpunpckhqdq	%ymm5, %ymm2, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm5, %ymm2, %ymm14
	vpternlogq	$150, %ymm12, %ymm11, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm11
	vpternlogq	$150, %ymm8, %ymm10, %ymm11
	vpclmulqdq	$17, %ymm5, %ymm2, %ymm5
	vpternlogq	$150, %ymm6, %ymm7, %ymm5
	vpunpcklqdq	%ymm4, %ymm20, %ymm6
	vpunpckhqdq	%ymm4, %ymm20, %ymm7
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$0, %ymm4, %ymm20, %ymm7
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm4, %ymm20, %ymm4
	vpunpcklqdq	%ymm9, %ymm3, %ymm8
	vpunpckhqdq	%ymm9, %ymm3, %ymm10
	vpxor	%ymm8, %ymm10, %ymm8
	vpclmulqdq	$0, %ymm9, %ymm3, %ymm10
	vpternlogq	$150, %ymm7, %ymm14, %ymm10
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm7
	vpternlogq	$150, %ymm6, %ymm11, %ymm7
	vpclmulqdq	$17, %ymm9, %ymm3, %ymm6
	vpternlogq	$150, %ymm4, %ymm5, %ymm6
	vpternlogq	$150, %ymm10, %ymm6, %ymm7
	vpslldq	$8, %ymm7, %ymm4
	vpxor	%ymm4, %ymm10, %ymm4
	vpsrldq	$8, %ymm7, %ymm5
	vpclmulqdq	$16, %ymm17, %ymm4, %ymm7
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm7, %ymm4
	vpclmulqdq	$16, %ymm17, %ymm4, %ymm7
	vpxor	%ymm5, %ymm7, %ymm5
	vpshufd	$78, %ymm4, %ymm24
	vpternlogq	$150, %ymm5, %ymm6, %ymm24
	cmpq	$191, %rax
	ja	.LBB2_7
	vmovdqu	-96(%rsp), %ymm10
	vmovdqu	-128(%rsp), %ymm11
	jmp	.LBB2_10
.LBB2_9:
	movq	%r8, %rax
.LBB2_10:
	vpslldq	$4, %xmm10, %xmm2
	vpslldq	$8, %xmm10, %xmm3
	vpslldq	$12, %xmm10, %xmm1
	vpshufb	%xmm0, %xmm11, %xmm0
	vpbroadcastq	.LCPI2_12(%rip), %xmm4
	movq	600(%rsp), %rdx
	cmpq	$32, %rax
	jb	.LBB2_16
	vinserti32x4	$1, %xmm22, %ymm22, %ymm5
	leaq	-32(%rax), %rdi
	testb	$32, %dil
	jne	.LBB2_13
	vpxorq	(%rcx), %ymm24, %ymm6
	addq	$32, %rcx
	vpunpcklqdq	%ymm6, %ymm5, %ymm7
	vpunpckhqdq	%ymm6, %ymm5, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm6, %ymm5, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm6, %ymm5, %ymm6
	vpternlogq	$150, %ymm8, %ymm6, %ymm7
	vpslldq	$8, %ymm7, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpsrldq	$8, %ymm7, %ymm7
	vpclmulqdq	$16, %ymm17, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$16, %ymm17, %ymm8, %ymm9
	vpxor	%ymm7, %ymm9, %ymm7
	vpshufd	$78, %ymm8, %ymm24
	vpternlogq	$150, %ymm7, %ymm6, %ymm24
	movq	%rdi, %rax
.LBB2_13:
	cmpq	$32, %rdi
	jb	.LBB2_17
	.p2align	4, 0x90
.LBB2_14:
	vpxorq	(%rcx), %ymm24, %ymm6
	vpunpcklqdq	%ymm6, %ymm5, %ymm7
	vpunpckhqdq	%ymm6, %ymm5, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$0, %ymm6, %ymm5, %ymm8
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$17, %ymm6, %ymm5, %ymm6
	vpternlogq	$150, %ymm8, %ymm6, %ymm7
	vpslldq	$8, %ymm7, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpsrldq	$8, %ymm7, %ymm7
	vpclmulqdq	$16, %ymm17, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$16, %ymm17, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpternlogq	$150, %ymm7, %ymm9, %ymm8
	addq	$-64, %rax
	vpternlogq	$150, 32(%rcx), %ymm6, %ymm8
	addq	$64, %rcx
	vpunpcklqdq	%ymm8, %ymm5, %ymm6
	vpunpckhqdq	%ymm8, %ymm5, %ymm7
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$0, %ymm8, %ymm5, %ymm7
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm8, %ymm5, %ymm8
	vpternlogq	$150, %ymm7, %ymm8, %ymm6
	vpslldq	$8, %ymm6, %ymm9
	vpxor	%ymm7, %ymm9, %ymm7
	vpsrldq	$8, %ymm6, %ymm6
	vpclmulqdq	$16, %ymm17, %ymm7, %ymm9
	vpshufd	$78, %ymm7, %ymm7
	vpxor	%ymm7, %ymm9, %ymm7
	vpclmulqdq	$16, %ymm17, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpshufd	$78, %ymm7, %ymm24
	vpternlogq	$150, %ymm6, %ymm8, %ymm24
	cmpq	$31, %rax
	ja	.LBB2_14
.LBB2_16:
	movq	%rax, %rdi
.LBB2_17:
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vaesenclast	%xmm4, %xmm0, %xmm12
	vmovdqu	(%rdx), %xmm5
	testq	%rdi, %rdi
	vmovdqu64	%ymm22, 288(%rsp)
	je	.LBB2_21
	movl	$-1, %eax
	bzhil	%edi, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rcx), %ymm0 {%k1} {z}
	vpxorq	%ymm0, %ymm24, %ymm0
	vmovdqa64	%xmm22, %xmm2
	cmpq	$17, %rdi
	jae	.LBB2_20
	vmovdqa64	%xmm26, %xmm2
.LBB2_20:
	vinserti128	$1, %xmm2, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm2, %ymm3
	vpunpckhqdq	%ymm0, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm0, %ymm2, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm0, %ymm2, %ymm0
	vpternlogq	$150, %ymm4, %ymm0, %ymm3
	vpslldq	$8, %ymm3, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm17, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm17, %ymm2, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm2, %ymm24
	vpternlogq	$150, %ymm3, %ymm0, %ymm24
.LBB2_21:
	vmovq	%r10, %xmm2
	vmovss	8(%rsi), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovsd	(%rsi), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovq	%r8, %xmm0
	movq	616(%rsp), %rdx
	vpternlogq	$150, %xmm1, %xmm10, %xmm12
	vporq	.LCPI2_14(%rip), %xmm5, %xmm22
	cmpq	$192, %r10
	vmovups	%ymm16, 256(%rsp)
	vmovups	%ymm18, 224(%rsp)
	vmovups	%ymm15, 160(%rsp)
	vmovdqa	%xmm5, 144(%rsp)
	vmovdqu	%ymm12, 192(%rsp)
	jb	.LBB2_27
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	%xmm2, 80(%rsp)
	vmovaps	%xmm26, 96(%rsp)
	leaq	192(%r9), %rcx
	leaq	192(%rdx), %rax
	addq	$-192, %r10
	vpaddd	.LCPI2_0(%rip), %xmm22, %xmm0
	vinserti32x4	$1, %xmm22, %ymm22, %ymm1
	vpaddd	.LCPI2_15(%rip), %ymm1, %ymm2
	vpaddd	.LCPI2_16(%rip), %ymm1, %ymm3
	vpaddd	.LCPI2_17(%rip), %ymm1, %ymm4
	vpaddd	.LCPI2_18(%rip), %ymm1, %ymm5
	vpaddd	.LCPI2_19(%rip), %ymm1, %ymm1
	vinserti32x4	$1, %xmm0, %ymm22, %ymm0
	vmovups	%ymm25, 512(%rsp)
	vmovdqu64	%ymm27, 320(%rsp)
	vmovdqa64	%ymm29, %ymm27
	vinserti32x4	$1, %xmm25, %ymm25, %ymm29
	vpxorq	%ymm0, %ymm29, %ymm0
	vpxorq	%ymm2, %ymm29, %ymm2
	vpxorq	%ymm3, %ymm29, %ymm3
	vpxorq	%ymm4, %ymm29, %ymm4
	vpxorq	%ymm5, %ymm29, %ymm5
	vpxorq	%ymm1, %ymm29, %ymm1
	vmovups	%ymm23, 480(%rsp)
	vmovdqa64	%ymm30, %ymm6
	vinserti32x4	$1, %xmm23, %ymm23, %ymm30
	vaesenc	%ymm30, %ymm0, %ymm0
	vaesenc	%ymm30, %ymm2, %ymm2
	vaesenc	%ymm30, %ymm3, %ymm3
	vaesenc	%ymm30, %ymm4, %ymm4
	vaesenc	%ymm30, %ymm5, %ymm5
	vaesenc	%ymm30, %ymm1, %ymm1
	vmovups	%ymm28, 448(%rsp)
	vmovdqa64	%ymm31, %ymm7
	vinserti32x4	$1, %xmm28, %ymm28, %ymm31
	vaesenc	%ymm31, %ymm0, %ymm0
	vaesenc	%ymm31, %ymm2, %ymm2
	vaesenc	%ymm31, %ymm3, %ymm3
	vaesenc	%ymm31, %ymm4, %ymm4
	vaesenc	%ymm31, %ymm5, %ymm5
	vaesenc	%ymm31, %ymm1, %ymm1
	vmovdqu	%ymm6, 416(%rsp)
	vinserti32x4	$1, %xmm6, %ymm6, %ymm23
	vaesenc	%ymm23, %ymm0, %ymm0
	vaesenc	%ymm23, %ymm2, %ymm2
	vaesenc	%ymm23, %ymm3, %ymm3
	vaesenc	%ymm23, %ymm4, %ymm4
	vaesenc	%ymm23, %ymm5, %ymm5
	vaesenc	%ymm23, %ymm1, %ymm1
	vmovdqu	%ymm7, 384(%rsp)
	vinserti32x4	$1, %xmm7, %ymm7, %ymm17
	vaesenc	%ymm17, %ymm0, %ymm0
	vaesenc	%ymm17, %ymm2, %ymm2
	vaesenc	%ymm17, %ymm3, %ymm3
	vaesenc	%ymm17, %ymm4, %ymm4
	vaesenc	%ymm17, %ymm5, %ymm5
	vaesenc	%ymm17, %ymm1, %ymm1
	vinserti32x4	$1, %xmm15, %ymm15, %ymm25
	vaesenc	%ymm25, %ymm0, %ymm0
	vaesenc	%ymm25, %ymm2, %ymm2
	vaesenc	%ymm25, %ymm3, %ymm3
	vaesenc	%ymm25, %ymm4, %ymm4
	vaesenc	%ymm25, %ymm5, %ymm5
	vaesenc	%ymm25, %ymm1, %ymm1
	vinserti32x4	$1, %xmm16, %ymm16, %ymm26
	vaesenc	%ymm26, %ymm0, %ymm0
	vaesenc	%ymm26, %ymm2, %ymm2
	vaesenc	%ymm26, %ymm3, %ymm3
	vaesenc	%ymm26, %ymm4, %ymm4
	vaesenc	%ymm26, %ymm5, %ymm5
	vaesenc	%ymm26, %ymm1, %ymm1
	vinserti32x4	$1, %xmm18, %ymm18, %ymm28
	vaesenc	%ymm28, %ymm0, %ymm0
	vaesenc	%ymm28, %ymm2, %ymm2
	vaesenc	%ymm28, %ymm3, %ymm3
	vaesenc	%ymm28, %ymm4, %ymm4
	vaesenc	%ymm28, %ymm5, %ymm5
	vaesenc	%ymm28, %ymm1, %ymm1
	vmovdqu	32(%rsp), %ymm6
	vinserti128	$1, %xmm6, %ymm6, %ymm14
	vaesenc	%ymm14, %ymm0, %ymm6
	vaesenc	%ymm14, %ymm2, %ymm2
	vaesenc	%ymm14, %ymm3, %ymm3
	vaesenc	%ymm14, %ymm4, %ymm4
	vaesenc	%ymm14, %ymm5, %ymm5
	vaesenc	%ymm14, %ymm1, %ymm1
	vmovdqu	(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vaesenc	%ymm0, %ymm6, %ymm6
	vaesenc	%ymm0, %ymm2, %ymm2
	vaesenc	%ymm0, %ymm3, %ymm7
	vaesenc	%ymm0, %ymm4, %ymm4
	vaesenc	%ymm0, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm1, %ymm1
	vmovdqu	-32(%rsp), %ymm3
	vinserti128	$1, %xmm3, %ymm3, %ymm3
	vaesenc	%ymm3, %ymm6, %ymm6
	vaesenc	%ymm3, %ymm2, %ymm8
	vaesenc	%ymm3, %ymm7, %ymm7
	vaesenc	%ymm3, %ymm4, %ymm4
	vaesenc	%ymm3, %ymm5, %ymm5
	vaesenc	%ymm3, %ymm1, %ymm1
	vmovdqu	-64(%rsp), %ymm2
	vinserti128	$1, %xmm2, %ymm2, %ymm2
	vaesenc	%ymm2, %ymm6, %ymm6
	vaesenc	%ymm2, %ymm8, %ymm8
	vaesenc	%ymm2, %ymm7, %ymm7
	vaesenc	%ymm2, %ymm4, %ymm9
	vaesenc	%ymm2, %ymm5, %ymm5
	vaesenc	%ymm2, %ymm1, %ymm1
	vinserti128	$1, %xmm10, %ymm10, %ymm4
	vaesenc	%ymm4, %ymm6, %ymm6
	vaesenc	%ymm4, %ymm8, %ymm8
	vaesenc	%ymm4, %ymm7, %ymm7
	vaesenc	%ymm4, %ymm9, %ymm9
	vaesenc	%ymm4, %ymm5, %ymm10
	vaesenc	%ymm4, %ymm1, %ymm1
	vinserti128	$1, %xmm11, %ymm11, %ymm5
	vaesenc	%ymm5, %ymm6, %ymm11
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm7, %ymm7
	vaesenc	%ymm5, %ymm9, %ymm9
	vaesenc	%ymm5, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm1, %ymm1
	vinserti128	$1, %xmm12, %ymm12, %ymm6
	vaesenclast	%ymm6, %ymm11, %ymm11
	vaesenclast	%ymm6, %ymm8, %ymm8
	vaesenclast	%ymm6, %ymm7, %ymm7
	vaesenclast	%ymm6, %ymm9, %ymm9
	vaesenclast	%ymm6, %ymm10, %ymm12
	vaesenclast	%ymm6, %ymm1, %ymm1
	vpxor	(%r9), %ymm11, %ymm10
	vpxor	32(%r9), %ymm8, %ymm13
	vpxor	64(%r9), %ymm7, %ymm8
	vpxor	96(%r9), %ymm9, %ymm9
	vpxorq	128(%r9), %ymm12, %ymm16
	vpxor	160(%r9), %ymm1, %ymm11
	vmovdqu	%ymm10, (%rdx)
	vmovdqu	%ymm13, 32(%rdx)
	vmovdqu	%ymm8, 64(%rdx)
	vmovdqu	%ymm9, 96(%rdx)
	vmovdqu64	%ymm16, 128(%rdx)
	vmovdqu	%ymm11, 160(%rdx)
	vpaddd	.LCPI2_20(%rip), %xmm22, %xmm7
	vmovdqu	288(%rsp), %ymm1
	vinserti32x4	$1, %xmm1, %ymm1, %ymm18
	vinserti32x4	$1, %xmm27, %ymm27, %ymm12
	vmovdqu	320(%rsp), %ymm1
	vinserti32x4	$1, %xmm1, %ymm1, %ymm27
	cmpq	$192, %r10
	jb	.LBB2_26
	vmovdqu	%ymm12, 352(%rsp)
	vmovdqu	%ymm6, 544(%rsp)
	.p2align	4, 0x90
.LBB2_24:
	vmovdqa	%xmm7, 320(%rsp)
	vpclmulqdq	$0, %ymm11, %ymm18, %ymm12
	vpclmulqdq	$17, %ymm11, %ymm18, %ymm15
	vmovdqa64	%ymm29, %ymm7
	vmovdqa64	%ymm20, %ymm29
	vmovdqa64	%ymm18, %ymm20
	vmovdqa64	%ymm27, %ymm18
	vpclmulqdq	$0, %ymm16, %ymm19, %ymm27
	vpxorq	%ymm12, %ymm27, %ymm12
	vpclmulqdq	$0, %ymm9, %ymm21, %ymm27
	vmovdqa	%ymm5, %ymm6
	vmovdqa	%ymm4, %ymm5
	vmovdqa	%ymm2, %ymm4
	vmovdqa	%ymm3, %ymm2
	vmovdqa	%ymm0, %ymm3
	vmovdqa	%ymm14, %ymm0
	vmovdqa64	%ymm28, %ymm14
	vmovdqa64	%ymm26, %ymm28
	vmovdqu64	352(%rsp), %ymm26
	vpclmulqdq	$0, %ymm8, %ymm26, %ymm1
	vpternlogq	$150, %ymm27, %ymm12, %ymm1
	vpclmulqdq	$17, %ymm16, %ymm19, %ymm12
	vpclmulqdq	$17, %ymm9, %ymm21, %ymm27
	vpxor	%ymm15, %ymm12, %ymm12
	vpclmulqdq	$17, %ymm8, %ymm26, %ymm15
	vpternlogq	$150, %ymm27, %ymm12, %ymm15
	vmovdqa64	%ymm18, %ymm27
	vmovdqa64	%ymm20, %ymm18
	vmovdqa64	%ymm29, %ymm20
	vmovdqa64	%ymm7, %ymm29
	vpxorq	%ymm24, %ymm10, %ymm10
	vpunpcklqdq	%ymm11, %ymm18, %ymm12
	vpunpckhqdq	%ymm11, %ymm18, %ymm11
	vpxor	%ymm12, %ymm11, %ymm11
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm11
	vpunpcklqdq	%ymm16, %ymm19, %ymm12
	vpunpckhqdq	%ymm16, %ymm19, %ymm16
	vpxorq	%ymm12, %ymm16, %ymm12
	vpunpcklqdq	%ymm9, %ymm21, %ymm16
	vpclmulqdq	$1, %ymm12, %ymm12, %ymm12
	vpunpckhqdq	%ymm9, %ymm21, %ymm9
	vpxorq	%ymm16, %ymm9, %ymm9
	vpunpcklqdq	%ymm8, %ymm26, %ymm16
	vpunpckhqdq	%ymm8, %ymm26, %ymm8
	vmovdqa64	%ymm28, %ymm26
	vmovdqa64	%ymm14, %ymm28
	vmovdqa	%ymm0, %ymm14
	vmovdqa	%ymm3, %ymm0
	vmovdqa	%ymm2, %ymm3
	vmovdqa	%ymm4, %ymm2
	vmovdqa	%ymm5, %ymm4
	vmovdqa	%ymm6, %ymm5
	vmovdqu	544(%rsp), %ymm6
	vpxorq	%ymm16, %ymm8, %ymm8
	vpxor	%ymm11, %ymm12, %ymm11
	vpunpcklqdq	%ymm13, %ymm20, %ymm12
	vpunpckhqdq	%ymm13, %ymm20, %ymm16
	vpxorq	%ymm12, %ymm16, %ymm12
	vmovaps	320(%rsp), %xmm7
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpternlogq	$150, %ymm9, %ymm11, %ymm8
	vpclmulqdq	$0, %ymm13, %ymm20, %ymm9
	vpclmulqdq	$17, %ymm13, %ymm20, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm27, %ymm13
	vpternlogq	$150, %ymm9, %ymm1, %ymm13
	vpunpcklqdq	%ymm10, %ymm27, %ymm1
	vpclmulqdq	$1, %ymm12, %ymm12, %ymm9
	vpunpckhqdq	%ymm10, %ymm27, %ymm12
	vpxor	%ymm1, %ymm12, %ymm1
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm10, %ymm27, %ymm12
	vpternlogq	$150, %ymm11, %ymm15, %ymm12
	vpternlogq	$150, %ymm9, %ymm8, %ymm1
	vpternlogq	$150, %ymm13, %ymm12, %ymm1
	vpslldq	$8, %ymm1, %ymm8
	vpxor	%ymm8, %ymm13, %ymm8
	vpsrldq	$8, %ymm1, %ymm1
	vpbroadcastq	.LCPI2_13(%rip), %ymm10
	vpclmulqdq	$16, %ymm10, %ymm8, %ymm9
	vpshufd	$78, %ymm8, %ymm8
	vpxorq	%ymm8, %ymm9, %ymm24
	vpclmulqdq	$16, %ymm10, %ymm24, %ymm8
	vpaddd	.LCPI2_21(%rip), %xmm22, %xmm9
	vinserti128	$1, %xmm9, %ymm7, %ymm9
	vinserti32x4	$1, %xmm22, %ymm22, %ymm10
	vpxorq	%ymm1, %ymm8, %ymm22
	vpaddd	.LCPI2_22(%rip), %ymm10, %ymm1
	vpaddd	.LCPI2_23(%rip), %ymm10, %ymm8
	vpaddd	.LCPI2_24(%rip), %ymm10, %ymm11
	vpaddd	.LCPI2_25(%rip), %ymm10, %ymm13
	vpaddd	.LCPI2_26(%rip), %ymm10, %ymm10
	vpxorq	%ymm9, %ymm29, %ymm9
	vpxorq	%ymm1, %ymm29, %ymm1
	vpxorq	%ymm8, %ymm29, %ymm8
	vpxorq	%ymm11, %ymm29, %ymm11
	vpxorq	%ymm13, %ymm29, %ymm13
	vpxorq	%ymm10, %ymm29, %ymm10
	vaesenc	%ymm30, %ymm9, %ymm9
	vaesenc	%ymm30, %ymm1, %ymm1
	vaesenc	%ymm30, %ymm8, %ymm8
	vaesenc	%ymm30, %ymm11, %ymm11
	vaesenc	%ymm30, %ymm13, %ymm13
	vaesenc	%ymm30, %ymm10, %ymm10
	vaesenc	%ymm31, %ymm9, %ymm9
	vaesenc	%ymm31, %ymm1, %ymm1
	vaesenc	%ymm31, %ymm8, %ymm8
	vaesenc	%ymm31, %ymm11, %ymm11
	vaesenc	%ymm31, %ymm13, %ymm13
	vaesenc	%ymm31, %ymm10, %ymm10
	vaesenc	%ymm23, %ymm9, %ymm9
	vaesenc	%ymm23, %ymm1, %ymm1
	vaesenc	%ymm23, %ymm8, %ymm8
	vaesenc	%ymm23, %ymm11, %ymm11
	vaesenc	%ymm23, %ymm13, %ymm13
	vaesenc	%ymm23, %ymm10, %ymm10
	vaesenc	%ymm17, %ymm9, %ymm9
	vaesenc	%ymm17, %ymm1, %ymm1
	vaesenc	%ymm17, %ymm8, %ymm8
	vaesenc	%ymm17, %ymm11, %ymm11
	vaesenc	%ymm17, %ymm13, %ymm13
	vaesenc	%ymm17, %ymm10, %ymm10
	vaesenc	%ymm25, %ymm9, %ymm9
	vaesenc	%ymm25, %ymm1, %ymm1
	vaesenc	%ymm25, %ymm8, %ymm8
	vaesenc	%ymm25, %ymm11, %ymm11
	vaesenc	%ymm25, %ymm13, %ymm13
	vaesenc	%ymm25, %ymm10, %ymm10
	vaesenc	%ymm26, %ymm9, %ymm9
	vaesenc	%ymm26, %ymm1, %ymm1
	vaesenc	%ymm26, %ymm8, %ymm8
	vaesenc	%ymm26, %ymm11, %ymm11
	vaesenc	%ymm26, %ymm13, %ymm13
	vaesenc	%ymm26, %ymm10, %ymm10
	vaesenc	%ymm28, %ymm9, %ymm9
	vaesenc	%ymm28, %ymm1, %ymm1
	vaesenc	%ymm28, %ymm8, %ymm8
	vaesenc	%ymm28, %ymm11, %ymm11
	vaesenc	%ymm28, %ymm13, %ymm13
	vaesenc	%ymm28, %ymm10, %ymm10
	vaesenc	%ymm14, %ymm9, %ymm9
	vaesenc	%ymm14, %ymm1, %ymm1
	vaesenc	%ymm14, %ymm8, %ymm8
	vaesenc	%ymm14, %ymm11, %ymm11
	vaesenc	%ymm14, %ymm13, %ymm13
	vaesenc	%ymm14, %ymm10, %ymm10
	vaesenc	%ymm0, %ymm9, %ymm9
	vaesenc	%ymm0, %ymm1, %ymm1
	vaesenc	%ymm0, %ymm8, %ymm8
	vaesenc	%ymm0, %ymm11, %ymm11
	vaesenc	%ymm0, %ymm13, %ymm13
	vaesenc	%ymm0, %ymm10, %ymm10
	vaesenc	%ymm3, %ymm9, %ymm9
	vaesenc	%ymm3, %ymm1, %ymm1
	vaesenc	%ymm3, %ymm8, %ymm8
	vaesenc	%ymm3, %ymm11, %ymm11
	vaesenc	%ymm3, %ymm13, %ymm13
	vaesenc	%ymm3, %ymm10, %ymm10
	vaesenc	%ymm2, %ymm9, %ymm9
	vaesenc	%ymm2, %ymm1, %ymm1
	vaesenc	%ymm2, %ymm8, %ymm8
	vaesenc	%ymm2, %ymm11, %ymm11
	vaesenc	%ymm2, %ymm13, %ymm13
	vaesenc	%ymm2, %ymm10, %ymm10
	vaesenc	%ymm4, %ymm9, %ymm9
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm8, %ymm8
	vaesenc	%ymm4, %ymm11, %ymm11
	vaesenc	%ymm4, %ymm13, %ymm13
	vaesenc	%ymm4, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm9, %ymm9
	vaesenc	%ymm5, %ymm1, %ymm1
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm11, %ymm11
	vaesenc	%ymm5, %ymm13, %ymm13
	vaesenc	%ymm5, %ymm10, %ymm15
	vaesenclast	%ymm6, %ymm9, %ymm9
	vaesenclast	%ymm6, %ymm1, %ymm1
	vaesenclast	%ymm6, %ymm8, %ymm8
	vaesenclast	%ymm6, %ymm11, %ymm11
	vaesenclast	%ymm6, %ymm13, %ymm16
	vpxor	(%rcx), %ymm9, %ymm10
	vpxor	32(%rcx), %ymm1, %ymm13
	vpxor	64(%rcx), %ymm8, %ymm8
	vpxor	96(%rcx), %ymm11, %ymm9
	vaesenclast	%ymm6, %ymm15, %ymm1
	vpxorq	128(%rcx), %ymm16, %ymm16
	vpxor	160(%rcx), %ymm1, %ymm11
	vpshufd	$78, %ymm24, %ymm24
	vpternlogq	$150, %ymm22, %ymm12, %ymm24
	addq	$192, %rcx
	vmovdqu	%ymm10, (%rax)
	vmovdqu	%ymm13, 32(%rax)
	vmovdqu	%ymm8, 64(%rax)
	vmovdqu	%ymm9, 96(%rax)
	vmovdqu64	%ymm16, 128(%rax)
	vmovdqu	%ymm11, 160(%rax)
	addq	$192, %rax
	addq	$-192, %r10
	vmovdqa64	%xmm7, %xmm22
	vpaddd	.LCPI2_20(%rip), %xmm7, %xmm7
	cmpq	$191, %r10
	ja	.LBB2_24
	vmovupd	160(%rsp), %ymm15
	vmovdqu	352(%rsp), %ymm12
.LBB2_26:
	vpxorq	%ymm24, %ymm10, %ymm0
	vpunpcklqdq	%ymm11, %ymm18, %ymm2
	vpunpckhqdq	%ymm11, %ymm18, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm11, %ymm18, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm11, %ymm18, %ymm4
	vpunpcklqdq	%ymm16, %ymm19, %ymm5
	vpunpckhqdq	%ymm16, %ymm19, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm16, %ymm19, %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vpclmulqdq	$17, %ymm16, %ymm19, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpunpcklqdq	%ymm9, %ymm21, %ymm5
	vpunpckhqdq	%ymm9, %ymm21, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm9, %ymm21, %ymm6
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm5
	vpclmulqdq	$17, %ymm9, %ymm21, %ymm9
	vpunpcklqdq	%ymm8, %ymm12, %ymm10
	vpunpckhqdq	%ymm8, %ymm12, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm8, %ymm12, %ymm11
	vpternlogq	$150, %ymm6, %ymm3, %ymm11
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm3
	vpternlogq	$150, %ymm5, %ymm2, %ymm3
	vpclmulqdq	$17, %ymm8, %ymm12, %ymm1
	vpternlogq	$150, %ymm9, %ymm4, %ymm1
	vpunpcklqdq	%ymm13, %ymm20, %ymm2
	vpunpckhqdq	%ymm13, %ymm20, %ymm4
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$0, %ymm13, %ymm20, %ymm4
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm13, %ymm20, %ymm5
	vpunpcklqdq	%ymm0, %ymm27, %ymm6
	vpunpckhqdq	%ymm0, %ymm27, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpclmulqdq	$0, %ymm0, %ymm27, %ymm8
	vpternlogq	$150, %ymm4, %ymm11, %ymm8
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm4
	vpternlogq	$150, %ymm2, %ymm3, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm27, %ymm0
	vpternlogq	$150, %ymm5, %ymm1, %ymm0
	vpternlogq	$150, %ymm8, %ymm0, %ymm4
	vpslldq	$8, %ymm4, %ymm1
	vpxor	%ymm1, %ymm8, %ymm1
	vpsrldq	$8, %ymm4, %ymm2
	vpbroadcastq	.LCPI2_13(%rip), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm3
	vpshufd	$78, %ymm1, %ymm1
	vpxor	%ymm1, %ymm3, %ymm1
	vpclmulqdq	$16, %ymm4, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpshufd	$78, %ymm1, %ymm24
	vpternlogq	$150, %ymm2, %ymm0, %ymm24
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa64	%xmm7, %xmm22
	vmovupd	512(%rsp), %ymm25
	vmovupd	480(%rsp), %ymm23
	vmovupd	448(%rsp), %ymm28
	vmovapd	96(%rsp), %xmm26
	vmovupd	416(%rsp), %ymm30
	vmovupd	384(%rsp), %ymm31
	vmovupd	256(%rsp), %ymm16
	vmovupd	224(%rsp), %ymm18
	vmovdqa	80(%rsp), %xmm2
	vmovdqa	64(%rsp), %xmm0
.LBB2_27:
	vmovapd	%xmm26, %xmm27
	vpunpcklqdq	%xmm2, %xmm0, %xmm0
	cmpq	$32, %r10
	jb	.LBB2_30
	vmovapd	%ymm25, %ymm29
	vinsertf32x4	$1, %xmm25, %ymm25, %ymm1
	vmovapd	%ymm23, %ymm25
	vinsertf32x4	$1, %xmm23, %ymm23, %ymm2
	vinsertf32x4	$1, %xmm28, %ymm28, %ymm3
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm4
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm5
	vinsertf128	$1, %xmm15, %ymm15, %ymm6
	vinsertf32x4	$1, %xmm16, %ymm16, %ymm7
	vinsertf32x4	$1, %xmm18, %ymm18, %ymm8
	vmovdqu	32(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vmovdqu	(%rsp), %ymm10
	vinserti128	$1, %xmm10, %ymm10, %ymm10
	vmovdqu	-32(%rsp), %ymm11
	vinserti128	$1, %xmm11, %ymm11, %ymm11
	vmovdqu	-64(%rsp), %ymm12
	vinserti128	$1, %xmm12, %ymm12, %ymm12
	vmovdqu	-96(%rsp), %ymm13
	vinserti128	$1, %xmm13, %ymm13, %ymm13
	vmovdqu	-128(%rsp), %ymm14
	vinserti128	$1, %xmm14, %ymm14, %ymm14
	vmovdqu	192(%rsp), %ymm15
	vinserti32x4	$1, %xmm15, %ymm15, %ymm16
	vmovdqu	288(%rsp), %ymm15
	vinserti32x4	$1, %xmm15, %ymm15, %ymm17
	vpmovsxbq	.LCPI2_29(%rip), %xmm19
	vpmovsxbq	.LCPI2_30(%rip), %xmm20
	vpbroadcastq	.LCPI2_13(%rip), %ymm26
	.p2align	4, 0x90
.LBB2_29:
	leaq	32(%r9), %rcx
	leaq	32(%rdx), %rax
	addq	$-32, %r10
	vpaddd	%xmm19, %xmm22, %xmm15
	vpaddd	%xmm20, %xmm22, %xmm18
	vinserti32x4	$1, %xmm15, %ymm22, %ymm15
	vxorpd	%ymm1, %ymm15, %ymm15
	vaesenc	%ymm2, %ymm15, %ymm15
	vaesenc	%ymm3, %ymm15, %ymm15
	vaesenc	%ymm4, %ymm15, %ymm15
	vaesenc	%ymm5, %ymm15, %ymm15
	vaesenc	%ymm6, %ymm15, %ymm15
	vaesenc	%ymm7, %ymm15, %ymm15
	vaesenc	%ymm8, %ymm15, %ymm15
	vaesenc	%ymm9, %ymm15, %ymm15
	vaesenc	%ymm10, %ymm15, %ymm15
	vaesenc	%ymm11, %ymm15, %ymm15
	vaesenc	%ymm12, %ymm15, %ymm15
	vaesenc	%ymm13, %ymm15, %ymm15
	vaesenc	%ymm14, %ymm15, %ymm15
	vaesenclast	%ymm16, %ymm15, %ymm15
	vpxor	(%r9), %ymm15, %ymm15
	vmovdqu	%ymm15, (%rdx)
	vpxorq	%ymm24, %ymm15, %ymm15
	vpunpcklqdq	%ymm15, %ymm17, %ymm21
	vpunpckhqdq	%ymm15, %ymm17, %ymm22
	vpxorq	%ymm21, %ymm22, %ymm21
	vpclmulqdq	$0, %ymm15, %ymm17, %ymm22
	vpclmulqdq	$1, %ymm21, %ymm21, %ymm21
	vpclmulqdq	$17, %ymm15, %ymm17, %ymm15
	vpternlogq	$150, %ymm22, %ymm15, %ymm21
	vpslldq	$8, %ymm21, %ymm23
	vpxorq	%ymm23, %ymm22, %ymm22
	vpsrldq	$8, %ymm21, %ymm21
	vpclmulqdq	$16, %ymm26, %ymm22, %ymm23
	vpshufd	$78, %ymm22, %ymm22
	vpxorq	%ymm22, %ymm23, %ymm22
	vpclmulqdq	$16, %ymm26, %ymm22, %ymm23
	vpxorq	%ymm21, %ymm23, %ymm21
	vpshufd	$78, %ymm22, %ymm24
	vpternlogq	$150, %ymm21, %ymm15, %ymm24
	movq	%rax, %rdx
	vmovdqa64	%xmm18, %xmm22
	movq	%rcx, %r9
	cmpq	$31, %r10
	ja	.LBB2_29
	jmp	.LBB2_31
.LBB2_30:
	vmovapd	%ymm25, %ymm29
	vmovapd	%ymm23, %ymm25
	movq	%rdx, %rax
	movq	%r9, %rcx
	vmovdqa64	%xmm22, %xmm18
.LBB2_31:
	vmovdqa	112(%rsp), %xmm1
	vpunpcklqdq	128(%rsp), %xmm1, %xmm1
	vpsllq	$3, %xmm0, %xmm0
	testq	%r10, %r10
	vmovapd	%xmm27, %xmm12
	je	.LBB2_35
	movl	$-1, %edx
	bzhil	%r10d, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %ymm2 {%k1} {z}
	vpaddd	.LCPI2_0(%rip), %xmm18, %xmm3
	vinserti32x4	$1, %xmm3, %ymm18, %ymm3
	vinsertf32x4	$1, %xmm29, %ymm29, %ymm4
	vxorpd	%ymm3, %ymm4, %ymm3
	vinsertf32x4	$1, %xmm25, %ymm25, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm28, %ymm28, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm30, %ymm30, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vinsertf32x4	$1, %xmm31, %ymm31, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu64	160(%rsp), %ymm27
	vinserti32x4	$1, %xmm27, %ymm27, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	256(%rsp), %ymm6
	vinserti128	$1, %xmm6, %ymm6, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	224(%rsp), %ymm7
	vinserti128	$1, %xmm7, %ymm7, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	32(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-32(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-64(%rsp), %ymm4
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-96(%rsp), %ymm8
	vinserti128	$1, %xmm8, %ymm8, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	-128(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm4
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	192(%rsp), %ymm11
	vinserti128	$1, %xmm11, %ymm11, %ymm4
	vaesenclast	%ymm4, %ymm3, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vmovdqu8	%ymm2, (%rax) {%k1}
	vmovdqu8	(%rax), %ymm2 {%k1} {z}
	vpxorq	%ymm2, %ymm24, %ymm2
	cmpq	$17, %r10
	vmovupd	288(%rsp), %ymm3
	jae	.LBB2_34
	vmovapd	%xmm12, %xmm3
.LBB2_34:
	vinsertf128	$1, %xmm3, %ymm3, %ymm3
	vpunpcklqdq	%ymm2, %ymm3, %ymm4
	vpunpckhqdq	%ymm2, %ymm3, %ymm5
	vxorpd	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm2, %ymm3, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm3, %ymm2
	vpternlogq	$150, %ymm5, %ymm2, %ymm4
	vpslldq	$8, %ymm4, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpsrldq	$8, %ymm4, %ymm4
	vpbroadcastq	.LCPI2_13(%rip), %ymm10
	vpclmulqdq	$16, %ymm10, %ymm3, %ymm5
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpclmulqdq	$16, %ymm10, %ymm3, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpshufd	$78, %ymm3, %ymm24
	vpternlogq	$150, %ymm4, %ymm2, %ymm24
	jmp	.LBB2_36
.LBB2_35:
	vmovdqu64	160(%rsp), %ymm27
	vmovdqu	256(%rsp), %ymm6
	vmovdqu	224(%rsp), %ymm7
	vmovdqu	-96(%rsp), %ymm8
	vmovdqu	-128(%rsp), %ymm9
	vmovdqu	192(%rsp), %ymm11
.LBB2_36:
	vextracti32x4	$1, %ymm24, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxorq	%xmm0, %xmm24, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
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
	vpternlogq	$120, .LCPI2_27(%rip), %xmm0, %xmm29
	vaesenc	%xmm25, %xmm29, %xmm0
	vaesenc	%xmm28, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm31, %xmm0, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	-32(%rsp), %xmm0, %xmm0
	vaesenc	-64(%rsp), %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm0, %xmm0
	vpxor	144(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_37:
	addq	$584, %rsp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_tigerlake_is_supported,@function
haberdashery_aes256gcmsiv_tigerlake_is_supported:
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
	.size	haberdashery_aes256gcmsiv_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.83.0-nightly (4ac7bcbaa 2024-09-04)"
	.section	".note.GNU-stack","",@progbits

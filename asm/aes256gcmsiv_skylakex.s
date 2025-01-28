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
	.section	.text.haberdashery_aes256gcmsiv_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_init,@function
haberdashery_aes256gcmsiv_skylakex_init:
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
	.size	haberdashery_aes256gcmsiv_skylakex_init, .Lfunc_end0-haberdashery_aes256gcmsiv_skylakex_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_1:
	.long	2
	.long	0
	.long	0
	.long	0
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
.LCPI1_16:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_17:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_18:
	.long	8
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_19:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata,"a",@progbits
.LCPI1_20:
	.byte	2
	.byte	0
.LCPI1_21:
	.byte	3
	.byte	0
.LCPI1_22:
	.byte	4
	.byte	0
.LCPI1_23:
	.byte	5
	.byte	0
.LCPI1_24:
	.byte	6
	.byte	0
.LCPI1_25:
	.byte	7
	.byte	0
.LCPI1_26:
	.byte	8
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_encrypt,@function
haberdashery_aes256gcmsiv_skylakex_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movq	64(%rsp), %r10
	xorl	%eax, %eax
	cmpq	80(%rsp), %r10
	jne	.LBB1_46
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r11b
	cmpq	%rax, %r10
	setb	%bl
	andb	%r11b, %bl
	cmpq	$16, 96(%rsp)
	sete	%r11b
	cmpq	$12, %rdx
	sete	%al
	andb	%r11b, %al
	andb	%bl, %al
	cmpb	$1, %al
	jne	.LBB1_45
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm0
	vxorps	.LCPI1_0(%rip), %xmm0, %xmm3
	vxorps	.LCPI1_1(%rip), %xmm0, %xmm2
	vxorps	.LCPI1_2(%rip), %xmm0, %xmm4
	vxorps	.LCPI1_3(%rip), %xmm0, %xmm1
	vxorps	.LCPI1_4(%rip), %xmm0, %xmm5
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm0, %xmm14
	vunpcklpd	%xmm4, %xmm2, %xmm24
	vunpcklpd	%xmm5, %xmm1, %xmm0
	vpslldq	$4, %xmm24, %xmm3
	vxorpd	%xmm5, %xmm5, %xmm5
	vunpcklpd	%xmm2, %xmm5, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm4, %xmm3, %xmm2
	vpbroadcastd	.LCPI1_19(%rip), %xmm16
	vpshufb	%xmm16, %xmm0, %xmm3
	vpbroadcastq	.LCPI1_6(%rip), %xmm4
	vaesenclast	%xmm4, %xmm3, %xmm4
	vpternlogq	$150, %xmm2, %xmm24, %xmm4
	vpslldq	$4, %xmm0, %xmm2
	vunpcklpd	%xmm1, %xmm5, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm5, %xmm2, %xmm15
	vmovaps	%xmm0, -96(%rsp)
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufb	%xmm16, %xmm15, %xmm1
	vpbroadcastq	.LCPI1_7(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm0
	vmovaps	%xmm4, -80(%rsp)
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpslldq	$4, %xmm15, %xmm1
	vpslldq	$8, %xmm15, %xmm2
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm5
	vpshufd	$78, %xmm3, %xmm7
	vmovdqa	%xmm1, %xmm3
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vmovdqa	%xmm7, -128(%rsp)
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm5
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm7
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm1
	vmovdqa	%xmm2, %xmm4
	vpternlogq	$150, %xmm5, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm12, %xmm5, %xmm7
	vmovdqa	%xmm1, -112(%rsp)
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm8
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm7, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm14, %xmm5, %xmm8
	vpclmulqdq	$16, %xmm14, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm14, %xmm5, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpslldq	$8, %xmm7, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm9
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm8, %xmm9
	vpclmulqdq	$17, %xmm14, %xmm5, %xmm10
	vpxorq	%xmm9, %xmm10, %xmm27
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm10
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm11
	vpxor	%xmm9, %xmm11, %xmm9
	vpslldq	$8, %xmm9, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm12, %xmm10, %xmm11
	vpshufd	$78, %xmm10, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$16, %xmm12, %xmm10, %xmm11
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm12
	vpxorq	%xmm11, %xmm12, %xmm20
	vpshufd	$255, %xmm0, %xmm11
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm11, %xmm1
	vmovdqa64	%xmm15, %xmm23
	vpternlogq	$150, %xmm6, %xmm15, %xmm1
	vpbroadcastq	.LCPI1_8(%rip), %xmm6
	vpshufb	%xmm16, %xmm1, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm2
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm11
	vpslldq	$12, %xmm0, %xmm12
	vpternlogq	$150, %xmm11, %xmm6, %xmm12
	vmovapd	%xmm0, %xmm25
	vpternlogq	$150, %xmm12, %xmm0, %xmm2
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm11
	vpslldq	$12, %xmm1, %xmm12
	vpternlogq	$150, %xmm11, %xmm6, %xmm12
	vpshufd	$255, %xmm2, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm0
	vmovaps	%xmm1, 32(%rsp)
	vpternlogq	$150, %xmm12, %xmm1, %xmm0
	vpshufb	%xmm16, %xmm0, %xmm6
	vpbroadcastq	.LCPI1_9(%rip), %xmm11
	vaesenclast	%xmm11, %xmm6, %xmm1
	vpslldq	$4, %xmm2, %xmm6
	vpslldq	$8, %xmm2, %xmm11
	vpslldq	$12, %xmm2, %xmm12
	vpternlogq	$150, %xmm11, %xmm6, %xmm12
	vmovaps	%xmm2, 16(%rsp)
	vpternlogq	$150, %xmm12, %xmm2, %xmm1
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm11
	vpslldq	$12, %xmm0, %xmm12
	vpternlogq	$150, %xmm11, %xmm6, %xmm12
	vpshufd	$255, %xmm1, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm2
	vmovaps	%xmm0, (%rsp)
	vpternlogq	$150, %xmm12, %xmm0, %xmm2
	vpshufb	%xmm16, %xmm2, %xmm6
	vpbroadcastq	.LCPI1_10(%rip), %xmm11
	vaesenclast	%xmm11, %xmm6, %xmm0
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm11
	vpslldq	$12, %xmm1, %xmm12
	vpternlogq	$150, %xmm11, %xmm6, %xmm12
	vmovaps	%xmm1, -16(%rsp)
	vpternlogq	$150, %xmm12, %xmm1, %xmm0
	vpslldq	$4, %xmm2, %xmm6
	vpslldq	$8, %xmm2, %xmm11
	vpslldq	$12, %xmm2, %xmm12
	vpternlogq	$150, %xmm11, %xmm6, %xmm12
	vpshufd	$255, %xmm0, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm1
	vmovaps	%xmm2, -32(%rsp)
	vpternlogq	$150, %xmm12, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_11(%rip), %xmm6
	vpshufb	%xmm16, %xmm1, %xmm12
	vaesenclast	%xmm6, %xmm12, %xmm2
	vpslldq	$4, %xmm0, %xmm6
	vpslldq	$8, %xmm0, %xmm17
	vpslldq	$12, %xmm0, %xmm18
	vpternlogq	$150, %xmm17, %xmm6, %xmm18
	vmovaps	%xmm0, -48(%rsp)
	vpternlogq	$150, %xmm18, %xmm0, %xmm2
	vpslldq	$4, %xmm1, %xmm18
	vpslldq	$8, %xmm1, %xmm19
	vmovaps	%xmm1, -64(%rsp)
	vpslldq	$12, %xmm1, %xmm17
	vpsrldq	$8, %xmm7, %xmm7
	vpshufd	$78, %xmm8, %xmm21
	vpternlogq	$150, %xmm7, %xmm27, %xmm21
	vpsrldq	$8, %xmm9, %xmm7
	vpshufd	$78, %xmm10, %xmm6
	vpternlogq	$150, %xmm7, %xmm20, %xmm6
	vmovdqa64	%xmm2, %xmm27
	vpshufd	$255, %xmm2, %xmm1
	cmpq	$128, %r8
	jb	.LBB1_6
	vmovdqa64	%xmm1, %xmm20
	vpxor	%xmm7, %xmm7, %xmm7
	movq	%r8, %rdx
	vpbroadcastq	.LCPI1_13(%rip), %xmm29
	vmovdqa64	%xmm14, %xmm22
	vmovdqa64	%xmm5, %xmm26
	vmovdqa	%xmm4, %xmm5
	vmovdqa	%xmm3, %xmm4
	vmovdqa64	%xmm6, %xmm28
	vmovdqa	-128(%rsp), %xmm6
	vmovdqa	-112(%rsp), %xmm8
	.p2align	4, 0x90
.LBB1_4:
	vmovdqu	16(%rcx), %xmm13
	vmovdqu	32(%rcx), %xmm9
	vmovdqu	80(%rcx), %xmm10
	vmovdqu	96(%rcx), %xmm11
	vmovdqu	112(%rcx), %xmm12
	vmovdqa64	%xmm22, %xmm14
	vpclmulqdq	$0, %xmm12, %xmm14, %xmm15
	vpclmulqdq	$1, %xmm12, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm14, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm11, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm11, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm0
	vpternlogq	$150, %xmm15, %xmm3, %xmm0
	vmovdqa64	%xmm21, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm3
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vmovdqu	48(%rcx), %xmm1
	vmovdqu	64(%rcx), %xmm2
	vpclmulqdq	$17, %xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm11, %xmm4, %xmm11
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm10
	vpternlogq	$150, %xmm12, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm12
	vpternlogq	$150, %xmm11, %xmm3, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm3
	vmovdqa64	%xmm28, %xmm14
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm11
	vpternlogq	$150, %xmm3, %xmm0, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm3
	vpternlogq	$150, %xmm0, %xmm12, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpternlogq	$150, %xmm0, %xmm10, %xmm1
	vmovdqa64	%xmm26, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm12, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm12, %xmm2
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm9, %xmm12, %xmm0
	vpclmulqdq	$0, %xmm13, %xmm15, %xmm3
	vpternlogq	$150, %xmm0, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm13, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm10
	vpternlogq	$150, %xmm0, %xmm2, %xmm10
	vpxor	(%rcx), %xmm7, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm2
	vpclmulqdq	$17, %xmm13, %xmm15, %xmm9
	vpternlogq	$150, %xmm2, %xmm1, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm2
	vpternlogq	$150, %xmm1, %xmm10, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpslldq	$8, %xmm2, %xmm7
	vpternlogq	$150, %xmm1, %xmm3, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vmovdqa64	%xmm29, %xmm10
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm1
	vpshufd	$78, %xmm7, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm7
	vpternlogq	$150, %xmm0, %xmm9, %xmm7
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	addq	$128, %rcx
	addq	$-128, %rdx
	vpternlogq	$150, %xmm0, %xmm1, %xmm7
	cmpq	$127, %rdx
	ja	.LBB1_4
	vmovdqa64	%xmm29, %xmm10
	vmovdqa	%xmm4, %xmm3
	vmovdqa	%xmm5, %xmm4
	vmovdqa64	%xmm26, %xmm5
	vmovdqa64	%xmm22, %xmm14
	vmovdqa64	%xmm28, %xmm6
	vmovdqa64	%xmm20, %xmm1
	jmp	.LBB1_7
.LBB1_6:
	vpxor	%xmm7, %xmm7, %xmm7
	movq	%r8, %rdx
	vpbroadcastq	.LCPI1_13(%rip), %xmm10
.LBB1_7:
	vpternlogq	$150, %xmm19, %xmm18, %xmm17
	vpxor	%xmm0, %xmm0, %xmm0
	vaesenclast	%xmm0, %xmm1, %xmm11
	vmovdqa64	%xmm11, %xmm28
	cmpq	$16, %rdx
	vmovdqa	-96(%rsp), %xmm15
	vmovdqa	-80(%rsp), %xmm12
	vmovdqa64	%xmm23, %xmm13
	vmovapd	%xmm25, %xmm1
	vmovdqa	-64(%rsp), %xmm9
	vmovdqa64	%xmm3, %xmm29
	jb	.LBB1_16
	leaq	-16(%rdx), %rdi
	testb	$16, %dil
	jne	.LBB1_9
	vpxor	(%rcx), %xmm7, %xmm7
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm7, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm14, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm14, %xmm9
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm14, %xmm1
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm0, %xmm10, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpbroadcastq	.LCPI1_13(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm7
	vpshufd	$78, %xmm10, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpbroadcastq	.LCPI1_13(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm10
	vpshufd	$78, %xmm7, %xmm18
	vpxor	%xmm1, %xmm10, %xmm7
	vpbroadcastq	.LCPI1_13(%rip), %xmm10
	vmovapd	%xmm25, %xmm1
	vpternlogq	$150, %xmm9, %xmm18, %xmm7
	vmovdqa	-64(%rsp), %xmm9
	movq	%rdi, %rdx
	cmpq	$16, %rdi
	jb	.LBB1_10
.LBB1_36:
	vmovapd	%xmm1, %xmm18
	.p2align	4, 0x90
.LBB1_37:
	vpxor	(%rcx), %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpternlogq	$150, 16(%rcx), %xmm1, %xmm3
	addq	$-32, %rdx
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm3, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm14, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm14, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm2, %xmm3, %xmm7
	vpternlogq	$150, %xmm1, %xmm0, %xmm7
	cmpq	$15, %rdx
	ja	.LBB1_37
	movq	%rdx, %rdi
	vmovapd	%xmm18, %xmm1
	vpternlogq	$150, %xmm17, %xmm9, %xmm28
	testq	%rdi, %rdi
	jne	.LBB1_11
	jmp	.LBB1_12
.LBB1_16:
	movq	%rdx, %rdi
	vpternlogq	$150, %xmm17, %xmm9, %xmm28
	testq	%rdi, %rdi
	jne	.LBB1_11
	jmp	.LBB1_12
.LBB1_9:
	cmpq	$16, %rdi
	jae	.LBB1_36
.LBB1_10:
	vpternlogq	$150, %xmm17, %xmm9, %xmm28
	testq	%rdi, %rdi
	je	.LBB1_12
.LBB1_11:
	movl	$-1, %edx
	bzhil	%edi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	vpxor	%xmm0, %xmm7, %xmm0
	vmovapd	%xmm1, %xmm11
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm7
	vpternlogq	$150, %xmm2, %xmm1, %xmm7
	vmovapd	%xmm11, %xmm1
.LBB1_12:
	vpslldq	$4, %xmm27, %xmm18
	vpslldq	$8, %xmm27, %xmm19
	vpslldq	$12, %xmm27, %xmm17
	vpshufb	%xmm16, %xmm28, %xmm0
	vpbroadcastq	.LCPI1_12(%rip), %xmm8
	vmovq	%r10, %xmm16
	vmovq	%r8, %xmm20
	cmpq	$128, %r10
	jb	.LBB1_17
	vmovdqa64	%xmm0, %xmm26
	movq	%r9, %rdx
	movq	%r10, %rcx
	vmovdqa64	%xmm14, %xmm22
	vmovdqa64	%xmm5, %xmm30
	vmovdqa64	%xmm4, %xmm31
	vmovdqa64	%xmm29, %xmm4
	vmovdqa64	%xmm6, %xmm29
	vmovdqa	-128(%rsp), %xmm6
	vmovdqa	-112(%rsp), %xmm8
	vmovdqa64	%xmm21, %xmm14
	.p2align	4, 0x90
.LBB1_14:
	vmovdqu	16(%rdx), %xmm9
	vmovdqu	32(%rdx), %xmm10
	vmovdqu	80(%rdx), %xmm0
	vmovdqu	96(%rdx), %xmm1
	vmovdqu	112(%rdx), %xmm2
	vmovdqa64	%xmm22, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm12
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm15
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm11
	vpternlogq	$150, %xmm3, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm12
	vpternlogq	$150, %xmm3, %xmm13, %xmm12
	vmovdqu	48(%rdx), %xmm3
	vmovdqu	64(%rdx), %xmm13
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa64	%xmm31, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm1
	vmovdqa64	%xmm29, %xmm15
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm12
	vpternlogq	$150, %xmm1, %xmm11, %xmm12
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm11
	vpternlogq	$150, %xmm1, %xmm2, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vmovdqa64	%xmm30, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm1
	vpternlogq	$150, %xmm0, %xmm11, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm14, %xmm3
	vpternlogq	$150, %xmm0, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm9, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm14, %xmm11
	vpternlogq	$150, %xmm0, %xmm1, %xmm11
	vpxor	(%rdx), %xmm7, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm10
	vpclmulqdq	$17, %xmm9, %xmm14, %xmm9
	vpternlogq	$150, %xmm1, %xmm2, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm2
	vpternlogq	$150, %xmm1, %xmm11, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpslldq	$8, %xmm2, %xmm7
	vpternlogq	$150, %xmm1, %xmm3, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm1
	vpshufd	$78, %xmm7, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm7
	vpternlogq	$150, %xmm0, %xmm9, %xmm7
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	addq	$128, %rdx
	addq	$-128, %rcx
	vpternlogq	$150, %xmm0, %xmm1, %xmm7
	cmpq	$127, %rcx
	ja	.LBB1_14
	vmovdqa	-96(%rsp), %xmm15
	vmovdqa	-80(%rsp), %xmm12
	vmovdqa64	%xmm23, %xmm13
	vmovapd	%xmm25, %xmm1
	vmovdqa	-64(%rsp), %xmm9
	vmovdqa64	%xmm22, %xmm14
	vmovdqa64	%xmm26, %xmm0
	vpbroadcastq	.LCPI1_12(%rip), %xmm8
	jmp	.LBB1_18
.LBB1_17:
	movq	%r10, %rcx
	movq	%r9, %rdx
.LBB1_18:
	vmovd	8(%rsi), %xmm2
	vmovq	(%rsi), %xmm3
	vpternlogq	$150, %xmm19, %xmm18, %xmm17
	vaesenclast	%xmm8, %xmm0, %xmm11
	vpunpcklqdq	%xmm16, %xmm20, %xmm4
	cmpq	$16, %rcx
	vmovdqa64	%xmm27, %xmm8
	jb	.LBB1_24
	leaq	-16(%rcx), %rsi
	testb	$16, %sil
	jne	.LBB1_21
	vpxor	(%rdx), %xmm7, %xmm0
	addq	$16, %rdx
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm0, %xmm7, %xmm7
	vpternlogq	$150, %xmm6, %xmm5, %xmm7
	movq	%rsi, %rcx
.LBB1_21:
	cmpq	$16, %rsi
	jb	.LBB1_25
	.p2align	4, 0x90
.LBB1_22:
	vpxor	(%rdx), %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm0, %xmm6, %xmm7
	vpternlogq	$150, 16(%rdx), %xmm5, %xmm7
	addq	$-32, %rcx
	addq	$32, %rdx
	vpclmulqdq	$0, %xmm7, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm14, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm14, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm14, %xmm6
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm7
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm7
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm6, %xmm7, %xmm7
	vpternlogq	$150, %xmm5, %xmm0, %xmm7
	cmpq	$15, %rcx
	ja	.LBB1_22
.LBB1_24:
	movq	%rcx, %rsi
.LBB1_25:
	movq	88(%rsp), %rcx
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpternlogq	$150, %xmm17, %xmm8, %xmm11
	vmovdqa	%xmm11, -128(%rsp)
	vpsllq	$3, %xmm4, %xmm3
	testq	%rsi, %rsi
	je	.LBB1_27
	movl	$-1, %edi
	bzhil	%esi, %edi, %esi
	kmovd	%esi, %k1
	vmovdqu8	(%rdx), %xmm0 {%k1} {z}
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm4
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm0, %xmm6, %xmm7
	vpternlogq	$150, %xmm5, %xmm4, %xmm7
.LBB1_27:
	vpxor	%xmm3, %xmm7, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	vpsrldq	$8, %xmm3, %xmm0
	vpternlogq	$150, %xmm0, %xmm4, %xmm5
	vpternlogq	$108, .LCPI1_14(%rip), %xmm24, %xmm5
	vaesenc	%xmm15, %xmm5, %xmm0
	vmovdqa	%xmm12, %xmm7
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	%xmm13, %xmm10
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovapd	%xmm1, -112(%rsp)
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vmovdqa	16(%rsp), %xmm13
	vaesenc	%xmm13, %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa	-16(%rsp), %xmm3
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa	-32(%rsp), %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa	-48(%rsp), %xmm5
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa64	%xmm28, %xmm6
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenclast	-128(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	vpor	.LCPI1_15(%rip), %xmm0, %xmm15
	movq	72(%rsp), %rcx
	cmpq	$128, %r10
	jb	.LBB1_31
	vpmovsxbq	.LCPI1_20(%rip), %xmm17
	vpmovsxbq	.LCPI1_21(%rip), %xmm18
	vpmovsxbq	.LCPI1_22(%rip), %xmm19
	vpmovsxbq	.LCPI1_23(%rip), %xmm20
	vpmovsxbq	.LCPI1_24(%rip), %xmm21
	vpmovsxbq	.LCPI1_25(%rip), %xmm22
	vpmovsxbq	.LCPI1_26(%rip), %xmm23
	vmovdqa64	%xmm4, %xmm28
	vmovdqa64	%xmm3, %xmm30
	vmovdqa64	%xmm1, %xmm31
	vmovdqa64	%xmm5, %xmm16
	vmovdqa64	%xmm8, %xmm29
	vmovdqa64	%xmm6, %xmm26
	vmovdqa64	%xmm7, %xmm25
	vmovdqa64	%xmm10, %xmm27
	vmovaps	-96(%rsp), %xmm10
	vmovaps	-112(%rsp), %xmm1
	vmovdqa	-128(%rsp), %xmm11
	.p2align	4, 0x90
.LBB1_29:
	vpaddd	.LCPI1_0(%rip), %xmm15, %xmm0
	vpaddd	%xmm17, %xmm15, %xmm4
	vpaddd	%xmm18, %xmm15, %xmm5
	vpaddd	%xmm19, %xmm15, %xmm6
	vpaddd	%xmm20, %xmm15, %xmm7
	vpaddd	%xmm21, %xmm15, %xmm8
	vpaddd	%xmm22, %xmm15, %xmm9
	vpxorq	%xmm24, %xmm15, %xmm2
	vpxorq	%xmm0, %xmm24, %xmm3
	vpxorq	%xmm4, %xmm24, %xmm4
	vpxorq	%xmm5, %xmm24, %xmm5
	vpxorq	%xmm6, %xmm24, %xmm6
	vpxorq	%xmm7, %xmm24, %xmm7
	vpxorq	%xmm8, %xmm24, %xmm8
	vpxorq	%xmm9, %xmm24, %xmm14
	vmovdqa	-64(%rsp), %xmm9
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm25, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm27, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm28, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm30, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm31, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm16, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm29, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm26, %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenclast	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm11, %xmm3, %xmm3
	vaesenclast	%xmm11, %xmm4, %xmm4
	vaesenclast	%xmm11, %xmm5, %xmm5
	vaesenclast	%xmm11, %xmm6, %xmm6
	vaesenclast	%xmm11, %xmm7, %xmm7
	vaesenclast	%xmm11, %xmm8, %xmm8
	vaesenclast	%xmm11, %xmm14, %xmm14
	#NO_APP
	vpxor	(%r9), %xmm2, %xmm0
	vpxor	16(%r9), %xmm3, %xmm2
	vpxor	32(%r9), %xmm4, %xmm3
	vpxor	48(%r9), %xmm5, %xmm4
	vpxor	64(%r9), %xmm6, %xmm5
	vpxor	80(%r9), %xmm7, %xmm6
	vpxor	96(%r9), %xmm8, %xmm7
	vpxor	112(%r9), %xmm14, %xmm8
	leaq	128(%r9), %r9
	vmovdqu	%xmm0, (%rcx)
	vmovdqu	%xmm2, 16(%rcx)
	vmovdqu	%xmm3, 32(%rcx)
	vmovdqu	%xmm4, 48(%rcx)
	vmovdqu	%xmm5, 64(%rcx)
	vmovdqu	%xmm6, 80(%rcx)
	vmovdqu	%xmm7, 96(%rcx)
	vmovdqu	%xmm8, 112(%rcx)
	addq	$128, %rcx
	addq	$-128, %r10
	vpaddd	%xmm23, %xmm15, %xmm15
	cmpq	$127, %r10
	ja	.LBB1_29
	vmovdqa64	%xmm28, %xmm4
	vmovdqa64	%xmm30, %xmm3
	vmovdqa64	%xmm31, %xmm1
	vmovdqa64	%xmm16, %xmm5
	vmovdqa64	%xmm29, %xmm8
	vmovdqa64	%xmm26, %xmm6
	vmovdqa64	%xmm25, %xmm7
	vmovdqa64	%xmm27, %xmm10
.LBB1_31:
	cmpq	$16, %r10
	jb	.LBB1_34
	leaq	-16(%r10), %rsi
	testb	$16, %sil
	jne	.LBB1_39
	leaq	16(%r9), %rdi
	leaq	16(%rcx), %rdx
	vpaddd	.LCPI1_0(%rip), %xmm15, %xmm2
	vpxorq	%xmm24, %xmm15, %xmm0
	vaesenc	-96(%rsp), %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	-112(%rsp), %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenclast	-128(%rsp), %xmm0, %xmm0
	vpxor	(%r9), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movq	%rdx, %rcx
	vmovdqa	%xmm2, %xmm15
	movq	%rsi, %r10
	movq	%rdi, %r9
	cmpq	$16, %rsi
	jae	.LBB1_40
	jmp	.LBB1_43
.LBB1_34:
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovdqa	%xmm15, %xmm2
	jmp	.LBB1_43
.LBB1_39:
	cmpq	$16, %rsi
	jb	.LBB1_43
.LBB1_40:
	vmovdqa64	-96(%rsp), %xmm30
	vmovdqa64	%xmm3, %xmm27
	vmovdqa64	-112(%rsp), %xmm31
	vmovdqa64	%xmm6, %xmm19
	vmovdqa64	%xmm5, %xmm21
	vmovdqa64	%xmm1, %xmm22
	vmovdqa64	%xmm13, %xmm25
	vmovdqa64	%xmm12, %xmm26
	vmovdqa64	%xmm4, %xmm28
	vmovdqa64	%xmm9, %xmm20
	vmovdqa64	%xmm10, %xmm23
	vmovdqa64	%xmm8, %xmm29
	vmovdqa64	-128(%rsp), %xmm16
	vmovdqa	-80(%rsp), %xmm7
	.p2align	4, 0x90
.LBB1_41:
	vpaddd	.LCPI1_0(%rip), %xmm15, %xmm17
	vpxorq	%xmm24, %xmm15, %xmm4
	vmovdqa64	%xmm30, %xmm3
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa64	%xmm23, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovdqa64	%xmm31, %xmm8
	vaesenc	%xmm8, %xmm4, %xmm4
	vmovdqa64	%xmm26, %xmm11
	vaesenc	%xmm11, %xmm4, %xmm4
	vmovdqa64	%xmm25, %xmm13
	vaesenc	%xmm13, %xmm4, %xmm4
	vmovdqa64	%xmm28, %xmm10
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa64	%xmm27, %xmm12
	vaesenc	%xmm12, %xmm4, %xmm4
	vmovdqa64	%xmm22, %xmm9
	vaesenc	%xmm9, %xmm4, %xmm4
	vmovdqa64	%xmm21, %xmm5
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm20, %xmm6
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa64	%xmm29, %xmm2
	vaesenc	%xmm2, %xmm4, %xmm4
	vmovdqa64	%xmm19, %xmm14
	vaesenc	%xmm14, %xmm4, %xmm4
	vmovdqa64	%xmm16, %xmm0
	vaesenclast	%xmm0, %xmm4, %xmm4
	vpxor	(%r9), %xmm4, %xmm4
	vmovdqu	%xmm4, (%rcx)
	vpxorq	%xmm17, %xmm24, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vmovdqa64	%xmm16, %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpxor	16(%r9), %xmm0, %xmm0
	addq	$32, %r9
	vmovdqu	%xmm0, 16(%rcx)
	addq	$32, %rcx
	addq	$-32, %r10
	vpaddd	.LCPI1_1(%rip), %xmm15, %xmm15
	cmpq	$15, %r10
	ja	.LBB1_41
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovdqa	%xmm15, %xmm2
	vmovdqa64	%xmm29, %xmm8
	vmovdqa64	%xmm27, %xmm3
	vmovdqa64	%xmm28, %xmm4
	vmovdqa64	%xmm26, %xmm12
	vmovdqa64	%xmm25, %xmm13
	vmovdqa64	%xmm22, %xmm1
	vmovdqa64	%xmm21, %xmm5
	vmovdqa64	%xmm19, %xmm6
	vmovdqa	-80(%rsp), %xmm7
	vmovdqa64	%xmm23, %xmm10
	vmovdqa64	%xmm20, %xmm9
.LBB1_43:
	testq	%rsi, %rsi
	je	.LBB1_45
	movl	$-1, %ecx
	bzhil	%esi, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdi), %xmm0 {%k1} {z}
	vpxorq	%xmm24, %xmm2, %xmm2
	vaesenc	-96(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	-112(%rsp), %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenclast	-128(%rsp), %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rdx) {%k1}
.LBB1_45:
	movzbl	%al, %eax
.LBB1_46:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_skylakex_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_1:
	.long	2
	.long	0
	.long	0
	.long	0
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
.LCPI2_15:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_16:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI2_17:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	10
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI2_21:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_22:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata,"a",@progbits
.LCPI2_23:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcmsiv_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_decrypt,@function
haberdashery_aes256gcmsiv_skylakex_decrypt:
	.cfi_startproc
	subq	$264, %rsp
	.cfi_def_cfa_offset 272
	movq	272(%rsp), %r10
	xorl	%eax, %eax
	cmpq	304(%rsp), %r10
	jne	.LBB2_37
	cmpq	$12, %rdx
	jne	.LBB2_37
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB2_37
	cmpq	%rdx, %r10
	jae	.LBB2_37
	cmpq	$16, 288(%rsp)
	jb	.LBB2_37
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm1
	vxorps	.LCPI2_0(%rip), %xmm1, %xmm3
	vxorps	.LCPI2_1(%rip), %xmm1, %xmm2
	vxorps	.LCPI2_2(%rip), %xmm1, %xmm4
	vxorps	.LCPI2_3(%rip), %xmm1, %xmm0
	vxorps	.LCPI2_4(%rip), %xmm1, %xmm5
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vunpcklpd	%xmm3, %xmm1, %xmm3
	vunpcklpd	%xmm4, %xmm2, %xmm31
	vmovlhps	%xmm5, %xmm0, %xmm6
	vpslldq	$4, %xmm31, %xmm4
	vxorpd	%xmm1, %xmm1, %xmm1
	vunpcklpd	%xmm2, %xmm1, %xmm5
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpbroadcastd	.LCPI2_22(%rip), %xmm17
	vpternlogq	$150, %xmm5, %xmm4, %xmm2
	vpshufb	%xmm17, %xmm6, %xmm4
	vpbroadcastq	.LCPI2_6(%rip), %xmm5
	vaesenclast	%xmm5, %xmm4, %xmm5
	vpternlogq	$150, %xmm2, %xmm31, %xmm5
	vpslldq	$4, %xmm6, %xmm2
	vunpcklpd	%xmm0, %xmm1, %xmm4
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm4, %xmm2, %xmm0
	vpshufd	$255, %xmm5, %xmm2
	vaesenclast	%xmm1, %xmm2, %xmm12
	vmovaps	%xmm6, -48(%rsp)
	vpternlogq	$150, %xmm0, %xmm6, %xmm12
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm2
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	vpshufb	%xmm17, %xmm12, %xmm0
	vpbroadcastq	.LCPI2_7(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm10
	vmovdqa64	%xmm5, %xmm26
	vpternlogq	$150, %xmm4, %xmm5, %xmm10
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm2
	vpslldq	$12, %xmm12, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	vpshufd	$255, %xmm10, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm13
	vpternlogq	$150, %xmm4, %xmm12, %xmm13
	vpslldq	$4, %xmm10, %xmm2
	vpslldq	$8, %xmm10, %xmm4
	vpslldq	$12, %xmm10, %xmm0
	vpternlogq	$150, %xmm4, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_13(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm5
	vpshufd	$78, %xmm2, %xmm8
	vpternlogq	$150, %xmm4, %xmm5, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpshufd	$78, %xmm2, %xmm11
	vpternlogq	$150, %xmm4, %xmm5, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	vmovdqa	%xmm2, 64(%rsp)
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm4
	vmovdqa	%xmm8, -16(%rsp)
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm5
	vpshufd	$78, %xmm2, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm3, %xmm6, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpslldq	$8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vmovdqa64	%xmm7, %xmm16
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm5
	vmovdqa	%xmm6, 48(%rsp)
	vpclmulqdq	$17, %xmm3, %xmm6, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpshufb	%xmm17, %xmm13, %xmm6
	vpbroadcastq	.LCPI2_8(%rip), %xmm7
	vaesenclast	%xmm7, %xmm6, %xmm8
	vpternlogq	$150, %xmm0, %xmm10, %xmm8
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm6
	vpslldq	$12, %xmm13, %xmm7
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vpshufd	$255, %xmm8, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm9
	vpternlogq	$150, %xmm7, %xmm13, %xmm9
	vpshufb	%xmm17, %xmm9, %xmm0
	vpbroadcastq	.LCPI2_9(%rip), %xmm6
	vaesenclast	%xmm6, %xmm0, %xmm15
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vmovdqa64	%xmm8, %xmm18
	vpternlogq	$150, %xmm7, %xmm8, %xmm15
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vpshufd	$255, %xmm15, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm8
	vmovaps	%xmm9, -32(%rsp)
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm0
	vpbroadcastq	.LCPI2_10(%rip), %xmm6
	vaesenclast	%xmm6, %xmm0, %xmm9
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm6
	vpslldq	$12, %xmm15, %xmm7
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vmovaps	%xmm15, -128(%rsp)
	vpternlogq	$150, %xmm7, %xmm15, %xmm9
	vmovdqa64	%xmm8, %xmm21
	vmovdqa	%xmm9, %xmm8
	vmovdqa	%xmm9, -96(%rsp)
	vpslldq	$4, %xmm21, %xmm0
	vpslldq	$8, %xmm21, %xmm6
	vpslldq	$12, %xmm21, %xmm7
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vpshufd	$255, %xmm9, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm14
	vpternlogq	$150, %xmm7, %xmm21, %xmm14
	vpbroadcastq	.LCPI2_11(%rip), %xmm0
	vpshufb	%xmm17, %xmm14, %xmm6
	vaesenclast	%xmm0, %xmm6, %xmm15
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm6, %xmm0, %xmm7
	vpslldq	$4, %xmm14, %xmm0
	vpslldq	$8, %xmm14, %xmm6
	vpslldq	$12, %xmm14, %xmm9
	vpternlogq	$150, %xmm6, %xmm0, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm15
	vmovaps	%xmm14, -112(%rsp)
	vmovdqa	%xmm15, -80(%rsp)
	vpshufd	$255, %xmm15, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm7
	vpternlogq	$150, %xmm9, %xmm14, %xmm7
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm4, %xmm15
	vpternlogq	$150, %xmm0, %xmm5, %xmm15
	cmpq	$96, %r8
	vmovaps	%xmm13, 16(%rsp)
	jb	.LBB2_6
	vmovdqa	%xmm7, %xmm13
	vmovapd	%xmm10, %xmm23
	vmovapd	%xmm12, %xmm22
	movq	%r8, %rax
	vmovdqa64	%xmm16, %xmm8
	vmovdqa	64(%rsp), %xmm14
	vmovdqa	-16(%rsp), %xmm10
	vmovdqa	%xmm15, %xmm12
	vmovdqa	%xmm11, %xmm15
	vmovdqa	48(%rsp), %xmm11
	.p2align	4, 0x90
.LBB2_25:
	vmovdqu	48(%rcx), %xmm0
	vmovdqu	64(%rcx), %xmm2
	vmovdqu	80(%rcx), %xmm4
	vpclmulqdq	$0, %xmm4, %xmm3, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm3, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm2, %xmm10, %xmm9
	vpclmulqdq	$1, -16(%rsp), %xmm2, %xmm10
	vpternlogq	$150, %xmm9, %xmm6, %xmm10
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm6
	vpternlogq	$150, %xmm5, %xmm7, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm7
	vpternlogq	$150, %xmm5, %xmm10, %xmm7
	vmovdqa	-16(%rsp), %xmm10
	vmovdqu	16(%rcx), %xmm5
	vmovdqu	32(%rcx), %xmm9
	vpclmulqdq	$17, %xmm4, %xmm3, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm10, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpternlogq	$150, %xmm4, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm9, %xmm11, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm11, %xmm4
	vpternlogq	$150, %xmm2, %xmm7, %xmm4
	vpclmulqdq	$0, %xmm9, %xmm11, %xmm2
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm7
	vpternlogq	$150, %xmm2, %xmm6, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm6
	vpternlogq	$150, %xmm2, %xmm4, %xmm6
	vpxor	(%rcx), %xmm1, %xmm1
	vpclmulqdq	$17, %xmm9, %xmm11, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm2
	vpternlogq	$150, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm0
	vpslldq	$8, %xmm2, %xmm5
	vpternlogq	$150, %xmm0, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm1
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm5, %xmm2
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	cmpq	$95, %rax
	ja	.LBB2_25
	vmovdqa	16(%rsp), %xmm8
	vmovapd	-80(%rsp), %xmm14
	vmovdqa	%xmm15, %xmm11
	vmovdqa	%xmm12, %xmm15
	vmovdqa64	%xmm21, %xmm29
	vmovapd	%xmm22, %xmm12
	vmovapd	%xmm23, %xmm10
	vmovdqa	%xmm13, %xmm7
	jmp	.LBB2_7
.LBB2_6:
	vmovdqa	%xmm13, %xmm8
	vmovdqa64	%xmm21, %xmm29
	movq	%r8, %rax
	vmovapd	-80(%rsp), %xmm14
.LBB2_7:
	vpslldq	$4, %xmm14, %xmm2
	vpslldq	$8, %xmm14, %xmm4
	vpslldq	$12, %xmm14, %xmm0
	vpshufb	%xmm17, %xmm7, %xmm5
	vpbroadcastq	.LCPI2_12(%rip), %xmm9
	movq	280(%rsp), %rdx
	cmpq	$16, %rax
	vmovdqa64	%xmm18, %xmm13
	jb	.LBB2_8
	leaq	-16(%rax), %rdi
	testb	$16, %dil
	jne	.LBB2_18
	vpxor	(%rcx), %xmm1, %xmm1
	addq	$16, %rcx
	vmovdqa64	%xmm7, %xmm17
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm7
	vmovdqa	%xmm8, %xmm13
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm8
	vmovdqa64	%xmm9, %xmm19
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vmovdqa64	%xmm16, %xmm6
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm1, %xmm9, %xmm1
	vpternlogq	$150, %xmm8, %xmm7, %xmm1
	vmovdqa64	%xmm17, %xmm7
	vmovdqa	%xmm13, %xmm8
	vmovdqa64	%xmm18, %xmm13
	vmovdqa64	%xmm19, %xmm9
	movq	%rdi, %rax
	jmp	.LBB2_20
.LBB2_8:
	movq	%rax, %rdi
	vmovdqa64	%xmm16, %xmm6
	jmp	.LBB2_9
.LBB2_18:
	vmovdqa64	%xmm16, %xmm6
.LBB2_20:
	cmpq	$16, %rdi
	jb	.LBB2_9
	vmovdqa64	%xmm9, %xmm19
	vmovdqa64	%xmm7, %xmm17
	vmovapd	%xmm10, %xmm16
	.p2align	4, 0x90
.LBB2_22:
	vpxor	(%rcx), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm7
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm8
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpternlogq	$150, %xmm1, %xmm8, %xmm9
	vpternlogq	$150, 16(%rcx), %xmm7, %xmm9
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm7
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm8
	vpslldq	$8, %xmm7, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm9
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm9
	vpshufd	$78, %xmm1, %xmm10
	vpxor	%xmm8, %xmm9, %xmm1
	vpternlogq	$150, %xmm7, %xmm10, %xmm1
	cmpq	$15, %rax
	ja	.LBB2_22
	movq	%rax, %rdi
	vmovdqa	16(%rsp), %xmm8
	vmovdqa64	%xmm18, %xmm13
	vmovapd	%xmm16, %xmm10
	vmovdqa64	%xmm17, %xmm7
	vmovdqa64	%xmm19, %xmm9
.LBB2_9:
	vpternlogq	$150, %xmm4, %xmm2, %xmm0
	vaesenclast	%xmm9, %xmm5, %xmm9
	vmovdqu64	(%rdx), %xmm27
	testq	%rdi, %rdi
	je	.LBB2_11
	movl	$-1, %eax
	bzhil	%edi, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rcx), %xmm2 {%k1} {z}
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm5, %xmm1
	vpternlogq	$150, %xmm4, %xmm2, %xmm1
.LBB2_11:
	vmovq	%r10, %xmm17
	vmovd	8(%rsi), %xmm28
	vmovq	(%rsi), %xmm25
	vmovq	%r8, %xmm18
	movq	296(%rsp), %rdx
	vpternlogq	$150, %xmm0, %xmm14, %xmm9
	vporq	.LCPI2_14(%rip), %xmm27, %xmm23
	cmpq	$96, %r10
	vmovdqa	%xmm7, 32(%rsp)
	vmovdqa	%xmm9, (%rsp)
	vmovaps	%xmm3, -64(%rsp)
	vmovdqa64	%xmm27, 240(%rsp)
	jb	.LBB2_12
	vmovdqa	%xmm11, 80(%rsp)
	vpaddd	.LCPI2_0(%rip), %xmm23, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm23, %xmm2
	vpaddd	.LCPI2_2(%rip), %xmm23, %xmm4
	vpaddd	.LCPI2_3(%rip), %xmm23, %xmm5
	vpaddd	.LCPI2_4(%rip), %xmm23, %xmm6
	vmovdqa64	%xmm7, %xmm19
	vpxorq	%xmm31, %xmm23, %xmm7
	vpxorq	%xmm0, %xmm31, %xmm0
	vpxorq	%xmm2, %xmm31, %xmm2
	vpxorq	%xmm4, %xmm31, %xmm4
	vpxorq	%xmm5, %xmm31, %xmm5
	vpxorq	%xmm6, %xmm31, %xmm6
	vmovaps	-48(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm26, %xmm11
	vmovdqa64	%xmm26, 160(%rsp)
	#APP
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	#NO_APP
	vmovapd	%xmm12, 144(%rsp)
	#APP
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	#NO_APP
	vmovapd	%xmm10, 128(%rsp)
	#APP
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	#NO_APP
	vmovaps	-32(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	-128(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm29, %xmm8
	#APP
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	-96(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	#NO_APP
	vmovaps	-112(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm19, %xmm10
	#APP
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenclast	%xmm9, %xmm7, %xmm7
	vaesenclast	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm9, %xmm2, %xmm2
	vaesenclast	%xmm9, %xmm4, %xmm4
	vaesenclast	%xmm9, %xmm5, %xmm5
	vaesenclast	%xmm9, %xmm6, %xmm6
	#NO_APP
	vpxorq	(%r9), %xmm7, %xmm22
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vxorpd	16(%r9), %xmm0, %xmm9
	vpxor	32(%r9), %xmm2, %xmm10
	vpxor	48(%r9), %xmm4, %xmm11
	vmovdqa64	%xmm29, %xmm0
	vpxor	64(%r9), %xmm5, %xmm12
	vmovdqa	%xmm13, %xmm2
	vpxor	80(%r9), %xmm6, %xmm13
	vmovdqu64	%xmm22, (%rdx)
	vmovupd	%xmm9, 16(%rdx)
	vmovdqu	%xmm10, 32(%rdx)
	vmovdqu	%xmm11, 48(%rdx)
	vmovdqu	%xmm12, 64(%rdx)
	addq	$-96, %r10
	vmovdqu	%xmm13, 80(%rdx)
	vpaddd	.LCPI2_15(%rip), %xmm23, %xmm21
	cmpq	$96, %r10
	jb	.LBB2_28
	vmovdqa64	%xmm18, 176(%rsp)
	vmovdqa64	%xmm17, 192(%rsp)
	vmovdqa64	%xmm25, 208(%rsp)
	vmovdqa64	%xmm28, 224(%rsp)
	vmovdqa	%xmm2, 112(%rsp)
	vmovdqa64	-32(%rsp), %xmm19
	vmovaps	-128(%rsp), %xmm25
	vmovdqa	%xmm0, 96(%rsp)
	vmovaps	-96(%rsp), %xmm27
	vmovaps	-112(%rsp), %xmm20
	vmovdqa64	%xmm14, %xmm24
	vmovdqa64	64(%rsp), %xmm29
	vmovdqa64	-16(%rsp), %xmm30
	vmovdqa64	48(%rsp), %xmm26
	vmovdqa64	80(%rsp), %xmm16
	vmovdqa64	%xmm15, %xmm17
	vmovapd	(%rsp), %xmm28
	.p2align	4, 0x90
.LBB2_31:
	vpaddd	.LCPI2_16(%rip), %xmm23, %xmm0
	vpaddd	.LCPI2_17(%rip), %xmm23, %xmm2
	vpaddd	.LCPI2_18(%rip), %xmm23, %xmm4
	vpaddd	.LCPI2_19(%rip), %xmm23, %xmm5
	vpaddd	.LCPI2_20(%rip), %xmm23, %xmm15
	vpxorq	%xmm31, %xmm21, %xmm6
	vpxorq	%xmm0, %xmm31, %xmm14
	vpxorq	%xmm2, %xmm31, %xmm8
	vpxorq	%xmm4, %xmm31, %xmm7
	vpxorq	%xmm5, %xmm31, %xmm0
	vpxorq	%xmm15, %xmm31, %xmm2
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm15, %xmm15, %xmm15
	vmovapd	%xmm9, %xmm23
	vmovdqa64	%xmm10, %xmm18
	vmovaps	-64(%rsp), %xmm3
	vmovaps	-48(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm9
	vpxor	%xmm9, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vmovaps	160(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm30, %xmm10
	vmovaps	144(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm12, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm12, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm12, %xmm9
	vpxor	%xmm9, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm12, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vmovaps	128(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm16, %xmm10
	vmovaps	16(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm9
	vpxor	%xmm9, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vmovaps	112(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm26, %xmm3
	vmovaps	%xmm25, %xmm10
	vmovdqa64	%xmm18, %xmm11
	#APP
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm9
	vpxor	%xmm9, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vmovaps	96(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm17, %xmm10
	vmovaps	%xmm27, %xmm3
	vmovapd	%xmm23, %xmm11
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm9
	vpxor	%xmm9, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vpxorq	%xmm1, %xmm22, %xmm1
	vmovaps	%xmm20, %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm29, %xmm3
	vmovdqa64	%xmm24, %xmm10
	#APP
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm9
	vpxor	%xmm9, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm4, %xmm3, %xmm1
	vpunpckhqdq	%xmm3, %xmm4, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vmovaps	32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovapd	%xmm28, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm6, %xmm6
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufd	$78, %xmm1, %xmm5
	vpbroadcastq	.LCPI2_13(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxorq	(%rcx), %xmm6, %xmm22
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vxorpd	16(%rcx), %xmm14, %xmm9
	vpxor	32(%rcx), %xmm8, %xmm10
	vpxor	48(%rcx), %xmm7, %xmm11
	vpxor	64(%rcx), %xmm0, %xmm12
	vpxor	80(%rcx), %xmm2, %xmm13
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	addq	$96, %rcx
	vmovdqu64	%xmm22, (%rax)
	vmovupd	%xmm9, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu	%xmm13, 80(%rax)
	addq	$96, %rax
	addq	$-96, %r10
	vmovdqa64	%xmm21, %xmm23
	vpaddd	.LCPI2_15(%rip), %xmm21, %xmm21
	cmpq	$95, %r10
	ja	.LBB2_31
	vpbroadcastq	.LCPI2_13(%rip), %xmm8
	vmovdqa64	112(%rsp), %xmm27
	vmovdqa	96(%rsp), %xmm14
	vmovdqa64	%xmm17, %xmm15
	vmovdqa64	224(%rsp), %xmm28
	vmovdqa64	208(%rsp), %xmm25
	vmovdqa64	192(%rsp), %xmm17
	vmovdqa64	176(%rsp), %xmm18
	vmovapd	-64(%rsp), %xmm3
	jmp	.LBB2_29
.LBB2_12:
	vmovdqa64	%xmm13, %xmm27
	vmovdqa	-32(%rsp), %xmm7
	vmovdqa	-128(%rsp), %xmm6
	vmovdqa64	%xmm26, %xmm21
	vmovdqa64	%xmm29, %xmm5
	jmp	.LBB2_13
.LBB2_28:
	vmovdqa64	%xmm2, %xmm27
	vmovdqa	%xmm0, %xmm14
	vpbroadcastq	.LCPI2_13(%rip), %xmm8
.LBB2_29:
	vpclmulqdq	$0, %xmm13, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vmovdqa	-16(%rsp), %xmm6
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm2
	vmovdqa	80(%rsp), %xmm7
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm4
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm2
	vpternlogq	$150, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$17, %xmm12, %xmm6, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm13, %xmm3, %xmm6
	vpternlogq	$150, %xmm6, %xmm0, %xmm5
	vmovdqa	48(%rsp), %xmm7
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm6
	vpternlogq	$150, %xmm0, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm15, %xmm2
	vpternlogq	$150, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm9, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm15, %xmm4
	vpternlogq	$150, %xmm0, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm15, %xmm6
	vpxorq	%xmm1, %xmm22, %xmm1
	vpternlogq	$150, %xmm0, %xmm5, %xmm6
	vmovdqa	64(%rsp), %xmm7
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm5
	vpternlogq	$150, %xmm0, %xmm4, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm0
	vpslldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm1
	vpshufd	$78, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm1
	vpternlogq	$150, %xmm0, %xmm6, %xmm1
	vpsrldq	$8, %xmm5, %xmm0
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa64	%xmm21, %xmm23
	vmovdqa64	160(%rsp), %xmm21
	vmovapd	144(%rsp), %xmm12
	vmovapd	128(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm8
	vmovdqa	-32(%rsp), %xmm7
	vmovdqa	-128(%rsp), %xmm6
	vmovdqa	%xmm14, %xmm5
.LBB2_13:
	vmovdqa64	%xmm8, %xmm29
	vmovapd	%xmm10, %xmm26
	vmovapd	%xmm12, %xmm22
	vpunpcklqdq	%xmm17, %xmm18, %xmm17
	cmpq	$16, %r10
	jb	.LBB2_14
	vpmovsxbq	.LCPI2_23(%rip), %xmm30
	vmovdqa64	-96(%rsp), %xmm16
	vmovdqa64	-112(%rsp), %xmm19
	vmovdqa	-80(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm9
	vmovdqa	-48(%rsp), %xmm11
	vmovdqa64	%xmm31, %xmm18
	vmovdqa	(%rsp), %xmm13
	vmovdqa64	%xmm21, %xmm12
	vmovapd	%xmm22, %xmm10
	vmovapd	%xmm26, %xmm8
	vmovdqa64	%xmm29, %xmm2
	vmovdqa64	%xmm27, %xmm0
	vpbroadcastq	.LCPI2_13(%rip), %xmm3
	vmovdqa	-64(%rsp), %xmm14
	.p2align	4, 0x90
.LBB2_34:
	vpxorq	%xmm18, %xmm23, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm4, %xmm4
	vmovdqa64	%xmm16, %xmm6
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa64	%xmm19, %xmm6
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenclast	%xmm13, %xmm4, %xmm4
	vmovdqa64	%xmm5, %xmm24
	vpxor	(%r9), %xmm4, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm14, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm14, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm14, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm14, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpxor	%xmm1, %xmm7, %xmm1
	vpshufd	$78, %xmm4, %xmm7
	leaq	16(%r9), %rcx
	leaq	16(%rdx), %rax
	addq	$-16, %r10
	vpaddd	%xmm30, %xmm23, %xmm4
	vmovdqu	%xmm5, (%rdx)
	vpsrldq	$8, %xmm6, %xmm5
	vmovdqa	-128(%rsp), %xmm6
	vpternlogq	$150, %xmm5, %xmm7, %xmm1
	vmovdqa64	%xmm24, %xmm5
	vmovdqa	-32(%rsp), %xmm7
	movq	%rax, %rdx
	vmovdqa64	%xmm4, %xmm23
	movq	%rcx, %r9
	cmpq	$15, %r10
	ja	.LBB2_34
	vpunpcklqdq	%xmm28, %xmm25, %xmm18
	vpsllq	$3, %xmm17, %xmm17
	testq	%r10, %r10
	je	.LBB2_16
.LBB2_35:
	movl	$-1, %edx
	bzhil	%r10d, %edx, %edx
	kmovd	%edx, %k1
	vmovdqa	%xmm5, %xmm0
	vmovdqu8	(%rcx), %xmm5 {%k1} {z}
	vmovdqa64	%xmm31, %xmm2
	vpxorq	%xmm31, %xmm4, %xmm4
	vmovdqa	-48(%rsp), %xmm3
	vmovdqa64	%xmm3, %xmm16
	vaesenc	%xmm3, %xmm4, %xmm4
	vmovdqa64	%xmm21, %xmm12
	vaesenc	%xmm12, %xmm4, %xmm4
	vmovapd	%xmm22, %xmm14
	vaesenc	%xmm14, %xmm4, %xmm4
	vmovapd	%xmm26, %xmm10
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa64	%xmm29, %xmm8
	vaesenc	%xmm8, %xmm4, %xmm4
	vmovdqa64	%xmm27, %xmm11
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vmovdqa	-96(%rsp), %xmm3
	vmovdqa64	%xmm3, %xmm23
	vaesenc	%xmm3, %xmm4, %xmm4
	vmovdqa	-112(%rsp), %xmm3
	vmovdqa64	%xmm3, %xmm19
	vaesenc	%xmm3, %xmm4, %xmm4
	vmovdqa	-80(%rsp), %xmm15
	vaesenc	%xmm15, %xmm4, %xmm4
	vmovdqa	32(%rsp), %xmm9
	vaesenc	%xmm9, %xmm4, %xmm4
	vmovdqa	(%rsp), %xmm3
	vmovdqa64	%xmm3, %xmm20
	vaesenclast	%xmm3, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vmovdqu8	%xmm4, (%rax) {%k1}
	vmovdqu8	(%rax), %xmm4 {%k1} {z}
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqa	-64(%rsp), %xmm3
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpbroadcastq	.LCPI2_13(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vmovdqa	%xmm0, %xmm5
	vpsrldq	$8, %xmm4, %xmm4
	vpternlogq	$150, %xmm4, %xmm6, %xmm1
	vmovdqa	-128(%rsp), %xmm6
	jmp	.LBB2_36
.LBB2_14:
	movq	%rdx, %rax
	movq	%r9, %rcx
	vmovdqa64	%xmm23, %xmm4
	vpunpcklqdq	%xmm28, %xmm25, %xmm18
	vpsllq	$3, %xmm17, %xmm17
	testq	%r10, %r10
	jne	.LBB2_35
.LBB2_16:
	vmovdqa64	-96(%rsp), %xmm23
	vmovdqa64	-112(%rsp), %xmm19
	vmovdqa	-80(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm9
	vmovdqa64	-48(%rsp), %xmm16
	vmovdqa64	%xmm31, %xmm2
	vmovdqa64	(%rsp), %xmm20
	vmovdqa64	%xmm21, %xmm12
	vmovapd	%xmm22, %xmm14
	vmovapd	%xmm26, %xmm10
	vmovdqa64	%xmm29, %xmm8
	vmovdqa64	%xmm27, %xmm11
	vpbroadcastq	.LCPI2_13(%rip), %xmm13
	vmovdqa	-64(%rsp), %xmm3
.LBB2_36:
	vpxorq	%xmm17, %xmm1, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm18, %xmm0, %xmm4
	vpsrldq	$8, %xmm1, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm4
	vpternlogq	$120, .LCPI2_21(%rip), %xmm4, %xmm2
	vmovdqa64	%xmm16, %xmm0
	vaesenc	%xmm0, %xmm2, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa64	%xmm23, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa64	%xmm19, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vmovdqa64	%xmm20, %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpxor	240(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_37:
	addq	$264, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcmsiv_skylakex_is_supported,@function
haberdashery_aes256gcmsiv_skylakex_is_supported:
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
	andl	$-779157207, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.83.0-nightly (4ac7bcbaa 2024-09-04)"
	.section	".note.GNU-stack","",@progbits

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
.LCPI0_9:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	4294967297
.LCPI0_8:
	.quad	274877907008
.LCPI0_10:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.long	0x00000002
.LCPI0_3:
	.long	0x0c0f0e0d
.LCPI0_4:
	.long	0x00000004
.LCPI0_5:
	.long	0x00000008
.LCPI0_6:
	.long	0x00000010
.LCPI0_7:
	.long	0x00000020
	.section	.text.haberdashery_aes256gcm_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_tigerlake_init,@function
haberdashery_aes256gcm_tigerlake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovups	(%rsi), %ymm16
	vmovupd	(%rsi), %xmm2
	vmovdqu	16(%rsi), %xmm3
	vpslldq	$4, %xmm2, %xmm1
	vpslldq	$8, %xmm2, %xmm4
	vpslldq	$12, %xmm2, %xmm5
	vpternlogq	$150, %xmm4, %xmm1, %xmm5
	vpbroadcastd	.LCPI0_3(%rip), %xmm17
	vpshufb	%xmm17, %xmm3, %xmm1
	vpbroadcastq	.LCPI0_1(%rip), %xmm4
	vaesenclast	%xmm4, %xmm1, %xmm1
	vpternlogq	$150, %xmm5, %xmm2, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm15
	vpslldq	$4, %xmm3, %xmm2
	vpslldq	$8, %xmm3, %xmm4
	vpslldq	$12, %xmm3, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufd	$255, %xmm1, %xmm2
	vpxor	%xmm14, %xmm14, %xmm14
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm3, %xmm2
	vbroadcastss	.LCPI0_2(%rip), %xmm4
	vbroadcastss	.LCPI0_3(%rip), %xmm12
	#APP
	vaesenc	%xmm1, %xmm15, %xmm15
	vpslldq	$4, %xmm1, %xmm5
	vpslldq	$8, %xmm1, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufb	%xmm12, %xmm2, %xmm0
	vaesenclast	%xmm4, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm7, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm2, %xmm15, %xmm15
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm6
	vpslldq	$12, %xmm2, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufd	$255, %xmm0, %xmm3
	vaesenclast	%xmm14, %xmm3, %xmm3
	vpternlogq	$150, %xmm2, %xmm7, %xmm3
	#NO_APP
	vbroadcastss	.LCPI0_4(%rip), %xmm6
	#APP
	vaesenc	%xmm0, %xmm15, %xmm15
	vpslldq	$4, %xmm0, %xmm7
	vpslldq	$8, %xmm0, %xmm8
	vpslldq	$12, %xmm0, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpshufb	%xmm12, %xmm3, %xmm5
	vaesenclast	%xmm6, %xmm5, %xmm5
	vpternlogq	$150, %xmm0, %xmm9, %xmm5
	#NO_APP
	vmovaps	%xmm0, %xmm21
	#APP
	vaesenc	%xmm3, %xmm15, %xmm15
	vpslldq	$4, %xmm3, %xmm7
	vpslldq	$8, %xmm3, %xmm8
	vpslldq	$12, %xmm3, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpshufd	$255, %xmm5, %xmm6
	vaesenclast	%xmm14, %xmm6, %xmm6
	vpternlogq	$150, %xmm3, %xmm9, %xmm6
	#NO_APP
	vmovaps	%xmm3, %xmm22
	vbroadcastss	.LCPI0_5(%rip), %xmm8
	#APP
	vaesenc	%xmm5, %xmm15, %xmm15
	vpslldq	$4, %xmm5, %xmm9
	vpslldq	$8, %xmm5, %xmm10
	vpslldq	$12, %xmm5, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm12, %xmm6, %xmm7
	vaesenclast	%xmm8, %xmm7, %xmm7
	vpternlogq	$150, %xmm5, %xmm11, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm15, %xmm15
	vpslldq	$4, %xmm6, %xmm9
	vpslldq	$8, %xmm6, %xmm10
	vpslldq	$12, %xmm6, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufd	$255, %xmm7, %xmm8
	vaesenclast	%xmm14, %xmm8, %xmm8
	vpternlogq	$150, %xmm6, %xmm11, %xmm8
	#NO_APP
	vbroadcastss	.LCPI0_6(%rip), %xmm10
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vpslldq	$4, %xmm7, %xmm11
	vpslldq	$8, %xmm7, %xmm0
	vpslldq	$12, %xmm7, %xmm13
	vpternlogq	$150, %xmm11, %xmm0, %xmm13
	vpshufb	%xmm12, %xmm8, %xmm9
	vaesenclast	%xmm10, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm13, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm13
	vpternlogq	$150, %xmm0, %xmm11, %xmm13
	vpshufd	$255, %xmm9, %xmm10
	vaesenclast	%xmm14, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm13, %xmm10
	#NO_APP
	vbroadcastss	.LCPI0_7(%rip), %xmm0
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vpslldq	$4, %xmm9, %xmm13
	vpslldq	$8, %xmm9, %xmm3
	vpslldq	$12, %xmm9, %xmm4
	vpternlogq	$150, %xmm13, %xmm3, %xmm4
	vpshufb	%xmm12, %xmm10, %xmm11
	vaesenclast	%xmm0, %xmm11, %xmm11
	vpternlogq	$150, %xmm9, %xmm4, %xmm11
	#NO_APP
	vpslldq	$4, %xmm10, %xmm0
	vpunpcklqdq	%xmm10, %xmm14, %xmm3
	vinsertps	$55, %xmm10, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpshufd	$255, %xmm11, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm12
	vpternlogq	$150, %xmm4, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpunpcklqdq	%xmm11, %xmm14, %xmm3
	vinsertps	$55, %xmm11, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpbroadcastq	.LCPI0_8(%rip), %xmm0
	vpshufb	%xmm17, %xmm12, %xmm3
	vaesenclast	%xmm0, %xmm3, %xmm13
	vpternlogq	$150, %xmm4, %xmm11, %xmm13
	vaesenc	%xmm10, %xmm15, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm3
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm3, %xmm4
	vpblendd	$12, %xmm3, %xmm14, %xmm3
	vpsllq	$63, %xmm3, %xmm15
	vpternlogq	$30, %xmm4, %xmm0, %xmm15
	vpsllq	$62, %xmm3, %xmm0
	vpsllq	$57, %xmm3, %xmm14
	vpternlogq	$150, %xmm0, %xmm15, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpbroadcastq	.LCPI0_10(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm17
	vpshufd	$78, %xmm0, %xmm15
	vpternlogq	$150, %xmm4, %xmm17, %xmm15
	vpclmulqdq	$0, %xmm14, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm14, %xmm15, %xmm17
	vpxorq	%xmm4, %xmm17, %xmm4
	vpslldq	$8, %xmm4, %xmm17
	vpxorq	%xmm17, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm17
	vpshufd	$78, %xmm0, %xmm0
	vpxorq	%xmm0, %xmm17, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm17
	vpclmulqdq	$17, %xmm14, %xmm15, %xmm18
	vpxorq	%xmm17, %xmm18, %xmm17
	vpsrldq	$8, %xmm4, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm4, %xmm17, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm17
	vpshufd	$78, %xmm4, %xmm4
	vpxorq	%xmm4, %xmm17, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm17
	vpclmulqdq	$17, %xmm0, %xmm0, %xmm18
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm17, %xmm18, %xmm4
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm17
	vpclmulqdq	$16, %xmm3, %xmm17, %xmm18
	vpshufd	$78, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm18, %xmm17
	vpclmulqdq	$16, %xmm3, %xmm17, %xmm18
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm19
	vpshufd	$78, %xmm17, %xmm17
	vpternlogq	$150, %xmm18, %xmm19, %xmm17
	vpclmulqdq	$0, %xmm14, %xmm17, %xmm18
	vpclmulqdq	$16, %xmm14, %xmm17, %xmm19
	vpclmulqdq	$1, %xmm14, %xmm17, %xmm20
	vpxorq	%xmm19, %xmm20, %xmm19
	vpslldq	$8, %xmm19, %xmm20
	vpxorq	%xmm20, %xmm18, %xmm18
	vpclmulqdq	$16, %xmm3, %xmm18, %xmm20
	vpshufd	$78, %xmm18, %xmm18
	vpxorq	%xmm18, %xmm20, %xmm18
	vpclmulqdq	$16, %xmm3, %xmm18, %xmm3
	vpclmulqdq	$17, %xmm14, %xmm17, %xmm20
	vpxorq	%xmm3, %xmm20, %xmm3
	vpsrldq	$8, %xmm19, %xmm19
	vpshufd	$78, %xmm18, %xmm18
	vpternlogq	$150, %xmm19, %xmm3, %xmm18
	vmovups	%ymm16, (%rdi)
	vmovdqa	%xmm1, 32(%rdi)
	vmovdqa	%xmm2, 48(%rdi)
	vmovaps	%xmm21, 64(%rdi)
	vmovaps	%xmm22, 80(%rdi)
	vmovaps	%xmm5, 96(%rdi)
	vmovaps	%xmm6, 112(%rdi)
	vmovaps	%xmm7, 128(%rdi)
	vmovaps	%xmm8, 144(%rdi)
	vmovaps	%xmm9, 160(%rdi)
	vmovaps	%xmm10, 176(%rdi)
	vmovaps	%xmm11, 192(%rdi)
	vmovdqa	%xmm12, 208(%rdi)
	vmovdqa	%xmm13, 224(%rdi)
	vmovdqa	%xmm14, 240(%rdi)
	vmovdqa	%xmm15, 256(%rdi)
	vmovdqa	%xmm0, 272(%rdi)
	vmovdqa64	%xmm17, 288(%rdi)
	vmovdqa64	%xmm18, 304(%rdi)
	vmovdqa	%xmm4, 320(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_tigerlake_init, .Lfunc_end0-haberdashery_aes256gcm_tigerlake_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI1_1:
	.long	0
	.long	4
	.long	5
	.long	3
.LCPI1_2:
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
.LCPI1_3:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_5:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_6:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_7:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI1_8:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_9:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_10:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_11:
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
.LCPI1_12:
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
.LCPI1_4:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_13:
	.long	16777216
	.section	.text.haberdashery_aes256gcm_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_tigerlake_encrypt,@function
haberdashery_aes256gcm_tigerlake_encrypt:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	96(%rsp), %r10
	xorl	%eax, %eax
	cmpq	112(%rsp), %r10
	jne	.LBB1_44
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB1_44
	cmpq	$16, 128(%rsp)
	jne	.LBB1_44
	cmpq	$12, %rdx
	jne	.LBB1_44
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %r10
	ja	.LBB1_44
	vmovq	4(%rsi), %xmm0
	vpbroadcastd	.LCPI1_13(%rip), %xmm1
	vpinsrd	$0, (%rsi), %xmm1, %xmm1
	vmovdqa64	.LCPI1_1(%rip), %xmm24
	vpermi2d	%xmm0, %xmm1, %xmm24
	testq	%r8, %r8
	je	.LBB1_21
	vmovdqa	240(%rdi), %xmm1
	vmovdqa64	256(%rdi), %xmm23
	vmovdqa64	272(%rdi), %xmm22
	vmovdqa64	288(%rdi), %xmm19
	vmovdqa	304(%rdi), %xmm14
	vmovdqa64	320(%rdi), %xmm20
	vpxor	%xmm7, %xmm7, %xmm7
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm2
	movq	%r8, %rdx
	.p2align	4, 0x90
.LBB1_20:
	vmovdqu	(%rcx), %xmm3
	vmovdqu	16(%rcx), %xmm8
	vmovdqu	32(%rcx), %xmm9
	vmovdqu	48(%rcx), %xmm10
	vmovdqu	64(%rcx), %xmm11
	vmovdqu	80(%rcx), %xmm12
	addq	$96, %rcx
	addq	$-96, %rdx
	vpshufb	%xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpshufb	%xmm0, %xmm8, %xmm7
	vpshufb	%xmm0, %xmm9, %xmm8
	vpshufb	%xmm0, %xmm10, %xmm9
	vpshufb	%xmm0, %xmm11, %xmm10
	vpshufb	%xmm0, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm13
	vmovdqa64	%xmm14, %xmm16
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm11
	vmovdqa64	%xmm23, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm23, %xmm14
	vpclmulqdq	$1, %xmm10, %xmm23, %xmm15
	vpclmulqdq	$16, %xmm10, %xmm23, %xmm17
	vpternlogq	$150, %xmm15, %xmm13, %xmm17
	vpclmulqdq	$17, %xmm10, %xmm23, %xmm10
	vmovdqa64	%xmm22, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm22, %xmm13
	vpternlogq	$150, %xmm12, %xmm14, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm22, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm22, %xmm14
	vpternlogq	$150, %xmm12, %xmm17, %xmm14
	vpclmulqdq	$17, %xmm9, %xmm22, %xmm9
	vpternlogq	$150, %xmm11, %xmm10, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm19, %xmm10
	vpclmulqdq	$1, %xmm8, %xmm19, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm19, %xmm12
	vpternlogq	$150, %xmm11, %xmm14, %xmm12
	vmovdqa64	%xmm16, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm19, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm16, %xmm11
	vpternlogq	$150, %xmm10, %xmm13, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm16, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm16, %xmm13
	vpternlogq	$150, %xmm10, %xmm12, %xmm13
	vpclmulqdq	$17, %xmm7, %xmm16, %xmm7
	vpternlogq	$150, %xmm8, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm20, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm20, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm20, %xmm10
	vpternlogq	$150, %xmm9, %xmm13, %xmm10
	vpclmulqdq	$17, %xmm3, %xmm20, %xmm3
	vpslldq	$8, %xmm10, %xmm9
	vpternlogq	$150, %xmm8, %xmm11, %xmm9
	vpsrldq	$8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm10
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm10
	vpternlogq	$150, %xmm3, %xmm7, %xmm10
	vpshufd	$78, %xmm9, %xmm7
	vpternlogq	$150, %xmm8, %xmm10, %xmm7
	cmpq	$95, %rdx
	ja	.LBB1_20
	cmpq	$16, %rdx
	jae	.LBB1_14
	jmp	.LBB1_9
.LBB1_21:
	vmovdqa	240(%rdi), %xmm1
	testq	%r10, %r10
	je	.LBB1_22
	vmovdqa64	256(%rdi), %xmm23
	vmovdqa64	272(%rdi), %xmm22
	vmovdqa64	288(%rdi), %xmm19
	vmovdqa	304(%rdi), %xmm14
	vmovdqa64	320(%rdi), %xmm20
	vpxor	%xmm7, %xmm7, %xmm7
	jmp	.LBB1_26
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
	je	.LBB1_23
.LBB1_11:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	testq	%r10, %r10
	je	.LBB1_42
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	orq	$1, %rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_44
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm7
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_4(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm8
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpshufd	$78, %xmm2, %xmm7
	vpternlogq	$150, %xmm3, %xmm0, %xmm7
	jmp	.LBB1_26
.LBB1_15:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm7
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_4(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm8
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpshufd	$78, %xmm2, %xmm7
	vpternlogq	$150, %xmm3, %xmm0, %xmm7
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB1_10
.LBB1_17:
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm2
	.p2align	4, 0x90
.LBB1_18:
	vmovdqu	(%rcx), %xmm3
	vmovdqu	16(%rcx), %xmm8
	vpshufb	%xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm3
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpsrldq	$8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm10
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm10
	vpternlogq	$150, %xmm3, %xmm9, %xmm10
	vpshufd	$78, %xmm7, %xmm3
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm0, %xmm8, %xmm7
	vpternlogq	$150, %xmm3, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm7
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm3, %xmm9, %xmm3
	vpsrldq	$8, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm9
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm9
	vpxor	%xmm7, %xmm9, %xmm9
	vpshufd	$78, %xmm3, %xmm7
	vpternlogq	$150, %xmm8, %xmm9, %xmm7
	cmpq	$15, %rdx
	ja	.LBB1_18
.LBB1_9:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_11
.LBB1_23:
	testq	%r10, %r10
	je	.LBB1_43
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	orq	$1, %rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_44
.LBB1_26:
	movq	104(%rsp), %rdx
	vpshufb	.LCPI1_2(%rip), %xmm24, %xmm18
	vpaddd	.LCPI1_3(%rip), %xmm18, %xmm8
	cmpq	$96, %r10
	jb	.LBB1_27
	vmovdqa64	.LCPI1_2(%rip), %xmm30
	vpshufb	%xmm30, %xmm8, %xmm0
	vpaddd	.LCPI1_5(%rip), %xmm18, %xmm2
	vpshufb	%xmm30, %xmm2, %xmm2
	vpaddd	.LCPI1_6(%rip), %xmm18, %xmm3
	vpshufb	%xmm30, %xmm3, %xmm3
	vpaddd	.LCPI1_7(%rip), %xmm18, %xmm8
	vpshufb	%xmm30, %xmm8, %xmm10
	vpaddd	.LCPI1_8(%rip), %xmm18, %xmm8
	vpshufb	%xmm30, %xmm8, %xmm12
	vpaddd	.LCPI1_9(%rip), %xmm18, %xmm8
	vpshufb	%xmm30, %xmm8, %xmm13
	vmovdqa64	(%rdi), %xmm31
	vmovaps	16(%rdi), %xmm5
	vmovaps	32(%rdi), %xmm6
	vmovaps	48(%rdi), %xmm16
	vpxorq	%xmm0, %xmm31, %xmm0
	vpxorq	%xmm2, %xmm31, %xmm8
	vpxorq	%xmm3, %xmm31, %xmm9
	vpxorq	%xmm10, %xmm31, %xmm11
	vmovaps	%xmm16, %xmm2
	vpxorq	%xmm12, %xmm31, %xmm12
	vpxorq	%xmm13, %xmm31, %xmm13
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	%xmm16, -32(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovaps	64(%rdi), %xmm2
	vmovaps	%xmm2, 64(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovaps	80(%rdi), %xmm2
	vmovaps	%xmm2, -16(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovaps	96(%rdi), %xmm3
	vmovaps	%xmm3, 48(%rsp)
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovdqa	112(%rdi), %xmm2
	vmovdqa64	%xmm2, %xmm16
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovaps	128(%rdi), %xmm10
	vmovaps	%xmm10, 32(%rsp)
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	#NO_APP
	vmovdqa	144(%rdi), %xmm2
	vmovdqa64	%xmm2, %xmm21
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovdqa	160(%rdi), %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	#NO_APP
	vmovaps	176(%rdi), %xmm2
	vmovaps	%xmm2, 16(%rsp)
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovdqa	192(%rdi), %xmm2
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	#NO_APP
	vmovaps	208(%rdi), %xmm3
	vmovaps	%xmm3, (%rsp)
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovdqa	224(%rdi), %xmm3
	#APP
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm9, %xmm9
	vaesenclast	%xmm3, %xmm11, %xmm11
	vaesenclast	%xmm3, %xmm12, %xmm12
	vaesenclast	%xmm3, %xmm13, %xmm13
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm17
	vpxorq	16(%r9), %xmm8, %xmm26
	vpxorq	32(%r9), %xmm9, %xmm27
	vpxorq	48(%r9), %xmm11, %xmm28
	vpxorq	64(%r9), %xmm12, %xmm29
	vpxor	80(%r9), %xmm13, %xmm0
	leaq	96(%r9), %r9
	leaq	96(%rdx), %rcx
	vpaddd	.LCPI1_10(%rip), %xmm18, %xmm8
	vmovdqu64	%xmm17, (%rdx)
	vmovdqu64	%xmm26, 16(%rdx)
	vmovdqu64	%xmm27, 32(%rdx)
	vmovdqu64	%xmm28, 48(%rdx)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm29, 64(%rdx)
	vmovdqu	%xmm0, 80(%rdx)
	cmpq	$96, %rax
	jb	.LBB1_31
	vmovdqa64	%xmm24, -128(%rsp)
	vpbroadcastq	.LCPI1_4(%rip), %xmm25
	vmovdqa64	%xmm14, %xmm18
	vmovaps	%xmm5, -112(%rsp)
	vmovaps	%xmm6, -48(%rsp)
	vmovdqa64	%xmm16, -80(%rsp)
	vmovdqa	%xmm10, -64(%rsp)
	vmovdqa	%xmm2, -96(%rsp)
	vmovdqa64	%xmm3, %xmm24
	.p2align	4, 0x90
.LBB1_34:
	vpshufb	%xmm30, %xmm8, %xmm2
	vpaddd	.LCPI1_3(%rip), %xmm8, %xmm3
	vpshufb	%xmm30, %xmm3, %xmm9
	vpaddd	.LCPI1_5(%rip), %xmm8, %xmm3
	vpshufb	%xmm30, %xmm3, %xmm10
	vpaddd	.LCPI1_6(%rip), %xmm8, %xmm3
	vpshufb	%xmm30, %xmm3, %xmm11
	vpaddd	.LCPI1_7(%rip), %xmm8, %xmm3
	vpshufb	%xmm30, %xmm3, %xmm12
	vpaddd	.LCPI1_8(%rip), %xmm8, %xmm3
	vpshufb	%xmm30, %xmm3, %xmm16
	vpshufb	%xmm30, %xmm0, %xmm3
	vpxorq	%xmm2, %xmm31, %xmm13
	vpxorq	%xmm9, %xmm31, %xmm14
	vpxorq	%xmm10, %xmm31, %xmm15
	vpxorq	%xmm11, %xmm31, %xmm0
	vpxorq	%xmm12, %xmm31, %xmm11
	vpxorq	%xmm16, %xmm31, %xmm12
	vmovaps	-112(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
	vxorps	%xmm2, %xmm2, %xmm2
	vpxor	%xmm9, %xmm9, %xmm9
	vmovaps	-48(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vpshufb	%xmm30, %xmm29, %xmm3
	vmovaps	-32(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovaps	64(%rsp), %xmm5
	vmovdqa64	%xmm23, %xmm6
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm22, %xmm5
	vpshufb	%xmm30, %xmm28, %xmm3
	vmovaps	-16(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovaps	48(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vpshufb	%xmm30, %xmm27, %xmm3
	vmovaps	-80(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovaps	32(%rsp), %xmm5
	vmovdqa64	%xmm19, %xmm6
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm21, %xmm4
	vpshufb	%xmm30, %xmm26, %xmm3
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm18, %xmm5
	vmovaps	-64(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vpshufb	%xmm30, %xmm17, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vmovaps	16(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm20, %xmm7
	vmovaps	-96(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm4
	vpxor	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm4
	vpxor	%xmm4, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpunpcklqdq	%xmm2, %xmm4, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpunpckhqdq	%xmm4, %xmm2, %xmm2
	vmovaps	(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm24, %xmm4
	#APP
	vaesenclast	%xmm4, %xmm13, %xmm13
	vaesenclast	%xmm4, %xmm14, %xmm14
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm11, %xmm11
	vaesenclast	%xmm4, %xmm12, %xmm12
	#NO_APP
	vpxorq	(%r9), %xmm13, %xmm17
	vpxorq	16(%r9), %xmm14, %xmm26
	vpxorq	32(%r9), %xmm15, %xmm27
	vpxorq	48(%r9), %xmm0, %xmm28
	vpxorq	64(%r9), %xmm11, %xmm29
	vpxor	80(%r9), %xmm12, %xmm0
	vpxor	%xmm2, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm25, %xmm3, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm25, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm2, %xmm7
	addq	$96, %r9
	vmovdqu64	%xmm17, (%rcx)
	vmovdqu64	%xmm26, 16(%rcx)
	vmovdqu64	%xmm27, 32(%rcx)
	vmovdqu64	%xmm28, 48(%rcx)
	vmovdqu64	%xmm29, 64(%rcx)
	vmovdqu	%xmm0, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_9(%rip), %xmm8, %xmm8
	cmpq	$95, %rax
	ja	.LBB1_34
	vmovdqa64	%xmm20, %xmm16
	vmovdqa64	-128(%rsp), %xmm24
	jmp	.LBB1_32
.LBB1_27:
	movq	%r10, %rax
	cmpq	$16, %rax
	jae	.LBB1_36
.LBB1_29:
	movq	%rdx, %rcx
	movq	%r9, %rsi
	jmp	.LBB1_38
.LBB1_22:
	vpxor	%xmm7, %xmm7, %xmm7
	jmp	.LBB1_43
.LBB1_31:
	vmovdqa64	%xmm14, %xmm18
	vmovdqa64	%xmm20, %xmm16
.LBB1_32:
	vpshufb	%xmm30, %xmm17, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	vpshufb	%xmm30, %xmm26, %xmm3
	vpshufb	%xmm30, %xmm27, %xmm7
	vpshufb	%xmm30, %xmm28, %xmm9
	vpshufb	%xmm30, %xmm29, %xmm10
	vpshufb	%xmm30, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm11
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm13
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm23, %xmm13
	vpclmulqdq	$1, %xmm10, %xmm23, %xmm14
	vpclmulqdq	$16, %xmm10, %xmm23, %xmm15
	vpternlogq	$150, %xmm14, %xmm12, %xmm15
	vpclmulqdq	$17, %xmm10, %xmm23, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm22, %xmm10
	vpternlogq	$150, %xmm11, %xmm13, %xmm10
	vpclmulqdq	$1, %xmm9, %xmm22, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm22, %xmm12
	vpternlogq	$150, %xmm11, %xmm15, %xmm12
	vpclmulqdq	$17, %xmm9, %xmm22, %xmm5
	vpternlogq	$150, %xmm0, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm19, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm19, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm19, %xmm9
	vpternlogq	$150, %xmm6, %xmm12, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm19, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm18, %xmm6
	vpternlogq	$150, %xmm0, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm18, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm18, %xmm7
	vpternlogq	$150, %xmm0, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm18, %xmm0
	vpternlogq	$150, %xmm4, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm2, %xmm16, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm16, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm16, %xmm5
	vpternlogq	$150, %xmm4, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm16, %xmm2
	vpslldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpsrldq	$8, %xmm5, %xmm3
	vpbroadcastq	.LCPI1_4(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	vpshufd	$78, %xmm4, %xmm7
	vpternlogq	$150, %xmm3, %xmm5, %xmm7
	movq	%rcx, %rdx
	cmpq	$16, %rax
	jb	.LBB1_29
.LBB1_36:
	vmovdqa	(%rdi), %xmm0
	vmovdqa	16(%rdi), %xmm2
	vmovdqa	32(%rdi), %xmm3
	vmovdqa	48(%rdi), %xmm4
	vmovdqa	64(%rdi), %xmm5
	vmovdqa	80(%rdi), %xmm6
	vmovdqa	96(%rdi), %xmm9
	vmovdqa	112(%rdi), %xmm10
	vmovdqa	128(%rdi), %xmm11
	vmovdqa	144(%rdi), %xmm12
	vmovdqa	160(%rdi), %xmm13
	vmovdqa	176(%rdi), %xmm14
	vmovdqa	192(%rdi), %xmm15
	vmovdqa64	208(%rdi), %xmm17
	vmovdqa64	224(%rdi), %xmm18
	vmovdqa64	.LCPI1_2(%rip), %xmm19
	vmovdqa64	.LCPI1_3(%rip), %xmm20
	vpbroadcastq	.LCPI1_4(%rip), %xmm21
	.p2align	4, 0x90
.LBB1_37:
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %rcx
	addq	$-16, %rax
	vpshufb	%xmm19, %xmm8, %xmm16
	vpxorq	%xmm16, %xmm0, %xmm16
	vaesenc	%xmm2, %xmm16, %xmm16
	vaesenc	%xmm3, %xmm16, %xmm16
	vaesenc	%xmm4, %xmm16, %xmm16
	vaesenc	%xmm5, %xmm16, %xmm16
	vaesenc	%xmm6, %xmm16, %xmm16
	vaesenc	%xmm9, %xmm16, %xmm16
	vaesenc	%xmm10, %xmm16, %xmm16
	vaesenc	%xmm11, %xmm16, %xmm16
	vaesenc	%xmm12, %xmm16, %xmm16
	vaesenc	%xmm13, %xmm16, %xmm16
	vaesenc	%xmm14, %xmm16, %xmm16
	vaesenc	%xmm15, %xmm16, %xmm16
	vaesenc	%xmm17, %xmm16, %xmm16
	vaesenclast	%xmm18, %xmm16, %xmm16
	vpaddd	%xmm20, %xmm8, %xmm8
	vpxorq	(%r9), %xmm16, %xmm16
	vmovdqu64	%xmm16, (%rdx)
	vpshufb	%xmm19, %xmm16, %xmm16
	vpxorq	%xmm16, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm16
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm22
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm23
	vpxorq	%xmm22, %xmm23, %xmm22
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm7
	vpslldq	$8, %xmm22, %xmm23
	vpxorq	%xmm23, %xmm16, %xmm16
	vpsrldq	$8, %xmm22, %xmm22
	vpclmulqdq	$16, %xmm21, %xmm16, %xmm23
	vpshufd	$78, %xmm16, %xmm16
	vpxorq	%xmm16, %xmm23, %xmm16
	vpclmulqdq	$16, %xmm21, %xmm16, %xmm23
	vpxorq	%xmm7, %xmm23, %xmm23
	vpshufd	$78, %xmm16, %xmm7
	vpternlogq	$150, %xmm22, %xmm23, %xmm7
	movq	%rcx, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rax
	ja	.LBB1_37
.LBB1_38:
	testq	%rax, %rax
	je	.LBB1_39
	movl	$-1, %edx
	bzhil	%eax, %edx, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rsi), %xmm0 {%k1} {z}

	#NO_APP
	vpshufb	.LCPI1_2(%rip), %xmm8, %xmm1
	vpxor	(%rdi), %xmm1, %xmm1
	vaesenc	16(%rdi), %xmm1, %xmm1
	vaesenc	32(%rdi), %xmm1, %xmm1
	vaesenc	48(%rdi), %xmm1, %xmm1
	vaesenc	64(%rdi), %xmm1, %xmm1
	vaesenc	80(%rdi), %xmm1, %xmm1
	vaesenc	96(%rdi), %xmm1, %xmm1
	vaesenc	112(%rdi), %xmm1, %xmm1
	vaesenc	128(%rdi), %xmm1, %xmm1
	vaesenc	144(%rdi), %xmm1, %xmm1
	vaesenc	160(%rdi), %xmm1, %xmm1
	vaesenc	176(%rdi), %xmm1, %xmm1
	vaesenc	192(%rdi), %xmm1, %xmm1
	vaesenc	208(%rdi), %xmm1, %xmm1
	vaesenclast	224(%rdi), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	#APP

	vmovdqu8	%xmm0, (%rcx) {%k1}

	#NO_APP
	vmovdqa	240(%rdi), %xmm1
	testq	%r10, %r10
	je	.LBB1_43
	kmovd	%eax, %k1
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
.LBB1_42:
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_4(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm2, %xmm7
	vpternlogq	$150, %xmm3, %xmm0, %xmm7
	jmp	.LBB1_43
.LBB1_39:
	vmovdqa	240(%rdi), %xmm1
.LBB1_43:
	movq	120(%rsp), %rax
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_4(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxorq	(%rdi), %xmm24, %xmm4
	vaesenc	16(%rdi), %xmm4, %xmm4
	vaesenc	32(%rdi), %xmm4, %xmm4
	vaesenc	48(%rdi), %xmm4, %xmm4
	vaesenc	64(%rdi), %xmm4, %xmm4
	vaesenc	80(%rdi), %xmm4, %xmm4
	vaesenc	96(%rdi), %xmm4, %xmm4
	vaesenc	112(%rdi), %xmm4, %xmm4
	vaesenc	128(%rdi), %xmm4, %xmm4
	vaesenc	144(%rdi), %xmm4, %xmm4
	vaesenc	160(%rdi), %xmm4, %xmm4
	vaesenc	176(%rdi), %xmm4, %xmm4
	vaesenc	192(%rdi), %xmm4, %xmm4
	vaesenc	208(%rdi), %xmm4, %xmm4
	vaesenclast	224(%rdi), %xmm4, %xmm4
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vmovdqu	%xmm1, (%rax)
	movl	$1, %eax
.LBB1_44:
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcm_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcm_tigerlake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI2_1:
	.long	0
	.long	4
	.long	5
	.long	3
.LCPI2_2:
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
.LCPI2_3:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_6:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_7:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI2_8:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_9:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_10:
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
.LCPI2_11:
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
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_12:
	.long	16777216
	.section	.text.haberdashery_aes256gcm_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_tigerlake_decrypt,@function
haberdashery_aes256gcm_tigerlake_decrypt:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	128(%rsp), %r10
	xorl	%eax, %eax
	cmpq	160(%rsp), %r10
	jne	.LBB2_36
	cmpq	$12, %rdx
	jne	.LBB2_36
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %r10
	ja	.LBB2_36
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_36
	cmpq	$16, 144(%rsp)
	jne	.LBB2_36
	vmovq	4(%rsi), %xmm2
	vpbroadcastd	.LCPI2_12(%rip), %xmm0
	vpinsrd	$0, (%rsi), %xmm0, %xmm26
	vmovdqa	.LCPI2_1(%rip), %xmm3
	testq	%r8, %r8
	je	.LBB2_6
	vmovdqa	240(%rdi), %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$96, %r8
	jb	.LBB2_8
	vmovdqa	256(%rdi), %xmm4
	vmovdqa	272(%rdi), %xmm5
	vmovdqa	288(%rdi), %xmm6
	vmovdqa	304(%rdi), %xmm7
	vmovdqa	320(%rdi), %xmm8
	vmovdqa	.LCPI2_2(%rip), %xmm9
	vpbroadcastq	.LCPI2_4(%rip), %xmm10
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu	(%rcx), %xmm11
	vmovdqu	16(%rcx), %xmm12
	vmovdqu	32(%rcx), %xmm13
	vmovdqu	48(%rcx), %xmm14
	vmovdqu	64(%rcx), %xmm15
	vmovdqu64	80(%rcx), %xmm17
	addq	$96, %rcx
	addq	$-96, %rax
	vpshufb	%xmm9, %xmm11, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vpshufb	%xmm9, %xmm12, %xmm11
	vpshufb	%xmm9, %xmm13, %xmm12
	vpshufb	%xmm9, %xmm14, %xmm13
	vpshufb	%xmm9, %xmm15, %xmm14
	vpshufb	%xmm9, %xmm17, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm17
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm18
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm19
	vpxorq	%xmm18, %xmm19, %xmm18
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm15
	vpclmulqdq	$0, %xmm14, %xmm4, %xmm19
	vpclmulqdq	$1, %xmm14, %xmm4, %xmm20
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm21
	vpternlogq	$150, %xmm20, %xmm18, %xmm21
	vpclmulqdq	$17, %xmm14, %xmm4, %xmm14
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm18
	vpternlogq	$150, %xmm17, %xmm19, %xmm18
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm17
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm19
	vpternlogq	$150, %xmm17, %xmm21, %xmm19
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm13
	vpternlogq	$150, %xmm15, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm14
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm15
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm17
	vpternlogq	$150, %xmm15, %xmm19, %xmm17
	vpclmulqdq	$17, %xmm12, %xmm6, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm15
	vpternlogq	$150, %xmm14, %xmm18, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm18
	vpternlogq	$150, %xmm14, %xmm17, %xmm18
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm11
	vpternlogq	$150, %xmm12, %xmm13, %xmm11
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm12
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm13
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm14
	vpternlogq	$150, %xmm13, %xmm18, %xmm14
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpslldq	$8, %xmm14, %xmm13
	vpternlogq	$150, %xmm12, %xmm15, %xmm13
	vpsrldq	$8, %xmm14, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm13, %xmm14
	vpshufd	$78, %xmm13, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm13, %xmm14
	vpternlogq	$150, %xmm1, %xmm11, %xmm14
	vpshufd	$78, %xmm13, %xmm1
	vpternlogq	$150, %xmm12, %xmm14, %xmm1
	cmpq	$95, %rax
	ja	.LBB2_19
	cmpq	$16, %rax
	jae	.LBB2_13
	jmp	.LBB2_10
.LBB2_6:
	vpxor	%xmm1, %xmm1, %xmm1
	jmp	.LBB2_12
.LBB2_8:
	movq	%r8, %rax
	cmpq	$16, %rax
	jb	.LBB2_10
.LBB2_13:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB2_14
	cmpq	$16, %rdx
	jae	.LBB2_16
.LBB2_11:
	testq	%rdx, %rdx
	je	.LBB2_12
.LBB2_20:
	movl	$-1, %eax
	bzhil	%edx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	vpermt2d	%xmm2, %xmm3, %xmm26
	testq	%r10, %r10
	jne	.LBB2_25
.LBB2_22:
	vmovdqa64	240(%rdi), %xmm25
	testq	%rdx, %rdx
	je	.LBB2_23
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa64	%xmm25, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm25, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm25, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm25, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm25, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm3, %xmm0, %xmm1
	xorl	%r10d, %r10d
	jmp	.LBB2_35
.LBB2_14:
	vmovdqu	(%rcx), %xmm4
	addq	$16, %rcx
	vpshufb	.LCPI2_2(%rip), %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpbroadcastq	.LCPI2_4(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm6
	vpxor	%xmm1, %xmm6, %xmm6
	vpshufd	$78, %xmm4, %xmm1
	vpternlogq	$150, %xmm5, %xmm6, %xmm1
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB2_11
.LBB2_16:
	vmovdqa	.LCPI2_2(%rip), %xmm4
	vpbroadcastq	.LCPI2_4(%rip), %xmm5
	.p2align	4, 0x90
.LBB2_17:
	vmovdqu	(%rcx), %xmm6
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm4, %xmm6, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpsrldq	$8, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm9
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm9
	vpternlogq	$150, %xmm1, %xmm8, %xmm9
	vpshufd	$78, %xmm6, %xmm1
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm4, %xmm7, %xmm6
	vpternlogq	$150, %xmm1, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm6
	vpslldq	$8, %xmm7, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpsrldq	$8, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm8
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm7, %xmm6, %xmm1
	cmpq	$15, %rax
	ja	.LBB2_17
.LBB2_10:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_20
.LBB2_12:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	vpermt2d	%xmm2, %xmm3, %xmm26
	testq	%r10, %r10
	je	.LBB2_22
.LBB2_25:
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rsi
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	jb	.LBB2_36
	vpshufb	.LCPI2_2(%rip), %xmm26, %xmm3
	vmovdqa64	240(%rdi), %xmm25
	testq	%rdx, %rdx
	je	.LBB2_28
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa64	%xmm25, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm25, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm25, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm25, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm25, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm4, %xmm4
	vpbroadcastq	.LCPI2_4(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
.LBB2_28:
	movq	152(%rsp), %rax
	vpaddd	.LCPI2_3(%rip), %xmm3, %xmm3
	cmpq	$96, %r10
	jb	.LBB2_29
	vmovdqa64	%xmm26, -128(%rsp)
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	288(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	304(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	320(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovdqa	(%rdi), %xmm9
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, -16(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, -32(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, -48(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, -64(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, -80(%rsp)
	vmovaps	128(%rdi), %xmm0
	vmovaps	%xmm0, -96(%rsp)
	vmovdqa	144(%rdi), %xmm0
	vmovdqa	%xmm0, -112(%rsp)
	vmovdqa64	160(%rdi), %xmm21
	vmovdqa64	176(%rdi), %xmm22
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpxord	%xmm24, %xmm24, %xmm24
	vpbroadcastq	.LCPI2_4(%rip), %xmm23
	movq	%r10, %rcx
	vmovdqa64	192(%rdi), %xmm18
	vmovdqa64	208(%rdi), %xmm19
	vmovdqa64	224(%rdi), %xmm20
	.p2align	4, 0x90
.LBB2_38:
	vmovdqu64	(%r9), %xmm26
	vmovdqu64	16(%r9), %xmm27
	vmovdqu64	32(%r9), %xmm28
	vmovdqu64	48(%r9), %xmm29
	vmovdqu64	64(%r9), %xmm30
	vmovdqu64	80(%r9), %xmm31
	vpshufb	%xmm17, %xmm3, %xmm0
	vpaddd	.LCPI2_3(%rip), %xmm3, %xmm4
	vpshufb	%xmm17, %xmm4, %xmm4
	vpaddd	.LCPI2_5(%rip), %xmm3, %xmm5
	vpshufb	%xmm17, %xmm5, %xmm5
	vpaddd	.LCPI2_6(%rip), %xmm3, %xmm6
	vpshufb	%xmm17, %xmm6, %xmm6
	vpaddd	.LCPI2_7(%rip), %xmm3, %xmm7
	vpshufb	%xmm17, %xmm7, %xmm7
	vpaddd	.LCPI2_8(%rip), %xmm3, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm16
	vpshufb	%xmm17, %xmm31, %xmm8
	vpxor	%xmm0, %xmm9, %xmm12
	vpxor	%xmm4, %xmm9, %xmm13
	vpxor	%xmm5, %xmm9, %xmm14
	vpxor	%xmm6, %xmm9, %xmm15
	vpxor	%xmm7, %xmm9, %xmm0
	vpxorq	%xmm16, %xmm9, %xmm4
	vmovaps	16(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm5, %xmm5, %xmm5
	vmovdqa64	%xmm25, %xmm2
	vmovaps	(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm12, %xmm12
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm30, %xmm8
	vmovaps	-16(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm4, %xmm4
	#NO_APP
	vmovaps	96(%rsp), %xmm11
	vmovaps	-32(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm29, %xmm8
	vmovaps	-48(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	#NO_APP
	vmovaps	80(%rsp), %xmm11
	vmovaps	-64(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm28, %xmm8
	vmovaps	-80(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	#NO_APP
	vmovaps	64(%rsp), %xmm11
	vmovaps	-96(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm27, %xmm8
	vmovaps	-112(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	#NO_APP
	vmovdqa	48(%rsp), %xmm11
	vmovdqa64	%xmm21, %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm26, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vmovdqa64	%xmm22, %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	#NO_APP
	vmovaps	32(%rsp), %xmm10
	vmovdqa64	%xmm18, %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vpunpcklqdq	%xmm7, %xmm24, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpunpckhqdq	%xmm24, %xmm7, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vmovdqa64	%xmm19, %xmm2
	#APP
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	#NO_APP
	vmovdqa64	%xmm20, %xmm2
	#APP
	vaesenclast	%xmm2, %xmm12, %xmm12
	vaesenclast	%xmm2, %xmm13, %xmm13
	vaesenclast	%xmm2, %xmm14, %xmm14
	vaesenclast	%xmm2, %xmm15, %xmm15
	vaesenclast	%xmm2, %xmm0, %xmm0
	vaesenclast	%xmm2, %xmm4, %xmm4
	#NO_APP
	vpxorq	%xmm26, %xmm12, %xmm5
	vpxorq	%xmm27, %xmm13, %xmm7
	vpxorq	%xmm28, %xmm14, %xmm8
	vpxorq	%xmm29, %xmm15, %xmm10
	vpxorq	%xmm30, %xmm0, %xmm0
	vpxorq	%xmm31, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm23, %xmm6, %xmm12
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm12, %xmm6
	vmovdqu	%xmm5, (%rax)
	vmovdqu	%xmm7, 16(%rax)
	vmovdqu	%xmm8, 32(%rax)
	vmovdqu	%xmm10, 48(%rax)
	vmovdqu	%xmm0, 64(%rax)
	vmovdqu	%xmm4, 80(%rax)
	vpclmulqdq	$16, %xmm23, %xmm6, %xmm0
	vpshufd	$78, %xmm6, %xmm4
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI2_9(%rip), %xmm3, %xmm3
	cmpq	$95, %rcx
	ja	.LBB2_38
	vmovdqa64	-128(%rsp), %xmm26
	cmpq	$16, %rcx
	jae	.LBB2_40
.LBB2_31:
	movq	%rax, %rdx
	jmp	.LBB2_32
.LBB2_23:
	xorl	%r10d, %r10d
	jmp	.LBB2_35
.LBB2_29:
	movq	%r10, %rcx
	cmpq	$16, %rcx
	jb	.LBB2_31
.LBB2_40:
	vmovdqa	(%rdi), %xmm0
	vmovdqa	16(%rdi), %xmm4
	vmovdqa	32(%rdi), %xmm5
	vmovdqa	48(%rdi), %xmm6
	vmovdqa	64(%rdi), %xmm7
	vmovdqa	80(%rdi), %xmm8
	vmovdqa	96(%rdi), %xmm9
	vmovdqa	112(%rdi), %xmm10
	vmovdqa	128(%rdi), %xmm11
	vmovdqa	144(%rdi), %xmm12
	vmovdqa	160(%rdi), %xmm13
	vmovdqa	176(%rdi), %xmm14
	vmovdqa	192(%rdi), %xmm15
	vmovdqa64	208(%rdi), %xmm17
	vmovdqa64	224(%rdi), %xmm18
	vmovdqa64	.LCPI2_2(%rip), %xmm19
	vpbroadcastq	.LCPI2_4(%rip), %xmm20
	vmovdqa64	.LCPI2_3(%rip), %xmm21
	.p2align	4, 0x90
.LBB2_41:
	leaq	16(%rax), %rdx
	addq	$-16, %rcx
	vmovdqu64	(%r9), %xmm16
	addq	$16, %r9
	vpshufb	%xmm19, %xmm16, %xmm22
	vpxorq	%xmm22, %xmm1, %xmm1
	vmovdqa64	%xmm25, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm25, %xmm22
	vpclmulqdq	$1, %xmm1, %xmm25, %xmm23
	vpclmulqdq	$16, %xmm1, %xmm25, %xmm24
	vpxorq	%xmm23, %xmm24, %xmm23
	vpclmulqdq	$17, %xmm1, %xmm25, %xmm1
	vpslldq	$8, %xmm23, %xmm24
	vpxorq	%xmm24, %xmm22, %xmm22
	vpsrldq	$8, %xmm23, %xmm23
	vpclmulqdq	$16, %xmm20, %xmm22, %xmm24
	vpshufd	$78, %xmm22, %xmm22
	vpxorq	%xmm22, %xmm24, %xmm22
	vpclmulqdq	$16, %xmm20, %xmm22, %xmm24
	vpxorq	%xmm1, %xmm24, %xmm24
	vpshufd	$78, %xmm22, %xmm1
	vpternlogq	$150, %xmm23, %xmm24, %xmm1
	vpshufb	%xmm19, %xmm3, %xmm22
	vpxorq	%xmm22, %xmm0, %xmm22
	vaesenc	%xmm4, %xmm22, %xmm22
	vaesenc	%xmm5, %xmm22, %xmm22
	vaesenc	%xmm6, %xmm22, %xmm22
	vaesenc	%xmm7, %xmm22, %xmm22
	vaesenc	%xmm8, %xmm22, %xmm22
	vaesenc	%xmm9, %xmm22, %xmm22
	vaesenc	%xmm10, %xmm22, %xmm22
	vaesenc	%xmm11, %xmm22, %xmm22
	vaesenc	%xmm12, %xmm22, %xmm22
	vaesenc	%xmm13, %xmm22, %xmm22
	vaesenc	%xmm14, %xmm22, %xmm22
	vaesenc	%xmm15, %xmm22, %xmm22
	vaesenc	%xmm17, %xmm22, %xmm22
	vaesenclast	%xmm18, %xmm22, %xmm22
	vpaddd	%xmm21, %xmm3, %xmm3
	vpxorq	%xmm16, %xmm22, %xmm16
	vmovdqu64	%xmm16, (%rax)
	movq	%rdx, %rax
	cmpq	$15, %rcx
	ja	.LBB2_41
.LBB2_32:
	testq	%rcx, %rcx
	je	.LBB2_34
	movl	$-1, %eax
	bzhil	%ecx, %eax, %eax
	kmovd	%eax, %k1
	vmovdqa	.LCPI2_2(%rip), %xmm0
	#APP

	vmovdqu8	(%r9), %xmm4 {%k1} {z}

	#NO_APP
	vpshufb	%xmm0, %xmm3, %xmm3
	vpxor	(%rdi), %xmm3, %xmm3
	vaesenc	16(%rdi), %xmm3, %xmm3
	vaesenc	32(%rdi), %xmm3, %xmm3
	vaesenc	48(%rdi), %xmm3, %xmm3
	vaesenc	64(%rdi), %xmm3, %xmm3
	vaesenc	80(%rdi), %xmm3, %xmm3
	vaesenc	96(%rdi), %xmm3, %xmm3
	vaesenc	112(%rdi), %xmm3, %xmm3
	vaesenc	128(%rdi), %xmm3, %xmm3
	vaesenc	144(%rdi), %xmm3, %xmm3
	vaesenc	160(%rdi), %xmm3, %xmm3
	vaesenc	176(%rdi), %xmm3, %xmm3
	vaesenc	192(%rdi), %xmm3, %xmm3
	vaesenc	208(%rdi), %xmm3, %xmm3
	vaesenclast	224(%rdi), %xmm3, %xmm3
	vpxor	%xmm4, %xmm3, %xmm3
	#APP

	vmovdqu8	%xmm3, (%rdx) {%k1}

	#NO_APP
	vmovdqu8	%xmm4, %xmm3 {%k1} {z}
	vpshufb	%xmm0, %xmm3, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa64	%xmm25, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm25, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm25, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm25, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm25, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm3, %xmm0, %xmm1
.LBB2_34:
	shlq	$3, %r10
.LBB2_35:
	movq	136(%rsp), %rax
	shlq	$3, %r8
	vmovq	%r10, %xmm0
	vmovq	%r8, %xmm3
	vpunpcklqdq	%xmm3, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm25, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm25, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm25, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm25, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_4(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxorq	(%rdi), %xmm26, %xmm4
	vaesenc	16(%rdi), %xmm4, %xmm4
	vaesenc	32(%rdi), %xmm4, %xmm4
	vaesenc	48(%rdi), %xmm4, %xmm4
	vaesenc	64(%rdi), %xmm4, %xmm4
	vaesenc	80(%rdi), %xmm4, %xmm4
	vaesenc	96(%rdi), %xmm4, %xmm4
	vaesenc	112(%rdi), %xmm4, %xmm4
	vaesenc	128(%rdi), %xmm4, %xmm4
	vaesenc	144(%rdi), %xmm4, %xmm4
	vaesenc	160(%rdi), %xmm4, %xmm4
	vaesenc	176(%rdi), %xmm4, %xmm4
	vaesenc	192(%rdi), %xmm4, %xmm4
	vaesenc	208(%rdi), %xmm4, %xmm4
	vaesenclast	224(%rdi), %xmm4, %xmm4
	vpshufb	.LCPI2_10(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_11(%rip), %xmm3, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vpternlogq	$150, (%rax), %xmm4, %xmm2
	xorl	%eax, %eax
	vptest	%xmm2, %xmm2
	sete	%al
.LBB2_36:
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcm_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes256gcm_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_tigerlake_is_supported,@function
haberdashery_aes256gcm_tigerlake_is_supported:
	.cfi_startproc
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	notl	%r8d
	testl	$1993871875, %r8d
	jne	.LBB3_5
	andl	$125829120, %edi
	cmpl	$125829120, %edi
	jne	.LBB3_5
	notl	%r9d
	testl	$9175337, %r9d
	jne	.LBB3_5
	andl	$411041792, %ecx
	cmpl	$411041792, %ecx
	jne	.LBB3_5
	shrl	$8, %edx
	andl	$1, %edx
	movl	%edx, %esi
.LBB3_5:
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcm_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcm_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

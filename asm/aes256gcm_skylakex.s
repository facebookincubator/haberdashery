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
	.section	.text.haberdashery_aes256gcm_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_init,@function
haberdashery_aes256gcm_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm5
	vmovdqu	16(%rsi), %xmm4
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI0_3(%rip), %xmm16
	vpshufb	%xmm16, %xmm4, %xmm0
	vpbroadcastq	.LCPI0_1(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm6
	vpternlogq	$150, %xmm2, %xmm5, %xmm6
	vaesenc	%xmm4, %xmm5, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm6, %xmm1
	vmovdqa	%xmm6, %xmm7
	vpxor	%xmm15, %xmm15, %xmm15
	vaesenclast	%xmm15, %xmm1, %xmm6
	vbroadcastss	.LCPI0_2(%rip), %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vbroadcastss	.LCPI0_3(%rip), %xmm1
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm8
	vpslldq	$12, %xmm7, %xmm9
	vpternlogq	$150, %xmm3, %xmm8, %xmm9
	vpshufb	%xmm1, %xmm6, %xmm10
	vaesenclast	%xmm2, %xmm10, %xmm10
	vpternlogq	$150, %xmm7, %xmm9, %xmm10
	#NO_APP
	vmovdqa64	%xmm7, %xmm17
	vbroadcastss	.LCPI0_4(%rip), %xmm2
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm8
	vpslldq	$12, %xmm6, %xmm9
	vpternlogq	$150, %xmm3, %xmm8, %xmm9
	vpshufd	$255, %xmm10, %xmm7
	vaesenclast	%xmm15, %xmm7, %xmm7
	vpternlogq	$150, %xmm6, %xmm9, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm8
	vpslldq	$12, %xmm10, %xmm9
	vpternlogq	$150, %xmm3, %xmm8, %xmm9
	vpshufb	%xmm1, %xmm7, %xmm11
	vaesenclast	%xmm2, %xmm11, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	#NO_APP
	vmovaps	%xmm10, %xmm18
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm2
	vpslldq	$8, %xmm7, %xmm3
	vpslldq	$12, %xmm7, %xmm8
	vpternlogq	$150, %xmm2, %xmm3, %xmm8
	vpshufd	$255, %xmm11, %xmm9
	vaesenclast	%xmm15, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	#NO_APP
	vmovaps	%xmm7, %xmm19
	vbroadcastss	.LCPI0_5(%rip), %xmm2
	vmovaps	%xmm9, %xmm7
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vpslldq	$4, %xmm11, %xmm3
	vpslldq	$8, %xmm11, %xmm9
	vpslldq	$12, %xmm11, %xmm10
	vpternlogq	$150, %xmm3, %xmm9, %xmm10
	vpshufb	%xmm1, %xmm7, %xmm8
	vaesenclast	%xmm2, %xmm8, %xmm8
	vpternlogq	$150, %xmm11, %xmm10, %xmm8
	#NO_APP
	vmovaps	%xmm11, %xmm20
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm2
	vpslldq	$8, %xmm7, %xmm3
	vpslldq	$12, %xmm7, %xmm10
	vpternlogq	$150, %xmm2, %xmm3, %xmm10
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm15, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm10, %xmm9
	#NO_APP
	vmovaps	%xmm7, %xmm21
	vbroadcastss	.LCPI0_6(%rip), %xmm2
	vmovaps	%xmm9, %xmm7
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm3, %xmm11, %xmm12
	vpshufb	%xmm1, %xmm7, %xmm9
	vaesenclast	%xmm2, %xmm9, %xmm9
	vpternlogq	$150, %xmm8, %xmm12, %xmm9
	#NO_APP
	vmovaps	%xmm8, %xmm22
	vbroadcastss	.LCPI0_7(%rip), %xmm2
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm12
	vpslldq	$12, %xmm7, %xmm13
	vpternlogq	$150, %xmm3, %xmm12, %xmm13
	vpshufd	$255, %xmm9, %xmm11
	vaesenclast	%xmm15, %xmm11, %xmm11
	vpternlogq	$150, %xmm7, %xmm13, %xmm11
	#NO_APP
	vmovaps	%xmm7, %xmm23
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm13
	vpslldq	$12, %xmm9, %xmm14
	vpternlogq	$150, %xmm3, %xmm13, %xmm14
	vpshufb	%xmm1, %xmm11, %xmm12
	vaesenclast	%xmm2, %xmm12, %xmm12
	vpternlogq	$150, %xmm9, %xmm14, %xmm12
	#NO_APP
	vmovaps	%xmm9, %xmm24
	vpslldq	$4, %xmm11, %xmm1
	vpunpcklqdq	%xmm11, %xmm15, %xmm2
	vinsertps	$55, %xmm11, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpshufd	$255, %xmm12, %xmm1
	vaesenclast	%xmm15, %xmm1, %xmm13
	vpternlogq	$150, %xmm3, %xmm11, %xmm13
	vpshufb	%xmm16, %xmm13, %xmm1
	vpbroadcastq	.LCPI0_8(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm14
	vpslldq	$4, %xmm12, %xmm1
	vpunpcklqdq	%xmm12, %xmm15, %xmm2
	vinsertps	$55, %xmm12, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm12, %xmm14
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpblendd	$12, %xmm1, %xmm15, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpsllq	$63, %xmm1, %xmm3
	vpternlogq	$30, %xmm2, %xmm0, %xmm3
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm15
	vpternlogq	$150, %xmm0, %xmm3, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpbroadcastq	.LCPI0_10(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm0, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm8
	vpxor	%xmm2, %xmm8, %xmm2
	vpshufd	$78, %xmm2, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm15, %xmm1, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm8, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm0
	vpshufd	$78, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$78, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm9
	vpternlogq	$150, %xmm0, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpshufd	$78, %xmm0, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm9
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm10
	vpternlogq	$150, %xmm9, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm9
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$8, %xmm9, %xmm10
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpshufd	$78, %xmm7, %xmm10
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm3
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm10
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$78, %xmm7, %xmm7
	vmovdqa	%xmm5, (%rdi)
	vmovdqa	%xmm4, 16(%rdi)
	vmovdqa64	%xmm17, 32(%rdi)
	vmovdqa	%xmm6, 48(%rdi)
	vmovaps	%xmm18, 64(%rdi)
	vmovaps	%xmm19, 80(%rdi)
	vmovaps	%xmm20, 96(%rdi)
	vmovaps	%xmm21, 112(%rdi)
	vmovaps	%xmm22, 128(%rdi)
	vmovaps	%xmm23, 144(%rdi)
	vmovaps	%xmm24, 160(%rdi)
	vmovaps	%xmm11, 176(%rdi)
	vmovaps	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovdqa	%xmm14, 224(%rdi)
	vmovdqa	%xmm15, 240(%rdi)
	vmovdqa	%xmm1, 256(%rdi)
	vmovdqa	%xmm2, 272(%rdi)
	vmovdqa	%xmm0, 288(%rdi)
	vpsrldq	$8, %xmm9, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm7
	vmovdqa	%xmm7, 304(%rdi)
	vmovdqa	%xmm8, 320(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_skylakex_init, .Lfunc_end0-haberdashery_aes256gcm_skylakex_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
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
.LCPI1_1:
	.long	1
	.long	0
	.long	0
	.long	0
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
.LCPI1_4:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_5:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_6:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI1_7:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_8:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_9:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_10:
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
.LCPI1_11:
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
.LCPI1_3:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI1_12:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcm_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_encrypt,@function
haberdashery_aes256gcm_skylakex_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	112(%rsp), %r10
	xorl	%eax, %eax
	cmpq	128(%rsp), %r10
	jne	.LBB1_22
	cmpq	$16, 144(%rsp)
	setne	%r11b
	movabsq	$2305843009213693950, %rbx
	cmpq	%rbx, %r8
	seta	%bl
	orb	%r11b, %bl
	jne	.LBB1_22
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483647, %r11
	setae	%r11b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r11b, %dl
	jne	.LBB1_22
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm21
	vpxor	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB1_18
	cmpq	$96, %r8
	jb	.LBB1_5
	vmovdqa64	240(%rdi), %xmm16
	vmovdqa64	256(%rdi), %xmm19
	vmovdqa64	272(%rdi), %xmm20
	vmovdqa64	288(%rdi), %xmm22
	vmovdqa	304(%rdi), %xmm5
	vmovdqa	320(%rdi), %xmm6
	vmovdqa64	.LCPI1_2(%rip), %xmm17
	vpbroadcastq	.LCPI1_3(%rip), %xmm23
	movq	%r8, %rdx
	.p2align	4, 0x90
.LBB1_17:
	vmovdqu64	(%rcx), %xmm18
	vmovdqu	16(%rcx), %xmm10
	vmovdqu	32(%rcx), %xmm11
	vmovdqu	48(%rcx), %xmm12
	vmovdqu	64(%rcx), %xmm13
	vmovdqu	80(%rcx), %xmm14
	vpshufb	%xmm17, %xmm12, %xmm12
	vpshufb	%xmm17, %xmm13, %xmm13
	vpshufb	%xmm17, %xmm14, %xmm14
	vmovdqa64	%xmm16, %xmm2
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm15
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm8
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa64	%xmm19, %xmm3
	vpclmulqdq	$0, %xmm13, %xmm3, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm3, %xmm9
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm0
	vpternlogq	$150, %xmm9, %xmm7, %xmm0
	vmovdqa64	%xmm20, %xmm4
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm7
	vpternlogq	$150, %xmm15, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm0, %xmm9
	vpshufb	%xmm17, %xmm10, %xmm0
	vpshufb	%xmm17, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm10
	vpclmulqdq	$17, %xmm13, %xmm3, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	vmovdqa64	%xmm22, %xmm2
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm9
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm9
	vpternlogq	$150, %xmm7, %xmm11, %xmm9
	vpshufb	%xmm17, %xmm18, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpternlogq	$150, %xmm7, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm7
	vpslldq	$8, %xmm8, %xmm9
	vpternlogq	$150, %xmm7, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm7
	vmovdqa64	%xmm23, %xmm2
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm1
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm1
	vpternlogq	$150, %xmm7, %xmm0, %xmm1
	vpsrldq	$8, %xmm8, %xmm0
	vpshufd	$78, %xmm9, %xmm7
	addq	$96, %rcx
	addq	$-96, %rdx
	vpternlogq	$150, %xmm0, %xmm7, %xmm1
	cmpq	$95, %rdx
	ja	.LBB1_17
	cmpq	$16, %rdx
	jae	.LBB1_11
	jmp	.LBB1_7
.LBB1_18:
	testq	%r10, %r10
	jne	.LBB1_25
	jmp	.LBB1_19
.LBB1_5:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB1_7
.LBB1_11:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB1_12
	cmpq	$16, %rsi
	jae	.LBB1_14
.LBB1_8:
	testq	%rsi, %rsi
	je	.LBB1_20
.LBB1_9:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	testq	%r10, %r10
	je	.LBB1_10
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_22
	vmovdqa	240(%rdi), %xmm2
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm4
	vpxor	%xmm0, %xmm3, %xmm1
	vpternlogq	$150, %xmm2, %xmm4, %xmm1
	jmp	.LBB1_25
.LBB1_12:
	vmovdqu	(%rcx), %xmm2
	addq	$16, %rcx
	vpshufb	.LCPI1_2(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI1_3(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB1_8
.LBB1_14:
	vmovdqa	.LCPI1_2(%rip), %xmm2
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	.p2align	4, 0x90
.LBB1_15:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm2, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm2, %xmm5, %xmm1
	vpternlogq	$150, %xmm4, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm1, %xmm6, %xmm1
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	cmpq	$15, %rdx
	ja	.LBB1_15
.LBB1_7:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_9
.LBB1_20:
	testq	%r10, %r10
	je	.LBB1_19
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_22
.LBB1_25:
	movq	120(%rsp), %rdx
	vpshufb	.LCPI1_0(%rip), %xmm21, %xmm0
	vpaddd	.LCPI1_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r10
	jb	.LBB1_26
	vmovdqa64	.LCPI1_2(%rip), %xmm24
	vpshufb	%xmm24, %xmm2, %xmm2
	vpaddd	.LCPI1_4(%rip), %xmm0, %xmm4
	vpshufb	%xmm24, %xmm4, %xmm5
	vpaddd	.LCPI1_5(%rip), %xmm0, %xmm4
	vpshufb	%xmm24, %xmm4, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm0, %xmm4
	vpshufb	%xmm24, %xmm4, %xmm7
	vpaddd	.LCPI1_7(%rip), %xmm0, %xmm4
	vpshufb	%xmm24, %xmm4, %xmm8
	vpaddd	.LCPI1_8(%rip), %xmm0, %xmm4
	vpshufb	%xmm24, %xmm4, %xmm9
	vmovdqa	(%rdi), %xmm4
	vmovaps	16(%rdi), %xmm12
	vmovdqa	32(%rdi), %xmm3
	vmovdqa	48(%rdi), %xmm10
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm5, %xmm4, %xmm5
	vpxor	%xmm6, %xmm4, %xmm6
	vpxor	%xmm7, %xmm4, %xmm7
	vpxor	%xmm4, %xmm8, %xmm8
	vpxor	%xmm4, %xmm9, %xmm9
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovdqa64	%xmm10, %xmm16
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovdqa	64(%rdi), %xmm10
	vmovdqa64	%xmm10, %xmm18
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovdqa	80(%rdi), %xmm10
	vmovdqa64	%xmm10, %xmm22
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovdqa	96(%rdi), %xmm15
	#APP
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rdi), %xmm13
	vmovaps	%xmm13, -80(%rsp)
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	#NO_APP
	vmovaps	128(%rdi), %xmm13
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	#NO_APP
	vmovaps	144(%rdi), %xmm10
	vmovaps	%xmm10, -96(%rsp)
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovdqa	160(%rdi), %xmm10
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovaps	176(%rdi), %xmm11
	vmovaps	%xmm11, -112(%rsp)
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovdqa	192(%rdi), %xmm11
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovdqa	208(%rdi), %xmm14
	vmovdqa64	%xmm14, %xmm23
	#APP
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovdqa	224(%rdi), %xmm14
	#APP
	vaesenclast	%xmm14, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm5, %xmm5
	vaesenclast	%xmm14, %xmm6, %xmm6
	vaesenclast	%xmm14, %xmm7, %xmm7
	vaesenclast	%xmm14, %xmm8, %xmm8
	vaesenclast	%xmm14, %xmm9, %xmm9
	#NO_APP
	vpxorq	(%r9), %xmm2, %xmm17
	vpxorq	16(%r9), %xmm5, %xmm25
	vpxorq	32(%r9), %xmm6, %xmm26
	vpxorq	48(%r9), %xmm7, %xmm27
	vpxorq	64(%r9), %xmm8, %xmm28
	vpxor	80(%r9), %xmm9, %xmm5
	leaq	96(%r9), %r9
	leaq	96(%rdx), %rcx
	vpaddd	.LCPI1_9(%rip), %xmm0, %xmm2
	vmovdqu64	%xmm17, (%rdx)
	vmovdqu64	%xmm25, 16(%rdx)
	vmovdqu64	%xmm26, 32(%rdx)
	vmovdqu64	%xmm27, 48(%rdx)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm28, 64(%rdx)
	vmovdqu	%xmm5, 80(%rdx)
	cmpq	$96, %rax
	jb	.LBB1_37
	vmovdqa64	%xmm21, -128(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	288(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	304(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqa	320(%rdi), %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	%xmm3, -16(%rsp)
	vmovdqa64	%xmm16, -32(%rsp)
	vmovdqa64	%xmm18, -48(%rsp)
	vmovaps	%xmm13, -64(%rsp)
	vmovdqa64	%xmm15, %xmm16
	vmovaps	-80(%rsp), %xmm21
	vmovaps	-96(%rsp), %xmm31
	vmovdqa64	%xmm10, %xmm18
	vmovaps	-112(%rsp), %xmm30
	vmovdqa64	%xmm11, %xmm19
	vmovdqa64	%xmm14, %xmm20
	.p2align	4, 0x90
.LBB1_35:
	vpshufb	%xmm24, %xmm2, %xmm0
	vpaddd	.LCPI1_1(%rip), %xmm2, %xmm6
	vpshufb	%xmm24, %xmm6, %xmm6
	vpaddd	.LCPI1_4(%rip), %xmm2, %xmm7
	vpshufb	%xmm24, %xmm7, %xmm7
	vpaddd	.LCPI1_5(%rip), %xmm2, %xmm8
	vpshufb	%xmm24, %xmm8, %xmm8
	vpaddd	.LCPI1_6(%rip), %xmm2, %xmm9
	vpshufb	%xmm24, %xmm9, %xmm9
	vpaddd	.LCPI1_7(%rip), %xmm2, %xmm10
	vpshufb	%xmm24, %xmm10, %xmm10
	vpshufb	%xmm24, %xmm5, %xmm11
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	%xmm6, %xmm4, %xmm5
	vpxor	%xmm7, %xmm4, %xmm6
	vpxor	%xmm4, %xmm8, %xmm7
	vpxor	%xmm4, %xmm9, %xmm14
	vpxor	%xmm4, %xmm10, %xmm15
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm8, %xmm8, %xmm8
	vmovaps	%xmm12, %xmm29
	vmovaps	80(%rsp), %xmm3
	vmovaps	-16(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm14, %xmm14
	vaesenc	%xmm13, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm24, %xmm28, %xmm11
	vmovaps	-32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	#NO_APP
	vmovaps	64(%rsp), %xmm3
	vmovaps	-48(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm14, %xmm14
	vaesenc	%xmm13, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm24, %xmm27, %xmm11
	vmovdqa64	%xmm22, %xmm12
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm16, %xmm13
	vmovaps	48(%rsp), %xmm3
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm14, %xmm14
	vaesenc	%xmm13, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm24, %xmm26, %xmm11
	vmovaps	%xmm21, %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	#NO_APP
	vmovaps	32(%rsp), %xmm13
	vmovaps	-64(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm24, %xmm25, %xmm11
	vmovaps	%xmm31, %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm18, %xmm3
	vmovaps	16(%rsp), %xmm13
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm11, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	#NO_APP
	vmovaps	%xmm29, %xmm12
	vpshufb	%xmm24, %xmm17, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vmovaps	%xmm30, %xmm3
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm19, %xmm3
	vmovaps	(%rsp), %xmm13
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	#NO_APP
	vmovdqa64	%xmm23, %xmm1
	#APP
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm20, %xmm1
	#APP
	vaesenclast	%xmm1, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm5, %xmm5
	vaesenclast	%xmm1, %xmm6, %xmm6
	vaesenclast	%xmm1, %xmm7, %xmm7
	vaesenclast	%xmm1, %xmm14, %xmm14
	vaesenclast	%xmm1, %xmm15, %xmm15
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm17
	vpxorq	16(%r9), %xmm5, %xmm25
	vpxorq	32(%r9), %xmm6, %xmm26
	vpxorq	48(%r9), %xmm7, %xmm27
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm10, %xmm1, %xmm0
	vpunpckhqdq	%xmm1, %xmm10, %xmm1
	vpxorq	64(%r9), %xmm14, %xmm28
	vpxor	80(%r9), %xmm15, %xmm5
	vpxor	%xmm0, %xmm9, %xmm0
	vpshufd	$78, %xmm0, %xmm6
	vpbroadcastq	.LCPI1_3(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm1, %xmm8, %xmm1
	vpshufd	$78, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm6, %xmm1
	addq	$96, %r9
	vmovdqu64	%xmm17, (%rcx)
	vmovdqu64	%xmm25, 16(%rcx)
	vmovdqu64	%xmm26, 32(%rcx)
	vmovdqu64	%xmm27, 48(%rcx)
	vmovdqu64	%xmm28, 64(%rcx)
	vmovdqu	%xmm5, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rax
	ja	.LBB1_35
	vmovdqa64	-128(%rsp), %xmm21
.LBB1_37:
	vpshufb	%xmm24, %xmm17, %xmm0
	vpshufb	%xmm24, %xmm25, %xmm4
	vpshufb	%xmm24, %xmm26, %xmm6
	vpshufb	%xmm24, %xmm27, %xmm7
	vpshufb	%xmm24, %xmm28, %xmm8
	vpshufb	%xmm24, %xmm5, %xmm3
	vpxor	%xmm0, %xmm1, %xmm13
	vmovdqa	240(%rdi), %xmm5
	vmovdqa	256(%rdi), %xmm9
	vmovdqa	272(%rdi), %xmm10
	vmovdqa	288(%rdi), %xmm11
	vmovdqa	304(%rdi), %xmm12
	vmovdqa	320(%rdi), %xmm1
	vpclmulqdq	$0, %xmm3, %xmm5, %xmm0
	vmovdqa64	%xmm0, %xmm16
	vpclmulqdq	$1, %xmm3, %xmm5, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm15
	vpxorq	%xmm14, %xmm15, %xmm17
	vpclmulqdq	$17, %xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm8
	vpternlogq	$150, %xmm15, %xmm17, %xmm14
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm15
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm7
	vpternlogq	$150, %xmm16, %xmm5, %xmm9
	vpternlogq	$150, %xmm15, %xmm14, %xmm0
	vpternlogq	$150, %xmm3, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm6
	vpternlogq	$150, %xmm5, %xmm0, %xmm8
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm10
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpternlogq	$150, %xmm3, %xmm9, %xmm0
	vpternlogq	$150, %xmm5, %xmm8, %xmm10
	vpternlogq	$150, %xmm6, %xmm7, %xmm4
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm3
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm6
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm7
	vpternlogq	$150, %xmm5, %xmm10, %xmm6
	vpslldq	$8, %xmm6, %xmm1
	vpternlogq	$150, %xmm3, %xmm0, %xmm1
	vpsrldq	$8, %xmm6, %xmm0
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm1
	vpshufd	$78, %xmm5, %xmm3
	vpternlogq	$150, %xmm7, %xmm4, %xmm1
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	movq	%rcx, %rdx
	cmpq	$16, %rax
	jae	.LBB1_38
.LBB1_28:
	movq	%rdx, %rcx
	movq	%r9, %rsi
	jmp	.LBB1_29
.LBB1_26:
	movq	%r10, %rax
	cmpq	$16, %rax
	jb	.LBB1_28
.LBB1_38:
	vmovdqa64	(%rdi), %xmm17
	vmovdqa64	16(%rdi), %xmm16
	vmovdqa64	32(%rdi), %xmm22
	vmovdqa64	48(%rdi), %xmm23
	vmovdqa64	64(%rdi), %xmm24
	vmovdqa64	80(%rdi), %xmm25
	vmovdqa64	96(%rdi), %xmm26
	vmovdqa	112(%rdi), %xmm9
	vmovdqa	128(%rdi), %xmm10
	vmovdqa	144(%rdi), %xmm11
	vmovdqa	160(%rdi), %xmm12
	vmovdqa	176(%rdi), %xmm13
	vmovdqa	192(%rdi), %xmm14
	vmovdqa	208(%rdi), %xmm15
	vmovdqa	224(%rdi), %xmm0
	vmovdqa	240(%rdi), %xmm3
	vmovdqa64	.LCPI1_2(%rip), %xmm18
	vpmovsxbq	.LCPI1_12(%rip), %xmm19
	vpbroadcastq	.LCPI1_3(%rip), %xmm4
	.p2align	4, 0x90
.LBB1_39:
	vpshufb	%xmm18, %xmm2, %xmm20
	vpxorq	%xmm20, %xmm17, %xmm5
	vmovdqa64	%xmm16, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm22, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm23, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm24, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm25, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm26, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenclast	%xmm0, %xmm5, %xmm5
	vpxor	(%r9), %xmm5, %xmm5
	vpshufb	%xmm18, %xmm5, %xmm20
	vpxorq	%xmm20, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm6, %xmm20
	vpxorq	%xmm20, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm4, %xmm7, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpshufd	$78, %xmm7, %xmm7
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %rcx
	addq	$-16, %rax
	vpaddd	%xmm19, %xmm2, %xmm2
	vmovdqu	%xmm5, (%rdx)
	vpsrldq	$8, %xmm6, %xmm5
	vpternlogq	$150, %xmm5, %xmm7, %xmm1
	movq	%rcx, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rax
	ja	.LBB1_39
.LBB1_29:
	testq	%rax, %rax
	je	.LBB1_19
	movl	$-1, %edx
	bzhil	%eax, %edx, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rsi), %xmm0 {%k1} {z}
	vpshufb	.LCPI1_2(%rip), %xmm2, %xmm2
	vpxor	(%rdi), %xmm2, %xmm2
	vaesenc	16(%rdi), %xmm2, %xmm2
	vaesenc	32(%rdi), %xmm2, %xmm2
	vaesenc	48(%rdi), %xmm2, %xmm2
	vaesenc	64(%rdi), %xmm2, %xmm2
	vaesenc	80(%rdi), %xmm2, %xmm2
	vaesenc	96(%rdi), %xmm2, %xmm2
	vaesenc	112(%rdi), %xmm2, %xmm2
	vaesenc	128(%rdi), %xmm2, %xmm2
	vaesenc	144(%rdi), %xmm2, %xmm2
	vaesenc	160(%rdi), %xmm2, %xmm2
	vaesenc	176(%rdi), %xmm2, %xmm2
	vaesenc	192(%rdi), %xmm2, %xmm2
	vaesenc	208(%rdi), %xmm2, %xmm2
	vaesenclast	224(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rcx) {%k1}
	testq	%r10, %r10
	je	.LBB1_10
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vmovdqa	240(%rdi), %xmm2
	jmp	.LBB1_32
.LBB1_10:
	vmovdqa	240(%rdi), %xmm2
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
.LBB1_32:
	vpxor	%xmm0, %xmm1, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_3(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
.LBB1_19:
	movq	136(%rsp), %rax
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm2
	vmovq	%r10, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpsllq	$3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_3(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxorq	(%rdi), %xmm21, %xmm4
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
	vpshufb	.LCPI1_10(%rip), %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vmovdqu	%xmm1, (%rax)
	movl	$1, %eax
.LBB1_22:
	addq	$96, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcm_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcm_skylakex_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
.LCPI2_1:
	.long	1
	.long	0
	.long	0
	.long	0
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
.LCPI2_4:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_6:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI2_7:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_8:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_9:
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
.LCPI2_10:
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
.LCPI2_3:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI2_11:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcm_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_decrypt,@function
haberdashery_aes256gcm_skylakex_decrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	112(%rsp), %r10
	xorl	%eax, %eax
	cmpq	144(%rsp), %r10
	jne	.LBB2_5
	cmpq	$16, 128(%rsp)
	setne	%r11b
	movabsq	$2305843009213693950, %rbx
	cmpq	%rbx, %r8
	seta	%bl
	movq	%r10, %r14
	shrq	$5, %r14
	cmpq	$2147483647, %r14
	setae	%bpl
	orb	%r11b, %bl
	orb	%bpl, %bl
	cmpq	$12, %rdx
	setne	%dl
	orb	%bl, %dl
	jne	.LBB2_5
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm16
	vpxor	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB2_3
	cmpq	$96, %r8
	jb	.LBB2_7
	vmovdqa64	240(%rdi), %xmm19
	vmovdqa64	256(%rdi), %xmm20
	vmovdqa64	272(%rdi), %xmm21
	vmovdqa64	288(%rdi), %xmm22
	vmovdqa	304(%rdi), %xmm5
	vmovdqa	320(%rdi), %xmm6
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpbroadcastq	.LCPI2_3(%rip), %xmm23
	movq	%r8, %rdx
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu64	(%rcx), %xmm18
	vmovdqu	16(%rcx), %xmm10
	vmovdqu	32(%rcx), %xmm11
	vmovdqu	48(%rcx), %xmm12
	vmovdqu	64(%rcx), %xmm13
	vmovdqu	80(%rcx), %xmm14
	vpshufb	%xmm17, %xmm12, %xmm12
	vpshufb	%xmm17, %xmm13, %xmm13
	vpshufb	%xmm17, %xmm14, %xmm14
	vmovdqa64	%xmm19, %xmm2
	vpclmulqdq	$0, %xmm14, %xmm2, %xmm15
	vpclmulqdq	$1, %xmm14, %xmm2, %xmm8
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa64	%xmm20, %xmm3
	vpclmulqdq	$0, %xmm13, %xmm3, %xmm8
	vpclmulqdq	$1, %xmm13, %xmm3, %xmm9
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm0
	vpternlogq	$150, %xmm9, %xmm7, %xmm0
	vmovdqa64	%xmm21, %xmm4
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm7
	vpternlogq	$150, %xmm15, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm0, %xmm9
	vpshufb	%xmm17, %xmm10, %xmm0
	vpshufb	%xmm17, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm14, %xmm2, %xmm10
	vpclmulqdq	$17, %xmm13, %xmm3, %xmm11
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	vmovdqa64	%xmm22, %xmm2
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm9
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm9
	vpternlogq	$150, %xmm7, %xmm11, %xmm9
	vpshufb	%xmm17, %xmm18, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpternlogq	$150, %xmm7, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm8
	vpternlogq	$150, %xmm7, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm7
	vpslldq	$8, %xmm8, %xmm9
	vpternlogq	$150, %xmm7, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm7
	vmovdqa64	%xmm23, %xmm2
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm1
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm1
	vpternlogq	$150, %xmm7, %xmm0, %xmm1
	vpsrldq	$8, %xmm8, %xmm0
	vpshufd	$78, %xmm9, %xmm7
	addq	$96, %rcx
	addq	$-96, %rdx
	vpternlogq	$150, %xmm0, %xmm7, %xmm1
	cmpq	$95, %rdx
	ja	.LBB2_19
	cmpq	$16, %rdx
	jae	.LBB2_13
	jmp	.LBB2_9
.LBB2_7:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB2_9
.LBB2_13:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB2_14
	cmpq	$16, %rsi
	jae	.LBB2_16
.LBB2_10:
	testq	%rsi, %rsi
	je	.LBB2_3
.LBB2_11:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	testq	%r10, %r10
	je	.LBB2_12
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_5
	vmovdqa	240(%rdi), %xmm2
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI2_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm4
	vpxor	%xmm0, %xmm3, %xmm1
	vpternlogq	$150, %xmm2, %xmm4, %xmm1
	jmp	.LBB2_22
.LBB2_14:
	vmovdqu	(%rcx), %xmm2
	addq	$16, %rcx
	vpshufb	.LCPI2_2(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_3(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB2_10
.LBB2_16:
	vmovdqa	.LCPI2_2(%rip), %xmm2
	vpbroadcastq	.LCPI2_3(%rip), %xmm3
	.p2align	4, 0x90
.LBB2_17:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm2, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm2, %xmm5, %xmm1
	vpternlogq	$150, %xmm4, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm1, %xmm6, %xmm1
	vpternlogq	$150, %xmm5, %xmm4, %xmm1
	cmpq	$15, %rdx
	ja	.LBB2_17
.LBB2_9:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB2_11
.LBB2_3:
	testq	%r10, %r10
	je	.LBB2_29
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_5
.LBB2_22:
	movq	136(%rsp), %rax
	vpshufb	.LCPI2_0(%rip), %xmm16, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r10
	jb	.LBB2_23
	vmovdqa64	%xmm16, -128(%rsp)
	vmovdqa	(%rdi), %xmm3
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, -16(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, -32(%rsp)
	vmovaps	128(%rdi), %xmm0
	vmovaps	%xmm0, -48(%rsp)
	vmovaps	144(%rdi), %xmm0
	vmovaps	%xmm0, -64(%rsp)
	vmovaps	160(%rdi), %xmm0
	vmovaps	%xmm0, -80(%rsp)
	vmovaps	176(%rdi), %xmm0
	vmovaps	%xmm0, -96(%rsp)
	vmovdqa	192(%rdi), %xmm0
	vmovdqa	%xmm0, -112(%rsp)
	vmovdqa64	208(%rdi), %xmm20
	vmovdqa64	224(%rdi), %xmm21
	vmovdqa64	240(%rdi), %xmm22
	vmovdqa64	256(%rdi), %xmm23
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpxord	%xmm24, %xmm24, %xmm24
	movq	%r10, %rcx
	vmovaps	272(%rdi), %xmm31
	vmovaps	288(%rdi), %xmm16
	vmovdqa64	304(%rdi), %xmm18
	vmovdqa64	320(%rdi), %xmm19
	.p2align	4, 0x90
.LBB2_31:
	vmovdqu64	16(%r9), %xmm25
	vmovdqu64	32(%r9), %xmm26
	vmovdqu64	48(%r9), %xmm27
	vmovdqu64	64(%r9), %xmm28
	vmovdqu64	80(%r9), %xmm29
	vpshufb	%xmm17, %xmm2, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm2, %xmm4
	vpshufb	%xmm17, %xmm4, %xmm4
	vpaddd	.LCPI2_4(%rip), %xmm2, %xmm5
	vpshufb	%xmm17, %xmm5, %xmm5
	vpaddd	.LCPI2_5(%rip), %xmm2, %xmm6
	vpshufb	%xmm17, %xmm6, %xmm6
	vpaddd	.LCPI2_6(%rip), %xmm2, %xmm7
	vpshufb	%xmm17, %xmm7, %xmm7
	vpaddd	.LCPI2_7(%rip), %xmm2, %xmm12
	vpshufb	%xmm17, %xmm12, %xmm30
	vpshufb	%xmm17, %xmm29, %xmm11
	vpxor	%xmm0, %xmm3, %xmm12
	vpxor	%xmm4, %xmm3, %xmm13
	vpxor	%xmm5, %xmm3, %xmm14
	vpxor	%xmm6, %xmm3, %xmm15
	vpxor	%xmm7, %xmm3, %xmm0
	vpxorq	%xmm30, %xmm3, %xmm4
	vmovaps	64(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm4, %xmm4
	#NO_APP
	vxorps	%xmm5, %xmm5, %xmm5
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm6, %xmm6, %xmm6
	vmovaps	48(%rsp), %xmm9
	vmovdqa64	%xmm22, %xmm10
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm28, %xmm8
	vmovaps	32(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	#NO_APP
	vmovaps	16(%rsp), %xmm9
	vmovdqa64	%xmm23, %xmm10
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm11
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm27, %xmm8
	vmovaps	(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	#NO_APP
	vmovaps	-16(%rsp), %xmm9
	vmovaps	%xmm31, %xmm10
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm11
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm26, %xmm8
	vmovaps	-32(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	#NO_APP
	vmovaps	-48(%rsp), %xmm9
	vmovaps	%xmm16, %xmm10
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm11
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	#NO_APP
	vpshufb	%xmm17, %xmm25, %xmm8
	vmovaps	-64(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	#NO_APP
	vmovaps	-80(%rsp), %xmm9
	vmovdqa64	%xmm18, %xmm10
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm11
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	#NO_APP
	vmovdqu	(%r9), %xmm8
	vpshufb	%xmm17, %xmm8, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vmovaps	-96(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	#NO_APP
	vmovdqa64	%xmm19, %xmm10
	vmovaps	-112(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm11
	vpxor	%xmm5, %xmm11, %xmm5
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	#NO_APP
	vpunpcklqdq	%xmm7, %xmm24, %xmm1
	vpunpckhqdq	%xmm24, %xmm7, %xmm7
	vmovdqa64	%xmm20, %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	#NO_APP
	vmovdqa64	%xmm21, %xmm9
	#APP
	vaesenclast	%xmm9, %xmm12, %xmm12
	vaesenclast	%xmm9, %xmm13, %xmm13
	vaesenclast	%xmm9, %xmm14, %xmm14
	vaesenclast	%xmm9, %xmm15, %xmm15
	vaesenclast	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm9, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm8, %xmm12, %xmm8
	vpxorq	%xmm25, %xmm13, %xmm11
	vpxorq	%xmm26, %xmm14, %xmm12
	vpxorq	%xmm27, %xmm15, %xmm13
	vpxorq	%xmm28, %xmm0, %xmm0
	vpxorq	%xmm29, %xmm4, %xmm4
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufd	$78, %xmm1, %xmm5
	vpbroadcastq	.LCPI2_3(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm5
	vpxor	%xmm7, %xmm6, %xmm1
	vmovdqu	%xmm8, (%rax)
	vmovdqu	%xmm11, 16(%rax)
	vmovdqu	%xmm12, 32(%rax)
	vmovdqu	%xmm13, 48(%rax)
	vmovdqu	%xmm0, 64(%rax)
	vmovdqu	%xmm4, 80(%rax)
	vpshufd	$78, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm4
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI2_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rcx
	ja	.LBB2_31
	vmovdqa64	-128(%rsp), %xmm16
	cmpq	$16, %rcx
	jae	.LBB2_33
.LBB2_25:
	movq	%rax, %rdx
	jmp	.LBB2_26
.LBB2_23:
	movq	%r10, %rcx
	cmpq	$16, %rcx
	jb	.LBB2_25
.LBB2_33:
	vmovdqa	240(%rdi), %xmm0
	vmovdqa64	(%rdi), %xmm17
	vmovdqa64	16(%rdi), %xmm22
	vmovdqa64	32(%rdi), %xmm23
	vmovdqa64	48(%rdi), %xmm24
	vmovdqa64	64(%rdi), %xmm25
	vmovdqa64	80(%rdi), %xmm26
	vmovdqa	96(%rdi), %xmm9
	vmovdqa	112(%rdi), %xmm10
	vmovdqa	128(%rdi), %xmm11
	vmovdqa	144(%rdi), %xmm12
	vmovdqa	160(%rdi), %xmm13
	vmovdqa	176(%rdi), %xmm14
	vmovdqa	192(%rdi), %xmm15
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm4
	vmovdqa64	.LCPI2_2(%rip), %xmm18
	vpbroadcastq	.LCPI2_3(%rip), %xmm5
	vpmovsxbq	.LCPI2_11(%rip), %xmm19
	.p2align	4, 0x90
.LBB2_34:
	vmovdqu64	(%r9), %xmm20
	vpshufb	%xmm18, %xmm20, %xmm21
	vpxorq	%xmm21, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm6, %xmm21
	vpxorq	%xmm21, %xmm7, %xmm7
	vpshufd	$78, %xmm7, %xmm21
	vpclmulqdq	$16, %xmm5, %xmm7, %xmm7
	vpxorq	%xmm21, %xmm7, %xmm7
	vpshufd	$78, %xmm7, %xmm21
	vpclmulqdq	$16, %xmm5, %xmm7, %xmm7
	vpxor	%xmm1, %xmm7, %xmm1
	vpshufb	%xmm18, %xmm2, %xmm7
	vpxorq	%xmm7, %xmm17, %xmm7
	vmovdqa64	%xmm22, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm23, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm24, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm25, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vmovdqa64	%xmm26, %xmm8
	vaesenc	%xmm8, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenclast	%xmm4, %xmm7, %xmm7
	vpxorq	%xmm20, %xmm7, %xmm7
	leaq	16(%rax), %rdx
	addq	$-16, %rcx
	addq	$16, %r9
	vpsrldq	$8, %xmm6, %xmm6
	vpternlogq	$150, %xmm6, %xmm21, %xmm1
	vpaddd	%xmm19, %xmm2, %xmm2
	vmovdqu	%xmm7, (%rax)
	movq	%rdx, %rax
	cmpq	$15, %rcx
	ja	.LBB2_34
.LBB2_26:
	testq	%rcx, %rcx
	je	.LBB2_29
	movl	$-1, %eax
	bzhil	%ecx, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%r9), %xmm0 {%k1} {z}
	vmovdqa	.LCPI2_2(%rip), %xmm3
	vpshufb	%xmm3, %xmm2, %xmm2
	vpxor	(%rdi), %xmm2, %xmm2
	vaesenc	16(%rdi), %xmm2, %xmm2
	vaesenc	32(%rdi), %xmm2, %xmm2
	vaesenc	48(%rdi), %xmm2, %xmm2
	vaesenc	64(%rdi), %xmm2, %xmm2
	vaesenc	80(%rdi), %xmm2, %xmm2
	vaesenc	96(%rdi), %xmm2, %xmm2
	vaesenc	112(%rdi), %xmm2, %xmm2
	vaesenc	128(%rdi), %xmm2, %xmm2
	vaesenc	144(%rdi), %xmm2, %xmm2
	vaesenc	160(%rdi), %xmm2, %xmm2
	vaesenc	176(%rdi), %xmm2, %xmm2
	vaesenc	192(%rdi), %xmm2, %xmm2
	vaesenc	208(%rdi), %xmm2, %xmm2
	vaesenclast	224(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovdqu8	%xmm2, (%rdx) {%k1}
	vpshufb	%xmm3, %xmm0, %xmm0
	vmovdqa	240(%rdi), %xmm3
	jmp	.LBB2_28
.LBB2_12:
	vmovdqa	240(%rdi), %xmm3
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
.LBB2_28:
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm1, %xmm3, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
.LBB2_29:
	movq	120(%rsp), %rax
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm2
	vmovq	%r10, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpsllq	$3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI2_3(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxorq	(%rdi), %xmm16, %xmm4
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
	vpshufb	.LCPI2_9(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_10(%rip), %xmm3, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vpternlogq	$150, (%rax), %xmm4, %xmm2
	xorl	%eax, %eax
	vptest	%xmm2, %xmm2
	sete	%al
.LBB2_5:
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcm_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcm_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_is_supported,@function
haberdashery_aes256gcm_skylakex_is_supported:
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
	.size	haberdashery_aes256gcm_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcm_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.85.0-nightly (4363f9b6f 2025-01-02)"
	.section	".note.GNU-stack","",@progbits

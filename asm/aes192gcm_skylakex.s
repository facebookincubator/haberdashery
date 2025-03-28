# @generated
# https://github.com/facebookincubator/haberdashery/
	.text
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
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
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes192gcm_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylakex_init,@function
haberdashery_aes192gcm_skylakex_init:
	.cfi_startproc
	cmpq	$24, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm2
	vmovq	16(%rsi), %xmm0
	vpslldq	$4, %xmm2, %xmm1
	vpslldq	$8, %xmm2, %xmm3
	vaeskeygenassist	$1, %xmm0, %xmm4
	vpslldq	$12, %xmm2, %xmm5
	vpternlogq	$150, %xmm3, %xmm1, %xmm5
	vpshufd	$85, %xmm4, %xmm1
	vpternlogq	$150, %xmm5, %xmm2, %xmm1
	vmovdqa64	%xmm2, %xmm16
	vpshufd	$255, %xmm1, %xmm3
	vpslldq	$4, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm18
	valignq	$1, %xmm1, %xmm4, %xmm17
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpslldq	$12, %xmm1, %xmm5
	vpternlogq	$150, %xmm3, %xmm0, %xmm5
	vaeskeygenassist	$2, %xmm4, %xmm0
	vpshufd	$85, %xmm0, %xmm15
	vpternlogq	$150, %xmm5, %xmm1, %xmm15
	vpshufd	$255, %xmm15, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm4
	vaeskeygenassist	$4, %xmm1, %xmm5
	vpslldq	$12, %xmm15, %xmm6
	vpternlogq	$150, %xmm4, %xmm0, %xmm6
	vpshufd	$85, %xmm5, %xmm0
	vpternlogq	$150, %xmm6, %xmm15, %xmm0
	vpshufd	$255, %xmm0, %xmm4
	vpslldq	$4, %xmm1, %xmm7
	vpternlogq	$150, %xmm4, %xmm1, %xmm7
	vpunpcklqdq	%xmm0, %xmm1, %xmm4
	vpalignr	$8, %xmm0, %xmm7, %xmm5
	vpslldq	$4, %xmm0, %xmm1
	vpslldq	$8, %xmm0, %xmm6
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm6, %xmm1, %xmm8
	vaeskeygenassist	$8, %xmm7, %xmm1
	vpshufd	$85, %xmm1, %xmm6
	vpternlogq	$150, %xmm8, %xmm0, %xmm6
	vpshufd	$255, %xmm6, %xmm0
	vpslldq	$4, %xmm7, %xmm1
	vpternlogq	$150, %xmm0, %xmm7, %xmm1
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm7
	vaeskeygenassist	$16, %xmm1, %xmm8
	vpslldq	$12, %xmm6, %xmm9
	vpternlogq	$150, %xmm7, %xmm0, %xmm9
	vpshufd	$85, %xmm8, %xmm0
	vpternlogq	$150, %xmm9, %xmm6, %xmm0
	vpshufd	$255, %xmm0, %xmm7
	vpslldq	$4, %xmm1, %xmm10
	vpternlogq	$150, %xmm7, %xmm1, %xmm10
	vpunpcklqdq	%xmm0, %xmm1, %xmm7
	vpalignr	$8, %xmm0, %xmm10, %xmm8
	vpslldq	$4, %xmm0, %xmm1
	vpslldq	$8, %xmm0, %xmm9
	vpslldq	$12, %xmm0, %xmm11
	vpternlogq	$150, %xmm9, %xmm1, %xmm11
	vaeskeygenassist	$32, %xmm10, %xmm1
	vpshufd	$85, %xmm1, %xmm9
	vpternlogq	$150, %xmm11, %xmm0, %xmm9
	vpshufd	$255, %xmm9, %xmm0
	vpslldq	$4, %xmm10, %xmm1
	vpternlogq	$150, %xmm0, %xmm10, %xmm1
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm10
	vaeskeygenassist	$64, %xmm1, %xmm11
	vpslldq	$12, %xmm9, %xmm12
	vpternlogq	$150, %xmm10, %xmm0, %xmm12
	vpshufd	$85, %xmm11, %xmm0
	vpternlogq	$150, %xmm12, %xmm9, %xmm0
	vpshufd	$255, %xmm0, %xmm10
	vpslldq	$4, %xmm1, %xmm12
	vpternlogq	$150, %xmm10, %xmm1, %xmm12
	vpunpcklqdq	%xmm0, %xmm1, %xmm2
	vpalignr	$8, %xmm0, %xmm12, %xmm3
	vpslldq	$4, %xmm0, %xmm1
	vpslldq	$8, %xmm0, %xmm13
	vpslldq	$12, %xmm0, %xmm14
	vpternlogq	$150, %xmm13, %xmm1, %xmm14
	vaeskeygenassist	$128, %xmm12, %xmm1
	vpshufd	$85, %xmm1, %xmm12
	vpternlogq	$150, %xmm14, %xmm0, %xmm12
	vmovdqa64	%xmm16, %xmm10
	vmovdqa64	%xmm18, %xmm0
	vaesenc	%xmm0, %xmm10, %xmm0
	vmovdqa64	%xmm18, %xmm16
	vmovdqa64	%xmm17, %xmm11
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vmovapd	%xmm15, %xmm22
	vaesenc	%xmm4, %xmm0, %xmm0
	vmovdqa64	%xmm4, %xmm17
	vaesenc	%xmm5, %xmm0, %xmm0
	vmovdqa64	%xmm5, %xmm18
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa64	%xmm7, %xmm19
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa64	%xmm8, %xmm20
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpshufb	.LCPI0_0(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm13
	vpxor	%xmm14, %xmm14, %xmm14
	vpblendd	$12, %xmm1, %xmm14, %xmm1
	vpsllq	$63, %xmm1, %xmm14
	vpternlogq	$30, %xmm13, %xmm0, %xmm14
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm13
	vpternlogq	$150, %xmm0, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm0
	vpbroadcastq	.LCPI0_1(%rip), %xmm15
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm14
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm4
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpshufd	$78, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm5
	vpternlogq	$150, %xmm0, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpshufd	$78, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm7
	vpternlogq	$150, %xmm5, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpslldq	$8, %xmm5, %xmm7
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm15
	vpxor	%xmm8, %xmm15, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vmovdqa	%xmm10, (%rdi)
	vmovdqa64	%xmm16, 16(%rdi)
	vmovdqa	%xmm11, 32(%rdi)
	vmovapd	%xmm22, 48(%rdi)
	vmovdqa64	%xmm17, 64(%rdi)
	vmovdqa64	%xmm18, 80(%rdi)
	vmovdqa	%xmm6, 96(%rdi)
	vmovdqa64	%xmm19, 112(%rdi)
	vmovdqa64	%xmm20, 128(%rdi)
	vmovdqa	%xmm9, 144(%rdi)
	vmovdqa	%xmm2, 160(%rdi)
	vmovdqa	%xmm3, 176(%rdi)
	vmovdqa	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovdqa	%xmm14, 224(%rdi)
	vmovdqa	%xmm1, 240(%rdi)
	vmovdqa	%xmm0, 256(%rdi)
	vpsrldq	$8, %xmm5, %xmm0
	vpternlogq	$150, %xmm0, %xmm8, %xmm7
	vmovdqa	%xmm7, 272(%rdi)
	vmovdqa	%xmm4, 288(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$24, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes192gcm_skylakex_init, .Lfunc_end0-haberdashery_aes192gcm_skylakex_init
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
	.section	.text.haberdashery_aes192gcm_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylakex_encrypt,@function
haberdashery_aes192gcm_skylakex_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movq	64(%rsp), %r10
	xorl	%eax, %eax
	cmpq	80(%rsp), %r10
	jne	.LBB1_22
	cmpq	$16, 96(%rsp)
	setne	%r11b
	movabsq	$2305843009213693950, %rbx
	cmpq	%rbx, %r8
	seta	%bl
	orb	%r11b, %bl
	jne	.LBB1_22
	movabsq	$68719476719, %r11
	cmpq	%r11, %r10
	seta	%r11b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r11b, %dl
	jne	.LBB1_22
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm16
	vpxor	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB1_18
	cmpq	$96, %r8
	jb	.LBB1_5
	vmovdqa64	208(%rdi), %xmm19
	vmovdqa64	224(%rdi), %xmm20
	vmovdqa64	240(%rdi), %xmm21
	vmovdqa64	256(%rdi), %xmm22
	vmovdqa	272(%rdi), %xmm5
	vmovdqa	288(%rdi), %xmm6
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
	vmovdqa	208(%rdi), %xmm0
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
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_22
	vmovdqa	208(%rdi), %xmm2
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
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_22
.LBB1_25:
	movq	72(%rsp), %rdx
	vpshufb	.LCPI1_0(%rip), %xmm16, %xmm5
	vpaddd	.LCPI1_1(%rip), %xmm5, %xmm2
	cmpq	$96, %r10
	jb	.LBB1_26
	vmovdqa64	.LCPI1_2(%rip), %xmm23
	vpshufb	%xmm23, %xmm2, %xmm0
	vpaddd	.LCPI1_4(%rip), %xmm5, %xmm2
	vpshufb	%xmm23, %xmm2, %xmm2
	vpaddd	.LCPI1_5(%rip), %xmm5, %xmm4
	vpshufb	%xmm23, %xmm4, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm5, %xmm4
	vpshufb	%xmm23, %xmm4, %xmm7
	vpaddd	.LCPI1_7(%rip), %xmm5, %xmm4
	vpshufb	%xmm23, %xmm4, %xmm8
	vpaddd	.LCPI1_8(%rip), %xmm5, %xmm4
	vpshufb	%xmm23, %xmm4, %xmm9
	vmovdqa	(%rdi), %xmm4
	vmovaps	16(%rdi), %xmm10
	vmovaps	32(%rdi), %xmm11
	vmovdqa	48(%rdi), %xmm3
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm6, %xmm4, %xmm6
	vpxor	%xmm7, %xmm4, %xmm7
	vpxor	%xmm4, %xmm8, %xmm8
	vpxor	%xmm4, %xmm9, %xmm9
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm11, %xmm18
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	64(%rdi), %xmm11
	vmovaps	%xmm11, %xmm31
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovdqa	80(%rdi), %xmm14
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovdqa	96(%rdi), %xmm15
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rdi), %xmm12
	vmovaps	%xmm12, -96(%rsp)
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	#NO_APP
	vmovdqa	128(%rdi), %xmm12
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	#NO_APP
	vmovaps	144(%rdi), %xmm11
	vmovaps	%xmm11, -112(%rsp)
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovaps	160(%rdi), %xmm11
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovaps	176(%rdi), %xmm13
	vmovaps	%xmm13, %xmm30
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	#NO_APP
	vmovdqa	192(%rdi), %xmm13
	#APP
	vaesenclast	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm13, %xmm6, %xmm6
	vaesenclast	%xmm13, %xmm7, %xmm7
	vaesenclast	%xmm13, %xmm8, %xmm8
	vaesenclast	%xmm13, %xmm9, %xmm9
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm17
	vpxorq	16(%r9), %xmm2, %xmm19
	vpxorq	32(%r9), %xmm6, %xmm26
	vpxorq	48(%r9), %xmm7, %xmm27
	vpxorq	64(%r9), %xmm8, %xmm28
	vpxor	80(%r9), %xmm9, %xmm0
	leaq	96(%r9), %r9
	leaq	96(%rdx), %rcx
	vpaddd	.LCPI1_9(%rip), %xmm5, %xmm2
	vmovdqu64	%xmm17, (%rdx)
	vmovdqu64	%xmm19, 16(%rdx)
	vmovdqu64	%xmm26, 32(%rdx)
	vmovdqu64	%xmm27, 48(%rdx)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm28, 64(%rdx)
	vmovdqu	%xmm0, 80(%rdx)
	cmpq	$96, %rax
	jb	.LBB1_37
	vmovdqa64	%xmm16, -128(%rsp)
	vmovdqa	%xmm3, %xmm5
	vmovaps	208(%rdi), %xmm3
	vmovaps	%xmm3, 32(%rsp)
	vmovaps	224(%rdi), %xmm3
	vmovaps	%xmm3, 16(%rsp)
	vmovaps	240(%rdi), %xmm3
	vmovaps	%xmm3, (%rsp)
	vmovaps	256(%rdi), %xmm3
	vmovaps	%xmm3, -16(%rsp)
	vmovaps	272(%rdi), %xmm3
	vmovaps	%xmm3, -32(%rsp)
	vmovdqa	288(%rdi), %xmm3
	vmovdqa	%xmm3, -48(%rsp)
	vmovaps	%xmm18, -64(%rsp)
	vmovdqa	%xmm5, -80(%rsp)
	vmovdqa64	%xmm14, %xmm25
	vmovaps	%xmm11, %xmm16
	vmovdqa64	%xmm15, %xmm24
	vmovaps	-96(%rsp), %xmm18
	vmovdqa64	%xmm12, %xmm22
	vmovdqa64	-112(%rsp), %xmm20
	vmovdqa64	%xmm13, %xmm21
	.p2align	4, 0x90
.LBB1_35:
	vpshufb	%xmm23, %xmm2, %xmm5
	vpaddd	.LCPI1_1(%rip), %xmm2, %xmm6
	vpshufb	%xmm23, %xmm6, %xmm6
	vpaddd	.LCPI1_4(%rip), %xmm2, %xmm7
	vpshufb	%xmm23, %xmm7, %xmm7
	vpaddd	.LCPI1_5(%rip), %xmm2, %xmm8
	vpshufb	%xmm23, %xmm8, %xmm8
	vpaddd	.LCPI1_6(%rip), %xmm2, %xmm9
	vpshufb	%xmm23, %xmm9, %xmm12
	vpaddd	.LCPI1_7(%rip), %xmm2, %xmm9
	vpshufb	%xmm23, %xmm9, %xmm13
	vpshufb	%xmm23, %xmm0, %xmm9
	vpxor	%xmm5, %xmm4, %xmm14
	vpxor	%xmm6, %xmm4, %xmm15
	vpxor	%xmm7, %xmm4, %xmm0
	vpxor	%xmm4, %xmm8, %xmm5
	vpxor	%xmm4, %xmm12, %xmm12
	vpxor	%xmm4, %xmm13, %xmm13
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm10, %xmm29
	vmovaps	32(%rsp), %xmm11
	vmovaps	-64(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm9, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm23, %xmm28, %xmm9
	vmovaps	16(%rsp), %xmm3
	vmovaps	-80(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm12, %xmm12
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm23, %xmm27, %xmm9
	vmovaps	%xmm31, %xmm3
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovaps	(%rsp), %xmm3
	vmovdqa64	%xmm25, %xmm11
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm12, %xmm12
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm23, %xmm26, %xmm9
	vmovdqa64	%xmm24, %xmm3
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovaps	%xmm18, %xmm11
	vmovaps	-16(%rsp), %xmm3
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm12, %xmm12
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm23, %xmm19, %xmm9
	vmovdqa64	%xmm22, %xmm3
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm20, %xmm11
	vmovaps	-32(%rsp), %xmm3
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm12, %xmm12
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm29, %xmm10
	vpshufb	%xmm23, %xmm17, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vmovaps	%xmm16, %xmm3
	vmovaps	-48(%rsp), %xmm11
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm30, %xmm1
	#APP
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm13, %xmm13
	#NO_APP
	vmovdqa64	%xmm21, %xmm1
	#APP
	vaesenclast	%xmm1, %xmm14, %xmm14
	vaesenclast	%xmm1, %xmm15, %xmm15
	vaesenclast	%xmm1, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm5, %xmm5
	vaesenclast	%xmm1, %xmm12, %xmm12
	vaesenclast	%xmm1, %xmm13, %xmm13
	#NO_APP
	vpxorq	(%r9), %xmm14, %xmm17
	vpxorq	16(%r9), %xmm15, %xmm19
	vpxorq	32(%r9), %xmm0, %xmm26
	vpxorq	48(%r9), %xmm5, %xmm27
	vpxor	%xmm0, %xmm0, %xmm0
	vpunpcklqdq	%xmm8, %xmm0, %xmm1
	vpunpckhqdq	%xmm0, %xmm8, %xmm5
	vpxorq	64(%r9), %xmm12, %xmm28
	vpxor	80(%r9), %xmm13, %xmm0
	vpxor	%xmm1, %xmm7, %xmm1
	vpshufd	$78, %xmm1, %xmm7
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm7
	vpxor	%xmm5, %xmm6, %xmm1
	vpshufd	$78, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm6
	vpternlogq	$150, %xmm6, %xmm5, %xmm1
	addq	$96, %r9
	vmovdqu64	%xmm17, (%rcx)
	vmovdqu64	%xmm19, 16(%rcx)
	vmovdqu64	%xmm26, 32(%rcx)
	vmovdqu64	%xmm27, 48(%rcx)
	vmovdqu64	%xmm28, 64(%rcx)
	vmovdqu	%xmm0, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rax
	ja	.LBB1_35
	vmovdqa64	-128(%rsp), %xmm16
.LBB1_37:
	vpshufb	%xmm23, %xmm17, %xmm6
	vpshufb	%xmm23, %xmm19, %xmm4
	vpshufb	%xmm23, %xmm26, %xmm5
	vpshufb	%xmm23, %xmm27, %xmm7
	vpshufb	%xmm23, %xmm28, %xmm8
	vpshufb	%xmm23, %xmm0, %xmm3
	vpxor	%xmm6, %xmm1, %xmm13
	vmovdqa	208(%rdi), %xmm6
	vmovdqa	224(%rdi), %xmm9
	vmovdqa	240(%rdi), %xmm10
	vmovdqa	256(%rdi), %xmm11
	vmovdqa	272(%rdi), %xmm12
	vmovdqa	288(%rdi), %xmm1
	vpclmulqdq	$0, %xmm3, %xmm6, %xmm0
	vmovdqa64	%xmm0, %xmm18
	vpclmulqdq	$1, %xmm3, %xmm6, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm15
	vpxorq	%xmm14, %xmm15, %xmm17
	vpclmulqdq	$17, %xmm3, %xmm6, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm8
	vpternlogq	$150, %xmm15, %xmm17, %xmm14
	vpclmulqdq	$0, %xmm7, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm10, %xmm15
	vpclmulqdq	$16, %xmm7, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm7, %xmm10, %xmm7
	vpternlogq	$150, %xmm18, %xmm6, %xmm9
	vpternlogq	$150, %xmm15, %xmm14, %xmm0
	vpternlogq	$150, %xmm3, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm11, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm11, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm11, %xmm5
	vpternlogq	$150, %xmm6, %xmm0, %xmm8
	vpclmulqdq	$0, %xmm4, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm12, %xmm10
	vpclmulqdq	$17, %xmm4, %xmm12, %xmm4
	vpternlogq	$150, %xmm3, %xmm9, %xmm0
	vpternlogq	$150, %xmm6, %xmm8, %xmm10
	vpternlogq	$150, %xmm5, %xmm7, %xmm4
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
	vmovdqa64	(%rdi), %xmm19
	vmovdqa64	16(%rdi), %xmm21
	vmovdqa64	32(%rdi), %xmm22
	vmovdqa64	48(%rdi), %xmm23
	vmovdqa64	64(%rdi), %xmm24
	vmovdqa	80(%rdi), %xmm7
	vmovdqa	96(%rdi), %xmm8
	vmovdqa	112(%rdi), %xmm9
	vmovdqa	128(%rdi), %xmm10
	vmovdqa	144(%rdi), %xmm11
	vmovdqa	160(%rdi), %xmm12
	vmovdqa	176(%rdi), %xmm13
	vmovdqa	192(%rdi), %xmm14
	vmovdqa	208(%rdi), %xmm15
	vmovdqa64	.LCPI1_2(%rip), %xmm17
	vpmovsxbq	.LCPI1_12(%rip), %xmm18
	vpbroadcastq	.LCPI1_3(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_39:
	vpshufb	%xmm17, %xmm2, %xmm20
	vpxorq	%xmm20, %xmm19, %xmm3
	vmovdqa64	%xmm21, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm22, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm23, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenclast	%xmm14, %xmm3, %xmm3
	vpxor	(%r9), %xmm3, %xmm3
	vpshufb	%xmm17, %xmm3, %xmm20
	vpxorq	%xmm20, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm4, %xmm20
	vpxorq	%xmm20, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vpshufd	$78, %xmm5, %xmm5
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %rcx
	addq	$-16, %rax
	vpaddd	%xmm18, %xmm2, %xmm2
	vmovdqu	%xmm3, (%rdx)
	vpsrldq	$8, %xmm4, %xmm3
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
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
	vaesenclast	192(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rcx) {%k1}
	testq	%r10, %r10
	je	.LBB1_10
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm2
	jmp	.LBB1_32
.LBB1_10:
	vmovdqa	208(%rdi), %xmm2
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
	movq	88(%rsp), %rax
	vmovdqa	208(%rdi), %xmm0
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
	vaesenclast	192(%rdi), %xmm4, %xmm4
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vmovdqu	%xmm1, (%rax)
	movl	$1, %eax
.LBB1_22:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes192gcm_skylakex_encrypt, .Lfunc_end1-haberdashery_aes192gcm_skylakex_encrypt
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
	.section	.text.haberdashery_aes192gcm_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylakex_decrypt,@function
haberdashery_aes192gcm_skylakex_decrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	64(%rsp), %r10
	xorl	%eax, %eax
	cmpq	96(%rsp), %r10
	jne	.LBB2_5
	cmpq	$16, 80(%rsp)
	setne	%r11b
	movabsq	$2305843009213693950, %rbx
	cmpq	%rbx, %r8
	seta	%bl
	movabsq	$68719476719, %r14
	cmpq	%r14, %r10
	seta	%bpl
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
	vmovdqa64	208(%rdi), %xmm19
	vmovdqa64	224(%rdi), %xmm20
	vmovdqa64	240(%rdi), %xmm21
	vmovdqa64	256(%rdi), %xmm22
	vmovdqa	272(%rdi), %xmm5
	vmovdqa	288(%rdi), %xmm6
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
	vmovdqa	208(%rdi), %xmm0
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
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_5
	vmovdqa	208(%rdi), %xmm2
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
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_5
.LBB2_22:
	movq	88(%rsp), %rax
	vpshufb	.LCPI2_0(%rip), %xmm16, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r10
	jb	.LBB2_23
	vmovdqa64	%xmm16, -128(%rsp)
	vmovdqa	(%rdi), %xmm3
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
	vmovaps	160(%rdi), %xmm30
	vmovaps	176(%rdi), %xmm31
	vmovaps	192(%rdi), %xmm16
	vmovdqa64	208(%rdi), %xmm18
	vmovdqa64	224(%rdi), %xmm19
	vmovdqa64	240(%rdi), %xmm20
	vmovdqa64	256(%rdi), %xmm21
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpxord	%xmm24, %xmm24, %xmm24
	movq	%r10, %rcx
	vmovdqa64	272(%rdi), %xmm22
	vmovapd	288(%rdi), %xmm23
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
	vpaddd	.LCPI2_5(%rip), %xmm2, %xmm10
	vpshufb	%xmm17, %xmm10, %xmm13
	vpaddd	.LCPI2_6(%rip), %xmm2, %xmm10
	vpshufb	%xmm17, %xmm10, %xmm14
	vpaddd	.LCPI2_7(%rip), %xmm2, %xmm10
	vpshufb	%xmm17, %xmm10, %xmm15
	vpshufb	%xmm17, %xmm29, %xmm6
	vpxor	%xmm0, %xmm3, %xmm10
	vpxor	%xmm4, %xmm3, %xmm11
	vpxor	%xmm5, %xmm3, %xmm12
	vpxor	%xmm3, %xmm13, %xmm13
	vpxor	%xmm3, %xmm14, %xmm14
	vpxor	%xmm3, %xmm15, %xmm15
	vmovaps	16(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	(%rsp), %xmm7
	vmovdqa64	%xmm18, %xmm8
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vpshufb	%xmm17, %xmm28, %xmm6
	vmovaps	-16(%rsp), %xmm7
	vmovdqa64	%xmm19, %xmm8
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vpshufb	%xmm17, %xmm27, %xmm6
	vmovaps	-32(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	#NO_APP
	vmovaps	-48(%rsp), %xmm7
	vmovdqa64	%xmm20, %xmm8
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vpshufb	%xmm17, %xmm26, %xmm6
	vmovaps	-64(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm21, %xmm8
	vmovaps	-80(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vpshufb	%xmm17, %xmm25, %xmm6
	vmovaps	-96(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	#NO_APP
	vmovdqa64	%xmm22, %xmm8
	vmovaps	-112(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vmovdqu	(%r9), %xmm6
	vpshufb	%xmm17, %xmm6, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vmovaps	%xmm30, %xmm7
	vmovapd	%xmm23, %xmm8
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm24, %xmm1
	vpunpckhqdq	%xmm24, %xmm5, %xmm5
	vmovaps	%xmm31, %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	#NO_APP
	vmovaps	%xmm16, %xmm7
	#APP
	vaesenclast	%xmm7, %xmm10, %xmm10
	vaesenclast	%xmm7, %xmm11, %xmm11
	vaesenclast	%xmm7, %xmm12, %xmm12
	vaesenclast	%xmm7, %xmm13, %xmm13
	vaesenclast	%xmm7, %xmm14, %xmm14
	vaesenclast	%xmm7, %xmm15, %xmm15
	#NO_APP
	vpxor	%xmm6, %xmm10, %xmm6
	vpxorq	%xmm25, %xmm11, %xmm9
	vpxorq	%xmm26, %xmm12, %xmm10
	vpxorq	%xmm27, %xmm13, %xmm11
	vpxorq	%xmm28, %xmm14, %xmm12
	vpxorq	%xmm29, %xmm15, %xmm13
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpbroadcastq	.LCPI2_3(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm0, %xmm1
	vmovdqu	%xmm6, (%rax)
	vmovdqu	%xmm9, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm11, 48(%rax)
	vmovdqu	%xmm12, 64(%rax)
	vmovdqu	%xmm13, 80(%rax)
	vpshufd	$78, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm4
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
	vmovdqa	208(%rdi), %xmm0
	vmovdqa64	(%rdi), %xmm18
	vmovdqa64	16(%rdi), %xmm22
	vmovdqa64	32(%rdi), %xmm23
	vmovdqa64	48(%rdi), %xmm24
	vmovdqa	64(%rdi), %xmm7
	vmovdqa	80(%rdi), %xmm8
	vmovdqa	96(%rdi), %xmm9
	vmovdqa	112(%rdi), %xmm10
	vmovdqa	128(%rdi), %xmm11
	vmovdqa	144(%rdi), %xmm12
	vmovdqa	160(%rdi), %xmm13
	vmovdqa	176(%rdi), %xmm14
	vmovdqa	192(%rdi), %xmm15
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpbroadcastq	.LCPI2_3(%rip), %xmm3
	vpmovsxbq	.LCPI2_11(%rip), %xmm19
	.p2align	4, 0x90
.LBB2_34:
	vmovdqu64	(%r9), %xmm20
	vpshufb	%xmm17, %xmm20, %xmm21
	vpxorq	%xmm21, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm4, %xmm21
	vpxorq	%xmm21, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm21
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm5
	vpxorq	%xmm21, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm21
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufb	%xmm17, %xmm2, %xmm5
	vpxorq	%xmm5, %xmm18, %xmm5
	vmovdqa64	%xmm22, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm23, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vmovdqa64	%xmm24, %xmm6
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenclast	%xmm15, %xmm5, %xmm5
	vpxorq	%xmm20, %xmm5, %xmm5
	leaq	16(%rax), %rdx
	addq	$-16, %rcx
	addq	$16, %r9
	vpsrldq	$8, %xmm4, %xmm4
	vpternlogq	$150, %xmm4, %xmm21, %xmm1
	vpaddd	%xmm19, %xmm2, %xmm2
	vmovdqu	%xmm5, (%rax)
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
	vaesenclast	192(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovdqu8	%xmm2, (%rdx) {%k1}
	vpshufb	%xmm3, %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm3
	jmp	.LBB2_28
.LBB2_12:
	vmovdqa	208(%rdi), %xmm3
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
	movq	72(%rsp), %rax
	vmovdqa	208(%rdi), %xmm0
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
	vaesenclast	192(%rdi), %xmm4, %xmm4
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
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes192gcm_skylakex_decrypt, .Lfunc_end2-haberdashery_aes192gcm_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes192gcm_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylakex_is_supported,@function
haberdashery_aes192gcm_skylakex_is_supported:
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
	.size	haberdashery_aes192gcm_skylakex_is_supported, .Lfunc_end3-haberdashery_aes192gcm_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.85.0-nightly (4363f9b6f 2025-01-02)"
	.section	".note.GNU-stack","",@progbits

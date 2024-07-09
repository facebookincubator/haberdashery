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
	vmovdqa64	%xmm2, %xmm21
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
	.section	.text.haberdashery_aes192gcm_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylakex_encrypt,@function
haberdashery_aes192gcm_skylakex_encrypt:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	64(%rsp), %r10
	xorl	%eax, %eax
	cmpq	80(%rsp), %r10
	jne	.LBB1_45
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB1_45
	cmpq	$16, 96(%rsp)
	jne	.LBB1_45
	cmpq	$12, %rdx
	jne	.LBB1_45
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %r10
	ja	.LBB1_45
	vmovq	4(%rsi), %xmm0
	vpbroadcastd	.LCPI1_13(%rip), %xmm1
	vpinsrd	$0, (%rsi), %xmm1, %xmm1
	vmovdqa64	.LCPI1_1(%rip), %xmm21
	vpermi2d	%xmm0, %xmm1, %xmm21
	testq	%r8, %r8
	je	.LBB1_22
	vmovdqa	208(%rdi), %xmm1
	vmovdqa	224(%rdi), %xmm9
	vmovdqa64	240(%rdi), %xmm30
	vmovdqa	256(%rdi), %xmm15
	vmovdqa	272(%rdi), %xmm14
	vmovdqa	288(%rdi), %xmm13
	vpxor	%xmm2, %xmm2, %xmm2
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm16
	movq	%r8, %rdx
	vmovdqa	%xmm1, %xmm3
	vmovdqa64	%xmm30, %xmm1
	vmovdqa	%xmm9, %xmm7
	.p2align	4, 0x90
.LBB1_20:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	16(%rcx), %xmm5
	vmovdqu	32(%rcx), %xmm8
	vmovdqu	48(%rcx), %xmm9
	vmovdqu	64(%rcx), %xmm10
	vmovdqu	80(%rcx), %xmm11
	vpshufb	%xmm0, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm12
	vmovdqa64	%xmm13, %xmm17
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm13
	vmovdqa64	%xmm14, %xmm19
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm14
	vmovdqa64	%xmm15, %xmm18
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm15
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm6
	vpternlogq	$150, %xmm15, %xmm13, %xmm6
	vmovdqa64	%xmm18, %xmm15
	vpclmulqdq	$0, %xmm9, %xmm1, %xmm13
	vpternlogq	$150, %xmm12, %xmm14, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm14
	vpternlogq	$150, %xmm12, %xmm6, %xmm14
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm8
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm1, %xmm9
	vpternlogq	$150, %xmm8, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm10
	vpternlogq	$150, %xmm8, %xmm14, %xmm10
	vmovdqa64	%xmm19, %xmm14
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm8
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm11
	vpternlogq	$150, %xmm8, %xmm13, %xmm11
	vmovdqa64	%xmm17, %xmm13
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm12
	vpternlogq	$150, %xmm8, %xmm10, %xmm12
	vpshufb	%xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm5
	vpternlogq	$150, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm6
	vpternlogq	$150, %xmm4, %xmm12, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm4
	vpslldq	$8, %xmm6, %xmm8
	vpternlogq	$150, %xmm4, %xmm11, %xmm8
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm4
	vmovdqa64	%xmm16, %xmm9
	vpclmulqdq	$16, %xmm9, %xmm8, %xmm2
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm2, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm9, %xmm8, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	vpsrldq	$8, %xmm6, %xmm4
	vpshufd	$78, %xmm8, %xmm5
	addq	$96, %rcx
	addq	$-96, %rdx
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
	cmpq	$95, %rdx
	ja	.LBB1_20
	vmovdqa	%xmm7, %xmm9
	vmovdqa64	%xmm1, %xmm30
	vmovdqa	%xmm3, %xmm1
	cmpq	$16, %rdx
	jae	.LBB1_14
	jmp	.LBB1_9
.LBB1_22:
	vmovdqa	208(%rdi), %xmm1
	testq	%r10, %r10
	je	.LBB1_23
	vmovdqa	224(%rdi), %xmm9
	vmovdqa64	240(%rdi), %xmm30
	vmovdqa	256(%rdi), %xmm15
	vmovdqa	272(%rdi), %xmm14
	vmovdqa	288(%rdi), %xmm13
	vpxor	%xmm2, %xmm2, %xmm2
	jmp	.LBB1_27
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
	je	.LBB1_24
.LBB1_11:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	testq	%r10, %r10
	je	.LBB1_43
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	orq	$1, %rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_45
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
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
	vpshufd	$78, %xmm2, %xmm5
	vpxor	%xmm0, %xmm4, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	jmp	.LBB1_27
.LBB1_15:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
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
	vpshufd	$78, %xmm2, %xmm5
	vpxor	%xmm0, %xmm4, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB1_10
.LBB1_17:
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	.p2align	4, 0x90
.LBB1_18:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm2
	vpslldq	$8, %xmm6, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm8
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm8
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm6, %xmm8
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm0, %xmm5, %xmm2
	vpternlogq	$150, %xmm4, %xmm8, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm2, %xmm6, %xmm2
	vpternlogq	$150, %xmm5, %xmm4, %xmm2
	cmpq	$15, %rdx
	ja	.LBB1_18
.LBB1_9:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_11
.LBB1_24:
	testq	%r10, %r10
	je	.LBB1_44
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rdx
	orq	$1, %rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_45
.LBB1_27:
	movq	72(%rsp), %rdx
	vpshufb	.LCPI1_2(%rip), %xmm21, %xmm0
	vpaddd	.LCPI1_3(%rip), %xmm0, %xmm8
	cmpq	$96, %r10
	jb	.LBB1_28
	vmovdqa	%xmm9, -128(%rsp)
	vmovdqa64	.LCPI1_2(%rip), %xmm29
	vpshufb	%xmm29, %xmm8, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm0, %xmm4
	vpshufb	%xmm29, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm0, %xmm5
	vpshufb	%xmm29, %xmm5, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm0, %xmm6
	vpshufb	%xmm29, %xmm6, %xmm6
	vpaddd	.LCPI1_8(%rip), %xmm0, %xmm8
	vpshufb	%xmm29, %xmm8, %xmm11
	vpaddd	.LCPI1_9(%rip), %xmm0, %xmm8
	vpshufb	%xmm29, %xmm8, %xmm12
	vmovdqa64	(%rdi), %xmm16
	vmovdqa	16(%rdi), %xmm7
	vmovdqa	32(%rdi), %xmm10
	vmovaps	48(%rdi), %xmm17
	vpxorq	%xmm3, %xmm16, %xmm3
	vpxorq	%xmm4, %xmm16, %xmm4
	vpxorq	%xmm5, %xmm16, %xmm8
	vpxorq	%xmm6, %xmm16, %xmm9
	vmovaps	%xmm17, %xmm5
	vpxorq	%xmm11, %xmm16, %xmm11
	vpxorq	%xmm12, %xmm16, %xmm12
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm9, %xmm9
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	#NO_APP
	vmovaps	%xmm17, %xmm25
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	64(%rdi), %xmm5
	vmovaps	%xmm5, 32(%rsp)
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovdqa	80(%rdi), %xmm5
	vmovdqa64	%xmm5, %xmm19
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	vmovaps	%xmm6, 16(%rsp)
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovaps	112(%rdi), %xmm5
	vmovaps	%xmm5, %xmm31
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	128(%rdi), %xmm5
	vmovaps	%xmm5, (%rsp)
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovdqa	144(%rdi), %xmm5
	vmovdqa64	%xmm5, %xmm23
	#APP
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	vmovaps	%xmm6, -16(%rsp)
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovdqa	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm9, %xmm9
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	#NO_APP
	vmovdqa	192(%rdi), %xmm5
	vmovdqa	%xmm5, -32(%rsp)
	#APP
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm4, %xmm4
	vaesenclast	%xmm5, %xmm8, %xmm8
	vaesenclast	%xmm5, %xmm9, %xmm9
	vaesenclast	%xmm5, %xmm11, %xmm11
	vaesenclast	%xmm5, %xmm12, %xmm12
	#NO_APP
	vpxorq	(%r9), %xmm3, %xmm17
	vpxorq	16(%r9), %xmm4, %xmm18
	vpxorq	32(%r9), %xmm8, %xmm24
	vpxorq	48(%r9), %xmm9, %xmm27
	vpxorq	64(%r9), %xmm11, %xmm28
	vpxor	80(%r9), %xmm12, %xmm11
	leaq	96(%r9), %r9
	leaq	96(%rdx), %rcx
	vpaddd	.LCPI1_10(%rip), %xmm0, %xmm8
	vmovdqu64	%xmm17, (%rdx)
	vmovdqu64	%xmm18, 16(%rdx)
	vmovdqu64	%xmm24, 32(%rdx)
	vmovdqu64	%xmm27, 48(%rdx)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm28, 64(%rdx)
	vmovdqu	%xmm11, 80(%rdx)
	cmpq	$96, %rax
	jb	.LBB1_32
	vmovdqa64	%xmm21, -64(%rsp)
	vpbroadcastq	.LCPI1_4(%rip), %xmm0
	vmovdqa	%xmm0, -48(%rsp)
	vmovdqa	%xmm13, -80(%rsp)
	vmovdqa	%xmm15, -96(%rsp)
	vmovdqa	%xmm14, -112(%rsp)
	vmovdqa64	%xmm7, %xmm22
	vmovdqa64	%xmm30, %xmm20
	vmovdqa64	%xmm10, %xmm26
	.p2align	4, 0x90
.LBB1_35:
	vpshufb	%xmm29, %xmm8, %xmm0
	vpaddd	.LCPI1_3(%rip), %xmm8, %xmm3
	vpshufb	%xmm29, %xmm3, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm8, %xmm4
	vpshufb	%xmm29, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm8, %xmm5
	vmovdqa64	%xmm6, %xmm21
	vpshufb	%xmm29, %xmm5, %xmm6
	vpaddd	.LCPI1_7(%rip), %xmm8, %xmm5
	vpshufb	%xmm29, %xmm5, %xmm9
	vpaddd	.LCPI1_8(%rip), %xmm8, %xmm5
	vpshufb	%xmm29, %xmm5, %xmm30
	vpshufb	%xmm29, %xmm11, %xmm5
	vpxorq	%xmm0, %xmm16, %xmm12
	vpxorq	%xmm3, %xmm16, %xmm13
	vpxorq	%xmm4, %xmm16, %xmm14
	vpxorq	%xmm6, %xmm16, %xmm15
	vpxorq	%xmm9, %xmm16, %xmm0
	vpxorq	%xmm30, %xmm16, %xmm11
	vmovdqa64	%xmm22, %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa64	%xmm26, %xmm7
	#APP
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm29, %xmm28, %xmm5
	vmovaps	-128(%rsp), %xmm7
	vmovaps	%xmm25, %xmm10
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm29, %xmm27, %xmm5
	vmovaps	32(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm20, %xmm7
	vmovdqa64	%xmm19, %xmm10
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm29, %xmm24, %xmm5
	vmovaps	16(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovaps	-96(%rsp), %xmm7
	vmovaps	%xmm31, %xmm10
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm29, %xmm18, %xmm5
	vmovaps	(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm23, %xmm10
	vmovaps	-112(%rsp), %xmm7
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm29, %xmm17, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovaps	-16(%rsp), %xmm6
	vmovdqa	-80(%rsp), %xmm7
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm2, %xmm5
	vpxor	%xmm5, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm2, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm2, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	#NO_APP
	vmovdqa64	%xmm21, %xmm6
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovaps	-32(%rsp), %xmm2
	#APP
	vaesenclast	%xmm2, %xmm12, %xmm12
	vaesenclast	%xmm2, %xmm13, %xmm13
	vaesenclast	%xmm2, %xmm14, %xmm14
	vaesenclast	%xmm2, %xmm15, %xmm15
	vaesenclast	%xmm2, %xmm0, %xmm0
	vaesenclast	%xmm2, %xmm11, %xmm11
	#NO_APP
	vpxorq	(%r9), %xmm12, %xmm17
	vpxorq	16(%r9), %xmm13, %xmm18
	vpxorq	32(%r9), %xmm14, %xmm24
	vpxorq	48(%r9), %xmm15, %xmm27
	vpxor	%xmm5, %xmm5, %xmm5
	vpunpcklqdq	%xmm4, %xmm5, %xmm2
	vpunpckhqdq	%xmm5, %xmm4, %xmm4
	vpxorq	64(%r9), %xmm0, %xmm28
	vpxor	80(%r9), %xmm11, %xmm11
	vpxor	%xmm2, %xmm9, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vmovdqa	-48(%rsp), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm4, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	addq	$96, %r9
	vmovdqu64	%xmm17, (%rcx)
	vmovdqu64	%xmm18, 16(%rcx)
	vmovdqu64	%xmm24, 32(%rcx)
	vmovdqu64	%xmm27, 48(%rcx)
	vmovdqu64	%xmm28, 64(%rcx)
	vmovdqu	%xmm11, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_9(%rip), %xmm8, %xmm8
	cmpq	$95, %rax
	ja	.LBB1_35
	vmovdqa	%xmm1, %xmm5
	vmovdqa64	%xmm20, %xmm1
	vmovdqa	-80(%rsp), %xmm13
	vmovdqa	-96(%rsp), %xmm15
	vmovdqa	-112(%rsp), %xmm14
	vmovdqa	-128(%rsp), %xmm7
	vmovdqa64	-64(%rsp), %xmm21
	jmp	.LBB1_33
.LBB1_28:
	movq	%r10, %rax
	cmpq	$16, %rax
	jae	.LBB1_37
.LBB1_30:
	movq	%rdx, %rcx
	movq	%r9, %rsi
	jmp	.LBB1_39
.LBB1_23:
	vpxor	%xmm2, %xmm2, %xmm2
	jmp	.LBB1_44
.LBB1_32:
	vmovdqa	%xmm1, %xmm5
	vmovdqa64	%xmm30, %xmm1
	vmovdqa	-128(%rsp), %xmm7
.LBB1_33:
	vpshufb	%xmm29, %xmm27, %xmm0
	vpshufb	%xmm29, %xmm28, %xmm3
	vpshufb	%xmm29, %xmm11, %xmm4
	vmovdqa	%xmm5, %xmm11
	vpclmulqdq	$0, %xmm4, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm10
	vpternlogq	$150, %xmm9, %xmm6, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm9
	vpternlogq	$150, %xmm5, %xmm6, %xmm9
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm6
	vpternlogq	$150, %xmm5, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm3
	vpshufb	%xmm29, %xmm18, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vmovdqa	%xmm11, %xmm1
	vpshufb	%xmm29, %xmm24, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpternlogq	$150, %xmm4, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm15, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm6
	vpternlogq	$150, %xmm3, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm9
	vpternlogq	$150, %xmm3, %xmm4, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm15, %xmm3
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm4
	vpshufb	%xmm29, %xmm17, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm3
	vpternlogq	$150, %xmm0, %xmm9, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm0
	vpslldq	$8, %xmm3, %xmm5
	vpternlogq	$150, %xmm0, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm2
	vpshufd	$78, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm5
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm2
	vpternlogq	$150, %xmm0, %xmm4, %xmm2
	vpsrldq	$8, %xmm3, %xmm0
	vpshufd	$78, %xmm5, %xmm3
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	movq	%rcx, %rdx
	cmpq	$16, %rax
	jb	.LBB1_30
.LBB1_37:
	vmovdqa64	(%rdi), %xmm19
	vmovdqa64	16(%rdi), %xmm16
	vmovdqa64	32(%rdi), %xmm22
	vmovdqa64	48(%rdi), %xmm23
	vmovdqa64	64(%rdi), %xmm24
	vmovdqa	80(%rdi), %xmm7
	vmovdqa	96(%rdi), %xmm9
	vmovdqa	112(%rdi), %xmm10
	vmovdqa	128(%rdi), %xmm11
	vmovdqa	144(%rdi), %xmm12
	vmovdqa	160(%rdi), %xmm13
	vmovdqa	176(%rdi), %xmm14
	vmovdqa	192(%rdi), %xmm15
	vmovdqa64	.LCPI1_2(%rip), %xmm17
	vmovdqa64	.LCPI1_3(%rip), %xmm18
	vpbroadcastq	.LCPI1_4(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_38:
	vpshufb	%xmm17, %xmm8, %xmm20
	vpxorq	%xmm20, %xmm19, %xmm3
	vmovdqa64	%xmm16, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm22, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm23, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpxor	(%r9), %xmm3, %xmm3
	vpshufb	%xmm17, %xmm3, %xmm20
	vpxorq	%xmm20, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm2
	vpslldq	$8, %xmm4, %xmm20
	vpxorq	%xmm20, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm6
	vpxor	%xmm2, %xmm6, %xmm2
	vpshufd	$78, %xmm5, %xmm5
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %rcx
	addq	$-16, %rax
	vpaddd	%xmm18, %xmm8, %xmm8
	vmovdqu	%xmm3, (%rdx)
	vpsrldq	$8, %xmm4, %xmm3
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	movq	%rcx, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rax
	ja	.LBB1_38
.LBB1_39:
	testq	%rax, %rax
	je	.LBB1_40
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
	vaesenclast	192(%rdi), %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	#APP

	vmovdqu8	%xmm0, (%rcx) {%k1}

	#NO_APP
	vmovdqa	208(%rdi), %xmm1
	testq	%r10, %r10
	je	.LBB1_44
	kmovd	%eax, %k1
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
.LBB1_43:
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
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
	vpshufd	$78, %xmm2, %xmm5
	vpxor	%xmm0, %xmm4, %xmm2
	vpternlogq	$150, %xmm3, %xmm5, %xmm2
	jmp	.LBB1_44
.LBB1_40:
	vmovdqa	208(%rdi), %xmm1
.LBB1_44:
	movq	88(%rsp), %rax
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm3
	vpunpcklqdq	%xmm0, %xmm3, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
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
	vaesenclast	192(%rdi), %xmm4, %xmm4
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vmovdqu	%xmm1, (%rax)
	movl	$1, %eax
.LBB1_45:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes192gcm_skylakex_encrypt, .Lfunc_end1-haberdashery_aes192gcm_skylakex_encrypt
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
	.section	.text.haberdashery_aes192gcm_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylakex_decrypt,@function
haberdashery_aes192gcm_skylakex_decrypt:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	80(%rsp), %r10
	xorl	%eax, %eax
	cmpq	112(%rsp), %r10
	jne	.LBB2_37
	cmpq	$12, %rdx
	jne	.LBB2_37
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %r10
	ja	.LBB2_37
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_37
	cmpq	$16, 96(%rsp)
	jne	.LBB2_37
	vmovq	4(%rsi), %xmm19
	vpbroadcastd	.LCPI2_12(%rip), %xmm0
	vpinsrd	$0, (%rsi), %xmm0, %xmm16
	vmovdqa64	.LCPI2_1(%rip), %xmm18
	testq	%r8, %r8
	je	.LBB2_6
	vmovdqa	208(%rdi), %xmm8
	vpxor	%xmm1, %xmm1, %xmm1
	cmpq	$96, %r8
	jb	.LBB2_8
	vmovdqa64	224(%rdi), %xmm22
	vmovdqa64	240(%rdi), %xmm24
	vmovdqa64	256(%rdi), %xmm25
	vmovdqa	272(%rdi), %xmm7
	vmovdqa64	%xmm8, %xmm23
	vmovdqa	288(%rdi), %xmm8
	vmovdqa64	.LCPI2_2(%rip), %xmm20
	vpbroadcastq	.LCPI2_4(%rip), %xmm26
	movq	%r8, %rax
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu64	(%rcx), %xmm21
	vmovdqu	16(%rcx), %xmm12
	vmovdqu	32(%rcx), %xmm13
	vmovdqu	48(%rcx), %xmm14
	vmovdqu	64(%rcx), %xmm15
	vmovdqu64	80(%rcx), %xmm17
	vpshufb	%xmm20, %xmm14, %xmm14
	vpshufb	%xmm20, %xmm15, %xmm15
	vpshufb	%xmm20, %xmm17, %xmm3
	vmovdqa64	%xmm23, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm3, %xmm5, %xmm10
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm9
	vpxor	%xmm10, %xmm9, %xmm9
	vmovdqa64	%xmm22, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm10
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm11
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm4
	vpternlogq	$150, %xmm11, %xmm9, %xmm4
	vmovdqa64	%xmm24, %xmm6
	vpclmulqdq	$0, %xmm14, %xmm6, %xmm9
	vpternlogq	$150, %xmm2, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm14, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm6, %xmm10
	vpternlogq	$150, %xmm2, %xmm4, %xmm10
	vpshufb	%xmm20, %xmm12, %xmm2
	vpshufb	%xmm20, %xmm13, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm11
	vpclmulqdq	$17, %xmm14, %xmm6, %xmm12
	vpternlogq	$150, %xmm3, %xmm11, %xmm12
	vmovdqa64	%xmm25, %xmm0
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm11
	vpternlogq	$150, %xmm3, %xmm10, %xmm11
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm10
	vpternlogq	$150, %xmm3, %xmm9, %xmm10
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm9
	vpternlogq	$150, %xmm3, %xmm11, %xmm9
	vpshufb	%xmm20, %xmm21, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm2
	vpternlogq	$150, %xmm3, %xmm12, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm4
	vpternlogq	$150, %xmm3, %xmm9, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm3
	vpslldq	$8, %xmm4, %xmm9
	vpternlogq	$150, %xmm3, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm3
	vmovdqa64	%xmm26, %xmm0
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm1
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm0, %xmm9, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vpsrldq	$8, %xmm4, %xmm2
	vpshufd	$78, %xmm9, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
	cmpq	$95, %rax
	ja	.LBB2_19
	vmovdqa64	%xmm23, %xmm8
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
.LBB2_21:
	movl	$-1, %eax
	bzhil	%edx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%rcx), %xmm0 {%k1} {z}

	#NO_APP
	vpermt2d	%xmm19, %xmm18, %xmm16
	testq	%r10, %r10
	jne	.LBB2_26
.LBB2_23:
	vmovdqa64	208(%rdi), %xmm24
	testq	%rdx, %rdx
	je	.LBB2_24
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa64	%xmm24, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm5
	vpxor	%xmm0, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	xorl	%r10d, %r10d
	jmp	.LBB2_36
.LBB2_14:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpsrldq	$8, %xmm5, %xmm5
	vpbroadcastq	.LCPI2_4(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm7
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm7
	vpxor	%xmm0, %xmm6, %xmm1
	vpternlogq	$150, %xmm5, %xmm7, %xmm1
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB2_11
.LBB2_16:
	vmovdqa	.LCPI2_2(%rip), %xmm0
	vpbroadcastq	.LCPI2_4(%rip), %xmm5
	.p2align	4, 0x90
.LBB2_17:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm2, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm1, %xmm4, %xmm6
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm3, %xmm1
	vpternlogq	$150, %xmm2, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	cmpq	$15, %rax
	ja	.LBB2_17
.LBB2_10:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_21
.LBB2_12:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	vpermt2d	%xmm19, %xmm18, %xmm16
	testq	%r10, %r10
	je	.LBB2_23
.LBB2_26:
	movabsq	$-68719476720, %rcx
	leaq	(%r10,%rcx), %rsi
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	jb	.LBB2_37
	vpshufb	.LCPI2_2(%rip), %xmm16, %xmm3
	vmovdqa64	208(%rdi), %xmm24
	testq	%rdx, %rdx
	je	.LBB2_29
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa64	%xmm24, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm4, %xmm4
	vpbroadcastq	.LCPI2_4(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm6
	vpxor	%xmm0, %xmm5, %xmm1
	vpternlogq	$150, %xmm4, %xmm6, %xmm1
.LBB2_29:
	movq	104(%rsp), %rax
	vpaddd	.LCPI2_3(%rip), %xmm3, %xmm3
	cmpq	$96, %r10
	jb	.LBB2_30
	vmovdqa64	%xmm16, -128(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	288(%rdi), %xmm0
	vmovaps	%xmm0, -16(%rsp)
	vmovdqa	(%rdi), %xmm9
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, -32(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, -48(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, -64(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, -80(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, -96(%rsp)
	vmovdqa	96(%rdi), %xmm0
	vmovdqa	%xmm0, -112(%rsp)
	vmovdqa64	112(%rdi), %xmm20
	vmovdqa64	128(%rdi), %xmm21
	vmovdqa64	144(%rdi), %xmm22
	vmovdqa64	160(%rdi), %xmm23
	vmovaps	176(%rdi), %xmm31
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpxord	%xmm18, %xmm18, %xmm18
	movq	%r10, %rcx
	vmovaps	192(%rdi), %xmm16
	vpbroadcastq	.LCPI2_4(%rip), %xmm19
	.p2align	4, 0x90
.LBB2_39:
	vmovdqu64	16(%r9), %xmm25
	vmovdqu64	32(%r9), %xmm26
	vmovdqu64	48(%r9), %xmm27
	vmovdqu64	64(%r9), %xmm28
	vmovdqu64	80(%r9), %xmm29
	vpshufb	%xmm17, %xmm3, %xmm0
	vpaddd	.LCPI2_3(%rip), %xmm3, %xmm4
	vpshufb	%xmm17, %xmm4, %xmm4
	vpaddd	.LCPI2_5(%rip), %xmm3, %xmm5
	vpshufb	%xmm17, %xmm5, %xmm5
	vpaddd	.LCPI2_6(%rip), %xmm3, %xmm6
	vpshufb	%xmm17, %xmm6, %xmm6
	vpaddd	.LCPI2_7(%rip), %xmm3, %xmm7
	vpshufb	%xmm17, %xmm7, %xmm15
	vpaddd	.LCPI2_8(%rip), %xmm3, %xmm7
	vpshufb	%xmm17, %xmm7, %xmm30
	vpshufb	%xmm17, %xmm29, %xmm7
	vpxor	%xmm0, %xmm9, %xmm11
	vpxor	%xmm4, %xmm9, %xmm12
	vpxor	%xmm5, %xmm9, %xmm13
	vpxor	%xmm6, %xmm9, %xmm14
	vpxor	%xmm15, %xmm9, %xmm15
	vpxorq	%xmm30, %xmm9, %xmm0
	vmovaps	-32(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm5, %xmm5, %xmm5
	vmovdqa64	%xmm24, %xmm2
	vmovaps	-48(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpshufb	%xmm17, %xmm28, %xmm7
	vmovaps	48(%rsp), %xmm10
	vmovaps	-64(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpshufb	%xmm17, %xmm27, %xmm7
	vmovaps	-80(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	32(%rsp), %xmm10
	vmovaps	-96(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpshufb	%xmm17, %xmm26, %xmm7
	vmovaps	-112(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	16(%rsp), %xmm2
	vmovdqa64	%xmm20, %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpshufb	%xmm17, %xmm25, %xmm7
	vmovdqa64	%xmm21, %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	(%rsp), %xmm2
	vmovdqa64	%xmm22, %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vmovdqu	(%r9), %xmm7
	vpshufb	%xmm17, %xmm7, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vmovaps	-16(%rsp), %xmm2
	vmovdqa64	%xmm23, %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	#NO_APP
	vpunpcklqdq	%xmm6, %xmm18, %xmm1
	vpunpckhqdq	%xmm18, %xmm6, %xmm6
	vmovaps	%xmm31, %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovaps	%xmm16, %xmm2
	#APP
	vaesenclast	%xmm2, %xmm11, %xmm11
	vaesenclast	%xmm2, %xmm12, %xmm12
	vaesenclast	%xmm2, %xmm13, %xmm13
	vaesenclast	%xmm2, %xmm14, %xmm14
	vaesenclast	%xmm2, %xmm15, %xmm15
	vaesenclast	%xmm2, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm7, %xmm11, %xmm7
	vpxorq	%xmm25, %xmm12, %xmm8
	vpxorq	%xmm26, %xmm13, %xmm11
	vpxorq	%xmm27, %xmm14, %xmm12
	vpxorq	%xmm28, %xmm15, %xmm13
	vpxorq	%xmm29, %xmm0, %xmm0
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vmovdqa64	%xmm19, %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm4
	vpxor	%xmm6, %xmm5, %xmm1
	vmovdqu	%xmm7, (%rax)
	vmovdqu	%xmm8, 16(%rax)
	vmovdqu	%xmm11, 32(%rax)
	vmovdqu	%xmm12, 48(%rax)
	vmovdqu	%xmm13, 64(%rax)
	vmovdqu	%xmm0, 80(%rax)
	vpshufd	$78, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm4
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI2_9(%rip), %xmm3, %xmm3
	cmpq	$95, %rcx
	ja	.LBB2_39
	vmovdqa64	-128(%rsp), %xmm16
	cmpq	$16, %rcx
	jae	.LBB2_41
.LBB2_32:
	movq	%rax, %rdx
	jmp	.LBB2_33
.LBB2_24:
	xorl	%r10d, %r10d
	jmp	.LBB2_36
.LBB2_30:
	movq	%r10, %rcx
	cmpq	$16, %rcx
	jb	.LBB2_32
.LBB2_41:
	vmovdqa64	(%rdi), %xmm18
	vmovdqa64	16(%rdi), %xmm22
	vmovdqa64	32(%rdi), %xmm23
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
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpbroadcastq	.LCPI2_4(%rip), %xmm0
	vmovdqa64	.LCPI2_3(%rip), %xmm19
	.p2align	4, 0x90
.LBB2_42:
	vmovdqu64	(%r9), %xmm20
	vpshufb	%xmm17, %xmm20, %xmm21
	vpxorq	%xmm21, %xmm1, %xmm1
	vmovdqa64	%xmm24, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm2, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm4, %xmm21
	vpxorq	%xmm21, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm21
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm5
	vpxorq	%xmm21, %xmm5, %xmm5
	vpshufd	$78, %xmm5, %xmm21
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufb	%xmm17, %xmm3, %xmm5
	vpxorq	%xmm5, %xmm18, %xmm5
	vmovdqa64	%xmm22, %xmm2
	vaesenc	%xmm2, %xmm5, %xmm5
	vmovdqa64	%xmm23, %xmm2
	vaesenc	%xmm2, %xmm5, %xmm5
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
	vpaddd	%xmm19, %xmm3, %xmm3
	vmovdqu	%xmm5, (%rax)
	movq	%rdx, %rax
	cmpq	$15, %rcx
	ja	.LBB2_42
.LBB2_33:
	testq	%rcx, %rcx
	je	.LBB2_35
	movl	$-1, %eax
	bzhil	%ecx, %eax, %eax
	kmovd	%eax, %k1
	#APP

	vmovdqu8	(%r9), %xmm0 {%k1} {z}

	#NO_APP
	vmovdqa	.LCPI2_2(%rip), %xmm4
	vpshufb	%xmm4, %xmm3, %xmm3
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
	vaesenclast	192(%rdi), %xmm3, %xmm3
	vpxor	%xmm0, %xmm3, %xmm3
	#APP

	vmovdqu8	%xmm3, (%rdx) {%k1}

	#NO_APP
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpshufb	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa64	%xmm24, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm5
	vpxor	%xmm0, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
.LBB2_35:
	shlq	$3, %r10
.LBB2_36:
	movq	88(%rsp), %rax
	shlq	$3, %r8
	vmovq	%r10, %xmm0
	vmovq	%r8, %xmm3
	vpunpcklqdq	%xmm3, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa64	%xmm24, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_4(%rip), %xmm2
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
	vpshufb	.LCPI2_10(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_11(%rip), %xmm3, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vpternlogq	$150, (%rax), %xmm4, %xmm2
	xorl	%eax, %eax
	vptest	%xmm2, %xmm2
	sete	%al
.LBB2_37:
	addq	$72, %rsp
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

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

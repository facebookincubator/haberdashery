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
	.section	.text.haberdashery_aes128gcm_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes128gcm_tigerlake_init
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_tigerlake_init,@function
haberdashery_aes128gcm_tigerlake_init:
	.cfi_startproc
	cmpq	$16, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm0
	vaeskeygenassist	$1, %xmm0, %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm1, %xmm1
	vpternlogq	$150, %xmm4, %xmm0, %xmm1
	vaeskeygenassist	$2, %xmm1, %xmm2
	vpslldq	$4, %xmm1, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm2, %xmm2
	vpternlogq	$150, %xmm5, %xmm1, %xmm2
	vaeskeygenassist	$4, %xmm2, %xmm3
	vpslldq	$4, %xmm2, %xmm4
	vpslldq	$8, %xmm2, %xmm5
	vpslldq	$12, %xmm2, %xmm6
	vpternlogq	$150, %xmm5, %xmm4, %xmm6
	vpshufd	$255, %xmm3, %xmm3
	vpternlogq	$150, %xmm6, %xmm2, %xmm3
	vaeskeygenassist	$8, %xmm3, %xmm4
	vpslldq	$4, %xmm3, %xmm5
	vpslldq	$8, %xmm3, %xmm6
	vpslldq	$12, %xmm3, %xmm7
	vpternlogq	$150, %xmm6, %xmm5, %xmm7
	vpshufd	$255, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm3, %xmm4
	vaeskeygenassist	$16, %xmm4, %xmm5
	vpslldq	$4, %xmm4, %xmm6
	vpslldq	$8, %xmm4, %xmm7
	vpslldq	$12, %xmm4, %xmm8
	vpternlogq	$150, %xmm7, %xmm6, %xmm8
	vpshufd	$255, %xmm5, %xmm5
	vpternlogq	$150, %xmm8, %xmm4, %xmm5
	vaeskeygenassist	$32, %xmm5, %xmm6
	vpslldq	$4, %xmm5, %xmm7
	vpslldq	$8, %xmm5, %xmm8
	vpslldq	$12, %xmm5, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufd	$255, %xmm6, %xmm6
	vpternlogq	$150, %xmm9, %xmm5, %xmm6
	vpslldq	$4, %xmm6, %xmm7
	vaeskeygenassist	$64, %xmm6, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpslldq	$12, %xmm6, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	vpshufd	$255, %xmm8, %xmm7
	vpternlogq	$150, %xmm10, %xmm6, %xmm7
	vpslldq	$4, %xmm7, %xmm8
	vpslldq	$8, %xmm7, %xmm9
	vaeskeygenassist	$128, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm9, %xmm8, %xmm11
	vpshufd	$255, %xmm10, %xmm8
	vpternlogq	$150, %xmm11, %xmm7, %xmm8
	vpslldq	$4, %xmm8, %xmm9
	vpslldq	$8, %xmm8, %xmm10
	vpslldq	$12, %xmm8, %xmm11
	vaeskeygenassist	$27, %xmm8, %xmm12
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufd	$255, %xmm12, %xmm9
	vpternlogq	$150, %xmm11, %xmm8, %xmm9
	vpslldq	$4, %xmm9, %xmm10
	vpslldq	$8, %xmm9, %xmm11
	vpslldq	$12, %xmm9, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vaeskeygenassist	$54, %xmm9, %xmm10
	vpshufd	$255, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm9, %xmm10
	vaesenc	%xmm1, %xmm0, %xmm11
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenclast	%xmm10, %xmm11, %xmm11
	vpshufb	.LCPI0_0(%rip), %xmm11, %xmm11
	vpsrlq	$63, %xmm11, %xmm12
	vpaddq	%xmm11, %xmm11, %xmm11
	vpshufd	$78, %xmm12, %xmm13
	vpxor	%xmm14, %xmm14, %xmm14
	vpblendd	$12, %xmm12, %xmm14, %xmm12
	vpsllq	$63, %xmm12, %xmm14
	vpternlogq	$30, %xmm13, %xmm11, %xmm14
	vpsllq	$62, %xmm12, %xmm13
	vpsllq	$57, %xmm12, %xmm11
	vpternlogq	$150, %xmm13, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm12
	vpbroadcastq	.LCPI0_1(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm12, %xmm14
	vpshufd	$78, %xmm12, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$16, %xmm13, %xmm12, %xmm14
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm15
	vpshufd	$78, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm15, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm12, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm12, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm12, %xmm16
	vpxorq	%xmm15, %xmm16, %xmm15
	vpslldq	$8, %xmm15, %xmm16
	vpxorq	%xmm16, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm16
	vpshufd	$78, %xmm14, %xmm14
	vpxorq	%xmm14, %xmm16, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm16
	vpclmulqdq	$17, %xmm11, %xmm12, %xmm17
	vpxorq	%xmm16, %xmm17, %xmm16
	vpsrldq	$8, %xmm15, %xmm15
	vpshufd	$78, %xmm14, %xmm14
	vpternlogq	$150, %xmm15, %xmm16, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm16
	vpshufd	$78, %xmm15, %xmm15
	vpxorq	%xmm15, %xmm16, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm15, %xmm16
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm17
	vpshufd	$78, %xmm15, %xmm15
	vpternlogq	$150, %xmm16, %xmm17, %xmm15
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm16
	vpclmulqdq	$16, %xmm13, %xmm16, %xmm17
	vpshufd	$78, %xmm16, %xmm16
	vpxorq	%xmm16, %xmm17, %xmm16
	vpclmulqdq	$16, %xmm13, %xmm16, %xmm17
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm18
	vpshufd	$78, %xmm16, %xmm16
	vpternlogq	$150, %xmm17, %xmm18, %xmm16
	vpclmulqdq	$0, %xmm11, %xmm16, %xmm17
	vpclmulqdq	$16, %xmm11, %xmm16, %xmm18
	vpclmulqdq	$1, %xmm11, %xmm16, %xmm19
	vpxorq	%xmm18, %xmm19, %xmm18
	vpslldq	$8, %xmm18, %xmm19
	vpxorq	%xmm19, %xmm17, %xmm17
	vpclmulqdq	$16, %xmm13, %xmm17, %xmm19
	vpshufd	$78, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm19, %xmm17
	vpclmulqdq	$16, %xmm13, %xmm17, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm16, %xmm19
	vpxorq	%xmm13, %xmm19, %xmm13
	vpsrldq	$8, %xmm18, %xmm18
	vpshufd	$78, %xmm17, %xmm17
	vpternlogq	$150, %xmm18, %xmm13, %xmm17
	vmovdqa	%xmm0, (%rdi)
	vmovdqa	%xmm1, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm4, 64(%rdi)
	vmovdqa	%xmm5, 80(%rdi)
	vmovdqa	%xmm6, 96(%rdi)
	vmovdqa	%xmm7, 112(%rdi)
	vmovdqa	%xmm8, 128(%rdi)
	vmovdqa	%xmm9, 144(%rdi)
	vmovdqa	%xmm10, 160(%rdi)
	vmovdqa	%xmm11, 176(%rdi)
	vmovdqa	%xmm12, 192(%rdi)
	vmovdqa	%xmm14, 208(%rdi)
	vmovdqa64	%xmm16, 224(%rdi)
	vmovdqa64	%xmm17, 240(%rdi)
	vmovdqa	%xmm15, 256(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$16, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes128gcm_tigerlake_init, .Lfunc_end0-haberdashery_aes128gcm_tigerlake_init
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
	.section	.text.haberdashery_aes128gcm_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_tigerlake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_tigerlake_encrypt,@function
haberdashery_aes128gcm_tigerlake_encrypt:
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
	vmovdqa	176(%rdi), %xmm0
	vmovdqa	192(%rdi), %xmm2
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm4
	vmovdqa	240(%rdi), %xmm5
	vmovdqa	256(%rdi), %xmm6
	vmovdqa	.LCPI1_2(%rip), %xmm7
	vpbroadcastq	.LCPI1_3(%rip), %xmm8
	movq	%r8, %rdx
	.p2align	4, 0x90
.LBB1_17:
	vmovdqu	(%rcx), %xmm9
	vmovdqu	16(%rcx), %xmm10
	vmovdqu	32(%rcx), %xmm11
	vmovdqu	48(%rcx), %xmm12
	vmovdqu	64(%rcx), %xmm13
	vmovdqu	80(%rcx), %xmm14
	addq	$96, %rcx
	addq	$-96, %rdx
	vpshufb	%xmm7, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpshufb	%xmm7, %xmm10, %xmm9
	vpshufb	%xmm7, %xmm11, %xmm10
	vpshufb	%xmm7, %xmm12, %xmm11
	vpshufb	%xmm7, %xmm13, %xmm12
	vpshufb	%xmm7, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm14
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm17
	vpxorq	%xmm15, %xmm17, %xmm15
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm17
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm18
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm19
	vpternlogq	$150, %xmm18, %xmm15, %xmm19
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm15
	vpternlogq	$150, %xmm14, %xmm17, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm17
	vpternlogq	$150, %xmm14, %xmm19, %xmm17
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm11
	vpternlogq	$150, %xmm13, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm14
	vpternlogq	$150, %xmm13, %xmm17, %xmm14
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm13
	vpternlogq	$150, %xmm12, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm15
	vpternlogq	$150, %xmm12, %xmm14, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm9
	vpternlogq	$150, %xmm10, %xmm11, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm10
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm11
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm12
	vpternlogq	$150, %xmm11, %xmm15, %xmm12
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm12, %xmm11
	vpternlogq	$150, %xmm10, %xmm13, %xmm11
	vpsrldq	$8, %xmm12, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm12
	vpshufd	$78, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm12
	vpternlogq	$150, %xmm1, %xmm9, %xmm12
	vpshufd	$78, %xmm11, %xmm1
	vpternlogq	$150, %xmm10, %xmm12, %xmm1
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
	vmovdqa	176(%rdi), %xmm0
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
	vmovdqa	176(%rdi), %xmm2
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
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
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
	vpxor	%xmm1, %xmm4, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
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
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufd	$78, %xmm4, %xmm1
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm2, %xmm5, %xmm4
	vpternlogq	$150, %xmm1, %xmm7, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm1, %xmm1
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
	movq	72(%rsp), %rsi
	vpshufb	.LCPI1_0(%rip), %xmm21, %xmm0
	vpaddd	.LCPI1_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r10
	jb	.LBB1_26
	leaq	96(%r9), %rdx
	leaq	96(%rsi), %rax
	vmovdqa64	.LCPI1_2(%rip), %xmm31
	vpshufb	%xmm31, %xmm2, %xmm5
	vpaddd	.LCPI1_4(%rip), %xmm0, %xmm2
	vpshufb	%xmm31, %xmm2, %xmm6
	vpaddd	.LCPI1_5(%rip), %xmm0, %xmm2
	vpshufb	%xmm31, %xmm2, %xmm7
	vpaddd	.LCPI1_6(%rip), %xmm0, %xmm2
	vpshufb	%xmm31, %xmm2, %xmm8
	vpaddd	.LCPI1_7(%rip), %xmm0, %xmm2
	vpshufb	%xmm31, %xmm2, %xmm9
	vpaddd	.LCPI1_8(%rip), %xmm0, %xmm2
	vpshufb	%xmm31, %xmm2, %xmm10
	vpaddd	.LCPI1_9(%rip), %xmm0, %xmm2
	vmovdqa64	(%rdi), %xmm24
	vmovaps	16(%rdi), %xmm4
	vmovdqa	32(%rdi), %xmm12
	vmovdqa	48(%rdi), %xmm13
	vpxorq	%xmm5, %xmm24, %xmm0
	vpxorq	%xmm6, %xmm24, %xmm5
	vpxorq	%xmm7, %xmm24, %xmm6
	vpxorq	%xmm8, %xmm24, %xmm7
	vpxorq	%xmm9, %xmm24, %xmm8
	vpxorq	%xmm10, %xmm24, %xmm9
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm5, %xmm5
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	#NO_APP
	vmovdqa	64(%rdi), %xmm10
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovdqa	80(%rdi), %xmm14
	#APP
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	96(%rdi), %xmm15
	vmovaps	%xmm15, -96(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rdi), %xmm15
	vmovaps	%xmm15, -112(%rsp)
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	vmovaps	128(%rdi), %xmm15
	vmovaps	%xmm15, %xmm25
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	vmovdqa	144(%rdi), %xmm15
	vmovdqa64	%xmm15, %xmm20
	#APP
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm8, %xmm8
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	vmovaps	160(%rdi), %xmm15
	vmovaps	%xmm15, %xmm23
	#APP
	vaesenclast	%xmm15, %xmm0, %xmm0
	vaesenclast	%xmm15, %xmm5, %xmm5
	vaesenclast	%xmm15, %xmm6, %xmm6
	vaesenclast	%xmm15, %xmm7, %xmm7
	vaesenclast	%xmm15, %xmm8, %xmm8
	vaesenclast	%xmm15, %xmm9, %xmm9
	#NO_APP
	vpxor	(%r9), %xmm0, %xmm15
	vpxorq	16(%r9), %xmm5, %xmm22
	vpxorq	32(%r9), %xmm6, %xmm26
	vpxorq	48(%r9), %xmm7, %xmm27
	vpxorq	64(%r9), %xmm8, %xmm28
	vpxorq	80(%r9), %xmm9, %xmm29
	vmovdqu	%xmm15, (%rsi)
	vmovdqu64	%xmm22, 16(%rsi)
	vmovdqu64	%xmm26, 32(%rsi)
	vmovdqu64	%xmm27, 48(%rsi)
	leaq	-96(%r10), %rcx
	vmovdqu64	%xmm28, 64(%rsi)
	vmovdqu64	%xmm29, 80(%rsi)
	cmpq	$96, %rcx
	jb	.LBB1_37
	vmovdqa64	%xmm21, -128(%rsp)
	vmovaps	176(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, -16(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, -32(%rsp)
	vmovdqa	256(%rdi), %xmm0
	vmovdqa	%xmm0, -48(%rsp)
	vmovaps	%xmm4, -64(%rsp)
	vmovdqa	%xmm12, -80(%rsp)
	vmovdqa64	%xmm13, %xmm21
	vmovdqa64	%xmm10, %xmm16
	vmovdqa64	%xmm14, %xmm18
	vmovdqa64	-96(%rsp), %xmm17
	vmovdqa64	-112(%rsp), %xmm19
	.p2align	4, 0x90
.LBB1_35:
	vpshufb	%xmm31, %xmm2, %xmm0
	vpaddd	.LCPI1_1(%rip), %xmm2, %xmm5
	vpshufb	%xmm31, %xmm5, %xmm5
	vpaddd	.LCPI1_4(%rip), %xmm2, %xmm6
	vpshufb	%xmm31, %xmm6, %xmm6
	vpaddd	.LCPI1_5(%rip), %xmm2, %xmm7
	vpshufb	%xmm31, %xmm7, %xmm7
	vpaddd	.LCPI1_6(%rip), %xmm2, %xmm8
	vpshufb	%xmm31, %xmm8, %xmm14
	vpaddd	.LCPI1_7(%rip), %xmm2, %xmm8
	vpshufb	%xmm31, %xmm8, %xmm30
	vpshufb	%xmm31, %xmm29, %xmm8
	vpxorq	%xmm0, %xmm24, %xmm10
	vpxorq	%xmm5, %xmm24, %xmm11
	vpxorq	%xmm6, %xmm24, %xmm12
	vpxorq	%xmm7, %xmm24, %xmm13
	vpxorq	%xmm14, %xmm24, %xmm14
	vpxorq	%xmm30, %xmm24, %xmm0
	vmovaps	-64(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm5, %xmm5, %xmm5
	vmovaps	32(%rsp), %xmm3
	vmovaps	-80(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm31, %xmm28, %xmm8
	vmovaps	16(%rsp), %xmm3
	vmovdqa64	%xmm21, %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm31, %xmm27, %xmm8
	vmovaps	(%rsp), %xmm3
	vmovdqa64	%xmm16, %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm31, %xmm26, %xmm8
	vmovdqa64	%xmm18, %xmm4
	vmovaps	-16(%rsp), %xmm3
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm31, %xmm22, %xmm8
	vmovaps	-32(%rsp), %xmm3
	vmovdqa64	%xmm17, %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm31, %xmm15, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovdqa	-48(%rsp), %xmm3
	vmovaps	%xmm25, %xmm4
	#APP
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm7, %xmm3, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpunpckhqdq	%xmm3, %xmm7, %xmm1
	vmovdqa64	%xmm20, %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovaps	%xmm23, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm10, %xmm10
	vaesenclast	%xmm3, %xmm11, %xmm11
	vaesenclast	%xmm3, %xmm12, %xmm12
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpxor	(%rdx), %xmm10, %xmm15
	vpxorq	16(%rdx), %xmm11, %xmm22
	vpxorq	32(%rdx), %xmm12, %xmm26
	vpxorq	48(%rdx), %xmm13, %xmm27
	vpxorq	64(%rdx), %xmm14, %xmm28
	vpxorq	80(%rdx), %xmm0, %xmm29
	vpxor	%xmm1, %xmm5, %xmm1
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm0
	vpshufd	$78, %xmm6, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm5, %xmm0, %xmm1
	addq	$96, %rdx
	vmovdqu	%xmm15, (%rax)
	vmovdqu64	%xmm22, 16(%rax)
	vmovdqu64	%xmm26, 32(%rax)
	vmovdqu64	%xmm27, 48(%rax)
	vmovdqu64	%xmm28, 64(%rax)
	vmovdqu64	%xmm29, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI1_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rcx
	ja	.LBB1_35
	vmovdqa64	-128(%rsp), %xmm21
.LBB1_37:
	vpshufb	%xmm31, %xmm15, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpshufb	%xmm31, %xmm22, %xmm1
	vpshufb	%xmm31, %xmm26, %xmm4
	vpshufb	%xmm31, %xmm27, %xmm5
	vpshufb	%xmm31, %xmm28, %xmm6
	vpshufb	%xmm31, %xmm29, %xmm3
	vmovdqa	176(%rdi), %xmm7
	vmovdqa	192(%rdi), %xmm8
	vmovdqa	208(%rdi), %xmm9
	vmovdqa	224(%rdi), %xmm10
	vmovdqa	240(%rdi), %xmm11
	vmovdqa	256(%rdi), %xmm12
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm13
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm8, %xmm15
	vpclmulqdq	$16, %xmm6, %xmm8, %xmm17
	vpternlogq	$150, %xmm15, %xmm14, %xmm17
	vpclmulqdq	$17, %xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm8
	vpternlogq	$150, %xmm13, %xmm7, %xmm8
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm13
	vpternlogq	$150, %xmm7, %xmm17, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpternlogq	$150, %xmm3, %xmm6, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm10, %xmm7
	vpternlogq	$150, %xmm6, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm10, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm6
	vpternlogq	$150, %xmm3, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm8
	vpternlogq	$150, %xmm3, %xmm7, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm1
	vpternlogq	$150, %xmm4, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm12, %xmm5
	vpternlogq	$150, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm12, %xmm0
	vpslldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpsrldq	$8, %xmm5, %xmm3
	vpbroadcastq	.LCPI1_3(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm5
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	vpshufd	$78, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	movq	%rax, %rsi
	movq	%rdx, %r9
	cmpq	$16, %rcx
	jae	.LBB1_38
.LBB1_28:
	movq	%rsi, %rax
	movq	%r9, %rdx
	jmp	.LBB1_29
.LBB1_26:
	movq	%r10, %rcx
	cmpq	$16, %rcx
	jb	.LBB1_28
.LBB1_38:
	vmovdqa	(%rdi), %xmm0
	vmovdqa	16(%rdi), %xmm3
	vmovdqa	32(%rdi), %xmm4
	vmovdqa	48(%rdi), %xmm5
	vmovdqa	64(%rdi), %xmm6
	vmovdqa	80(%rdi), %xmm7
	vmovdqa	96(%rdi), %xmm8
	vmovdqa	112(%rdi), %xmm9
	vmovdqa	128(%rdi), %xmm10
	vmovdqa	144(%rdi), %xmm11
	vmovdqa	160(%rdi), %xmm12
	vmovdqa	176(%rdi), %xmm13
	vmovdqa	.LCPI1_2(%rip), %xmm14
	vpmovsxbq	.LCPI1_12(%rip), %xmm15
	vpbroadcastq	.LCPI1_3(%rip), %xmm17
	.p2align	4, 0x90
.LBB1_39:
	leaq	16(%r9), %rdx
	leaq	16(%rsi), %rax
	addq	$-16, %rcx
	vpshufb	%xmm14, %xmm2, %xmm18
	vpxorq	%xmm18, %xmm0, %xmm18
	vaesenc	%xmm3, %xmm18, %xmm18
	vaesenc	%xmm4, %xmm18, %xmm18
	vaesenc	%xmm5, %xmm18, %xmm18
	vaesenc	%xmm6, %xmm18, %xmm18
	vaesenc	%xmm7, %xmm18, %xmm18
	vaesenc	%xmm8, %xmm18, %xmm18
	vaesenc	%xmm9, %xmm18, %xmm18
	vaesenc	%xmm10, %xmm18, %xmm18
	vaesenc	%xmm11, %xmm18, %xmm18
	vaesenclast	%xmm12, %xmm18, %xmm18
	vpaddd	%xmm2, %xmm15, %xmm2
	vpxorq	(%r9), %xmm18, %xmm18
	vmovdqu64	%xmm18, (%rsi)
	vpshufb	%xmm14, %xmm18, %xmm18
	vpxorq	%xmm18, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm18
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm19
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm20
	vpxorq	%xmm19, %xmm20, %xmm19
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vpslldq	$8, %xmm19, %xmm20
	vpxorq	%xmm20, %xmm18, %xmm18
	vpsrldq	$8, %xmm19, %xmm19
	vpclmulqdq	$16, %xmm17, %xmm18, %xmm20
	vpshufd	$78, %xmm18, %xmm18
	vpxorq	%xmm18, %xmm20, %xmm18
	vpclmulqdq	$16, %xmm17, %xmm18, %xmm20
	vpxorq	%xmm1, %xmm20, %xmm20
	vpshufd	$78, %xmm18, %xmm1
	vpternlogq	$150, %xmm19, %xmm20, %xmm1
	movq	%rax, %rsi
	movq	%rdx, %r9
	cmpq	$15, %rcx
	ja	.LBB1_39
.LBB1_29:
	testq	%rcx, %rcx
	je	.LBB1_19
	movl	$-1, %esi
	bzhil	%ecx, %esi, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdx), %xmm0 {%k1} {z}
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
	vaesenclast	160(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rax) {%k1}
	testq	%r10, %r10
	je	.LBB1_10
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vmovdqa	176(%rdi), %xmm2
	jmp	.LBB1_32
.LBB1_10:
	vmovdqa	176(%rdi), %xmm2
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
	vmovdqa	176(%rdi), %xmm0
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
	vaesenclast	160(%rdi), %xmm4, %xmm4
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
	.size	haberdashery_aes128gcm_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes128gcm_tigerlake_encrypt
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
	.section	.text.haberdashery_aes128gcm_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_tigerlake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_tigerlake_decrypt,@function
haberdashery_aes128gcm_tigerlake_decrypt:
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
	vmovdqa	176(%rdi), %xmm0
	vmovdqa	192(%rdi), %xmm2
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm4
	vmovdqa	240(%rdi), %xmm5
	vmovdqa	256(%rdi), %xmm6
	vmovdqa	.LCPI2_2(%rip), %xmm7
	vpbroadcastq	.LCPI2_3(%rip), %xmm8
	movq	%r8, %rdx
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu	(%rcx), %xmm9
	vmovdqu	16(%rcx), %xmm10
	vmovdqu	32(%rcx), %xmm11
	vmovdqu	48(%rcx), %xmm12
	vmovdqu	64(%rcx), %xmm13
	vmovdqu	80(%rcx), %xmm14
	addq	$96, %rcx
	addq	$-96, %rdx
	vpshufb	%xmm7, %xmm9, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpshufb	%xmm7, %xmm10, %xmm9
	vpshufb	%xmm7, %xmm11, %xmm10
	vpshufb	%xmm7, %xmm12, %xmm11
	vpshufb	%xmm7, %xmm13, %xmm12
	vpshufb	%xmm7, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm14
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm17
	vpxorq	%xmm15, %xmm17, %xmm15
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm12, %xmm2, %xmm17
	vpclmulqdq	$1, %xmm12, %xmm2, %xmm18
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm19
	vpternlogq	$150, %xmm18, %xmm15, %xmm19
	vpclmulqdq	$17, %xmm12, %xmm2, %xmm12
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm15
	vpternlogq	$150, %xmm14, %xmm17, %xmm15
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm17
	vpternlogq	$150, %xmm14, %xmm19, %xmm17
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm11
	vpternlogq	$150, %xmm13, %xmm12, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm14
	vpternlogq	$150, %xmm13, %xmm17, %xmm14
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm13
	vpternlogq	$150, %xmm12, %xmm15, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm15
	vpternlogq	$150, %xmm12, %xmm14, %xmm15
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm9
	vpternlogq	$150, %xmm10, %xmm11, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm10
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm11
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm12
	vpternlogq	$150, %xmm11, %xmm15, %xmm12
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm12, %xmm11
	vpternlogq	$150, %xmm10, %xmm13, %xmm11
	vpsrldq	$8, %xmm12, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm12
	vpshufd	$78, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm11, %xmm12
	vpternlogq	$150, %xmm1, %xmm9, %xmm12
	vpshufd	$78, %xmm11, %xmm1
	vpternlogq	$150, %xmm10, %xmm12, %xmm1
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
	vmovdqa	176(%rdi), %xmm0
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
	vmovdqa	176(%rdi), %xmm2
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
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
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
	vpxor	%xmm1, %xmm4, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
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
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufd	$78, %xmm4, %xmm1
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm2, %xmm5, %xmm4
	vpternlogq	$150, %xmm1, %xmm7, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm1
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm1, %xmm1
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
	vmovdqa64	160(%rdi), %xmm19
	vmovapd	176(%rdi), %xmm20
	vmovdqa64	192(%rdi), %xmm21
	vmovaps	208(%rdi), %xmm22
	vmovaps	224(%rdi), %xmm23
	vmovdqa64	240(%rdi), %xmm16
	vmovdqa64	256(%rdi), %xmm18
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpxord	%xmm24, %xmm24, %xmm24
	vpbroadcastq	.LCPI2_3(%rip), %xmm25
	movq	%r10, %rcx
	.p2align	4, 0x90
.LBB2_31:
	vmovdqu64	(%r9), %xmm26
	vmovdqu64	16(%r9), %xmm27
	vmovdqu64	32(%r9), %xmm28
	vmovdqu64	48(%r9), %xmm29
	vmovdqu64	64(%r9), %xmm30
	vmovdqu64	80(%r9), %xmm31
	vpshufb	%xmm17, %xmm2, %xmm7
	vpaddd	.LCPI2_1(%rip), %xmm2, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm8
	vpaddd	.LCPI2_4(%rip), %xmm2, %xmm9
	vpshufb	%xmm17, %xmm9, %xmm9
	vpaddd	.LCPI2_5(%rip), %xmm2, %xmm10
	vpshufb	%xmm17, %xmm10, %xmm10
	vpaddd	.LCPI2_6(%rip), %xmm2, %xmm11
	vpshufb	%xmm17, %xmm11, %xmm11
	vpaddd	.LCPI2_7(%rip), %xmm2, %xmm12
	vpshufb	%xmm17, %xmm12, %xmm12
	vpshufb	%xmm17, %xmm31, %xmm0
	vpxor	%xmm7, %xmm3, %xmm7
	vpxor	%xmm3, %xmm8, %xmm8
	vpxor	%xmm3, %xmm9, %xmm9
	vpxor	%xmm3, %xmm10, %xmm10
	vpxor	%xmm3, %xmm11, %xmm11
	vpxor	%xmm3, %xmm12, %xmm12
	vmovaps	16(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm14, %xmm14, %xmm14
	vpxor	%xmm15, %xmm15, %xmm15
	vpxor	%xmm13, %xmm13, %xmm13
	vmovaps	(%rsp), %xmm5
	vmovapd	%xmm20, %xmm6
	#APP
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm17, %xmm30, %xmm0
	vmovaps	-16(%rsp), %xmm5
	vmovdqa64	%xmm21, %xmm6
	#APP
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm17, %xmm29, %xmm0
	vmovaps	-32(%rsp), %xmm5
	vmovaps	%xmm22, %xmm6
	#APP
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm17, %xmm28, %xmm0
	vmovaps	-48(%rsp), %xmm5
	vmovaps	%xmm23, %xmm6
	#APP
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm17, %xmm27, %xmm0
	vmovaps	-64(%rsp), %xmm5
	vmovdqa64	%xmm16, %xmm6
	#APP
	vaesenc	%xmm5, %xmm7, %xmm7
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm9, %xmm9
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	#NO_APP
	vpshufb	%xmm17, %xmm26, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	-80(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm12, %xmm12
	#NO_APP
	vmovaps	-96(%rsp), %xmm4
	vmovdqa64	%xmm18, %xmm5
	#APP
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm1
	vpxor	%xmm1, %xmm15, %xmm15
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm1
	vpxor	%xmm1, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm1
	vpxor	%xmm1, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm1
	vpxor	%xmm1, %xmm15, %xmm15
	#NO_APP
	vpunpcklqdq	%xmm15, %xmm24, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpunpckhqdq	%xmm24, %xmm15, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vmovaps	-112(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm7, %xmm7
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm9, %xmm9
	vaesenc	%xmm4, %xmm10, %xmm10
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa64	%xmm19, %xmm4
	#APP
	vaesenclast	%xmm4, %xmm7, %xmm7
	vaesenclast	%xmm4, %xmm8, %xmm8
	vaesenclast	%xmm4, %xmm9, %xmm9
	vaesenclast	%xmm4, %xmm10, %xmm10
	vaesenclast	%xmm4, %xmm11, %xmm11
	vaesenclast	%xmm4, %xmm12, %xmm12
	#NO_APP
	vpxorq	%xmm26, %xmm7, %xmm4
	vpxorq	%xmm27, %xmm8, %xmm7
	vpxorq	%xmm28, %xmm9, %xmm8
	vpxorq	%xmm29, %xmm10, %xmm9
	vpxorq	%xmm30, %xmm11, %xmm10
	vpxorq	%xmm31, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm25, %xmm0, %xmm12
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm0
	vmovdqu	%xmm4, (%rax)
	vmovdqu	%xmm7, 16(%rax)
	vmovdqu	%xmm8, 32(%rax)
	vmovdqu	%xmm9, 48(%rax)
	vmovdqu	%xmm10, 64(%rax)
	vmovdqu	%xmm11, 80(%rax)
	vpclmulqdq	$16, %xmm25, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
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
	vmovdqa	176(%rdi), %xmm0
	vmovdqa	(%rdi), %xmm3
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
	vmovdqa	.LCPI2_2(%rip), %xmm14
	vpbroadcastq	.LCPI2_3(%rip), %xmm15
	vpmovsxbq	.LCPI2_11(%rip), %xmm17
	.p2align	4, 0x90
.LBB2_34:
	leaq	16(%rax), %rdx
	vmovdqu64	(%r9), %xmm18
	addq	$-16, %rcx
	addq	$16, %r9
	vpshufb	%xmm14, %xmm18, %xmm19
	vpxorq	%xmm19, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm19
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm20
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm21
	vpxorq	%xmm20, %xmm21, %xmm20
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm20, %xmm21
	vpxorq	%xmm21, %xmm19, %xmm19
	vpsrldq	$8, %xmm20, %xmm20
	vpclmulqdq	$16, %xmm15, %xmm19, %xmm21
	vpshufd	$78, %xmm19, %xmm19
	vpxorq	%xmm19, %xmm21, %xmm19
	vpclmulqdq	$16, %xmm15, %xmm19, %xmm21
	vpxorq	%xmm1, %xmm21, %xmm21
	vpshufd	$78, %xmm19, %xmm1
	vpternlogq	$150, %xmm20, %xmm21, %xmm1
	vpshufb	%xmm14, %xmm2, %xmm19
	vpxorq	%xmm19, %xmm3, %xmm19
	vaesenc	%xmm4, %xmm19, %xmm19
	vaesenc	%xmm5, %xmm19, %xmm19
	vaesenc	%xmm6, %xmm19, %xmm19
	vaesenc	%xmm7, %xmm19, %xmm19
	vaesenc	%xmm8, %xmm19, %xmm19
	vaesenc	%xmm9, %xmm19, %xmm19
	vaesenc	%xmm10, %xmm19, %xmm19
	vaesenc	%xmm11, %xmm19, %xmm19
	vaesenc	%xmm12, %xmm19, %xmm19
	vaesenclast	%xmm13, %xmm19, %xmm19
	vpaddd	%xmm17, %xmm2, %xmm2
	vpxorq	%xmm18, %xmm19, %xmm18
	vmovdqu64	%xmm18, (%rax)
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
	vaesenclast	160(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovdqu8	%xmm2, (%rdx) {%k1}
	vpshufb	%xmm3, %xmm0, %xmm0
	vmovdqa	176(%rdi), %xmm3
	jmp	.LBB2_28
.LBB2_12:
	vmovdqa	176(%rdi), %xmm3
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
	vpxor	%xmm1, %xmm3, %xmm3
	vpshufd	$78, %xmm0, %xmm1
	vpternlogq	$150, %xmm2, %xmm3, %xmm1
.LBB2_29:
	movq	72(%rsp), %rax
	vmovdqa	176(%rdi), %xmm0
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
	vaesenclast	160(%rdi), %xmm4, %xmm4
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
	.size	haberdashery_aes128gcm_tigerlake_decrypt, .Lfunc_end2-haberdashery_aes128gcm_tigerlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes128gcm_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes128gcm_tigerlake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_tigerlake_is_supported,@function
haberdashery_aes128gcm_tigerlake_is_supported:
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
	.size	haberdashery_aes128gcm_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes128gcm_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

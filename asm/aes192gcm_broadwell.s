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
.LCPI0_1:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes192gcm_broadwell_init,"ax",@progbits
	.globl	haberdashery_aes192gcm_broadwell_init
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_broadwell_init,@function
haberdashery_aes192gcm_broadwell_init:
	.cfi_startproc
	cmpq	$24, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm2
	vmovq	16(%rsi), %xmm0
	vpslldq	$4, %xmm2, %xmm1
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vaeskeygenassist	$1, %xmm0, %xmm3
	vpshufd	$85, %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm1, %xmm3
	vpslldq	$4, %xmm0, %xmm4
	vpxor	%xmm0, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm8
	vmovdqa	%xmm8, -24(%rsp)
	vpalignr	$8, %xmm1, %xmm4, %xmm13
	vmovdqa	%xmm13, -40(%rsp)
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$12, %xmm1, %xmm3
	vaeskeygenassist	$2, %xmm4, %xmm5
	vpxor	%xmm3, %xmm0, %xmm0
	vpshufd	$85, %xmm5, %xmm3
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	vpshufd	$255, %xmm3, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vaeskeygenassist	$4, %xmm0, %xmm4
	vpshufd	$85, %xmm4, %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$255, %xmm1, %xmm4
	vpslldq	$4, %xmm0, %xmm5
	vpxor	%xmm0, %xmm5, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm5
	vmovdqa	%xmm5, -56(%rsp)
	vpalignr	$8, %xmm1, %xmm4, %xmm14
	vmovdqa	%xmm14, -72(%rsp)
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpslldq	$12, %xmm1, %xmm6
	vaeskeygenassist	$8, %xmm4, %xmm7
	vpxor	%xmm6, %xmm0, %xmm0
	vpshufd	$85, %xmm7, %xmm6
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpshufd	$255, %xmm6, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vaeskeygenassist	$16, %xmm0, %xmm4
	vpshufd	$85, %xmm4, %xmm4
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$255, %xmm1, %xmm4
	vpslldq	$4, %xmm0, %xmm7
	vpxor	%xmm0, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm7
	vmovdqa	%xmm7, -88(%rsp)
	vpalignr	$8, %xmm1, %xmm4, %xmm15
	vmovdqa	%xmm15, -104(%rsp)
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpslldq	$12, %xmm1, %xmm9
	vaeskeygenassist	$32, %xmm4, %xmm10
	vpxor	%xmm0, %xmm9, %xmm0
	vpshufd	$85, %xmm10, %xmm9
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpshufd	$255, %xmm9, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$12, %xmm9, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vaeskeygenassist	$64, %xmm0, %xmm4
	vpshufd	$85, %xmm4, %xmm4
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$255, %xmm1, %xmm4
	vpslldq	$4, %xmm0, %xmm10
	vpxor	%xmm0, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm10
	vpalignr	$8, %xmm1, %xmm4, %xmm11
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm12
	vpxor	%xmm0, %xmm12, %xmm0
	vpslldq	$12, %xmm1, %xmm12
	vaeskeygenassist	$128, %xmm4, %xmm4
	vpxor	%xmm0, %xmm12, %xmm0
	vpshufd	$85, %xmm4, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm8, %xmm2, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpshufb	.LCPI0_0(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm4
	vpor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm4, %xmm4, %xmm4
	vpblendd	$12, %xmm1, %xmm4, %xmm1
	vpsllq	$63, %xmm1, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm4
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm0
	vpbroadcastq	.LCPI0_2(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm1
	vpshufd	$78, %xmm0, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm1
	vpslldq	$8, %xmm0, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm1, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm4
	vpshufd	$78, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm5
	vpshufd	$78, %xmm0, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm7
	vpslldq	$8, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vmovdqa	%xmm2, (%rdi)
	vmovaps	-24(%rsp), %xmm2
	vmovaps	%xmm2, 16(%rdi)
	vmovaps	-40(%rsp), %xmm2
	vmovaps	%xmm2, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovaps	-56(%rsp), %xmm2
	vmovaps	%xmm2, 64(%rdi)
	vmovaps	-72(%rsp), %xmm2
	vmovaps	%xmm2, 80(%rdi)
	vmovdqa	%xmm6, 96(%rdi)
	vmovaps	-88(%rsp), %xmm2
	vmovaps	%xmm2, 112(%rdi)
	vmovaps	-104(%rsp), %xmm2
	vmovaps	%xmm2, 128(%rdi)
	vmovdqa	%xmm9, 144(%rdi)
	vmovdqa	%xmm10, 160(%rdi)
	vmovdqa	%xmm11, 176(%rdi)
	vmovdqa	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovdqa	%xmm14, 224(%rdi)
	vmovdqa	%xmm1, 240(%rdi)
	vmovdqa	%xmm0, 256(%rdi)
	vmovdqa	%xmm5, 272(%rdi)
	vmovdqa	%xmm4, 288(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$24, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes192gcm_broadwell_init, .Lfunc_end0-haberdashery_aes192gcm_broadwell_init
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
.LCPI1_3:
	.zero	8
	.quad	-4467570830351532032
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
.LCPI1_12:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_13:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes192gcm_broadwell_encrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_broadwell_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_broadwell_encrypt,@function
haberdashery_aes192gcm_broadwell_encrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$440, %rsp
	.cfi_def_cfa_offset 496
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	496(%rsp), %r15
	xorl	%eax, %eax
	cmpq	512(%rsp), %r15
	jne	.LBB1_41
	cmpq	$16, 528(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	orb	%r10b, %r11b
	jne	.LBB1_41
	movabsq	$68719476719, %r10
	cmpq	%r10, %r15
	seta	%r10b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r10b, %dl
	jne	.LBB1_41
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	vpxor	%xmm3, %xmm3, %xmm3
	testq	%r8, %r8
	je	.LBB1_19
	cmpq	$96, %r8
	jb	.LBB1_5
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm7
	vpshufb	%xmm0, %xmm2, %xmm10
	vpshufb	%xmm0, %xmm3, %xmm8
	vpshufb	%xmm0, %xmm4, %xmm9
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vmovdqa	208(%rdi), %xmm1
	vmovdqa	224(%rdi), %xmm2
	vmovdqa	240(%rdi), %xmm3
	vmovdqa	256(%rdi), %xmm4
	vpclmulqdq	$0, %xmm6, %xmm1, %xmm11
	vpclmulqdq	$1, %xmm6, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm13
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm6, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm13
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm5
	vpxor	%xmm6, %xmm5, %xmm13
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm6
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm14
	vpxor	%xmm6, %xmm14, %xmm6
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm14
	vpxor	%xmm5, %xmm14, %xmm14
	vmovdqa	272(%rdi), %xmm5
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	288(%rdi), %xmm6
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm9
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm9
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm14
	vpxor	%xmm14, %xmm8, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm13, %xmm10
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB1_18
	.p2align	4, 0x90
.LBB1_17:
	vmovdqu	(%rcx), %xmm11
	vmovdqu	32(%rcx), %xmm12
	vmovdqu	48(%rcx), %xmm13
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vpslldq	$8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpbroadcastq	.LCPI1_13(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm11, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm10
	vpshufb	%xmm0, %xmm12, %xmm8
	vpshufb	%xmm0, %xmm13, %xmm7
	vpshufb	%xmm0, %xmm14, %xmm9
	vpshufb	%xmm0, %xmm15, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm11
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm2, %xmm9
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm7
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm8
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpxor	%xmm8, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB1_17
.LBB1_18:
	vpslldq	$8, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	cmpq	$16, %rsi
	jae	.LBB1_7
	jmp	.LBB1_12
.LBB1_19:
	testq	%r15, %r15
	jne	.LBB1_24
	jmp	.LBB1_40
.LBB1_5:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB1_12
.LBB1_7:
	vmovdqa	208(%rdi), %xmm0
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB1_8
	cmpq	$16, %rdx
	jae	.LBB1_10
.LBB1_13:
	testq	%rdx, %rdx
	je	.LBB1_20
.LBB1_14:
	vmovdqa	%xmm3, 16(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	movq	%rdi, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	testq	%r15, %r15
	je	.LBB1_15
	movabsq	$-68719476720, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	16(%rsp), %xmm2
	jb	.LBB1_41
	movq	%r12, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	208(%r12), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	jmp	.LBB1_24
.LBB1_8:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	addq	$16, %rcx
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB1_13
.LBB1_10:
	vmovdqa	.LCPI1_2(%rip), %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	.p2align	4, 0x90
.LBB1_11:
	vmovdqa	%xmm3, %xmm5
	vmovdqu	(%rcx), %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm1, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	cmpq	$15, %rsi
	ja	.LBB1_11
.LBB1_12:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_14
.LBB1_20:
	testq	%r15, %r15
	je	.LBB1_40
	movabsq	$-68719476720, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_41
.LBB1_24:
	vmovdqa	112(%rsp), %xmm0
	vpshufb	.LCPI1_0(%rip), %xmm0, %xmm1
	movq	504(%rsp), %rdx
	vpaddd	.LCPI1_1(%rip), %xmm1, %xmm2
	cmpq	$96, %r15
	jb	.LBB1_25
	vmovdqa	%xmm3, %xmm0
	leaq	96(%r9), %rax
	leaq	96(%rdx), %rcx
	vmovdqa	.LCPI1_2(%rip), %xmm10
	vpshufb	%xmm10, %xmm2, %xmm2
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm10, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm6
	vpshufb	%xmm10, %xmm5, %xmm5
	vpshufb	%xmm10, %xmm6, %xmm6
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm7
	vpshufb	%xmm10, %xmm7, %xmm7
	vpaddd	.LCPI1_9(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqa	(%rdi), %xmm1
	vmovdqa	16(%rdi), %xmm11
	vmovaps	32(%rdi), %xmm12
	vmovaps	48(%rdi), %xmm9
	vpxor	%xmm2, %xmm1, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	%xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm1, %xmm5
	vpxor	%xmm6, %xmm1, %xmm6
	vpxor	%xmm7, %xmm1, %xmm8
	vmovaps	%xmm9, %xmm7
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm8, %xmm8
	#NO_APP
	vmovaps	%xmm12, 304(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	64(%rdi), %xmm9
	vmovaps	%xmm9, 80(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	80(%rdi), %xmm9
	vmovaps	%xmm9, 400(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	96(%rdi), %xmm9
	vmovaps	%xmm9, 384(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	112(%rdi), %xmm9
	vmovaps	%xmm9, 368(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	128(%rdi), %xmm9
	vmovaps	%xmm9, 352(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	144(%rdi), %xmm9
	vmovaps	%xmm9, 336(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovaps	160(%rdi), %xmm9
	vmovaps	%xmm9, 320(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovdqa	176(%rdi), %xmm9
	vmovdqa	%xmm9, %xmm14
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovdqa	192(%rdi), %xmm9
	vmovdqa	%xmm9, %xmm15
	#APP
	vaesenclast	%xmm9, %xmm2, %xmm2
	vaesenclast	%xmm9, %xmm3, %xmm3
	vaesenclast	%xmm9, %xmm4, %xmm4
	vaesenclast	%xmm9, %xmm5, %xmm5
	vaesenclast	%xmm9, %xmm6, %xmm6
	vaesenclast	%xmm9, %xmm8, %xmm8
	#NO_APP
	vpxor	(%r9), %xmm2, %xmm13
	vpxor	16(%r9), %xmm3, %xmm2
	vpxor	32(%r9), %xmm4, %xmm9
	vpxor	48(%r9), %xmm5, %xmm3
	vmovdqa	%xmm2, %xmm5
	vpxor	64(%r9), %xmm6, %xmm6
	vpxor	80(%r9), %xmm8, %xmm12
	vmovdqu	%xmm13, (%rdx)
	vmovdqu	%xmm2, 16(%rdx)
	vmovdqu	%xmm9, 32(%rdx)
	vmovdqu	%xmm3, 48(%rdx)
	vmovdqu	%xmm6, 64(%rdx)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm12, 80(%rdx)
	cmpq	$96, %rbx
	jb	.LBB1_35
	vmovaps	208(%rdi), %xmm2
	vmovaps	%xmm2, 288(%rsp)
	vmovaps	224(%rdi), %xmm2
	vmovaps	%xmm2, 272(%rsp)
	vmovaps	240(%rdi), %xmm2
	vmovaps	%xmm2, 256(%rsp)
	vmovaps	256(%rdi), %xmm2
	vmovaps	%xmm2, 240(%rsp)
	vmovaps	272(%rdi), %xmm2
	vmovaps	%xmm2, 224(%rsp)
	vmovdqa	288(%rdi), %xmm2
	vmovdqa	%xmm2, 208(%rsp)
	vmovaps	%xmm7, 176(%rsp)
	vmovdqa	%xmm1, 192(%rsp)
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	%xmm11, 144(%rsp)
	vmovdqa	%xmm14, 160(%rsp)
	vmovdqa	%xmm15, 128(%rsp)
	.p2align	4, 0x90
.LBB1_33:
	vmovdqa	%xmm6, 96(%rsp)
	vmovdqa	%xmm3, 48(%rsp)
	vmovdqa	%xmm5, 64(%rsp)
	vpshufb	%xmm10, %xmm1, %xmm2
	vpaddd	.LCPI1_1(%rip), %xmm1, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm3
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm4
	vpshufb	%xmm10, %xmm4, %xmm4
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm5
	vpshufb	%xmm10, %xmm5, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpshufb	%xmm10, %xmm5, %xmm8
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm5
	vmovdqa	%xmm10, %xmm14
	vpshufb	%xmm10, %xmm5, %xmm10
	vpshufb	%xmm14, %xmm13, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vpshufb	%xmm14, %xmm12, %xmm0
	vmovdqa	192(%rsp), %xmm5
	vpxor	%xmm2, %xmm5, %xmm13
	vpxor	%xmm3, %xmm5, %xmm15
	vpxor	%xmm4, %xmm5, %xmm2
	vpxor	%xmm6, %xmm5, %xmm3
	vpxor	%xmm5, %xmm8, %xmm4
	vpxor	%xmm5, %xmm10, %xmm12
	vmovaps	144(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm10, %xmm10, %xmm10
	vmovdqa	%xmm9, %xmm11
	vmovaps	288(%rsp), %xmm9
	vmovaps	304(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	#NO_APP
	vmovdqa	96(%rsp), %xmm0
	vpshufb	%xmm14, %xmm0, %xmm0
	vmovaps	272(%rsp), %xmm9
	vmovaps	176(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	#NO_APP
	vmovdqa	48(%rsp), %xmm0
	vpshufb	%xmm14, %xmm0, %xmm0
	vmovaps	80(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	256(%rsp), %xmm9
	vmovaps	400(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	#NO_APP
	vpshufb	%xmm14, %xmm11, %xmm0
	vmovaps	384(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	240(%rsp), %xmm9
	vmovaps	368(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	#NO_APP
	vmovdqa	64(%rsp), %xmm0
	vpshufb	%xmm14, %xmm0, %xmm0
	vmovaps	352(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	224(%rsp), %xmm9
	vmovaps	336(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm9, %xmm0, %xmm5
	vpxor	%xmm5, %xmm6, %xmm6
	#NO_APP
	vmovdqa	208(%rsp), %xmm5
	vmovaps	320(%rsp), %xmm7
	vmovaps	16(%rsp), %xmm9
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm0
	vpxor	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vmovdqa	%xmm14, %xmm10
	vpunpckhqdq	%xmm5, %xmm6, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpbroadcastq	.LCPI1_13(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm0, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vmovaps	160(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm12, %xmm12
	#NO_APP
	vmovaps	128(%rsp), %xmm5
	#APP
	vaesenclast	%xmm5, %xmm13, %xmm13
	vaesenclast	%xmm5, %xmm15, %xmm15
	vaesenclast	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm4, %xmm4
	vaesenclast	%xmm5, %xmm12, %xmm12
	#NO_APP
	vpxor	(%rax), %xmm13, %xmm13
	vpxor	16(%rax), %xmm15, %xmm5
	vpxor	32(%rax), %xmm2, %xmm9
	vpxor	48(%rax), %xmm3, %xmm3
	vpxor	64(%rax), %xmm4, %xmm6
	vpxor	80(%rax), %xmm12, %xmm12
	addq	$96, %rax
	vmovdqu	%xmm13, (%rcx)
	vmovdqu	%xmm5, 16(%rcx)
	vmovdqu	%xmm9, 32(%rcx)
	vmovdqu	%xmm3, 48(%rcx)
	vmovdqu	%xmm6, 64(%rcx)
	vmovdqu	%xmm12, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rbx
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm1
	cmpq	$95, %rbx
	ja	.LBB1_33
	vmovdqa	%xmm1, 32(%rsp)
.LBB1_35:
	vpshufb	%xmm10, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpshufb	%xmm10, %xmm5, %xmm2
	vpshufb	%xmm10, %xmm9, %xmm4
	vpshufb	%xmm10, %xmm3, %xmm5
	vpshufb	%xmm10, %xmm6, %xmm6
	vpshufb	%xmm10, %xmm12, %xmm7
	vmovdqa	208(%rdi), %xmm8
	vmovdqa	224(%rdi), %xmm9
	vmovdqa	240(%rdi), %xmm10
	vmovdqa	256(%rdi), %xmm11
	vmovdqa	272(%rdi), %xmm3
	vmovdqa	288(%rdi), %xmm0
	vpclmulqdq	$0, %xmm7, %xmm8, %xmm12
	vpclmulqdq	$1, %xmm7, %xmm8, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm8
	vpxor	%xmm12, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm5, %xmm10, %xmm9
	vpclmulqdq	$16, %xmm5, %xmm10, %xmm13
	vpxor	%xmm13, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm5, %xmm10, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm12, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	movq	%rcx, %rdx
	movq	%rax, %r9
	cmpq	$16, %rbx
	jae	.LBB1_36
.LBB1_27:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	32(%rsp), %xmm4
	jmp	.LBB1_28
.LBB1_25:
	vmovdqa	%xmm2, 32(%rsp)
	movq	%r15, %rbx
	cmpq	$16, %rbx
	jb	.LBB1_27
.LBB1_36:
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovdqa	64(%rdi), %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	vmovdqa	80(%rdi), %xmm5
	vmovdqa	96(%rdi), %xmm6
	vmovdqa	112(%rdi), %xmm7
	vmovdqa	128(%rdi), %xmm8
	vmovdqa	144(%rdi), %xmm9
	vmovdqa	160(%rdi), %xmm10
	vmovdqa	176(%rdi), %xmm11
	vmovdqa	192(%rdi), %xmm12
	vmovdqa	208(%rdi), %xmm13
	vmovdqa	.LCPI1_2(%rip), %xmm14
	vpbroadcastq	.LCPI1_13(%rip), %xmm15
	vmovdqa	32(%rsp), %xmm4
	.p2align	4, 0x90
.LBB1_37:
	vpshufb	%xmm14, %xmm4, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vaesenc	64(%rsp), %xmm0, %xmm0
	vaesenc	48(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	80(%rsp), %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpxor	(%r9), %xmm0, %xmm0
	vpshufb	%xmm14, %xmm0, %xmm1
	vmovdqu	%xmm0, (%rdx)
	vpxor	%xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm3
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_1(%rip), %xmm4, %xmm4
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB1_37
.LBB1_28:
	vmovdqa	%xmm4, 32(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_40
	vmovdqa	%xmm3, 16(%rsp)
	movq	%r8, 64(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rdi, %r13
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%r13), %xmm0, %xmm0
	vaesenc	16(%r13), %xmm0, %xmm0
	vaesenc	32(%r13), %xmm0, %xmm0
	vaesenc	48(%r13), %xmm0, %xmm0
	vaesenc	64(%r13), %xmm0, %xmm0
	vaesenc	80(%r13), %xmm0, %xmm0
	vaesenc	96(%r13), %xmm0, %xmm0
	vaesenc	112(%r13), %xmm0, %xmm0
	vaesenc	128(%r13), %xmm0, %xmm0
	vaesenc	144(%r13), %xmm0, %xmm0
	vaesenc	160(%r13), %xmm0, %xmm0
	vaesenc	176(%r13), %xmm0, %xmm0
	movq	%r13, %r12
	vaesenclast	192(%r13), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	testq	%r15, %r15
	je	.LBB1_30
	vmovaps	48(%rsp), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	416(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	movq	%r12, %rdi
	vmovdqa	208(%r12), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	jmp	.LBB1_39
.LBB1_15:
	movq	%r12, %rdi
	vmovdqa	208(%r12), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	movq	%rbx, %r8
	jmp	.LBB1_40
.LBB1_30:
	movq	%r12, %rdi
	vmovdqa	208(%r12), %xmm0
	vmovdqa	48(%rsp), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	vpxor	16(%rsp), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
.LBB1_39:
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	movq	64(%rsp), %r8
.LBB1_40:
	movq	520(%rsp), %rax
	vmovdqa	208(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	112(%rsp), %xmm2
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
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm3, %xmm3
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqu	%xmm0, (%rax)
	movl	$1, %eax
.LBB1_41:
	addq	$440, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes192gcm_broadwell_encrypt, .Lfunc_end1-haberdashery_aes192gcm_broadwell_encrypt
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
.LCPI2_3:
	.zero	8
	.quad	-4467570830351532032
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_11:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes192gcm_broadwell_decrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_broadwell_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_broadwell_decrypt,@function
haberdashery_aes192gcm_broadwell_decrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	512(%rsp), %r15
	xorl	%eax, %eax
	cmpq	544(%rsp), %r15
	jne	.LBB2_38
	cmpq	$16, 528(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	movabsq	$68719476719, %rbx
	cmpq	%rbx, %r15
	seta	%bl
	orb	%r10b, %r11b
	orb	%bl, %r11b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r11b, %dl
	jne	.LBB2_38
	movq	520(%rsp), %r12
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	vpxor	%xmm11, %xmm11, %xmm11
	testq	%r8, %r8
	je	.LBB2_3
	cmpq	$96, %r8
	jb	.LBB2_6
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	vmovdqa	.LCPI2_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm7
	vpshufb	%xmm0, %xmm2, %xmm10
	vpshufb	%xmm0, %xmm3, %xmm8
	vpshufb	%xmm0, %xmm4, %xmm9
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vmovdqa	208(%rdi), %xmm1
	vmovdqa	224(%rdi), %xmm2
	vmovdqa	240(%rdi), %xmm3
	vmovdqa	256(%rdi), %xmm4
	vpclmulqdq	$0, %xmm6, %xmm1, %xmm11
	vpclmulqdq	$1, %xmm6, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm13
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm6, %xmm1, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm13
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm5
	vpxor	%xmm6, %xmm5, %xmm13
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm6
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm14
	vpxor	%xmm6, %xmm14, %xmm6
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm14
	vpxor	%xmm5, %xmm14, %xmm14
	vmovdqa	272(%rdi), %xmm5
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	288(%rdi), %xmm6
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm9
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm9
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm14
	vpxor	%xmm14, %xmm8, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm13, %xmm10
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	cmpq	$96, %rsi
	jb	.LBB2_15
	.p2align	4, 0x90
.LBB2_14:
	vmovdqu	(%rcx), %xmm11
	vmovdqu	32(%rcx), %xmm12
	vmovdqu	48(%rcx), %xmm13
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vpslldq	$8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpbroadcastq	.LCPI2_11(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm11, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm10
	vpshufb	%xmm0, %xmm12, %xmm8
	vpshufb	%xmm0, %xmm13, %xmm7
	vpshufb	%xmm0, %xmm14, %xmm9
	vpshufb	%xmm0, %xmm15, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm11
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm2, %xmm9
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm7
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm8
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpxor	%xmm8, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB2_14
.LBB2_15:
	vpslldq	$8, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm11
	cmpq	$16, %rsi
	jae	.LBB2_16
	jmp	.LBB2_8
.LBB2_6:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB2_8
.LBB2_16:
	vmovdqa	208(%rdi), %xmm0
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB2_17
	cmpq	$16, %rdx
	jae	.LBB2_19
.LBB2_9:
	testq	%rdx, %rdx
	je	.LBB2_3
.LBB2_10:
	vmovdqa	%xmm11, 16(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	movq	%rdi, %r13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r15, %r15
	je	.LBB2_11
	movabsq	$-68719476720, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	16(%rsp), %xmm2
	jb	.LBB2_38
	movq	%r13, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	208(%r13), %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm11
	jmp	.LBB2_23
.LBB2_17:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm1, %xmm1
	addq	$16, %rcx
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm11
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB2_9
.LBB2_19:
	vmovdqa	.LCPI2_2(%rip), %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm11, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm1, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm11
	cmpq	$15, %rsi
	ja	.LBB2_20
.LBB2_8:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_10
.LBB2_3:
	testq	%r15, %r15
	je	.LBB2_12
	movabsq	$-68719476720, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_38
.LBB2_23:
	vmovdqa	112(%rsp), %xmm0
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm0
	movq	536(%rsp), %rax
	vpaddd	.LCPI2_1(%rip), %xmm0, %xmm6
	cmpq	$96, %r15
	jb	.LBB2_24
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	128(%rdi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	144(%rdi), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	160(%rdi), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	176(%rdi), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	movq	%r15, %rbx
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovdqa	288(%rdi), %xmm0
	vmovdqa	%xmm0, 128(%rsp)
	.p2align	4, 0x90
.LBB2_28:
	vmovdqa	%xmm6, (%rsp)
	vmovdqu	(%r9), %xmm10
	vmovdqa	%xmm10, 80(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	48(%r9), %xmm8
	vmovdqu	64(%r9), %xmm7
	vmovdqa	%xmm7, 64(%rsp)
	vmovdqu	80(%r9), %xmm9
	vmovdqa	%xmm9, 96(%rsp)
	vmovdqa	.LCPI2_2(%rip), %xmm4
	vpshufb	%xmm4, %xmm6, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm6, %xmm1
	vpshufb	%xmm4, %xmm1, %xmm1
	vpaddd	.LCPI2_4(%rip), %xmm6, %xmm2
	vpshufb	%xmm4, %xmm2, %xmm2
	vpaddd	.LCPI2_5(%rip), %xmm6, %xmm3
	vpshufb	%xmm4, %xmm3, %xmm3
	vmovdqa	(%rsp), %xmm5
	vpaddd	.LCPI2_6(%rip), %xmm5, %xmm5
	vpshufb	%xmm4, %xmm5, %xmm5
	vmovdqa	(%rsp), %xmm6
	vpaddd	.LCPI2_7(%rip), %xmm6, %xmm6
	vpshufb	%xmm4, %xmm6, %xmm6
	vpshufb	%xmm4, %xmm10, %xmm12
	vpxor	%xmm12, %xmm11, %xmm10
	vmovdqa	%xmm10, 48(%rsp)
	vpshufb	%xmm4, %xmm9, %xmm10
	vmovdqa	144(%rsp), %xmm9
	vpxor	%xmm0, %xmm9, %xmm13
	vpxor	%xmm1, %xmm9, %xmm14
	vpxor	%xmm2, %xmm9, %xmm15
	vpxor	%xmm3, %xmm9, %xmm1
	vpxor	%xmm5, %xmm9, %xmm2
	vpxor	%xmm6, %xmm9, %xmm12
	vmovaps	416(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	400(%rsp), %xmm9
	vmovaps	224(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm10, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm10, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm10, %xmm3
	vpxor	%xmm3, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm10, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm4, %xmm7, %xmm3
	vmovaps	384(%rsp), %xmm9
	vmovaps	208(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm4, %xmm8, %xmm3
	vmovaps	368(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovaps	352(%rsp), %xmm9
	vmovaps	192(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovdqa	16(%rsp), %xmm3
	vpshufb	%xmm4, %xmm3, %xmm3
	vmovaps	336(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm12, %xmm12
	#NO_APP
	vmovaps	320(%rsp), %xmm9
	vmovaps	176(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovdqu	16(%r9), %xmm3
	vmovaps	304(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm4, %xmm3, %xmm7
	vmovaps	288(%rsp), %xmm11
	vmovaps	160(%rsp), %xmm10
	#APP
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm7, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm7, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm7, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	#NO_APP
	vmovdqa	272(%rsp), %xmm9
	vmovdqa	128(%rsp), %xmm10
	vmovdqa	48(%rsp), %xmm4
	#APP
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm5, %xmm9, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpunpckhqdq	%xmm9, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpbroadcastq	.LCPI2_11(%rip), %xmm7
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm0, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm11
	vmovaps	256(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm12, %xmm12
	#NO_APP
	vmovaps	240(%rsp), %xmm0
	#APP
	vaesenclast	%xmm0, %xmm13, %xmm13
	vaesenclast	%xmm0, %xmm14, %xmm14
	vaesenclast	%xmm0, %xmm15, %xmm15
	vaesenclast	%xmm0, %xmm1, %xmm1
	vaesenclast	%xmm0, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm12, %xmm12
	#NO_APP
	vpxor	80(%rsp), %xmm13, %xmm0
	vpxor	%xmm3, %xmm14, %xmm3
	vpxor	16(%rsp), %xmm15, %xmm5
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	64(%rsp), %xmm2, %xmm2
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm3, 16(%rax)
	vmovdqu	%xmm5, 32(%rax)
	vmovdqa	(%rsp), %xmm6
	vmovdqu	%xmm1, 48(%rax)
	vmovdqu	%xmm2, 64(%rax)
	vpxor	96(%rsp), %xmm12, %xmm0
	vmovdqu	%xmm0, 80(%rax)
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI2_8(%rip), %xmm6, %xmm6
	cmpq	$95, %rbx
	ja	.LBB2_28
	vmovdqa	%xmm11, %xmm3
	cmpq	$16, %rbx
	jb	.LBB2_26
.LBB2_29:
	vmovdqa	208(%rdi), %xmm0
	vmovaps	(%rdi), %xmm1
	vmovaps	%xmm1, (%rsp)
	vmovaps	16(%rdi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	32(%rdi), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	48(%rdi), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovaps	64(%rdi), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vmovdqa	80(%rdi), %xmm1
	vmovdqa	%xmm1, 48(%rsp)
	vmovdqa	96(%rdi), %xmm7
	vmovdqa	112(%rdi), %xmm8
	vmovdqa	128(%rdi), %xmm9
	vmovdqa	144(%rdi), %xmm10
	vmovdqa	160(%rdi), %xmm11
	vmovdqa	176(%rdi), %xmm12
	movq	%rdi, %r13
	vmovdqa	192(%rdi), %xmm13
	vmovdqa	.LCPI2_2(%rip), %xmm14
	vpbroadcastq	.LCPI2_11(%rip), %xmm15
	.p2align	4, 0x90
.LBB2_30:
	vmovdqu	(%r9), %xmm1
	vpshufb	%xmm14, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	vpshufb	%xmm14, %xmm6, %xmm2
	vpxor	(%rsp), %xmm2, %xmm2
	vaesenc	16(%rsp), %xmm2, %xmm2
	vaesenc	96(%rsp), %xmm2, %xmm2
	vaesenc	80(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenclast	%xmm13, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqu	%xmm1, (%rax)
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI2_1(%rip), %xmm6, %xmm6
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB2_30
	jmp	.LBB2_31
.LBB2_24:
	movq	%r15, %rbx
	vmovdqa	%xmm11, %xmm3
	cmpq	$16, %rbx
	jae	.LBB2_29
.LBB2_26:
	movq	%rdi, %r13
	movq	%rax, %r14
.LBB2_31:
	vmovdqa	%xmm3, 16(%rsp)
	movq	%r8, %rbp
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	testq	%rbx, %rbx
	je	.LBB2_33
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r12
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm6, (%rsp)
	callq	*%r12
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	(%r13), %xmm0, %xmm0
	vaesenc	16(%r13), %xmm0, %xmm0
	vaesenc	32(%r13), %xmm0, %xmm0
	vaesenc	48(%r13), %xmm0, %xmm0
	vaesenc	64(%r13), %xmm0, %xmm0
	vaesenc	80(%r13), %xmm0, %xmm0
	vaesenc	96(%r13), %xmm0, %xmm0
	vaesenc	112(%r13), %xmm0, %xmm0
	vaesenc	128(%r13), %xmm0, %xmm0
	vaesenc	144(%r13), %xmm0, %xmm0
	vaesenc	160(%r13), %xmm0, %xmm0
	vaesenc	176(%r13), %xmm0, %xmm0
	vaesenclast	192(%r13), %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	%xmm1, (%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r12
	vmovdqa	(%rsp), %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
	movq	520(%rsp), %r12
.LBB2_33:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	%xmm2, 432(%rsp)
	vmovdqa	%xmm1, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	432(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.LBB2_34
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	movq	%r13, %rdi
	vmovdqa	208(%r13), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm11
	movq	%rbp, %r8
	jmp	.LBB2_36
.LBB2_11:
	movq	%r13, %rdi
	vmovdqa	208(%r13), %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm11
	movq	%rbx, %r8
.LBB2_12:
	vmovdqu	(%r12), %xmm5
	jmp	.LBB2_37
.LBB2_34:
	movq	%r13, %rdi
	movq	%rbp, %r8
	vmovdqa	16(%rsp), %xmm11
.LBB2_36:
	vmovdqa	(%rsp), %xmm5
.LBB2_37:
	vmovdqa	208(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI2_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	112(%rsp), %xmm2
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
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_9(%rip), %xmm3, %xmm3
	vpshufb	.LCPI2_10(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_38:
	addq	$456, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes192gcm_broadwell_decrypt, .Lfunc_end2-haberdashery_aes192gcm_broadwell_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes192gcm_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_aes192gcm_broadwell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_broadwell_is_supported,@function
haberdashery_aes192gcm_broadwell_is_supported:
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
	andl	$786729, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes192gcm_broadwell_is_supported, .Lfunc_end3-haberdashery_aes192gcm_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.85.0-nightly (4363f9b6f 2025-01-02)"
	.section	".note.GNU-stack","",@progbits

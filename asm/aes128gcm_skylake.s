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
	.section	.text.haberdashery_aes128gcm_skylake_init,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylake_init
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_skylake_init,@function
haberdashery_aes128gcm_skylake_init:
	.cfi_startproc
	cmpq	$16, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm3
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vaeskeygenassist	$1, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$255, %xmm1, %xmm1
	vpxor	%xmm3, %xmm0, %xmm0
	vmovdqa	%xmm3, %xmm10
	vmovdqa	%xmm3, -56(%rsp)
	vpxor	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm2
	vaeskeygenassist	$2, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpslldq	$12, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$255, %xmm3, %xmm2
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm1, -24(%rsp)
	vpxor	%xmm0, %xmm2, %xmm2
	vpslldq	$4, %xmm2, %xmm0
	vaeskeygenassist	$4, %xmm2, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpslldq	$12, %xmm2, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpshufd	$255, %xmm3, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	vaeskeygenassist	$8, %xmm3, %xmm0
	vpslldq	$4, %xmm3, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm0, %xmm0
	vpxor	%xmm3, %xmm4, %xmm4
	vpxor	%xmm4, %xmm0, %xmm4
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpslldq	$12, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vaeskeygenassist	$16, %xmm4, %xmm5
	vpshufd	$255, %xmm5, %xmm5
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm6
	vaeskeygenassist	$32, %xmm5, %xmm7
	vpxor	%xmm6, %xmm0, %xmm0
	vpshufd	$255, %xmm7, %xmm6
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vaeskeygenassist	$64, %xmm6, %xmm7
	vpslldq	$12, %xmm6, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$255, %xmm7, %xmm7
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm8
	vaeskeygenassist	$128, %xmm7, %xmm9
	vpxor	%xmm0, %xmm8, %xmm0
	vpslldq	$12, %xmm7, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$255, %xmm9, %xmm8
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	vpslldq	$4, %xmm8, %xmm0
	vaeskeygenassist	$27, %xmm8, %xmm9
	vpslldq	$8, %xmm8, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpslldq	$12, %xmm8, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpshufd	$255, %xmm9, %xmm9
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vaeskeygenassist	$54, %xmm9, %xmm0
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpslldq	$12, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpshufd	$255, %xmm0, %xmm0
	vpxor	%xmm9, %xmm11, %xmm11
	vpxor	%xmm0, %xmm11, %xmm11
	vmovdqa	%xmm11, -40(%rsp)
	vaesenc	%xmm1, %xmm10, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenclast	%xmm11, %xmm0, %xmm0
	vpshufb	.LCPI0_0(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm11
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm11, %xmm12
	vpor	%xmm0, %xmm12, %xmm0
	vpxor	%xmm12, %xmm12, %xmm12
	vpblendd	$12, %xmm11, %xmm12, %xmm11
	vpsllq	$63, %xmm11, %xmm12
	vpxor	%xmm0, %xmm12, %xmm0
	vpsllq	$62, %xmm11, %xmm12
	vpsllq	$57, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm0
	vpbroadcastq	.LCPI0_2(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm12
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm12
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm14
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpxor	%xmm0, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm11, %xmm12, %xmm14
	vpxor	%xmm0, %xmm14, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm12, %xmm14
	vpslldq	$8, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm15
	vpshufd	$78, %xmm14, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm12, %xmm15
	vpxor	%xmm0, %xmm15, %xmm0
	vpshufd	$78, %xmm14, %xmm15
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm14
	vpxor	%xmm0, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm15
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm15
	vpshufd	$78, %xmm0, %xmm10
	vpxor	%xmm10, %xmm15, %xmm10
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vmovdqa	%xmm0, -72(%rsp)
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm10
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm10
	vpshufd	$78, %xmm0, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm10
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm15
	vpxor	%xmm10, %xmm15, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm15
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm15
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vpsrldq	$8, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm15
	vpxor	%xmm10, %xmm15, %xmm10
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm13
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vmovaps	-56(%rsp), %xmm10
	vmovaps	%xmm10, (%rdi)
	vmovaps	-24(%rsp), %xmm10
	vmovaps	%xmm10, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm4, 64(%rdi)
	vmovdqa	%xmm5, 80(%rdi)
	vmovdqa	%xmm6, 96(%rdi)
	vmovdqa	%xmm7, 112(%rdi)
	vmovdqa	%xmm8, 128(%rdi)
	vmovdqa	%xmm9, 144(%rdi)
	vmovaps	-40(%rsp), %xmm2
	vmovaps	%xmm2, 160(%rdi)
	vmovdqa	%xmm11, 176(%rdi)
	vmovdqa	%xmm12, 192(%rdi)
	vmovdqa	%xmm14, 208(%rdi)
	vmovdqa	%xmm0, 224(%rdi)
	vmovdqa	%xmm1, 240(%rdi)
	vmovaps	-72(%rsp), %xmm0
	vmovaps	%xmm0, 256(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$16, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes128gcm_skylake_init, .Lfunc_end0-haberdashery_aes128gcm_skylake_init
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
	.section	.text.haberdashery_aes128gcm_skylake_encrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_skylake_encrypt,@function
haberdashery_aes128gcm_skylake_encrypt:
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
	subq	$392, %rsp
	.cfi_def_cfa_offset 448
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	448(%rsp), %r15
	xorl	%eax, %eax
	cmpq	464(%rsp), %r15
	jne	.LBB1_40
	cmpq	$16, 480(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	orb	%r10b, %r11b
	jne	.LBB1_40
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483647, %r10
	setae	%r10b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r10b, %dl
	jne	.LBB1_40
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm13, %xmm13, %xmm13
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
	vmovdqa	176(%rdi), %xmm1
	vmovdqa	192(%rdi), %xmm2
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm4
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
	vmovdqa	240(%rdi), %xmm5
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	256(%rdi), %xmm6
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
	vpxor	%xmm2, %xmm0, %xmm13
	cmpq	$16, %rsi
	jae	.LBB1_7
	jmp	.LBB1_12
.LBB1_19:
	testq	%r15, %r15
	jne	.LBB1_24
	jmp	.LBB1_39
.LBB1_5:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB1_12
.LBB1_7:
	vmovdqa	176(%rdi), %xmm0
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB1_8
	cmpq	$16, %rdx
	jae	.LBB1_10
.LBB1_13:
	testq	%rdx, %rdx
	je	.LBB1_20
.LBB1_14:
	vmovdqa	%xmm13, 16(%rsp)
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
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	16(%rsp), %xmm2
	jb	.LBB1_40
	movq	%r12, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	176(%r12), %xmm1
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
	vpxor	%xmm0, %xmm2, %xmm13
	jmp	.LBB1_24
.LBB1_8:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
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
	vpxor	%xmm1, %xmm3, %xmm13
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB1_13
.LBB1_10:
	vmovdqa	.LCPI1_2(%rip), %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	.p2align	4, 0x90
.LBB1_11:
	vmovdqu	(%rcx), %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm13, %xmm3
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
	vpxor	%xmm3, %xmm5, %xmm13
	cmpq	$15, %rsi
	ja	.LBB1_11
.LBB1_12:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_14
.LBB1_20:
	testq	%r15, %r15
	je	.LBB1_39
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_40
.LBB1_24:
	movq	456(%rsp), %rdx
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI1_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI1_1(%rip), %xmm1, %xmm15
	cmpq	$96, %r15
	jb	.LBB1_25
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm15, %xmm2
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm7
	vpaddd	.LCPI1_9(%rip), %xmm1, %xmm15
	vpshufb	%xmm0, %xmm7, %xmm7
	vmovdqa	(%rdi), %xmm1
	vmovaps	16(%rdi), %xmm10
	vmovdqa	32(%rdi), %xmm14
	vmovaps	48(%rdi), %xmm8
	vpxor	%xmm2, %xmm1, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	%xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm1, %xmm5
	vpxor	%xmm6, %xmm1, %xmm6
	vpxor	%xmm7, %xmm1, %xmm9
	vmovaps	%xmm8, %xmm7
	vmovaps	%xmm10, 240(%rsp)
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm9, %xmm9
	#NO_APP
	vmovaps	64(%rdi), %xmm8
	vmovaps	%xmm8, 336(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm9, %xmm9
	#NO_APP
	vmovaps	80(%rdi), %xmm8
	vmovaps	%xmm8, 320(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm9, %xmm9
	#NO_APP
	vmovaps	96(%rdi), %xmm8
	vmovaps	%xmm8, 304(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rdi), %xmm8
	vmovaps	%xmm8, 288(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm9, %xmm9
	#NO_APP
	vmovaps	128(%rdi), %xmm8
	vmovaps	%xmm8, 272(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm9, %xmm9
	#NO_APP
	vmovaps	144(%rdi), %xmm8
	vmovaps	%xmm8, 256(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm9, %xmm9
	#NO_APP
	vmovdqa	160(%rdi), %xmm8
	vmovdqa	%xmm8, %xmm12
	#APP
	vaesenclast	%xmm8, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm4, %xmm4
	vaesenclast	%xmm8, %xmm5, %xmm5
	vaesenclast	%xmm8, %xmm6, %xmm6
	vaesenclast	%xmm8, %xmm9, %xmm9
	#NO_APP
	vpxor	(%r9), %xmm2, %xmm11
	vpxor	16(%r9), %xmm3, %xmm3
	vpxor	32(%r9), %xmm4, %xmm4
	vpxor	48(%r9), %xmm5, %xmm2
	vmovdqa	%xmm3, %xmm5
	vpxor	64(%r9), %xmm6, %xmm8
	vmovdqa	%xmm4, %xmm6
	vpxor	80(%r9), %xmm9, %xmm10
	vmovdqu	%xmm11, (%rdx)
	vmovdqu	%xmm3, 16(%rdx)
	vmovdqu	%xmm4, 32(%rdx)
	vmovdqu	%xmm2, 48(%rdx)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm8, 64(%rdx)
	vmovdqu	%xmm10, 80(%rdx)
	cmpq	$96, %rbx
	jb	.LBB1_34
	vmovaps	176(%rdi), %xmm3
	vmovaps	%xmm3, 224(%rsp)
	vmovaps	192(%rdi), %xmm3
	vmovaps	%xmm3, 208(%rsp)
	vmovaps	208(%rdi), %xmm3
	vmovaps	%xmm3, 192(%rsp)
	vmovaps	224(%rdi), %xmm3
	vmovaps	%xmm3, 176(%rsp)
	vmovaps	240(%rdi), %xmm3
	vmovaps	%xmm3, 160(%rsp)
	vmovdqa	256(%rdi), %xmm3
	vmovdqa	%xmm3, 144(%rsp)
	vmovaps	%xmm7, 128(%rsp)
	vmovdqa	%xmm1, 96(%rsp)
	vmovdqa	%xmm14, 112(%rsp)
	vmovdqa	%xmm12, 80(%rsp)
	.p2align	4, 0x90
.LBB1_33:
	vmovdqa	%xmm6, 352(%rsp)
	vmovdqa	%xmm5, 48(%rsp)
	vmovdqa	%xmm15, 32(%rsp)
	vpshufb	%xmm0, %xmm15, %xmm3
	vpaddd	.LCPI1_1(%rip), %xmm15, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm4
	vpaddd	.LCPI1_4(%rip), %xmm15, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vpaddd	.LCPI1_5(%rip), %xmm15, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm15, %xmm9
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovdqa	%xmm13, %xmm1
	vpaddd	.LCPI1_7(%rip), %xmm15, %xmm13
	vmovdqa	%xmm0, %xmm12
	vpshufb	%xmm0, %xmm13, %xmm0
	vpshufb	%xmm12, %xmm11, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vmovdqa	%xmm1, 16(%rsp)
	vpshufb	%xmm12, %xmm10, %xmm1
	vmovdqa	96(%rsp), %xmm7
	vpxor	%xmm3, %xmm7, %xmm10
	vpxor	%xmm4, %xmm7, %xmm13
	vpxor	%xmm5, %xmm7, %xmm14
	vpxor	%xmm6, %xmm7, %xmm15
	vpxor	%xmm7, %xmm9, %xmm3
	vpxor	%xmm0, %xmm7, %xmm4
	vmovaps	240(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm9, %xmm9, %xmm9
	vmovaps	224(%rsp), %xmm11
	vmovdqa	%xmm2, %xmm7
	vmovaps	112(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm12, %xmm8, %xmm0
	vmovaps	208(%rsp), %xmm8
	vmovaps	128(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm8, %xmm0, %xmm1
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm8, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm8, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm12, %xmm7, %xmm0
	vmovaps	192(%rsp), %xmm2
	vmovaps	336(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	#NO_APP
	vmovdqa	352(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovaps	176(%rsp), %xmm2
	vmovaps	320(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm10, %xmm10
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	#NO_APP
	vmovdqa	48(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovaps	160(%rsp), %xmm2
	vmovaps	304(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	#NO_APP
	vmovaps	288(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm4, %xmm4
	#NO_APP
	vmovdqa	144(%rsp), %xmm1
	vmovaps	272(%rsp), %xmm2
	vmovaps	16(%rsp), %xmm7
	#APP
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm5, %xmm1, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpunpckhqdq	%xmm1, %xmm5, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vmovaps	256(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm4, %xmm4
	#NO_APP
	vmovaps	80(%rsp), %xmm2
	#APP
	vaesenclast	%xmm2, %xmm10, %xmm10
	vaesenclast	%xmm2, %xmm13, %xmm13
	vaesenclast	%xmm2, %xmm14, %xmm14
	vaesenclast	%xmm2, %xmm15, %xmm15
	vaesenclast	%xmm2, %xmm3, %xmm3
	vaesenclast	%xmm2, %xmm4, %xmm4
	#NO_APP
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm0
	vpxor	(%rcx), %xmm10, %xmm11
	vpxor	16(%rcx), %xmm13, %xmm5
	vpxor	32(%rcx), %xmm14, %xmm6
	vpxor	48(%rcx), %xmm15, %xmm2
	vmovdqa	32(%rsp), %xmm15
	vpxor	64(%rcx), %xmm3, %xmm8
	vpxor	80(%rcx), %xmm4, %xmm10
	vpxor	%xmm0, %xmm1, %xmm13
	vmovdqa	%xmm12, %xmm0
	addq	$96, %rcx
	vmovdqu	%xmm11, (%rax)
	vmovdqu	%xmm5, 16(%rax)
	vmovdqu	%xmm6, 32(%rax)
	vmovdqu	%xmm2, 48(%rax)
	vmovdqu	%xmm8, 64(%rax)
	vmovdqu	%xmm10, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI1_8(%rip), %xmm15, %xmm15
	cmpq	$95, %rbx
	ja	.LBB1_33
.LBB1_34:
	vpshufb	%xmm0, %xmm11, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vpshufb	%xmm0, %xmm5, %xmm3
	vpshufb	%xmm0, %xmm6, %xmm4
	vpshufb	%xmm0, %xmm2, %xmm5
	vpshufb	%xmm0, %xmm8, %xmm6
	vpshufb	%xmm0, %xmm10, %xmm7
	vmovdqa	176(%rdi), %xmm8
	vmovdqa	192(%rdi), %xmm9
	vmovdqa	208(%rdi), %xmm10
	vmovdqa	224(%rdi), %xmm11
	vmovdqa	240(%rdi), %xmm2
	vmovdqa	256(%rdi), %xmm0
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
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
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
	vpxor	%xmm2, %xmm0, %xmm13
	movq	%rax, %rdx
	movq	%rcx, %r9
	cmpq	$16, %rbx
	jae	.LBB1_35
.LBB1_27:
	movq	%rdx, %r14
	movq	%r9, %rsi
	jmp	.LBB1_28
.LBB1_25:
	movq	%r15, %rbx
	cmpq	$16, %rbx
	jb	.LBB1_27
.LBB1_35:
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	48(%rdi), %xmm3
	vmovdqa	64(%rdi), %xmm4
	vmovdqa	80(%rdi), %xmm5
	vmovdqa	96(%rdi), %xmm6
	vmovdqa	112(%rdi), %xmm7
	vmovdqa	128(%rdi), %xmm8
	vmovdqa	144(%rdi), %xmm9
	vmovdqa	160(%rdi), %xmm10
	vmovdqa	176(%rdi), %xmm11
	vmovdqa	.LCPI1_2(%rip), %xmm12
	vpbroadcastq	.LCPI1_13(%rip), %xmm14
	.p2align	4, 0x90
.LBB1_36:
	vmovdqa	%xmm15, %xmm2
	vpshufb	%xmm12, %xmm15, %xmm15
	vpxor	32(%rsp), %xmm15, %xmm15
	vaesenc	16(%rsp), %xmm15, %xmm15
	vaesenc	48(%rsp), %xmm15, %xmm15
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenclast	%xmm10, %xmm15, %xmm15
	vpxor	(%r9), %xmm15, %xmm15
	vmovdqu	%xmm15, (%rdx)
	vpshufb	%xmm12, %xmm15, %xmm15
	vpxor	%xmm15, %xmm13, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm11, %xmm13
	vpclmulqdq	$1, %xmm15, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm11, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm11, %xmm13
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm13
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
	vpshufd	$78, %xmm1, %xmm13
	vpxor	%xmm0, %xmm13, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm13
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_1(%rip), %xmm2, %xmm15
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB1_36
.LBB1_28:
	testq	%rbx, %rbx
	je	.LBB1_39
	vmovdqa	%xmm13, 16(%rsp)
	movq	%r8, 48(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rdi, %r13
	movq	%rax, %rdi
	movq	%rbx, %rdx
	vmovdqa	%xmm15, 32(%rsp)
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
	movq	%r13, %r12
	vaesenclast	160(%r13), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	testq	%r15, %r15
	je	.LBB1_30
	vmovaps	32(%rsp), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	368(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	movq	%r12, %rdi
	vmovdqa	176(%r12), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	jmp	.LBB1_38
.LBB1_15:
	movq	%r12, %rdi
	vmovdqa	176(%r12), %xmm1
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
	vpxor	%xmm0, %xmm2, %xmm13
	movq	%rbx, %r8
	jmp	.LBB1_39
.LBB1_30:
	movq	%r12, %rdi
	vmovdqa	176(%r12), %xmm0
	vmovdqa	32(%rsp), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	vpxor	16(%rsp), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
.LBB1_38:
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
	vpxor	%xmm0, %xmm2, %xmm13
	movq	48(%rsp), %r8
.LBB1_39:
	movq	472(%rsp), %rax
	vmovdqa	176(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm13, %xmm1
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
	vmovdqa	64(%rsp), %xmm2
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
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm3, %xmm3
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqu	%xmm0, (%rax)
	movl	$1, %eax
.LBB1_40:
	addq	$392, %rsp
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
	.size	haberdashery_aes128gcm_skylake_encrypt, .Lfunc_end1-haberdashery_aes128gcm_skylake_encrypt
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
	.section	.text.haberdashery_aes128gcm_skylake_decrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_skylake_decrypt,@function
haberdashery_aes128gcm_skylake_decrypt:
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
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	480(%rsp), %r15
	xorl	%eax, %eax
	cmpq	512(%rsp), %r15
	jne	.LBB2_38
	cmpq	$16, 496(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	movq	%r15, %rbx
	shrq	$5, %rbx
	cmpq	$2147483647, %rbx
	setae	%bl
	orb	%r10b, %r11b
	orb	%bl, %r11b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r11b, %dl
	jne	.LBB2_38
	movq	488(%rsp), %r12
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	vpxor	%xmm12, %xmm12, %xmm12
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
	vmovdqa	176(%rdi), %xmm1
	vmovdqa	192(%rdi), %xmm2
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm4
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
	vmovdqa	240(%rdi), %xmm5
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	256(%rdi), %xmm6
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
	vpxor	%xmm2, %xmm0, %xmm12
	cmpq	$16, %rsi
	jae	.LBB2_16
	jmp	.LBB2_8
.LBB2_6:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB2_8
.LBB2_16:
	vmovdqa	176(%rdi), %xmm0
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB2_17
	cmpq	$16, %rdx
	jae	.LBB2_19
.LBB2_9:
	testq	%rdx, %rdx
	je	.LBB2_3
.LBB2_10:
	vmovdqa	%xmm12, 16(%rsp)
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
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	16(%rsp), %xmm2
	jb	.LBB2_38
	movq	%r13, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	176(%r13), %xmm1
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
	vpxor	%xmm0, %xmm2, %xmm12
	jmp	.LBB2_23
.LBB2_17:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI2_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm12, %xmm1
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
	vpxor	%xmm1, %xmm3, %xmm12
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
	vpxor	%xmm3, %xmm12, %xmm3
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
	vpxor	%xmm3, %xmm5, %xmm12
	cmpq	$15, %rsi
	ja	.LBB2_20
.LBB2_8:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_10
.LBB2_3:
	testq	%r15, %r15
	je	.LBB2_12
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_38
.LBB2_23:
	movq	504(%rsp), %rax
	vmovdqa	80(%rsp), %xmm0
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm0, %xmm14
	cmpq	$96, %r15
	jb	.LBB2_24
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	vmovaps	128(%rdi), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	144(%rdi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	160(%rdi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	176(%rdi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	movq	%r15, %rbx
	vmovdqa	256(%rdi), %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	.p2align	4, 0x90
.LBB2_28:
	vmovdqa	%xmm14, (%rsp)
	vmovdqu	(%r9), %xmm9
	vmovdqa	%xmm9, 48(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	48(%r9), %xmm7
	vmovdqu	64(%r9), %xmm6
	vmovdqa	%xmm6, 384(%rsp)
	vmovdqu	80(%r9), %xmm8
	vmovdqa	%xmm8, 64(%rsp)
	vmovdqa	.LCPI2_2(%rip), %xmm2
	vpshufb	%xmm2, %xmm14, %xmm0
	vpaddd	.LCPI2_1(%rip), %xmm14, %xmm1
	vpshufb	%xmm2, %xmm1, %xmm1
	vpaddd	.LCPI2_4(%rip), %xmm14, %xmm3
	vpshufb	%xmm2, %xmm3, %xmm3
	vpaddd	.LCPI2_5(%rip), %xmm14, %xmm4
	vpshufb	%xmm2, %xmm4, %xmm4
	vpaddd	.LCPI2_6(%rip), %xmm14, %xmm10
	vpshufb	%xmm2, %xmm10, %xmm10
	vpaddd	.LCPI2_7(%rip), %xmm14, %xmm11
	vpshufb	%xmm2, %xmm11, %xmm5
	vpshufb	%xmm2, %xmm9, %xmm11
	vpxor	%xmm11, %xmm12, %xmm9
	vmovdqa	%xmm9, 368(%rsp)
	vpshufb	%xmm2, %xmm8, %xmm9
	vmovdqa	96(%rsp), %xmm8
	vpxor	%xmm0, %xmm8, %xmm11
	vpxor	%xmm1, %xmm8, %xmm12
	vpxor	%xmm3, %xmm8, %xmm13
	vpxor	%xmm4, %xmm8, %xmm14
	vpxor	%xmm10, %xmm8, %xmm15
	vpxor	%xmm5, %xmm8, %xmm10
	vmovaps	352(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm10, %xmm10
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	336(%rsp), %xmm5
	vmovaps	192(%rsp), %xmm8
	#APP
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm2, %xmm6, %xmm1
	vmovaps	320(%rsp), %xmm6
	vmovaps	176(%rsp), %xmm8
	#APP
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm2, %xmm7, %xmm1
	vmovaps	304(%rsp), %xmm6
	vmovaps	160(%rsp), %xmm8
	#APP
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vmovdqa	16(%rsp), %xmm1
	vpshufb	%xmm2, %xmm1, %xmm1
	vmovaps	288(%rsp), %xmm6
	vmovaps	144(%rsp), %xmm8
	#APP
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vmovdqu	16(%r9), %xmm1
	vpshufb	%xmm2, %xmm1, %xmm5
	vmovaps	272(%rsp), %xmm8
	vmovaps	128(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovaps	256(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm10, %xmm10
	#NO_APP
	vmovdqa	240(%rsp), %xmm6
	vmovaps	112(%rsp), %xmm8
	vmovdqa	368(%rsp), %xmm2
	#APP
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpunpcklqdq	%xmm3, %xmm6, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpunpckhqdq	%xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpbroadcastq	.LCPI2_11(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vmovaps	224(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovaps	208(%rsp), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm11, %xmm11
	vaesenclast	%xmm4, %xmm12, %xmm12
	vaesenclast	%xmm4, %xmm13, %xmm13
	vaesenclast	%xmm4, %xmm14, %xmm14
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm10, %xmm10
	#NO_APP
	vpxor	48(%rsp), %xmm11, %xmm4
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	16(%rsp), %xmm13, %xmm5
	vpxor	%xmm7, %xmm14, %xmm6
	vmovdqa	(%rsp), %xmm14
	vpxor	384(%rsp), %xmm15, %xmm8
	vmovdqu	%xmm4, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm5, 32(%rax)
	vmovdqu	%xmm6, 48(%rax)
	vpxor	64(%rsp), %xmm10, %xmm1
	vmovdqu	%xmm8, 64(%rax)
	vmovdqu	%xmm1, 80(%rax)
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm12
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI2_8(%rip), %xmm14, %xmm14
	cmpq	$95, %rbx
	ja	.LBB2_28
	vmovdqa	%xmm12, %xmm1
	cmpq	$16, %rbx
	jb	.LBB2_26
.LBB2_29:
	vmovdqa	176(%rdi), %xmm0
	vmovaps	(%rdi), %xmm2
	vmovaps	%xmm2, 16(%rsp)
	vmovaps	16(%rdi), %xmm2
	vmovaps	%xmm2, (%rsp)
	vmovaps	32(%rdi), %xmm2
	vmovaps	%xmm2, 64(%rsp)
	vmovdqa	48(%rdi), %xmm2
	vmovdqa	%xmm2, 48(%rsp)
	vmovdqa	64(%rdi), %xmm5
	vmovdqa	80(%rdi), %xmm6
	vmovdqa	96(%rdi), %xmm7
	vmovdqa	112(%rdi), %xmm8
	vmovdqa	128(%rdi), %xmm9
	vmovdqa	144(%rdi), %xmm10
	movq	%rdi, %r13
	vmovdqa	160(%rdi), %xmm11
	vmovdqa	.LCPI2_2(%rip), %xmm12
	vpbroadcastq	.LCPI2_11(%rip), %xmm13
	.p2align	4, 0x90
.LBB2_30:
	vmovdqu	(%r9), %xmm15
	vmovdqa	%xmm14, %xmm4
	vpshufb	%xmm12, %xmm15, %xmm14
	vpxor	%xmm1, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm0, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm0, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm14, %xmm0, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufd	$78, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm12, %xmm4, %xmm3
	vpxor	16(%rsp), %xmm3, %xmm3
	vaesenc	(%rsp), %xmm3, %xmm3
	vaesenc	64(%rsp), %xmm3, %xmm3
	vaesenc	48(%rsp), %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vmovdqu	%xmm3, (%rax)
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI2_1(%rip), %xmm4, %xmm14
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB2_30
	jmp	.LBB2_31
.LBB2_24:
	movq	%r15, %rbx
	vmovdqa	%xmm12, %xmm1
	cmpq	$16, %rbx
	jae	.LBB2_29
.LBB2_26:
	movq	%rdi, %r13
	movq	%rax, %r14
.LBB2_31:
	vmovdqa	%xmm1, 16(%rsp)
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
	vmovdqa	%xmm14, (%rsp)
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
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	%xmm1, (%rsp)
	vaesenclast	160(%r13), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r12
	vmovdqa	(%rsp), %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
	movq	488(%rsp), %r12
.LBB2_33:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	%xmm2, 400(%rsp)
	vmovdqa	%xmm1, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	400(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.LBB2_34
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	movq	%r13, %rdi
	vmovdqa	176(%r13), %xmm1
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
	vpxor	%xmm0, %xmm2, %xmm12
	movq	%rbp, %r8
	jmp	.LBB2_36
.LBB2_11:
	movq	%r13, %rdi
	vmovdqa	176(%r13), %xmm1
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
	vpxor	%xmm0, %xmm2, %xmm12
	movq	%rbx, %r8
.LBB2_12:
	vmovdqu	(%r12), %xmm5
	jmp	.LBB2_37
.LBB2_34:
	movq	%r13, %rdi
	movq	%rbp, %r8
	vmovdqa	16(%rsp), %xmm12
.LBB2_36:
	vmovdqa	(%rsp), %xmm5
.LBB2_37:
	vmovdqa	176(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm12, %xmm1
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
	vmovdqa	80(%rsp), %xmm2
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
	addq	$424, %rsp
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
	.size	haberdashery_aes128gcm_skylake_decrypt, .Lfunc_end2-haberdashery_aes128gcm_skylake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes128gcm_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_aes128gcm_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_skylake_is_supported,@function
haberdashery_aes128gcm_skylake_is_supported:
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
	andl	$9175337, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes128gcm_skylake_is_supported, .Lfunc_end3-haberdashery_aes128gcm_skylake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

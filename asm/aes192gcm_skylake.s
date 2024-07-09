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
	.section	.text.haberdashery_aes192gcm_skylake_init,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylake_init
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylake_init,@function
haberdashery_aes192gcm_skylake_init:
	.cfi_startproc
	cmpq	$24, %rdx
	jne	.LBB0_2
	vmovdqu	(%rsi), %xmm2
	vmovq	16(%rsi), %xmm0
	vpslldq	$4, %xmm2, %xmm1
	vaeskeygenassist	$1, %xmm0, %xmm3
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$12, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$85, %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm1, %xmm3
	vpslldq	$4, %xmm0, %xmm4
	vpxor	%xmm0, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm8
	vmovdqa	%xmm8, -104(%rsp)
	vpalignr	$8, %xmm1, %xmm4, %xmm13
	vmovdqa	%xmm13, -24(%rsp)
	vaeskeygenassist	$2, %xmm4, %xmm0
	vpslldq	$4, %xmm1, %xmm3
	vpslldq	$8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpslldq	$12, %xmm1, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$85, %xmm0, %xmm0
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	vpshufd	$255, %xmm3, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm3, %xmm1
	vaeskeygenassist	$4, %xmm0, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpshufd	$85, %xmm4, %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$255, %xmm1, %xmm4
	vpslldq	$4, %xmm0, %xmm5
	vpxor	%xmm0, %xmm5, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm5
	vmovdqa	%xmm5, -40(%rsp)
	vpalignr	$8, %xmm1, %xmm4, %xmm14
	vmovdqa	%xmm14, -56(%rsp)
	vaeskeygenassist	$8, %xmm4, %xmm0
	vpslldq	$4, %xmm1, %xmm6
	vpslldq	$8, %xmm1, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm1, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$85, %xmm0, %xmm0
	vpxor	%xmm1, %xmm6, %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpshufd	$255, %xmm6, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm6, %xmm1
	vaeskeygenassist	$16, %xmm0, %xmm4
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpslldq	$12, %xmm6, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpshufd	$85, %xmm4, %xmm4
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$255, %xmm1, %xmm4
	vpslldq	$4, %xmm0, %xmm7
	vpxor	%xmm0, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm7
	vmovdqa	%xmm7, -72(%rsp)
	vpalignr	$8, %xmm1, %xmm4, %xmm15
	vmovdqa	%xmm15, -88(%rsp)
	vaeskeygenassist	$32, %xmm4, %xmm0
	vpslldq	$4, %xmm1, %xmm9
	vpslldq	$8, %xmm1, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpslldq	$12, %xmm1, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpshufd	$85, %xmm0, %xmm0
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm9
	vpshufd	$255, %xmm9, %xmm0
	vpslldq	$4, %xmm4, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm9, %xmm1
	vaeskeygenassist	$64, %xmm0, %xmm4
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpslldq	$12, %xmm9, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpshufd	$85, %xmm4, %xmm4
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$255, %xmm1, %xmm4
	vpslldq	$4, %xmm0, %xmm10
	vpxor	%xmm0, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpunpcklqdq	%xmm1, %xmm0, %xmm10
	vpalignr	$8, %xmm1, %xmm4, %xmm11
	vaeskeygenassist	$128, %xmm4, %xmm0
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm12
	vpxor	%xmm4, %xmm12, %xmm4
	vpslldq	$12, %xmm1, %xmm12
	vpxor	%xmm4, %xmm12, %xmm4
	vpshufd	$85, %xmm0, %xmm0
	vpxor	%xmm1, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm12
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
	vmovaps	-104(%rsp), %xmm2
	vmovaps	%xmm2, 16(%rdi)
	vmovaps	-24(%rsp), %xmm2
	vmovaps	%xmm2, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovaps	-40(%rsp), %xmm2
	vmovaps	%xmm2, 64(%rdi)
	vmovaps	-56(%rsp), %xmm2
	vmovaps	%xmm2, 80(%rdi)
	vmovdqa	%xmm6, 96(%rdi)
	vmovaps	-72(%rsp), %xmm2
	vmovaps	%xmm2, 112(%rdi)
	vmovaps	-88(%rsp), %xmm2
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
	.size	haberdashery_aes192gcm_skylake_init, .Lfunc_end0-haberdashery_aes192gcm_skylake_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI1_1:
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
.LCPI1_2:
	.long	1
	.long	0
	.long	0
	.long	0
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_12:
	.long	16777216
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_13:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes192gcm_skylake_encrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylake_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylake_encrypt,@function
haberdashery_aes192gcm_skylake_encrypt:
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
	movq	496(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	512(%rsp), %r13
	jne	.LBB1_47
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_47
	cmpq	$16, 528(%rsp)
	jne	.LBB1_47
	cmpq	$12, %rdx
	jne	.LBB1_47
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_47
	movq	%r9, %r15
	movq	%rdi, %rbx
	vmovq	4(%rsi), %xmm0
	vpbroadcastd	.LCPI1_12(%rip), %xmm1
	vpinsrd	$0, (%rsi), %xmm1, %xmm1
	vpshufd	$80, %xmm0, %xmm0
	vpblendd	$6, %xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	testq	%r14, %r14
	je	.LBB1_23
	vmovdqa	208(%rbx), %xmm13
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$96, %r14
	jb	.LBB1_7
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm8
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm6
	vpshufb	%xmm0, %xmm2, %xmm9
	vpshufb	%xmm0, %xmm3, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm10
	vpshufb	%xmm0, %xmm5, %xmm4
	vpshufb	%xmm0, %xmm8, %xmm5
	vmovdqa	224(%rbx), %xmm1
	vmovdqa	240(%rbx), %xmm2
	vmovdqa	256(%rbx), %xmm3
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm8
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vmovdqa	%xmm13, %xmm14
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm1, %xmm12
	vpxor	%xmm8, %xmm12, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm4, %xmm12
	vpclmulqdq	$0, %xmm10, %xmm2, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm2, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm13
	vpxor	%xmm5, %xmm13, %xmm5
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm13
	vpxor	%xmm4, %xmm13, %xmm13
	vmovdqa	272(%rbx), %xmm4
	vpxor	%xmm13, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm13
	vpxor	%xmm5, %xmm13, %xmm13
	vmovdqa	288(%rbx), %xmm5
	vpclmulqdq	$17, %xmm10, %xmm2, %xmm10
	vpxor	%xmm13, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm13
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm12, %xmm10
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm8
	vpxor	%xmm8, %xmm12, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpxor	%xmm6, %xmm10, %xmm9
	addq	$96, %rcx
	leaq	-96(%r14), %rax
	vmovdqa	%xmm14, %xmm6
	cmpq	$96, %rax
	jb	.LBB1_16
	.p2align	4, 0x90
.LBB1_15:
	vmovdqu	(%rcx), %xmm10
	vmovdqu	32(%rcx), %xmm11
	vmovdqu	48(%rcx), %xmm12
	vmovdqu	64(%rcx), %xmm13
	vmovdqu	80(%rcx), %xmm14
	vpslldq	$8, %xmm8, %xmm15
	vpxor	%xmm7, %xmm15, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpbroadcastq	.LCPI1_13(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm10, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm11, %xmm7
	vpshufb	%xmm0, %xmm12, %xmm8
	vpshufb	%xmm0, %xmm13, %xmm10
	vpshufb	%xmm0, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm1, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm10, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm10, %xmm1, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm10, %xmm1, %xmm10
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm7, %xmm3, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm3, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm8
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm7, %xmm3, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm3, %xmm7
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm4, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$1, %xmm13, %xmm4, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm7, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm13, %xmm4, %xmm7
	vpxor	%xmm7, %xmm8, %xmm12
	vpclmulqdq	$0, %xmm9, %xmm5, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm9, %xmm5, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm9, %xmm5, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm9, %xmm5, %xmm9
	vpxor	%xmm9, %xmm12, %xmm9
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB1_15
.LBB1_16:
	vpslldq	$8, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm6, %xmm13
	cmpq	$16, %rax
	jae	.LBB1_17
.LBB1_9:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	vmovdqa	%xmm0, (%rsp)
	jne	.LBB1_11
	jmp	.LBB1_24
.LBB1_23:
	vmovdqa	208(%rbx), %xmm13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	testq	%r13, %r13
	jne	.LBB1_26
	jmp	.LBB1_46
.LBB1_7:
	movq	%r14, %rax
	cmpq	$16, %rax
	jb	.LBB1_9
.LBB1_17:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB1_18
	cmpq	$16, %rdx
	jae	.LBB1_20
.LBB1_10:
	testq	%rdx, %rdx
	vmovdqa	%xmm0, (%rsp)
	je	.LBB1_24
.LBB1_11:
	vmovdqa	%xmm13, 16(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_45
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovdqa	16(%rsp), %xmm13
	jb	.LBB1_47
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	jmp	.LBB1_26
.LBB1_18:
	vmovdqa	%xmm0, %xmm1
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_20:
	vmovdqa	%xmm0, %xmm4
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm4
	cmpq	$15, %rax
	ja	.LBB1_21
	movq	%rax, %rdx
	vmovdqa	%xmm4, %xmm0
	testq	%rdx, %rdx
	vmovdqa	%xmm0, (%rsp)
	jne	.LBB1_11
.LBB1_24:
	testq	%r13, %r13
	je	.LBB1_46
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB1_47
.LBB1_26:
	movq	504(%rsp), %rdx
	vmovdqa	112(%rsp), %xmm0
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm1
	vpaddd	.LCPI1_2(%rip), %xmm1, %xmm0
	cmpq	$96, %r13
	jb	.LBB1_27
	leaq	96(%r15), %rax
	vmovdqa	.LCPI1_1(%rip), %xmm3
	vpshufb	%xmm3, %xmm0, %xmm2
	vmovdqa	%xmm3, %xmm0
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm3
	vpshufb	%xmm0, %xmm3, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm0, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm6
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpaddd	.LCPI1_9(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 64(%rsp)
	vmovdqa	(%rbx), %xmm9
	vmovaps	16(%rbx), %xmm1
	vmovdqa	32(%rbx), %xmm11
	vmovaps	48(%rbx), %xmm14
	vpxor	%xmm2, %xmm9, %xmm2
	vpxor	%xmm3, %xmm9, %xmm3
	vpxor	%xmm4, %xmm9, %xmm4
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm6, %xmm9, %xmm8
	vpxor	%xmm7, %xmm9, %xmm10
	vmovaps	%xmm14, %xmm7
	vmovaps	%xmm1, 256(%rsp)
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm10, %xmm10
	#NO_APP
	vmovaps	64(%rbx), %xmm6
	vmovaps	%xmm6, 400(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	80(%rbx), %xmm6
	vmovaps	%xmm6, 384(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	96(%rbx), %xmm6
	vmovaps	%xmm6, 368(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	112(%rbx), %xmm6
	vmovaps	%xmm6, 352(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	128(%rbx), %xmm6
	vmovaps	%xmm6, 336(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	144(%rbx), %xmm6
	vmovaps	%xmm6, 320(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	160(%rbx), %xmm6
	vmovaps	%xmm6, 304(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	176(%rbx), %xmm6
	vmovaps	%xmm6, 288(%rsp)
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	#NO_APP
	vmovaps	192(%rbx), %xmm6
	vmovaps	%xmm6, 272(%rsp)
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm8, %xmm8
	vaesenclast	%xmm6, %xmm10, %xmm10
	#NO_APP
	vpxor	(%r15), %xmm2, %xmm6
	vxorps	16(%r15), %xmm3, %xmm14
	vpxor	32(%r15), %xmm4, %xmm1
	vpxor	48(%r15), %xmm5, %xmm5
	leaq	96(%rdx), %rcx
	vpxor	64(%r15), %xmm8, %xmm8
	vpxor	80(%r15), %xmm10, %xmm15
	vmovdqa	224(%rbx), %xmm12
	vmovdqa	240(%rbx), %xmm4
	vmovdqa	256(%rbx), %xmm3
	vmovdqa	272(%rbx), %xmm2
	vmovdqa	288(%rbx), %xmm10
	vmovdqu	%xmm6, (%rdx)
	vmovaps	%xmm14, 48(%rsp)
	vmovups	%xmm14, 16(%rdx)
	vmovdqa	%xmm1, %xmm14
	vmovdqu	%xmm1, 32(%rdx)
	vmovdqu	%xmm5, 48(%rdx)
	leaq	-96(%r13), %r12
	vmovdqu	%xmm8, 64(%rdx)
	vmovdqu	%xmm15, 80(%rdx)
	cmpq	$96, %r12
	vmovdqa	%xmm2, 192(%rsp)
	vmovdqa	%xmm3, 176(%rsp)
	jb	.LBB1_33
	vmovdqa	%xmm13, 16(%rsp)
	vmovdqa	64(%rsp), %xmm1
	vmovaps	%xmm7, 224(%rsp)
	vmovdqa	(%rsp), %xmm0
	vmovdqa	%xmm9, 240(%rsp)
	vmovdqa	%xmm11, 208(%rsp)
	vmovdqa	%xmm10, 160(%rsp)
	vmovdqa	%xmm4, 144(%rsp)
	vmovdqa	%xmm12, 128(%rsp)
	vmovdqa	%xmm14, %xmm2
	vmovdqa	48(%rsp), %xmm14
	vmovdqa	%xmm8, %xmm9
	.p2align	4, 0x90
.LBB1_36:
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	%xmm9, 80(%rsp)
	vmovdqa	%xmm2, 96(%rsp)
	vmovdqa	.LCPI1_1(%rip), %xmm9
	vpshufb	%xmm9, %xmm1, %xmm2
	vpaddd	.LCPI1_2(%rip), %xmm1, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm3
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm8
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm10
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm11
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm4
	vpshufb	%xmm9, %xmm4, %xmm12
	vpshufb	%xmm9, %xmm6, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpshufb	%xmm9, %xmm15, %xmm0
	vmovdqa	240(%rsp), %xmm4
	vpxor	%xmm2, %xmm4, %xmm6
	vpxor	%xmm3, %xmm4, %xmm15
	vpxor	%xmm4, %xmm8, %xmm2
	vpxor	%xmm4, %xmm10, %xmm8
	vpxor	%xmm4, %xmm11, %xmm3
	vpxor	%xmm4, %xmm12, %xmm10
	vmovaps	256(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm10, %xmm10
	#NO_APP
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm11, %xmm11, %xmm11
	vpxor	%xmm13, %xmm13, %xmm13
	vmovdqa	%xmm5, %xmm7
	vmovaps	16(%rsp), %xmm5
	vmovaps	208(%rsp), %xmm14
	#APP
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm15, %xmm15
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm4
	vpxor	%xmm4, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa	80(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	224(%rsp), %xmm5
	vmovaps	128(%rsp), %xmm14
	#APP
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm14, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vpshufb	%xmm9, %xmm7, %xmm0
	vmovaps	400(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovaps	384(%rsp), %xmm5
	vmovaps	144(%rsp), %xmm7
	#APP
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa	96(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	368(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovaps	352(%rsp), %xmm5
	vmovaps	176(%rsp), %xmm7
	#APP
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa	48(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	336(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovaps	320(%rsp), %xmm5
	vmovaps	192(%rsp), %xmm7
	#APP
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm0, %xmm4
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa	304(%rsp), %xmm4
	vmovaps	160(%rsp), %xmm5
	vmovaps	(%rsp), %xmm7
	#APP
	vaesenc	%xmm4, %xmm6, %xmm6
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm8, %xmm8
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm7, %xmm0
	vpxor	%xmm0, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm5, %xmm7, %xmm0
	vpxor	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm7, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm5, %xmm7, %xmm0
	vpxor	%xmm0, %xmm12, %xmm12
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpunpcklqdq	%xmm12, %xmm4, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpunpckhqdq	%xmm4, %xmm12, %xmm4
	vpxor	%xmm4, %xmm11, %xmm4
	vpbroadcastq	.LCPI1_13(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpshufd	$78, %xmm0, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovaps	288(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm10, %xmm10
	#NO_APP
	vmovaps	272(%rsp), %xmm5
	#APP
	vaesenclast	%xmm5, %xmm6, %xmm6
	vaesenclast	%xmm5, %xmm15, %xmm15
	vaesenclast	%xmm5, %xmm2, %xmm2
	vaesenclast	%xmm5, %xmm8, %xmm8
	vaesenclast	%xmm5, %xmm3, %xmm3
	vaesenclast	%xmm5, %xmm10, %xmm10
	#NO_APP
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	(%rax), %xmm6, %xmm6
	vpxor	16(%rax), %xmm15, %xmm14
	vpxor	32(%rax), %xmm2, %xmm2
	vpxor	48(%rax), %xmm8, %xmm5
	vpxor	64(%rax), %xmm3, %xmm9
	vpxor	80(%rax), %xmm10, %xmm15
	vpxor	%xmm0, %xmm4, %xmm0
	addq	$96, %rax
	vmovdqu	%xmm6, (%rcx)
	vmovdqu	%xmm14, 16(%rcx)
	vmovdqu	%xmm2, 32(%rcx)
	vmovdqu	%xmm5, 48(%rcx)
	vmovdqu	%xmm9, 64(%rcx)
	vmovdqu	%xmm15, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %r12
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm1
	cmpq	$95, %r12
	ja	.LBB1_36
	vmovdqa	%xmm2, %xmm8
	vmovdqa	128(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm11
	vmovdqa	.LCPI1_1(%rip), %xmm7
	vmovdqa	%xmm1, 64(%rsp)
	vmovdqa	16(%rsp), %xmm13
	vmovdqa	160(%rsp), %xmm10
	jmp	.LBB1_34
.LBB1_27:
	vmovdqa	%xmm0, 64(%rsp)
	movq	%r13, %r12
	vmovdqa	(%rsp), %xmm0
	movq	%r13, %rbp
	cmpq	$16, %r12
	jae	.LBB1_38
.LBB1_29:
	movq	%rdx, %r13
	movq	%r15, %rsi
	vmovdqa	64(%rsp), %xmm4
	jmp	.LBB1_30
.LBB1_33:
	vmovdqa	%xmm8, %xmm9
	vmovdqa	%xmm14, %xmm8
	vmovdqa	%xmm4, %xmm11
	vmovdqa	%xmm0, %xmm7
	vmovdqa	(%rsp), %xmm0
	vmovdqa	48(%rsp), %xmm14
.LBB1_34:
	vpshufb	%xmm7, %xmm6, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpshufb	%xmm7, %xmm14, %xmm2
	vpshufb	%xmm7, %xmm8, %xmm3
	vpshufb	%xmm7, %xmm5, %xmm4
	vpshufb	%xmm7, %xmm9, %xmm5
	vpshufb	%xmm7, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm12, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm12, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm12, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vmovdqa	176(%rsp), %xmm12
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vmovdqa	192(%rsp), %xmm11
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
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
	vpxor	%xmm2, %xmm0, %xmm0
	movq	%rcx, %rdx
	movq	%rax, %r15
	movq	%r13, %rbp
	cmpq	$16, %r12
	jb	.LBB1_29
.LBB1_38:
	vmovaps	(%rbx), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovaps	16(%rbx), %xmm1
	vmovaps	%xmm1, (%rsp)
	vmovaps	32(%rbx), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	48(%rbx), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovdqa	64(%rbx), %xmm1
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	80(%rbx), %xmm5
	vmovdqa	96(%rbx), %xmm6
	vmovdqa	112(%rbx), %xmm7
	vmovdqa	128(%rbx), %xmm8
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm10
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm12
	vmovdqa	.LCPI1_1(%rip), %xmm3
	vpbroadcastq	.LCPI1_13(%rip), %xmm15
	vmovdqa	64(%rsp), %xmm4
	.p2align	4, 0x90
.LBB1_39:
	vpshufb	%xmm3, %xmm4, %xmm14
	vpxor	48(%rsp), %xmm14, %xmm14
	vaesenc	(%rsp), %xmm14, %xmm14
	vaesenc	96(%rsp), %xmm14, %xmm14
	vaesenc	80(%rsp), %xmm14, %xmm14
	vaesenc	16(%rsp), %xmm14, %xmm14
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenclast	%xmm12, %xmm14, %xmm14
	vpxor	(%r15), %xmm14, %xmm14
	vmovdqu	%xmm14, (%rdx)
	vpshufb	%xmm3, %xmm14, %xmm14
	vpxor	%xmm0, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm13, %xmm0
	vpclmulqdq	$1, %xmm14, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm13, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm13, %xmm2
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	leaq	16(%r15), %rsi
	leaq	16(%rdx), %r13
	addq	$-16, %r12
	vpaddd	.LCPI1_2(%rip), %xmm4, %xmm4
	movq	%r13, %rdx
	movq	%rsi, %r15
	cmpq	$15, %r12
	ja	.LBB1_39
.LBB1_30:
	vmovdqa	%xmm4, 64(%rsp)
	testq	%r12, %r12
	vmovdqa	%xmm0, (%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	je	.LBB1_31
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%r12, %rdx
	callq	*%r15
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	(%rbx), %xmm0, %xmm0
	vaesenc	16(%rbx), %xmm0, %xmm0
	vaesenc	32(%rbx), %xmm0, %xmm0
	vaesenc	48(%rbx), %xmm0, %xmm0
	vaesenc	64(%rbx), %xmm0, %xmm0
	vaesenc	80(%rbx), %xmm0, %xmm0
	vaesenc	96(%rbx), %xmm0, %xmm0
	vaesenc	112(%rbx), %xmm0, %xmm0
	vaesenc	128(%rbx), %xmm0, %xmm0
	vaesenc	144(%rbx), %xmm0, %xmm0
	vaesenc	160(%rbx), %xmm0, %xmm0
	vaesenc	176(%rbx), %xmm0, %xmm0
	vaesenclast	192(%rbx), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	movq	%rbp, %r13
	vmovdqa	208(%rbx), %xmm13
	testq	%rbp, %rbp
	jne	.LBB1_42
	jmp	.LBB1_46
.LBB1_31:
	vmovdqa	%xmm0, 48(%rsp)
	movq	%rbp, %r13
	vmovdqa	208(%rbx), %xmm13
	testq	%rbp, %rbp
	je	.LBB1_46
.LBB1_42:
	vmovdqa	%xmm13, 16(%rsp)
	vmovdqa	48(%rsp), %xmm0
	vmovdqa	%xmm0, 416(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB1_43
	vmovdqa	32(%rsp), %xmm0
.LBB1_45:
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm2
	vmovdqa	16(%rsp), %xmm13
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm3
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	jmp	.LBB1_46
.LBB1_43:
	vmovdqa	16(%rsp), %xmm13
.LBB1_46:
	movq	520(%rsp), %rax
	vmovq	%r14, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqa	112(%rsp), %xmm3
	vpxor	(%rbx), %xmm3, %xmm3
	vaesenc	16(%rbx), %xmm3, %xmm3
	vaesenc	32(%rbx), %xmm3, %xmm3
	vaesenc	48(%rbx), %xmm3, %xmm3
	vaesenc	64(%rbx), %xmm3, %xmm3
	vaesenc	80(%rbx), %xmm3, %xmm3
	vaesenc	96(%rbx), %xmm3, %xmm3
	vaesenc	112(%rbx), %xmm3, %xmm3
	vaesenc	128(%rbx), %xmm3, %xmm3
	vaesenc	144(%rbx), %xmm3, %xmm3
	vaesenc	160(%rbx), %xmm3, %xmm3
	vaesenc	176(%rbx), %xmm3, %xmm3
	vaesenclast	192(%rbx), %xmm3, %xmm3
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqu	%xmm0, (%rax)
	movl	$1, %ebp
.LBB1_47:
	movl	%ebp, %eax
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
	.size	haberdashery_aes192gcm_skylake_encrypt, .Lfunc_end1-haberdashery_aes192gcm_skylake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI2_1:
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
.LCPI2_2:
	.long	1
	.long	0
	.long	0
	.long	0
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_11:
	.long	16777216
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_12:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes192gcm_skylake_decrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylake_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylake_decrypt,@function
haberdashery_aes192gcm_skylake_decrypt:
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
	subq	$472, %rsp
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	528(%rsp), %rbp
	xorl	%eax, %eax
	cmpq	560(%rsp), %rbp
	jne	.LBB2_47
	cmpq	$12, %rdx
	jne	.LBB2_47
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %rbp
	ja	.LBB2_47
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_47
	cmpq	$16, 544(%rsp)
	jne	.LBB2_47
	movq	%r9, %r15
	movq	%rdi, %rbx
	vmovq	4(%rsi), %xmm0
	vpbroadcastd	.LCPI2_11(%rip), %xmm1
	vpinsrd	$0, (%rsi), %xmm1, %xmm15
	vpshufd	$80, %xmm0, %xmm0
	testq	%r14, %r14
	je	.LBB2_6
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	208(%rbx), %xmm0
	vpxor	%xmm6, %xmm6, %xmm6
	cmpq	$96, %r14
	vmovdqa	%xmm15, (%rsp)
	jb	.LBB2_8
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vmovdqu	32(%rcx), %xmm4
	vmovdqu	48(%rcx), %xmm5
	vmovdqu	64(%rcx), %xmm6
	vmovdqu	80(%rcx), %xmm9
	vmovdqa	.LCPI2_1(%rip), %xmm1
	vpshufb	%xmm1, %xmm2, %xmm7
	vpshufb	%xmm1, %xmm3, %xmm10
	vpshufb	%xmm1, %xmm4, %xmm8
	vpshufb	%xmm1, %xmm5, %xmm11
	vpshufb	%xmm1, %xmm6, %xmm5
	vpshufb	%xmm1, %xmm9, %xmm6
	vmovdqa	224(%rbx), %xmm2
	vmovdqa	240(%rbx), %xmm3
	vmovdqa	256(%rbx), %xmm4
	vpclmulqdq	$0, %xmm6, %xmm0, %xmm9
	vpclmulqdq	$1, %xmm6, %xmm0, %xmm12
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm13
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm6, %xmm0, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm13
	vpxor	%xmm9, %xmm13, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm13
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm5
	vpxor	%xmm6, %xmm5, %xmm13
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm14
	vpxor	%xmm6, %xmm14, %xmm6
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm14
	vpxor	%xmm5, %xmm14, %xmm14
	vmovdqa	272(%rbx), %xmm5
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	288(%rbx), %xmm6
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm11
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpxor	%xmm8, %xmm13, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm7, %xmm6, %xmm14
	vpxor	%xmm14, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm6, %xmm9
	vpxor	%xmm9, %xmm13, %xmm9
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm6, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpxor	%xmm7, %xmm11, %xmm10
	addq	$96, %rcx
	leaq	-96(%r14), %rax
	cmpq	$96, %rax
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
	vpbroadcastq	.LCPI2_12(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpshufb	%xmm1, %xmm11, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm10
	vpshufb	%xmm1, %xmm12, %xmm7
	vpshufb	%xmm1, %xmm13, %xmm8
	vpshufb	%xmm1, %xmm14, %xmm9
	vpshufb	%xmm1, %xmm15, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm11
	vpclmulqdq	$0, %xmm9, %xmm2, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm2, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm2, %xmm9
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm7, %xmm4, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm7, %xmm4, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$17, %xmm8, %xmm3, %xmm8
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm7, %xmm4, %xmm13
	vpxor	%xmm13, %xmm8, %xmm8
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm1, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm7
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm5, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm5, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$16, %xmm13, %xmm5, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm7, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm7
	vpxor	%xmm7, %xmm11, %xmm10
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB2_14
.LBB2_15:
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vpsrldq	$8, %xmm9, %xmm2
	vpxor	%xmm2, %xmm10, %xmm2
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm6
	vmovdqa	(%rsp), %xmm15
	cmpq	$16, %rax
	jae	.LBB2_16
	jmp	.LBB2_10
.LBB2_6:
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r12d, %r12d
	vpxor	%xmm6, %xmm6, %xmm6
	vpblendd	$6, %xmm0, %xmm15, %xmm5
	movq	536(%rsp), %rsi
	testq	%rbp, %rbp
	jne	.LBB2_26
.LBB2_24:
	testq	%r12, %r12
	je	.LBB2_25
	vmovdqa	208(%rbx), %xmm4
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm6
	jmp	.LBB2_43
.LBB2_8:
	movq	%r14, %rax
	cmpq	$16, %rax
	jb	.LBB2_10
.LBB2_16:
	leaq	-16(%rax), %r12
	testb	$16, %r12b
	je	.LBB2_17
	cmpq	$16, %r12
	jae	.LBB2_19
.LBB2_11:
	testq	%r12, %r12
	je	.LBB2_12
.LBB2_21:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r12, %rdx
	vmovdqa	%xmm6, 32(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm6
	vmovdqa	16(%rsp), %xmm1
	jmp	.LBB2_22
.LBB2_17:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	movq	%r12, %rax
	cmpq	$16, %r12
	jb	.LBB2_11
.LBB2_19:
	vmovdqa	.LCPI2_1(%rip), %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	.p2align	4, 0x90
.LBB2_20:
	vmovdqu	(%rcx), %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
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
	addq	$-32, %rax
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
	vpxor	%xmm3, %xmm5, %xmm6
	cmpq	$15, %rax
	ja	.LBB2_20
.LBB2_10:
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB2_21
.LBB2_12:
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r12d, %r12d
.LBB2_22:
	vmovdqa	48(%rsp), %xmm0
	vpblendd	$6, %xmm0, %xmm15, %xmm5
	movq	536(%rsp), %rsi
	testq	%rbp, %rbp
	je	.LBB2_24
.LBB2_26:
	movabsq	$-68719476720, %rcx
	leaq	(%rcx,%rbp), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_47
	vpshufb	.LCPI2_1(%rip), %xmm5, %xmm0
	testq	%r12, %r12
	je	.LBB2_28
	vmovdqa	208(%rbx), %xmm8
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vpxor	%xmm1, %xmm1, %xmm1
	jmp	.LBB2_30
.LBB2_25:
	vmovdqa	208(%rbx), %xmm4
.LBB2_43:
	vmovdqu	(%rsi), %xmm7
	xorl	%ebp, %ebp
	jmp	.LBB2_46
.LBB2_28:
	vmovdqa	208(%rbx), %xmm8
.LBB2_30:
	movq	552(%rsp), %rax
	vpaddd	.LCPI2_2(%rip), %xmm0, %xmm3
	cmpq	$96, %rbp
	vmovdqa	%xmm8, 48(%rsp)
	vmovdqa	%xmm5, 128(%rsp)
	vmovdqa	%xmm1, 144(%rsp)
	jb	.LBB2_31
	vmovaps	224(%rbx), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovaps	240(%rbx), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovaps	256(%rbx), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vmovaps	272(%rbx), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vmovaps	288(%rbx), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vmovaps	(%rbx), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	32(%rbx), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	48(%rbx), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	80(%rbx), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	96(%rbx), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	112(%rbx), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	vmovaps	128(%rbx), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	144(%rbx), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	160(%rbx), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	movq	%rbp, %r12
	vmovaps	176(%rbx), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovdqa	192(%rbx), %xmm0
	vmovdqa	%xmm0, 160(%rsp)
	.p2align	4, 0x90
.LBB2_35:
	vmovdqa	%xmm3, (%rsp)
	vmovdqu	(%r15), %xmm10
	vmovdqa	%xmm10, 96(%rsp)
	vmovups	32(%r15), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovdqu	48(%r15), %xmm7
	vmovdqu	64(%r15), %xmm8
	vmovdqa	%xmm8, 64(%rsp)
	vmovdqu	80(%r15), %xmm9
	vmovdqa	%xmm9, 112(%rsp)
	vmovdqa	.LCPI2_1(%rip), %xmm2
	vpshufb	%xmm2, %xmm3, %xmm0
	vpaddd	.LCPI2_2(%rip), %xmm3, %xmm1
	vpshufb	%xmm2, %xmm1, %xmm1
	vmovdqa	(%rsp), %xmm3
	vpaddd	.LCPI2_4(%rip), %xmm3, %xmm3
	vpshufb	%xmm2, %xmm3, %xmm3
	vmovdqa	(%rsp), %xmm4
	vpaddd	.LCPI2_5(%rip), %xmm4, %xmm4
	vpshufb	%xmm2, %xmm4, %xmm4
	vmovdqa	(%rsp), %xmm5
	vpaddd	.LCPI2_6(%rip), %xmm5, %xmm5
	vpshufb	%xmm2, %xmm5, %xmm5
	vmovdqa	(%rsp), %xmm11
	vpaddd	.LCPI2_7(%rip), %xmm11, %xmm11
	vpshufb	%xmm2, %xmm11, %xmm11
	vpshufb	%xmm2, %xmm10, %xmm12
	vpxor	%xmm6, %xmm12, %xmm6
	vmovdqa	%xmm6, 80(%rsp)
	vpshufb	%xmm2, %xmm9, %xmm6
	vmovdqa	208(%rsp), %xmm9
	vpxor	%xmm0, %xmm9, %xmm12
	vpxor	%xmm1, %xmm9, %xmm13
	vpxor	%xmm3, %xmm9, %xmm14
	vpxor	%xmm4, %xmm9, %xmm15
	vpxor	%xmm5, %xmm9, %xmm0
	vpxor	%xmm11, %xmm9, %xmm11
	vmovaps	352(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	336(%rsp), %xmm10
	vmovaps	48(%rsp), %xmm9
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm2, %xmm8, %xmm5
	vmovaps	432(%rsp), %xmm8
	vmovaps	320(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm2, %xmm7, %xmm5
	vmovaps	304(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovaps	416(%rsp), %xmm8
	vmovaps	288(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovdqa	32(%rsp), %xmm5
	vpshufb	%xmm2, %xmm5, %xmm5
	vmovaps	272(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vmovaps	400(%rsp), %xmm8
	vmovaps	256(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	#NO_APP
	vmovdqu	16(%r15), %xmm5
	vmovaps	240(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm11, %xmm11
	#NO_APP
	vpshufb	%xmm2, %xmm5, %xmm6
	vmovdqa	384(%rsp), %xmm10
	vmovaps	224(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	#NO_APP
	vmovdqa	368(%rsp), %xmm8
	vmovaps	192(%rsp), %xmm9
	vmovdqa	80(%rsp), %xmm2
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpunpcklqdq	%xmm3, %xmm8, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpunpckhqdq	%xmm8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpbroadcastq	.LCPI2_12(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vmovaps	176(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm11, %xmm11
	#NO_APP
	vmovaps	160(%rsp), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm12, %xmm12
	vaesenclast	%xmm4, %xmm13, %xmm13
	vaesenclast	%xmm4, %xmm14, %xmm14
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm11, %xmm11
	#NO_APP
	vpxor	96(%rsp), %xmm12, %xmm4
	vpxor	%xmm5, %xmm13, %xmm5
	vpxor	32(%rsp), %xmm14, %xmm6
	vpxor	%xmm7, %xmm15, %xmm8
	vxorps	64(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm4, (%rax)
	vmovdqu	%xmm5, 16(%rax)
	vmovdqu	%xmm6, 32(%rax)
	vmovdqu	%xmm8, 48(%rax)
	vmovdqa	48(%rsp), %xmm8
	vpxor	112(%rsp), %xmm11, %xmm4
	vmovups	%xmm0, 64(%rax)
	vmovdqu	%xmm4, 80(%rax)
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm0
	vpxor	%xmm0, %xmm3, %xmm6
	vmovdqa	(%rsp), %xmm3
	addq	$96, %r15
	addq	$96, %rax
	addq	$-96, %r12
	vpaddd	.LCPI2_8(%rip), %xmm3, %xmm3
	cmpq	$95, %r12
	ja	.LBB2_35
	cmpq	$16, %r12
	jb	.LBB2_33
.LBB2_36:
	vmovaps	(%rbx), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	32(%rbx), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovaps	48(%rbx), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovdqa	80(%rbx), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	%xmm6, %xmm1
	vmovdqa	96(%rbx), %xmm6
	vmovdqa	112(%rbx), %xmm7
	vmovdqa	128(%rbx), %xmm4
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm10
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm12
	vmovdqa	.LCPI2_1(%rip), %xmm13
	vpbroadcastq	.LCPI2_12(%rip), %xmm14
	.p2align	4, 0x90
.LBB2_37:
	vmovdqu	(%r15), %xmm15
	vpshufb	%xmm13, %xmm15, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm2
	vmovdqa	%xmm3, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	%xmm5, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm5, %xmm2
	vpxor	(%rsp), %xmm2, %xmm2
	vaesenc	32(%rsp), %xmm2, %xmm2
	vaesenc	112(%rsp), %xmm2, %xmm2
	vaesenc	96(%rsp), %xmm2, %xmm2
	vaesenc	80(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm12, %xmm2, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vmovdqu	%xmm2, (%rax)
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	leaq	16(%rax), %r13
	addq	$-16, %r12
	addq	$16, %r15
	vpaddd	.LCPI2_2(%rip), %xmm5, %xmm3
	movq	%r13, %rax
	cmpq	$15, %r12
	ja	.LBB2_37
	jmp	.LBB2_38
.LBB2_31:
	movq	%rbp, %r12
	cmpq	$16, %r12
	jae	.LBB2_36
.LBB2_33:
	movq	%rax, %r13
	vmovdqa	%xmm6, %xmm1
.LBB2_38:
	vmovdqa	%xmm1, 32(%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB2_40
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rax
	movq	%r15, %rsi
	movq	%r12, %rdx
	vmovdqa	%xmm3, (%rsp)
	movq	%rax, %r15
	callq	*%rax
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpxor	(%rbx), %xmm0, %xmm0
	vaesenc	16(%rbx), %xmm0, %xmm0
	vaesenc	32(%rbx), %xmm0, %xmm0
	vaesenc	48(%rbx), %xmm0, %xmm0
	vaesenc	64(%rbx), %xmm0, %xmm0
	vaesenc	80(%rbx), %xmm0, %xmm0
	vaesenc	96(%rbx), %xmm0, %xmm0
	vaesenc	112(%rbx), %xmm0, %xmm0
	vaesenc	128(%rbx), %xmm0, %xmm0
	vaesenc	144(%rbx), %xmm0, %xmm0
	vaesenc	160(%rbx), %xmm0, %xmm0
	vaesenc	176(%rbx), %xmm0, %xmm0
	vaesenclast	192(%rbx), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	536(%rsp), %rsi
.LBB2_40:
	vpxor	144(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, (%rsp)
	vmovdqa	%xmm0, 448(%rsp)
	vmovdqa	%xmm2, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	448(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB2_41
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm4
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm6
	vmovdqa	128(%rsp), %xmm5
	jmp	.LBB2_45
.LBB2_41:
	vmovdqa	128(%rsp), %xmm5
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	32(%rsp), %xmm6
.LBB2_45:
	shlq	$3, %rbp
	vmovdqa	(%rsp), %xmm7
.LBB2_46:
	shlq	$3, %r14
	vmovq	%rbp, %xmm0
	vmovq	%r14, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm4, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	(%rbx), %xmm5, %xmm3
	vaesenc	16(%rbx), %xmm3, %xmm3
	vaesenc	32(%rbx), %xmm3, %xmm3
	vaesenc	48(%rbx), %xmm3, %xmm3
	vaesenc	64(%rbx), %xmm3, %xmm3
	vaesenc	80(%rbx), %xmm3, %xmm3
	vaesenc	96(%rbx), %xmm3, %xmm3
	vaesenc	112(%rbx), %xmm3, %xmm3
	vaesenc	128(%rbx), %xmm3, %xmm3
	vaesenc	144(%rbx), %xmm3, %xmm3
	vaesenc	160(%rbx), %xmm3, %xmm3
	vaesenc	176(%rbx), %xmm3, %xmm3
	vaesenclast	192(%rbx), %xmm3, %xmm3
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_9(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_10(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_47:
	addq	$472, %rsp
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
	.size	haberdashery_aes192gcm_skylake_decrypt, .Lfunc_end2-haberdashery_aes192gcm_skylake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes192gcm_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_aes192gcm_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes192gcm_skylake_is_supported,@function
haberdashery_aes192gcm_skylake_is_supported:
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
	.size	haberdashery_aes192gcm_skylake_is_supported, .Lfunc_end3-haberdashery_aes192gcm_skylake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

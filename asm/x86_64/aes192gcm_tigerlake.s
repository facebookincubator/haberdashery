# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
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
.LCPI0_1:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI0_2:
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
.LCPI0_4:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI0_5:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI0_6:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI0_7:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI0_8:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI0_9:
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
.LCPI0_10:
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
.LCPI0_3:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI0_11:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes192gcm_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_tigerlake_decrypt
	.p2align	4
	.type	haberdashery_aes192gcm_tigerlake_decrypt,@function
haberdashery_aes192gcm_tigerlake_decrypt:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	80(%rsp), %r10
	xorl	%eax, %eax
	cmpq	112(%rsp), %r10
	jne	.LBB0_26
	cmpq	$12, %rdx
	jne	.LBB0_26
	movq	%r10, %rdx
	shrq	$5, %rdx
	cmpq	$2147483646, %rdx
	ja	.LBB0_26
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB0_26
	cmpq	$16, 96(%rsp)
	jne	.LBB0_26
	movq	88(%rsp), %rax
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm16
	vpxor	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB0_17
	cmpq	$96, %r8
	jb	.LBB0_7
	vmovdqa	208(%rdi), %xmm0
	vmovdqa	224(%rdi), %xmm2
	vmovdqa	240(%rdi), %xmm3
	vmovdqa	256(%rdi), %xmm4
	vmovdqa	272(%rdi), %xmm5
	vmovdqa	288(%rdi), %xmm6
	vmovdqa	.LCPI0_2(%rip), %xmm7
	vpbroadcastq	.LCPI0_3(%rip), %xmm8
	movq	%r8, %rdx
	.p2align	4
.LBB0_28:
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
	ja	.LBB0_28
	cmpq	$16, %rdx
	jae	.LBB0_9
	jmp	.LBB0_14
.LBB0_7:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB0_14
.LBB0_9:
	vmovdqa	208(%rdi), %xmm0
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB0_10
	cmpq	$16, %rsi
	jae	.LBB0_12
.LBB0_15:
	testq	%rsi, %rsi
	je	.LBB0_17
.LBB0_16:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	vmovdqa	208(%rdi), %xmm2
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI0_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
.LBB0_17:
	testq	%r10, %r10
	je	.LBB0_25
	movq	104(%rsp), %rcx
	vpshufb	.LCPI0_0(%rip), %xmm16, %xmm0
	vpaddd	.LCPI0_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r10
	jb	.LBB0_19
	vmovdqa64	%xmm16, -128(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, -16(%rsp)
	vmovaps	288(%rdi), %xmm0
	vmovaps	%xmm0, -32(%rsp)
	vmovdqa	(%rdi), %xmm9
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, -48(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, -64(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, -80(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, -96(%rsp)
	vmovdqa	80(%rdi), %xmm0
	vmovdqa	%xmm0, -112(%rsp)
	vmovapd	96(%rdi), %xmm21
	vmovdqa64	112(%rdi), %xmm22
	vmovaps	128(%rdi), %xmm23
	vmovdqa64	144(%rdi), %xmm16
	vmovdqa64	160(%rdi), %xmm18
	vmovdqa64	.LCPI0_2(%rip), %xmm17
	vpxord	%xmm24, %xmm24, %xmm24
	vpbroadcastq	.LCPI0_3(%rip), %xmm25
	movq	%r10, %rdx
	vmovdqa64	176(%rdi), %xmm19
	vmovdqa64	192(%rdi), %xmm20
	.p2align	4
.LBB0_30:
	vmovdqu64	(%r9), %xmm26
	vmovdqu64	16(%r9), %xmm27
	vmovdqu64	32(%r9), %xmm28
	vmovdqu64	48(%r9), %xmm29
	vmovdqu64	64(%r9), %xmm30
	vmovdqu64	80(%r9), %xmm31
	vpshufb	%xmm17, %xmm2, %xmm0
	vpaddd	.LCPI0_1(%rip), %xmm2, %xmm3
	vpshufb	%xmm17, %xmm3, %xmm3
	vpaddd	.LCPI0_4(%rip), %xmm2, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm11
	vpaddd	.LCPI0_5(%rip), %xmm2, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm12
	vpaddd	.LCPI0_6(%rip), %xmm2, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm13
	vpaddd	.LCPI0_7(%rip), %xmm2, %xmm8
	vpshufb	%xmm17, %xmm8, %xmm14
	vpshufb	%xmm17, %xmm31, %xmm4
	vpxor	%xmm0, %xmm9, %xmm8
	vpxor	%xmm3, %xmm9, %xmm10
	vpxor	%xmm11, %xmm9, %xmm11
	vpxor	%xmm12, %xmm9, %xmm12
	vpxor	%xmm13, %xmm9, %xmm13
	vpxor	%xmm14, %xmm9, %xmm14
	vmovaps	-48(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vxorps	%xmm0, %xmm0, %xmm0
	vpxor	%xmm3, %xmm3, %xmm3
	vpxor	%xmm15, %xmm15, %xmm15
	vmovaps	48(%rsp), %xmm6
	vmovaps	-64(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm17, %xmm30, %xmm4
	vmovaps	32(%rsp), %xmm6
	vmovaps	-80(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm17, %xmm29, %xmm4
	vmovaps	-96(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	#NO_APP
	vmovaps	16(%rsp), %xmm6
	vmovaps	-112(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm17, %xmm28, %xmm4
	vmovapd	%xmm21, %xmm5
	#APP
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	#NO_APP
	vmovaps	(%rsp), %xmm6
	vmovdqa64	%xmm22, %xmm7
	#APP
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm17, %xmm27, %xmm4
	vmovaps	%xmm23, %xmm5
	#APP
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm10, %xmm10
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	#NO_APP
	vmovaps	-16(%rsp), %xmm6
	vmovdqa64	%xmm16, %xmm7
	#APP
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm10, %xmm10
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	#NO_APP
	vpshufb	%xmm17, %xmm26, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vmovaps	-32(%rsp), %xmm5
	vmovdqa64	%xmm18, %xmm6
	#APP
	vaesenc	%xmm6, %xmm8, %xmm8
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm24, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpunpckhqdq	%xmm24, %xmm3, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm20, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm8, %xmm8
	vaesenclast	%xmm3, %xmm10, %xmm10
	vaesenclast	%xmm3, %xmm11, %xmm11
	vaesenclast	%xmm3, %xmm12, %xmm12
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	#NO_APP
	vpxorq	%xmm26, %xmm8, %xmm3
	vpxorq	%xmm27, %xmm10, %xmm4
	vpxorq	%xmm28, %xmm11, %xmm5
	vpxorq	%xmm29, %xmm12, %xmm8
	vpxorq	%xmm30, %xmm13, %xmm10
	vpxorq	%xmm31, %xmm14, %xmm11
	vpclmulqdq	$16, %xmm25, %xmm0, %xmm12
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm0
	vmovdqu	%xmm3, (%rcx)
	vmovdqu	%xmm4, 16(%rcx)
	vmovdqu	%xmm5, 32(%rcx)
	vmovdqu	%xmm8, 48(%rcx)
	vmovdqu	%xmm10, 64(%rcx)
	vmovdqu	%xmm11, 80(%rcx)
	vpclmulqdq	$16, %xmm25, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm3, %xmm0, %xmm1
	addq	$96, %r9
	addq	$96, %rcx
	addq	$-96, %rdx
	vpaddd	.LCPI0_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rdx
	ja	.LBB0_30
	vmovdqa64	-128(%rsp), %xmm16
	cmpq	$16, %rdx
	jae	.LBB0_21
	jmp	.LBB0_23
.LBB0_19:
	movq	%r10, %rdx
	cmpq	$16, %rdx
	jb	.LBB0_23
.LBB0_21:
	vmovdqa	208(%rdi), %xmm0
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
	vmovdqa	176(%rdi), %xmm14
	vmovdqa	192(%rdi), %xmm15
	vmovdqa64	.LCPI0_2(%rip), %xmm17
	vpbroadcastq	.LCPI0_3(%rip), %xmm18
	vpmovsxbq	.LCPI0_11(%rip), %xmm19
	.p2align	4
.LBB0_22:
	vmovdqu64	(%r9), %xmm20
	vpshufb	%xmm17, %xmm2, %xmm21
	vpxorq	%xmm21, %xmm3, %xmm21
	vaesenc	%xmm4, %xmm21, %xmm21
	vaesenc	%xmm5, %xmm21, %xmm21
	vaesenc	%xmm6, %xmm21, %xmm21
	vaesenc	%xmm7, %xmm21, %xmm21
	vaesenc	%xmm8, %xmm21, %xmm21
	vaesenc	%xmm9, %xmm21, %xmm21
	vaesenc	%xmm10, %xmm21, %xmm21
	vaesenc	%xmm11, %xmm21, %xmm21
	vaesenc	%xmm12, %xmm21, %xmm21
	vaesenc	%xmm13, %xmm21, %xmm21
	vaesenc	%xmm14, %xmm21, %xmm21
	vaesenclast	%xmm15, %xmm21, %xmm21
	vpxorq	%xmm20, %xmm21, %xmm21
	vmovdqu64	%xmm21, (%rcx)
	addq	$16, %rcx
	addq	$-16, %rdx
	addq	$16, %r9
	vpshufb	%xmm17, %xmm20, %xmm20
	vpxorq	%xmm20, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm20
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm21
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm22
	vpxorq	%xmm21, %xmm22, %xmm21
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm21, %xmm22
	vpxorq	%xmm22, %xmm20, %xmm20
	vpsrldq	$8, %xmm21, %xmm21
	vpclmulqdq	$16, %xmm18, %xmm20, %xmm22
	vpshufd	$78, %xmm20, %xmm20
	vpxorq	%xmm20, %xmm22, %xmm20
	vpclmulqdq	$16, %xmm18, %xmm20, %xmm22
	vpxorq	%xmm1, %xmm22, %xmm22
	vpshufd	$78, %xmm20, %xmm1
	vpternlogq	$150, %xmm21, %xmm22, %xmm1
	vpaddd	%xmm19, %xmm2, %xmm2
	cmpq	$15, %rdx
	ja	.LBB0_22
.LBB0_23:
	testq	%rdx, %rdx
	je	.LBB0_25
	movl	$-1, %esi
	bzhil	%edx, %esi, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%r9), %xmm0 {%k1} {z}
	vmovdqa	.LCPI0_2(%rip), %xmm3
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
	vmovdqu8	%xmm2, (%rcx) {%k1}
	vpshufb	%xmm3, %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm2
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI0_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm2, %xmm0, %xmm1
.LBB0_25:
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
	vpbroadcastq	.LCPI0_3(%rip), %xmm4
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpxorq	(%rdi), %xmm16, %xmm2
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
	vpshufb	.LCPI0_9(%rip), %xmm1, %xmm1
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI0_10(%rip), %xmm3, %xmm3
	vpternlogq	$150, %xmm0, %xmm1, %xmm3
	vpternlogq	$150, (%rax), %xmm2, %xmm3
	vpshufd	$238, %xmm3, %xmm0
	vpor	%xmm0, %xmm3, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
.LBB0_26:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_10:
	.cfi_def_cfa_offset 80
	vmovdqu	(%rcx), %xmm2
	addq	$16, %rcx
	vpshufb	.LCPI0_2(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI0_3(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm4
	vpshufd	$78, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm4, %xmm1
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB0_15
.LBB0_12:
	vmovdqa	.LCPI0_2(%rip), %xmm2
	vpbroadcastq	.LCPI0_3(%rip), %xmm3
	.p2align	4
.LBB0_13:
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
	ja	.LBB0_13
.LBB0_14:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB0_16
	jmp	.LBB0_17
.Lfunc_end0:
	.size	haberdashery_aes192gcm_tigerlake_decrypt, .Lfunc_end0-haberdashery_aes192gcm_tigerlake_decrypt
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
	.section	.text.haberdashery_aes192gcm_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes192gcm_tigerlake_encrypt
	.p2align	4
	.type	haberdashery_aes192gcm_tigerlake_encrypt,@function
haberdashery_aes192gcm_tigerlake_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movq	80(%rsp), %r10
	xorl	%eax, %eax
	cmpq	96(%rsp), %r10
	jne	.LBB1_6
	cmpq	$16, 112(%rsp)
	setne	%r11b
	movabsq	$2305843009213693950, %rbx
	cmpq	%rbx, %r8
	seta	%bl
	orb	%r11b, %bl
	jne	.LBB1_6
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483647, %r11
	setae	%r11b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r11b, %dl
	jne	.LBB1_6
	movq	104(%rsp), %rax
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm23
	vpxor	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB1_4
	cmpq	$96, %r8
	jb	.LBB1_8
	vmovdqa	208(%rdi), %xmm0
	vmovdqa	224(%rdi), %xmm2
	vmovdqa	240(%rdi), %xmm3
	vmovdqa	256(%rdi), %xmm4
	vmovdqa	272(%rdi), %xmm5
	vmovdqa	288(%rdi), %xmm6
	vmovdqa	.LCPI1_2(%rip), %xmm7
	vpbroadcastq	.LCPI1_3(%rip), %xmm8
	movq	%r8, %rdx
	.p2align	4
.LBB1_28:
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
	ja	.LBB1_28
	cmpq	$16, %rdx
	jae	.LBB1_22
	jmp	.LBB1_10
.LBB1_8:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB1_10
.LBB1_22:
	vmovdqa	208(%rdi), %xmm0
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB1_23
	cmpq	$16, %rsi
	jae	.LBB1_25
.LBB1_11:
	testq	%rsi, %rsi
	je	.LBB1_4
.LBB1_12:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	vmovdqa	208(%rdi), %xmm3
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	testq	%r10, %r10
	je	.LBB1_21
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	jmp	.LBB1_14
.LBB1_23:
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
	jb	.LBB1_11
.LBB1_25:
	vmovdqa	.LCPI1_2(%rip), %xmm2
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	.p2align	4
.LBB1_26:
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
	ja	.LBB1_26
.LBB1_10:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_12
.LBB1_4:
	testq	%r10, %r10
	je	.LBB1_5
.LBB1_14:
	movq	88(%rsp), %rsi
	vpshufb	.LCPI1_0(%rip), %xmm23, %xmm5
	vpaddd	.LCPI1_1(%rip), %xmm5, %xmm2
	cmpq	$96, %r10
	jb	.LBB1_15
	vmovdqa64	.LCPI1_2(%rip), %xmm22
	vpshufb	%xmm22, %xmm2, %xmm0
	vpaddd	.LCPI1_4(%rip), %xmm5, %xmm2
	vpshufb	%xmm22, %xmm2, %xmm2
	vpaddd	.LCPI1_5(%rip), %xmm5, %xmm4
	vpshufb	%xmm22, %xmm4, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm5, %xmm4
	vpshufb	%xmm22, %xmm4, %xmm7
	vpaddd	.LCPI1_7(%rip), %xmm5, %xmm4
	vpshufb	%xmm22, %xmm4, %xmm8
	vpaddd	.LCPI1_8(%rip), %xmm5, %xmm4
	vpshufb	%xmm22, %xmm4, %xmm9
	vmovdqa	(%rdi), %xmm4
	vmovdqa	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm3
	vmovdqa	48(%rdi), %xmm10
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm6, %xmm4, %xmm6
	vpxor	%xmm7, %xmm4, %xmm7
	vpxor	%xmm4, %xmm8, %xmm8
	vpxor	%xmm4, %xmm9, %xmm9
	vmovdqa64	%xmm11, %xmm18
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
	vmovdqa64	%xmm10, %xmm16
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovdqa	64(%rdi), %xmm13
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
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
	vmovaps	112(%rdi), %xmm11
	vmovaps	%xmm11, -96(%rsp)
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovdqa	128(%rdi), %xmm11
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovaps	144(%rdi), %xmm12
	vmovaps	%xmm12, -112(%rsp)
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	#NO_APP
	vmovdqa	160(%rdi), %xmm12
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	#NO_APP
	vmovdqa	176(%rdi), %xmm10
	vmovdqa64	%xmm10, %xmm19
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovdqa	192(%rdi), %xmm10
	#APP
	vaesenclast	%xmm10, %xmm0, %xmm0
	vaesenclast	%xmm10, %xmm2, %xmm2
	vaesenclast	%xmm10, %xmm6, %xmm6
	vaesenclast	%xmm10, %xmm7, %xmm7
	vaesenclast	%xmm10, %xmm8, %xmm8
	vaesenclast	%xmm10, %xmm9, %xmm9
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm17
	vpxorq	16(%r9), %xmm2, %xmm20
	vpxorq	32(%r9), %xmm6, %xmm27
	vpxorq	48(%r9), %xmm7, %xmm28
	vpxorq	64(%r9), %xmm8, %xmm29
	vpxor	80(%r9), %xmm9, %xmm0
	leaq	96(%r9), %r9
	leaq	96(%rsi), %rdx
	vpaddd	.LCPI1_9(%rip), %xmm5, %xmm2
	vmovdqu64	%xmm17, (%rsi)
	vmovdqu64	%xmm20, 16(%rsi)
	vmovdqu64	%xmm27, 32(%rsi)
	vmovdqu64	%xmm28, 48(%rsi)
	leaq	-96(%r10), %rcx
	vmovdqu64	%xmm29, 64(%rsi)
	vmovdqu	%xmm0, 80(%rsi)
	cmpq	$192, %r10
	jb	.LBB1_33
	vmovdqa64	%xmm23, -128(%rsp)
	vmovaps	208(%rdi), %xmm5
	vmovaps	%xmm5, 48(%rsp)
	vmovdqa	%xmm3, %xmm5
	vmovaps	224(%rdi), %xmm3
	vmovaps	%xmm3, 32(%rsp)
	vmovaps	240(%rdi), %xmm3
	vmovaps	%xmm3, 16(%rsp)
	vmovaps	256(%rdi), %xmm3
	vmovaps	%xmm3, (%rsp)
	vmovaps	272(%rdi), %xmm3
	vmovaps	%xmm3, -16(%rsp)
	vmovdqa64	%xmm18, -32(%rsp)
	vmovdqa	288(%rdi), %xmm3
	vmovdqa	%xmm3, -48(%rsp)
	vmovdqa	%xmm5, -64(%rsp)
	vmovdqa64	%xmm16, -80(%rsp)
	vmovdqa64	%xmm13, %xmm25
	vmovdqa64	%xmm10, %xmm24
	vmovdqa64	%xmm14, %xmm31
	vmovdqa64	%xmm15, %xmm21
	vmovaps	-96(%rsp), %xmm26
	vmovdqa64	%xmm11, %xmm16
	vmovdqa64	-112(%rsp), %xmm18
	vmovdqa64	%xmm12, %xmm23
	.p2align	4
.LBB1_31:
	vpshufb	%xmm22, %xmm2, %xmm5
	vpaddd	.LCPI1_1(%rip), %xmm2, %xmm6
	vpshufb	%xmm22, %xmm6, %xmm6
	vpaddd	.LCPI1_4(%rip), %xmm2, %xmm7
	vpshufb	%xmm22, %xmm7, %xmm7
	vpaddd	.LCPI1_5(%rip), %xmm2, %xmm8
	vpshufb	%xmm22, %xmm8, %xmm14
	vpaddd	.LCPI1_6(%rip), %xmm2, %xmm8
	vpshufb	%xmm22, %xmm8, %xmm15
	vpaddd	.LCPI1_7(%rip), %xmm2, %xmm8
	vpshufb	%xmm22, %xmm8, %xmm30
	vpshufb	%xmm22, %xmm0, %xmm8
	vpxor	%xmm5, %xmm4, %xmm11
	vpxor	%xmm6, %xmm4, %xmm12
	vpxor	%xmm7, %xmm4, %xmm13
	vpxor	%xmm4, %xmm14, %xmm14
	vpxor	%xmm4, %xmm15, %xmm15
	vpxorq	%xmm30, %xmm4, %xmm0
	vmovaps	-32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm5, %xmm5, %xmm5
	vmovaps	48(%rsp), %xmm10
	vmovaps	-64(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm22, %xmm29, %xmm8
	vmovaps	32(%rsp), %xmm3
	vmovaps	-80(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm22, %xmm28, %xmm8
	vmovdqa64	%xmm25, %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm31, %xmm3
	vmovaps	16(%rsp), %xmm10
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm10, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm10, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm22, %xmm27, %xmm8
	vmovdqa64	%xmm21, %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovaps	(%rsp), %xmm3
	vmovaps	%xmm26, %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm22, %xmm20, %xmm8
	vmovdqa64	%xmm16, %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovaps	-16(%rsp), %xmm3
	vmovdqa64	%xmm18, %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm22, %xmm17, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vmovdqa64	%xmm23, %xmm9
	vmovdqa	-48(%rsp), %xmm3
	#APP
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
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
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm24, %xmm7
	#APP
	vaesenclast	%xmm7, %xmm11, %xmm11
	vaesenclast	%xmm7, %xmm12, %xmm12
	vaesenclast	%xmm7, %xmm13, %xmm13
	vaesenclast	%xmm7, %xmm14, %xmm14
	vaesenclast	%xmm7, %xmm15, %xmm15
	vaesenclast	%xmm7, %xmm0, %xmm0
	#NO_APP
	vpxorq	(%r9), %xmm11, %xmm17
	vpxorq	16(%r9), %xmm12, %xmm20
	vpxorq	32(%r9), %xmm13, %xmm27
	vpxorq	48(%r9), %xmm14, %xmm28
	vpxorq	64(%r9), %xmm15, %xmm29
	vpxor	80(%r9), %xmm0, %xmm0
	vpxor	%xmm1, %xmm5, %xmm1
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm6, %xmm5
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm6, %xmm5, %xmm1
	addq	$96, %r9
	vmovdqu64	%xmm17, (%rdx)
	vmovdqu64	%xmm20, 16(%rdx)
	vmovdqu64	%xmm27, 32(%rdx)
	vmovdqu64	%xmm28, 48(%rdx)
	vmovdqu64	%xmm29, 64(%rdx)
	vmovdqu	%xmm0, 80(%rdx)
	addq	$96, %rdx
	addq	$-96, %rcx
	vpaddd	.LCPI1_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rcx
	ja	.LBB1_31
	vmovdqa64	-128(%rsp), %xmm23
.LBB1_33:
	vpshufb	%xmm22, %xmm17, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufb	%xmm22, %xmm20, %xmm4
	vpshufb	%xmm22, %xmm27, %xmm5
	vpshufb	%xmm22, %xmm28, %xmm6
	vpshufb	%xmm22, %xmm29, %xmm7
	vpshufb	%xmm22, %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm3
	vmovdqa	224(%rdi), %xmm8
	vmovdqa	240(%rdi), %xmm9
	vmovdqa	256(%rdi), %xmm10
	vmovdqa	272(%rdi), %xmm11
	vmovdqa	288(%rdi), %xmm12
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm13
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm14
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm7, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm8, %xmm15
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm17
	vpternlogq	$150, %xmm15, %xmm14, %xmm17
	vpclmulqdq	$17, %xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm8
	vpternlogq	$150, %xmm13, %xmm3, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm13
	vpternlogq	$150, %xmm3, %xmm17, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm3
	vpternlogq	$150, %xmm0, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm5, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm5, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm10, %xmm7
	vpternlogq	$150, %xmm6, %xmm13, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm10, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm6
	vpternlogq	$150, %xmm0, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm8
	vpternlogq	$150, %xmm0, %xmm7, %xmm8
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm0
	vpternlogq	$150, %xmm5, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm5
	vpternlogq	$150, %xmm4, %xmm8, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpslldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm6, %xmm4
	vpsrldq	$8, %xmm5, %xmm3
	vpbroadcastq	.LCPI1_3(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm5
	vpternlogq	$150, %xmm1, %xmm0, %xmm5
	vpshufd	$78, %xmm4, %xmm1
	vpternlogq	$150, %xmm3, %xmm5, %xmm1
	movq	%rdx, %rsi
	jmp	.LBB1_16
.LBB1_15:
	movq	%r10, %rcx
.LBB1_16:
	cmpq	$16, %rcx
	jb	.LBB1_19
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
	vmovdqa	192(%rdi), %xmm14
	vmovdqa	208(%rdi), %xmm15
	vmovdqa64	.LCPI1_2(%rip), %xmm17
	vpmovsxbq	.LCPI1_12(%rip), %xmm18
	vpbroadcastq	.LCPI1_3(%rip), %xmm19
	.p2align	4
.LBB1_18:
	vpshufb	%xmm17, %xmm2, %xmm20
	vpxorq	%xmm20, %xmm0, %xmm20
	vaesenc	%xmm3, %xmm20, %xmm20
	vaesenc	%xmm4, %xmm20, %xmm20
	vaesenc	%xmm5, %xmm20, %xmm20
	vaesenc	%xmm6, %xmm20, %xmm20
	vaesenc	%xmm7, %xmm20, %xmm20
	vaesenc	%xmm8, %xmm20, %xmm20
	vaesenc	%xmm9, %xmm20, %xmm20
	vaesenc	%xmm10, %xmm20, %xmm20
	vaesenc	%xmm11, %xmm20, %xmm20
	vaesenc	%xmm12, %xmm20, %xmm20
	vaesenc	%xmm13, %xmm20, %xmm20
	vaesenclast	%xmm14, %xmm20, %xmm20
	vpxorq	(%r9), %xmm20, %xmm20
	addq	$16, %r9
	vmovdqu64	%xmm20, (%rsi)
	addq	$16, %rsi
	addq	$-16, %rcx
	vpaddd	%xmm18, %xmm2, %xmm2
	vpshufb	%xmm17, %xmm20, %xmm20
	vpxorq	%xmm20, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm20
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm21
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm22
	vpxorq	%xmm21, %xmm22, %xmm21
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm21, %xmm22
	vpxorq	%xmm22, %xmm20, %xmm20
	vpsrldq	$8, %xmm21, %xmm21
	vpclmulqdq	$16, %xmm19, %xmm20, %xmm22
	vpshufd	$78, %xmm20, %xmm20
	vpxorq	%xmm20, %xmm22, %xmm20
	vpclmulqdq	$16, %xmm19, %xmm20, %xmm22
	vpxorq	%xmm1, %xmm22, %xmm22
	vpshufd	$78, %xmm20, %xmm1
	vpternlogq	$150, %xmm21, %xmm22, %xmm1
	cmpq	$15, %rcx
	ja	.LBB1_18
.LBB1_19:
	testq	%rcx, %rcx
	je	.LBB1_5
	movl	$-1, %edx
	bzhil	%ecx, %edx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%r9), %xmm0 {%k1} {z}
	vmovdqa	.LCPI1_2(%rip), %xmm3
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
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rsi) {%k1}
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpshufb	%xmm3, %xmm0, %xmm0
	vmovdqa	208(%rdi), %xmm3
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
.LBB1_21:
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm2
	vpbroadcastq	.LCPI1_3(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm1
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
.LBB1_5:
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
	vpxorq	(%rdi), %xmm23, %xmm4
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
.LBB1_6:
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes192gcm_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes192gcm_tigerlake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
.LCPI2_1:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes192gcm_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes192gcm_tigerlake_init
	.p2align	4
	.type	haberdashery_aes192gcm_tigerlake_init,@function
haberdashery_aes192gcm_tigerlake_init:
	.cfi_startproc
	cmpq	$24, %rdx
	jne	.LBB2_2
	vmovupd	(%rsi), %xmm0
	vmovq	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vaeskeygenassist	$1, %xmm1, %xmm4
	vpslldq	$12, %xmm0, %xmm5
	vpternlogq	$150, %xmm3, %xmm2, %xmm5
	vpshufd	$85, %xmm4, %xmm4
	vpternlogq	$150, %xmm5, %xmm0, %xmm4
	vpshufd	$255, %xmm4, %xmm2
	vpslldq	$4, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	vpunpcklqdq	%xmm4, %xmm1, %xmm17
	vpalignr	$8, %xmm4, %xmm5, %xmm2
	vpslldq	$4, %xmm4, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpslldq	$12, %xmm4, %xmm7
	vpternlogq	$150, %xmm6, %xmm3, %xmm7
	vaeskeygenassist	$2, %xmm5, %xmm3
	vpshufd	$85, %xmm3, %xmm3
	vpternlogq	$150, %xmm7, %xmm4, %xmm3
	vpshufd	$255, %xmm3, %xmm4
	vpslldq	$4, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpslldq	$4, %xmm3, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vaeskeygenassist	$4, %xmm6, %xmm7
	vpslldq	$12, %xmm3, %xmm8
	vpternlogq	$150, %xmm5, %xmm4, %xmm8
	vpshufd	$85, %xmm7, %xmm7
	vpternlogq	$150, %xmm8, %xmm3, %xmm7
	vpshufd	$255, %xmm7, %xmm4
	vpslldq	$4, %xmm6, %xmm8
	vpternlogq	$150, %xmm4, %xmm6, %xmm8
	vpunpcklqdq	%xmm7, %xmm6, %xmm4
	vpalignr	$8, %xmm7, %xmm8, %xmm5
	vpslldq	$4, %xmm7, %xmm6
	vpslldq	$8, %xmm7, %xmm9
	vpslldq	$12, %xmm7, %xmm10
	vpternlogq	$150, %xmm9, %xmm6, %xmm10
	vaeskeygenassist	$8, %xmm8, %xmm6
	vpshufd	$85, %xmm6, %xmm6
	vpternlogq	$150, %xmm10, %xmm7, %xmm6
	vpshufd	$255, %xmm6, %xmm7
	vpslldq	$4, %xmm8, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpslldq	$4, %xmm6, %xmm7
	vpslldq	$8, %xmm6, %xmm8
	vaeskeygenassist	$16, %xmm9, %xmm10
	vpslldq	$12, %xmm6, %xmm11
	vpternlogq	$150, %xmm8, %xmm7, %xmm11
	vpshufd	$85, %xmm10, %xmm10
	vpternlogq	$150, %xmm11, %xmm6, %xmm10
	vpshufd	$255, %xmm10, %xmm7
	vpslldq	$4, %xmm9, %xmm11
	vpternlogq	$150, %xmm7, %xmm9, %xmm11
	vpunpcklqdq	%xmm10, %xmm9, %xmm7
	vpalignr	$8, %xmm10, %xmm11, %xmm8
	vpslldq	$4, %xmm10, %xmm9
	vpslldq	$8, %xmm10, %xmm12
	vpslldq	$12, %xmm10, %xmm13
	vpternlogq	$150, %xmm12, %xmm9, %xmm13
	vaeskeygenassist	$32, %xmm11, %xmm9
	vpshufd	$85, %xmm9, %xmm9
	vpternlogq	$150, %xmm13, %xmm10, %xmm9
	vpshufd	$255, %xmm9, %xmm10
	vpslldq	$4, %xmm11, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	vpslldq	$4, %xmm9, %xmm10
	vpslldq	$8, %xmm9, %xmm11
	vaeskeygenassist	$64, %xmm12, %xmm13
	vpslldq	$12, %xmm9, %xmm14
	vpternlogq	$150, %xmm11, %xmm10, %xmm14
	vpshufd	$85, %xmm13, %xmm13
	vpternlogq	$150, %xmm14, %xmm9, %xmm13
	vpshufd	$255, %xmm13, %xmm10
	vpslldq	$4, %xmm12, %xmm14
	vpternlogq	$150, %xmm10, %xmm12, %xmm14
	vpunpcklqdq	%xmm13, %xmm12, %xmm10
	vpalignr	$8, %xmm13, %xmm14, %xmm11
	vpslldq	$4, %xmm13, %xmm12
	vpslldq	$8, %xmm13, %xmm15
	vpslldq	$12, %xmm13, %xmm16
	vpternlogq	$150, %xmm15, %xmm12, %xmm16
	vaeskeygenassist	$128, %xmm14, %xmm12
	vpshufd	$85, %xmm12, %xmm12
	vpternlogq	$150, %xmm16, %xmm13, %xmm12
	vaesenc	%xmm17, %xmm0, %xmm13
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenclast	%xmm12, %xmm13, %xmm13
	vpshufb	.LCPI2_0(%rip), %xmm13, %xmm13
	vpsrlq	$63, %xmm13, %xmm14
	vpaddq	%xmm13, %xmm13, %xmm13
	vpshufd	$78, %xmm14, %xmm15
	vpxor	%xmm1, %xmm1, %xmm1
	vpblendd	$12, %xmm14, %xmm1, %xmm1
	vpsllq	$63, %xmm1, %xmm14
	vpternlogq	$30, %xmm15, %xmm13, %xmm14
	vpsllq	$62, %xmm1, %xmm15
	vpsllq	$57, %xmm1, %xmm13
	vpternlogq	$150, %xmm15, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm1
	vpbroadcastq	.LCPI2_1(%rip), %xmm15
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm14
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm16
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm18
	vpshufd	$78, %xmm1, %xmm14
	vpternlogq	$150, %xmm16, %xmm18, %xmm14
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm16
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm18
	vpxorq	%xmm16, %xmm18, %xmm16
	vpslldq	$8, %xmm16, %xmm18
	vpxorq	%xmm18, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm18
	vpshufd	$78, %xmm1, %xmm1
	vpxorq	%xmm1, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm18
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm19
	vpxorq	%xmm18, %xmm19, %xmm18
	vpsrldq	$8, %xmm16, %xmm16
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm16, %xmm18, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm16
	vpclmulqdq	$16, %xmm15, %xmm16, %xmm18
	vpshufd	$78, %xmm16, %xmm16
	vpxorq	%xmm16, %xmm18, %xmm16
	vpclmulqdq	$16, %xmm15, %xmm16, %xmm18
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm19
	vpshufd	$78, %xmm16, %xmm16
	vpternlogq	$150, %xmm18, %xmm19, %xmm16
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm18
	vpclmulqdq	$16, %xmm15, %xmm18, %xmm19
	vpshufd	$78, %xmm18, %xmm18
	vpxorq	%xmm18, %xmm19, %xmm18
	vpclmulqdq	$16, %xmm15, %xmm18, %xmm19
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm20
	vpshufd	$78, %xmm18, %xmm18
	vpternlogq	$150, %xmm19, %xmm20, %xmm18
	vpclmulqdq	$0, %xmm13, %xmm18, %xmm19
	vpclmulqdq	$16, %xmm13, %xmm18, %xmm20
	vpclmulqdq	$1, %xmm13, %xmm18, %xmm21
	vpxorq	%xmm20, %xmm21, %xmm20
	vpslldq	$8, %xmm20, %xmm21
	vpxorq	%xmm21, %xmm19, %xmm19
	vpclmulqdq	$16, %xmm15, %xmm19, %xmm21
	vpshufd	$78, %xmm19, %xmm19
	vpxorq	%xmm19, %xmm21, %xmm19
	vpclmulqdq	$16, %xmm15, %xmm19, %xmm15
	vpclmulqdq	$17, %xmm13, %xmm18, %xmm21
	vpxorq	%xmm15, %xmm21, %xmm15
	vpsrldq	$8, %xmm20, %xmm20
	vpshufd	$78, %xmm19, %xmm19
	vpternlogq	$150, %xmm20, %xmm15, %xmm19
	vmovdqa	%xmm0, (%rdi)
	vmovdqa64	%xmm17, 16(%rdi)
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
	vmovdqa	%xmm13, 208(%rdi)
	vmovdqa	%xmm14, 224(%rdi)
	vmovdqa	%xmm1, 240(%rdi)
	vmovdqa64	%xmm18, 256(%rdi)
	vmovdqa64	%xmm19, 272(%rdi)
	vmovdqa64	%xmm16, 288(%rdi)
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$24, %rdx
	sete	%al
	retq
.Lfunc_end2:
	.size	haberdashery_aes192gcm_tigerlake_init, .Lfunc_end2-haberdashery_aes192gcm_tigerlake_init
	.cfi_endproc

	.section	.text.haberdashery_aes192gcm_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes192gcm_tigerlake_is_supported
	.p2align	4
	.type	haberdashery_aes192gcm_tigerlake_is_supported,@function
haberdashery_aes192gcm_tigerlake_is_supported:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%esi, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %r9d
	movl	%edx, %r10d
	notl	%r10d
	notl	%r9d
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r11
	cpuid
	xchgq	%rbx, %r11

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	movl	$7, %eax
	movl	$1, %ecx
	#APP

	movq	%rbx, %rbx
	cpuid
	xchgq	%rbx, %rbx

	#NO_APP
	andl	$920130051, %r9d
	andl	$125829120, %r10d
	orl	%r9d, %r10d
	jne	.LBB3_2
	notl	%r8d
	notl	%r11d
	andl	$-240451287, %r11d
	andl	$415260490, %r8d
	orl	%r11d, %r8d
	sete	%al
	shrl	$8, %edi
	andl	$1, %edi
	andb	%al, %dil
	movzbl	%dil, %esi
.LBB3_2:
	movl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	haberdashery_aes192gcm_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes192gcm_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

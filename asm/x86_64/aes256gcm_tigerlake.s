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
	.section	.text.haberdashery_aes256gcm_tigerlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_decrypt
	.p2align	4
	.type	haberdashery_aes256gcm_tigerlake_decrypt,@function
haberdashery_aes256gcm_tigerlake_decrypt:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	128(%rsp), %r10
	xorl	%eax, %eax
	cmpq	160(%rsp), %r10
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
	cmpq	$16, 144(%rsp)
	jne	.LBB0_26
	movq	136(%rsp), %rax
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm24
	vpxor	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB0_17
	cmpq	$96, %r8
	jb	.LBB0_7
	vmovdqa	240(%rdi), %xmm0
	vmovdqa	256(%rdi), %xmm2
	vmovdqa	272(%rdi), %xmm3
	vmovdqa	288(%rdi), %xmm4
	vmovdqa	304(%rdi), %xmm5
	vmovdqa	320(%rdi), %xmm6
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
	vmovdqa	240(%rdi), %xmm0
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
	vmovdqa	240(%rdi), %xmm2
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
	movq	152(%rsp), %rcx
	vpshufb	.LCPI0_0(%rip), %xmm24, %xmm0
	vpaddd	.LCPI0_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r10
	jb	.LBB0_19
	vmovdqa64	%xmm24, -128(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	288(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	304(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	320(%rdi), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqa	(%rdi), %xmm9
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, -16(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, -32(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, -48(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, -64(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, -80(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, -96(%rsp)
	vmovdqa	128(%rdi), %xmm0
	vmovdqa	%xmm0, -112(%rsp)
	vmovdqa64	144(%rdi), %xmm20
	vmovapd	160(%rdi), %xmm21
	vmovdqa64	.LCPI0_2(%rip), %xmm17
	vpxord	%xmm24, %xmm24, %xmm24
	vpbroadcastq	.LCPI0_3(%rip), %xmm25
	movq	%r10, %rdx
	vmovapd	176(%rdi), %xmm22
	vmovdqa64	192(%rdi), %xmm23
	vmovdqa64	208(%rdi), %xmm18
	vmovdqa64	224(%rdi), %xmm19
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
	vpaddd	.LCPI0_4(%rip), %xmm2, %xmm4
	vpshufb	%xmm17, %xmm4, %xmm4
	vpaddd	.LCPI0_5(%rip), %xmm2, %xmm5
	vpshufb	%xmm17, %xmm5, %xmm5
	vpaddd	.LCPI0_6(%rip), %xmm2, %xmm11
	vpshufb	%xmm17, %xmm11, %xmm15
	vpaddd	.LCPI0_7(%rip), %xmm2, %xmm11
	vpshufb	%xmm17, %xmm11, %xmm16
	vpshufb	%xmm17, %xmm31, %xmm6
	vpxor	%xmm0, %xmm9, %xmm11
	vpxor	%xmm3, %xmm9, %xmm12
	vpxor	%xmm4, %xmm9, %xmm13
	vpxor	%xmm5, %xmm9, %xmm14
	vpxor	%xmm15, %xmm9, %xmm15
	vpxorq	%xmm16, %xmm9, %xmm0
	vmovaps	(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vxorps	%xmm3, %xmm3, %xmm3
	vpxor	%xmm5, %xmm5, %xmm5
	vmovaps	96(%rsp), %xmm8
	vmovaps	-16(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm17, %xmm30, %xmm6
	vmovaps	-32(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	#NO_APP
	vmovaps	80(%rsp), %xmm8
	vmovaps	-48(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm17, %xmm29, %xmm6
	vmovaps	-64(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	#NO_APP
	vmovaps	64(%rsp), %xmm8
	vmovaps	-80(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm17, %xmm28, %xmm6
	vmovaps	-96(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	#NO_APP
	vmovaps	48(%rsp), %xmm8
	vmovaps	-112(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm17, %xmm27, %xmm6
	vmovdqa64	%xmm20, %xmm7
	#APP
	vaesenc	%xmm7, %xmm11, %xmm11
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	#NO_APP
	vmovaps	32(%rsp), %xmm8
	vmovapd	%xmm21, %xmm10
	#APP
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm17, %xmm26, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vmovapd	%xmm22, %xmm6
	#APP
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm12, %xmm12
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	#NO_APP
	vmovaps	16(%rsp), %xmm7
	vmovdqa64	%xmm23, %xmm8
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpunpcklqdq	%xmm4, %xmm24, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpunpckhqdq	%xmm24, %xmm4, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vmovdqa64	%xmm18, %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	#NO_APP
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm11, %xmm11
	vaesenclast	%xmm3, %xmm12, %xmm12
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpxorq	%xmm26, %xmm11, %xmm3
	vpxorq	%xmm27, %xmm12, %xmm4
	vpxorq	%xmm28, %xmm13, %xmm6
	vpxorq	%xmm29, %xmm14, %xmm7
	vpxorq	%xmm30, %xmm15, %xmm11
	vpxorq	%xmm31, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm25, %xmm5, %xmm12
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm12, %xmm5
	vmovdqu	%xmm3, (%rcx)
	vmovdqu	%xmm4, 16(%rcx)
	vmovdqu	%xmm6, 32(%rcx)
	vmovdqu	%xmm7, 48(%rcx)
	vmovdqu	%xmm11, 64(%rcx)
	vmovdqu	%xmm0, 80(%rcx)
	vpclmulqdq	$16, %xmm25, %xmm5, %xmm0
	vpshufd	$78, %xmm5, %xmm3
	vpternlogq	$150, %xmm0, %xmm3, %xmm1
	addq	$96, %r9
	addq	$96, %rcx
	addq	$-96, %rdx
	vpaddd	.LCPI0_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rdx
	ja	.LBB0_30
	vmovdqa64	-128(%rsp), %xmm24
	cmpq	$16, %rdx
	jae	.LBB0_21
	jmp	.LBB0_23
.LBB0_19:
	movq	%r10, %rdx
	cmpq	$16, %rdx
	jb	.LBB0_23
.LBB0_21:
	vmovdqa	240(%rdi), %xmm0
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
	vmovdqa64	208(%rdi), %xmm17
	vmovdqa64	224(%rdi), %xmm18
	vmovdqa64	.LCPI0_2(%rip), %xmm19
	vpbroadcastq	.LCPI0_3(%rip), %xmm20
	vpmovsxbq	.LCPI0_11(%rip), %xmm21
	.p2align	4
.LBB0_22:
	vmovdqu64	(%r9), %xmm16
	vpshufb	%xmm19, %xmm2, %xmm22
	vpxorq	%xmm22, %xmm3, %xmm22
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
	vpxorq	%xmm16, %xmm22, %xmm22
	vmovdqu64	%xmm22, (%rcx)
	addq	$16, %rcx
	addq	$-16, %rdx
	addq	$16, %r9
	vpshufb	%xmm19, %xmm16, %xmm16
	vpxorq	%xmm16, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm16
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm22
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm23
	vpxorq	%xmm22, %xmm23, %xmm22
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm22, %xmm23
	vpxorq	%xmm23, %xmm16, %xmm16
	vpsrldq	$8, %xmm22, %xmm22
	vpclmulqdq	$16, %xmm20, %xmm16, %xmm23
	vpshufd	$78, %xmm16, %xmm16
	vpxorq	%xmm16, %xmm23, %xmm16
	vpclmulqdq	$16, %xmm20, %xmm16, %xmm23
	vpxorq	%xmm1, %xmm23, %xmm23
	vpshufd	$78, %xmm16, %xmm1
	vpternlogq	$150, %xmm22, %xmm23, %xmm1
	vpaddd	%xmm21, %xmm2, %xmm2
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
	vaesenc	192(%rdi), %xmm2, %xmm2
	vaesenc	208(%rdi), %xmm2, %xmm2
	vaesenclast	224(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovdqu8	%xmm2, (%rcx) {%k1}
	vpshufb	%xmm3, %xmm0, %xmm0
	vmovdqa	240(%rdi), %xmm2
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
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm2
	vmovq	%r10, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpsllq	$3, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI0_3(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpxorq	(%rdi), %xmm24, %xmm2
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
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_10:
	.cfi_def_cfa_offset 128
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
	.size	haberdashery_aes256gcm_tigerlake_decrypt, .Lfunc_end0-haberdashery_aes256gcm_tigerlake_decrypt
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
	.section	.text.haberdashery_aes256gcm_tigerlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_encrypt
	.p2align	4
	.type	haberdashery_aes256gcm_tigerlake_encrypt,@function
haberdashery_aes256gcm_tigerlake_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	112(%rsp), %r10
	xorl	%eax, %eax
	cmpq	128(%rsp), %r10
	jne	.LBB1_6
	cmpq	$16, 144(%rsp)
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
	movq	136(%rsp), %rax
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm25
	vpxor	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	.LBB1_4
	cmpq	$96, %r8
	jb	.LBB1_8
	vmovdqa	240(%rdi), %xmm0
	vmovdqa	256(%rdi), %xmm2
	vmovdqa	272(%rdi), %xmm3
	vmovdqa	288(%rdi), %xmm4
	vmovdqa	304(%rdi), %xmm5
	vmovdqa	320(%rdi), %xmm6
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
	vmovdqa	240(%rdi), %xmm0
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
	vmovdqa	240(%rdi), %xmm3
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
	movq	120(%rsp), %rsi
	vpshufb	.LCPI1_0(%rip), %xmm25, %xmm0
	vpaddd	.LCPI1_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r10
	jb	.LBB1_15
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
	vmovaps	16(%rdi), %xmm11
	vmovdqa	32(%rdi), %xmm3
	vmovaps	48(%rdi), %xmm10
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm5, %xmm4, %xmm5
	vpxor	%xmm6, %xmm4, %xmm6
	vpxor	%xmm7, %xmm4, %xmm7
	vpxor	%xmm4, %xmm8, %xmm8
	vpxor	%xmm4, %xmm9, %xmm9
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm10, %xmm16
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
	vmovaps	112(%rdi), %xmm12
	vmovaps	%xmm12, -80(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	#NO_APP
	vmovdqa	128(%rdi), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
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
	vmovaps	176(%rdi), %xmm13
	vmovaps	%xmm13, -112(%rsp)
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	#NO_APP
	vmovdqa	192(%rdi), %xmm13
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm9, %xmm9
	#NO_APP
	vmovapd	208(%rdi), %xmm14
	vmovapd	%xmm14, %xmm23
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
	vpxorq	16(%r9), %xmm5, %xmm26
	vpxorq	32(%r9), %xmm6, %xmm27
	vpxorq	48(%r9), %xmm7, %xmm28
	vpxorq	64(%r9), %xmm8, %xmm29
	vpxor	80(%r9), %xmm9, %xmm5
	leaq	96(%r9), %r9
	leaq	96(%rsi), %rdx
	vpaddd	.LCPI1_9(%rip), %xmm0, %xmm2
	vmovdqu64	%xmm17, (%rsi)
	vmovdqu64	%xmm26, 16(%rsi)
	vmovdqu64	%xmm27, 32(%rsi)
	vmovdqu64	%xmm28, 48(%rsi)
	leaq	-96(%r10), %rcx
	vmovdqu64	%xmm29, 64(%rsi)
	vmovdqu	%xmm5, 80(%rsi)
	cmpq	$192, %r10
	jb	.LBB1_33
	vmovdqa64	%xmm25, -128(%rsp)
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
	vmovaps	%xmm16, -32(%rsp)
	vmovdqa64	%xmm18, -48(%rsp)
	vmovdqa	%xmm12, -64(%rsp)
	vmovdqa64	%xmm15, %xmm19
	vmovaps	-80(%rsp), %xmm16
	vmovdqa64	-96(%rsp), %xmm18
	vmovdqa64	%xmm10, %xmm20
	vmovaps	-112(%rsp), %xmm25
	vmovdqa64	%xmm13, %xmm21
	vmovdqa64	%xmm14, %xmm31
	.p2align	4
.LBB1_31:
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
	vpshufb	%xmm24, %xmm10, %xmm30
	vpshufb	%xmm24, %xmm5, %xmm10
	vpxor	%xmm0, %xmm4, %xmm13
	vpxor	%xmm6, %xmm4, %xmm14
	vpxor	%xmm7, %xmm4, %xmm15
	vpxor	%xmm4, %xmm8, %xmm0
	vpxor	%xmm4, %xmm9, %xmm5
	vpxorq	%xmm30, %xmm4, %xmm6
	#APP
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	%xmm11, %xmm30
	vmovaps	80(%rsp), %xmm3
	vmovaps	-16(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm24, %xmm29, %xmm10
	vmovaps	-32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovaps	64(%rsp), %xmm3
	vmovaps	-48(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm24, %xmm28, %xmm10
	vmovdqa64	%xmm22, %xmm11
	#APP
	vaesenc	%xmm11, %xmm13, %xmm13
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm6, %xmm6
	#NO_APP
	vmovaps	48(%rsp), %xmm3
	vmovdqa64	%xmm19, %xmm12
	#APP
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm24, %xmm27, %xmm10
	vmovaps	%xmm16, %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovaps	32(%rsp), %xmm12
	vmovaps	-64(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm12, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm12, %xmm10, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm12, %xmm10, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$1, %xmm12, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm24, %xmm26, %xmm10
	vmovdqa64	%xmm18, %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm20, %xmm12
	vmovaps	16(%rsp), %xmm3
	#APP
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm30, %xmm11
	vpshufb	%xmm24, %xmm17, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vmovaps	%xmm25, %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm21, %xmm12
	vmovdqa	(%rsp), %xmm3
	#APP
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm9, %xmm3, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpunpckhqdq	%xmm3, %xmm9, %xmm1
	vmovapd	%xmm23, %xmm3
	#APP
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	#NO_APP
	vmovdqa64	%xmm31, %xmm3
	#APP
	vaesenclast	%xmm3, %xmm13, %xmm13
	vaesenclast	%xmm3, %xmm14, %xmm14
	vaesenclast	%xmm3, %xmm15, %xmm15
	vaesenclast	%xmm3, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm5, %xmm5
	vaesenclast	%xmm3, %xmm6, %xmm6
	#NO_APP
	vpxorq	(%r9), %xmm13, %xmm17
	vpxorq	16(%r9), %xmm14, %xmm26
	vpxorq	32(%r9), %xmm15, %xmm27
	vpxorq	48(%r9), %xmm0, %xmm28
	vpxorq	64(%r9), %xmm5, %xmm29
	vpxor	80(%r9), %xmm6, %xmm5
	vpxor	%xmm1, %xmm7, %xmm1
	vpbroadcastq	.LCPI1_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm0
	vpshufd	$78, %xmm8, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm6, %xmm0, %xmm1
	addq	$96, %r9
	vmovdqu64	%xmm17, (%rdx)
	vmovdqu64	%xmm26, 16(%rdx)
	vmovdqu64	%xmm27, 32(%rdx)
	vmovdqu64	%xmm28, 48(%rdx)
	vmovdqu64	%xmm29, 64(%rdx)
	vmovdqu	%xmm5, 80(%rdx)
	addq	$96, %rdx
	addq	$-96, %rcx
	vpaddd	.LCPI1_8(%rip), %xmm2, %xmm2
	cmpq	$95, %rcx
	ja	.LBB1_31
	vmovdqa64	-128(%rsp), %xmm25
.LBB1_33:
	vpshufb	%xmm24, %xmm17, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpshufb	%xmm24, %xmm26, %xmm1
	vpshufb	%xmm24, %xmm27, %xmm4
	vpshufb	%xmm24, %xmm28, %xmm6
	vpshufb	%xmm24, %xmm29, %xmm7
	vpshufb	%xmm24, %xmm5, %xmm3
	vmovdqa	240(%rdi), %xmm5
	vmovdqa	256(%rdi), %xmm8
	vmovdqa	272(%rdi), %xmm9
	vmovdqa	288(%rdi), %xmm10
	vmovdqa	304(%rdi), %xmm11
	vmovdqa	320(%rdi), %xmm12
	vpclmulqdq	$0, %xmm3, %xmm5, %xmm13
	vpclmulqdq	$1, %xmm3, %xmm5, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm5, %xmm15
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$17, %xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm7, %xmm8, %xmm15
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm17
	vpternlogq	$150, %xmm15, %xmm14, %xmm17
	vpclmulqdq	$17, %xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm8
	vpternlogq	$150, %xmm13, %xmm5, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm13
	vpternlogq	$150, %xmm5, %xmm17, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm5
	vpternlogq	$150, %xmm3, %xmm7, %xmm5
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
	vmovdqa64	224(%rdi), %xmm17
	vmovdqa64	240(%rdi), %xmm18
	vmovdqa64	.LCPI1_2(%rip), %xmm19
	vpmovsxbq	.LCPI1_12(%rip), %xmm20
	vpbroadcastq	.LCPI1_3(%rip), %xmm21
	.p2align	4
.LBB1_18:
	vpshufb	%xmm19, %xmm2, %xmm22
	vpxorq	%xmm22, %xmm0, %xmm22
	vaesenc	%xmm3, %xmm22, %xmm22
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
	vaesenclast	%xmm17, %xmm22, %xmm22
	vpxorq	(%r9), %xmm22, %xmm22
	addq	$16, %r9
	vmovdqu64	%xmm22, (%rsi)
	addq	$16, %rsi
	addq	$-16, %rcx
	vpaddd	%xmm20, %xmm2, %xmm2
	vpshufb	%xmm19, %xmm22, %xmm22
	vpxorq	%xmm22, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm18, %xmm22
	vpclmulqdq	$1, %xmm1, %xmm18, %xmm23
	vpclmulqdq	$16, %xmm1, %xmm18, %xmm24
	vpxorq	%xmm23, %xmm24, %xmm23
	vpclmulqdq	$17, %xmm1, %xmm18, %xmm1
	vpslldq	$8, %xmm23, %xmm24
	vpxorq	%xmm24, %xmm22, %xmm22
	vpsrldq	$8, %xmm23, %xmm23
	vpclmulqdq	$16, %xmm21, %xmm22, %xmm24
	vpshufd	$78, %xmm22, %xmm22
	vpxorq	%xmm22, %xmm24, %xmm22
	vpclmulqdq	$16, %xmm21, %xmm22, %xmm24
	vpxorq	%xmm1, %xmm24, %xmm24
	vpshufd	$78, %xmm22, %xmm1
	vpternlogq	$150, %xmm23, %xmm24, %xmm1
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
	vaesenc	192(%rdi), %xmm2, %xmm2
	vaesenc	208(%rdi), %xmm2, %xmm2
	vaesenclast	224(%rdi), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rsi) {%k1}
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vpshufb	%xmm3, %xmm0, %xmm0
	vmovdqa	240(%rdi), %xmm3
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
	vpxorq	(%rdi), %xmm25, %xmm4
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
.LBB1_6:
	addq	$96, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcm_tigerlake_encrypt, .Lfunc_end1-haberdashery_aes256gcm_tigerlake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
.LCPI2_9:
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
	.quad	4294967297
.LCPI2_8:
	.quad	274877907008
.LCPI2_10:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_2:
	.long	0x00000002
.LCPI2_3:
	.long	0x0c0f0e0d
.LCPI2_4:
	.long	0x00000004
.LCPI2_5:
	.long	0x00000008
.LCPI2_6:
	.long	0x00000010
.LCPI2_7:
	.long	0x00000020
	.section	.text.haberdashery_aes256gcm_tigerlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_init
	.p2align	4
	.type	haberdashery_aes256gcm_tigerlake_init,@function
haberdashery_aes256gcm_tigerlake_init:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$32, %rdx
	jne	.LBB2_2
	vmovupd	(%rsi), %xmm16
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm16, %xmm0
	vpslldq	$8, %xmm16, %xmm2
	vpslldq	$12, %xmm16, %xmm3
	vpternlogq	$150, %xmm2, %xmm0, %xmm3
	vpbroadcastd	.LCPI2_3(%rip), %xmm17
	vpshufb	%xmm17, %xmm1, %xmm0
	vpbroadcastq	.LCPI2_1(%rip), %xmm2
	vaesenclast	%xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm3, %xmm16, %xmm2
	vaesenc	%xmm1, %xmm16, %xmm0
	vpslldq	$4, %xmm1, %xmm3
	vpslldq	$8, %xmm1, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm2, %xmm3
	vpxor	%xmm15, %xmm15, %xmm15
	vaesenclast	%xmm15, %xmm3, %xmm3
	vbroadcastss	.LCPI2_2(%rip), %xmm6
	vpternlogq	$150, %xmm5, %xmm1, %xmm3
	vbroadcastss	.LCPI2_3(%rip), %xmm13
	#APP
	vaesenc	%xmm2, %xmm0, %xmm0
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm7
	vpslldq	$12, %xmm2, %xmm8
	vpternlogq	$150, %xmm5, %xmm7, %xmm8
	vpshufb	%xmm13, %xmm3, %xmm4
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm8, %xmm4
	#NO_APP
	vbroadcastss	.LCPI2_4(%rip), %xmm7
	#APP
	vaesenc	%xmm3, %xmm0, %xmm0
	vpslldq	$4, %xmm3, %xmm6
	vpslldq	$8, %xmm3, %xmm8
	vpslldq	$12, %xmm3, %xmm9
	vpternlogq	$150, %xmm6, %xmm8, %xmm9
	vpshufd	$255, %xmm4, %xmm5
	vaesenclast	%xmm15, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm9, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm4, %xmm0, %xmm0
	vpslldq	$4, %xmm4, %xmm8
	vpslldq	$8, %xmm4, %xmm9
	vpslldq	$12, %xmm4, %xmm10
	vpternlogq	$150, %xmm8, %xmm9, %xmm10
	vpshufb	%xmm13, %xmm5, %xmm6
	vaesenclast	%xmm7, %xmm6, %xmm6
	vpternlogq	$150, %xmm4, %xmm10, %xmm6
	#NO_APP
	vmovaps	%xmm4, %xmm21
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm10
	vpternlogq	$150, %xmm8, %xmm9, %xmm10
	vpshufd	$255, %xmm6, %xmm7
	vaesenclast	%xmm15, %xmm7, %xmm7
	vpternlogq	$150, %xmm5, %xmm10, %xmm7
	#NO_APP
	vmovaps	%xmm5, %xmm22
	vbroadcastss	.LCPI2_5(%rip), %xmm9
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vpslldq	$4, %xmm6, %xmm10
	vpslldq	$8, %xmm6, %xmm11
	vpslldq	$12, %xmm6, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	vpshufb	%xmm13, %xmm7, %xmm8
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpternlogq	$150, %xmm6, %xmm12, %xmm8
	#NO_APP
	vmovaps	%xmm6, %xmm23
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vpslldq	$4, %xmm7, %xmm10
	vpslldq	$8, %xmm7, %xmm11
	vpslldq	$12, %xmm7, %xmm12
	vpternlogq	$150, %xmm10, %xmm11, %xmm12
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm15, %xmm9, %xmm9
	vpternlogq	$150, %xmm7, %xmm12, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_6(%rip), %xmm11
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm12
	vpslldq	$8, %xmm8, %xmm14
	vpslldq	$12, %xmm8, %xmm4
	vpternlogq	$150, %xmm12, %xmm14, %xmm4
	vpshufb	%xmm13, %xmm9, %xmm10
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm4, %xmm10
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm4
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vpslldq	$4, %xmm9, %xmm12
	vpslldq	$8, %xmm9, %xmm14
	vpslldq	$12, %xmm9, %xmm5
	vpternlogq	$150, %xmm12, %xmm14, %xmm5
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm15, %xmm11, %xmm11
	vpternlogq	$150, %xmm9, %xmm5, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vpslldq	$4, %xmm10, %xmm5
	vpslldq	$8, %xmm10, %xmm14
	vpslldq	$12, %xmm10, %xmm6
	vpternlogq	$150, %xmm5, %xmm14, %xmm6
	vpshufb	%xmm13, %xmm11, %xmm12
	vaesenclast	%xmm4, %xmm12, %xmm12
	vpternlogq	$150, %xmm10, %xmm6, %xmm12
	#NO_APP
	vpslldq	$4, %xmm11, %xmm4
	vpunpcklqdq	%xmm11, %xmm15, %xmm5
	vinsertps	$55, %xmm11, %xmm0, %xmm6
	vpternlogq	$150, %xmm5, %xmm4, %xmm6
	vpshufd	$255, %xmm12, %xmm4
	vaesenclast	%xmm15, %xmm4, %xmm13
	vpternlogq	$150, %xmm6, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm4
	vpunpcklqdq	%xmm12, %xmm15, %xmm5
	vinsertps	$55, %xmm12, %xmm0, %xmm6
	vpternlogq	$150, %xmm5, %xmm4, %xmm6
	vpshufb	%xmm17, %xmm13, %xmm4
	vpbroadcastq	.LCPI2_8(%rip), %xmm5
	vaesenclast	%xmm5, %xmm4, %xmm14
	vpternlogq	$150, %xmm6, %xmm12, %xmm14
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenclast	%xmm14, %xmm0, %xmm0
	vpshufb	.LCPI2_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm4
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm4, %xmm5
	vpblendd	$12, %xmm4, %xmm15, %xmm4
	vpsllq	$63, %xmm4, %xmm6
	vpternlogq	$30, %xmm5, %xmm0, %xmm6
	vpsllq	$62, %xmm4, %xmm5
	vpsllq	$57, %xmm4, %xmm0
	vpternlogq	$150, %xmm5, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm0, %xmm4
	vpbroadcastq	.LCPI2_10(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm0, %xmm17
	vpshufd	$78, %xmm4, %xmm15
	vpternlogq	$150, %xmm6, %xmm17, %xmm15
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm6
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm17
	vpxorq	%xmm6, %xmm17, %xmm6
	vpslldq	$8, %xmm6, %xmm17
	vpxorq	%xmm17, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm17
	vpshufd	$78, %xmm4, %xmm4
	vpxorq	%xmm4, %xmm17, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm17
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm18
	vpxorq	%xmm17, %xmm18, %xmm17
	vpsrldq	$8, %xmm6, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm6, %xmm17, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm17
	vpshufd	$78, %xmm6, %xmm6
	vpxorq	%xmm6, %xmm17, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm6, %xmm17
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm18
	vpshufd	$78, %xmm6, %xmm6
	vpternlogq	$150, %xmm17, %xmm18, %xmm6
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm17
	vpclmulqdq	$16, %xmm5, %xmm17, %xmm18
	vpshufd	$78, %xmm17, %xmm17
	vpxorq	%xmm17, %xmm18, %xmm17
	vpclmulqdq	$16, %xmm5, %xmm17, %xmm18
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm19
	vpshufd	$78, %xmm17, %xmm17
	vpternlogq	$150, %xmm18, %xmm19, %xmm17
	vpclmulqdq	$0, %xmm0, %xmm17, %xmm18
	vpclmulqdq	$16, %xmm0, %xmm17, %xmm19
	vpclmulqdq	$1, %xmm0, %xmm17, %xmm20
	vpxorq	%xmm19, %xmm20, %xmm19
	vpslldq	$8, %xmm19, %xmm20
	vpxorq	%xmm20, %xmm18, %xmm18
	vpclmulqdq	$16, %xmm5, %xmm18, %xmm20
	vpshufd	$78, %xmm18, %xmm18
	vpxorq	%xmm18, %xmm20, %xmm18
	vpclmulqdq	$16, %xmm5, %xmm18, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm17, %xmm20
	vpxorq	%xmm5, %xmm20, %xmm5
	vpsrldq	$8, %xmm19, %xmm19
	vpshufd	$78, %xmm18, %xmm18
	vmovdqa64	%xmm16, (%rdi)
	vmovdqa	%xmm1, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm3, 48(%rdi)
	vmovaps	%xmm21, 64(%rdi)
	vmovaps	%xmm22, 80(%rdi)
	vmovaps	%xmm23, 96(%rdi)
	vmovaps	%xmm7, 112(%rdi)
	vmovaps	%xmm8, 128(%rdi)
	vmovaps	%xmm9, 144(%rdi)
	vmovaps	%xmm10, 160(%rdi)
	vmovaps	%xmm11, 176(%rdi)
	vmovaps	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovdqa	%xmm14, 224(%rdi)
	vmovdqa	%xmm0, 240(%rdi)
	vmovdqa	%xmm15, 256(%rdi)
	vmovdqa	%xmm4, 272(%rdi)
	vmovdqa64	%xmm17, 288(%rdi)
	vpternlogq	$150, %xmm19, %xmm5, %xmm18
	vmovdqa64	%xmm18, 304(%rdi)
	vmovdqa	%xmm6, 320(%rdi)
	movl	$1, %eax
.LBB2_2:
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcm_tigerlake_init, .Lfunc_end2-haberdashery_aes256gcm_tigerlake_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_tigerlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_tigerlake_is_supported
	.p2align	4
	.type	haberdashery_aes256gcm_tigerlake_is_supported,@function
haberdashery_aes256gcm_tigerlake_is_supported:
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
	.size	haberdashery_aes256gcm_tigerlake_is_supported, .Lfunc_end3-haberdashery_aes256gcm_tigerlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

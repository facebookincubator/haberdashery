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
.LCPI0_3:
	.zero	8
	.quad	-4467570830351532032
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
.LCPI0_10:
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
.LCPI0_11:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_12:
	.long	5
	.section	.text.haberdashery_aes256gcm_broadwell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_broadwell_decrypt
	.p2align	4
	.type	haberdashery_aes256gcm_broadwell_decrypt,@function
haberdashery_aes256gcm_broadwell_decrypt:
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
	subq	$488, %rsp
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	544(%rsp), %r12
	xorl	%eax, %eax
	cmpq	576(%rsp), %r12
	jne	.LBB0_23
	cmpq	$12, %rdx
	jne	.LBB0_23
	movq	%r12, %rdx
	shrq	$5, %rdx
	cmpq	$2147483646, %rdx
	ja	.LBB0_23
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB0_23
	cmpq	$16, 560(%rsp)
	jne	.LBB0_23
	movq	552(%rsp), %r13
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vpxor	%xmm7, %xmm7, %xmm7
	testq	%r8, %r8
	je	.LBB0_24
	cmpq	$96, %r8
	jb	.LBB0_7
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	64(%rcx), %xmm5
	vmovdqu	80(%rcx), %xmm6
	vmovdqa	.LCPI0_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm7
	vpshufb	%xmm0, %xmm2, %xmm10
	vpshufb	%xmm0, %xmm3, %xmm8
	vpshufb	%xmm0, %xmm4, %xmm9
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vmovdqa	240(%rdi), %xmm1
	vmovdqa	256(%rdi), %xmm2
	vmovdqa	272(%rdi), %xmm3
	vmovdqa	288(%rdi), %xmm4
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
	vmovdqa	304(%rdi), %xmm5
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	320(%rdi), %xmm6
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
	leaq	-96(%r8), %rax
	cmpq	$192, %r8
	jb	.LBB0_20
	.p2align	4
.LBB0_19:
	vmovdqu	(%rcx), %xmm11
	vmovdqu	32(%rcx), %xmm12
	vmovdqu	48(%rcx), %xmm13
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vpslldq	$8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpbroadcastq	.LCPI0_11(%rip), %xmm10
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
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB0_19
.LBB0_20:
	vpslldq	$8, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm7
	cmpq	$16, %rax
	jae	.LBB0_9
	jmp	.LBB0_14
.LBB0_24:
	testq	%r12, %r12
	jne	.LBB0_25
	jmp	.LBB0_22
.LBB0_7:
	movq	%r8, %rax
	cmpq	$16, %rax
	jb	.LBB0_14
.LBB0_9:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB0_10
	cmpq	$16, %rdx
	jae	.LBB0_12
.LBB0_15:
	movq	%r9, %rbx
	testq	%rdx, %rdx
	je	.LBB0_16
.LBB0_21:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	%rdi, %r14
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %r15
	vmovdqa	%xmm7, 16(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r15, %r8
	movq	%r14, %rdi
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vmovdqa	240(%r14), %xmm1
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
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm7
	testq	%r12, %r12
	movq	%rbx, %r9
	jne	.LBB0_25
	jmp	.LBB0_22
.LBB0_10:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI0_2(%rip), %xmm1, %xmm1
	addq	$16, %rcx
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI0_11(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm7
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB0_15
.LBB0_12:
	vmovdqa	.LCPI0_2(%rip), %xmm1
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
	.p2align	4
.LBB0_13:
	vmovdqu	(%rcx), %xmm3
	vmovdqu	16(%rcx), %xmm4
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
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
	vpxor	%xmm3, %xmm5, %xmm7
	cmpq	$15, %rax
	ja	.LBB0_13
.LBB0_14:
	movq	%rax, %rdx
	movq	%r9, %rbx
	testq	%rdx, %rdx
	jne	.LBB0_21
.LBB0_16:
	testq	%r12, %r12
	je	.LBB0_22
	movq	%rbx, %r9
.LBB0_25:
	vmovdqa	144(%rsp), %xmm0
	vpshufb	.LCPI0_0(%rip), %xmm0, %xmm0
	movq	568(%rsp), %rbx
	vpaddd	.LCPI0_1(%rip), %xmm0, %xmm8
	cmpq	$96, %r12
	jb	.LBB0_26
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	272(%rdi), %xmm0
	vmovaps	%xmm0, 448(%rsp)
	vmovaps	288(%rdi), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovaps	304(%rdi), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovaps	320(%rdi), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	128(%rdi), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	144(%rdi), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	movq	%r12, %r14
	vmovaps	160(%rdi), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	176(%rdi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovdqa	224(%rdi), %xmm0
	vmovdqa	%xmm0, 176(%rsp)
	.p2align	4
.LBB0_33:
	vmovdqa	%xmm8, 32(%rsp)
	vmovdqu	(%r9), %xmm9
	vmovdqa	%xmm9, 112(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	48(%r9), %xmm12
	vmovdqa	%xmm12, 80(%rsp)
	vmovdqu	64(%r9), %xmm10
	vmovdqu	80(%r9), %xmm11
	vmovdqa	%xmm11, 128(%rsp)
	vmovdqa	.LCPI0_2(%rip), %xmm5
	vpshufb	%xmm5, %xmm8, %xmm0
	vpaddd	.LCPI0_1(%rip), %xmm8, %xmm1
	vpshufb	%xmm5, %xmm1, %xmm1
	vpaddd	.LCPI0_4(%rip), %xmm8, %xmm2
	vpshufb	%xmm5, %xmm2, %xmm2
	vpaddd	.LCPI0_5(%rip), %xmm8, %xmm3
	vpshufb	%xmm5, %xmm3, %xmm3
	vpaddd	.LCPI0_6(%rip), %xmm8, %xmm4
	vpshufb	%xmm5, %xmm4, %xmm4
	vmovd	.LCPI0_12(%rip), %xmm6
	vpaddd	32(%rsp), %xmm6, %xmm6
	vpshufb	%xmm5, %xmm6, %xmm6
	vmovdqa	%xmm7, %xmm8
	vpshufb	%xmm5, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	%xmm7, 96(%rsp)
	vpshufb	%xmm5, %xmm11, %xmm9
	vmovdqa	160(%rsp), %xmm7
	vpxor	%xmm0, %xmm7, %xmm15
	vpxor	%xmm1, %xmm7, %xmm0
	vpxor	%xmm2, %xmm7, %xmm1
	vpxor	%xmm3, %xmm7, %xmm2
	vpxor	%xmm4, %xmm7, %xmm3
	vpxor	%xmm6, %xmm7, %xmm14
	vmovaps	384(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm8, %xmm8, %xmm8
	vxorps	%xmm4, %xmm4, %xmm4
	vmovaps	64(%rsp), %xmm11
	vmovaps	368(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm9, %xmm6
	vpxor	%xmm6, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm9, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm9, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm9, %xmm6
	vpxor	%xmm6, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm5, %xmm10, %xmm6
	vmovaps	352(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovaps	48(%rsp), %xmm11
	vmovaps	336(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vpshufb	%xmm5, %xmm12, %xmm6
	vmovaps	320(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovaps	448(%rsp), %xmm11
	vmovaps	304(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovdqa	16(%rsp), %xmm6
	vpshufb	%xmm5, %xmm6, %xmm6
	vmovaps	288(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovaps	432(%rsp), %xmm11
	vmovaps	272(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm6, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vmovdqu	16(%r9), %xmm6
	vmovaps	256(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vpshufb	%xmm5, %xmm6, %xmm9
	vmovdqa	416(%rsp), %xmm13
	vmovaps	240(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm9, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm13, %xmm9, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$17, %xmm13, %xmm9, %xmm11
	vpxor	%xmm4, %xmm11, %xmm4
	vpclmulqdq	$1, %xmm13, %xmm9, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	#NO_APP
	vmovaps	224(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	vmovdqa	400(%rsp), %xmm11
	vmovdqa	208(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm5
	#APP
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm11, %xmm5, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$17, %xmm11, %xmm5, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$1, %xmm11, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	#NO_APP
	vpxor	%xmm11, %xmm11, %xmm11
	vpunpcklqdq	%xmm8, %xmm11, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpunpckhqdq	%xmm11, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpbroadcastq	.LCPI0_11(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm7
	vpxor	%xmm7, %xmm4, %xmm7
	vmovaps	192(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	176(%rsp), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm1, %xmm1
	vaesenclast	%xmm4, %xmm2, %xmm2
	vaesenclast	%xmm4, %xmm3, %xmm3
	vaesenclast	%xmm4, %xmm14, %xmm14
	#NO_APP
	vpxor	112(%rsp), %xmm15, %xmm4
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm8
	vpxor	16(%rsp), %xmm1, %xmm1
	vpxor	80(%rsp), %xmm2, %xmm2
	vpxor	%xmm3, %xmm10, %xmm3
	vmovdqu	%xmm4, (%rbx)
	vmovdqu	%xmm0, 16(%rbx)
	vmovdqu	%xmm1, 32(%rbx)
	vmovdqu	%xmm2, 48(%rbx)
	vmovdqu	%xmm3, 64(%rbx)
	vpxor	128(%rsp), %xmm14, %xmm0
	vmovdqu	%xmm0, 80(%rbx)
	addq	$96, %r9
	addq	$96, %rbx
	addq	$-96, %r14
	vpaddd	.LCPI0_8(%rip), %xmm8, %xmm8
	cmpq	$95, %r14
	ja	.LBB0_33
	cmpq	$16, %r14
	jae	.LBB0_28
	jmp	.LBB0_30
.LBB0_26:
	movq	%r12, %r14
	cmpq	$16, %r14
	jb	.LBB0_30
.LBB0_28:
	vmovdqa	240(%rdi), %xmm0
	vmovaps	(%rdi), %xmm1
	vmovaps	%xmm1, 32(%rsp)
	vmovaps	16(%rdi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	32(%rdi), %xmm1
	vmovaps	%xmm1, 128(%rsp)
	vmovaps	48(%rdi), %xmm1
	vmovaps	%xmm1, 112(%rsp)
	vmovaps	64(%rdi), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	80(%rdi), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovaps	96(%rdi), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	112(%rdi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovdqa	128(%rdi), %xmm9
	vmovdqa	144(%rdi), %xmm10
	vmovdqa	160(%rdi), %xmm11
	vmovdqa	176(%rdi), %xmm12
	vmovdqa	192(%rdi), %xmm13
	vmovdqa	208(%rdi), %xmm14
	vmovdqa	224(%rdi), %xmm15
	vmovdqa	.LCPI0_2(%rip), %xmm1
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
	.p2align	4
.LBB0_29:
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm0, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm0, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm4, %xmm0, %xmm4
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm6
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpshufd	$78, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm5
	vpxor	%xmm4, %xmm5, %xmm7
	vpshufb	%xmm1, %xmm8, %xmm4
	vpxor	32(%rsp), %xmm4, %xmm4
	vaesenc	16(%rsp), %xmm4, %xmm4
	vaesenc	128(%rsp), %xmm4, %xmm4
	vaesenc	112(%rsp), %xmm4, %xmm4
	vaesenc	96(%rsp), %xmm4, %xmm4
	vaesenc	80(%rsp), %xmm4, %xmm4
	vaesenc	64(%rsp), %xmm4, %xmm4
	vaesenc	48(%rsp), %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenclast	%xmm15, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vmovdqu	%xmm3, (%rbx)
	addq	$16, %rbx
	addq	$-16, %r14
	addq	$16, %r9
	vpaddd	.LCPI0_1(%rip), %xmm8, %xmm8
	cmpq	$15, %r14
	ja	.LBB0_29
.LBB0_30:
	testq	%r14, %r14
	je	.LBB0_22
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%r14, %rdx
	movq	%r8, %r15
	vmovdqa	%xmm7, 16(%rsp)
	vmovdqa	%xmm8, 32(%rsp)
	callq	*%r13
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpxor	(%rbp), %xmm0, %xmm0
	vaesenc	16(%rbp), %xmm0, %xmm0
	vaesenc	32(%rbp), %xmm0, %xmm0
	vaesenc	48(%rbp), %xmm0, %xmm0
	vaesenc	64(%rbp), %xmm0, %xmm0
	vaesenc	80(%rbp), %xmm0, %xmm0
	vaesenc	96(%rbp), %xmm0, %xmm0
	vaesenc	112(%rbp), %xmm0, %xmm0
	vaesenc	128(%rbp), %xmm0, %xmm0
	vaesenc	144(%rbp), %xmm0, %xmm0
	vaesenc	160(%rbp), %xmm0, %xmm0
	vaesenc	176(%rbp), %xmm0, %xmm0
	vaesenc	192(%rbp), %xmm0, %xmm0
	vaesenc	208(%rbp), %xmm0, %xmm0
	vaesenclast	224(%rbp), %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*%r13
	vmovaps	32(%rsp), %xmm0
	vmovaps	%xmm0, 464(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	464(%rsp), %rsi
	movq	%r14, %rdx
	callq	*%r13
	movq	552(%rsp), %r13
	movq	%r15, %r8
	movq	%rbp, %rdi
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	240(%rbp), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm7
.LBB0_22:
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r12, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	144(%rsp), %xmm2
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
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm3, %xmm3
	vpshufb	.LCPI0_10(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	(%r13), %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
.LBB0_23:
	addq	$488, %rsp
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
.Lfunc_end0:
	.size	haberdashery_aes256gcm_broadwell_decrypt, .Lfunc_end0-haberdashery_aes256gcm_broadwell_decrypt
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_12:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_broadwell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_broadwell_encrypt
	.p2align	4
	.type	haberdashery_aes256gcm_broadwell_encrypt,@function
haberdashery_aes256gcm_broadwell_encrypt:
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
	movq	512(%rsp), %r12
	xorl	%eax, %eax
	cmpq	528(%rsp), %r12
	jne	.LBB1_38
	cmpq	$16, 544(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	orb	%r10b, %r11b
	jne	.LBB1_38
	movq	%r12, %r10
	shrq	$5, %r10
	cmpq	$2147483647, %r10
	setae	%r10b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r10b, %dl
	jne	.LBB1_38
	movq	536(%rsp), %r13
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vpxor	%xmm5, %xmm5, %xmm5
	testq	%r8, %r8
	je	.LBB1_4
	cmpq	$96, %r8
	jb	.LBB1_6
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
	vmovdqa	240(%rdi), %xmm1
	vmovdqa	256(%rdi), %xmm2
	vmovdqa	272(%rdi), %xmm3
	vmovdqa	288(%rdi), %xmm4
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
	vmovdqa	304(%rdi), %xmm5
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm14
	vpxor	%xmm6, %xmm14, %xmm14
	vmovdqa	320(%rdi), %xmm6
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
	leaq	-96(%r8), %rax
	cmpq	$192, %r8
	jb	.LBB1_14
	.p2align	4
.LBB1_13:
	vmovdqu	(%rcx), %xmm11
	vmovdqu	32(%rcx), %xmm12
	vmovdqu	48(%rcx), %xmm13
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vpslldq	$8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpbroadcastq	.LCPI1_12(%rip), %xmm10
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
	addq	$-96, %rax
	cmpq	$95, %rax
	ja	.LBB1_13
.LBB1_14:
	vpslldq	$8, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm5
	cmpq	$16, %rax
	jae	.LBB1_15
	jmp	.LBB1_8
.LBB1_6:
	movq	%r8, %rax
	cmpq	$16, %rax
	jb	.LBB1_8
.LBB1_15:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB1_16
	cmpq	$16, %rdx
	jae	.LBB1_18
.LBB1_9:
	testq	%rdx, %rdx
	je	.LBB1_4
.LBB1_10:
	vmovdqa	%xmm5, (%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	movq	%rdi, %r15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	movq	%r15, %rdi
	testq	%r12, %r12
	je	.LBB1_11
	vmovdqa	240(%r15), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	movq	%rbx, %r8
	movq	%r14, %r9
	jmp	.LBB1_21
.LBB1_16:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	addq	$16, %rcx
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm5
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_9
.LBB1_18:
	vmovdqa	.LCPI1_2(%rip), %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	.p2align	4
.LBB1_19:
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
	vpxor	%xmm3, %xmm5, %xmm5
	cmpq	$15, %rax
	ja	.LBB1_19
.LBB1_8:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_10
.LBB1_4:
	testq	%r12, %r12
	je	.LBB1_37
.LBB1_21:
	vmovdqa	144(%rsp), %xmm0
	vpshufb	.LCPI1_0(%rip), %xmm0, %xmm1
	movq	520(%rsp), %r14
	vpaddd	.LCPI1_1(%rip), %xmm1, %xmm0
	cmpq	$96, %r12
	jb	.LBB1_22
	vmovdqa	%xmm5, (%rsp)
	leaq	96(%r9), %rax
	leaq	96(%r14), %rcx
	vmovdqa	.LCPI1_2(%rip), %xmm11
	vpshufb	%xmm11, %xmm0, %xmm2
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm3
	vpshufb	%xmm11, %xmm3, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm11, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm6
	vpshufb	%xmm11, %xmm5, %xmm5
	vpshufb	%xmm11, %xmm6, %xmm6
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm7
	vpshufb	%xmm11, %xmm7, %xmm7
	vpaddd	.LCPI1_9(%rip), %xmm1, %xmm0
	vmovdqa	(%rdi), %xmm10
	vmovdqa	16(%rdi), %xmm1
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vpxor	%xmm2, %xmm10, %xmm2
	vpxor	%xmm3, %xmm10, %xmm3
	vpxor	%xmm4, %xmm10, %xmm4
	vpxor	%xmm5, %xmm10, %xmm5
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm7, %xmm10, %xmm7
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm8, 336(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm9, 352(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vmovaps	64(%rdi), %xmm12
	vmovaps	%xmm12, 96(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	80(%rdi), %xmm12
	vmovaps	%xmm12, 80(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	96(%rdi), %xmm12
	vmovaps	%xmm12, 64(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	112(%rdi), %xmm12
	vmovaps	%xmm12, 48(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	128(%rdi), %xmm12
	vmovaps	%xmm12, 416(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	144(%rdi), %xmm12
	vmovaps	%xmm12, 400(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	160(%rdi), %xmm12
	vmovaps	%xmm12, 384(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovaps	176(%rdi), %xmm12
	vmovaps	%xmm12, 368(%rsp)
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovdqa	192(%rdi), %xmm12
	vmovdqa	%xmm12, %xmm8
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovdqa	208(%rdi), %xmm12
	vmovdqa	%xmm12, %xmm15
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	#NO_APP
	vmovdqa	224(%rdi), %xmm12
	vmovdqa	%xmm12, %xmm9
	#APP
	vaesenclast	%xmm12, %xmm2, %xmm2
	vaesenclast	%xmm12, %xmm3, %xmm3
	vaesenclast	%xmm12, %xmm4, %xmm4
	vaesenclast	%xmm12, %xmm5, %xmm5
	vaesenclast	%xmm12, %xmm6, %xmm6
	vaesenclast	%xmm12, %xmm7, %xmm7
	#NO_APP
	vpxor	(%r9), %xmm2, %xmm2
	vpxor	16(%r9), %xmm3, %xmm3
	vpxor	32(%r9), %xmm4, %xmm4
	vpxor	48(%r9), %xmm5, %xmm12
	vpxor	64(%r9), %xmm6, %xmm13
	vmovdqa	%xmm4, %xmm6
	vpxor	80(%r9), %xmm7, %xmm14
	vmovdqu	%xmm2, (%r14)
	vmovdqu	%xmm3, 16(%r14)
	vmovdqu	%xmm4, 32(%r14)
	vmovdqu	%xmm12, 48(%r14)
	vmovdqu	%xmm13, 64(%r14)
	leaq	-96(%r12), %rbx
	vmovdqu	%xmm14, 80(%r14)
	cmpq	$192, %r12
	jb	.LBB1_28
	vmovdqa	%xmm3, %xmm7
	vmovaps	240(%rdi), %xmm3
	vmovaps	%xmm3, 320(%rsp)
	vmovaps	256(%rdi), %xmm3
	vmovaps	%xmm3, 304(%rsp)
	vmovaps	272(%rdi), %xmm3
	vmovaps	%xmm3, 288(%rsp)
	vmovaps	288(%rdi), %xmm3
	vmovaps	%xmm3, 272(%rsp)
	vmovaps	304(%rdi), %xmm3
	vmovaps	%xmm3, 256(%rsp)
	vmovdqa	320(%rdi), %xmm3
	vmovdqa	%xmm3, 240(%rsp)
	vmovdqa	%xmm10, 160(%rsp)
	vmovdqa	%xmm1, 224(%rsp)
	vmovdqa	(%rsp), %xmm1
	vmovdqa	%xmm8, 192(%rsp)
	vmovdqa	%xmm15, 208(%rsp)
	vmovdqa	%xmm9, 176(%rsp)
	.p2align	4
.LBB1_31:
	vmovdqa	%xmm6, 112(%rsp)
	vmovdqa	%xmm7, 128(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	vpshufb	%xmm11, %xmm0, %xmm3
	vpaddd	.LCPI1_1(%rip), %xmm0, %xmm4
	vpshufb	%xmm11, %xmm4, %xmm4
	vpaddd	.LCPI1_4(%rip), %xmm0, %xmm5
	vpshufb	%xmm11, %xmm5, %xmm5
	vpaddd	.LCPI1_5(%rip), %xmm0, %xmm6
	vpshufb	%xmm11, %xmm6, %xmm7
	vpaddd	.LCPI1_6(%rip), %xmm0, %xmm6
	vpshufb	%xmm11, %xmm6, %xmm9
	vpaddd	.LCPI1_7(%rip), %xmm0, %xmm6
	vmovdqa	%xmm11, %xmm8
	vpshufb	%xmm11, %xmm6, %xmm11
	vpshufb	%xmm8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpshufb	%xmm8, %xmm14, %xmm0
	vmovdqa	160(%rsp), %xmm1
	vpxor	%xmm3, %xmm1, %xmm2
	vpxor	%xmm4, %xmm1, %xmm3
	vpxor	%xmm5, %xmm1, %xmm15
	vpxor	%xmm7, %xmm1, %xmm4
	vpxor	%xmm1, %xmm9, %xmm5
	vpxor	%xmm1, %xmm11, %xmm14
	vmovaps	224(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpxor	%xmm9, %xmm9, %xmm9
	vpxor	%xmm11, %xmm11, %xmm11
	vmovaps	320(%rsp), %xmm1
	vmovdqa	%xmm12, %xmm10
	vmovaps	336(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm8, %xmm13, %xmm0
	vmovaps	352(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vmovaps	304(%rsp), %xmm1
	vmovaps	96(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm8, %xmm10, %xmm0
	vmovaps	80(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vmovaps	288(%rsp), %xmm1
	vmovaps	64(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	#NO_APP
	vmovdqa	112(%rsp), %xmm0
	vpshufb	%xmm8, %xmm0, %xmm0
	vmovaps	48(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vmovaps	272(%rsp), %xmm1
	vmovaps	416(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	#NO_APP
	vmovdqa	128(%rsp), %xmm0
	vpshufb	%xmm8, %xmm0, %xmm0
	vmovaps	400(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vmovaps	256(%rsp), %xmm1
	vmovaps	384(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	#NO_APP
	vmovaps	368(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovdqa	240(%rsp), %xmm1
	vmovaps	192(%rsp), %xmm6
	vmovdqa	(%rsp), %xmm10
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm9, %xmm1, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpunpckhqdq	%xmm1, %xmm9, %xmm6
	vpxor	%xmm6, %xmm11, %xmm6
	vmovdqa	%xmm8, %xmm11
	vpbroadcastq	.LCPI1_12(%rip), %xmm1
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm7
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpshufd	$78, %xmm0, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm1
	vmovdqa	16(%rsp), %xmm0
	vmovaps	208(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	176(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm15, %xmm15
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm14, %xmm14
	#NO_APP
	vpxor	(%rax), %xmm2, %xmm2
	vpxor	16(%rax), %xmm3, %xmm7
	vpxor	32(%rax), %xmm15, %xmm6
	vpxor	48(%rax), %xmm4, %xmm12
	vpxor	64(%rax), %xmm5, %xmm13
	vpxor	80(%rax), %xmm14, %xmm14
	addq	$96, %rax
	vmovdqu	%xmm2, (%rcx)
	vmovdqu	%xmm7, 16(%rcx)
	vmovdqu	%xmm6, 32(%rcx)
	vmovdqu	%xmm12, 48(%rcx)
	vmovdqu	%xmm13, 64(%rcx)
	vmovdqu	%xmm14, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rbx
	vpaddd	.LCPI1_8(%rip), %xmm0, %xmm0
	cmpq	$95, %rbx
	ja	.LBB1_31
	vmovdqa	%xmm1, (%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm7, %xmm3
	jmp	.LBB1_29
.LBB1_22:
	vmovdqa	%xmm0, 16(%rsp)
	movq	%r12, %rbx
	movq	%r8, %r13
	cmpq	$16, %rbx
	jae	.LBB1_33
.LBB1_24:
	vmovdqa	16(%rsp), %xmm6
	jmp	.LBB1_25
.LBB1_28:
	vmovdqa	%xmm0, 16(%rsp)
.LBB1_29:
	vpshufb	%xmm11, %xmm2, %xmm1
	vpxor	(%rsp), %xmm1, %xmm1
	vpshufb	%xmm11, %xmm3, %xmm2
	vpshufb	%xmm11, %xmm6, %xmm4
	vpshufb	%xmm11, %xmm12, %xmm5
	vpshufb	%xmm11, %xmm13, %xmm6
	vpshufb	%xmm11, %xmm14, %xmm7
	vmovdqa	240(%rdi), %xmm8
	vmovdqa	256(%rdi), %xmm9
	vmovdqa	272(%rdi), %xmm10
	vmovdqa	288(%rdi), %xmm11
	vmovdqa	304(%rdi), %xmm3
	vmovdqa	320(%rdi), %xmm0
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
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm5
	movq	%rcx, %r14
	movq	%rax, %r9
	movq	%r8, %r13
	cmpq	$16, %rbx
	jb	.LBB1_24
.LBB1_33:
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovdqa	112(%rdi), %xmm7
	vmovdqa	128(%rdi), %xmm8
	vmovdqa	144(%rdi), %xmm9
	vmovdqa	160(%rdi), %xmm10
	vmovdqa	176(%rdi), %xmm11
	vmovdqa	192(%rdi), %xmm12
	vmovdqa	208(%rdi), %xmm13
	vmovdqa	224(%rdi), %xmm14
	vmovdqa	240(%rdi), %xmm15
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_12(%rip), %xmm1
	vmovdqa	16(%rsp), %xmm6
	.p2align	4
.LBB1_34:
	vpshufb	%xmm0, %xmm6, %xmm2
	vpxor	(%rsp), %xmm2, %xmm2
	vaesenc	128(%rsp), %xmm2, %xmm2
	vaesenc	112(%rsp), %xmm2, %xmm2
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
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%r14)
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm5
	addq	$16, %r9
	addq	$16, %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_1(%rip), %xmm6, %xmm6
	cmpq	$15, %rbx
	ja	.LBB1_34
.LBB1_25:
	vmovdqa	%xmm6, 16(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_26
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm5, (%rsp)
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%r15), %xmm0, %xmm0
	vaesenc	16(%r15), %xmm0, %xmm0
	vaesenc	32(%r15), %xmm0, %xmm0
	vaesenc	48(%r15), %xmm0, %xmm0
	vaesenc	64(%r15), %xmm0, %xmm0
	vaesenc	80(%r15), %xmm0, %xmm0
	vaesenc	96(%r15), %xmm0, %xmm0
	vaesenc	112(%r15), %xmm0, %xmm0
	vaesenc	128(%r15), %xmm0, %xmm0
	vaesenc	144(%r15), %xmm0, %xmm0
	vaesenc	160(%r15), %xmm0, %xmm0
	vaesenc	176(%r15), %xmm0, %xmm0
	vaesenc	192(%r15), %xmm0, %xmm0
	vaesenc	208(%r15), %xmm0, %xmm0
	vaesenclast	224(%r15), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovaps	16(%rsp), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	432(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*%rbp
	movq	%r15, %rdi
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm2
	vmovdqa	240(%r15), %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	movq	%r13, %r8
	movq	536(%rsp), %r13
	jmp	.LBB1_36
.LBB1_26:
	movq	%r13, %r8
	movq	536(%rsp), %r13
	jmp	.LBB1_37
.LBB1_11:
	vmovdqa	240(%r15), %xmm2
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
	movq	%rbx, %r8
.LBB1_36:
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
.LBB1_37:
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r12, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	144(%rsp), %xmm2
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
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm3, %xmm3
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqu	%xmm0, (%r13)
	movl	$1, %eax
.LBB1_38:
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
.Lfunc_end1:
	.size	haberdashery_aes256gcm_broadwell_encrypt, .Lfunc_end1-haberdashery_aes256gcm_broadwell_encrypt
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
.LCPI2_1:
	.quad	4294967297
	.quad	4294967297
.LCPI2_8:
	.quad	274877907008
	.quad	274877907008
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
.LCPI2_10:
	.zero	8
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_11:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_broadwell_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_broadwell_init
	.p2align	4
	.type	haberdashery_aes256gcm_broadwell_init,@function
haberdashery_aes256gcm_broadwell_init:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$32, %rdx
	jne	.LBB2_2
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	vmovdqu	(%rsi), %xmm10
	vmovdqu	16(%rsi), %xmm8
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpbroadcastd	.LCPI2_3(%rip), %xmm2
	vpshufb	%xmm2, %xmm8, %xmm3
	vaesenclast	.LCPI2_1(%rip), %xmm3, %xmm3
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpxor	%xmm0, %xmm3, %xmm4
	vmovdqa	%xmm4, (%rsp)
	vaesenc	%xmm8, %xmm10, %xmm15
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpshufd	$255, %xmm4, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	vaesenclast	%xmm0, %xmm3, %xmm3
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm3, %xmm5
	vmovdqa	%xmm5, -16(%rsp)
	vbroadcastss	.LCPI2_2(%rip), %xmm3
	vbroadcastss	.LCPI2_3(%rip), %xmm1
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vpslldq	$4, %xmm4, %xmm6
	vpslldq	$8, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	vpshufb	%xmm1, %xmm5, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpxor	%xmm6, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm9, %xmm4
	vmovaps	%xmm9, -32(%rsp)
	#APP
	vaesenc	%xmm5, %xmm15, %xmm15
	vpslldq	$4, %xmm5, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpslldq	$12, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$255, %xmm9, %xmm7
	vaesenclast	%xmm0, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI2_4(%rip), %xmm3
	vmovaps	%xmm7, %xmm5
	vmovaps	%xmm7, -48(%rsp)
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vpslldq	$4, %xmm4, %xmm6
	vpslldq	$8, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpslldq	$12, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	vpshufb	%xmm1, %xmm5, %xmm9
	vaesenclast	%xmm3, %xmm9, %xmm9
	vpxor	%xmm6, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm9, %xmm4
	vmovaps	%xmm9, -64(%rsp)
	#APP
	vaesenc	%xmm5, %xmm15, %xmm15
	vpslldq	$4, %xmm5, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpslldq	$12, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$255, %xmm9, %xmm7
	vaesenclast	%xmm0, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI2_5(%rip), %xmm3
	vmovaps	%xmm7, %xmm5
	vmovaps	%xmm7, -80(%rsp)
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vpslldq	$4, %xmm4, %xmm6
	vpslldq	$8, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpslldq	$12, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	vpshufb	%xmm1, %xmm5, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm6, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm7, %xmm4
	vmovaps	%xmm7, -96(%rsp)
	#APP
	vaesenc	%xmm5, %xmm15, %xmm15
	vpslldq	$4, %xmm5, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpslldq	$12, %xmm5, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufd	$255, %xmm7, %xmm9
	vaesenclast	%xmm0, %xmm9, %xmm9
	vpxor	%xmm3, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_6(%rip), %xmm3
	#APP
	vaesenc	%xmm4, %xmm15, %xmm15
	vpslldq	$4, %xmm4, %xmm6
	vpslldq	$8, %xmm4, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpslldq	$12, %xmm4, %xmm11
	vpxor	%xmm6, %xmm11, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	vpshufb	%xmm1, %xmm9, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm6, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vpslldq	$4, %xmm9, %xmm3
	vpslldq	$8, %xmm9, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpslldq	$12, %xmm9, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vpshufd	$255, %xmm7, %xmm11
	vaesenclast	%xmm0, %xmm11, %xmm11
	vpxor	%xmm3, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm3
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vpslldq	$4, %xmm7, %xmm6
	vpslldq	$8, %xmm7, %xmm13
	vpxor	%xmm6, %xmm13, %xmm6
	vpslldq	$12, %xmm7, %xmm13
	vpxor	%xmm6, %xmm13, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufb	%xmm1, %xmm11, %xmm12
	vaesenclast	%xmm3, %xmm12, %xmm12
	vpxor	%xmm6, %xmm12, %xmm12
	#NO_APP
	vpslldq	$4, %xmm11, %xmm1
	vpunpcklqdq	%xmm11, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vinsertps	$55, %xmm11, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm12, %xmm3
	vaesenclast	%xmm0, %xmm3, %xmm3
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm3, %xmm13
	vpslldq	$4, %xmm12, %xmm1
	vpunpcklqdq	%xmm12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vinsertps	$55, %xmm12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm2, %xmm13, %xmm2
	vaesenclast	.LCPI2_8(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	%xmm2, -112(%rsp)
	vaesenc	%xmm11, %xmm15, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI2_9(%rip), %xmm1, %xmm1
	vpsrlq	$63, %xmm1, %xmm2
	vpaddq	%xmm1, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm3
	vpor	%xmm3, %xmm1, %xmm1
	vpblendd	$12, %xmm2, %xmm0, %xmm0
	vpsllq	$63, %xmm0, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpsllq	$62, %xmm0, %xmm2
	vpsllq	$57, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpbroadcastq	.LCPI2_11(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm3
	vpslldq	$8, %xmm0, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm1, %xmm6
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm6
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm0
	vpshufd	$78, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqa	%xmm0, -128(%rsp)
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm2
	vpshufd	$78, %xmm0, %xmm14
	vpxor	%xmm2, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm14
	vpxor	%xmm2, %xmm14, %xmm2
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm14
	vpslldq	$8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm14
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm14, %xmm6
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm14
	vpxor	%xmm2, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm4, %xmm2, %xmm2
	vmovdqa	%xmm10, (%rdi)
	vmovdqa	%xmm8, 16(%rdi)
	vmovaps	(%rsp), %xmm4
	vmovaps	%xmm4, 32(%rdi)
	vmovaps	-16(%rsp), %xmm4
	vmovaps	%xmm4, 48(%rdi)
	vmovaps	-32(%rsp), %xmm4
	vmovaps	%xmm4, 64(%rdi)
	vmovaps	-48(%rsp), %xmm4
	vmovaps	%xmm4, 80(%rdi)
	vmovaps	-64(%rsp), %xmm4
	vmovaps	%xmm4, 96(%rdi)
	vmovaps	-80(%rsp), %xmm4
	vmovaps	%xmm4, 112(%rdi)
	vmovaps	-96(%rsp), %xmm4
	vmovaps	%xmm4, 128(%rdi)
	vmovaps	%xmm9, 144(%rdi)
	vmovaps	%xmm7, 160(%rdi)
	vmovaps	%xmm11, 176(%rdi)
	vmovaps	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovaps	-112(%rsp), %xmm4
	vmovaps	%xmm4, 224(%rdi)
	vmovdqa	%xmm15, 240(%rdi)
	vmovdqa	%xmm1, 256(%rdi)
	vmovdqa	%xmm5, 272(%rdi)
	vmovdqa	%xmm0, 288(%rdi)
	vmovdqa	%xmm2, 304(%rdi)
	vpxor	-128(%rsp), %xmm3, %xmm0
	vmovdqa	%xmm0, 320(%rdi)
	movl	$1, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
.LBB2_2:
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcm_broadwell_init, .Lfunc_end2-haberdashery_aes256gcm_broadwell_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_broadwell_is_supported
	.p2align	4
	.type	haberdashery_aes256gcm_broadwell_is_supported,@function
haberdashery_aes256gcm_broadwell_is_supported:
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
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	movl	$7, %eax
	movl	$1, %ecx
	#APP

	movq	%rbx, %r10
	cpuid
	xchgq	%rbx, %r10

	#NO_APP
	notl	%r8d
	testl	$1054347779, %r8d
	jne	.LBB3_4
	andl	$125829120, %edi
	cmpl	$125829120, %edi
	jne	.LBB3_4
	andl	$524585, %r9d
	cmpl	$524585, %r9d
	jne	.LBB3_4
	xorl	%ecx, %ecx
	xgetbv
	notl	%eax
	xorl	%esi, %esi
	testb	$6, %al
	sete	%sil
.LBB3_4:
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcm_broadwell_is_supported, .Lfunc_end3-haberdashery_aes256gcm_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.98.0-nightly (c397dae80 2026-07-02)"
	.section	".note.GNU-stack","",@progbits

# @generated
# https://github.com/facebookincubator/haberdashery/
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
	.section	.text.haberdashery_aes256gcm_streaming_broadwell_aad_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_aad_update
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_aad_update,@function
haberdashery_aes256gcm_streaming_broadwell_aad_update:
	.cfi_startproc
	movabsq	$-2305843009213693951, %rax
	leaq	(%rcx,%rax), %r8
	incq	%rax
	cmpq	%rax, %r8
	jae	.LBB0_3
	xorl	%eax, %eax
	retq
.LBB0_3:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	96(%rdi), %r14
	addq	%rcx, %r14
	xorl	%eax, %eax
	movabsq	$2305843009213693950, %r8
	cmpq	%r8, %r14
	ja	.LBB0_26
	cmpq	$0, 104(%rdi)
	jne	.LBB0_26
	movq	80(%rdi), %r8
	testq	%r8, %r8
	je	.LBB0_6
	leaq	(%r8,%rcx), %rbx
	cmpq	$15, %rbx
	ja	.LBB0_9
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%r8), %rax
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rcx, %r12
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r15, %rdi
	movq	%r12, %rcx
	vmovdqa	64(%r15), %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	jmp	.LBB0_24
.LBB0_6:
	movq	%rcx, %rbx
	cmpq	$96, %rbx
	jae	.LBB0_11
	jmp	.LBB0_14
.LBB0_9:
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
	movl	$16, %eax
	subq	%r8, %rax
	addq	%rsp, %r8
	leaq	(%rdx,%rax), %r15
	movq	%rcx, %rbx
	subq	%rax, %rbx
	movq	%rdi, %r12
	movq	%r8, %rdi
	movq	%rsi, %r13
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rbp
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	%rbp, %rcx
	movq	$0, 80(%r12)
	vmovdqa	(%rsp), %xmm0
	vmovdqa	240(%r13), %xmm1
	vpshufb	.LCPI0_0(%rip), %xmm0, %xmm0
	vpxor	(%r12), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI0_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%r12)
	movq	%r15, %rdx
	cmpq	$96, %rbx
	jb	.LBB0_14
.LBB0_11:
	vmovdqu	32(%rdx), %xmm1
	vmovdqu	48(%rdx), %xmm2
	vmovdqu	64(%rdx), %xmm3
	vmovdqu	80(%rdx), %xmm4
	vmovdqa	.LCPI0_0(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm6
	vpshufb	%xmm0, %xmm2, %xmm5
	vpshufb	%xmm0, %xmm3, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm8
	vmovdqa	240(%rsi), %xmm1
	vmovdqa	256(%rsi), %xmm2
	vmovdqa	272(%rsi), %xmm3
	vmovdqa	288(%rsi), %xmm4
	vpclmulqdq	$0, %xmm8, %xmm1, %xmm9
	vpclmulqdq	$1, %xmm8, %xmm1, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm11
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm8, %xmm1, %xmm8
	vpclmulqdq	$0, %xmm7, %xmm2, %xmm11
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm7, %xmm2, %xmm11
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm7, %xmm2, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm3, %xmm8
	vpclmulqdq	$1, %xmm5, %xmm3, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm12
	vpxor	%xmm12, %xmm8, %xmm8
	vmovdqu	(%rdx), %xmm12
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vmovdqu	16(%rdx), %xmm11
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm11, %xmm11
	vpxor	(%rdi), %xmm12, %xmm12
	vpclmulqdq	$17, %xmm5, %xmm3, %xmm5
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm10
	vpxor	%xmm5, %xmm10, %xmm10
	vmovdqa	304(%rsi), %xmm5
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm6
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm5, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm11, %xmm5, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpxor	%xmm6, %xmm9, %xmm9
	vmovdqa	320(%rsi), %xmm6
	vpclmulqdq	$17, %xmm11, %xmm5, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm6, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm12, %xmm6, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm12, %xmm6, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	addq	$96, %rdx
	addq	$-96, %rbx
	cmpq	$96, %rbx
	jb	.LBB0_13
	.p2align	4
.LBB0_12:
	vmovdqu	(%rdx), %xmm11
	vmovdqu	32(%rdx), %xmm12
	vmovdqu	48(%rdx), %xmm13
	vmovdqu	64(%rdx), %xmm14
	vmovdqu	80(%rdx), %xmm15
	vpslldq	$8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpbroadcastq	.LCPI0_2(%rip), %xmm10
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm9
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufb	%xmm0, %xmm11, %xmm8
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
	vmovdqu	16(%rdx), %xmm13
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
	addq	$96, %rdx
	addq	$-96, %rbx
	cmpq	$95, %rbx
	ja	.LBB0_12
.LBB0_13:
	vpslldq	$8, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI0_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rdi)
.LBB0_14:
	cmpq	$16, %rbx
	jae	.LBB0_15
	testq	%rbx, %rbx
	jne	.LBB0_23
	jmp	.LBB0_25
.LBB0_15:
	vmovdqa	(%rdi), %xmm1
	vmovdqa	240(%rsi), %xmm0
	leaq	-16(%rbx), %rax
	testb	$16, %al
	jne	.LBB0_17
	vmovdqu	(%rdx), %xmm2
	vpshufb	.LCPI0_0(%rip), %xmm2, %xmm2
	addq	$16, %rdx
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI0_2(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	movq	%rax, %rbx
.LBB0_17:
	cmpq	$16, %rax
	jb	.LBB0_21
	vmovdqa	.LCPI0_0(%rip), %xmm2
	vpbroadcastq	.LCPI0_2(%rip), %xmm3
	.p2align	4
.LBB0_19:
	vmovdqu	(%rdx), %xmm4
	vmovdqu	16(%rdx), %xmm5
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
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	addq	$32, %rdx
	addq	$-32, %rbx
	vpshufb	%xmm2, %xmm5, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	cmpq	$15, %rbx
	ja	.LBB0_19
	movq	%rbx, %rax
.LBB0_21:
	vmovdqa	%xmm1, (%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_25
.LBB0_23:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%rcx, %r12
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r15, %rdi
	movq	%r12, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%r15)
	vmovdqa	(%rsp), %xmm0
.LBB0_24:
	vmovdqa	%xmm0, 64(%r15)
	movq	%rbx, 80(%r15)
.LBB0_25:
	movq	%r14, 96(%rdi)
	movq	%rcx, %rax
.LBB0_26:
	addq	$24, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_streaming_broadwell_aad_update, .Lfunc_end0-haberdashery_aes256gcm_streaming_broadwell_aad_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
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
.LCPI1_1:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize,@function
haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$16, %rcx
	jne	.LBB1_10
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	104(%rdi), %r14
	testq	%r14, %r14
	je	.LBB1_2
	movq	%rsi, %r13
	movq	%rdx, %r12
	leaq	48(%rdi), %r15
	vmovaps	48(%rdi), %xmm0
	vxorps	64(%rdi), %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	movq	80(%rdi), %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rax
	leaq	16(%rsp), %rsi
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	%rbp, %rdi
	vmovdqa	(%rbp), %xmm0
	testq	%rbx, %rbx
	je	.LBB1_5
	vmovdqa	(%rsp), %xmm1
	vpshufb	.LCPI1_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	movq	%r13, %rsi
	vmovdqa	240(%r13), %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	movq	%r12, %rdx
	jmp	.LBB1_7
.LBB1_2:
	cmpq	$0, 80(%rdi)
	vmovdqa	(%rdi), %xmm0
	je	.LBB1_9
	vmovdqa	240(%rsi), %xmm2
	leaq	48(%rdi), %r15
	vmovdqa	64(%rdi), %xmm1
	vpshufb	.LCPI1_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
.LBB1_7:
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI1_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	jmp	.LBB1_8
.LBB1_5:
	movq	%r12, %rdx
	movq	%r13, %rsi
.LBB1_8:
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, (%r15)
	movq	$0, 32(%r15)
.LBB1_9:
	vmovdqa	240(%rsi), %xmm1
	vmovq	96(%rdi), %xmm2
	vmovq	%r14, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpsllq	$3, %xmm2, %xmm2
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
	vpbroadcastq	.LCPI1_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rdi)
	vmovdqa	(%rsi), %xmm1
	vpxor	16(%rdi), %xmm1, %xmm1
	vaesenc	16(%rsi), %xmm1, %xmm1
	vaesenc	32(%rsi), %xmm1, %xmm1
	vaesenc	48(%rsi), %xmm1, %xmm1
	vaesenc	64(%rsi), %xmm1, %xmm1
	vaesenc	80(%rsi), %xmm1, %xmm1
	vaesenc	96(%rsi), %xmm1, %xmm1
	vaesenc	112(%rsi), %xmm1, %xmm1
	vaesenc	128(%rsi), %xmm1, %xmm1
	vaesenc	144(%rsi), %xmm1, %xmm1
	vaesenc	160(%rsi), %xmm1, %xmm1
	vaesenc	176(%rsi), %xmm1, %xmm1
	vaesenc	192(%rsi), %xmm1, %xmm1
	vaesenc	208(%rsi), %xmm1, %xmm1
	vaesenclast	224(%rsi), %xmm1, %xmm1
	vpshufb	.LCPI1_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	(%rdx), %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
	addq	$40, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB1_10:
	vzeroupper
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize, .Lfunc_end1-haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize
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
.LCPI2_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI2_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI2_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_7:
	.long	6
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_8:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_broadwell_decrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_decrypt_update
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_decrypt_update,@function
haberdashery_aes256gcm_streaming_broadwell_decrypt_update:
	.cfi_startproc
	cmpq	%r9, %rcx
	jne	.LBB2_3
	movq	%rcx, %rax
	movabsq	$-68719476704, %rcx
	leaq	(%rax,%rcx), %r9
	incq	%rcx
	cmpq	%rcx, %r9
	jb	.LBB2_3
	movq	104(%rdi), %rcx
	leaq	(%rcx,%rax), %r11
	movq	%r11, %r9
	shrq	$5, %r9
	cmpq	$2147483646, %r9
	jbe	.LBB2_6
.LBB2_3:
	xorl	%eax, %eax
	retq
.LBB2_6:
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
	testq	%rcx, %rcx
	setne	%r9b
	movq	80(%rdi), %rcx
	testq	%rcx, %rcx
	sete	%r10b
	orb	%r9b, %r10b
	je	.LBB2_10
	testq	%rcx, %rcx
	je	.LBB2_11
	movq	%r11, 16(%rsp)
	movq	%rdi, %rbp
	leaq	(%rcx,%rax), %rbx
	cmpq	$15, %rbx
	ja	.LBB2_12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r14
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rax, %r15
	movq	%r8, %r12
	callq	*%r13
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%rbp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rbp)
	vmovdqa	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %r12
	movq	%r15, %rdx
	callq	*%r13
	movq	%rbp, %rdi
	jmp	.LBB2_23
.LBB2_10:
	vmovdqa	240(%rsi), %xmm0
	vmovdqa	64(%rdi), %xmm1
	vpshufb	.LCPI2_0(%rip), %xmm1, %xmm1
	vpxor	(%rdi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rdi)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB2_11:
	movq	%rax, %rbx
	cmpq	$96, %rbx
	jb	.LBB2_14
.LBB2_16:
	vmovdqa	(%rdi), %xmm7
	vmovaps	240(%rsi), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovaps	256(%rsi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	272(%rsi), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovaps	288(%rsi), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovaps	304(%rsi), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vmovaps	320(%rsi), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vmovaps	(%rsi), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	16(%rsi), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vmovaps	32(%rsi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	48(%rsi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	64(%rsi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	80(%rsi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	96(%rsi), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	112(%rsi), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	128(%rsi), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	vmovaps	144(%rsi), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	160(%rsi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	176(%rsi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	192(%rsi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovaps	208(%rsi), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovdqa	224(%rsi), %xmm0
	vmovdqa	%xmm0, 160(%rsp)
	.p2align	4
.LBB2_17:
	vmovdqu	(%rdx), %xmm9
	vmovdqa	%xmm9, 48(%rsp)
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovups	32(%rdx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	48(%rdx), %xmm14
	vmovdqu	64(%rdx), %xmm11
	vmovdqa	%xmm11, 64(%rsp)
	vmovdqu	80(%rdx), %xmm10
	vmovdqa	%xmm10, 32(%rsp)
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	.LCPI2_0(%rip), %xmm5
	vpshufb	%xmm5, %xmm0, %xmm1
	vpaddd	.LCPI2_2(%rip), %xmm0, %xmm2
	vpshufb	%xmm5, %xmm2, %xmm2
	vpaddd	.LCPI2_3(%rip), %xmm0, %xmm3
	vpshufb	%xmm5, %xmm3, %xmm3
	vpaddd	.LCPI2_4(%rip), %xmm0, %xmm4
	vpshufb	%xmm5, %xmm4, %xmm4
	vpaddd	.LCPI2_5(%rip), %xmm0, %xmm6
	vpshufb	%xmm5, %xmm6, %xmm6
	vpaddd	.LCPI2_6(%rip), %xmm0, %xmm8
	vpshufb	%xmm5, %xmm8, %xmm8
	vpaddd	.LCPI2_7(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rdi)
	vpshufb	%xmm5, %xmm9, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	vpshufb	%xmm5, %xmm10, %xmm10
	vmovdqa	144(%rsp), %xmm7
	vpxor	%xmm1, %xmm7, %xmm15
	vpxor	%xmm2, %xmm7, %xmm0
	vpxor	%xmm3, %xmm7, %xmm1
	vpxor	%xmm4, %xmm7, %xmm2
	vpxor	%xmm6, %xmm7, %xmm3
	vpxor	%xmm7, %xmm8, %xmm4
	vmovaps	368(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vxorps	%xmm6, %xmm6, %xmm6
	vpxor	%xmm9, %xmm9, %xmm9
	vmovaps	112(%rsp), %xmm12
	vmovaps	352(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	#NO_APP
	vmovaps	336(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm5, %xmm11, %xmm7
	vmovaps	96(%rsp), %xmm12
	vmovaps	320(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm7, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vmovaps	304(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm5, %xmm14, %xmm7
	vmovaps	432(%rsp), %xmm12
	vmovaps	288(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm7, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vmovaps	272(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovdqa	16(%rsp), %xmm7
	vpshufb	%xmm5, %xmm7, %xmm7
	vmovaps	416(%rsp), %xmm12
	vmovaps	256(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm7, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vmovaps	240(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovdqa	128(%rsp), %xmm11
	vpshufb	%xmm5, %xmm11, %xmm7
	vmovaps	400(%rsp), %xmm12
	vmovdqa	224(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm7, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	#NO_APP
	vmovaps	208(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	#NO_APP
	vmovdqa	384(%rsp), %xmm10
	vmovdqa	192(%rsp), %xmm12
	vmovdqa	80(%rsp), %xmm5
	#APP
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm7
	vpxor	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm7
	vpxor	%xmm7, %xmm8, %xmm8
	#NO_APP
	vpxor	%xmm10, %xmm10, %xmm10
	vpunpcklqdq	%xmm8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpunpckhqdq	%xmm10, %xmm8, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpbroadcastq	.LCPI2_8(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm7
	vpxor	%xmm7, %xmm6, %xmm7
	vmovaps	176(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	#NO_APP
	vmovaps	160(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm15, %xmm15
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpxor	48(%rsp), %xmm15, %xmm6
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	16(%rsp), %xmm1, %xmm1
	vpxor	%xmm2, %xmm14, %xmm2
	vpxor	64(%rsp), %xmm3, %xmm3
	vpxor	32(%rsp), %xmm4, %xmm4
	vmovdqu	%xmm6, (%r8)
	vmovdqu	%xmm0, 16(%r8)
	vmovdqu	%xmm1, 32(%r8)
	vmovdqu	%xmm2, 48(%r8)
	vmovdqu	%xmm3, 64(%r8)
	vmovdqu	%xmm4, 80(%r8)
	addq	$96, %rdx
	addq	$96, %r8
	addq	$-96, %rbx
	cmpq	$95, %rbx
	ja	.LBB2_17
	vmovdqa	%xmm7, (%rdi)
	cmpq	$16, %rbx
	jae	.LBB2_19
.LBB2_15:
	testq	%rbx, %rbx
	jne	.LBB2_22
	jmp	.LBB2_24
.LBB2_12:
	movl	$16, %r14d
	subq	%rcx, %r14
	leaq	(%rdx,%r14), %rdi
	movq	%rdi, 32(%rsp)
	leaq	(%r8,%r14), %rdi
	movq	%rdi, 80(%rsp)
	movq	%rax, %rbx
	subq	%r14, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r15
	movq	%r15, %rdi
	movq	%rsi, 48(%rsp)
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movq	%rax, %r13
	movq	%r8, %r12
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	(%rsp), %xmm0
	vxorps	64(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	%xmm0, 64(%rbp)
	vmovaps	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rax
	movq	$0, 80(%rbp)
	vmovdqa	64(%rsp), %xmm0
	vpxor	48(%rbp), %xmm0, %xmm0
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm0
	vmovdqa	240(%rsi), %xmm1
	vpxor	(%rbp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI2_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rbp)
	movq	80(%rsp), %r8
	movq	32(%rsp), %rdx
	movq	16(%rsp), %r11
	cmpq	$96, %rbx
	jae	.LBB2_16
.LBB2_14:
	cmpq	$16, %rbx
	jb	.LBB2_15
.LBB2_19:
	vmovdqa	(%rdi), %xmm14
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	240(%rsi), %xmm1
	vmovaps	(%rsi), %xmm2
	vmovaps	%xmm2, 16(%rsp)
	vmovaps	16(%rsi), %xmm2
	vmovaps	%xmm2, 48(%rsp)
	vmovaps	32(%rsi), %xmm2
	vmovaps	%xmm2, 32(%rsp)
	vmovaps	48(%rsi), %xmm2
	vmovaps	%xmm2, 80(%rsp)
	vmovaps	64(%rsi), %xmm2
	vmovaps	%xmm2, 64(%rsp)
	vmovaps	80(%rsi), %xmm2
	vmovaps	%xmm2, 128(%rsp)
	vmovaps	96(%rsi), %xmm2
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	112(%rsi), %xmm2
	vmovaps	%xmm2, 96(%rsp)
	vmovdqa	128(%rsi), %xmm10
	vmovdqa	144(%rsi), %xmm11
	vmovdqa	160(%rsi), %xmm12
	vmovdqa	176(%rsi), %xmm13
	vmovdqa	192(%rsi), %xmm15
	vmovdqa	208(%rsi), %xmm2
	vmovdqa	224(%rsi), %xmm3
	vmovdqa	.LCPI2_0(%rip), %xmm4
	vpbroadcastq	.LCPI2_8(%rip), %xmm5
	.p2align	4
.LBB2_20:
	vmovdqu	(%rdx), %xmm6
	vpshufb	%xmm4, %xmm6, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm14
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm9
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm7
	vpsrldq	$8, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$78, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm14
	vpshufb	%xmm4, %xmm0, %xmm7
	vpxor	16(%rsp), %xmm7, %xmm7
	vaesenc	48(%rsp), %xmm7, %xmm7
	vaesenc	32(%rsp), %xmm7, %xmm7
	vaesenc	80(%rsp), %xmm7, %xmm7
	vaesenc	64(%rsp), %xmm7, %xmm7
	vaesenc	128(%rsp), %xmm7, %xmm7
	vaesenc	112(%rsp), %xmm7, %xmm7
	vaesenc	96(%rsp), %xmm7, %xmm7
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm13, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vmovdqu	%xmm6, (%r8)
	addq	$16, %r8
	addq	$-16, %rbx
	addq	$16, %rdx
	vpaddd	.LCPI2_2(%rip), %xmm0, %xmm0
	cmpq	$15, %rbx
	ja	.LBB2_20
	vmovdqa	%xmm0, 32(%rdi)
	vmovdqa	%xmm14, (%rdi)
	testq	%rbx, %rbx
	je	.LBB2_24
.LBB2_22:
	movq	%r11, 16(%rsp)
	movq	%rax, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movq	%rsi, %r13
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%r8, %r14
	vzeroupper
	callq	*%r15
	vmovdqa	32(%rbp), %xmm0
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI2_2(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rbp)
	vpxor	(%r13), %xmm1, %xmm0
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
	vaesenc	192(%r13), %xmm0, %xmm0
	vaesenc	208(%r13), %xmm0, %xmm0
	vaesenclast	224(%r13), %xmm0, %xmm1
	vmovdqa	%xmm1, 48(%rsp)
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r15
	movq	%rbp, %rdi
	vmovaps	48(%rsp), %xmm0
	vmovaps	%xmm0, 48(%rbp)
	vmovdqa	32(%rsp), %xmm0
	vmovdqa	%xmm0, 64(%rbp)
.LBB2_23:
	movq	%rbx, 80(%rdi)
	movq	%r12, %rax
	movq	16(%rsp), %r11
.LBB2_24:
	movq	%r11, 104(%rdi)
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	vzeroupper
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcm_streaming_broadwell_decrypt_update, .Lfunc_end2-haberdashery_aes256gcm_streaming_broadwell_decrypt_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
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
.LCPI3_1:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize,@function
haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize:
	.cfi_startproc
	cmpq	$16, %rcx
	jne	.LBB3_1
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	104(%rdi), %r14
	testq	%r14, %r14
	je	.LBB3_3
	movq	%rsi, %r13
	movq	%rdx, %r12
	vmovaps	64(%rdi), %xmm0
	leaq	48(%rdi), %r15
	vmovaps	%xmm0, 16(%rsp)
	movq	80(%rdi), %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rax
	leaq	16(%rsp), %rsi
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	%rbp, %rdi
	vmovdqa	(%rbp), %xmm0
	testq	%rbx, %rbx
	je	.LBB3_6
	vmovdqa	(%rsp), %xmm1
	vpshufb	.LCPI3_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	movq	%r13, %rsi
	vmovdqa	240(%r13), %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	movq	%r12, %rdx
	jmp	.LBB3_8
.LBB3_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	xorl	%eax, %eax
	retq
.LBB3_3:
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpq	$0, 80(%rdi)
	vmovdqa	(%rdi), %xmm0
	je	.LBB3_10
	vmovdqa	240(%rsi), %xmm2
	leaq	48(%rdi), %r15
	vmovdqa	64(%rdi), %xmm1
	vpshufb	.LCPI3_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
.LBB3_8:
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI3_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB3_9
.LBB3_6:
	movq	%r12, %rdx
	movq	%r13, %rsi
.LBB3_9:
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, (%r15)
	movq	$0, 32(%r15)
.LBB3_10:
	vmovdqa	240(%rsi), %xmm1
	vmovq	96(%rdi), %xmm2
	vmovq	%r14, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm2
	vpsllq	$3, %xmm2, %xmm2
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
	vpbroadcastq	.LCPI3_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rdi)
	vmovdqa	(%rsi), %xmm1
	vpxor	16(%rdi), %xmm1, %xmm1
	vaesenc	16(%rsi), %xmm1, %xmm1
	vaesenc	32(%rsi), %xmm1, %xmm1
	vaesenc	48(%rsi), %xmm1, %xmm1
	vaesenc	64(%rsi), %xmm1, %xmm1
	vaesenc	80(%rsi), %xmm1, %xmm1
	vaesenc	96(%rsi), %xmm1, %xmm1
	vaesenc	112(%rsi), %xmm1, %xmm1
	vaesenc	128(%rsi), %xmm1, %xmm1
	vaesenc	144(%rsi), %xmm1, %xmm1
	vaesenc	160(%rsi), %xmm1, %xmm1
	vaesenc	176(%rsi), %xmm1, %xmm1
	vaesenc	192(%rsi), %xmm1, %xmm1
	vaesenc	208(%rsi), %xmm1, %xmm1
	vaesenclast	224(%rsi), %xmm1, %xmm1
	vpshufb	.LCPI3_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm0, (%rdx)
	movl	$16, %eax
	addq	$40, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	vzeroupper
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize, .Lfunc_end3-haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_0:
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
.LCPI4_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI4_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI4_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI4_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI4_5:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI4_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI4_7:
	.long	6
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_8:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_broadwell_encrypt_update,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_encrypt_update
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_encrypt_update,@function
haberdashery_aes256gcm_streaming_broadwell_encrypt_update:
	.cfi_startproc
	cmpq	%r9, %rcx
	jne	.LBB4_3
	movq	%rcx, %rax
	movabsq	$-68719476704, %rcx
	leaq	(%rax,%rcx), %r9
	incq	%rcx
	cmpq	%rcx, %r9
	jb	.LBB4_3
	movq	104(%rdi), %rcx
	leaq	(%rcx,%rax), %r11
	movq	%r11, %r9
	shrq	$5, %r9
	cmpq	$2147483646, %r9
	jbe	.LBB4_6
.LBB4_3:
	xorl	%eax, %eax
	retq
.LBB4_6:
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
	subq	$504, %rsp
	.cfi_def_cfa_offset 560
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testq	%rcx, %rcx
	setne	%r9b
	movq	80(%rdi), %rcx
	testq	%rcx, %rcx
	sete	%r10b
	orb	%r9b, %r10b
	je	.LBB4_10
	testq	%rcx, %rcx
	je	.LBB4_11
	movq	%r11, 48(%rsp)
	movq	%rdi, %rbp
	leaq	(%rcx,%rax), %rbx
	cmpq	$15, %rbx
	ja	.LBB4_12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r14
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rax, %r15
	movq	%r8, %r12
	callq	*%r13
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%rbp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rbp)
	vmovdqa	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %r12
	movq	%r15, %rdx
	callq	*%r13
	movq	%rbp, %rdi
	jmp	.LBB4_24
.LBB4_10:
	vmovdqa	240(%rsi), %xmm0
	vmovdqa	64(%rdi), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm1, %xmm1
	vpxor	(%rdi), %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rdi)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%rdi)
	movq	$0, 80(%rdi)
.LBB4_11:
	movq	%rax, %rbx
	cmpq	$96, %rbx
	jb	.LBB4_14
.LBB4_16:
	vmovups	(%rdx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovups	32(%rdx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovups	48(%rdx), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovups	64(%rdx), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovdqu	80(%rdx), %xmm6
	vmovdqa	32(%rdi), %xmm1
	vmovdqa	.LCPI4_0(%rip), %xmm8
	vpaddd	.LCPI4_2(%rip), %xmm1, %xmm7
	vpshufb	%xmm8, %xmm1, %xmm9
	vpshufb	%xmm8, %xmm7, %xmm10
	vpaddd	.LCPI4_3(%rip), %xmm1, %xmm7
	vpshufb	%xmm8, %xmm7, %xmm11
	vpaddd	.LCPI4_4(%rip), %xmm1, %xmm7
	vpshufb	%xmm8, %xmm7, %xmm12
	vpaddd	.LCPI4_5(%rip), %xmm1, %xmm7
	vpaddd	.LCPI4_6(%rip), %xmm1, %xmm13
	vpshufb	%xmm8, %xmm7, %xmm14
	vpshufb	%xmm8, %xmm13, %xmm13
	vpaddd	.LCPI4_7(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rdi)
	vmovdqa	(%rsi), %xmm1
	vmovaps	16(%rsi), %xmm15
	vmovaps	32(%rsi), %xmm0
	vpxor	%xmm1, %xmm9, %xmm7
	vpxor	%xmm1, %xmm10, %xmm10
	vpxor	%xmm1, %xmm11, %xmm9
	vpxor	%xmm1, %xmm12, %xmm11
	vpxor	%xmm1, %xmm14, %xmm12
	vpxor	%xmm1, %xmm13, %xmm13
	vmovaps	%xmm15, 448(%rsp)
	#APP
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm10, %xmm10
	vaesenc	%xmm15, %xmm9, %xmm9
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm13, %xmm13
	#NO_APP
	vmovaps	%xmm0, 432(%rsp)
	#APP
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vmovdqa	48(%rsi), %xmm0
	#APP
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vmovaps	64(%rsi), %xmm14
	vmovaps	%xmm14, 416(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovaps	80(%rsi), %xmm14
	vmovaps	%xmm14, 400(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovaps	96(%rsi), %xmm14
	vmovaps	%xmm14, 384(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovaps	112(%rsi), %xmm14
	vmovaps	%xmm14, 368(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovaps	128(%rsi), %xmm14
	vmovaps	%xmm14, 352(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovaps	144(%rsi), %xmm14
	vmovaps	%xmm14, 336(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovaps	160(%rsi), %xmm14
	vmovaps	%xmm14, 320(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovdqa	176(%rsi), %xmm14
	vmovdqa	%xmm14, %xmm2
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovdqa	192(%rsi), %xmm14
	vmovdqa	%xmm14, %xmm3
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovdqa	208(%rsi), %xmm14
	vmovdqa	%xmm14, %xmm4
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm9, %xmm9
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	#NO_APP
	vmovdqa	224(%rsi), %xmm14
	vmovdqa	%xmm14, %xmm5
	#APP
	vaesenclast	%xmm14, %xmm7, %xmm7
	vaesenclast	%xmm14, %xmm10, %xmm10
	vaesenclast	%xmm14, %xmm9, %xmm9
	vaesenclast	%xmm14, %xmm11, %xmm11
	vaesenclast	%xmm14, %xmm12, %xmm12
	vaesenclast	%xmm14, %xmm13, %xmm13
	#NO_APP
	vpxor	%xmm6, %xmm13, %xmm14
	vpxor	64(%rsp), %xmm12, %xmm12
	vpxor	80(%rsp), %xmm11, %xmm6
	vpxor	16(%rsp), %xmm9, %xmm11
	vmovdqa	%xmm12, %xmm9
	vpxor	32(%rsp), %xmm10, %xmm12
	vpxor	48(%rsp), %xmm7, %xmm15
	addq	$96, %rdx
	leaq	96(%r8), %rcx
	addq	$-96, %rbx
	vmovdqu	%xmm15, (%r8)
	vmovdqu	%xmm12, 16(%r8)
	vmovdqu	%xmm11, 32(%r8)
	vmovdqa	%xmm6, %xmm13
	vmovdqu	%xmm6, 48(%r8)
	vmovdqu	%xmm9, 64(%r8)
	vmovdqu	%xmm14, 80(%r8)
	vmovdqa	(%rdi), %xmm10
	cmpq	$96, %rbx
	jb	.LBB4_19
	vmovaps	240(%rsi), %xmm6
	vmovaps	%xmm6, 304(%rsp)
	vmovaps	256(%rsi), %xmm6
	vmovaps	%xmm6, 288(%rsp)
	vmovaps	272(%rsi), %xmm6
	vmovaps	%xmm6, 272(%rsp)
	vmovaps	288(%rsi), %xmm6
	vmovaps	%xmm6, 256(%rsp)
	vmovaps	304(%rsi), %xmm6
	vmovaps	%xmm6, 240(%rsp)
	vmovdqa	320(%rsi), %xmm6
	vmovdqa	%xmm6, 224(%rsp)
	vmovdqa	%xmm1, 208(%rsp)
	vmovdqa	%xmm0, 128(%rsp)
	vmovdqa	%xmm2, 160(%rsp)
	vmovdqa	%xmm3, 192(%rsp)
	vmovdqa	%xmm4, 144(%rsp)
	vmovdqa	%xmm5, 176(%rsp)
	.p2align	4
.LBB4_18:
	vmovdqa	%xmm11, 464(%rsp)
	vmovdqa	%xmm12, 480(%rsp)
	vmovups	(%rdx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovups	32(%rdx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovups	48(%rdx), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovups	64(%rdx), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovups	80(%rdx), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovdqa	32(%rdi), %xmm0
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm3
	vpshufb	%xmm8, %xmm3, %xmm4
	vpaddd	.LCPI4_7(%rip), %xmm0, %xmm3
	vmovdqa	%xmm3, 32(%rdi)
	vpaddd	.LCPI4_3(%rip), %xmm0, %xmm3
	vpshufb	%xmm8, %xmm3, %xmm5
	vpshufb	%xmm8, %xmm15, %xmm3
	vpxor	%xmm3, %xmm10, %xmm1
	vmovdqa	%xmm1, 96(%rsp)
	vpaddd	.LCPI4_4(%rip), %xmm0, %xmm6
	vpshufb	%xmm8, %xmm6, %xmm6
	vpaddd	.LCPI4_5(%rip), %xmm0, %xmm7
	vpshufb	%xmm8, %xmm7, %xmm7
	vpshufb	%xmm8, %xmm0, %xmm10
	vpaddd	.LCPI4_6(%rip), %xmm0, %xmm0
	vmovdqa	%xmm8, %xmm2
	vpshufb	%xmm8, %xmm0, %xmm8
	vpshufb	%xmm2, %xmm14, %xmm11
	vmovdqa	208(%rsp), %xmm3
	vpxor	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm3, %xmm15
	vpxor	%xmm5, %xmm3, %xmm12
	vpxor	%xmm6, %xmm3, %xmm0
	vpxor	%xmm7, %xmm3, %xmm4
	vpxor	%xmm3, %xmm8, %xmm14
	vmovaps	448(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	304(%rsp), %xmm3
	vmovaps	432(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm11, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm11, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm11, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vpshufb	%xmm2, %xmm9, %xmm1
	vmovaps	128(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vmovaps	288(%rsp), %xmm3
	vmovaps	416(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vpshufb	%xmm2, %xmm13, %xmm1
	vmovaps	400(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vmovaps	272(%rsp), %xmm3
	vmovaps	384(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	464(%rsp), %xmm1
	vpshufb	%xmm2, %xmm1, %xmm1
	vmovaps	368(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm14, %xmm14
	#NO_APP
	vmovaps	256(%rsp), %xmm3
	vmovaps	352(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	%xmm2, %xmm8
	vmovdqa	480(%rsp), %xmm1
	vpshufb	%xmm2, %xmm1, %xmm1
	vmovaps	336(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm14, %xmm14
	#NO_APP
	vmovaps	240(%rsp), %xmm3
	vmovaps	320(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm10, %xmm10
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm2
	vpxor	%xmm2, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm2
	vpxor	%xmm2, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm2
	vpxor	%xmm2, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm2
	vpxor	%xmm2, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vmovaps	224(%rsp), %xmm2
	vmovaps	192(%rsp), %xmm3
	vmovaps	96(%rsp), %xmm9
	#APP
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm14, %xmm14
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm1
	vpxor	%xmm1, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm12, %xmm12
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm14, %xmm14
	#NO_APP
	vmovdqa	176(%rsp), %xmm1
	#APP
	vaesenclast	%xmm1, %xmm10, %xmm10
	vaesenclast	%xmm1, %xmm15, %xmm15
	vaesenclast	%xmm1, %xmm12, %xmm12
	vaesenclast	%xmm1, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm4, %xmm4
	vaesenclast	%xmm1, %xmm14, %xmm14
	#NO_APP
	vpxor	112(%rsp), %xmm14, %xmm14
	vpxor	64(%rsp), %xmm4, %xmm9
	vpxor	80(%rsp), %xmm0, %xmm13
	vpxor	16(%rsp), %xmm12, %xmm11
	vpxor	32(%rsp), %xmm15, %xmm12
	vpxor	48(%rsp), %xmm10, %xmm15
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm5, %xmm1, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpunpckhqdq	%xmm1, %xmm5, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpbroadcastq	.LCPI4_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm10
	vmovdqu	%xmm15, (%rcx)
	vmovdqu	%xmm12, 16(%rcx)
	vmovdqu	%xmm11, 32(%rcx)
	vmovdqu	%xmm13, 48(%rcx)
	vmovdqu	%xmm9, 64(%rcx)
	vmovdqu	%xmm14, 80(%rcx)
	addq	$96, %rdx
	addq	$96, %rcx
	addq	$-96, %rbx
	cmpq	$95, %rbx
	ja	.LBB4_18
.LBB4_19:
	vpshufb	%xmm8, %xmm15, %xmm0
	vpxor	%xmm0, %xmm10, %xmm0
	vpshufb	%xmm8, %xmm12, %xmm1
	vpshufb	%xmm8, %xmm11, %xmm4
	vpshufb	%xmm8, %xmm13, %xmm5
	vpshufb	%xmm8, %xmm9, %xmm6
	vpshufb	%xmm8, %xmm14, %xmm7
	vmovdqa	240(%rsi), %xmm8
	vmovdqa	256(%rsi), %xmm9
	vmovdqa	272(%rsi), %xmm10
	vmovdqa	288(%rsi), %xmm11
	vmovdqa	304(%rsi), %xmm3
	vmovdqa	320(%rsi), %xmm2
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
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm6
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm2, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm2, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rdi)
	movq	%rcx, %r8
	cmpq	$16, %rbx
	jae	.LBB4_20
.LBB4_15:
	testq	%rbx, %rbx
	jne	.LBB4_23
	jmp	.LBB4_25
.LBB4_12:
	movl	$16, %r14d
	subq	%rcx, %r14
	leaq	(%rdx,%r14), %rdi
	movq	%rdi, 16(%rsp)
	leaq	(%r8,%r14), %rdi
	movq	%rdi, 80(%rsp)
	movq	%rax, %rbx
	subq	%r14, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r15
	movq	%r15, %rdi
	movq	%rsi, 32(%rsp)
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movq	%rax, %r13
	movq	%r8, %r12
	callq	*memcpy@GOTPCREL(%rip)
	vmovaps	(%rsp), %xmm0
	vxorps	64(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	%xmm0, 64(%rbp)
	vmovaps	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rax
	movq	$0, 80(%rbp)
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm0
	vmovdqa	240(%rsi), %xmm1
	vpxor	(%rbp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_8(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rbp)
	movq	80(%rsp), %r8
	movq	16(%rsp), %rdx
	movq	48(%rsp), %r11
	cmpq	$96, %rbx
	jae	.LBB4_16
.LBB4_14:
	cmpq	$16, %rbx
	jb	.LBB4_15
.LBB4_20:
	vmovdqa	(%rdi), %xmm14
	vmovdqa	32(%rdi), %xmm0
	vmovaps	(%rsi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovaps	16(%rsi), %xmm1
	vmovaps	%xmm1, 32(%rsp)
	vmovaps	32(%rsi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	48(%rsi), %xmm1
	vmovaps	%xmm1, 80(%rsp)
	vmovaps	64(%rsi), %xmm1
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	80(%rsi), %xmm1
	vmovaps	%xmm1, 112(%rsp)
	vmovaps	96(%rsi), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovdqa	112(%rsi), %xmm8
	vmovdqa	128(%rsi), %xmm9
	vmovdqa	144(%rsi), %xmm10
	vmovdqa	160(%rsi), %xmm11
	vmovdqa	176(%rsi), %xmm12
	vmovdqa	192(%rsi), %xmm13
	vmovdqa	208(%rsi), %xmm15
	vmovdqa	224(%rsi), %xmm1
	vmovdqa	240(%rsi), %xmm2
	vmovdqa	.LCPI4_0(%rip), %xmm3
	vpbroadcastq	.LCPI4_8(%rip), %xmm4
	.p2align	4
.LBB4_21:
	vpshufb	%xmm3, %xmm0, %xmm5
	vpxor	48(%rsp), %xmm5, %xmm5
	vaesenc	32(%rsp), %xmm5, %xmm5
	vaesenc	16(%rsp), %xmm5, %xmm5
	vaesenc	80(%rsp), %xmm5, %xmm5
	vaesenc	64(%rsp), %xmm5, %xmm5
	vaesenc	112(%rsp), %xmm5, %xmm5
	vaesenc	96(%rsp), %xmm5, %xmm5
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenclast	%xmm1, %xmm5, %xmm5
	vpxor	(%rdx), %xmm5, %xmm5
	vmovdqu	%xmm5, (%r8)
	vpshufb	%xmm3, %xmm5, %xmm5
	vpxor	%xmm5, %xmm14, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm2, %xmm14
	vpclmulqdq	$1, %xmm5, %xmm2, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm2, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm2, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm7, %xmm6
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm6
	vpxor	%xmm5, %xmm6, %xmm14
	addq	$16, %rdx
	addq	$16, %r8
	addq	$-16, %rbx
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm0
	cmpq	$15, %rbx
	ja	.LBB4_21
	vmovdqa	%xmm0, 32(%rdi)
	vmovdqa	%xmm14, (%rdi)
	testq	%rbx, %rbx
	je	.LBB4_25
.LBB4_23:
	movq	%r11, 48(%rsp)
	movq	%rax, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movq	%rsi, %r13
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%r8, %r14
	vzeroupper
	callq	*%r15
	vmovdqa	32(%rbp), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rbp)
	vpxor	(%r13), %xmm1, %xmm0
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
	vaesenc	192(%r13), %xmm0, %xmm0
	vaesenc	208(%r13), %xmm0, %xmm0
	vaesenclast	224(%r13), %xmm0, %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r15
	movq	%rbp, %rdi
	vmovaps	32(%rsp), %xmm0
	vmovaps	%xmm0, 48(%rbp)
	vmovdqa	16(%rsp), %xmm0
	vmovdqa	%xmm0, 64(%rbp)
.LBB4_24:
	movq	%rbx, 80(%rdi)
	movq	%r12, %rax
	movq	48(%rsp), %r11
.LBB4_25:
	movq	%r11, 104(%rdi)
	addq	$504, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	vzeroupper
	retq
.Lfunc_end4:
	.size	haberdashery_aes256gcm_streaming_broadwell_encrypt_update, .Lfunc_end4-haberdashery_aes256gcm_streaming_broadwell_encrypt_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
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
.LCPI5_1:
	.quad	4294967297
	.quad	4294967297
.LCPI5_8:
	.quad	274877907008
	.quad	274877907008
.LCPI5_9:
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
.LCPI5_10:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_2:
	.long	0x00000002
.LCPI5_3:
	.long	0x0c0f0e0d
.LCPI5_4:
	.long	0x00000004
.LCPI5_5:
	.long	0x00000008
.LCPI5_6:
	.long	0x00000010
.LCPI5_7:
	.long	0x00000020
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_11:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_streaming_broadwell_init_key,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_init_key
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_init_key,@function
haberdashery_aes256gcm_streaming_broadwell_init_key:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$32, %rdx
	jne	.LBB5_2
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	vmovdqu	(%rsi), %xmm10
	vmovdqu	16(%rsi), %xmm8
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpbroadcastd	.LCPI5_3(%rip), %xmm2
	vpshufb	%xmm2, %xmm8, %xmm3
	vaesenclast	.LCPI5_1(%rip), %xmm3, %xmm3
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
	vbroadcastss	.LCPI5_2(%rip), %xmm3
	vbroadcastss	.LCPI5_3(%rip), %xmm1
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
	vbroadcastss	.LCPI5_4(%rip), %xmm3
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
	vbroadcastss	.LCPI5_5(%rip), %xmm3
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
	vbroadcastss	.LCPI5_6(%rip), %xmm3
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
	vbroadcastss	.LCPI5_7(%rip), %xmm3
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
	vaesenclast	.LCPI5_8(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	%xmm2, -112(%rsp)
	vaesenc	%xmm11, %xmm15, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI5_9(%rip), %xmm1, %xmm1
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
	vpbroadcastq	.LCPI5_11(%rip), %xmm4
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
.LBB5_2:
	retq
.Lfunc_end5:
	.size	haberdashery_aes256gcm_streaming_broadwell_init_key, .Lfunc_end5-haberdashery_aes256gcm_streaming_broadwell_init_key
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_0:
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
.LCPI6_1:
	.long	1
	.long	0
	.long	0
	.long	0
	.section	.text.haberdashery_aes256gcm_streaming_broadwell_init_state,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_init_state
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_init_state,@function
haberdashery_aes256gcm_streaming_broadwell_init_state:
	.cfi_startproc
	cmpq	$12, %rcx
	jne	.LBB6_2
	vmovd	(%rdx), %xmm0
	vpinsrd	$1, 4(%rdx), %xmm0, %xmm0
	vpinsrd	$2, 8(%rdx), %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI6_1(%rip), %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, (%rdi)
	vmovdqa	%xmm0, 16(%rdi)
	vmovdqa	%xmm1, 32(%rdi)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 48(%rdi)
	movq	$0, 80(%rdi)
	vmovaps	%xmm2, 96(%rdi)
.LBB6_2:
	xorl	%eax, %eax
	cmpq	$12, %rcx
	sete	%al
	vzeroupper
	retq
.Lfunc_end6:
	.size	haberdashery_aes256gcm_streaming_broadwell_init_state, .Lfunc_end6-haberdashery_aes256gcm_streaming_broadwell_init_state
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_streaming_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_streaming_broadwell_is_supported
	.p2align	4
	.type	haberdashery_aes256gcm_streaming_broadwell_is_supported,@function
haberdashery_aes256gcm_streaming_broadwell_is_supported:
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
	xorl	%ecx, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r8
	cpuid
	xchgq	%rbx, %r8

	#NO_APP
	movl	$1, %ecx
	movl	$7, %eax
	#APP

	movq	%rbx, %r9
	cpuid
	xchgq	%rbx, %r9

	#NO_APP
	andl	$920130051, %esi
	andl	$125829120, %edi
	orl	%esi, %edi
	notl	%r8d
	andl	$524585, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end7:
	.size	haberdashery_aes256gcm_streaming_broadwell_is_supported, .Lfunc_end7-haberdashery_aes256gcm_streaming_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

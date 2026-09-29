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
	.section	.text.haberdashery_aes128gcm_broadwell_decrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_broadwell_decrypt
	.p2align	4
	.type	haberdashery_aes128gcm_broadwell_decrypt,@function
haberdashery_aes128gcm_broadwell_decrypt:
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
	jne	.LBB0_35
	cmpq	$12, %rdx
	jne	.LBB0_35
	movq	%r15, %rdx
	shrq	$5, %rdx
	cmpq	$2147483646, %rdx
	ja	.LBB0_35
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB0_35
	cmpq	$16, 496(%rsp)
	jne	.LBB0_35
	movq	488(%rsp), %r13
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	vpxor	%xmm3, %xmm3, %xmm3
	testq	%r8, %r8
	je	.LBB0_11
	cmpq	$96, %r8
	jb	.LBB0_12
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
	leaq	-96(%r8), %rax
	cmpq	$192, %r8
	jb	.LBB0_9
	.p2align	4
.LBB0_8:
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
	ja	.LBB0_8
.LBB0_9:
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
	vpxor	%xmm2, %xmm0, %xmm3
	cmpq	$16, %rax
	jae	.LBB0_13
.LBB0_10:
	movq	%r8, %rbx
	jmp	.LBB0_20
.LBB0_11:
	testq	%r15, %r15
	jne	.LBB0_23
	jmp	.LBB0_33
.LBB0_12:
	movq	%r8, %rax
	cmpq	$16, %rax
	jb	.LBB0_10
.LBB0_13:
	vmovdqa	176(%rdi), %xmm0
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB0_14
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI0_2(%rip), %xmm1, %xmm1
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
	vpbroadcastq	.LCPI0_11(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	movq	%rdx, %rax
	movq	%r8, %rbx
	cmpq	$16, %rdx
	jb	.LBB0_15
.LBB0_18:
	vmovdqa	.LCPI0_2(%rip), %xmm1
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
	.p2align	4
.LBB0_19:
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
	vpxor	%xmm3, %xmm5, %xmm3
	cmpq	$15, %rax
	ja	.LBB0_19
.LBB0_20:
	movq	%rax, %rdx
	movq	%r9, %r14
	testq	%rdx, %rdx
	jne	.LBB0_16
.LBB0_21:
	movq	%rbx, %r8
	testq	%r15, %r15
	je	.LBB0_33
	movq	%r14, %r9
	jmp	.LBB0_23
.LBB0_14:
	movq	%r8, %rbx
	cmpq	$16, %rdx
	jae	.LBB0_18
.LBB0_15:
	movq	%r9, %r14
	testq	%rdx, %rdx
	je	.LBB0_21
.LBB0_16:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	%rdi, %r12
	movq	%rax, %rdi
	movq	%rcx, %rsi
	vmovdqa	%xmm3, 32(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r12, %rdi
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vmovdqa	176(%r12), %xmm1
	vpxor	32(%rsp), %xmm0, %xmm0
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
	vpxor	%xmm0, %xmm2, %xmm3
	testq	%r15, %r15
	movq	%rbx, %r8
	movq	%r14, %r9
	je	.LBB0_33
.LBB0_23:
	vmovdqa	80(%rsp), %xmm0
	vpshufb	.LCPI0_0(%rip), %xmm0, %xmm0
	movq	504(%rsp), %rbx
	vpaddd	.LCPI0_1(%rip), %xmm0, %xmm2
	cmpq	$96, %r15
	jb	.LBB0_28
	vmovaps	176(%rdi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	192(%rdi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	208(%rdi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	224(%rdi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	240(%rdi), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	256(%rdi), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovaps	112(%rdi), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	128(%rdi), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovaps	144(%rdi), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	movq	%r15, %r14
	vmovdqa	160(%rdi), %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	vmovdqa	%xmm3, %xmm8
	.p2align	4
.LBB0_25:
	vmovdqu	(%r9), %xmm5
	vmovdqa	%xmm5, 384(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovups	48(%r9), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovups	64(%r9), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovdqu	80(%r9), %xmm9
	vmovdqa	%xmm9, 64(%rsp)
	vmovdqa	.LCPI0_2(%rip), %xmm1
	vpshufb	%xmm1, %xmm2, %xmm0
	vmovdqa	%xmm2, %xmm7
	vpaddd	.LCPI0_1(%rip), %xmm2, %xmm2
	vpshufb	%xmm1, %xmm2, %xmm2
	vpaddd	.LCPI0_4(%rip), %xmm7, %xmm3
	vpshufb	%xmm1, %xmm3, %xmm3
	vpaddd	.LCPI0_5(%rip), %xmm7, %xmm6
	vpshufb	%xmm1, %xmm6, %xmm6
	vpaddd	.LCPI0_6(%rip), %xmm7, %xmm10
	vpshufb	%xmm1, %xmm10, %xmm10
	vpaddd	.LCPI0_7(%rip), %xmm7, %xmm11
	vpshufb	%xmm1, %xmm11, %xmm4
	vpshufb	%xmm1, %xmm5, %xmm11
	vpxor	%xmm11, %xmm8, %xmm5
	vmovdqa	%xmm5, 368(%rsp)
	vpshufb	%xmm1, %xmm9, %xmm5
	vmovdqa	160(%rsp), %xmm8
	vpxor	%xmm0, %xmm8, %xmm11
	vpxor	%xmm2, %xmm8, %xmm12
	vpxor	%xmm3, %xmm8, %xmm13
	vpxor	%xmm6, %xmm8, %xmm14
	vpxor	%xmm10, %xmm8, %xmm15
	vpxor	%xmm4, %xmm8, %xmm10
	vmovaps	256(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm10, %xmm10
	#NO_APP
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	352(%rsp), %xmm6
	vmovaps	240(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vmovdqa	48(%rsp), %xmm4
	vpshufb	%xmm1, %xmm4, %xmm4
	vmovaps	336(%rsp), %xmm6
	vmovaps	224(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovdqa	16(%rsp), %xmm4
	vpshufb	%xmm1, %xmm4, %xmm4
	vmovaps	320(%rsp), %xmm6
	vmovaps	208(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovdqa	32(%rsp), %xmm4
	vpshufb	%xmm1, %xmm4, %xmm4
	vmovaps	304(%rsp), %xmm6
	vmovaps	192(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovdqu	16(%r9), %xmm6
	vpshufb	%xmm1, %xmm6, %xmm4
	vmovaps	288(%rsp), %xmm8
	vmovdqa	176(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovaps	144(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovdqa	272(%rsp), %xmm5
	vmovaps	128(%rsp), %xmm8
	vmovdqa	368(%rsp), %xmm1
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpunpcklqdq	%xmm2, %xmm5, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpunpckhqdq	%xmm5, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI0_11(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm8
	vmovaps	112(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm10, %xmm10
	#NO_APP
	vmovaps	96(%rsp), %xmm0
	#APP
	vaesenclast	%xmm0, %xmm11, %xmm11
	vaesenclast	%xmm0, %xmm12, %xmm12
	vaesenclast	%xmm0, %xmm13, %xmm13
	vaesenclast	%xmm0, %xmm14, %xmm14
	vaesenclast	%xmm0, %xmm15, %xmm15
	vaesenclast	%xmm0, %xmm10, %xmm10
	#NO_APP
	vpxor	384(%rsp), %xmm11, %xmm0
	vpxor	%xmm6, %xmm12, %xmm2
	vpxor	32(%rsp), %xmm13, %xmm3
	vpxor	16(%rsp), %xmm14, %xmm4
	vpxor	48(%rsp), %xmm15, %xmm5
	vmovdqu	%xmm0, (%rbx)
	vmovdqu	%xmm2, 16(%rbx)
	vmovdqu	%xmm3, 32(%rbx)
	vmovdqu	%xmm4, 48(%rbx)
	vmovdqu	%xmm5, 64(%rbx)
	vpxor	64(%rsp), %xmm10, %xmm0
	vmovdqu	%xmm0, 80(%rbx)
	addq	$96, %r9
	addq	$96, %rbx
	addq	$-96, %r14
	vpaddd	.LCPI0_8(%rip), %xmm7, %xmm2
	cmpq	$95, %r14
	ja	.LBB0_25
	vmovdqa	%xmm8, %xmm3
	cmpq	$16, %r14
	jae	.LBB0_29
	jmp	.LBB0_31
.LBB0_28:
	movq	%r15, %r14
	cmpq	$16, %r14
	jb	.LBB0_31
.LBB0_29:
	vmovdqa	176(%rdi), %xmm0
	vmovaps	(%rdi), %xmm1
	vmovaps	%xmm1, 32(%rsp)
	vmovaps	16(%rdi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	32(%rdi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovdqa	48(%rdi), %xmm1
	vmovdqa	%xmm1, 64(%rsp)
	vmovdqa	64(%rdi), %xmm5
	vmovdqa	80(%rdi), %xmm6
	vmovdqa	96(%rdi), %xmm7
	vmovdqa	112(%rdi), %xmm8
	vmovdqa	128(%rdi), %xmm9
	vmovdqa	144(%rdi), %xmm10
	vmovdqa	160(%rdi), %xmm11
	vmovdqa	.LCPI0_2(%rip), %xmm12
	vpbroadcastq	.LCPI0_11(%rip), %xmm13
	.p2align	4
.LBB0_30:
	vmovdqu	(%r9), %xmm15
	vpshufb	%xmm12, %xmm15, %xmm14
	vpxor	%xmm3, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm0, %xmm1
	vmovdqa	%xmm2, %xmm4
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
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm3
	vpshufb	%xmm12, %xmm4, %xmm1
	vpxor	32(%rsp), %xmm1, %xmm1
	vaesenc	16(%rsp), %xmm1, %xmm1
	vaesenc	48(%rsp), %xmm1, %xmm1
	vaesenc	64(%rsp), %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpxor	%xmm1, %xmm15, %xmm1
	vmovdqu	%xmm1, (%rbx)
	addq	$16, %rbx
	addq	$-16, %r14
	addq	$16, %r9
	vpaddd	.LCPI0_1(%rip), %xmm4, %xmm2
	cmpq	$15, %r14
	ja	.LBB0_30
.LBB0_31:
	testq	%r14, %r14
	je	.LBB0_33
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	%r13, %r15
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%r14, %rdx
	movq	%r8, %r12
	vmovdqa	%xmm3, 32(%rsp)
	vmovdqa	%xmm2, 16(%rsp)
	callq	*%r13
	vmovdqa	16(%rsp), %xmm0
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
	vaesenclast	160(%rbp), %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm1
	vmovdqa	%xmm1, 48(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*%r13
	vmovups	(%r15), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	movq	480(%rsp), %r15
	vmovaps	48(%rsp), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	400(%rsp), %rsi
	movq	%r14, %rdx
	callq	*%r13
	vmovdqa	16(%rsp), %xmm5
	movq	%r12, %r8
	movq	%rbp, %rdi
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	176(%rbp), %xmm1
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
	vpxor	%xmm0, %xmm2, %xmm3
	jmp	.LBB0_34
.LBB0_33:
	vmovdqu	(%r13), %xmm5
.LBB0_34:
	vmovdqa	176(%rdi), %xmm0
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
	vpbroadcastq	.LCPI0_11(%rip), %xmm2
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
	vpshufb	.LCPI0_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm3, %xmm3
	vpshufb	.LCPI0_10(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
.LBB0_35:
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
.Lfunc_end0:
	.size	haberdashery_aes128gcm_broadwell_decrypt, .Lfunc_end0-haberdashery_aes128gcm_broadwell_decrypt
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
	.section	.text.haberdashery_aes128gcm_broadwell_encrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_broadwell_encrypt
	.p2align	4
	.type	haberdashery_aes128gcm_broadwell_encrypt,@function
haberdashery_aes128gcm_broadwell_encrypt:
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
	movq	448(%rsp), %r12
	xorl	%eax, %eax
	cmpq	464(%rsp), %r12
	jne	.LBB1_36
	cmpq	$16, 480(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	orb	%r10b, %r11b
	jne	.LBB1_36
	movq	%r12, %r10
	shrq	$5, %r10
	cmpq	$2147483647, %r10
	setae	%r10b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r10b, %dl
	jne	.LBB1_36
	movq	472(%rsp), %r13
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vpxor	%xmm13, %xmm13, %xmm13
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
	vpxor	%xmm2, %xmm0, %xmm13
	cmpq	$16, %rax
	jae	.LBB1_15
	jmp	.LBB1_8
.LBB1_6:
	movq	%r8, %rax
	cmpq	$16, %rax
	jb	.LBB1_8
.LBB1_15:
	vmovdqa	176(%rdi), %xmm0
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	je	.LBB1_16
	cmpq	$16, %rdx
	jae	.LBB1_18
.LBB1_9:
	testq	%rdx, %rdx
	je	.LBB1_4
.LBB1_10:
	vmovdqa	%xmm13, (%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	movq	%rdi, %r15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm0
	movq	%r15, %rdi
	testq	%r12, %r12
	je	.LBB1_11
	vmovdqa	176(%r15), %xmm1
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
	vpxor	%xmm0, %xmm2, %xmm13
	movq	%rbx, %r8
	movq	%r14, %r9
	jmp	.LBB1_21
.LBB1_16:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI1_2(%rip), %xmm1, %xmm1
	addq	$16, %rcx
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
	vpbroadcastq	.LCPI1_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm13
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
	vpxor	%xmm3, %xmm5, %xmm13
	cmpq	$15, %rax
	ja	.LBB1_19
.LBB1_8:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_10
.LBB1_4:
	testq	%r12, %r12
	je	.LBB1_35
.LBB1_21:
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI1_0(%rip), %xmm0, %xmm1
	movq	456(%rsp), %r14
	vpaddd	.LCPI1_1(%rip), %xmm1, %xmm15
	cmpq	$96, %r12
	jb	.LBB1_22
	vmovdqa	%xmm13, (%rsp)
	leaq	96(%r9), %rax
	leaq	96(%r14), %rcx
	vmovdqa	.LCPI1_2(%rip), %xmm12
	vpshufb	%xmm12, %xmm15, %xmm2
	vpaddd	.LCPI1_4(%rip), %xmm1, %xmm3
	vpshufb	%xmm12, %xmm3, %xmm3
	vpaddd	.LCPI1_5(%rip), %xmm1, %xmm4
	vpshufb	%xmm12, %xmm4, %xmm4
	vpaddd	.LCPI1_6(%rip), %xmm1, %xmm5
	vpaddd	.LCPI1_7(%rip), %xmm1, %xmm6
	vpshufb	%xmm12, %xmm5, %xmm5
	vpshufb	%xmm12, %xmm6, %xmm7
	vpaddd	.LCPI1_8(%rip), %xmm1, %xmm6
	vpshufb	%xmm12, %xmm6, %xmm9
	vpaddd	.LCPI1_9(%rip), %xmm1, %xmm15
	vmovdqa	(%rdi), %xmm1
	vmovdqa	16(%rdi), %xmm13
	vmovdqa	32(%rdi), %xmm14
	vmovaps	48(%rdi), %xmm8
	vpxor	%xmm2, %xmm1, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	%xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm1, %xmm6
	vmovaps	%xmm8, %xmm5
	vpxor	%xmm7, %xmm1, %xmm8
	vpxor	%xmm1, %xmm9, %xmm10
	#APP
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm8, %xmm8
	vaesenc	%xmm13, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm10, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm6, %xmm6
	vaesenc	%xmm5, %xmm8, %xmm8
	vaesenc	%xmm5, %xmm10, %xmm10
	#NO_APP
	vmovdqa	64(%rdi), %xmm7
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm10, %xmm10
	#NO_APP
	vmovaps	80(%rdi), %xmm9
	vmovaps	%xmm9, 320(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm10
	#NO_APP
	vmovaps	96(%rdi), %xmm9
	vmovaps	%xmm9, 304(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm10
	#NO_APP
	vmovaps	112(%rdi), %xmm9
	vmovaps	%xmm9, 288(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm10
	#NO_APP
	vmovaps	128(%rdi), %xmm9
	vmovaps	%xmm9, 272(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm10
	#NO_APP
	vmovaps	144(%rdi), %xmm9
	vmovaps	%xmm9, 256(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm8, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm10
	#NO_APP
	vmovdqa	160(%rdi), %xmm9
	#APP
	vaesenclast	%xmm9, %xmm2, %xmm2
	vaesenclast	%xmm9, %xmm3, %xmm3
	vaesenclast	%xmm9, %xmm4, %xmm4
	vaesenclast	%xmm9, %xmm6, %xmm6
	vaesenclast	%xmm9, %xmm8, %xmm8
	vaesenclast	%xmm9, %xmm10, %xmm10
	#NO_APP
	vpxor	(%r9), %xmm2, %xmm11
	vpxor	16(%r9), %xmm3, %xmm3
	vpxor	32(%r9), %xmm4, %xmm4
	vpxor	48(%r9), %xmm6, %xmm6
	vpxor	64(%r9), %xmm8, %xmm8
	vpxor	80(%r9), %xmm10, %xmm10
	vmovdqu	%xmm11, (%r14)
	vmovdqu	%xmm3, 16(%r14)
	vmovdqu	%xmm4, 32(%r14)
	vmovdqu	%xmm6, 48(%r14)
	vmovdqu	%xmm8, 64(%r14)
	leaq	-96(%r12), %rbx
	vmovdqu	%xmm10, 80(%r14)
	cmpq	$192, %r12
	jb	.LBB1_30
	vmovdqa	%xmm9, %xmm0
	vmovaps	176(%rdi), %xmm2
	vmovaps	%xmm2, 240(%rsp)
	vmovaps	192(%rdi), %xmm2
	vmovaps	%xmm2, 224(%rsp)
	vmovaps	208(%rdi), %xmm2
	vmovaps	%xmm2, 208(%rsp)
	vmovaps	224(%rdi), %xmm2
	vmovaps	%xmm2, 192(%rsp)
	vmovaps	240(%rdi), %xmm2
	vmovaps	%xmm2, 176(%rsp)
	vmovdqa	256(%rdi), %xmm2
	vmovdqa	%xmm2, 160(%rsp)
	vmovaps	%xmm5, 144(%rsp)
	vmovdqa	%xmm12, %xmm9
	vmovdqa	%xmm13, 128(%rsp)
	vmovdqa	(%rsp), %xmm13
	vmovdqa	%xmm7, 112(%rsp)
	vmovdqa	%xmm1, %xmm7
	vmovdqa	%xmm14, 80(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	.p2align	4
.LBB1_28:
	vmovdqa	%xmm6, 336(%rsp)
	vmovdqa	%xmm4, 352(%rsp)
	vmovdqa	%xmm3, 48(%rsp)
	vmovdqa	%xmm15, 32(%rsp)
	vpshufb	%xmm9, %xmm15, %xmm2
	vpaddd	.LCPI1_1(%rip), %xmm15, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm4
	vpaddd	.LCPI1_4(%rip), %xmm15, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm6
	vpaddd	.LCPI1_5(%rip), %xmm15, %xmm3
	vmovdqa	%xmm8, %xmm5
	vpshufb	%xmm9, %xmm3, %xmm8
	vpaddd	.LCPI1_6(%rip), %xmm15, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm0
	vpaddd	.LCPI1_7(%rip), %xmm15, %xmm3
	vpshufb	%xmm9, %xmm3, %xmm1
	vpshufb	%xmm9, %xmm11, %xmm3
	vpxor	%xmm3, %xmm13, %xmm3
	vmovdqa	%xmm3, (%rsp)
	vpshufb	%xmm9, %xmm10, %xmm3
	vpxor	%xmm2, %xmm7, %xmm11
	vpxor	%xmm4, %xmm7, %xmm12
	vpxor	%xmm6, %xmm7, %xmm14
	vpxor	%xmm7, %xmm8, %xmm15
	vpxor	%xmm0, %xmm7, %xmm2
	vpxor	%xmm1, %xmm7, %xmm10
	vmovaps	128(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm10, %xmm10
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm8, %xmm8, %xmm8
	vmovaps	240(%rsp), %xmm1
	vmovaps	80(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm12, %xmm12
	vaesenc	%xmm13, %xmm14, %xmm14
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm9, %xmm5, %xmm0
	vmovaps	224(%rsp), %xmm3
	vmovaps	144(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	#NO_APP
	vmovdqa	336(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	208(%rsp), %xmm3
	vmovaps	112(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	#NO_APP
	vmovdqa	352(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	192(%rsp), %xmm3
	vmovaps	320(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	#NO_APP
	vmovdqa	48(%rsp), %xmm0
	vpshufb	%xmm9, %xmm0, %xmm0
	vmovaps	176(%rsp), %xmm3
	vmovaps	304(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	#NO_APP
	vmovaps	288(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm10, %xmm10
	#NO_APP
	vmovdqa	160(%rsp), %xmm1
	vmovaps	272(%rsp), %xmm3
	vmovaps	(%rsp), %xmm5
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm10, %xmm10
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm4, %xmm1, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpunpckhqdq	%xmm1, %xmm4, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpbroadcastq	.LCPI1_12(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm13
	vmovaps	256(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm10, %xmm10
	#NO_APP
	vmovdqa	96(%rsp), %xmm0
	#APP
	vaesenclast	%xmm0, %xmm11, %xmm11
	vaesenclast	%xmm0, %xmm12, %xmm12
	vaesenclast	%xmm0, %xmm14, %xmm14
	vaesenclast	%xmm0, %xmm15, %xmm15
	vaesenclast	%xmm0, %xmm2, %xmm2
	vaesenclast	%xmm0, %xmm10, %xmm10
	#NO_APP
	vpxor	(%rax), %xmm11, %xmm11
	vpxor	16(%rax), %xmm12, %xmm3
	vpxor	32(%rax), %xmm14, %xmm4
	vpxor	48(%rax), %xmm15, %xmm6
	vmovdqa	32(%rsp), %xmm15
	vpxor	64(%rax), %xmm2, %xmm8
	vpxor	80(%rax), %xmm10, %xmm10
	addq	$96, %rax
	vmovdqu	%xmm11, (%rcx)
	vmovdqu	%xmm3, 16(%rcx)
	vmovdqu	%xmm4, 32(%rcx)
	vmovdqu	%xmm6, 48(%rcx)
	vmovdqu	%xmm8, 64(%rcx)
	vmovdqu	%xmm10, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rbx
	vpaddd	.LCPI1_8(%rip), %xmm15, %xmm15
	cmpq	$95, %rbx
	ja	.LBB1_28
	vmovdqa	%xmm13, (%rsp)
	vmovdqa	%xmm9, %xmm12
.LBB1_30:
	vpshufb	%xmm12, %xmm11, %xmm1
	vpxor	(%rsp), %xmm1, %xmm1
	vpshufb	%xmm12, %xmm3, %xmm2
	vpshufb	%xmm12, %xmm4, %xmm4
	vpshufb	%xmm12, %xmm6, %xmm5
	vpshufb	%xmm12, %xmm8, %xmm6
	vpshufb	%xmm12, %xmm10, %xmm7
	vmovdqa	176(%rdi), %xmm8
	vmovdqa	192(%rdi), %xmm9
	vmovdqa	208(%rdi), %xmm10
	vmovdqa	224(%rdi), %xmm11
	vmovdqa	240(%rdi), %xmm3
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
	vpxor	%xmm2, %xmm0, %xmm13
	movq	%rcx, %r14
	movq	%rax, %r9
	jmp	.LBB1_23
.LBB1_22:
	movq	%r12, %rbx
.LBB1_23:
	movq	%r8, %r13
	cmpq	$16, %rbx
	jb	.LBB1_24
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, (%rsp)
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
	vpbroadcastq	.LCPI1_12(%rip), %xmm14
	.p2align	4
.LBB1_32:
	vmovdqa	%xmm15, %xmm2
	vpshufb	%xmm12, %xmm15, %xmm15
	vpxor	32(%rsp), %xmm15, %xmm15
	vaesenc	(%rsp), %xmm15, %xmm15
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
	vmovdqu	%xmm15, (%r14)
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
	addq	$16, %r9
	addq	$16, %r14
	addq	$-16, %rbx
	vpaddd	.LCPI1_1(%rip), %xmm2, %xmm15
	cmpq	$15, %rbx
	ja	.LBB1_32
.LBB1_24:
	testq	%rbx, %rbx
	je	.LBB1_25
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rax
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm15, 32(%rsp)
	vmovdqa	%xmm13, (%rsp)
	callq	*%rbp
	vmovdqa	32(%rsp), %xmm0
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
	vaesenclast	160(%r15), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovaps	32(%rsp), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	368(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*%rbp
	movq	%r15, %rdi
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm2
	vmovdqa	176(%r15), %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	movq	%r13, %r8
	movq	472(%rsp), %r13
	jmp	.LBB1_34
.LBB1_25:
	movq	%r13, %r8
	movq	472(%rsp), %r13
	jmp	.LBB1_35
.LBB1_11:
	vmovdqa	176(%r15), %xmm2
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
	movq	%rbx, %r8
.LBB1_34:
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
	vpxor	%xmm0, %xmm2, %xmm13
.LBB1_35:
	vmovdqa	176(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r12, %xmm2
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
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
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
	vmovdqu	%xmm0, (%r13)
	movl	$1, %eax
.LBB1_36:
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
	.size	haberdashery_aes128gcm_broadwell_encrypt, .Lfunc_end1-haberdashery_aes128gcm_broadwell_encrypt
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_broadwell_init,"ax",@progbits
	.globl	haberdashery_aes128gcm_broadwell_init
	.p2align	4
	.type	haberdashery_aes128gcm_broadwell_init,@function
haberdashery_aes128gcm_broadwell_init:
	.cfi_startproc
	cmpq	$16, %rdx
	jne	.LBB2_2
	vmovdqu	(%rsi), %xmm10
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vaeskeygenassist	$1, %xmm10, %xmm1
	vpshufd	$255, %xmm1, %xmm1
	vpxor	%xmm0, %xmm10, %xmm0
	vmovdqa	%xmm10, -56(%rsp)
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
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vaeskeygenassist	$4, %xmm2, %xmm3
	vpslldq	$12, %xmm2, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpshufd	$255, %xmm3, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpslldq	$12, %xmm3, %xmm4
	vaeskeygenassist	$8, %xmm3, %xmm5
	vpxor	%xmm4, %xmm0, %xmm0
	vpshufd	$255, %xmm5, %xmm4
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
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
	vaeskeygenassist	$32, %xmm5, %xmm7
	vpxor	%xmm6, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm6
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
	vpxor	%xmm0, %xmm8, %xmm0
	vpslldq	$12, %xmm7, %xmm8
	vaeskeygenassist	$128, %xmm7, %xmm9
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$255, %xmm9, %xmm8
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm8
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpslldq	$12, %xmm8, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vaeskeygenassist	$27, %xmm8, %xmm9
	vpshufd	$255, %xmm9, %xmm9
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm0, %xmm9, %xmm9
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm11
	vaeskeygenassist	$54, %xmm9, %xmm12
	vpxor	%xmm0, %xmm11, %xmm0
	vpslldq	$12, %xmm9, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpshufd	$255, %xmm12, %xmm11
	vpxor	%xmm0, %xmm9, %xmm0
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
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm0
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
	vpbroadcastq	.LCPI2_2(%rip), %xmm13
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
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$16, %rdx
	sete	%al
	retq
.Lfunc_end2:
	.size	haberdashery_aes128gcm_broadwell_init, .Lfunc_end2-haberdashery_aes128gcm_broadwell_init
	.cfi_endproc

	.section	.text.haberdashery_aes128gcm_broadwell_is_supported,"ax",@progbits
	.globl	haberdashery_aes128gcm_broadwell_is_supported
	.p2align	4
	.type	haberdashery_aes128gcm_broadwell_is_supported,@function
haberdashery_aes128gcm_broadwell_is_supported:
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
	.size	haberdashery_aes128gcm_broadwell_is_supported, .Lfunc_end3-haberdashery_aes128gcm_broadwell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.98.0-nightly (c397dae80 2026-07-02)"
	.section	".note.GNU-stack","",@progbits

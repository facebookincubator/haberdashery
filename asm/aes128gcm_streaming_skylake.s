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
	.section	.text.haberdashery_aes128gcm_streaming_skylake_init_key,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_init_key
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_init_key,@function
haberdashery_aes128gcm_streaming_skylake_init_key:
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
	.size	haberdashery_aes128gcm_streaming_skylake_init_key, .Lfunc_end0-haberdashery_aes128gcm_streaming_skylake_init_key
	.cfi_endproc

	.section	.text.haberdashery_aes128gcm_streaming_skylake_is_supported,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_is_supported,@function
haberdashery_aes128gcm_streaming_skylake_is_supported:
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
.Lfunc_end1:
	.size	haberdashery_aes128gcm_streaming_skylake_is_supported, .Lfunc_end1-haberdashery_aes128gcm_streaming_skylake_is_supported
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
	.section	.text.haberdashery_aes128gcm_streaming_skylake_init_state,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_init_state
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_init_state,@function
haberdashery_aes128gcm_streaming_skylake_init_state:
	.cfi_startproc
	cmpq	$12, %rcx
	jne	.LBB2_2
	vmovd	(%rdx), %xmm0
	vpinsrd	$1, 4(%rdx), %xmm0, %xmm0
	vpinsrd	$2, 8(%rdx), %xmm0, %xmm0
	movl	$16777216, %eax
	vpinsrd	$3, %eax, %xmm0, %xmm0
	vpshufb	.LCPI2_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI2_1(%rip), %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vmovups	%ymm2, -56(%rsp)
	vmovups	%ymm2, -88(%rsp)
	movq	$0, -24(%rsp)
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, (%rdi)
	vmovdqa	%xmm0, 16(%rdi)
	vmovdqa	%xmm1, 32(%rdi)
	vmovups	-56(%rsp), %ymm0
	vmovups	-40(%rsp), %xmm1
	movq	-24(%rsp), %rax
	movq	-16(%rsp), %rdx
	vmovups	%ymm0, 48(%rdi)
	vmovups	%xmm1, 64(%rdi)
	movq	%rax, 80(%rdi)
	movq	%rdx, 88(%rdi)
	vmovaps	%xmm2, 96(%rdi)
.LBB2_2:
	xorl	%eax, %eax
	cmpq	$12, %rcx
	sete	%al
	vzeroupper
	retq
.Lfunc_end2:
	.size	haberdashery_aes128gcm_streaming_skylake_init_state, .Lfunc_end2-haberdashery_aes128gcm_streaming_skylake_init_state
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
.LCPI3_2:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_3:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_skylake_aad_update,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_aad_update
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_aad_update,@function
haberdashery_aes128gcm_streaming_skylake_aad_update:
	.cfi_startproc
	movabsq	$-2305843009213693951, %rax
	leaq	(%rcx,%rax), %r8
	incq	%rax
	cmpq	%rax, %r8
	jae	.LBB3_3
	xorl	%eax, %eax
	retq
.LBB3_3:
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
	ja	.LBB3_26
	cmpq	$0, 104(%rdi)
	jne	.LBB3_26
	movq	80(%rdi), %r8
	testq	%r8, %r8
	je	.LBB3_6
	leaq	(%r8,%rcx), %rbx
	cmpq	$15, %rbx
	ja	.LBB3_9
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
	jmp	.LBB3_24
.LBB3_6:
	movq	%rcx, %rbx
	cmpq	$96, %rbx
	jae	.LBB3_11
	jmp	.LBB3_14
.LBB3_9:
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
	vmovdqa	176(%r13), %xmm1
	vpshufb	.LCPI3_0(%rip), %xmm0, %xmm0
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
	vpbroadcastq	.LCPI3_3(%rip), %xmm2
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
	jb	.LBB3_14
.LBB3_11:
	vmovdqu	32(%rdx), %xmm1
	vmovdqu	48(%rdx), %xmm2
	vmovdqu	64(%rdx), %xmm3
	vmovdqu	80(%rdx), %xmm4
	vmovdqa	.LCPI3_0(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm6
	vpshufb	%xmm0, %xmm2, %xmm5
	vpshufb	%xmm0, %xmm3, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm8
	vmovdqa	176(%rsi), %xmm1
	vmovdqa	192(%rsi), %xmm2
	vmovdqa	208(%rsi), %xmm3
	vmovdqa	224(%rsi), %xmm4
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
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vmovdqu	16(%rdx), %xmm11
	vpshufb	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$17, %xmm5, %xmm3, %xmm5
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm10
	vpxor	%xmm5, %xmm10, %xmm10
	vmovdqa	240(%rsi), %xmm5
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm6
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm5, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm11, %xmm5, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm5, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vmovdqu	(%rdx), %xmm10
	vpshufb	%xmm0, %xmm10, %xmm10
	vpxor	(%rdi), %xmm10, %xmm10
	vpxor	%xmm6, %xmm9, %xmm9
	vmovdqa	256(%rsi), %xmm6
	vpclmulqdq	$17, %xmm11, %xmm5, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpclmulqdq	$0, %xmm10, %xmm6, %xmm11
	vpxor	%xmm11, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm10, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm11
	vpxor	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm6, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	addq	$96, %rdx
	addq	$-96, %rbx
	cmpq	$96, %rbx
	jb	.LBB3_13
	.p2align	4, 0x90
.LBB3_12:
	vmovdqu	(%rdx), %xmm11
	vmovdqu	32(%rdx), %xmm12
	vmovdqu	48(%rdx), %xmm13
	vmovdqu	64(%rdx), %xmm14
	vmovdqu	80(%rdx), %xmm15
	vpslldq	$8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpsrldq	$8, %xmm9, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpbroadcastq	.LCPI3_3(%rip), %xmm10
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
	ja	.LBB3_12
.LBB3_13:
	vpslldq	$8, %xmm9, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpsrldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI3_3(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rdi)
.LBB3_14:
	cmpq	$16, %rbx
	jae	.LBB3_15
	testq	%rbx, %rbx
	jne	.LBB3_23
	jmp	.LBB3_25
.LBB3_15:
	vmovdqa	(%rdi), %xmm1
	vmovdqa	176(%rsi), %xmm0
	leaq	-16(%rbx), %rax
	testb	$16, %al
	jne	.LBB3_17
	vmovdqu	(%rdx), %xmm2
	addq	$16, %rdx
	vpshufb	.LCPI3_0(%rip), %xmm2, %xmm2
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
	vpbroadcastq	.LCPI3_3(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	movq	%rax, %rbx
.LBB3_17:
	cmpq	$16, %rax
	jb	.LBB3_21
	vmovdqa	.LCPI3_0(%rip), %xmm2
	vpbroadcastq	.LCPI3_3(%rip), %xmm3
	.p2align	4, 0x90
.LBB3_19:
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
	ja	.LBB3_19
	movq	%rbx, %rax
.LBB3_21:
	vmovdqa	%xmm1, (%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB3_25
.LBB3_23:
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
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, 48(%r15)
.LBB3_24:
	vmovdqa	%xmm0, 64(%r15)
	movq	%rbx, 80(%r15)
.LBB3_25:
	movq	%r14, 96(%rdi)
	movq	%rcx, %rax
.LBB3_26:
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
.Lfunc_end3:
	.size	haberdashery_aes128gcm_streaming_skylake_aad_update, .Lfunc_end3-haberdashery_aes128gcm_streaming_skylake_aad_update
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
	.section	.text.haberdashery_aes128gcm_streaming_skylake_encrypt_update,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_encrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_encrypt_update,@function
haberdashery_aes128gcm_streaming_skylake_encrypt_update:
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
	subq	$440, %rsp
	.cfi_def_cfa_offset 496
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
	movq	%r11, 16(%rsp)
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
	vmovdqa	64(%rdi), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vmovdqa	176(%rsi), %xmm1
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
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	16(%rdx), %xmm2
	vmovdqu	32(%rdx), %xmm3
	vmovdqu	48(%rdx), %xmm4
	vmovdqu	64(%rdx), %xmm6
	vmovdqu	80(%rdx), %xmm5
	vmovdqa	32(%rdi), %xmm1
	vmovdqa	.LCPI4_0(%rip), %xmm8
	vpshufb	%xmm8, %xmm1, %xmm7
	vpaddd	.LCPI4_2(%rip), %xmm1, %xmm9
	vpshufb	%xmm8, %xmm9, %xmm9
	vpaddd	.LCPI4_3(%rip), %xmm1, %xmm10
	vpshufb	%xmm8, %xmm10, %xmm11
	vpaddd	.LCPI4_4(%rip), %xmm1, %xmm10
	vpshufb	%xmm8, %xmm10, %xmm12
	vpaddd	.LCPI4_5(%rip), %xmm1, %xmm10
	vpshufb	%xmm8, %xmm10, %xmm13
	vpaddd	.LCPI4_6(%rip), %xmm1, %xmm10
	vpshufb	%xmm8, %xmm10, %xmm14
	vpaddd	.LCPI4_7(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rdi)
	vmovdqa	(%rsi), %xmm1
	vmovaps	16(%rsi), %xmm15
	vmovaps	32(%rsi), %xmm0
	vpxor	%xmm7, %xmm1, %xmm7
	vpxor	%xmm1, %xmm9, %xmm10
	vpxor	%xmm1, %xmm11, %xmm11
	vpxor	%xmm1, %xmm12, %xmm12
	vpxor	%xmm1, %xmm13, %xmm13
	vpxor	%xmm1, %xmm14, %xmm9
	vmovaps	%xmm15, 352(%rsp)
	#APP
	vaesenc	%xmm15, %xmm7, %xmm7
	vaesenc	%xmm15, %xmm10, %xmm10
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm0, 336(%rsp)
	#APP
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm9, %xmm9
	#NO_APP
	vmovdqa	48(%rsi), %xmm0
	#APP
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm9, %xmm9
	#NO_APP
	vmovaps	64(%rsi), %xmm14
	vmovaps	%xmm14, 320(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	80(%rsi), %xmm14
	vmovaps	%xmm14, 304(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	96(%rsi), %xmm14
	vmovaps	%xmm14, 288(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rsi), %xmm14
	vmovaps	%xmm14, 272(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	128(%rsi), %xmm14
	vmovaps	%xmm14, 256(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	144(%rsi), %xmm14
	vmovaps	%xmm14, 240(%rsp)
	#APP
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm10, %xmm10
	vaesenc	%xmm14, %xmm11, %xmm11
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	160(%rsi), %xmm14
	vmovaps	%xmm14, 224(%rsp)
	#APP
	vaesenclast	%xmm14, %xmm7, %xmm7
	vaesenclast	%xmm14, %xmm10, %xmm10
	vaesenclast	%xmm14, %xmm11, %xmm11
	vaesenclast	%xmm14, %xmm12, %xmm12
	vaesenclast	%xmm14, %xmm13, %xmm13
	vaesenclast	%xmm14, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm5, %xmm9, %xmm9
	vpxor	%xmm6, %xmm13, %xmm13
	vpxor	%xmm4, %xmm12, %xmm14
	vpxor	%xmm3, %xmm11, %xmm12
	vpxor	%xmm2, %xmm10, %xmm3
	vpxor	16(%rsp), %xmm7, %xmm11
	addq	$96, %rdx
	leaq	96(%r8), %rcx
	addq	$-96, %rbx
	vmovdqu	%xmm11, (%r8)
	vmovdqu	%xmm3, 16(%r8)
	vmovdqu	%xmm12, 32(%r8)
	vmovdqu	%xmm14, 48(%r8)
	vmovdqu	%xmm13, 64(%r8)
	vmovdqu	%xmm9, 80(%r8)
	vmovdqa	(%rdi), %xmm15
	cmpq	$96, %rbx
	jb	.LBB4_19
	vmovaps	176(%rsi), %xmm2
	vmovaps	%xmm2, 208(%rsp)
	vmovaps	192(%rsi), %xmm2
	vmovaps	%xmm2, 192(%rsp)
	vmovaps	208(%rsi), %xmm2
	vmovaps	%xmm2, 176(%rsp)
	vmovaps	224(%rsi), %xmm2
	vmovaps	%xmm2, 160(%rsp)
	vmovaps	240(%rsi), %xmm2
	vmovaps	%xmm2, 144(%rsp)
	vmovdqa	256(%rsi), %xmm2
	vmovdqa	%xmm2, 128(%rsp)
	vmovdqa	%xmm1, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	.p2align	4, 0x90
.LBB4_18:
	vmovdqa	%xmm12, 368(%rsp)
	vmovdqa	%xmm3, 384(%rsp)
	vmovups	(%rdx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovups	32(%rdx), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovups	48(%rdx), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovups	64(%rdx), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovups	80(%rdx), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovdqa	32(%rdi), %xmm0
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm2
	vpshufb	%xmm8, %xmm2, %xmm3
	vpaddd	.LCPI4_7(%rip), %xmm0, %xmm2
	vmovdqa	%xmm2, 32(%rdi)
	vpaddd	.LCPI4_3(%rip), %xmm0, %xmm2
	vpshufb	%xmm8, %xmm2, %xmm4
	vpshufb	%xmm8, %xmm11, %xmm2
	vpxor	%xmm2, %xmm15, %xmm1
	vmovdqa	%xmm1, 400(%rsp)
	vpaddd	.LCPI4_4(%rip), %xmm0, %xmm5
	vpshufb	%xmm8, %xmm5, %xmm5
	vpaddd	.LCPI4_5(%rip), %xmm0, %xmm7
	vpshufb	%xmm8, %xmm7, %xmm7
	vpshufb	%xmm8, %xmm0, %xmm10
	vpaddd	.LCPI4_6(%rip), %xmm0, %xmm0
	vmovdqa	%xmm8, %xmm12
	vpshufb	%xmm8, %xmm0, %xmm8
	vpshufb	%xmm12, %xmm9, %xmm1
	vmovdqa	112(%rsp), %xmm2
	vpxor	%xmm2, %xmm10, %xmm11
	vpxor	%xmm3, %xmm2, %xmm15
	vpxor	%xmm4, %xmm2, %xmm10
	vpxor	%xmm5, %xmm2, %xmm0
	vpxor	%xmm7, %xmm2, %xmm3
	vpxor	%xmm2, %xmm8, %xmm9
	vmovaps	352(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm3, %xmm3
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm7, %xmm7, %xmm7
	vmovdqa	%xmm14, %xmm2
	vmovaps	208(%rsp), %xmm14
	vmovaps	336(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm1, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm14, %xmm1, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm14, %xmm1, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	#NO_APP
	vmovdqa	%xmm12, %xmm8
	vpshufb	%xmm12, %xmm13, %xmm1
	vmovaps	192(%rsp), %xmm12
	vmovaps	96(%rsp), %xmm13
	#APP
	vaesenc	%xmm13, %xmm11, %xmm11
	vaesenc	%xmm13, %xmm15, %xmm15
	vaesenc	%xmm13, %xmm10, %xmm10
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vpshufb	%xmm8, %xmm2, %xmm1
	vmovaps	176(%rsp), %xmm2
	vmovaps	320(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vmovdqa	368(%rsp), %xmm1
	vpshufb	%xmm8, %xmm1, %xmm1
	vmovaps	160(%rsp), %xmm2
	vmovaps	304(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vmovdqa	384(%rsp), %xmm1
	vpshufb	%xmm8, %xmm1, %xmm1
	vmovaps	144(%rsp), %xmm2
	vmovaps	288(%rsp), %xmm12
	#APP
	vaesenc	%xmm12, %xmm11, %xmm11
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm1, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	#NO_APP
	vmovaps	272(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm9, %xmm9
	#NO_APP
	vmovaps	128(%rsp), %xmm2
	vmovdqa	256(%rsp), %xmm6
	vmovaps	400(%rsp), %xmm12
	#APP
	vaesenc	%xmm6, %xmm11, %xmm11
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm10, %xmm10
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm1
	vpxor	%xmm1, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm1
	vpxor	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm1
	vpxor	%xmm1, %xmm4, %xmm4
	#NO_APP
	vmovaps	240(%rsp), %xmm1
	#APP
	vaesenc	%xmm1, %xmm11, %xmm11
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm9, %xmm9
	#NO_APP
	vmovdqa	224(%rsp), %xmm1
	#APP
	vaesenclast	%xmm1, %xmm11, %xmm11
	vaesenclast	%xmm1, %xmm15, %xmm15
	vaesenclast	%xmm1, %xmm10, %xmm10
	vaesenclast	%xmm1, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm3, %xmm3
	vaesenclast	%xmm1, %xmm9, %xmm9
	#NO_APP
	vpxor	416(%rsp), %xmm9, %xmm9
	vpxor	64(%rsp), %xmm3, %xmm13
	vpxor	80(%rsp), %xmm0, %xmm14
	vpxor	32(%rsp), %xmm10, %xmm12
	vpxor	48(%rsp), %xmm15, %xmm3
	vpxor	16(%rsp), %xmm11, %xmm11
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm4, %xmm1, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpunpckhqdq	%xmm1, %xmm4, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpbroadcastq	.LCPI4_8(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vmovdqu	%xmm11, (%rcx)
	vmovdqu	%xmm3, 16(%rcx)
	vmovdqu	%xmm12, 32(%rcx)
	vmovdqu	%xmm14, 48(%rcx)
	vmovdqu	%xmm13, 64(%rcx)
	addq	$96, %rdx
	vmovdqu	%xmm9, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rbx
	cmpq	$95, %rbx
	ja	.LBB4_18
.LBB4_19:
	vpshufb	%xmm8, %xmm11, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpshufb	%xmm8, %xmm3, %xmm1
	vpshufb	%xmm8, %xmm12, %xmm4
	vpshufb	%xmm8, %xmm14, %xmm5
	vpshufb	%xmm8, %xmm13, %xmm6
	vpshufb	%xmm8, %xmm9, %xmm7
	vmovdqa	176(%rsi), %xmm8
	vmovdqa	192(%rsi), %xmm9
	vmovdqa	208(%rsi), %xmm10
	vmovdqa	224(%rsi), %xmm11
	vmovdqa	240(%rsi), %xmm3
	vmovdqa	256(%rsi), %xmm2
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
	vmovdqa	176(%rsi), %xmm0
	vmovdqa	64(%rsp), %xmm1
	vpshufb	.LCPI4_0(%rip), %xmm1, %xmm1
	vpxor	(%rbp), %xmm1, %xmm1
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
	vmovdqa	%xmm0, (%rbp)
	movq	80(%rsp), %r8
	movq	32(%rsp), %rdx
	movq	16(%rsp), %r11
	cmpq	$96, %rbx
	jae	.LBB4_16
.LBB4_14:
	cmpq	$16, %rbx
	jb	.LBB4_15
.LBB4_20:
	vmovdqa	(%rdi), %xmm14
	vmovdqa	32(%rdi), %xmm0
	vmovaps	(%rsi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	16(%rsi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovdqa	32(%rsi), %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	vmovdqa	48(%rsi), %xmm4
	vmovdqa	64(%rsi), %xmm5
	vmovdqa	80(%rsi), %xmm6
	vmovdqa	96(%rsi), %xmm7
	vmovdqa	112(%rsi), %xmm8
	vmovdqa	128(%rsi), %xmm9
	vmovdqa	144(%rsi), %xmm10
	vmovdqa	160(%rsi), %xmm11
	vmovdqa	176(%rsi), %xmm12
	vmovdqa	.LCPI4_0(%rip), %xmm13
	vpbroadcastq	.LCPI4_8(%rip), %xmm15
	.p2align	4, 0x90
.LBB4_21:
	vpshufb	%xmm13, %xmm0, %xmm1
	vpxor	16(%rsp), %xmm1, %xmm1
	vaesenc	48(%rsp), %xmm1, %xmm1
	vaesenc	32(%rsp), %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpxor	(%rdx), %xmm1, %xmm1
	vmovdqu	%xmm1, (%r8)
	vpshufb	%xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm14
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm14, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm14
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
	movq	%r11, 16(%rsp)
	movq	%rax, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%rsi, %rbp
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%r8, %r14
	vzeroupper
	callq	*%r13
	vmovdqa	32(%r15), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%r15)
	vpxor	(%rbp), %xmm1, %xmm0
	vaesenc	16(%rbp), %xmm0, %xmm0
	vaesenc	32(%rbp), %xmm0, %xmm0
	vaesenc	48(%rbp), %xmm0, %xmm0
	vaesenc	64(%rbp), %xmm0, %xmm0
	vaesenc	80(%rbp), %xmm0, %xmm0
	vaesenc	96(%rbp), %xmm0, %xmm0
	vaesenc	112(%rbp), %xmm0, %xmm0
	vaesenc	128(%rbp), %xmm0, %xmm0
	vaesenc	144(%rbp), %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm1
	vaesenclast	160(%rbp), %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r13
	movq	%r15, %rdi
	vmovaps	48(%rsp), %xmm0
	vmovaps	%xmm0, 48(%r15)
	vmovdqa	32(%rsp), %xmm0
	vmovdqa	%xmm0, 64(%r15)
.LBB4_24:
	movq	%rbx, 80(%rdi)
	movq	%r12, %rax
	movq	16(%rsp), %r11
.LBB4_25:
	movq	%r11, 104(%rdi)
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	vzeroupper
	retq
.Lfunc_end4:
	.size	haberdashery_aes128gcm_streaming_skylake_encrypt_update, .Lfunc_end4-haberdashery_aes128gcm_streaming_skylake_encrypt_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
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
.LCPI5_1:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_skylake_encrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_encrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_encrypt_finalize,@function
haberdashery_aes128gcm_streaming_skylake_encrypt_finalize:
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	104(%rdi), %rbp
	testq	%rbp, %rbp
	je	.LBB5_1
	movq	%rdx, 8(%rsp)
	leaq	48(%r12), %r14
	vmovaps	64(%r12), %xmm0
	movq	80(%r12), %r13
	vmovaps	%xmm0, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%r13, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%r12), %xmm0
	testq	%r13, %r13
	je	.LBB5_4
	vmovdqa	16(%rsp), %xmm1
	vpshufb	.LCPI5_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	vmovdqa	176(%r15), %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	movq	8(%rsp), %rdx
	jmp	.LBB5_6
.LBB5_1:
	cmpq	$0, 80(%r12)
	vmovdqa	(%r12), %xmm0
	je	.LBB5_8
	vmovdqa	176(%r15), %xmm2
	leaq	48(%r12), %r14
	vmovdqa	64(%r12), %xmm1
	vpshufb	.LCPI5_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
.LBB5_6:
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI5_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	jmp	.LBB5_7
.LBB5_4:
	movq	8(%rsp), %rdx
.LBB5_7:
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, (%r14)
	movq	$0, 32(%r14)
.LBB5_8:
	vmovdqa	176(%r15), %xmm1
	vmovq	96(%r12), %xmm2
	vmovq	%rbp, %xmm3
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
	vpbroadcastq	.LCPI5_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%r12)
	testq	%rbx, %rbx
	je	.LBB5_9
	vmovdqa	(%r15), %xmm1
	vpxor	16(%r12), %xmm1, %xmm1
	vaesenc	16(%r15), %xmm1, %xmm1
	vaesenc	32(%r15), %xmm1, %xmm1
	vaesenc	48(%r15), %xmm1, %xmm1
	vaesenc	64(%r15), %xmm1, %xmm1
	vaesenc	80(%r15), %xmm1, %xmm1
	vaesenc	96(%r15), %xmm1, %xmm1
	vaesenc	112(%r15), %xmm1, %xmm1
	vaesenc	128(%r15), %xmm1, %xmm1
	vaesenc	144(%r15), %xmm1, %xmm1
	vaesenclast	160(%r15), %xmm1, %xmm1
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	cmpq	$16, %rbx
	jae	.LBB5_11
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rdx, %rdi
	movq	%rbx, %rdx
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB5_13
.LBB5_9:
	xorl	%ebx, %ebx
	jmp	.LBB5_13
.LBB5_11:
	vmovdqu	%xmm0, (%rdx)
	movl	$16, %ebx
.LBB5_13:
	movq	%rbx, %rax
	addq	$56, %rsp
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
	vzeroupper
	retq
.Lfunc_end5:
	.size	haberdashery_aes128gcm_streaming_skylake_encrypt_finalize, .Lfunc_end5-haberdashery_aes128gcm_streaming_skylake_encrypt_finalize
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_0:
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
.LCPI6_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI6_2:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI6_3:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI6_4:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI6_5:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI6_6:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI6_7:
	.long	6
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI6_8:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_skylake_decrypt_update,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_decrypt_update
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_decrypt_update,@function
haberdashery_aes128gcm_streaming_skylake_decrypt_update:
	.cfi_startproc
	cmpq	%r9, %rcx
	jne	.LBB6_2
	movq	%rcx, %rax
	movabsq	$-68719476704, %rcx
	leaq	(%rax,%rcx), %r9
	incq	%rcx
	cmpq	%rcx, %r9
	jae	.LBB6_3
.LBB6_2:
	xorl	%eax, %eax
	retq
.LBB6_3:
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
	movq	104(%rdi), %rcx
	leaq	(%rcx,%rax), %r13
	movq	%r13, %r9
	shrq	$5, %r9
	cmpq	$2147483646, %r9
	jbe	.LBB6_5
	xorl	%eax, %eax
	jmp	.LBB6_24
.LBB6_5:
	testq	%rcx, %rcx
	setne	%r9b
	movq	80(%rdi), %rcx
	testq	%rcx, %rcx
	sete	%r10b
	orb	%r9b, %r10b
	je	.LBB6_9
	testq	%rcx, %rcx
	je	.LBB6_10
	movq	%rdi, %rbp
	leaq	(%rcx,%rax), %rbx
	cmpq	$15, %rbx
	movq	%rax, 56(%rsp)
	ja	.LBB6_11
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	leaq	(%rsp,%rcx), %r14
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rax, %r15
	movq	%r8, %r12
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	vpxor	64(%rbp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rbp)
	vmovdqa	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	%rbp, %rdi
	jmp	.LBB6_22
.LBB6_9:
	vmovdqa	64(%rdi), %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vmovdqa	176(%rsi), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI6_8(%rip), %xmm2
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
.LBB6_10:
	movq	%rax, %rbx
	cmpq	$96, %rbx
	jb	.LBB6_13
.LBB6_15:
	vmovdqa	(%rdi), %xmm3
	vmovaps	(%rsi), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	16(%rsi), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	32(%rsi), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	48(%rsi), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	64(%rsi), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	80(%rsi), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	96(%rsi), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	112(%rsi), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	vmovaps	128(%rsi), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	144(%rsi), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	160(%rsi), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovaps	176(%rsi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovaps	192(%rsi), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovaps	208(%rsi), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	224(%rsi), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	240(%rsi), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovdqa	256(%rsi), %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	.p2align	4, 0x90
.LBB6_16:
	vmovdqu	(%rdx), %xmm6
	vmovdqa	%xmm6, 80(%rsp)
	vmovups	16(%rdx), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovups	32(%rdx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqu	48(%rdx), %xmm10
	vmovdqu	64(%rdx), %xmm7
	vmovdqu	80(%rdx), %xmm8
	vmovdqa	%xmm8, 64(%rsp)
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	.LCPI6_0(%rip), %xmm2
	vpshufb	%xmm2, %xmm0, %xmm1
	vpaddd	.LCPI6_2(%rip), %xmm0, %xmm4
	vpshufb	%xmm2, %xmm4, %xmm4
	vpaddd	.LCPI6_3(%rip), %xmm0, %xmm5
	vpshufb	%xmm2, %xmm5, %xmm5
	vpaddd	.LCPI6_4(%rip), %xmm0, %xmm11
	vpshufb	%xmm2, %xmm11, %xmm14
	vpaddd	.LCPI6_5(%rip), %xmm0, %xmm11
	vpshufb	%xmm2, %xmm11, %xmm15
	vpaddd	.LCPI6_6(%rip), %xmm0, %xmm11
	vpaddd	.LCPI6_7(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rdi)
	vpshufb	%xmm2, %xmm11, %xmm0
	vpshufb	%xmm2, %xmm6, %xmm11
	vpxor	%xmm3, %xmm11, %xmm3
	vmovdqa	%xmm3, 368(%rsp)
	vpshufb	%xmm2, %xmm8, %xmm6
	vmovdqa	96(%rsp), %xmm3
	vpxor	%xmm1, %xmm3, %xmm11
	vpxor	%xmm4, %xmm3, %xmm12
	vpxor	%xmm5, %xmm3, %xmm13
	vpxor	%xmm3, %xmm14, %xmm14
	vpxor	%xmm3, %xmm15, %xmm15
	vpxor	%xmm0, %xmm3, %xmm1
	vmovaps	352(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vxorps	%xmm0, %xmm0, %xmm0
	vpxor	%xmm5, %xmm5, %xmm5
	vmovaps	336(%rsp), %xmm8
	vmovaps	192(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpshufb	%xmm2, %xmm7, %xmm3
	vmovaps	320(%rsp), %xmm8
	vmovaps	176(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vpshufb	%xmm2, %xmm10, %xmm3
	vmovaps	304(%rsp), %xmm8
	vmovaps	160(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vmovdqa	16(%rsp), %xmm3
	vpshufb	%xmm2, %xmm3, %xmm3
	vmovaps	288(%rsp), %xmm8
	vmovaps	144(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vmovdqa	32(%rsp), %xmm3
	vpshufb	%xmm2, %xmm3, %xmm3
	vmovaps	272(%rsp), %xmm8
	vmovdqa	128(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm11, %xmm11
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vmovaps	256(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm11, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
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
	vaesenc	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm6, %xmm6, %xmm6
	vpunpcklqdq	%xmm0, %xmm6, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpunpckhqdq	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpbroadcastq	.LCPI6_8(%rip), %xmm5
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm0, %xmm3
	vmovaps	224(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	#NO_APP
	vmovaps	208(%rsp), %xmm0
	#APP
	vaesenclast	%xmm0, %xmm11, %xmm11
	vaesenclast	%xmm0, %xmm12, %xmm12
	vaesenclast	%xmm0, %xmm13, %xmm13
	vaesenclast	%xmm0, %xmm14, %xmm14
	vaesenclast	%xmm0, %xmm15, %xmm15
	vaesenclast	%xmm0, %xmm1, %xmm1
	#NO_APP
	vpxor	80(%rsp), %xmm11, %xmm0
	vpxor	32(%rsp), %xmm12, %xmm4
	vpxor	16(%rsp), %xmm13, %xmm5
	vpxor	%xmm10, %xmm14, %xmm6
	vpxor	%xmm7, %xmm15, %xmm8
	vpxor	64(%rsp), %xmm1, %xmm1
	vmovdqu	%xmm0, (%r8)
	vmovdqu	%xmm4, 16(%r8)
	vmovdqu	%xmm5, 32(%r8)
	vmovdqu	%xmm6, 48(%r8)
	vmovdqu	%xmm8, 64(%r8)
	vmovdqu	%xmm1, 80(%r8)
	addq	$96, %rdx
	addq	$96, %r8
	addq	$-96, %rbx
	cmpq	$95, %rbx
	ja	.LBB6_16
	vmovdqa	%xmm3, (%rdi)
	cmpq	$16, %rbx
	jae	.LBB6_18
.LBB6_14:
	testq	%rbx, %rbx
	jne	.LBB6_21
	jmp	.LBB6_23
.LBB6_11:
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
	movq	56(%rsp), %rax
	movq	$0, 80(%rbp)
	vmovdqa	64(%rsp), %xmm0
	vpxor	48(%rbp), %xmm0, %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm0
	vmovdqa	176(%rsi), %xmm1
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
	vpbroadcastq	.LCPI6_8(%rip), %xmm2
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
	cmpq	$96, %rbx
	jae	.LBB6_15
.LBB6_13:
	cmpq	$16, %rbx
	jb	.LBB6_14
.LBB6_18:
	vmovdqa	(%rdi), %xmm15
	vmovdqa	32(%rdi), %xmm0
	vmovdqa	176(%rsi), %xmm1
	vmovaps	(%rsi), %xmm2
	vmovaps	%xmm2, 32(%rsp)
	vmovaps	16(%rsi), %xmm2
	vmovaps	%xmm2, 16(%rsp)
	vmovaps	32(%rsi), %xmm2
	vmovaps	%xmm2, 80(%rsp)
	vmovdqa	48(%rsi), %xmm2
	vmovdqa	%xmm2, 64(%rsp)
	vmovdqa	64(%rsi), %xmm6
	vmovdqa	80(%rsi), %xmm7
	vmovdqa	96(%rsi), %xmm8
	vmovdqa	112(%rsi), %xmm9
	vmovdqa	128(%rsi), %xmm10
	vmovdqa	144(%rsi), %xmm11
	vmovdqa	160(%rsi), %xmm12
	vmovdqa	.LCPI6_0(%rip), %xmm13
	vpbroadcastq	.LCPI6_8(%rip), %xmm14
	.p2align	4, 0x90
.LBB6_19:
	vmovdqu	(%rdx), %xmm2
	vpshufb	%xmm13, %xmm2, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm1, %xmm15
	vpclmulqdq	$1, %xmm3, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm15, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm1, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm5, %xmm4
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufb	%xmm13, %xmm0, %xmm5
	vpxor	32(%rsp), %xmm5, %xmm5
	vaesenc	16(%rsp), %xmm5, %xmm5
	vaesenc	80(%rsp), %xmm5, %xmm5
	vaesenc	64(%rsp), %xmm5, %xmm5
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenclast	%xmm12, %xmm5, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vmovdqu	%xmm2, (%r8)
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm2
	vpxor	%xmm3, %xmm2, %xmm15
	addq	$16, %r8
	addq	$-16, %rbx
	addq	$16, %rdx
	vpaddd	.LCPI6_2(%rip), %xmm0, %xmm0
	cmpq	$15, %rbx
	ja	.LBB6_19
	vmovdqa	%xmm0, 32(%rdi)
	vmovdqa	%xmm15, (%rdi)
	testq	%rbx, %rbx
	je	.LBB6_23
.LBB6_21:
	movq	%rax, 56(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %r12
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%r13, %rbp
	movq	%rsi, %r13
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%r8, %r14
	vzeroupper
	callq	*%r12
	vmovdqa	32(%r15), %xmm0
	vpshufb	.LCPI6_0(%rip), %xmm0, %xmm1
	vpaddd	.LCPI6_2(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%r15)
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
	vmovdqa	(%rsp), %xmm1
	vaesenclast	160(%r13), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rbp, %r13
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r12
	movq	%r15, %rdi
	vmovaps	32(%rsp), %xmm0
	vmovaps	%xmm0, 48(%r15)
	vmovdqa	16(%rsp), %xmm0
	vmovdqa	%xmm0, 64(%r15)
.LBB6_22:
	movq	%rbx, 80(%rdi)
	movq	56(%rsp), %rax
.LBB6_23:
	movq	%r13, 104(%rdi)
.LBB6_24:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	vzeroupper
	retq
.Lfunc_end6:
	.size	haberdashery_aes128gcm_streaming_skylake_decrypt_update, .Lfunc_end6-haberdashery_aes128gcm_streaming_skylake_decrypt_update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
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
.LCPI7_1:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_2:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes128gcm_streaming_skylake_decrypt_finalize,"ax",@progbits
	.globl	haberdashery_aes128gcm_streaming_skylake_decrypt_finalize
	.p2align	4, 0x90
	.type	haberdashery_aes128gcm_streaming_skylake_decrypt_finalize,@function
haberdashery_aes128gcm_streaming_skylake_decrypt_finalize:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$16, %rcx
	jne	.LBB7_10
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	vmovdqu	(%rdx), %xmm5
	movq	104(%rdi), %r14
	testq	%r14, %r14
	je	.LBB7_2
	vmovdqa	%xmm5, (%rsp)
	movq	%rsi, %r12
	leaq	48(%rdi), %r15
	vmovaps	48(%rdi), %xmm0
	vxorps	64(%rdi), %xmm0, %xmm0
	movq	80(%rdi), %rbx
	vmovaps	%xmm0, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rax
	leaq	32(%rsp), %rsi
	movq	%rdi, %r13
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r13, %rdi
	vmovdqa	(%r13), %xmm0
	testq	%rbx, %rbx
	je	.LBB7_5
	vmovdqa	16(%rsp), %xmm1
	vpshufb	.LCPI7_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	movq	%r12, %rsi
	vmovdqa	176(%r12), %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	vmovdqa	(%rsp), %xmm5
	jmp	.LBB7_7
.LBB7_2:
	cmpq	$0, 80(%rdi)
	vmovdqa	(%rdi), %xmm0
	je	.LBB7_9
	vmovdqa	176(%rsi), %xmm2
	leaq	48(%rdi), %r15
	vmovdqa	64(%rdi), %xmm1
	vpshufb	.LCPI7_0(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
.LBB7_7:
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI7_2(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	jmp	.LBB7_8
.LBB7_5:
	movq	%r12, %rsi
	vmovdqa	(%rsp), %xmm5
.LBB7_8:
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, (%r15)
	movq	$0, 32(%r15)
.LBB7_9:
	vmovdqa	176(%rsi), %xmm1
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
	vpbroadcastq	.LCPI7_2(%rip), %xmm2
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
	vaesenclast	160(%rsi), %xmm1, %xmm1
	vpshufb	.LCPI7_0(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm5, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
	addq	$48, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.LBB7_10:
	vzeroupper
	retq
.Lfunc_end7:
	.size	haberdashery_aes128gcm_streaming_skylake_decrypt_finalize, .Lfunc_end7-haberdashery_aes128gcm_streaming_skylake_decrypt_finalize
	.cfi_endproc

	.ident	"rustc version 1.86.0-nightly (9cd60bd2c 2025-02-15)"
	.section	".note.GNU-stack","",@progbits

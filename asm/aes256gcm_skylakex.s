# @generated
# https://github.com/facebookincubator/haberdashery/
	.text
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
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
.LCPI0_9:
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
	.quad	4294967297
.LCPI0_8:
	.quad	274877907008
.LCPI0_10:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_2:
	.long	0x00000002
.LCPI0_3:
	.long	0x0c0f0e0d
.LCPI0_4:
	.long	0x00000004
.LCPI0_5:
	.long	0x00000008
.LCPI0_6:
	.long	0x00000010
.LCPI0_7:
	.long	0x00000020
	.section	.text.haberdashery_aes256gcm_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_init,@function
haberdashery_aes256gcm_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI0_3(%rip), %xmm16
	vpshufb	%xmm16, %xmm1, %xmm2
	vpbroadcastq	.LCPI0_1(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm3
	vpternlogq	$150, %xmm4, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm0, %xmm14
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm2
	vpslldq	$12, %xmm1, %xmm4
	vpternlogq	$150, %xmm2, %xmm0, %xmm4
	vpshufd	$255, %xmm3, %xmm0
	vpxor	%xmm13, %xmm13, %xmm13
	vaesenclast	%xmm13, %xmm0, %xmm2
	vbroadcastss	.LCPI0_2(%rip), %xmm5
	vpternlogq	$150, %xmm4, %xmm1, %xmm2
	vbroadcastss	.LCPI0_3(%rip), %xmm0
	#APP
	vaesenc	%xmm3, %xmm14, %xmm14
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpslldq	$12, %xmm3, %xmm6
	vpternlogq	$150, %xmm1, %xmm4, %xmm6
	vpshufb	%xmm0, %xmm2, %xmm8
	vaesenclast	%xmm5, %xmm8, %xmm8
	vpternlogq	$150, %xmm3, %xmm6, %xmm8
	#NO_APP
	vbroadcastss	.LCPI0_4(%rip), %xmm1
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vpslldq	$4, %xmm2, %xmm4
	vpslldq	$8, %xmm2, %xmm5
	vpslldq	$12, %xmm2, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm8, %xmm7
	vaesenclast	%xmm13, %xmm7, %xmm7
	vpternlogq	$150, %xmm2, %xmm6, %xmm7
	#NO_APP
	vmovaps	%xmm7, %xmm4
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vpslldq	$4, %xmm8, %xmm5
	vpslldq	$8, %xmm8, %xmm6
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm5, %xmm6, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm9
	vaesenclast	%xmm1, %xmm9, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	#NO_APP
	vmovaps	%xmm8, %xmm17
	vmovaps	%xmm9, %xmm5
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm6
	vpslldq	$12, %xmm4, %xmm7
	vpternlogq	$150, %xmm1, %xmm6, %xmm7
	vpshufd	$255, %xmm9, %xmm8
	vaesenclast	%xmm13, %xmm8, %xmm8
	vpternlogq	$150, %xmm4, %xmm7, %xmm8
	#NO_APP
	vmovaps	%xmm4, %xmm18
	vbroadcastss	.LCPI0_5(%rip), %xmm1
	vmovaps	%xmm8, %xmm4
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vpslldq	$4, %xmm5, %xmm7
	vpslldq	$8, %xmm5, %xmm8
	vpslldq	$12, %xmm5, %xmm9
	vpternlogq	$150, %xmm7, %xmm8, %xmm9
	vpshufb	%xmm0, %xmm4, %xmm6
	vaesenclast	%xmm1, %xmm6, %xmm6
	vpternlogq	$150, %xmm5, %xmm9, %xmm6
	#NO_APP
	vmovaps	%xmm5, %xmm19
	vmovaps	%xmm6, %xmm5
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm1, %xmm8, %xmm9
	vpshufd	$255, %xmm5, %xmm6
	vaesenclast	%xmm13, %xmm6, %xmm6
	vpternlogq	$150, %xmm4, %xmm9, %xmm6
	#NO_APP
	vmovaps	%xmm4, %xmm20
	vbroadcastss	.LCPI0_6(%rip), %xmm1
	vmovaps	%xmm6, %xmm4
	#APP
	vaesenc	%xmm5, %xmm14, %xmm14
	vpslldq	$4, %xmm5, %xmm9
	vpslldq	$8, %xmm5, %xmm10
	vpslldq	$12, %xmm5, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpshufb	%xmm0, %xmm6, %xmm8
	vaesenclast	%xmm1, %xmm8, %xmm8
	vpternlogq	$150, %xmm5, %xmm11, %xmm8
	#NO_APP
	vmovaps	%xmm5, %xmm21
	vbroadcastss	.LCPI0_7(%rip), %xmm1
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vpslldq	$4, %xmm6, %xmm10
	vpslldq	$8, %xmm6, %xmm11
	vpslldq	$12, %xmm6, %xmm15
	vpternlogq	$150, %xmm10, %xmm11, %xmm15
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm13, %xmm9, %xmm9
	vpternlogq	$150, %xmm6, %xmm15, %xmm9
	#NO_APP
	vmovaps	%xmm6, %xmm22
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vpslldq	$4, %xmm8, %xmm11
	vpslldq	$8, %xmm8, %xmm15
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm15, %xmm12
	vpshufb	%xmm0, %xmm9, %xmm10
	vaesenclast	%xmm1, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm12, %xmm10
	#NO_APP
	vpslldq	$4, %xmm9, %xmm0
	vpunpcklqdq	%xmm9, %xmm13, %xmm1
	vinsertps	$55, %xmm9, %xmm0, %xmm12
	vpternlogq	$150, %xmm1, %xmm0, %xmm12
	vpshufd	$255, %xmm10, %xmm0
	vaesenclast	%xmm13, %xmm0, %xmm11
	vpternlogq	$150, %xmm12, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpunpcklqdq	%xmm10, %xmm13, %xmm1
	vinsertps	$55, %xmm10, %xmm0, %xmm15
	vpternlogq	$150, %xmm1, %xmm0, %xmm15
	vpshufb	%xmm16, %xmm11, %xmm0
	vpbroadcastq	.LCPI0_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm12
	vpternlogq	$150, %xmm15, %xmm10, %xmm12
	vaesenc	%xmm9, %xmm14, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpshufb	.LCPI0_9(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm14
	vpblendd	$12, %xmm1, %xmm13, %xmm1
	vpsllq	$63, %xmm1, %xmm15
	vpternlogq	$30, %xmm14, %xmm0, %xmm15
	vpsllq	$62, %xmm1, %xmm0
	vpsllq	$57, %xmm1, %xmm13
	vpternlogq	$150, %xmm0, %xmm15, %xmm13
	vpbroadcastq	.LCPI0_10(%rip), %xmm0
	vpclmulqdq	$0, %xmm13, %xmm13, %xmm1
	vpshufd	$78, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm15
	vpshufd	$78, %xmm1, %xmm14
	vpclmulqdq	$17, %xmm13, %xmm13, %xmm1
	vpternlogq	$150, %xmm15, %xmm1, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm13, %xmm14, %xmm15
	vpxor	%xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm13, %xmm14, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vpshufd	$78, %xmm4, %xmm15
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm15
	vpclmulqdq	$17, %xmm13, %xmm14, %xmm5
	vpxor	%xmm5, %xmm15, %xmm5
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm4, %xmm15
	vpternlogq	$150, %xmm1, %xmm5, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm5
	vpternlogq	$150, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm1
	vpshufd	$78, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm6
	vpternlogq	$150, %xmm5, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm5
	vpclmulqdq	$1, %xmm13, %xmm1, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpclmulqdq	$0, %xmm13, %xmm1, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpshufd	$78, %xmm6, %xmm7
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm6
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm0
	vpclmulqdq	$17, %xmm13, %xmm1, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpshufd	$78, %xmm6, %xmm6
	vmovups	(%rsi), %ymm7
	vmovups	%ymm7, (%rdi)
	vmovdqa	%xmm3, 32(%rdi)
	vmovdqa	%xmm2, 48(%rdi)
	vmovaps	%xmm17, 64(%rdi)
	vmovaps	%xmm18, 80(%rdi)
	vmovaps	%xmm19, 96(%rdi)
	vmovaps	%xmm20, 112(%rdi)
	vmovaps	%xmm21, 128(%rdi)
	vmovaps	%xmm22, 144(%rdi)
	vmovaps	%xmm8, 160(%rdi)
	vmovaps	%xmm9, 176(%rdi)
	vmovaps	%xmm10, 192(%rdi)
	vmovdqa	%xmm11, 208(%rdi)
	vmovdqa	%xmm12, 224(%rdi)
	vmovdqa	%xmm13, 240(%rdi)
	vmovdqa	%xmm14, 256(%rdi)
	vmovdqa	%xmm15, 272(%rdi)
	vmovdqa	%xmm1, 288(%rdi)
	vpsrldq	$8, %xmm5, %xmm1
	vpternlogq	$150, %xmm1, %xmm0, %xmm6
	vmovdqa	%xmm6, 304(%rdi)
	vmovdqa	%xmm4, 320(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_skylakex_init, .Lfunc_end0-haberdashery_aes256gcm_skylakex_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI1_1:
	.long	0
	.long	4
	.long	5
	.long	3
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
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_5:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_6:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_7:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI1_8:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_9:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_10:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_11:
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
.LCPI1_12:
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
.LCPI1_4:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_13:
	.long	16777216
	.section	.text.haberdashery_aes256gcm_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_encrypt,@function
haberdashery_aes256gcm_skylakex_encrypt:
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
	subq	$280, %rsp
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	336(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	352(%rsp), %r13
	jne	.LBB1_46
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_46
	cmpq	$16, 368(%rsp)
	jne	.LBB1_46
	cmpq	$12, %rdx
	jne	.LBB1_46
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_46
	movq	%r9, %r15
	movq	%rdi, %rbx
	vmovq	4(%rsi), %xmm0
	vpbroadcastd	.LCPI1_13(%rip), %xmm1
	vpinsrd	$0, (%rsi), %xmm1, %xmm1
	vmovdqa64	.LCPI1_1(%rip), %xmm19
	vpermi2d	%xmm0, %xmm1, %xmm19
	testq	%r14, %r14
	je	.LBB1_8
	vmovdqa	240(%rbx), %xmm13
	vmovdqa	256(%rbx), %xmm14
	vmovdqa	272(%rbx), %xmm8
	vmovdqa	288(%rbx), %xmm11
	vmovdqa	304(%rbx), %xmm12
	vmovdqa	320(%rbx), %xmm10
	vpxor	%xmm15, %xmm15, %xmm15
	cmpq	$96, %r14
	jae	.LBB1_10
	movq	%r14, %rax
	cmpq	$16, %rax
	jae	.LBB1_13
	jmp	.LBB1_22
.LBB1_8:
	vmovdqa	240(%rbx), %xmm13
	testq	%r13, %r13
	je	.LBB1_36
	vmovdqa	256(%rbx), %xmm14
	vmovdqa	272(%rbx), %xmm8
	vmovdqa	288(%rbx), %xmm11
	vmovdqa	304(%rbx), %xmm12
	vmovdqa	320(%rbx), %xmm10
	vpxor	%xmm15, %xmm15, %xmm15
	jmp	.LBB1_25
.LBB1_10:
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm20
	movq	%r14, %rax
	vmovdqa	%xmm13, %xmm1
	vmovdqa	%xmm8, %xmm13
	.p2align	4, 0x90
.LBB1_11:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vmovdqu	32(%rcx), %xmm4
	vmovdqu	48(%rcx), %xmm5
	vmovdqu	64(%rcx), %xmm6
	vmovdqu	80(%rcx), %xmm7
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm1, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm1, %xmm9
	vmovdqa64	%xmm10, %xmm18
	vpclmulqdq	$16, %xmm7, %xmm1, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$0, %xmm6, %xmm14, %xmm10
	vmovdqa64	%xmm11, %xmm16
	vpclmulqdq	$1, %xmm6, %xmm14, %xmm11
	vmovdqa64	%xmm12, %xmm17
	vpclmulqdq	$16, %xmm6, %xmm14, %xmm12
	vpternlogq	$150, %xmm11, %xmm9, %xmm12
	vmovdqa64	%xmm16, %xmm11
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm9
	vpternlogq	$150, %xmm8, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm10
	vpternlogq	$150, %xmm8, %xmm12, %xmm10
	vmovdqa64	%xmm17, %xmm12
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm7, %xmm1, %xmm7
	vpclmulqdq	$17, %xmm6, %xmm14, %xmm6
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpternlogq	$150, %xmm7, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm7
	vpternlogq	$150, %xmm6, %xmm10, %xmm7
	vmovdqa64	%xmm18, %xmm10
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm8
	vpternlogq	$150, %xmm6, %xmm9, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm9
	vpternlogq	$150, %xmm6, %xmm7, %xmm9
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpternlogq	$150, %xmm4, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm10, %xmm5
	vpternlogq	$150, %xmm4, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm10, %xmm4
	vpslldq	$8, %xmm5, %xmm6
	vpternlogq	$150, %xmm4, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm10, %xmm2
	vmovdqa64	%xmm20, %xmm7
	vpclmulqdq	$16, %xmm7, %xmm6, %xmm4
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm15
	vpternlogq	$150, %xmm2, %xmm3, %xmm15
	vpsrldq	$8, %xmm5, %xmm2
	vpshufd	$78, %xmm4, %xmm3
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm2, %xmm3, %xmm15
	cmpq	$96, %rax
	jae	.LBB1_11
	vmovdqa	%xmm13, %xmm8
	vmovdqa	%xmm1, %xmm13
	cmpq	$16, %rax
	jb	.LBB1_22
.LBB1_13:
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_14
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm15
	vpternlogq	$150, %xmm2, %xmm1, %xmm15
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_15
.LBB1_20:
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm1
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm5, %xmm6
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm0, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm2, %xmm5, %xmm15
	vpternlogq	$150, %xmm4, %xmm3, %xmm15
	cmpq	$15, %rax
	ja	.LBB1_21
.LBB1_22:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_16
.LBB1_23:
	testq	%r13, %r13
	je	.LBB1_45
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB1_46
	jmp	.LBB1_25
.LBB1_14:
	cmpq	$16, %rdx
	jae	.LBB1_20
.LBB1_15:
	testq	%rdx, %rdx
	je	.LBB1_23
.LBB1_16:
	vmovdqa	%xmm8, 80(%rsp)
	vmovdqa	%xmm14, 96(%rsp)
	vmovdqa	%xmm12, 112(%rsp)
	vmovdqa	%xmm11, 128(%rsp)
	vmovdqa	%xmm10, 16(%rsp)
	vmovdqa	%xmm15, 32(%rsp)
	vmovdqa	%xmm13, 48(%rsp)
	vmovdqa64	%xmm19, 64(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_33
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovdqa64	64(%rsp), %xmm19
	vmovdqa	48(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	16(%rsp), %xmm10
	vmovdqa	128(%rsp), %xmm11
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm14
	vmovdqa	80(%rsp), %xmm8
	jb	.LBB1_46
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm15
	vpternlogq	$150, %xmm2, %xmm1, %xmm15
.LBB1_25:
	movq	344(%rsp), %rax
	vpshufb	.LCPI1_2(%rip), %xmm19, %xmm3
	vpaddd	.LCPI1_3(%rip), %xmm3, %xmm31
	cmpq	$96, %r13
	vmovdqa64	%xmm19, 64(%rsp)
	jae	.LBB1_34
	movq	%r13, %r12
	movq	%r13, %rbp
	cmpq	$16, %r12
	jb	.LBB1_41
.LBB1_27:
	vmovdqa64	(%rbx), %xmm17
	vmovdqa64	16(%rbx), %xmm20
	vmovdqa64	32(%rbx), %xmm21
	vmovdqa64	48(%rbx), %xmm22
	vmovdqa64	64(%rbx), %xmm23
	vmovdqa64	80(%rbx), %xmm24
	vmovdqa64	96(%rbx), %xmm25
	vmovdqa	112(%rbx), %xmm7
	vmovdqa	128(%rbx), %xmm8
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm10
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm12
	vmovdqa	208(%rbx), %xmm6
	vmovdqa	224(%rbx), %xmm14
	vmovdqa	%xmm15, %xmm5
	vmovdqa	.LCPI1_2(%rip), %xmm15
	vmovdqa64	.LCPI1_3(%rip), %xmm16
	vpbroadcastq	.LCPI1_4(%rip), %xmm0
	.p2align	4, 0x90
.LBB1_28:
	vpshufb	%xmm15, %xmm31, %xmm18
	vpxorq	%xmm18, %xmm17, %xmm1
	vmovdqa64	%xmm20, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm21, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm22, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm23, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm24, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm25, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm1
	vpxor	(%r15), %xmm1, %xmm1
	vpshufb	%xmm15, %xmm1, %xmm18
	vpxorq	%xmm18, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpslldq	$8, %xmm3, %xmm18
	vpxorq	%xmm18, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm4, %xmm5
	vpxor	%xmm2, %xmm5, %xmm5
	vpshufd	$78, %xmm4, %xmm2
	leaq	16(%r15), %rsi
	leaq	16(%rax), %r13
	addq	$-16, %r12
	vpaddd	%xmm16, %xmm31, %xmm31
	vmovdqu	%xmm1, (%rax)
	vpsrldq	$8, %xmm3, %xmm1
	vpternlogq	$150, %xmm1, %xmm2, %xmm5
	movq	%rsi, %r15
	movq	%r13, %rax
	cmpq	$15, %r12
	ja	.LBB1_28
	vmovdqa	%xmm5, 32(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB1_42
.LBB1_30:
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%r12, %rdx
	vmovdqa64	%xmm31, 16(%rsp)
	callq	*%r15
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
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
	vaesenc	192(%rbx), %xmm0, %xmm0
	vaesenc	208(%rbx), %xmm0, %xmm0
	vaesenclast	224(%rbx), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	movq	%rbp, %r13
	vmovdqa	240(%rbx), %xmm13
	testq	%rbp, %rbp
	je	.LBB1_43
.LBB1_31:
	vmovdqa	%xmm13, 48(%rsp)
	vmovdqa	16(%rsp), %xmm0
	vmovdqa	%xmm0, 256(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	256(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB1_37
	vmovdqa	(%rsp), %xmm0
.LBB1_33:
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm1
	vmovdqa	48(%rsp), %xmm13
	vpclmulqdq	$0, %xmm1, %xmm13, %xmm0
	vpclmulqdq	$1, %xmm1, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm1, %xmm13, %xmm1
	vmovdqa64	64(%rsp), %xmm19
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm1, %xmm3, %xmm15
	vpternlogq	$150, %xmm2, %xmm0, %xmm15
	jmp	.LBB1_45
.LBB1_34:
	vmovdqa	%xmm8, 80(%rsp)
	vmovdqa	%xmm14, 96(%rsp)
	vmovdqa	%xmm10, 16(%rsp)
	vmovdqa	.LCPI1_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm31, %xmm2
	vpaddd	.LCPI1_5(%rip), %xmm3, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm5
	vpaddd	.LCPI1_6(%rip), %xmm3, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm6
	vpaddd	.LCPI1_7(%rip), %xmm3, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm7
	vpaddd	.LCPI1_8(%rip), %xmm3, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm8
	vpaddd	.LCPI1_9(%rip), %xmm3, %xmm1
	vpshufb	%xmm0, %xmm1, %xmm9
	vmovdqa	(%rbx), %xmm1
	vmovaps	16(%rbx), %xmm14
	vmovaps	32(%rbx), %xmm10
	vmovaps	48(%rbx), %xmm16
	vpxor	%xmm2, %xmm1, %xmm4
	vmovaps	%xmm16, %xmm2
	vpxor	%xmm5, %xmm1, %xmm5
	vpxor	%xmm6, %xmm1, %xmm6
	vpxor	%xmm7, %xmm1, %xmm7
	vpxor	%xmm1, %xmm8, %xmm8
	vpxor	%xmm1, %xmm9, %xmm9
	vmovaps	%xmm14, 32(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm10, 48(%rsp)
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovaps	%xmm16, %xmm28
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vmovdqa	64(%rbx), %xmm10
	#APP
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	#NO_APP
	vmovaps	80(%rbx), %xmm14
	vmovaps	%xmm14, 128(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	96(%rbx), %xmm14
	vmovaps	%xmm14, 112(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	112(%rbx), %xmm14
	vmovaps	%xmm14, 240(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	128(%rbx), %xmm14
	vmovaps	%xmm14, 224(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	144(%rbx), %xmm14
	vmovaps	%xmm14, 208(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	160(%rbx), %xmm14
	vmovaps	%xmm14, 192(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	176(%rbx), %xmm14
	vmovaps	%xmm14, 176(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	192(%rbx), %xmm14
	vmovaps	%xmm14, 160(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	208(%rbx), %xmm14
	vmovaps	%xmm14, 144(%rsp)
	#APP
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm5, %xmm5
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm7, %xmm7
	vaesenc	%xmm14, %xmm8, %xmm8
	vaesenc	%xmm14, %xmm9, %xmm9
	#NO_APP
	vmovaps	224(%rbx), %xmm2
	#APP
	vaesenclast	%xmm2, %xmm4, %xmm4
	vaesenclast	%xmm2, %xmm5, %xmm5
	vaesenclast	%xmm2, %xmm6, %xmm6
	vaesenclast	%xmm2, %xmm7, %xmm7
	vaesenclast	%xmm2, %xmm8, %xmm8
	vaesenclast	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpxor	(%r15), %xmm4, %xmm14
	vpxorq	16(%r15), %xmm5, %xmm16
	vpxorq	32(%r15), %xmm6, %xmm24
	vpxorq	48(%r15), %xmm7, %xmm25
	vpxorq	64(%r15), %xmm8, %xmm26
	vpxorq	80(%r15), %xmm9, %xmm27
	vpaddd	.LCPI1_10(%rip), %xmm3, %xmm31
	vmovdqu	%xmm14, (%rax)
	vmovdqu64	%xmm16, 16(%rax)
	vmovdqu64	%xmm24, 32(%rax)
	vmovdqu64	%xmm25, 48(%rax)
	vmovdqu64	%xmm26, 64(%rax)
	vmovdqu64	%xmm27, 80(%rax)
	addq	$96, %r15
	addq	$96, %rax
	leaq	-96(%r13), %r12
	cmpq	$96, %r12
	jae	.LBB1_38
	vmovdqa64	%xmm13, %xmm19
	vmovdqa64	%xmm11, %xmm21
	vmovdqa64	%xmm12, %xmm22
	vmovdqa64	96(%rsp), %xmm17
	vmovdqa64	80(%rsp), %xmm29
	jmp	.LBB1_40
.LBB1_36:
	vpxor	%xmm15, %xmm15, %xmm15
	jmp	.LBB1_45
.LBB1_37:
	vmovdqa64	64(%rsp), %xmm19
	vmovdqa	48(%rsp), %xmm13
	jmp	.LBB1_44
.LBB1_38:
	vpxord	%xmm23, %xmm23, %xmm23
	vpbroadcastq	.LCPI1_4(%rip), %xmm20
	vmovdqa64	%xmm13, %xmm19
	vmovdqa64	%xmm11, %xmm21
	vmovdqa64	%xmm12, %xmm22
	vmovdqa64	96(%rsp), %xmm17
	vmovdqa64	80(%rsp), %xmm29
	vmovdqa64	%xmm10, %xmm18
	.p2align	4, 0x90
.LBB1_39:
	vpshufb	%xmm0, %xmm31, %xmm4
	vpaddd	.LCPI1_3(%rip), %xmm31, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vpaddd	.LCPI1_5(%rip), %xmm31, %xmm6
	vpshufb	%xmm0, %xmm6, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm31, %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpaddd	.LCPI1_7(%rip), %xmm31, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm8
	vpaddd	.LCPI1_8(%rip), %xmm31, %xmm9
	vpshufb	%xmm0, %xmm9, %xmm9
	vpxor	%xmm4, %xmm1, %xmm4
	vpxor	%xmm5, %xmm1, %xmm5
	vpxor	%xmm6, %xmm1, %xmm6
	vpxor	%xmm7, %xmm1, %xmm7
	vpxor	%xmm1, %xmm8, %xmm8
	vpxor	%xmm1, %xmm9, %xmm9
	vmovaps	32(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm0, %xmm27, %xmm13
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm11, %xmm11, %xmm11
	vmovdqa64	%xmm15, %xmm27
	vmovdqa64	%xmm19, %xmm3
	vmovaps	%xmm2, %xmm30
	vmovaps	48(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vmovaps	%xmm28, %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm0, %xmm26, %xmm13
	vmovdqa64	%xmm17, %xmm2
	vmovdqa64	%xmm18, %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vmovaps	128(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm0, %xmm25, %xmm13
	vmovaps	112(%rsp), %xmm3
	vmovdqa64	%xmm29, %xmm2
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vmovaps	240(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm0, %xmm24, %xmm13
	vmovdqa64	%xmm21, %xmm2
	vmovaps	224(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vmovaps	208(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpshufb	%xmm0, %xmm16, %xmm13
	vmovdqa64	%xmm22, %xmm2
	vmovaps	192(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	#NO_APP
	vmovaps	%xmm30, %xmm2
	vpshufb	%xmm0, %xmm14, %xmm13
	vpxorq	%xmm13, %xmm27, %xmm13
	vmovaps	176(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	vmovaps	160(%rsp), %xmm3
	vmovaps	16(%rsp), %xmm15
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$0, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm15, %xmm13, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	#NO_APP
	vmovaps	144(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm5, %xmm5
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenclast	%xmm2, %xmm4, %xmm4
	vaesenclast	%xmm2, %xmm5, %xmm5
	vaesenclast	%xmm2, %xmm6, %xmm6
	vaesenclast	%xmm2, %xmm7, %xmm7
	vaesenclast	%xmm2, %xmm8, %xmm8
	vaesenclast	%xmm2, %xmm9, %xmm9
	#NO_APP
	vpxor	(%r15), %xmm4, %xmm14
	vpxorq	16(%r15), %xmm5, %xmm16
	vpxorq	32(%r15), %xmm6, %xmm24
	vpxorq	48(%r15), %xmm7, %xmm25
	vpunpcklqdq	%xmm12, %xmm23, %xmm4
	vpunpckhqdq	%xmm23, %xmm12, %xmm5
	vpxorq	64(%r15), %xmm8, %xmm26
	vpxorq	80(%r15), %xmm9, %xmm27
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufd	$78, %xmm4, %xmm6
	vmovdqa64	%xmm20, %xmm3
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpxor	%xmm5, %xmm11, %xmm15
	vpshufd	$78, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm4, %xmm4
	vpternlogq	$150, %xmm4, %xmm5, %xmm15
	vpaddd	.LCPI1_9(%rip), %xmm31, %xmm31
	vmovdqu	%xmm14, (%rax)
	vmovdqu64	%xmm16, 16(%rax)
	vmovdqu64	%xmm24, 32(%rax)
	vmovdqu64	%xmm25, 48(%rax)
	vmovdqu64	%xmm26, 64(%rax)
	vmovdqu64	%xmm27, 80(%rax)
	addq	$96, %r15
	addq	$96, %rax
	addq	$-96, %r12
	cmpq	$95, %r12
	ja	.LBB1_39
.LBB1_40:
	vpshufb	%xmm0, %xmm25, %xmm1
	vpshufb	%xmm0, %xmm26, %xmm2
	vpshufb	%xmm0, %xmm27, %xmm3
	vmovdqa64	%xmm19, %xmm13
	vpclmulqdq	$0, %xmm3, %xmm13, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm13, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm13, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vmovdqa64	%xmm17, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm9, %xmm7
	vpternlogq	$150, %xmm6, %xmm5, %xmm7
	vpclmulqdq	$0, %xmm2, %xmm9, %xmm5
	vmovdqa64	%xmm29, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm5
	vpternlogq	$150, %xmm4, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm9, %xmm2
	vpshufb	%xmm0, %xmm16, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpshufb	%xmm0, %xmm24, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm13, %xmm3
	vpternlogq	$150, %xmm3, %xmm2, %xmm1
	vmovdqa64	%xmm21, %xmm8
	vpclmulqdq	$1, %xmm7, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm7, %xmm8, %xmm3
	vpternlogq	$150, %xmm2, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm7, %xmm8, %xmm2
	vmovdqa64	%xmm22, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm9, %xmm5
	vpternlogq	$150, %xmm2, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm4, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm9, %xmm6
	vpternlogq	$150, %xmm2, %xmm3, %xmm6
	vpclmulqdq	$17, %xmm7, %xmm8, %xmm2
	vpclmulqdq	$17, %xmm4, %xmm9, %xmm3
	vpshufb	%xmm0, %xmm14, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vmovdqa	16(%rsp), %xmm7
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm2
	vpternlogq	$150, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm1
	vpslldq	$8, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm1
	vpshufd	$78, %xmm4, %xmm5
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm15
	vpternlogq	$150, %xmm0, %xmm3, %xmm15
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm4, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm15
	movq	%r13, %rbp
	cmpq	$16, %r12
	jae	.LBB1_27
.LBB1_41:
	movq	%rax, %r13
	movq	%r15, %rsi
	vmovdqa	%xmm15, %xmm5
	vmovdqa	%xmm5, 32(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	jne	.LBB1_30
.LBB1_42:
	vmovdqa	%xmm0, 16(%rsp)
	movq	%rbp, %r13
	vmovdqa	240(%rbx), %xmm13
	testq	%rbp, %rbp
	jne	.LBB1_31
.LBB1_43:
	vmovdqa64	64(%rsp), %xmm19
.LBB1_44:
	vmovdqa	32(%rsp), %xmm15
.LBB1_45:
	movq	360(%rsp), %rax
	vmovq	%r14, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm13, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm13, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm13, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxorq	(%rbx), %xmm19, %xmm4
	vaesenc	16(%rbx), %xmm4, %xmm4
	vaesenc	32(%rbx), %xmm4, %xmm4
	vaesenc	48(%rbx), %xmm4, %xmm4
	vaesenc	64(%rbx), %xmm4, %xmm4
	vaesenc	80(%rbx), %xmm4, %xmm4
	vaesenc	96(%rbx), %xmm4, %xmm4
	vaesenc	112(%rbx), %xmm4, %xmm4
	vaesenc	128(%rbx), %xmm4, %xmm4
	vaesenc	144(%rbx), %xmm4, %xmm4
	vaesenc	160(%rbx), %xmm4, %xmm4
	vaesenc	176(%rbx), %xmm4, %xmm4
	vaesenc	192(%rbx), %xmm4, %xmm4
	vaesenc	208(%rbx), %xmm4, %xmm4
	vaesenclast	224(%rbx), %xmm4, %xmm4
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufb	.LCPI1_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_11(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm4, %xmm1
	vmovdqu	%xmm1, (%rax)
	movl	$1, %ebp
.LBB1_46:
	movl	%ebp, %eax
	addq	$280, %rsp
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
	.size	haberdashery_aes256gcm_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcm_skylakex_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.zero	4
	.zero	4
	.zero	4
	.long	16777216
.LCPI2_1:
	.long	0
	.long	4
	.long	5
	.long	3
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
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_5:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_6:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_7:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI2_8:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_9:
	.long	6
	.long	0
	.long	0
	.long	0
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
.LCPI2_11:
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
.LCPI2_4:
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_12:
	.long	16777216
	.section	.text.haberdashery_aes256gcm_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_decrypt,@function
haberdashery_aes256gcm_skylakex_decrypt:
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
	subq	$280, %rsp
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	336(%rsp), %rbp
	xorl	%eax, %eax
	cmpq	368(%rsp), %rbp
	jne	.LBB2_45
	cmpq	$12, %rdx
	jne	.LBB2_45
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %rbp
	ja	.LBB2_45
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_45
	cmpq	$16, 352(%rsp)
	jne	.LBB2_45
	movq	%r9, %r15
	movq	%rdi, %rbx
	vmovq	4(%rsi), %xmm19
	vpbroadcastd	.LCPI2_12(%rip), %xmm0
	vpinsrd	$0, (%rsi), %xmm0, %xmm21
	vmovdqa64	.LCPI2_1(%rip), %xmm20
	testq	%r14, %r14
	je	.LBB2_6
	vmovdqa	240(%rbx), %xmm0
	vpxor	%xmm11, %xmm11, %xmm11
	cmpq	$96, %r14
	jae	.LBB2_18
	movq	%r14, %rax
	jmp	.LBB2_9
.LBB2_6:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	xorl	%r12d, %r12d
	vpxor	%xmm11, %xmm11, %xmm11
	vpermt2d	%xmm19, %xmm20, %xmm21
	movq	344(%rsp), %rsi
	testq	%rbp, %rbp
	jne	.LBB2_24
	jmp	.LBB2_22
.LBB2_18:
	vmovdqa	256(%rbx), %xmm1
	vmovdqa	272(%rbx), %xmm2
	vmovdqa	288(%rbx), %xmm3
	vmovdqa	304(%rbx), %xmm4
	vmovdqa	320(%rbx), %xmm5
	vmovdqa64	.LCPI2_2(%rip), %xmm17
	vpbroadcastq	.LCPI2_4(%rip), %xmm22
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu64	(%rcx), %xmm16
	vmovdqu	16(%rcx), %xmm9
	vmovdqu	32(%rcx), %xmm10
	vmovdqa64	%xmm11, %xmm18
	vmovdqu	48(%rcx), %xmm11
	vmovdqu	64(%rcx), %xmm12
	vmovdqu	80(%rcx), %xmm13
	vpshufb	%xmm17, %xmm11, %xmm11
	vpshufb	%xmm17, %xmm12, %xmm12
	vpshufb	%xmm17, %xmm13, %xmm13
	vpclmulqdq	$0, %xmm13, %xmm0, %xmm14
	vpclmulqdq	$1, %xmm13, %xmm0, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm7
	vpxor	%xmm7, %xmm15, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm1, %xmm15
	vpclmulqdq	$1, %xmm12, %xmm1, %xmm8
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm6
	vpternlogq	$150, %xmm8, %xmm7, %xmm6
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm7
	vpternlogq	$150, %xmm14, %xmm15, %xmm7
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm14
	vpternlogq	$150, %xmm8, %xmm6, %xmm14
	vpshufb	%xmm17, %xmm9, %xmm6
	vpshufb	%xmm17, %xmm10, %xmm8
	vpclmulqdq	$17, %xmm13, %xmm0, %xmm9
	vpclmulqdq	$17, %xmm12, %xmm1, %xmm10
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpternlogq	$150, %xmm9, %xmm10, %xmm11
	vpclmulqdq	$1, %xmm8, %xmm3, %xmm9
	vpclmulqdq	$16, %xmm8, %xmm3, %xmm10
	vpternlogq	$150, %xmm9, %xmm14, %xmm10
	vpclmulqdq	$0, %xmm8, %xmm3, %xmm9
	vpclmulqdq	$0, %xmm6, %xmm4, %xmm12
	vpternlogq	$150, %xmm9, %xmm7, %xmm12
	vpclmulqdq	$1, %xmm6, %xmm4, %xmm7
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm9
	vpternlogq	$150, %xmm7, %xmm10, %xmm9
	vpshufb	%xmm17, %xmm16, %xmm7
	vpxorq	%xmm7, %xmm18, %xmm7
	vpclmulqdq	$17, %xmm8, %xmm3, %xmm8
	vpclmulqdq	$17, %xmm6, %xmm4, %xmm6
	vpternlogq	$150, %xmm8, %xmm11, %xmm6
	vpclmulqdq	$1, %xmm7, %xmm5, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm10
	vpternlogq	$150, %xmm8, %xmm9, %xmm10
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm8
	vpslldq	$8, %xmm10, %xmm9
	vpternlogq	$150, %xmm8, %xmm12, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm5, %xmm7
	vmovdqa64	%xmm22, %xmm11
	vpclmulqdq	$16, %xmm11, %xmm9, %xmm8
	vpshufd	$78, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm11
	vpternlogq	$150, %xmm7, %xmm6, %xmm11
	vpsrldq	$8, %xmm10, %xmm6
	vpshufd	$78, %xmm8, %xmm7
	addq	$96, %rcx
	addq	$-96, %rax
	vpternlogq	$150, %xmm6, %xmm7, %xmm11
	cmpq	$96, %rax
	jae	.LBB2_19
.LBB2_9:
	cmpq	$16, %rax
	jb	.LBB2_15
	leaq	-16(%rax), %r12
	testb	$16, %r12b
	je	.LBB2_11
	cmpq	$16, %r12
	jae	.LBB2_13
.LBB2_16:
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB2_17
.LBB2_20:
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rcx, %rsi
	movq	%r12, %rdx
	vmovdqa64	%xmm21, 80(%rsp)
	vmovdqa	%xmm11, 48(%rsp)
	vmovdqa64	%xmm19, 16(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa64	.LCPI2_1(%rip), %xmm20
	vmovdqa64	16(%rsp), %xmm19
	vmovdqa	48(%rsp), %xmm11
	vmovdqa64	80(%rsp), %xmm21
	vmovdqa	(%rsp), %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vpermt2d	%xmm19, %xmm20, %xmm21
	movq	344(%rsp), %rsi
	testq	%rbp, %rbp
	je	.LBB2_22
.LBB2_24:
	movabsq	$-68719476720, %rcx
	leaq	(%rcx,%rbp), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_45
	vpshufb	.LCPI2_2(%rip), %xmm21, %xmm0
	testq	%r12, %r12
	je	.LBB2_26
	vmovdqa	240(%rbx), %xmm5
	vmovdqa	32(%rsp), %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vmovdqa	%xmm5, 64(%rsp)
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm11
	vpternlogq	$150, %xmm3, %xmm2, %xmm11
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	jmp	.LBB2_28
.LBB2_11:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI2_2(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm11
	vpternlogq	$150, %xmm3, %xmm2, %xmm11
	movq	%r12, %rax
	cmpq	$16, %r12
	jb	.LBB2_16
.LBB2_13:
	vmovdqa	.LCPI2_2(%rip), %xmm1
	vpbroadcastq	.LCPI2_4(%rip), %xmm2
	.p2align	4, 0x90
.LBB2_14:
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
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpternlogq	$150, %xmm3, %xmm6, %xmm7
	addq	$32, %rcx
	addq	$-32, %rax
	vpshufb	%xmm1, %xmm4, %xmm3
	vpternlogq	$150, %xmm5, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm3, %xmm6, %xmm11
	vpternlogq	$150, %xmm5, %xmm4, %xmm11
	cmpq	$15, %rax
	ja	.LBB2_14
.LBB2_15:
	movq	%rax, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	jne	.LBB2_20
.LBB2_17:
	vmovdqa	%xmm0, 32(%rsp)
	xorl	%r12d, %r12d
	vpermt2d	%xmm19, %xmm20, %xmm21
	movq	344(%rsp), %rsi
	testq	%rbp, %rbp
	jne	.LBB2_24
.LBB2_22:
	testq	%r12, %r12
	je	.LBB2_23
	vmovdqa	240(%rbx), %xmm5
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm11
	vpternlogq	$150, %xmm2, %xmm1, %xmm11
	jmp	.LBB2_41
.LBB2_23:
	vmovdqa	240(%rbx), %xmm5
.LBB2_41:
	vmovdqu	(%rsi), %xmm6
	xorl	%ebp, %ebp
	jmp	.LBB2_44
.LBB2_26:
	vmovdqa	240(%rbx), %xmm1
	vmovdqa	%xmm1, 64(%rsp)
.LBB2_28:
	movq	360(%rsp), %rax
	vpaddd	.LCPI2_3(%rip), %xmm0, %xmm31
	cmpq	$96, %rbp
	vmovdqa64	%xmm21, 80(%rsp)
	jae	.LBB2_32
	movq	%rbp, %r12
	jmp	.LBB2_30
.LBB2_32:
	vmovaps	256(%rbx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	272(%rbx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	288(%rbx), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	304(%rbx), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	320(%rbx), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovdqa	(%rbx), %xmm5
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovaps	32(%rbx), %xmm0
	vmovaps	%xmm0, 176(%rsp)
	vmovaps	48(%rbx), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	80(%rbx), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovaps	96(%rbx), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovdqa	112(%rbx), %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	vmovdqa64	128(%rbx), %xmm19
	vmovdqa64	144(%rbx), %xmm20
	vmovdqa64	160(%rbx), %xmm21
	vmovdqa64	176(%rbx), %xmm22
	vmovdqa64	.LCPI2_2(%rip), %xmm16
	vpxord	%xmm23, %xmm23, %xmm23
	movq	%rbp, %r12
	vmovapd	192(%rbx), %xmm30
	vmovaps	208(%rbx), %xmm29
	vmovdqa64	224(%rbx), %xmm17
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vmovdqa64	64(%rsp), %xmm18
	.p2align	4, 0x90
.LBB2_33:
	vmovdqu64	16(%r15), %xmm24
	vmovdqu64	32(%r15), %xmm25
	vmovdqu64	48(%r15), %xmm26
	vmovdqu64	64(%r15), %xmm27
	vmovdqu64	80(%r15), %xmm28
	vpshufb	%xmm16, %xmm31, %xmm6
	vpaddd	.LCPI2_3(%rip), %xmm31, %xmm7
	vpshufb	%xmm16, %xmm7, %xmm7
	vpaddd	.LCPI2_5(%rip), %xmm31, %xmm8
	vpshufb	%xmm16, %xmm8, %xmm8
	vpaddd	.LCPI2_6(%rip), %xmm31, %xmm9
	vpshufb	%xmm16, %xmm9, %xmm9
	vpaddd	.LCPI2_7(%rip), %xmm31, %xmm10
	vpshufb	%xmm16, %xmm10, %xmm10
	vmovdqa	%xmm11, %xmm1
	vpaddd	.LCPI2_8(%rip), %xmm31, %xmm11
	vpshufb	%xmm16, %xmm11, %xmm11
	vpxor	%xmm6, %xmm5, %xmm6
	vpxor	%xmm7, %xmm5, %xmm7
	vpxor	%xmm5, %xmm8, %xmm8
	vpxor	%xmm5, %xmm9, %xmm9
	vpxor	%xmm5, %xmm10, %xmm10
	vpxor	%xmm5, %xmm11, %xmm11
	vmovaps	192(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	#NO_APP
	vpshufb	%xmm16, %xmm28, %xmm15
	vpxor	%xmm12, %xmm12, %xmm12
	vpxor	%xmm14, %xmm14, %xmm14
	vpxor	%xmm13, %xmm13, %xmm13
	vmovaps	176(%rsp), %xmm2
	vmovdqa64	%xmm18, %xmm3
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm0
	vpxor	%xmm0, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm0
	vpxor	%xmm0, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm0
	vpxor	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm0
	vpxor	%xmm0, %xmm14, %xmm14
	#NO_APP
	vmovaps	160(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	#NO_APP
	vpshufb	%xmm16, %xmm27, %xmm0
	vmovaps	48(%rsp), %xmm3
	vmovaps	144(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vmovaps	128(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	#NO_APP
	vpshufb	%xmm16, %xmm26, %xmm0
	vmovaps	16(%rsp), %xmm2
	vmovaps	112(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vmovaps	96(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	#NO_APP
	vpshufb	%xmm16, %xmm25, %xmm0
	vmovaps	240(%rsp), %xmm2
	vmovdqa64	%xmm19, %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vmovdqa64	%xmm20, %xmm0
	#APP
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm0, %xmm10, %xmm10
	vaesenc	%xmm0, %xmm11, %xmm11
	#NO_APP
	vpshufb	%xmm16, %xmm24, %xmm0
	vmovaps	224(%rsp), %xmm2
	vmovdqa64	%xmm21, %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	#NO_APP
	vmovdqu	(%r15), %xmm0
	vpshufb	%xmm16, %xmm0, %xmm15
	vpxor	%xmm1, %xmm15, %xmm15
	vmovdqa64	%xmm22, %xmm1
	#APP
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm9, %xmm9
	vaesenc	%xmm1, %xmm10, %xmm10
	vaesenc	%xmm1, %xmm11, %xmm11
	#NO_APP
	vmovaps	208(%rsp), %xmm2
	vmovapd	%xmm30, %xmm3
	#APP
	vaesenc	%xmm3, %xmm6, %xmm6
	vaesenc	%xmm3, %xmm7, %xmm7
	vaesenc	%xmm3, %xmm8, %xmm8
	vaesenc	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm3, %xmm10, %xmm10
	vaesenc	%xmm3, %xmm11, %xmm11
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm1
	vpxor	%xmm1, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm1
	vpxor	%xmm1, %xmm12, %xmm12
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm1
	vpxor	%xmm1, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm1
	vpxor	%xmm1, %xmm14, %xmm14
	#NO_APP
	vpunpcklqdq	%xmm14, %xmm23, %xmm1
	vpunpckhqdq	%xmm23, %xmm14, %xmm14
	vmovaps	%xmm29, %xmm2
	#APP
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm11
	#NO_APP
	vmovdqa64	%xmm17, %xmm2
	#APP
	vaesenclast	%xmm2, %xmm6, %xmm6
	vaesenclast	%xmm2, %xmm7, %xmm7
	vaesenclast	%xmm2, %xmm8, %xmm8
	vaesenclast	%xmm2, %xmm9, %xmm9
	vaesenclast	%xmm2, %xmm10, %xmm10
	vaesenclast	%xmm2, %xmm11, %xmm11
	#NO_APP
	vpxor	%xmm0, %xmm6, %xmm0
	vpxorq	%xmm24, %xmm7, %xmm6
	vpxorq	%xmm25, %xmm8, %xmm7
	vpxorq	%xmm26, %xmm9, %xmm8
	vpxorq	%xmm27, %xmm10, %xmm9
	vpxorq	%xmm28, %xmm11, %xmm10
	vpxor	%xmm1, %xmm12, %xmm1
	vpshufd	$78, %xmm1, %xmm11
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm14, %xmm13, %xmm11
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm6, 16(%rax)
	vmovdqu	%xmm7, 32(%rax)
	vmovdqu	%xmm8, 48(%rax)
	vmovdqu	%xmm9, 64(%rax)
	vmovdqu	%xmm10, 80(%rax)
	vpshufd	$78, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm1
	vpternlogq	$150, %xmm1, %xmm0, %xmm11
	addq	$96, %r15
	addq	$96, %rax
	addq	$-96, %r12
	vpaddd	.LCPI2_9(%rip), %xmm31, %xmm31
	cmpq	$96, %r12
	jae	.LBB2_33
.LBB2_30:
	cmpq	$16, %r12
	jae	.LBB2_34
	movq	%rax, %r13
	vmovdqa	%xmm11, %xmm3
	jmp	.LBB2_36
.LBB2_34:
	vmovdqa64	(%rbx), %xmm16
	vmovdqa64	16(%rbx), %xmm20
	vmovdqa64	32(%rbx), %xmm22
	vmovdqa64	48(%rbx), %xmm23
	vmovdqa64	64(%rbx), %xmm24
	vmovdqa64	80(%rbx), %xmm25
	vmovdqa	96(%rbx), %xmm6
	vmovdqa	112(%rbx), %xmm7
	vmovdqa	128(%rbx), %xmm8
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm10
	vmovdqa	%xmm11, %xmm3
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm12
	vmovdqa	208(%rbx), %xmm13
	vmovdqa	224(%rbx), %xmm14
	vmovdqa	.LCPI2_2(%rip), %xmm15
	vpbroadcastq	.LCPI2_4(%rip), %xmm0
	vmovdqa64	.LCPI2_3(%rip), %xmm17
	vmovdqa	64(%rsp), %xmm4
	.p2align	4, 0x90
.LBB2_35:
	vmovdqu64	(%r15), %xmm18
	vpshufb	%xmm15, %xmm18, %xmm19
	vpxorq	%xmm19, %xmm3, %xmm1
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpslldq	$8, %xmm2, %xmm19
	vpxorq	%xmm19, %xmm3, %xmm3
	vpshufd	$78, %xmm3, %xmm19
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxorq	%xmm19, %xmm3, %xmm3
	vpshufd	$78, %xmm3, %xmm19
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	%xmm1, %xmm3, %xmm3
	vpshufb	%xmm15, %xmm31, %xmm1
	vpxorq	%xmm1, %xmm16, %xmm1
	vmovdqa64	%xmm20, %xmm5
	vaesenc	%xmm5, %xmm1, %xmm1
	vmovdqa64	%xmm22, %xmm5
	vaesenc	%xmm5, %xmm1, %xmm1
	vmovdqa64	%xmm23, %xmm5
	vaesenc	%xmm5, %xmm1, %xmm1
	vmovdqa64	%xmm24, %xmm5
	vaesenc	%xmm5, %xmm1, %xmm1
	vmovdqa64	%xmm25, %xmm5
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm14, %xmm1, %xmm1
	vpxorq	%xmm18, %xmm1, %xmm1
	addq	$16, %r15
	leaq	16(%rax), %r13
	addq	$-16, %r12
	vpsrldq	$8, %xmm2, %xmm2
	vpternlogq	$150, %xmm2, %xmm19, %xmm3
	vpaddd	%xmm17, %xmm31, %xmm31
	vmovdqu	%xmm1, (%rax)
	movq	%r13, %rax
	cmpq	$15, %r12
	ja	.LBB2_35
.LBB2_36:
	vmovdqa	%xmm3, 48(%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB2_38
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %rax
	movq	%r15, %rsi
	movq	%r12, %rdx
	vmovdqa64	%xmm31, 16(%rsp)
	movq	%rax, %r15
	callq	*%rax
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
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
	vaesenc	192(%rbx), %xmm0, %xmm0
	vaesenc	208(%rbx), %xmm0, %xmm0
	vaesenclast	224(%rbx), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	vmovdqa	16(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	344(%rsp), %rsi
.LBB2_38:
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	%xmm0, 256(%rsp)
	vmovdqa	%xmm2, (%rsp)
	movq	%rsp, %rdi
	leaq	256(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB2_39
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpxor	48(%rsp), %xmm0, %xmm0
	vmovdqa	64(%rsp), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_4(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm11
	vpternlogq	$150, %xmm2, %xmm1, %xmm11
	vmovdqa64	80(%rsp), %xmm21
	jmp	.LBB2_43
.LBB2_39:
	vmovdqa64	80(%rsp), %xmm21
	vmovdqa	48(%rsp), %xmm11
	vmovdqa	64(%rsp), %xmm5
.LBB2_43:
	shlq	$3, %rbp
	vmovdqa	16(%rsp), %xmm6
.LBB2_44:
	shlq	$3, %r14
	vmovq	%rbp, %xmm0
	vmovq	%r14, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	(%rbx), %xmm21, %xmm3
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
	vaesenc	192(%rbx), %xmm3, %xmm3
	vaesenc	208(%rbx), %xmm3, %xmm3
	vaesenclast	224(%rbx), %xmm3, %xmm3
	vpshufb	.LCPI2_10(%rip), %xmm1, %xmm1
	vpshufb	.LCPI2_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_11(%rip), %xmm2, %xmm2
	vpternlogq	$150, %xmm0, %xmm1, %xmm2
	vpternlogq	$150, %xmm3, %xmm6, %xmm2
	xorl	%eax, %eax
	vptest	%xmm2, %xmm2
	sete	%al
.LBB2_45:
	addq	$280, %rsp
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
	.size	haberdashery_aes256gcm_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcm_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_skylakex_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_skylakex_is_supported,@function
haberdashery_aes256gcm_skylakex_is_supported:
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
	andl	$-779221719, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcm_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcm_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

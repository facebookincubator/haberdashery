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
.LCPI0_1:
	.quad	4294967297
	.quad	4294967297
.LCPI0_2:
	.quad	8589934594
	.quad	8589934594
.LCPI0_3:
	.quad	17179869188
	.quad	17179869188
.LCPI0_4:
	.quad	34359738376
	.quad	34359738376
.LCPI0_5:
	.quad	68719476752
	.quad	68719476752
.LCPI0_6:
	.quad	137438953504
	.quad	137438953504
.LCPI0_7:
	.quad	274877907008
	.quad	274877907008
.LCPI0_8:
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
.LCPI0_9:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_10:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_11:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_haswell_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_init
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_init,@function
haberdashery_aes256gcm_haswell_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	pushq	%rax
	.cfi_def_cfa_offset 16
	vmovdqu	(%rsi), %xmm11
	vmovdqu	16(%rsi), %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpbroadcastd	.LCPI0_10(%rip), %xmm15
	vpshufb	%xmm15, %xmm12, %xmm3
	vaesenclast	.LCPI0_1(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm3, %xmm4
	vmovdqa	%xmm4, -112(%rsp)
	vpslldq	$4, %xmm12, %xmm1
	vpslldq	$8, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm12, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm2
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpshufb	%xmm15, %xmm5, %xmm3
	vaesenclast	.LCPI0_2(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm14
	vmovdqa	%xmm5, -128(%rsp)
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm14, %xmm3
	vaesenclast	%xmm6, %xmm3, %xmm3
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	vpslldq	$4, %xmm14, %xmm1
	vpslldq	$8, %xmm14, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpslldq	$12, %xmm14, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufb	%xmm15, %xmm3, %xmm4
	vaesenclast	.LCPI0_3(%rip), %xmm4, %xmm4
	vpxor	%xmm1, %xmm14, %xmm1
	vmovdqa	%xmm14, -16(%rsp)
	vpxor	%xmm1, %xmm4, %xmm2
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpshufd	$255, %xmm2, %xmm5
	vaesenclast	%xmm6, %xmm5, %xmm5
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	%xmm3, %xmm4
	vmovdqa	%xmm3, -32(%rsp)
	vpxor	%xmm1, %xmm5, %xmm3
	vpslldq	$4, %xmm2, %xmm1
	vpslldq	$8, %xmm2, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpslldq	$12, %xmm2, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpshufb	%xmm15, %xmm3, %xmm6
	vaesenclast	.LCPI0_4(%rip), %xmm6, %xmm6
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa	%xmm2, -48(%rsp)
	vpxor	%xmm1, %xmm6, %xmm6
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm7
	vpxor	%xmm7, %xmm1, %xmm1
	vpshufd	$255, %xmm6, %xmm7
	vpxor	%xmm5, %xmm5, %xmm5
	vaesenclast	%xmm5, %xmm7, %xmm7
	vpxor	%xmm3, %xmm1, %xmm1
	vmovdqa	%xmm3, -64(%rsp)
	vpxor	%xmm1, %xmm7, %xmm7
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpslldq	$12, %xmm6, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpshufb	%xmm15, %xmm7, %xmm8
	vaesenclast	.LCPI0_5(%rip), %xmm8, %xmm8
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm8, %xmm8
	vpslldq	$4, %xmm7, %xmm1
	vpslldq	$8, %xmm7, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpslldq	$12, %xmm7, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm5, %xmm9, %xmm9
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm9, %xmm9
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm13
	vpxor	%xmm1, %xmm13, %xmm1
	vpshufb	%xmm15, %xmm9, %xmm13
	vaesenclast	.LCPI0_6(%rip), %xmm13, %xmm13
	vpslldq	$12, %xmm8, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm13, %xmm13
	vpslldq	$4, %xmm9, %xmm1
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpslldq	$12, %xmm9, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpshufd	$255, %xmm13, %xmm10
	vaesenclast	%xmm5, %xmm10, %xmm10
	vpxor	%xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm10, %xmm0
	vpslldq	$4, %xmm13, %xmm1
	vpslldq	$8, %xmm13, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpslldq	$12, %xmm13, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vmovdqa	%xmm0, %xmm10
	vmovdqa	%xmm0, -80(%rsp)
	vpshufb	%xmm15, %xmm0, %xmm0
	vaesenclast	.LCPI0_7(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vmovdqa	%xmm1, -96(%rsp)
	vaesenc	%xmm12, %xmm11, %xmm0
	vaesenc	-112(%rsp), %xmm0, %xmm0
	vaesenc	-128(%rsp), %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm2, %xmm0, %xmm0
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenclast	%xmm1, %xmm0, %xmm0
	vpshufb	.LCPI0_8(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm10
	vpor	%xmm0, %xmm10, %xmm0
	vpblendd	$12, %xmm1, %xmm5, %xmm1
	vpsllq	$63, %xmm1, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpsllq	$62, %xmm1, %xmm10
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm0
	vpbroadcastq	.LCPI0_11(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm1
	vpshufd	$78, %xmm0, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpclmulqdq	$16, %xmm10, %xmm11, %xmm0
	vpclmulqdq	$1, %xmm10, %xmm11, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm11, %xmm1
	vpslldq	$8, %xmm0, %xmm15
	vpxor	%xmm1, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm15
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm10, %xmm11, %xmm1
	vpxor	%xmm2, %xmm15, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpshufd	$78, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm5
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm15
	vpxor	%xmm0, %xmm15, %xmm0
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm15
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm12, %xmm15, %xmm2
	vpshufd	$78, %xmm15, %xmm15
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm1
	vpxor	%xmm2, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm15
	vpxor	%xmm1, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm2, %xmm15
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm3
	vpslldq	$8, %xmm1, %xmm14
	vpxor	%xmm3, %xmm14, %xmm3
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm14
	vpshufd	$78, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpxor	%xmm2, %xmm14, %xmm2
	vpxor	%xmm2, %xmm15, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vmovups	(%rsi), %ymm3
	vmovups	%ymm3, (%rdi)
	vmovaps	-112(%rsp), %xmm3
	vmovaps	%xmm3, 32(%rdi)
	vmovaps	-128(%rsp), %xmm3
	vmovaps	%xmm3, 48(%rdi)
	vmovaps	-16(%rsp), %xmm3
	vmovaps	%xmm3, 64(%rdi)
	vmovaps	-32(%rsp), %xmm3
	vmovaps	%xmm3, 80(%rdi)
	vmovaps	-48(%rsp), %xmm3
	vmovaps	%xmm3, 96(%rdi)
	vmovaps	-64(%rsp), %xmm3
	vmovaps	%xmm3, 112(%rdi)
	vmovdqa	%xmm6, 128(%rdi)
	vmovdqa	%xmm7, 144(%rdi)
	vmovdqa	%xmm8, 160(%rdi)
	vmovdqa	%xmm9, 176(%rdi)
	vmovdqa	%xmm13, 192(%rdi)
	vmovaps	-80(%rsp), %xmm3
	vmovaps	%xmm3, 208(%rdi)
	vmovaps	-96(%rsp), %xmm3
	vmovaps	%xmm3, 224(%rdi)
	vmovdqa	%xmm10, 240(%rdi)
	vmovdqa	%xmm11, 256(%rdi)
	vmovdqa	%xmm5, 272(%rdi)
	vmovdqa	%xmm0, 288(%rdi)
	vmovdqa	%xmm1, 304(%rdi)
	vmovdqa	%xmm2, 320(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcm_haswell_init, .Lfunc_end0-haberdashery_aes256gcm_haswell_init
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
	.section	.text.haberdashery_aes256gcm_haswell_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_encrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_encrypt,@function
haberdashery_aes256gcm_haswell_encrypt:
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
	movq	480(%rsp), %r13
	xorl	%ebp, %ebp
	cmpq	496(%rsp), %r13
	jne	.LBB1_46
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rax
	cmpq	%rax, %r8
	ja	.LBB1_46
	cmpq	$16, 512(%rsp)
	jne	.LBB1_46
	cmpq	$12, %rdx
	jne	.LBB1_46
	movabsq	$68719476719, %rax
	cmpq	%rax, %r13
	ja	.LBB1_46
	movq	%r9, %r15
	movq	%rdi, %rbx
	vpbroadcastd	.LCPI1_12(%rip), %xmm0
	vpinsrd	$0, (%rsi), %xmm0, %xmm0
	vmovq	4(%rsi), %xmm1
	vpshufd	$80, %xmm1, %xmm1
	vpblendd	$6, %xmm1, %xmm0, %xmm8
	testq	%r14, %r14
	vmovdqa	%xmm8, 96(%rsp)
	je	.LBB1_17
	vmovdqa	240(%rbx), %xmm14
	vmovdqa	256(%rbx), %xmm7
	vmovdqa	272(%rbx), %xmm12
	vmovdqa	288(%rbx), %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vmovdqa	304(%rbx), %xmm10
	vmovdqa	320(%rbx), %xmm13
	vpxor	%xmm11, %xmm11, %xmm11
	cmpq	$96, %r14
	vmovdqa	%xmm12, 16(%rsp)
	vmovdqa	%xmm7, 64(%rsp)
	movq	%r14, %rax
	jb	.LBB1_10
	vmovdqa	144(%rsp), %xmm12
	vmovdqa	.LCPI1_1(%rip), %xmm1
	.p2align	4, 0x90
.LBB1_8:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqu	80(%rcx), %xmm5
	vpshufb	%xmm1, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm6
	vmovdqu	64(%rcx), %xmm7
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm8
	vpshufb	%xmm1, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm9
	vpxor	%xmm2, %xmm11, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm5
	vpshufb	%xmm1, %xmm7, %xmm7
	vmovdqa	%xmm14, %xmm0
	vmovdqa	%xmm13, %xmm14
	vmovdqa	%xmm10, %xmm13
	vmovdqa	64(%rsp), %xmm15
	vpclmulqdq	$0, %xmm7, %xmm15, %xmm10
	vpshufb	%xmm1, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm7, %xmm15, %xmm11
	vpxor	%xmm8, %xmm9, %xmm8
	vpclmulqdq	$16, %xmm7, %xmm15, %xmm9
	vpshufb	%xmm1, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm7, %xmm15, %xmm7
	vpxor	%xmm6, %xmm10, %xmm6
	vmovdqa	16(%rsp), %xmm15
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm10
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm11
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm9
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm7
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm11
	vpxor	%xmm7, %xmm10, %xmm7
	vmovdqa	%xmm13, %xmm10
	vmovdqa	%xmm14, %xmm13
	vmovdqa	%xmm0, %xmm14
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm11, %xmm9, %xmm7
	vmovdqu	16(%rcx), %xmm9
	vpshufb	%xmm1, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm4
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm9, %xmm10, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm10, %xmm5
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$16, %xmm9, %xmm10, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm13, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm13, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm10, %xmm6
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm13, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm13, %xmm2
	vpxor	%xmm2, %xmm6, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm5, %xmm4
	vpbroadcastq	.LCPI1_13(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm5
	vpxor	%xmm4, %xmm2, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm11
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$96, %rax
	jae	.LBB1_8
	vmovdqa	16(%rsp), %xmm12
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	96(%rsp), %xmm8
.LBB1_10:
	cmpq	$16, %rax
	jb	.LBB1_22
	leaq	-16(%rax), %rdx
	testb	$16, %dl
	jne	.LBB1_12
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm11
	movq	%rdx, %rax
	cmpq	$16, %rdx
	jb	.LBB1_13
.LBB1_20:
	vmovdqa	.LCPI1_1(%rip), %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm1
	.p2align	4, 0x90
.LBB1_21:
	vmovdqu	(%rcx), %xmm2
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm11, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	vmovdqu	16(%rcx), %xmm5
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm5, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm3
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	addq	$-32, %rax
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
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
	vpxor	%xmm2, %xmm4, %xmm11
	cmpq	$15, %rax
	ja	.LBB1_21
.LBB1_22:
	movq	%rax, %rdx
	testq	%rdx, %rdx
	jne	.LBB1_14
.LBB1_23:
	testq	%r13, %r13
	je	.LBB1_45
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	jb	.LBB1_46
	jmp	.LBB1_25
.LBB1_17:
	vmovdqa	240(%rbx), %xmm14
	testq	%r13, %r13
	je	.LBB1_31
	vmovdqa	256(%rbx), %xmm7
	vmovdqa	272(%rbx), %xmm12
	vmovdqa	288(%rbx), %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	vmovdqa	304(%rbx), %xmm10
	vmovdqa	320(%rbx), %xmm13
	vpxor	%xmm11, %xmm11, %xmm11
	jmp	.LBB1_25
.LBB1_12:
	cmpq	$16, %rdx
	jae	.LBB1_20
.LBB1_13:
	testq	%rdx, %rdx
	je	.LBB1_23
.LBB1_14:
	vmovdqa	%xmm11, (%rsp)
	vmovdqa	%xmm10, 112(%rsp)
	vmovdqa	%xmm13, 128(%rsp)
	vmovdqa	%xmm14, 48(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	32(%rsp), %xmm0
	testq	%r13, %r13
	je	.LBB1_40
	movabsq	$-68719476720, %rax
	leaq	(%rax,%r13), %rcx
	orq	$1, %rax
	cmpq	%rax, %rcx
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	48(%rsp), %xmm14
	vmovdqa	128(%rsp), %xmm13
	vmovdqa	112(%rsp), %xmm10
	vmovdqa	16(%rsp), %xmm12
	vmovdqa	64(%rsp), %xmm7
	vmovdqa	(%rsp), %xmm1
	jb	.LBB1_46
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm11
.LBB1_25:
	vpshufb	.LCPI1_1(%rip), %xmm8, %xmm0
	movq	488(%rsp), %rax
	vpaddd	.LCPI1_2(%rip), %xmm0, %xmm1
	cmpq	$96, %r13
	jae	.LBB1_29
	vmovdqa	%xmm1, 80(%rsp)
	movq	%r13, %r12
	movq	%r13, %rbp
	cmpq	$16, %r12
	jb	.LBB1_35
.LBB1_27:
	vmovaps	(%rbx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	32(%rbx), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	48(%rbx), %xmm0
	vmovaps	%xmm0, 160(%rsp)
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	80(%rbx), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovaps	96(%rbx), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovdqa	112(%rbx), %xmm7
	vmovdqa	128(%rbx), %xmm8
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm10
	vmovdqa	%xmm11, %xmm3
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm12
	vmovdqa	208(%rbx), %xmm13
	vmovdqa	224(%rbx), %xmm5
	vmovdqa	.LCPI1_1(%rip), %xmm15
	vpbroadcastq	.LCPI1_13(%rip), %xmm0
	vmovdqa	80(%rsp), %xmm6
	.p2align	4, 0x90
.LBB1_28:
	vpshufb	%xmm15, %xmm6, %xmm1
	vpxor	16(%rsp), %xmm1, %xmm1
	vaesenc	64(%rsp), %xmm1, %xmm1
	vaesenc	(%rsp), %xmm1, %xmm1
	vaesenc	160(%rsp), %xmm1, %xmm1
	vaesenc	144(%rsp), %xmm1, %xmm1
	vaesenc	128(%rsp), %xmm1, %xmm1
	vaesenc	112(%rsp), %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm1, %xmm1
	vpxor	(%r15), %xmm1, %xmm1
	vpshufb	%xmm15, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm4
	vmovdqu	%xmm1, (%rax)
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm1
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	leaq	16(%r15), %rsi
	leaq	16(%rax), %r13
	addq	$-16, %r12
	vpaddd	.LCPI1_2(%rip), %xmm6, %xmm6
	movq	%rsi, %r15
	movq	%r13, %rax
	cmpq	$15, %r12
	ja	.LBB1_28
	jmp	.LBB1_36
.LBB1_29:
	vmovdqa	%xmm11, (%rsp)
	vmovdqa	%xmm7, 64(%rsp)
	vmovdqa	%xmm10, 112(%rsp)
	vmovdqa	%xmm13, %xmm11
	vmovdqa	.LCPI1_1(%rip), %xmm7
	vpshufb	%xmm7, %xmm1, %xmm1
	vpaddd	.LCPI1_4(%rip), %xmm0, %xmm2
	vpshufb	%xmm7, %xmm2, %xmm2
	vpaddd	.LCPI1_5(%rip), %xmm0, %xmm3
	vpshufb	%xmm7, %xmm3, %xmm3
	vpaddd	.LCPI1_6(%rip), %xmm0, %xmm4
	vpaddd	.LCPI1_7(%rip), %xmm0, %xmm5
	vpshufb	%xmm7, %xmm4, %xmm4
	vpshufb	%xmm7, %xmm5, %xmm5
	vpaddd	.LCPI1_8(%rip), %xmm0, %xmm6
	vpshufb	%xmm7, %xmm6, %xmm6
	vpaddd	.LCPI1_9(%rip), %xmm0, %xmm9
	vmovdqa	(%rbx), %xmm15
	vmovdqa	16(%rbx), %xmm7
	vmovdqa	32(%rbx), %xmm10
	vmovdqa	48(%rbx), %xmm13
	vpxor	%xmm1, %xmm15, %xmm0
	vpxor	%xmm2, %xmm15, %xmm1
	vpxor	%xmm3, %xmm15, %xmm2
	vpxor	%xmm4, %xmm15, %xmm3
	vpxor	%xmm5, %xmm15, %xmm4
	vpxor	%xmm6, %xmm15, %xmm5
	vmovdqa	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vmovdqa	%xmm10, 80(%rsp)
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vmovdqa	%xmm13, 384(%rsp)
	vaesenc	%xmm13, %xmm5, %xmm5
	vmovdqa	64(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 368(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	80(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 352(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	96(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 336(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	112(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 320(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	128(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 304(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	144(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 288(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	160(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 272(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	176(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 256(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	192(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 240(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	208(%rbx), %xmm7
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vmovdqa	%xmm7, 224(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm5
	vmovdqa	224(%rbx), %xmm7
	vaesenclast	%xmm7, %xmm0, %xmm0
	vaesenclast	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm4, %xmm4
	vaesenclast	%xmm7, %xmm5, %xmm5
	vmovdqa	%xmm5, 160(%rsp)
	vmovdqa	%xmm7, %xmm5
	vpxor	(%r15), %xmm0, %xmm0
	vpxor	16(%r15), %xmm1, %xmm13
	vpxor	32(%r15), %xmm2, %xmm10
	vpxor	48(%r15), %xmm3, %xmm7
	vpxor	64(%r15), %xmm4, %xmm3
	vmovdqa	160(%rsp), %xmm1
	vpxor	80(%r15), %xmm1, %xmm2
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm13, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm7, 48(%rax)
	vmovdqu	%xmm3, 64(%rax)
	vmovdqu	%xmm2, 80(%rax)
	addq	$96, %r15
	addq	$96, %rax
	leaq	-96(%r13), %r12
	cmpq	$96, %r12
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	%xmm11, 128(%rsp)
	vmovdqa	%xmm12, 16(%rsp)
	jae	.LBB1_32
	vmovdqa	(%rsp), %xmm11
	vmovdqa	%xmm9, %xmm14
	vmovdqa	.LCPI1_1(%rip), %xmm1
	jmp	.LBB1_34
.LBB1_31:
	vpxor	%xmm11, %xmm11, %xmm11
	jmp	.LBB1_45
.LBB1_32:
	vmovdqa	(%rsp), %xmm11
	vmovdqa	%xmm9, %xmm14
	vmovdqa	%xmm15, 176(%rsp)
	vmovdqa	%xmm6, 208(%rsp)
	vmovdqa	%xmm5, 192(%rsp)
	.p2align	4, 0x90
.LBB1_33:
	vmovdqa	%xmm3, 160(%rsp)
	vmovdqa	%xmm2, (%rsp)
	vpshufb	.LCPI1_1(%rip), %xmm14, %xmm1
	vpaddd	.LCPI1_2(%rip), %xmm14, %xmm3
	vpshufb	.LCPI1_1(%rip), %xmm3, %xmm3
	vpaddd	.LCPI1_4(%rip), %xmm14, %xmm4
	vpshufb	.LCPI1_1(%rip), %xmm4, %xmm4
	vpaddd	.LCPI1_5(%rip), %xmm14, %xmm6
	vpshufb	.LCPI1_1(%rip), %xmm6, %xmm6
	vpaddd	.LCPI1_6(%rip), %xmm14, %xmm8
	vpshufb	.LCPI1_1(%rip), %xmm8, %xmm8
	vpaddd	.LCPI1_7(%rip), %xmm14, %xmm9
	vpshufb	.LCPI1_1(%rip), %xmm9, %xmm9
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm11, %xmm11
	vpshufb	.LCPI1_1(%rip), %xmm13, %xmm2
	vmovdqa	176(%rsp), %xmm5
	vpxor	%xmm1, %xmm5, %xmm12
	vpxor	%xmm3, %xmm5, %xmm3
	vpxor	%xmm4, %xmm5, %xmm4
	vmovdqa	128(%rsp), %xmm13
	vpclmulqdq	$1, %xmm11, %xmm13, %xmm0
	vpxor	%xmm6, %xmm5, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm13, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm11, %xmm13, %xmm1
	vpxor	%xmm5, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm11, %xmm13, %xmm13
	vpxor	%xmm5, %xmm9, %xmm9
	vmovaps	112(%rsp), %xmm5
	vmovdqa	%xmm7, %xmm15
	vmovaps	208(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm8
	vaesenc	%xmm7, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm11
	vpxor	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	#NO_APP
	vpshufb	.LCPI1_1(%rip), %xmm10, %xmm2
	vmovdqa	80(%rsp), %xmm11
	vaesenc	%xmm11, %xmm12, %xmm10
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	vmovdqa	384(%rsp), %xmm11
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	vmovaps	368(%rsp), %xmm12
	vmovaps	144(%rsp), %xmm5
	#APP
	vaesenc	%xmm12, %xmm10, %xmm10
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm11
	vpxor	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	#NO_APP
	vpshufb	.LCPI1_1(%rip), %xmm15, %xmm2
	vmovdqa	352(%rsp), %xmm11
	vaesenc	%xmm11, %xmm10, %xmm7
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	vmovaps	336(%rsp), %xmm11
	vmovaps	16(%rsp), %xmm5
	#APP
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm8, %xmm8
	vaesenc	%xmm11, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$0, %xmm2, %xmm5, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm5, %xmm10
	vpxor	%xmm10, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm5, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	#NO_APP
	vmovdqa	160(%rsp), %xmm2
	vpshufb	.LCPI1_1(%rip), %xmm2, %xmm2
	vmovdqa	320(%rsp), %xmm10
	vaesenc	%xmm10, %xmm7, %xmm5
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm8, %xmm7
	vaesenc	%xmm10, %xmm9, %xmm8
	vmovdqa	304(%rsp), %xmm9
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm7, %xmm7
	vaesenc	%xmm9, %xmm8, %xmm8
	vmovaps	288(%rsp), %xmm10
	vmovaps	64(%rsp), %xmm11
	#APP
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm7
	vaesenc	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm11, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm2, %xmm11, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm11, %xmm9
	vpxor	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm2, %xmm11, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vmovdqa	(%rsp), %xmm2
	vpshufb	.LCPI1_1(%rip), %xmm2, %xmm9
	vmovdqa	272(%rsp), %xmm10
	vaesenc	%xmm10, %xmm5, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm7, %xmm11
	vaesenc	%xmm10, %xmm8, %xmm8
	vmovdqa	256(%rsp), %xmm12
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm5
	vaesenc	%xmm12, %xmm4, %xmm7
	vaesenc	%xmm12, %xmm6, %xmm10
	vaesenc	%xmm12, %xmm11, %xmm3
	vaesenc	%xmm12, %xmm8, %xmm4
	vmovdqa	48(%rsp), %xmm8
	vmovaps	240(%rsp), %xmm11
	#APP
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm7, %xmm7
	vaesenc	%xmm11, %xmm10, %xmm10
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm8, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm8, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm9, %xmm8, %xmm6
	vpxor	%xmm6, %xmm13, %xmm13
	vpclmulqdq	$1, %xmm9, %xmm8, %xmm6
	vpxor	%xmm6, %xmm0, %xmm0
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpunpcklqdq	%xmm0, %xmm8, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpunpckhqdq	%xmm8, %xmm0, %xmm0
	vpxor	%xmm0, %xmm13, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm11
	vpaddd	.LCPI1_8(%rip), %xmm14, %xmm14
	vmovdqa	224(%rsp), %xmm6
	vaesenc	%xmm6, %xmm2, %xmm0
	vaesenc	%xmm6, %xmm5, %xmm1
	vaesenc	%xmm6, %xmm7, %xmm2
	vaesenc	%xmm6, %xmm10, %xmm5
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vmovdqa	192(%rsp), %xmm6
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpxor	(%r15), %xmm0, %xmm0
	vpxor	16(%r15), %xmm1, %xmm13
	vmovdqa	.LCPI1_1(%rip), %xmm1
	vpxor	32(%r15), %xmm2, %xmm10
	vpxor	48(%r15), %xmm5, %xmm7
	vpxor	64(%r15), %xmm3, %xmm3
	vpxor	80(%r15), %xmm4, %xmm2
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm13, 16(%rax)
	vmovdqu	%xmm10, 32(%rax)
	vmovdqu	%xmm7, 48(%rax)
	vmovdqu	%xmm3, 64(%rax)
	vmovdqu	%xmm2, 80(%rax)
	addq	$96, %r15
	addq	$96, %rax
	addq	$-96, %r12
	cmpq	$95, %r12
	ja	.LBB1_33
.LBB1_34:
	vmovdqa	%xmm14, 80(%rsp)
	vmovdqa	%xmm1, %xmm14
	vpshufb	%xmm1, %xmm2, %xmm1
	vmovdqa	48(%rsp), %xmm12
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm2
	vpshufb	%xmm14, %xmm3, %xmm3
	vmovdqa	64(%rsp), %xmm9
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm4
	vpshufb	%xmm14, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm5
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm6
	vpshufb	%xmm14, %xmm13, %xmm8
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vpshufb	%xmm14, %xmm10, %xmm9
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm10
	vpshufb	%xmm14, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm11
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
	vpxor	%xmm2, %xmm4, %xmm2
	vmovdqa	16(%rsp), %xmm11
	vpclmulqdq	$0, %xmm7, %xmm11, %xmm4
	vpxor	%xmm6, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm7, %xmm11, %xmm6
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm11, %xmm10
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm11, %xmm3
	vpxor	%xmm6, %xmm10, %xmm6
	vmovdqa	144(%rsp), %xmm10
	vpclmulqdq	$0, %xmm9, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$1, %xmm9, %xmm10, %xmm7
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm10, %xmm4
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$17, %xmm9, %xmm10, %xmm7
	vpxor	%xmm6, %xmm5, %xmm5
	vmovdqa	112(%rsp), %xmm9
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm6
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm7
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm3
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqa	128(%rsp), %xmm5
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm11
	vmovdqa	%xmm12, %xmm14
	movq	%r13, %rbp
	cmpq	$16, %r12
	jae	.LBB1_27
.LBB1_35:
	movq	%rax, %r13
	movq	%r15, %rsi
	vmovdqa	%xmm11, %xmm3
	vmovdqa	80(%rsp), %xmm6
.LBB1_36:
	vmovdqa	%xmm6, 80(%rsp)
	vmovdqa	%xmm3, (%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB1_41
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%r12, %rdx
	callq	*%r15
	vmovdqa	80(%rsp), %xmm0
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
	vaesenc	192(%rbx), %xmm0, %xmm0
	vaesenc	208(%rbx), %xmm0, %xmm0
	vaesenclast	224(%rbx), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	movq	%rbp, %r13
	vmovdqa	240(%rbx), %xmm14
	testq	%rbp, %rbp
	je	.LBB1_42
.LBB1_38:
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	16(%rsp), %xmm0
	vmovdqa	%xmm0, 400(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	400(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB1_43
	vmovdqa	32(%rsp), %xmm0
.LBB1_40:
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm2
	vmovdqa	48(%rsp), %xmm14
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vmovdqa	96(%rsp), %xmm8
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm11
	jmp	.LBB1_45
.LBB1_41:
	vmovdqa	%xmm0, 16(%rsp)
	movq	%rbp, %r13
	vmovdqa	240(%rbx), %xmm14
	testq	%rbp, %rbp
	jne	.LBB1_38
.LBB1_42:
	vmovdqa	96(%rsp), %xmm8
	jmp	.LBB1_44
.LBB1_43:
	vmovdqa	96(%rsp), %xmm8
	vmovdqa	48(%rsp), %xmm14
.LBB1_44:
	vmovdqa	(%rsp), %xmm11
.LBB1_45:
	vmovq	%r14, %xmm0
	vmovq	%r13, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm14, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm14, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm14, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm14, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	movq	504(%rsp), %rax
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	(%rbx), %xmm8, %xmm3
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
	vpshufb	.LCPI1_1(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_10(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_11(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqu	%xmm0, (%rax)
	movl	$1, %ebp
.LBB1_46:
	movl	%ebp, %eax
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
.Lfunc_end1:
	.size	haberdashery_aes256gcm_haswell_encrypt, .Lfunc_end1-haberdashery_aes256gcm_haswell_encrypt
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
	.section	.text.haberdashery_aes256gcm_haswell_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_decrypt
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_decrypt,@function
haberdashery_aes256gcm_haswell_decrypt:
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
	subq	$504, %rsp
	.cfi_def_cfa_offset 560
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	560(%rsp), %rbp
	xorl	%eax, %eax
	cmpq	592(%rsp), %rbp
	jne	.LBB2_48
	cmpq	$12, %rdx
	jne	.LBB2_48
	movabsq	$68719476719, %rdx
	cmpq	%rdx, %rbp
	ja	.LBB2_48
	movq	%r8, %r14
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %r8
	ja	.LBB2_48
	cmpq	$16, 576(%rsp)
	jne	.LBB2_48
	movq	%r9, %r15
	movq	%rdi, %rbx
	vmovq	4(%rsi), %xmm0
	vpbroadcastd	.LCPI2_11(%rip), %xmm1
	vpinsrd	$0, (%rsi), %xmm1, %xmm8
	vpshufd	$80, %xmm0, %xmm0
	testq	%r14, %r14
	je	.LBB2_6
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	240(%rbx), %xmm0
	vpxor	%xmm7, %xmm7, %xmm7
	cmpq	$96, %r14
	vmovdqa	%xmm8, 48(%rsp)
	jae	.LBB2_18
	movq	%r14, %rax
	cmpq	$16, %rax
	jae	.LBB2_10
	jmp	.LBB2_15
.LBB2_6:
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r12d, %r12d
	vpxor	%xmm7, %xmm7, %xmm7
	vpblendd	$6, %xmm0, %xmm8, %xmm5
	movq	568(%rsp), %rsi
	testq	%rbp, %rbp
	jne	.LBB2_26
.LBB2_24:
	testq	%r12, %r12
	je	.LBB2_25
	vmovdqa	240(%rbx), %xmm6
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm7
	jmp	.LBB2_44
.LBB2_18:
	vmovaps	256(%rbx), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	272(%rbx), %xmm1
	vmovaps	%xmm1, (%rsp)
	vmovdqa	288(%rbx), %xmm3
	vmovdqa	304(%rbx), %xmm4
	vmovdqa	320(%rbx), %xmm5
	movq	%r14, %rax
	vmovdqa	%xmm0, %xmm1
	.p2align	4, 0x90
.LBB2_19:
	vmovdqu	(%rcx), %xmm8
	vmovdqu	32(%rcx), %xmm9
	vmovdqu	48(%rcx), %xmm10
	vmovdqu	80(%rcx), %xmm11
	vmovdqa	.LCPI2_1(%rip), %xmm0
	vpshufb	%xmm0, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vmovdqu	64(%rcx), %xmm13
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm14
	vpshufb	%xmm0, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm15
	vpxor	%xmm7, %xmm8, %xmm8
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm11
	vpshufb	%xmm0, %xmm13, %xmm13
	vmovdqa	16(%rsp), %xmm2
	vpclmulqdq	$0, %xmm13, %xmm2, %xmm7
	vpshufb	%xmm0, %xmm9, %xmm9
	vpclmulqdq	$1, %xmm13, %xmm2, %xmm6
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm15
	vpshufb	%xmm0, %xmm10, %xmm10
	vpclmulqdq	$17, %xmm13, %xmm2, %xmm13
	vpxor	%xmm7, %xmm12, %xmm7
	vmovdqa	(%rsp), %xmm2
	vpclmulqdq	$0, %xmm10, %xmm2, %xmm12
	vpxor	%xmm6, %xmm15, %xmm6
	vpclmulqdq	$1, %xmm10, %xmm2, %xmm15
	vpxor	%xmm6, %xmm14, %xmm6
	vpclmulqdq	$16, %xmm10, %xmm2, %xmm14
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$0, %xmm9, %xmm3, %xmm13
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$1, %xmm9, %xmm3, %xmm15
	vpxor	%xmm13, %xmm12, %xmm12
	vpxor	%xmm7, %xmm12, %xmm7
	vpxor	%xmm15, %xmm14, %xmm12
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm0, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm10, %xmm2, %xmm10
	vpxor	%xmm6, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm12
	vpclmulqdq	$17, %xmm9, %xmm3, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$0, %xmm13, %xmm4, %xmm10
	vpclmulqdq	$1, %xmm13, %xmm4, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$16, %xmm13, %xmm4, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpclmulqdq	$0, %xmm8, %xmm5, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$1, %xmm8, %xmm5, %xmm10
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$17, %xmm13, %xmm4, %xmm11
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm8, %xmm5, %xmm10
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$17, %xmm8, %xmm5, %xmm8
	vpxor	%xmm8, %xmm11, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$8, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpsrldq	$8, %xmm6, %xmm6
	vpbroadcastq	.LCPI2_12(%rip), %xmm0
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm9
	vpxor	%xmm6, %xmm8, %xmm6
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm7
	vpxor	%xmm7, %xmm6, %xmm7
	addq	$96, %rcx
	addq	$-96, %rax
	cmpq	$96, %rax
	jae	.LBB2_19
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	%xmm1, %xmm0
	cmpq	$16, %rax
	jb	.LBB2_15
.LBB2_10:
	leaq	-16(%rax), %r12
	testb	$16, %r12b
	je	.LBB2_11
	cmpq	$16, %r12
	jae	.LBB2_13
.LBB2_16:
	testq	%r12, %r12
	je	.LBB2_17
.LBB2_21:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r12, %rdx
	vmovdqa	%xmm7, 16(%rsp)
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	48(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm7
	vmovdqa	32(%rsp), %xmm1
	jmp	.LBB2_22
.LBB2_11:
	vmovdqu	(%rcx), %xmm1
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpbroadcastq	.LCPI2_12(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	addq	$16, %rcx
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm1
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm4
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm7
	movq	%r12, %rax
	cmpq	$16, %r12
	jb	.LBB2_16
.LBB2_13:
	vmovdqa	.LCPI2_1(%rip), %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm2
	.p2align	4, 0x90
.LBB2_14:
	vmovdqu	(%rcx), %xmm3
	vpshufb	%xmm1, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	vmovdqu	16(%rcx), %xmm6
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm0, %xmm3
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufb	%xmm1, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm0, %xmm4
	addq	$32, %rcx
	vpclmulqdq	$1, %xmm3, %xmm0, %xmm5
	addq	$-32, %rax
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
	ja	.LBB2_14
.LBB2_15:
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB2_21
.LBB2_17:
	vpxor	%xmm1, %xmm1, %xmm1
	xorl	%r12d, %r12d
.LBB2_22:
	vmovdqa	64(%rsp), %xmm0
	vpblendd	$6, %xmm0, %xmm8, %xmm5
	movq	568(%rsp), %rsi
	testq	%rbp, %rbp
	je	.LBB2_24
.LBB2_26:
	movabsq	$-68719476720, %rcx
	leaq	(%rcx,%rbp), %rdx
	orq	$1, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB2_48
	vpshufb	.LCPI2_1(%rip), %xmm5, %xmm0
	testq	%r12, %r12
	je	.LBB2_28
	vmovdqa	240(%rbx), %xmm12
	vpshufb	.LCPI2_1(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm12, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm12, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm12, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm12, %xmm1
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
	vpxor	%xmm1, %xmm3, %xmm7
	vpxor	%xmm1, %xmm1, %xmm1
	jmp	.LBB2_30
.LBB2_25:
	vmovdqa	240(%rbx), %xmm6
.LBB2_44:
	vmovdqu	(%rsi), %xmm8
	xorl	%ebp, %ebp
	jmp	.LBB2_47
.LBB2_28:
	vmovdqa	240(%rbx), %xmm12
.LBB2_30:
	movq	584(%rsp), %rax
	vpaddd	.LCPI2_2(%rip), %xmm0, %xmm4
	cmpq	$96, %rbp
	vmovdqa	%xmm12, 112(%rsp)
	vmovdqa	%xmm5, 160(%rsp)
	vmovdqa	%xmm1, 176(%rsp)
	jae	.LBB2_34
	movq	%rbp, %r12
	cmpq	$16, %r12
	jb	.LBB2_33
.LBB2_37:
	vmovaps	(%rbx), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovaps	32(%rbx), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	48(%rbx), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	80(%rbx), %xmm0
	vmovaps	%xmm0, 128(%rsp)
	vmovaps	96(%rbx), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovdqa	%xmm7, %xmm3
	vmovaps	112(%rbx), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovdqa	128(%rbx), %xmm8
	vmovdqa	144(%rbx), %xmm9
	vmovdqa	160(%rbx), %xmm10
	vmovdqa	176(%rbx), %xmm11
	vmovdqa	192(%rbx), %xmm6
	vmovdqa	208(%rbx), %xmm13
	vmovdqa	224(%rbx), %xmm14
	vmovdqa	.LCPI2_1(%rip), %xmm15
	vpbroadcastq	.LCPI2_12(%rip), %xmm0
	.p2align	4, 0x90
.LBB2_38:
	vmovdqu	(%r15), %xmm1
	vpshufb	%xmm15, %xmm1, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm3
	vmovdqa	%xmm4, %xmm7
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vmovdqa	%xmm7, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	vpshufb	%xmm15, %xmm7, %xmm2
	vpxor	16(%rsp), %xmm2, %xmm2
	vaesenc	(%rsp), %xmm2, %xmm2
	vaesenc	48(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	144(%rsp), %xmm2, %xmm2
	vaesenc	128(%rsp), %xmm2, %xmm2
	vaesenc	96(%rsp), %xmm2, %xmm2
	vaesenc	80(%rsp), %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqu	%xmm1, (%rax)
	addq	$16, %r15
	leaq	16(%rax), %r13
	addq	$-16, %r12
	vpaddd	.LCPI2_2(%rip), %xmm7, %xmm4
	movq	%r13, %rax
	cmpq	$15, %r12
	ja	.LBB2_38
	jmp	.LBB2_39
.LBB2_34:
	vmovaps	256(%rbx), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	vmovaps	272(%rbx), %xmm0
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	288(%rbx), %xmm0
	vmovaps	%xmm0, 464(%rsp)
	vmovaps	304(%rbx), %xmm0
	vmovaps	%xmm0, 448(%rsp)
	vmovaps	320(%rbx), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	vmovaps	(%rbx), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vmovaps	16(%rbx), %xmm0
	vmovaps	%xmm0, 400(%rsp)
	vmovaps	32(%rbx), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	vmovaps	48(%rbx), %xmm0
	vmovaps	%xmm0, 368(%rsp)
	vmovaps	64(%rbx), %xmm0
	vmovaps	%xmm0, 352(%rsp)
	vmovaps	80(%rbx), %xmm0
	vmovaps	%xmm0, 336(%rsp)
	vmovaps	96(%rbx), %xmm0
	vmovaps	%xmm0, 320(%rsp)
	vmovaps	112(%rbx), %xmm0
	vmovaps	%xmm0, 304(%rsp)
	vmovaps	128(%rbx), %xmm0
	vmovaps	%xmm0, 288(%rsp)
	vmovaps	144(%rbx), %xmm0
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	160(%rbx), %xmm0
	vmovaps	%xmm0, 256(%rsp)
	movq	%rbp, %r12
	vmovaps	176(%rbx), %xmm0
	vmovaps	%xmm0, 240(%rsp)
	vmovaps	192(%rbx), %xmm0
	vmovaps	%xmm0, 224(%rsp)
	vmovaps	208(%rbx), %xmm0
	vmovaps	%xmm0, 208(%rsp)
	vmovdqa	224(%rbx), %xmm0
	vmovdqa	%xmm0, 192(%rsp)
	vmovdqa	%xmm7, %xmm13
	.p2align	4, 0x90
.LBB2_35:
	vmovdqu	(%r15), %xmm2
	vmovdqa	%xmm2, 64(%rsp)
	vmovdqu	16(%r15), %xmm11
	vmovdqa	%xmm11, 144(%rsp)
	vmovdqu	32(%r15), %xmm15
	vmovdqa	%xmm15, 128(%rsp)
	vmovups	48(%r15), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovups	64(%r15), %xmm0
	vmovaps	%xmm0, 48(%rsp)
	vmovups	80(%r15), %xmm0
	vmovaps	%xmm0, 16(%rsp)
	vmovdqa	.LCPI2_1(%rip), %xmm3
	vpshufb	%xmm3, %xmm4, %xmm1
	vmovdqa	%xmm4, %xmm6
	vpaddd	.LCPI2_2(%rip), %xmm4, %xmm4
	vpshufb	%xmm3, %xmm4, %xmm4
	vpaddd	.LCPI2_4(%rip), %xmm6, %xmm5
	vpshufb	%xmm3, %xmm5, %xmm5
	vpaddd	.LCPI2_5(%rip), %xmm6, %xmm7
	vpshufb	%xmm3, %xmm7, %xmm7
	vpaddd	.LCPI2_6(%rip), %xmm6, %xmm8
	vpshufb	%xmm3, %xmm8, %xmm8
	vpaddd	.LCPI2_7(%rip), %xmm6, %xmm9
	vpshufb	%xmm3, %xmm9, %xmm9
	vpshufb	%xmm3, %xmm2, %xmm10
	vpxor	%xmm10, %xmm13, %xmm10
	vpshufb	%xmm3, %xmm11, %xmm11
	vmovdqa	416(%rsp), %xmm2
	vpxor	%xmm1, %xmm2, %xmm14
	vpxor	%xmm4, %xmm2, %xmm12
	vpxor	%xmm5, %xmm2, %xmm13
	vpxor	%xmm7, %xmm2, %xmm7
	vpxor	%xmm2, %xmm8, %xmm8
	vmovdqa	432(%rsp), %xmm0
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm1
	vpxor	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm5
	vmovaps	448(%rsp), %xmm0
	vmovaps	400(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm10
	vpxor	%xmm5, %xmm10, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	#NO_APP
	vpshufb	%xmm3, %xmm15, %xmm10
	vmovdqa	384(%rsp), %xmm0
	vaesenc	%xmm0, %xmm14, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vmovdqa	368(%rsp), %xmm0
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vmovaps	464(%rsp), %xmm0
	vmovaps	352(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm14
	vpxor	%xmm4, %xmm14, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm14
	vpxor	%xmm5, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	#NO_APP
	vmovdqa	(%rsp), %xmm0
	vpshufb	%xmm3, %xmm0, %xmm10
	vmovdqa	336(%rsp), %xmm0
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vmovaps	80(%rsp), %xmm0
	vmovaps	320(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm14
	vpxor	%xmm4, %xmm14, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm14
	vpxor	%xmm5, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	#NO_APP
	vmovdqa	48(%rsp), %xmm0
	vpshufb	%xmm3, %xmm0, %xmm10
	vmovdqa	304(%rsp), %xmm0
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vmovdqa	288(%rsp), %xmm0
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm7, %xmm7
	vaesenc	%xmm0, %xmm8, %xmm8
	vaesenc	%xmm0, %xmm9, %xmm9
	vmovaps	96(%rsp), %xmm0
	vmovaps	272(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm12, %xmm12
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm14
	vpxor	%xmm4, %xmm14, %xmm4
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm14
	vpxor	%xmm5, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	#NO_APP
	vmovdqa	16(%rsp), %xmm0
	vpshufb	%xmm3, %xmm0, %xmm15
	vmovdqa	256(%rsp), %xmm14
	vaesenc	%xmm14, %xmm11, %xmm10
	vaesenc	%xmm14, %xmm12, %xmm12
	vaesenc	%xmm14, %xmm13, %xmm13
	vaesenc	%xmm14, %xmm7, %xmm0
	vaesenc	%xmm14, %xmm8, %xmm2
	vaesenc	%xmm14, %xmm9, %xmm9
	vmovdqa	240(%rsp), %xmm3
	vaesenc	%xmm3, %xmm10, %xmm11
	vaesenc	%xmm3, %xmm12, %xmm14
	vmovdqa	112(%rsp), %xmm12
	vaesenc	%xmm3, %xmm13, %xmm7
	vaesenc	%xmm3, %xmm0, %xmm8
	vaesenc	%xmm3, %xmm2, %xmm10
	vaesenc	%xmm3, %xmm9, %xmm9
	vmovdqa	224(%rsp), %xmm2
	#APP
	vaesenc	%xmm2, %xmm11, %xmm11
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm10, %xmm10
	vaesenc	%xmm2, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm15, %xmm12, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm15, %xmm12, %xmm0
	vpxor	%xmm0, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm12, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm15, %xmm12, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	#NO_APP
	vpxor	%xmm2, %xmm2, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpunpckhqdq	%xmm2, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm2
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm13
	vmovdqa	208(%rsp), %xmm3
	vaesenc	%xmm3, %xmm11, %xmm0
	vmovdqa	192(%rsp), %xmm11
	vaesenclast	%xmm11, %xmm0, %xmm0
	vpxor	64(%rsp), %xmm0, %xmm0
	vaesenc	%xmm3, %xmm14, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpxor	144(%rsp), %xmm1, %xmm1
	vaesenc	%xmm3, %xmm7, %xmm2
	vaesenclast	%xmm11, %xmm2, %xmm2
	vpxor	128(%rsp), %xmm2, %xmm2
	vaesenc	%xmm3, %xmm8, %xmm4
	vaesenclast	%xmm11, %xmm4, %xmm4
	vpxor	(%rsp), %xmm4, %xmm4
	vaesenc	%xmm3, %xmm10, %xmm5
	vaesenclast	%xmm11, %xmm5, %xmm5
	vpxor	48(%rsp), %xmm5, %xmm5
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm2, 32(%rax)
	vmovdqu	%xmm4, 48(%rax)
	vmovdqa	%xmm6, %xmm4
	vmovdqu	%xmm5, 64(%rax)
	vaesenc	%xmm3, %xmm9, %xmm0
	vaesenclast	%xmm11, %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 80(%rax)
	addq	$96, %r15
	addq	$96, %rax
	addq	$-96, %r12
	vpaddd	.LCPI2_8(%rip), %xmm6, %xmm4
	cmpq	$96, %r12
	jae	.LBB2_35
	vmovdqa	%xmm13, %xmm7
	cmpq	$16, %r12
	jae	.LBB2_37
.LBB2_33:
	movq	%rax, %r13
	vmovdqa	%xmm7, %xmm3
.LBB2_39:
	vmovdqa	%xmm3, 16(%rsp)
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm0, %xmm0, %xmm0
	testq	%r12, %r12
	je	.LBB2_41
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rax
	movq	%r15, %rsi
	movq	%r12, %rdx
	vmovdqa	%xmm4, (%rsp)
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
	vaesenc	192(%rbx), %xmm0, %xmm0
	vaesenc	208(%rbx), %xmm0, %xmm0
	vaesenclast	224(%rbx), %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vpxor	32(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 176(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%r15
	vmovdqa	(%rsp), %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	movq	568(%rsp), %rsi
.LBB2_41:
	vpxor	176(%rsp), %xmm0, %xmm0
	vmovdqu	(%rsi), %xmm1
	vmovdqa	%xmm1, (%rsp)
	vmovdqa	%xmm0, 480(%rsp)
	vmovdqa	%xmm2, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	480(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB2_42
	vmovdqa	32(%rsp), %xmm0
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpxor	16(%rsp), %xmm0, %xmm0
	vmovdqa	112(%rsp), %xmm6
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpbroadcastq	.LCPI2_12(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm1, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm7
	vmovdqa	160(%rsp), %xmm5
	jmp	.LBB2_46
.LBB2_42:
	vmovdqa	160(%rsp), %xmm5
	vmovdqa	112(%rsp), %xmm6
	vmovdqa	16(%rsp), %xmm7
.LBB2_46:
	shlq	$3, %rbp
	vmovdqa	(%rsp), %xmm8
.LBB2_47:
	shlq	$3, %r14
	vmovq	%rbp, %xmm0
	vmovq	%r14, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpxor	%xmm2, %xmm3, %xmm2
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
	vaesenc	192(%rbx), %xmm3, %xmm3
	vaesenc	208(%rbx), %xmm3, %xmm3
	vaesenclast	224(%rbx), %xmm3, %xmm3
	vpshufb	.LCPI2_1(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_9(%rip), %xmm2, %xmm2
	vpshufb	.LCPI2_10(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_48:
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
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcm_haswell_decrypt, .Lfunc_end2-haberdashery_aes256gcm_haswell_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_haswell_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_haswell_is_supported
	.p2align	4, 0x90
	.type	haberdashery_aes256gcm_haswell_is_supported,@function
haberdashery_aes256gcm_haswell_is_supported:
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
	andl	$297, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcm_haswell_is_supported, .Lfunc_end3-haberdashery_aes256gcm_haswell_is_supported
	.cfi_endproc

	.ident	"rustc version 1.76.0-nightly (3340d49d2 2023-12-12)"
	.section	".note.GNU-stack","",@progbits

# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.text._ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h111e5913e23e7897E,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h111e5913e23e7897E
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h111e5913e23e7897E,@function
_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h111e5913e23e7897E:
	.cfi_startproc
	movq	%rdi, %rax
	vmovups	(%rsi), %ymm0
	vmovups	32(%rsi), %ymm1
	vmovups	64(%rsi), %ymm2
	vmovups	96(%rsi), %ymm3
	vmovaps	%ymm0, (%rdi)
	vmovaps	%ymm1, 32(%rdi)
	vmovaps	%ymm2, 64(%rdi)
	vmovaps	%ymm3, 96(%rdi)
	vzeroupper
	retq
.Lfunc_end0:
	.size	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h111e5913e23e7897E, .Lfunc_end0-_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h111e5913e23e7897E
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h31ace7376751b686E,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h31ace7376751b686E
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h31ace7376751b686E,@function
_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h31ace7376751b686E:
	.cfi_startproc
	movq	%rdi, %rax
	vmovaps	(%rsi), %ymm0
	vmovaps	32(%rsi), %ymm1
	vmovaps	64(%rsi), %ymm2
	vmovaps	96(%rsi), %ymm3
	vmovups	%ymm0, (%rdi)
	vmovups	%ymm1, 32(%rdi)
	vmovups	%ymm2, 64(%rdi)
	vmovups	%ymm3, 96(%rdi)
	vzeroupper
	retq
.Lfunc_end1:
	.size	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h31ace7376751b686E, .Lfunc_end1-_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h31ace7376751b686E
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h1e6aef289a56a45bE,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h1e6aef289a56a45bE
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h1e6aef289a56a45bE,@function
_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h1e6aef289a56a45bE:
	.cfi_startproc
	movq	%rdi, %rax
	vmovaps	16(%rsi), %xmm0
	vxorps	(%rsi), %xmm0, %xmm0
	vmovaps	%xmm0, (%rdi)
	retq
.Lfunc_end2:
	.size	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h1e6aef289a56a45bE, .Lfunc_end2-_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h1e6aef289a56a45bE
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
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
.LCPI3_1:
	.quad	4294967297
	.quad	4294967297
.LCPI3_8:
	.quad	274877907008
	.quad	274877907008
.LCPI3_9:
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
.LCPI3_10:
	.zero	8
	.quad	-4467570830351532032
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_2:
	.long	0x00000002
.LCPI3_3:
	.long	0x0c0f0e0d
.LCPI3_4:
	.long	0x00000004
.LCPI3_5:
	.long	0x00000008
.LCPI3_6:
	.long	0x00000010
.LCPI3_7:
	.long	0x00000020
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_11:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_raptorlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_raptorlake_init
	.p2align	4
	.type	haberdashery_aes256gcm_raptorlake_init,@function
haberdashery_aes256gcm_raptorlake_init:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$32, %rdx
	jne	.LBB3_2
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	vmovdqu	(%rsi), %xmm6
	vmovdqu	16(%rsi), %xmm5
	vpslldq	$4, %xmm6, %xmm0
	vpslldq	$8, %xmm6, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm6, %xmm2
	vpbroadcastd	.LCPI3_3(%rip), %xmm1
	vpshufb	%xmm1, %xmm5, %xmm3
	vaesenclast	.LCPI3_1(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm9
	vmovdqa	%xmm9, 32(%rsp)
	vaesenc	%xmm5, %xmm6, %xmm2
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm0, %xmm3
	vpshufd	$255, %xmm9, %xmm4
	vpxor	%xmm0, %xmm0, %xmm0
	vaesenclast	%xmm0, %xmm4, %xmm4
	vpxor	%xmm5, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm10
	vmovdqa	%xmm10, 16(%rsp)
	vbroadcastss	.LCPI3_2(%rip), %xmm4
	vbroadcastss	.LCPI3_3(%rip), %xmm3
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vpslldq	$4, %xmm9, %xmm7
	vpslldq	$8, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$12, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpshufb	%xmm3, %xmm10, %xmm11
	vaesenclast	%xmm4, %xmm11, %xmm11
	vpxor	%xmm7, %xmm11, %xmm11
	#NO_APP
	vmovaps	%xmm11, %xmm9
	vmovaps	%xmm11, (%rsp)
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufd	$255, %xmm11, %xmm8
	vaesenclast	%xmm0, %xmm8, %xmm8
	vpxor	%xmm4, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI3_4(%rip), %xmm4
	vmovaps	%xmm8, %xmm10
	vmovaps	%xmm8, -16(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vpslldq	$4, %xmm9, %xmm7
	vpslldq	$8, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$12, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpxor	%xmm7, %xmm9, %xmm7
	vpshufb	%xmm3, %xmm10, %xmm11
	vaesenclast	%xmm4, %xmm11, %xmm11
	vpxor	%xmm7, %xmm11, %xmm11
	#NO_APP
	vmovaps	%xmm11, %xmm8
	vmovaps	%xmm11, -32(%rsp)
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufd	$255, %xmm11, %xmm9
	vaesenclast	%xmm0, %xmm9, %xmm9
	vpxor	%xmm4, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI3_5(%rip), %xmm4
	vmovaps	%xmm9, %xmm10
	vmovaps	%xmm9, -48(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vpslldq	$4, %xmm8, %xmm7
	vpslldq	$8, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpslldq	$12, %xmm8, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufb	%xmm3, %xmm10, %xmm11
	vaesenclast	%xmm4, %xmm11, %xmm11
	vpxor	%xmm7, %xmm11, %xmm11
	#NO_APP
	vmovaps	%xmm11, %xmm8
	vmovaps	%xmm11, -64(%rsp)
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufd	$255, %xmm11, %xmm9
	vaesenclast	%xmm0, %xmm9, %xmm9
	vpxor	%xmm4, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI3_6(%rip), %xmm4
	vmovaps	%xmm9, -80(%rsp)
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vpslldq	$4, %xmm8, %xmm7
	vpslldq	$8, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpslldq	$12, %xmm8, %xmm11
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufb	%xmm3, %xmm9, %xmm10
	vaesenclast	%xmm4, %xmm10, %xmm10
	vpxor	%xmm7, %xmm10, %xmm10
	#NO_APP
	vmovaps	%xmm10, -96(%rsp)
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpslldq	$12, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpxor	%xmm4, %xmm9, %xmm4
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm0, %xmm11, %xmm11
	vpxor	%xmm4, %xmm11, %xmm11
	#NO_APP
	vbroadcastss	.LCPI3_7(%rip), %xmm4
	#APP
	vaesenc	%xmm10, %xmm2, %xmm2
	vpslldq	$4, %xmm10, %xmm7
	vpslldq	$8, %xmm10, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vpslldq	$12, %xmm10, %xmm13
	vpxor	%xmm7, %xmm13, %xmm7
	vpxor	%xmm7, %xmm10, %xmm7
	vpshufb	%xmm3, %xmm11, %xmm12
	vaesenclast	%xmm4, %xmm12, %xmm12
	vpxor	%xmm7, %xmm12, %xmm12
	#NO_APP
	vpslldq	$4, %xmm11, %xmm3
	vpunpcklqdq	%xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vinsertps	$55, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufd	$255, %xmm12, %xmm4
	vaesenclast	%xmm0, %xmm4, %xmm4
	vpxor	%xmm3, %xmm11, %xmm3
	vpxor	%xmm3, %xmm4, %xmm13
	vpslldq	$4, %xmm12, %xmm3
	vpunpcklqdq	%xmm12, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vinsertps	$55, %xmm12, %xmm0, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpshufb	%xmm1, %xmm13, %xmm1
	vaesenclast	.LCPI3_8(%rip), %xmm1, %xmm1
	vpxor	%xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm1, %xmm3
	vmovdqa	%xmm3, -112(%rsp)
	vaesenc	%xmm11, %xmm2, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenclast	%xmm3, %xmm1, %xmm1
	vpshufb	.LCPI3_9(%rip), %xmm1, %xmm1
	vpsrlq	$63, %xmm1, %xmm2
	vpaddq	%xmm1, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm3
	vpor	%xmm3, %xmm1, %xmm1
	vpblendd	$12, %xmm2, %xmm0, %xmm0
	vpsllq	$63, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpsllq	$62, %xmm0, %xmm2
	vpsllq	$57, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpbroadcastq	.LCPI3_11(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm3, %xmm3, %xmm1
	vpshufd	$78, %xmm0, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm4
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm4
	vpshufd	$78, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vmovdqa	%xmm0, -128(%rsp)
	vpclmulqdq	$16, %xmm15, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm3, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm3, %xmm4
	vpslldq	$8, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm3, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpshufd	$78, %xmm4, %xmm7
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm4, %xmm4
	vpxor	%xmm4, %xmm0, %xmm4
	vpclmulqdq	$0, %xmm4, %xmm4, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm7
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$17, %xmm4, %xmm4, %xmm7
	vpshufd	$78, %xmm0, %xmm14
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$16, %xmm15, %xmm0, %xmm7
	vpclmulqdq	$1, %xmm15, %xmm0, %xmm14
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$0, %xmm15, %xmm0, %xmm14
	vpslldq	$8, %xmm7, %xmm8
	vpxor	%xmm8, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm14
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm14, %xmm8
	vpsrldq	$8, %xmm7, %xmm7
	vpclmulqdq	$17, %xmm15, %xmm0, %xmm14
	vpxor	%xmm7, %xmm14, %xmm7
	vpshufd	$78, %xmm8, %xmm14
	vpxor	%xmm7, %xmm14, %xmm7
	vpclmulqdq	$16, %xmm15, %xmm1, %xmm14
	vpclmulqdq	$1, %xmm15, %xmm1, %xmm9
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm15, %xmm1, %xmm14
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm10, %xmm14, %xmm10
	vpclmulqdq	$16, %xmm2, %xmm10, %xmm14
	vpshufd	$78, %xmm10, %xmm10
	vpxor	%xmm10, %xmm14, %xmm10
	vpsrldq	$8, %xmm9, %xmm9
	vpclmulqdq	$17, %xmm15, %xmm1, %xmm14
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm10, %xmm2
	vpshufd	$78, %xmm10, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm2, %xmm9, %xmm2
	vmovdqa	%xmm6, (%rdi)
	vmovdqa	%xmm5, 16(%rdi)
	vmovaps	32(%rsp), %xmm5
	vmovaps	%xmm5, 32(%rdi)
	vmovaps	16(%rsp), %xmm5
	vmovaps	%xmm5, 48(%rdi)
	vmovaps	(%rsp), %xmm5
	vmovaps	%xmm5, 64(%rdi)
	vmovaps	-16(%rsp), %xmm5
	vmovaps	%xmm5, 80(%rdi)
	vmovaps	-32(%rsp), %xmm5
	vmovaps	%xmm5, 96(%rdi)
	vmovaps	-48(%rsp), %xmm5
	vmovaps	%xmm5, 112(%rdi)
	vmovaps	-64(%rsp), %xmm5
	vmovaps	%xmm5, 128(%rdi)
	vmovaps	-80(%rsp), %xmm5
	vmovaps	%xmm5, 144(%rdi)
	vmovaps	-96(%rsp), %xmm5
	vmovaps	%xmm5, 160(%rdi)
	vmovaps	%xmm11, 176(%rdi)
	vmovaps	%xmm12, 192(%rdi)
	vmovdqa	%xmm13, 208(%rdi)
	vmovaps	-112(%rsp), %xmm5
	vmovaps	%xmm5, 224(%rdi)
	vmovdqa	%xmm15, 240(%rdi)
	vmovdqa	%xmm3, 256(%rdi)
	vmovdqa	%xmm4, 272(%rdi)
	vmovdqa	%xmm1, 288(%rdi)
	vmovdqa	%xmm2, 304(%rdi)
	vmovdqa	%xmm0, 320(%rdi)
	vpxor	%xmm7, %xmm8, %xmm0
	vmovdqa	%xmm0, 336(%rdi)
	vmovaps	-128(%rsp), %xmm0
	vmovaps	%xmm0, 352(%rdi)
	movl	$1, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
.LBB3_2:
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcm_raptorlake_init, .Lfunc_end3-haberdashery_aes256gcm_raptorlake_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_0:
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
.LCPI4_1:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI4_2:
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
.LCPI4_3:
	.zero	8
	.quad	-4467570830351532032
.LCPI4_4:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI4_5:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI4_6:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI4_7:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI4_8:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI4_9:
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI4_10:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI4_11:
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI4_17:
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
.LCPI4_18:
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
.LCPI4_19:
	.zero	16
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI4_12:
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
.LCPI4_13:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI4_14:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI4_15:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_16:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_raptorlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_raptorlake_encrypt
	.p2align	4
	.type	haberdashery_aes256gcm_raptorlake_encrypt,@function
haberdashery_aes256gcm_raptorlake_encrypt:
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
	subq	$744, %rsp
	.cfi_def_cfa_offset 800
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	800(%rsp), %r15
	xorl	%eax, %eax
	cmpq	816(%rsp), %r15
	jne	.LBB4_40
	cmpq	$16, 832(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	orb	%r10b, %r11b
	jne	.LBB4_40
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483647, %r10
	setae	%r10b
	cmpq	$12, %rdx
	setne	%dl
	orb	%r10b, %dl
	jne	.LBB4_40
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	vpxor	%xmm5, %xmm5, %xmm5
	testq	%r8, %r8
	je	.LBB4_4
	cmpq	$128, %r8
	jb	.LBB4_7
	vmovdqu	16(%rcx), %xmm1
	vmovdqu	32(%rcx), %xmm2
	vmovdqu	48(%rcx), %xmm3
	vmovdqu	64(%rcx), %xmm4
	vmovdqu	80(%rcx), %xmm5
	vmovdqu	96(%rcx), %xmm6
	vmovdqu	112(%rcx), %xmm12
	vmovdqa	.LCPI4_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm8
	vpshufb	%xmm0, %xmm2, %xmm9
	vpshufb	%xmm0, %xmm3, %xmm10
	vpshufb	%xmm0, %xmm4, %xmm7
	vpshufb	%xmm0, %xmm5, %xmm11
	vpshufb	%xmm0, %xmm6, %xmm5
	vpshufb	%xmm0, %xmm12, %xmm6
	vmovdqa	240(%rdi), %xmm3
	vmovdqa	256(%rdi), %xmm4
	vmovdqa	272(%rdi), %xmm1
	vmovdqa	288(%rdi), %xmm2
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm12
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm14
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm5
	vpxor	%xmm6, %xmm5, %xmm14
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm15
	vpxor	%xmm6, %xmm15, %xmm6
	vpclmulqdq	$0, %xmm7, %xmm2, %xmm15
	vpxor	%xmm5, %xmm15, %xmm15
	vmovdqa	304(%rdi), %xmm5
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm7, %xmm2, %xmm15
	vpxor	%xmm6, %xmm15, %xmm15
	vmovdqa	320(%rdi), %xmm6
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm11
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm2, %xmm7
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm7, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm15
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm7
	vpxor	%xmm7, %xmm14, %xmm14
	vmovdqa	336(%rdi), %xmm7
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm10
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm14
	vpxor	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm8, %xmm7, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm9
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm7, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vmovdqu	(%rcx), %xmm14
	vpshufb	%xmm0, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm7, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vmovdqa	352(%rdi), %xmm15
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm15, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm14, %xmm15, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm15, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm9, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm14, %xmm15, %xmm9
	vpxor	%xmm9, %xmm10, %xmm10
	subq	$-128, %rcx
	leaq	-128(%r8), %rsi
	cmpq	$128, %rsi
	jb	.LBB4_16
	vmovdqa	%xmm6, 64(%rsp)
	vmovdqa	%xmm2, 144(%rsp)
	vmovdqa	%xmm7, %xmm8
	vmovdqa	%xmm5, %xmm7
	vmovdqa	%xmm1, %xmm5
	vmovdqa	%xmm15, 32(%rsp)
	vmovdqa	.LCPI4_2(%rip), %xmm6
	.p2align	4
.LBB4_15:
	vmovdqu	(%rcx), %xmm13
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vmovdqu	96(%rcx), %xmm9
	vmovdqu	112(%rcx), %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpsrldq	$8, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpbroadcastq	.LCPI4_16(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm11
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm11
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm6, %xmm13, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm11, %xmm10
	vpshufb	%xmm6, %xmm14, %xmm11
	vpshufb	%xmm6, %xmm15, %xmm1
	vpshufb	%xmm6, %xmm9, %xmm9
	vpshufb	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm12
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm9
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vmovdqa	144(%rsp), %xmm2
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm15
	vpxor	%xmm15, %xmm9, %xmm9
	vmovdqu	32(%rcx), %xmm15
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vmovdqu	48(%rcx), %xmm14
	vpshufb	%xmm6, %xmm15, %xmm15
	vpshufb	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm14, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm7, %xmm11
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqa	64(%rsp), %xmm2
	vpclmulqdq	$0, %xmm15, %xmm2, %xmm13
	vpxor	%xmm1, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm15, %xmm2, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm6, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm14, %xmm7, %xmm14
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm15, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm8, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm14
	vmovdqa	32(%rsp), %xmm15
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm13, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$16, %xmm13, %xmm8, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm13, %xmm8, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm15, %xmm11
	vpxor	%xmm1, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm10, %xmm15, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm15, %xmm9
	vpxor	%xmm1, %xmm9, %xmm12
	vpclmulqdq	$17, %xmm10, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm10
	subq	$-128, %rcx
	addq	$-128, %rsi
	cmpq	$127, %rsi
	ja	.LBB4_15
.LBB4_16:
	vpslldq	$8, %xmm12, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpsrldq	$8, %xmm12, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI4_16(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm5
	cmpq	$16, %rsi
	jae	.LBB4_17
	jmp	.LBB4_9
.LBB4_7:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB4_9
.LBB4_17:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB4_18
	cmpq	$16, %rdx
	jae	.LBB4_20
.LBB4_10:
	testq	%rdx, %rdx
	je	.LBB4_4
.LBB4_11:
	vmovdqa	%xmm5, 32(%rsp)
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
	je	.LBB4_12
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	32(%rsp), %xmm2
	jb	.LBB4_40
	movq	%r12, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	240(%r12), %xmm1
	vpshufb	.LCPI4_2(%rip), %xmm0, %xmm0
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
	vpbroadcastq	.LCPI4_16(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	jmp	.LBB4_24
.LBB4_18:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI4_2(%rip), %xmm1, %xmm1
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
	vpbroadcastq	.LCPI4_16(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm5
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB4_10
.LBB4_20:
	vmovdqa	.LCPI4_2(%rip), %xmm1
	vpbroadcastq	.LCPI4_16(%rip), %xmm2
	.p2align	4
.LBB4_21:
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
	vpxor	%xmm3, %xmm5, %xmm5
	cmpq	$15, %rsi
	ja	.LBB4_21
.LBB4_9:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB4_11
.LBB4_4:
	testq	%r15, %r15
	je	.LBB4_39
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB4_40
.LBB4_24:
	movq	808(%rsp), %rdx
	vmovdqa	96(%rsp), %xmm0
	vpshufb	.LCPI4_0(%rip), %xmm0, %xmm0
	vpaddd	.LCPI4_1(%rip), %xmm0, %xmm1
	cmpq	$128, %r15
	jb	.LBB4_25
	vmovdqa	%xmm5, 32(%rsp)
	leaq	128(%r9), %rcx
	leaq	128(%rdx), %rax
	vmovdqa	.LCPI4_2(%rip), %xmm6
	vpshufb	%xmm6, %xmm1, %xmm7
	vpaddd	.LCPI4_4(%rip), %xmm0, %xmm2
	vpaddd	.LCPI4_5(%rip), %xmm0, %xmm3
	vpshufb	%xmm6, %xmm2, %xmm13
	vpshufb	%xmm6, %xmm3, %xmm4
	vpaddd	.LCPI4_6(%rip), %xmm0, %xmm3
	vpaddd	.LCPI4_7(%rip), %xmm0, %xmm5
	vpshufb	%xmm6, %xmm3, %xmm8
	vpshufb	%xmm6, %xmm5, %xmm9
	vpaddd	.LCPI4_8(%rip), %xmm0, %xmm3
	vpaddd	.LCPI4_9(%rip), %xmm0, %xmm5
	vpshufb	%xmm6, %xmm3, %xmm10
	vpshufb	%xmm6, %xmm5, %xmm11
	vpaddd	.LCPI4_10(%rip), %xmm0, %xmm3
	vpaddd	.LCPI4_11(%rip), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vpshufb	%xmm6, %xmm3, %xmm0
	vmovdqa	(%rdi), %xmm3
	vmovaps	16(%rdi), %xmm2
	vmovaps	32(%rdi), %xmm1
	vmovaps	48(%rdi), %xmm12
	vpxor	%xmm7, %xmm3, %xmm5
	vpxor	%xmm3, %xmm13, %xmm6
	vpxor	%xmm4, %xmm3, %xmm7
	vpxor	%xmm3, %xmm8, %xmm8
	vpxor	%xmm3, %xmm9, %xmm13
	vpxor	%xmm3, %xmm10, %xmm14
	vpxor	%xmm3, %xmm11, %xmm15
	vpxor	%xmm0, %xmm3, %xmm0
	vmovups	%ymm2, 112(%rsp)
	#APP
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovups	%ymm1, 464(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovups	%ymm12, 432(%rsp)
	#APP
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm7, %xmm7
	vaesenc	%xmm12, %xmm8, %xmm8
	vaesenc	%xmm12, %xmm13, %xmm13
	vaesenc	%xmm12, %xmm14, %xmm14
	vaesenc	%xmm12, %xmm15, %xmm15
	vaesenc	%xmm12, %xmm0, %xmm0
	#NO_APP
	vmovaps	64(%rdi), %xmm1
	vmovups	%ymm1, 400(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovaps	80(%rdi), %xmm1
	vmovups	%ymm1, 368(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovaps	96(%rdi), %xmm1
	vmovups	%ymm1, 336(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovaps	112(%rdi), %xmm1
	vmovups	%ymm1, 304(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovaps	128(%rdi), %xmm1
	vmovups	%ymm1, 272(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovaps	144(%rdi), %xmm1
	vmovups	%ymm1, 240(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovaps	160(%rdi), %xmm1
	vmovups	%ymm1, 208(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovaps	176(%rdi), %xmm1
	vmovups	%ymm1, 176(%rsp)
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovdqa	192(%rdi), %xmm1
	#APP
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm7, %xmm7
	vaesenc	%xmm1, %xmm8, %xmm8
	vaesenc	%xmm1, %xmm13, %xmm13
	vaesenc	%xmm1, %xmm14, %xmm14
	vaesenc	%xmm1, %xmm15, %xmm15
	vaesenc	%xmm1, %xmm0, %xmm0
	#NO_APP
	vmovdqa	208(%rdi), %xmm2
	#APP
	vaesenc	%xmm2, %xmm5, %xmm5
	vaesenc	%xmm2, %xmm6, %xmm6
	vaesenc	%xmm2, %xmm7, %xmm7
	vaesenc	%xmm2, %xmm8, %xmm8
	vaesenc	%xmm2, %xmm13, %xmm13
	vaesenc	%xmm2, %xmm14, %xmm14
	vaesenc	%xmm2, %xmm15, %xmm15
	vaesenc	%xmm2, %xmm0, %xmm0
	#NO_APP
	vmovdqa	224(%rdi), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm5, %xmm5
	vaesenclast	%xmm4, %xmm6, %xmm6
	vaesenclast	%xmm4, %xmm7, %xmm7
	vaesenclast	%xmm4, %xmm8, %xmm8
	vaesenclast	%xmm4, %xmm13, %xmm13
	vaesenclast	%xmm4, %xmm14, %xmm14
	vaesenclast	%xmm4, %xmm15, %xmm15
	vaesenclast	%xmm4, %xmm0, %xmm0
	#NO_APP
	vpxor	(%r9), %xmm5, %xmm12
	vpxor	16(%r9), %xmm6, %xmm11
	vpxor	32(%r9), %xmm7, %xmm10
	vpxor	48(%r9), %xmm8, %xmm9
	vpxor	64(%r9), %xmm13, %xmm7
	vpxor	80(%r9), %xmm14, %xmm5
	vpxor	96(%r9), %xmm15, %xmm8
	vpxor	112(%r9), %xmm0, %xmm15
	vmovdqu	%xmm12, (%rdx)
	vmovdqu	%xmm11, 16(%rdx)
	vmovdqu	%xmm10, 32(%rdx)
	vmovdqu	%xmm9, 48(%rdx)
	vmovdqu	%xmm7, 64(%rdx)
	vmovdqu	%xmm5, 80(%rdx)
	leaq	-128(%r15), %rbx
	vmovdqu	%xmm8, 96(%rdx)
	vmovdqu	%xmm15, 112(%rdx)
	cmpq	$128, %rbx
	jb	.LBB4_32
	vmovups	256(%rdi), %ymm0
	vinsertf128	$1, 240(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 64(%rsp)
	vmovups	288(%rdi), %ymm0
	vinsertf128	$1, 272(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 144(%rsp)
	vmovups	320(%rdi), %ymm0
	vinsertf128	$1, 304(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 560(%rsp)
	vmovaps	352(%rdi), %xmm0
	vinsertf128	$1, 336(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 528(%rsp)
	vinserti128	$1, %xmm3, %ymm3, %ymm0
	vmovdqu	%ymm0, 496(%rsp)
	vmovups	112(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 112(%rsp)
	vmovups	464(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 464(%rsp)
	vmovups	432(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 432(%rsp)
	vmovups	400(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 400(%rsp)
	vmovups	368(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 368(%rsp)
	vmovups	336(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 336(%rsp)
	vmovups	304(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 304(%rsp)
	vmovups	272(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 272(%rsp)
	vmovups	240(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 240(%rsp)
	vmovups	208(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 208(%rsp)
	vmovups	176(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovups	%ymm0, 176(%rsp)
	vinserti128	$1, %xmm1, %ymm1, %ymm0
	vmovdqu	%ymm0, 704(%rsp)
	vinserti128	$1, %xmm2, %ymm2, %ymm0
	vmovdqu	%ymm0, 672(%rsp)
	vinserti128	$1, %xmm4, %ymm4, %ymm0
	vmovdqu	%ymm0, 640(%rsp)
	vbroadcastsd	.LCPI4_16(%rip), %ymm0
	vmovups	%ymm0, 608(%rsp)
	vmovdqa	32(%rsp), %xmm0
	vmovdqa	16(%rsp), %xmm1
	.p2align	4
.LBB4_30:
	vmovdqa	%xmm1, %xmm2
	vmovdqu	%ymm2, 32(%rsp)
	vpaddd	.LCPI4_1(%rip), %xmm1, %xmm14
	vinserti128	$1, %xmm11, %ymm12, %ymm11
	vbroadcasti128	.LCPI4_2(%rip), %ymm1
	vpshufb	%ymm1, %ymm11, %ymm11
	vinserti128	$1, %xmm9, %ymm10, %ymm9
	vpshufb	%ymm1, %ymm9, %ymm9
	vinserti128	$1, %xmm5, %ymm7, %ymm7
	vpshufb	%ymm1, %ymm7, %ymm7
	vinserti128	$1, %xmm15, %ymm8, %ymm5
	vpshufb	%ymm1, %ymm5, %ymm6
	vinserti128	$1, %xmm14, %ymm2, %ymm5
	vpshufb	%ymm1, %ymm5, %ymm5
	vinserti128	$1, %xmm2, %ymm2, %ymm8
	vpaddd	.LCPI4_13(%rip), %ymm8, %ymm10
	vpshufb	%ymm1, %ymm10, %ymm10
	vpaddd	.LCPI4_14(%rip), %ymm8, %ymm12
	vpshufb	%ymm1, %ymm12, %ymm12
	vpaddd	.LCPI4_15(%rip), %ymm8, %ymm8
	vpshufb	%ymm1, %ymm8, %ymm8
	vmovdqa	%xmm0, %xmm14
	vpxor	%ymm11, %ymm14, %ymm11
	vmovdqu	496(%rsp), %ymm0
	vpxor	%ymm5, %ymm0, %ymm5
	vpxor	%ymm0, %ymm10, %ymm10
	vpxor	%ymm0, %ymm12, %ymm12
	vpxor	%ymm0, %ymm8, %ymm8
	vmovdqu	528(%rsp), %ymm0
	vpunpcklqdq	%ymm0, %ymm11, %ymm14
	vpunpckhqdq	%ymm0, %ymm11, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm0, %ymm11, %ymm15
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm14
	vpclmulqdq	$17, %ymm0, %ymm11, %ymm11
	vmovdqu	112(%rsp), %ymm0
	vaesenc	%ymm0, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm10, %ymm10
	vaesenc	%ymm0, %ymm12, %ymm12
	vaesenc	%ymm0, %ymm8, %ymm8
	vmovdqu	560(%rsp), %ymm2
	vpunpcklqdq	%ymm2, %ymm9, %ymm0
	vpunpckhqdq	%ymm2, %ymm9, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpclmulqdq	$0, %ymm2, %ymm9, %ymm1
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpclmulqdq	$17, %ymm2, %ymm9, %ymm9
	vmovdqu	464(%rsp), %ymm3
	vaesenc	%ymm3, %ymm5, %ymm2
	vaesenc	%ymm3, %ymm10, %ymm10
	vaesenc	%ymm3, %ymm12, %ymm12
	vaesenc	%ymm3, %ymm8, %ymm8
	vmovdqu	144(%rsp), %ymm4
	vpunpcklqdq	%ymm4, %ymm7, %ymm5
	vpunpckhqdq	%ymm4, %ymm7, %ymm3
	vpxor	%ymm5, %ymm3, %ymm3
	vpclmulqdq	$0, %ymm4, %ymm7, %ymm5
	vpxor	%ymm5, %ymm1, %ymm1
	vpxor	%ymm1, %ymm15, %ymm1
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm0, %ymm14, %ymm5
	vpclmulqdq	$17, %ymm4, %ymm7, %ymm0
	vpxor	%ymm0, %ymm9, %ymm0
	vpxor	%ymm0, %ymm11, %ymm0
	vmovdqu	432(%rsp), %ymm4
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm10, %ymm3
	vaesenc	%ymm4, %ymm12, %ymm9
	vaesenc	%ymm4, %ymm8, %ymm10
	vmovdqu	64(%rsp), %ymm4
	vpunpcklqdq	%ymm4, %ymm6, %ymm7
	vpunpckhqdq	%ymm4, %ymm6, %ymm8
	vpxor	%ymm7, %ymm8, %ymm8
	vpclmulqdq	$0, %ymm4, %ymm6, %ymm7
	vpxor	%ymm7, %ymm1, %ymm7
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm4, %ymm6, %ymm1
	vpxor	%ymm1, %ymm0, %ymm14
	vmovdqu	400(%rsp), %ymm4
	vaesenc	%ymm4, %ymm2, %ymm0
	vaesenc	%ymm4, %ymm3, %ymm1
	vaesenc	%ymm4, %ymm9, %ymm2
	vaesenc	%ymm4, %ymm10, %ymm3
	vmovdqu	368(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	336(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	304(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	272(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	240(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	208(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	176(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	704(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	672(%rsp), %ymm4
	vaesenc	%ymm4, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm4, %ymm2, %ymm2
	vaesenc	%ymm4, %ymm3, %ymm3
	vmovdqu	640(%rsp), %ymm4
	vaesenclast	%ymm4, %ymm0, %ymm12
	vaesenclast	%ymm4, %ymm1, %ymm10
	vaesenclast	%ymm4, %ymm2, %ymm0
	vaesenclast	%ymm4, %ymm3, %ymm1
	vpxor	%ymm7, %ymm8, %ymm2
	vpxor	%ymm2, %ymm5, %ymm2
	vpxor	%ymm2, %ymm14, %ymm2
	vpslldq	$8, %ymm2, %ymm3
	vpxor	%ymm3, %ymm7, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vmovdqu	608(%rsp), %ymm6
	vpclmulqdq	$16, %ymm6, %ymm3, %ymm7
	vpxor	96(%rcx), %ymm1, %ymm13
	vpshufd	$78, %ymm3, %ymm3
	vextracti128	$1, %ymm1, %xmm5
	vpxor	112(%rcx), %xmm5, %xmm15
	vpxor	96(%rcx), %xmm1, %xmm8
	vpxor	%ymm3, %ymm7, %ymm1
	vpxor	64(%rcx), %ymm0, %ymm3
	vextracti128	$1, %ymm0, %xmm7
	vpxor	80(%rcx), %xmm7, %xmm5
	vpshufd	$78, %ymm1, %ymm11
	vpxor	64(%rcx), %xmm0, %xmm7
	vpxor	32(%rcx), %ymm10, %ymm0
	vextracti128	$1, %ymm10, %xmm9
	vpxor	48(%rcx), %xmm9, %xmm9
	vpxor	32(%rcx), %xmm10, %xmm10
	vpxor	(%rcx), %ymm12, %ymm4
	vpxor	%ymm2, %ymm11, %ymm2
	vextracti128	$1, %ymm12, %xmm11
	vpxor	16(%rcx), %xmm11, %xmm11
	vpxor	(%rcx), %xmm12, %xmm12
	vpxor	%ymm2, %ymm14, %ymm2
	vmovdqu	%ymm4, (%rax)
	vmovdqu	%ymm0, 32(%rax)
	vpclmulqdq	$16, %ymm6, %ymm1, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm3, 64(%rax)
	vmovdqu	%ymm13, 96(%rax)
	vextracti128	$1, %ymm0, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	addq	$128, %rcx
	addq	$128, %rax
	addq	$-128, %rbx
	vmovdqu	32(%rsp), %ymm1
	vpaddd	.LCPI4_10(%rip), %xmm1, %xmm1
	cmpq	$127, %rbx
	ja	.LBB4_30
	vmovdqa	%xmm1, 16(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
.LBB4_32:
	vmovdqa	.LCPI4_2(%rip), %xmm13
	vpshufb	%xmm13, %xmm12, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vpshufb	%xmm13, %xmm11, %xmm1
	vpshufb	%xmm13, %xmm10, %xmm2
	vpshufb	%xmm13, %xmm9, %xmm3
	vpshufb	%xmm13, %xmm7, %xmm4
	vpshufb	%xmm13, %xmm5, %xmm7
	vpshufb	%xmm13, %xmm8, %xmm6
	vpshufb	%xmm13, %xmm15, %xmm5
	vmovdqa	240(%rdi), %xmm8
	vmovdqa	256(%rdi), %xmm9
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm10
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm11
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm12
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm9, %xmm8
	vpxor	%xmm10, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm6, %xmm9, %xmm10
	vpclmulqdq	$16, %xmm6, %xmm9, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vmovdqa	272(%rdi), %xmm12
	vpxor	%xmm10, %xmm11, %xmm10
	vmovdqa	288(%rdi), %xmm11
	vpclmulqdq	$17, %xmm6, %xmm9, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm7, %xmm12, %xmm6
	vpclmulqdq	$16, %xmm7, %xmm12, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$0, %xmm7, %xmm12, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm12, %xmm7
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpxor	%xmm6, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vmovdqa	304(%rdi), %xmm10
	vpxor	%xmm4, %xmm7, %xmm4
	vmovdqa	320(%rdi), %xmm7
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm5
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm7, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm7, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	336(%rdi), %xmm3
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm1, %xmm3, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovdqa	352(%rdi), %xmm6
	vpclmulqdq	$17, %xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_16(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm5
	movq	%rax, %rdx
	movq	%rcx, %r9
	jmp	.LBB4_26
.LBB4_25:
	vmovdqa	%xmm1, 16(%rsp)
	movq	%r15, %rbx
.LBB4_26:
	movq	%r8, %r12
	cmpq	$16, %rbx
	jb	.LBB4_27
	vmovaps	(%rdi), %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovaps	16(%rdi), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	vmovaps	32(%rdi), %xmm0
	vmovaps	%xmm0, 144(%rsp)
	vmovaps	48(%rdi), %xmm0
	vmovaps	%xmm0, 560(%rsp)
	vmovaps	64(%rdi), %xmm0
	vmovaps	%xmm0, 528(%rsp)
	vmovaps	80(%rdi), %xmm0
	vmovaps	%xmm0, 496(%rsp)
	vmovaps	96(%rdi), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	vmovdqa	112(%rdi), %xmm7
	vmovdqa	128(%rdi), %xmm8
	vmovdqa	144(%rdi), %xmm9
	vmovdqa	160(%rdi), %xmm10
	vmovdqa	176(%rdi), %xmm11
	vmovdqa	192(%rdi), %xmm12
	vmovdqa	208(%rdi), %xmm13
	vmovdqa	224(%rdi), %xmm14
	vmovdqa	240(%rdi), %xmm15
	vmovdqa	.LCPI4_2(%rip), %xmm0
	vpbroadcastq	.LCPI4_16(%rip), %xmm1
	vmovdqa	16(%rsp), %xmm6
	.p2align	4
.LBB4_34:
	vpshufb	%xmm0, %xmm6, %xmm2
	vpxor	32(%rsp), %xmm2, %xmm2
	vaesenc	64(%rsp), %xmm2, %xmm2
	vaesenc	144(%rsp), %xmm2, %xmm2
	vaesenc	560(%rsp), %xmm2, %xmm2
	vaesenc	528(%rsp), %xmm2, %xmm2
	vaesenc	496(%rsp), %xmm2, %xmm2
	vaesenc	112(%rsp), %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rdx)
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
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI4_1(%rip), %xmm6, %xmm6
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB4_34
	jmp	.LBB4_35
.LBB4_27:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	16(%rsp), %xmm6
.LBB4_35:
	vmovdqa	%xmm6, 16(%rsp)
	testq	%rbx, %rbx
	je	.LBB4_36
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rax
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movq	%rbx, %rdx
	vmovdqa	%xmm5, 32(%rsp)
	vzeroupper
	callq	*%r13
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI4_2(%rip), %xmm0, %xmm0
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
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r13
	vmovaps	64(%rsp), %xmm0
	vmovaps	%xmm0, 592(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	leaq	592(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*%r13
	movq	%rbp, %rdi
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI4_2(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm2
	vmovdqa	240(%rbp), %xmm3
	vpclmulqdq	$0, %xmm2, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm2, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm3, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm2, %xmm3, %xmm2
	movq	%r12, %r8
	jmp	.LBB4_38
.LBB4_12:
	movq	%r12, %rdi
	vmovdqa	240(%r12), %xmm2
	vpshufb	.LCPI4_2(%rip), %xmm0, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm2, %xmm0
	vpclmulqdq	$1, %xmm3, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm2, %xmm2
	movq	%rbx, %r8
.LBB4_38:
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI4_16(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm0, %xmm2, %xmm5
	jmp	.LBB4_39
.LBB4_36:
	movq	%r12, %r8
.LBB4_39:
	movq	824(%rsp), %rax
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
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
	vpbroadcastq	.LCPI4_16(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	96(%rsp), %xmm2
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
	vpshufb	.LCPI4_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI4_17(%rip), %xmm3, %xmm3
	vpshufb	.LCPI4_18(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqu	%xmm0, (%rax)
	movl	$1, %eax
.LBB4_40:
	addq	$744, %rsp
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
.Lfunc_end4:
	.size	haberdashery_aes256gcm_raptorlake_encrypt, .Lfunc_end4-haberdashery_aes256gcm_raptorlake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
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
.LCPI5_1:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI5_2:
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
.LCPI5_3:
	.zero	8
	.quad	-4467570830351532032
.LCPI5_4:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI5_10:
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
.LCPI5_11:
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_5:
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
.LCPI5_6:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI5_7:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI5_8:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_9:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcm_raptorlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_raptorlake_decrypt
	.p2align	4
	.type	haberdashery_aes256gcm_raptorlake_decrypt,@function
haberdashery_aes256gcm_raptorlake_decrypt:
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
	subq	$600, %rsp
	.cfi_def_cfa_offset 656
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	656(%rsp), %r15
	xorl	%eax, %eax
	cmpq	688(%rsp), %r15
	jne	.LBB5_42
	cmpq	$16, 672(%rsp)
	setne	%r10b
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	seta	%r11b
	movq	%r15, %rbx
	shrq	$5, %rbx
	cmpq	$2147483647, %rbx
	setae	%bl
	orb	%r10b, %r11b
	cmpq	$12, %rdx
	setne	%dl
	orb	%bl, %dl
	orb	%r11b, %dl
	jne	.LBB5_42
	movq	664(%rsp), %r13
	vmovd	(%rsi), %xmm0
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	movl	$16777216, %edx
	vpinsrd	$3, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	testq	%r8, %r8
	je	.LBB5_3
	cmpq	$128, %r8
	jb	.LBB5_7
	vmovdqu	16(%rcx), %xmm1
	vmovdqu	32(%rcx), %xmm2
	vmovdqu	48(%rcx), %xmm3
	vmovdqu	64(%rcx), %xmm4
	vmovdqu	80(%rcx), %xmm5
	vmovdqu	96(%rcx), %xmm6
	vmovdqu	112(%rcx), %xmm12
	vmovdqa	.LCPI5_2(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm8
	vpshufb	%xmm0, %xmm2, %xmm9
	vpshufb	%xmm0, %xmm3, %xmm10
	vpshufb	%xmm0, %xmm4, %xmm7
	vpshufb	%xmm0, %xmm5, %xmm11
	vpshufb	%xmm0, %xmm6, %xmm5
	vpshufb	%xmm0, %xmm12, %xmm6
	vmovdqa	240(%rdi), %xmm3
	vmovdqa	256(%rdi), %xmm4
	vmovdqa	272(%rdi), %xmm1
	vmovdqa	288(%rdi), %xmm2
	vpclmulqdq	$0, %xmm6, %xmm3, %xmm12
	vpclmulqdq	$1, %xmm6, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm6, %xmm3, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm14
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm5
	vpxor	%xmm6, %xmm5, %xmm14
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm6
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm15
	vpxor	%xmm6, %xmm15, %xmm6
	vpclmulqdq	$0, %xmm7, %xmm2, %xmm15
	vpxor	%xmm5, %xmm15, %xmm15
	vmovdqa	304(%rdi), %xmm5
	vpxor	%xmm15, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm7, %xmm2, %xmm15
	vpxor	%xmm6, %xmm15, %xmm15
	vmovdqa	320(%rdi), %xmm6
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm11
	vpxor	%xmm15, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm7, %xmm2, %xmm15
	vpclmulqdq	$17, %xmm7, %xmm2, %xmm7
	vpxor	%xmm7, %xmm11, %xmm7
	vpxor	%xmm7, %xmm14, %xmm11
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm7
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpclmulqdq	$0, %xmm9, %xmm6, %xmm15
	vpxor	%xmm7, %xmm15, %xmm15
	vpclmulqdq	$1, %xmm9, %xmm6, %xmm7
	vpxor	%xmm7, %xmm14, %xmm14
	vmovdqa	336(%rdi), %xmm7
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm10
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm6, %xmm14
	vpxor	%xmm14, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm8, %xmm7, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm9
	vpxor	%xmm14, %xmm12, %xmm12
	vpclmulqdq	$1, %xmm8, %xmm7, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm8, %xmm7, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vmovdqu	(%rcx), %xmm14
	vpshufb	%xmm0, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm8, %xmm7, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vmovdqa	352(%rdi), %xmm15
	vpxor	%xmm10, %xmm11, %xmm10
	vpclmulqdq	$0, %xmm14, %xmm15, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$1, %xmm14, %xmm15, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm14, %xmm15, %xmm12
	vpxor	%xmm12, %xmm9, %xmm9
	vpxor	%xmm9, %xmm13, %xmm12
	vpclmulqdq	$17, %xmm14, %xmm15, %xmm9
	vpxor	%xmm9, %xmm10, %xmm10
	subq	$-128, %rcx
	leaq	-128(%r8), %rdx
	cmpq	$128, %rdx
	jb	.LBB5_23
	vmovdqa	%xmm6, 16(%rsp)
	vmovdqa	%xmm2, 96(%rsp)
	vmovdqa	%xmm7, %xmm8
	vmovdqa	%xmm5, %xmm7
	vmovdqa	%xmm1, %xmm5
	vmovdqa	%xmm15, 48(%rsp)
	vmovdqa	.LCPI5_2(%rip), %xmm6
	.p2align	4
.LBB5_22:
	vmovdqu	(%rcx), %xmm13
	vmovdqu	64(%rcx), %xmm14
	vmovdqu	80(%rcx), %xmm15
	vmovdqu	96(%rcx), %xmm9
	vmovdqu	112(%rcx), %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpsrldq	$8, %xmm12, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpbroadcastq	.LCPI5_9(%rip), %xmm12
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm11
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm11, %xmm1
	vpclmulqdq	$16, %xmm12, %xmm1, %xmm11
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm6, %xmm13, %xmm12
	vpxor	%xmm12, %xmm10, %xmm10
	vpxor	%xmm1, %xmm10, %xmm1
	vpxor	%xmm1, %xmm11, %xmm10
	vpshufb	%xmm6, %xmm14, %xmm11
	vpshufb	%xmm6, %xmm15, %xmm1
	vpshufb	%xmm6, %xmm9, %xmm9
	vpshufb	%xmm6, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm12
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm13
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm9, %xmm4, %xmm14
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$1, %xmm9, %xmm4, %xmm14
	vpclmulqdq	$16, %xmm9, %xmm4, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm9, %xmm4, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm9
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm14
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vmovdqa	96(%rsp), %xmm2
	vpclmulqdq	$0, %xmm11, %xmm2, %xmm15
	vpxor	%xmm15, %xmm9, %xmm9
	vmovdqu	32(%rcx), %xmm15
	vpxor	%xmm9, %xmm12, %xmm9
	vpclmulqdq	$1, %xmm11, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vmovdqu	48(%rcx), %xmm14
	vpshufb	%xmm6, %xmm15, %xmm15
	vpshufb	%xmm6, %xmm14, %xmm14
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpxor	%xmm12, %xmm13, %xmm12
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm13
	vpclmulqdq	$17, %xmm11, %xmm2, %xmm11
	vpxor	%xmm1, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$0, %xmm14, %xmm7, %xmm1
	vpclmulqdq	$1, %xmm14, %xmm7, %xmm11
	vpxor	%xmm11, %xmm13, %xmm11
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqa	16(%rsp), %xmm2
	vpclmulqdq	$0, %xmm15, %xmm2, %xmm13
	vpxor	%xmm1, %xmm13, %xmm1
	vpclmulqdq	$1, %xmm15, %xmm2, %xmm13
	vpxor	%xmm13, %xmm11, %xmm11
	vmovdqu	16(%rcx), %xmm13
	vpshufb	%xmm6, %xmm13, %xmm13
	vpclmulqdq	$17, %xmm14, %xmm7, %xmm14
	vpxor	%xmm11, %xmm12, %xmm11
	vpclmulqdq	$17, %xmm15, %xmm2, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vpclmulqdq	$0, %xmm13, %xmm8, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpclmulqdq	$16, %xmm15, %xmm2, %xmm14
	vmovdqa	48(%rsp), %xmm15
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$1, %xmm13, %xmm8, %xmm9
	vpxor	%xmm9, %xmm14, %xmm9
	vpclmulqdq	$16, %xmm13, %xmm8, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vpxor	%xmm9, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm13, %xmm8, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpxor	%xmm0, %xmm11, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm15, %xmm11
	vpxor	%xmm1, %xmm11, %xmm11
	vpclmulqdq	$1, %xmm10, %xmm15, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vpclmulqdq	$16, %xmm10, %xmm15, %xmm9
	vpxor	%xmm1, %xmm9, %xmm12
	vpclmulqdq	$17, %xmm10, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm10
	subq	$-128, %rcx
	addq	$-128, %rdx
	cmpq	$127, %rdx
	ja	.LBB5_22
.LBB5_23:
	vpslldq	$8, %xmm12, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpsrldq	$8, %xmm12, %xmm1
	vpxor	%xmm1, %xmm10, %xmm1
	vpbroadcastq	.LCPI5_9(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm6
	vmovdqa	%xmm6, %xmm5
	cmpq	$16, %rdx
	jae	.LBB5_9
	jmp	.LBB5_16
.LBB5_3:
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	jmp	.LBB5_4
.LBB5_7:
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB5_16
.LBB5_9:
	vmovdqa	240(%rdi), %xmm0
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	jne	.LBB5_11
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI5_2(%rip), %xmm1, %xmm1
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
	vpbroadcastq	.LCPI5_9(%rip), %xmm3
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	movq	%rsi, %rdx
.LBB5_11:
	cmpq	$16, %rsi
	jb	.LBB5_15
	vmovdqa	.LCPI5_2(%rip), %xmm1
	vpbroadcastq	.LCPI5_9(%rip), %xmm2
	.p2align	4
.LBB5_13:
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
	addq	$-32, %rdx
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
	cmpq	$15, %rdx
	ja	.LBB5_13
	movq	%rdx, %rsi
.LBB5_15:
	vmovdqa	%xmm6, %xmm5
	movq	%rsi, %rdx
.LBB5_16:
	testq	%rdx, %rdx
	je	.LBB5_4
	vmovdqa	%xmm6, 48(%rsp)
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
	je	.LBB5_18
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	48(%rsp), %xmm2
	jb	.LBB5_42
	movq	%r12, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	vmovdqa	240(%r12), %xmm1
	vpshufb	.LCPI5_2(%rip), %xmm0, %xmm0
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
	vpbroadcastq	.LCPI5_9(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm6
	vmovdqa	%xmm6, %xmm5
	jmp	.LBB5_26
.LBB5_4:
	testq	%r15, %r15
	je	.LBB5_19
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB5_42
.LBB5_26:
	movq	680(%rsp), %rax
	vmovdqa	80(%rsp), %xmm0
	vpshufb	.LCPI5_0(%rip), %xmm0, %xmm0
	vpaddd	.LCPI5_1(%rip), %xmm0, %xmm12
	cmpq	$128, %r15
	jb	.LBB5_27
	vmovups	256(%rdi), %ymm0
	vmovups	288(%rdi), %ymm1
	vinsertf128	$1, 240(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 48(%rsp)
	vmovups	320(%rdi), %ymm0
	vinsertf128	$1, 272(%rdi), %ymm1, %ymm1
	vmovups	%ymm1, 16(%rsp)
	vinsertf128	$1, 304(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 96(%rsp)
	vmovaps	352(%rdi), %xmm0
	vinsertf128	$1, 336(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 256(%rsp)
	vbroadcastf128	(%rdi), %ymm0
	vmovups	%ymm0, 224(%rsp)
	vbroadcastf128	16(%rdi), %ymm0
	vmovups	%ymm0, 192(%rsp)
	vbroadcastf128	32(%rdi), %ymm0
	vmovups	%ymm0, 160(%rsp)
	vbroadcastf128	48(%rdi), %ymm0
	vmovups	%ymm0, 128(%rsp)
	vbroadcastf128	64(%rdi), %ymm0
	vmovups	%ymm0, 560(%rsp)
	vbroadcastf128	80(%rdi), %ymm0
	vmovups	%ymm0, 528(%rsp)
	vbroadcastf128	96(%rdi), %ymm0
	vmovups	%ymm0, 496(%rsp)
	vbroadcastf128	112(%rdi), %ymm0
	vmovups	%ymm0, 464(%rsp)
	vbroadcastf128	128(%rdi), %ymm0
	vmovups	%ymm0, 432(%rsp)
	vbroadcastf128	144(%rdi), %ymm0
	vmovups	%ymm0, 400(%rsp)
	vbroadcastf128	160(%rdi), %ymm0
	vmovups	%ymm0, 368(%rsp)
	vbroadcastf128	176(%rdi), %ymm0
	vmovups	%ymm0, 336(%rsp)
	movq	%r15, %rbx
	vbroadcasti128	192(%rdi), %ymm0
	vbroadcasti128	208(%rdi), %ymm1
	vbroadcasti128	224(%rdi), %ymm2
	vbroadcasti128	.LCPI5_2(%rip), %ymm3
	vpbroadcastq	.LCPI5_9(%rip), %ymm4
	vmovdqu	%ymm4, 304(%rsp)
	vmovdqu	256(%rsp), %ymm15
	vmovdqu	96(%rsp), %ymm14
	.p2align	4
.LBB5_31:
	vmovdqu	(%r9), %ymm4
	vmovdqu	32(%r9), %ymm6
	vmovdqu	64(%r9), %ymm7
	vpshufb	%ymm3, %ymm4, %ymm4
	vpshufb	%ymm3, %ymm6, %ymm8
	vpshufb	%ymm3, %ymm7, %ymm9
	vmovdqa	%xmm5, %xmm5
	vpxor	%ymm5, %ymm4, %ymm5
	vpunpcklqdq	%ymm15, %ymm5, %ymm4
	vpunpckhqdq	%ymm15, %ymm5, %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vpunpcklqdq	%ymm14, %ymm8, %ymm4
	vpunpckhqdq	%ymm14, %ymm8, %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vpclmulqdq	$0, %ymm14, %ymm8, %ymm4
	vmovdqu	16(%rsp), %ymm13
	vpunpcklqdq	%ymm13, %ymm9, %ymm10
	vpunpckhqdq	%ymm13, %ymm9, %ymm11
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$0, %ymm13, %ymm9, %ymm11
	vpxor	%ymm4, %ymm11, %ymm4
	vpclmulqdq	$0, %ymm15, %ymm5, %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqa	%xmm12, %xmm4
	vpclmulqdq	$1, %ymm7, %ymm7, %ymm7
	vpclmulqdq	$1, %ymm10, %ymm10, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vpaddd	.LCPI5_1(%rip), %xmm12, %xmm10
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpxor	%ymm6, %ymm7, %ymm7
	vmovdqu	96(%r9), %ymm6
	vpshufb	%ymm3, %ymm6, %ymm12
	vinserti128	$1, %xmm10, %ymm4, %ymm6
	vpshufb	%ymm3, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm15, %ymm5, %ymm5
	vpclmulqdq	$17, %ymm14, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm13, %ymm9, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpxor	%ymm5, %ymm8, %ymm5
	vmovdqu	48(%rsp), %ymm10
	vpunpcklqdq	%ymm10, %ymm12, %ymm8
	vpunpckhqdq	%ymm10, %ymm12, %ymm9
	vpxor	%ymm8, %ymm9, %ymm13
	vpclmulqdq	$0, %ymm10, %ymm12, %ymm8
	vpxor	%ymm8, %ymm11, %ymm8
	vinserti128	$1, %xmm4, %ymm4, %ymm9
	vpclmulqdq	$17, %ymm10, %ymm12, %ymm10
	vpxor	%ymm5, %ymm10, %ymm5
	vpaddd	.LCPI5_6(%rip), %ymm9, %ymm10
	vpshufb	%ymm3, %ymm10, %ymm10
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm11
	vpxor	%ymm8, %ymm11, %ymm11
	vpxor	%ymm7, %ymm11, %ymm7
	vpxor	%ymm5, %ymm7, %ymm7
	vpslldq	$8, %ymm7, %ymm11
	vpxor	%ymm11, %ymm8, %ymm8
	vpsrldq	$8, %ymm7, %ymm11
	vmovdqu	304(%rsp), %ymm13
	vpclmulqdq	$16, %ymm13, %ymm8, %ymm7
	vpshufd	$78, %ymm8, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpshufd	$78, %ymm7, %ymm8
	vpxor	%ymm8, %ymm11, %ymm8
	vpaddd	.LCPI5_7(%rip), %ymm9, %ymm11
	vpshufb	%ymm3, %ymm11, %ymm11
	vpaddd	.LCPI5_8(%rip), %ymm9, %ymm9
	vpshufb	%ymm3, %ymm9, %ymm9
	vmovdqu	224(%rsp), %ymm12
	vpxor	%ymm6, %ymm12, %ymm6
	vpxor	%ymm10, %ymm12, %ymm10
	vpxor	%ymm11, %ymm12, %ymm11
	vpxor	%ymm9, %ymm12, %ymm9
	vmovdqu	192(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	160(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	128(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	560(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	528(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	496(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	464(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	432(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	400(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	368(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vmovdqu	336(%rsp), %ymm12
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm10, %ymm10
	vaesenc	%ymm12, %ymm11, %ymm11
	vaesenc	%ymm12, %ymm9, %ymm9
	vaesenc	%ymm0, %ymm6, %ymm6
	vaesenc	%ymm0, %ymm10, %ymm10
	vaesenc	%ymm0, %ymm11, %ymm11
	vaesenc	%ymm0, %ymm9, %ymm9
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm1, %ymm10, %ymm10
	vaesenc	%ymm1, %ymm11, %ymm11
	vaesenc	%ymm1, %ymm9, %ymm9
	vaesenclast	%ymm2, %ymm6, %ymm6
	vaesenclast	%ymm2, %ymm10, %ymm10
	vaesenclast	%ymm2, %ymm11, %ymm11
	vaesenclast	%ymm2, %ymm9, %ymm9
	vpxor	96(%r9), %ymm9, %ymm9
	vpxor	64(%r9), %ymm11, %ymm11
	vpxor	32(%r9), %ymm10, %ymm10
	vpxor	(%r9), %ymm6, %ymm6
	vpxor	%ymm5, %ymm8, %ymm5
	vmovdqu	%ymm6, (%rax)
	vmovdqu	%ymm10, 32(%rax)
	vpclmulqdq	$16, %ymm13, %ymm7, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vmovdqu	%ymm11, 64(%rax)
	vmovdqu	%ymm9, 96(%rax)
	vextracti128	$1, %ymm5, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	addq	$128, %r9
	addq	$128, %rax
	addq	$-128, %rbx
	vpaddd	.LCPI5_4(%rip), %xmm4, %xmm12
	cmpq	$127, %rbx
	ja	.LBB5_31
	vmovdqa	%xmm5, %xmm6
	vmovdqa	%xmm12, %xmm8
	cmpq	$16, %rbx
	jae	.LBB5_33
.LBB5_29:
	movq	%rdi, %r13
	movq	%rax, %r14
	jmp	.LBB5_35
.LBB5_27:
	movq	%r15, %rbx
	vmovdqa	%xmm12, %xmm8
	cmpq	$16, %rbx
	jb	.LBB5_29
.LBB5_33:
	vmovdqa	240(%rdi), %xmm0
	vmovaps	(%rdi), %xmm1
	vmovaps	%xmm1, 48(%rsp)
	vmovaps	16(%rdi), %xmm1
	vmovaps	%xmm1, 16(%rsp)
	vmovaps	32(%rdi), %xmm1
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	48(%rdi), %xmm1
	vmovaps	%xmm1, 256(%rsp)
	vmovaps	64(%rdi), %xmm1
	vmovaps	%xmm1, 224(%rsp)
	vmovaps	80(%rdi), %xmm1
	vmovaps	%xmm1, 192(%rsp)
	vmovaps	96(%rdi), %xmm1
	vmovaps	%xmm1, 160(%rsp)
	vmovaps	112(%rdi), %xmm1
	vmovaps	%xmm1, 128(%rsp)
	vmovdqa	128(%rdi), %xmm9
	vmovdqa	144(%rdi), %xmm10
	vmovdqa	160(%rdi), %xmm11
	vmovdqa	176(%rdi), %xmm12
	vmovdqa	192(%rdi), %xmm13
	vmovdqa	208(%rdi), %xmm14
	movq	%rdi, %r13
	vmovdqa	224(%rdi), %xmm15
	vmovdqa	.LCPI5_2(%rip), %xmm1
	vpbroadcastq	.LCPI5_9(%rip), %xmm2
	.p2align	4
.LBB5_34:
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm1, %xmm3, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
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
	vpshufb	%xmm1, %xmm8, %xmm6
	vpxor	48(%rsp), %xmm6, %xmm6
	vaesenc	16(%rsp), %xmm6, %xmm6
	vaesenc	96(%rsp), %xmm6, %xmm6
	vaesenc	256(%rsp), %xmm6, %xmm6
	vaesenc	224(%rsp), %xmm6, %xmm6
	vaesenc	192(%rsp), %xmm6, %xmm6
	vaesenc	160(%rsp), %xmm6, %xmm6
	vaesenc	128(%rsp), %xmm6, %xmm6
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm10, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm12, %xmm6, %xmm6
	vaesenc	%xmm13, %xmm6, %xmm6
	vaesenc	%xmm14, %xmm6, %xmm6
	vaesenclast	%xmm15, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vmovdqu	%xmm3, (%rax)
	vpclmulqdq	$16, %xmm2, %xmm5, %xmm3
	vpxor	%xmm4, %xmm3, %xmm6
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI5_1(%rip), %xmm8, %xmm8
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB5_34
.LBB5_35:
	vmovdqa	%xmm8, 16(%rsp)
	vmovdqa	%xmm6, 48(%rsp)
	movq	%r8, %rbp
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	testq	%rbx, %rbx
	je	.LBB5_37
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rdi
	movq	memcpy@GOTPCREL(%rip), %r12
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vzeroupper
	callq	*%r12
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI5_2(%rip), %xmm0, %xmm0
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
	vaesenc	160(%r13), %xmm0, %xmm0
	vaesenc	176(%r13), %xmm0, %xmm0
	vaesenc	192(%r13), %xmm0, %xmm0
	vaesenc	208(%r13), %xmm0, %xmm0
	vmovdqa	(%rsp), %xmm1
	vmovdqa	%xmm1, 16(%rsp)
	vaesenclast	224(%r13), %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r12
	vmovdqa	16(%rsp), %xmm2
	vpxor	%xmm1, %xmm1, %xmm1
.LBB5_37:
	movq	664(%rsp), %rax
	vmovdqu	(%rax), %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm2, 288(%rsp)
	vmovdqa	%xmm1, (%rsp)
	movq	%rsp, %rdi
	leaq	288(%rsp), %rsi
	movq	%rbx, %rdx
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.LBB5_38
	vmovdqa	(%rsp), %xmm0
	vpshufb	.LCPI5_2(%rip), %xmm0, %xmm0
	vpxor	48(%rsp), %xmm0, %xmm0
	movq	%r13, %rdi
	vmovdqa	240(%r13), %xmm1
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_9(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm6
	movq	%rbp, %r8
	jmp	.LBB5_40
.LBB5_18:
	movq	%r12, %rdi
	vmovdqa	240(%r12), %xmm1
	vpshufb	.LCPI5_2(%rip), %xmm0, %xmm0
	vpxor	48(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm1, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_9(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm6
	movq	%rbx, %r8
.LBB5_19:
	vmovdqu	(%r13), %xmm5
	jmp	.LBB5_41
.LBB5_38:
	movq	%r13, %rdi
	movq	%rbp, %r8
	vmovdqa	48(%rsp), %xmm6
.LBB5_40:
	vmovdqa	16(%rsp), %xmm5
.LBB5_41:
	vmovdqa	240(%rdi), %xmm0
	vmovq	%r8, %xmm1
	vmovq	%r15, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpbroadcastq	.LCPI5_9(%rip), %xmm2
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
	vaesenc	160(%rdi), %xmm2, %xmm2
	vaesenc	176(%rdi), %xmm2, %xmm2
	vaesenc	192(%rdi), %xmm2, %xmm2
	vaesenc	208(%rdi), %xmm2, %xmm2
	vaesenclast	224(%rdi), %xmm2, %xmm2
	vpshufb	.LCPI5_2(%rip), %xmm0, %xmm0
	vpshufb	.LCPI5_10(%rip), %xmm3, %xmm3
	vpshufb	.LCPI5_11(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB5_42:
	addq	$600, %rsp
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
.Lfunc_end5:
	.size	haberdashery_aes256gcm_raptorlake_decrypt, .Lfunc_end5-haberdashery_aes256gcm_raptorlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_raptorlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_raptorlake_is_supported
	.p2align	4
	.type	haberdashery_aes256gcm_raptorlake_is_supported,@function
haberdashery_aes256gcm_raptorlake_is_supported:
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
	andl	$1993871875, %esi
	andl	$125829120, %edi
	orl	%esi, %edi
	notl	%r8d
	andl	$9175337, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end6:
	.size	haberdashery_aes256gcm_raptorlake_is_supported, .Lfunc_end6-haberdashery_aes256gcm_raptorlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

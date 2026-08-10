# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.text._ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h28bb226da5b9ae7cE,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h28bb226da5b9ae7cE
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h28bb226da5b9ae7cE,@function
_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h28bb226da5b9ae7cE:
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
	.size	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h28bb226da5b9ae7cE, .Lfunc_end0-_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h28bb226da5b9ae7cE
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617he8708a9d555d8c5cE,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617he8708a9d555d8c5cE
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617he8708a9d555d8c5cE,@function
_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617he8708a9d555d8c5cE:
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
	.size	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617he8708a9d555d8c5cE, .Lfunc_end1-_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617he8708a9d555d8c5cE
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617ha8ad002d9b8be78bE,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617ha8ad002d9b8be78bE
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617ha8ad002d9b8be78bE,@function
_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617ha8ad002d9b8be78bE:
	.cfi_startproc
	movq	%rdi, %rax
	vmovaps	16(%rsi), %xmm0
	vxorps	(%rsi), %xmm0, %xmm0
	vmovaps	%xmm0, (%rdi)
	retq
.Lfunc_end2:
	.size	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617ha8ad002d9b8be78bE, .Lfunc_end2-_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617ha8ad002d9b8be78bE
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI3_1:
	.quad	2
	.quad	0
.LCPI3_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI3_3:
	.long	4
	.long	0
	.long	0
	.long	0
.LCPI3_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI3_5:
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
.LCPI3_6:
	.quad	4294967297
	.quad	4294967297
.LCPI3_7:
	.quad	8589934594
	.quad	8589934594
.LCPI3_9:
	.quad	17179869188
	.quad	17179869188
.LCPI3_10:
	.quad	34359738376
	.quad	34359738376
.LCPI3_11:
	.quad	68719476752
	.quad	68719476752
.LCPI3_12:
	.quad	137438953504
	.quad	137438953504
.LCPI3_13:
	.quad	274877907008
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_8:
	.long	0x0c0f0e0d
.LCPI3_15:
	.long	2
.LCPI3_16:
	.long	4
.LCPI3_17:
	.long	8
.LCPI3_18:
	.long	16
.LCPI3_19:
	.long	32
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_14:
	.quad	-4467570830351532032
	.section	.text.haberdashery_sivmac_raptorlake_init,"ax",@progbits
	.globl	haberdashery_sivmac_raptorlake_init
	.p2align	4
	.type	haberdashery_sivmac_raptorlake_init,@function
haberdashery_sivmac_raptorlake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB3_2
	vmovdqu	(%rsi), %xmm4
	vmovdqu	16(%rsi), %xmm1
	vpxor	.LCPI3_0(%rip), %xmm4, %xmm5
	vpxor	.LCPI3_1(%rip), %xmm4, %xmm3
	vpxor	.LCPI3_2(%rip), %xmm4, %xmm6
	vpxor	.LCPI3_3(%rip), %xmm4, %xmm2
	vpxor	.LCPI3_4(%rip), %xmm4, %xmm7
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpslldq	$12, %xmm4, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpbroadcastd	.LCPI3_8(%rip), %xmm13
	vpshufb	%xmm13, %xmm1, %xmm8
	vaesenclast	.LCPI3_6(%rip), %xmm8, %xmm8
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm7, %xmm7
	#NO_APP
	vpslldq	$4, %xmm1, %xmm8
	vpslldq	$8, %xmm1, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm1, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufd	$255, %xmm0, %xmm9
	vpxor	%xmm12, %xmm12, %xmm12
	vaesenclast	%xmm12, %xmm9, %xmm9
	vpxor	%xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm9, %xmm1
	vbroadcastss	.LCPI3_15(%rip), %xmm9
	vbroadcastss	.LCPI3_8(%rip), %xmm14
	#APP
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm7, %xmm7
	vpslldq	$4, %xmm0, %xmm8
	vpslldq	$8, %xmm0, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpslldq	$12, %xmm0, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm8
	vpshufb	%xmm14, %xmm1, %xmm11
	vaesenclast	%xmm9, %xmm11, %xmm11
	vpxor	%xmm8, %xmm11, %xmm11
	#NO_APP
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm7, %xmm7
	vpslldq	$4, %xmm1, %xmm0
	vpslldq	$8, %xmm1, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpslldq	$12, %xmm1, %xmm8
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm11, %xmm15
	vaesenclast	%xmm12, %xmm15, %xmm15
	vpxor	%xmm0, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI3_16(%rip), %xmm8
	#APP
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm6, %xmm6
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm7, %xmm7
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm11, %xmm0
	vpshufb	%xmm14, %xmm15, %xmm9
	vaesenclast	%xmm8, %xmm9, %xmm9
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	#APP
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm7, %xmm7
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpshufd	$255, %xmm9, %xmm8
	vaesenclast	%xmm12, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm8
	#NO_APP
	vpbroadcastd	.LCPI3_17(%rip), %xmm11
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm7, %xmm7
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpshufb	%xmm14, %xmm8, %xmm15
	vaesenclast	%xmm11, %xmm15, %xmm15
	vpxor	%xmm0, %xmm15, %xmm15
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm7, %xmm7
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm8, %xmm0
	vpshufd	$255, %xmm15, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm9
	vpxor	%xmm0, %xmm9, %xmm9
	#NO_APP
	vbroadcastss	.LCPI3_18(%rip), %xmm10
	#APP
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm5, %xmm5
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm6, %xmm6
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm7, %xmm7
	vpslldq	$4, %xmm15, %xmm0
	vpslldq	$8, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm15, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm15, %xmm0
	vpshufb	%xmm14, %xmm9, %xmm8
	vaesenclast	%xmm10, %xmm8, %xmm8
	vpxor	%xmm0, %xmm8, %xmm8
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm6, %xmm6
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm7, %xmm7
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm15
	vpxor	%xmm0, %xmm15, %xmm0
	vpslldq	$12, %xmm9, %xmm15
	vpxor	%xmm0, %xmm15, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	vpshufd	$255, %xmm8, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	#NO_APP
	vbroadcastss	.LCPI3_19(%rip), %xmm10
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm7, %xmm7
	vpslldq	$4, %xmm8, %xmm9
	vpslldq	$8, %xmm8, %xmm15
	vpxor	%xmm15, %xmm9, %xmm9
	vpslldq	$12, %xmm8, %xmm15
	vpxor	%xmm15, %xmm9, %xmm9
	vpxor	%xmm8, %xmm9, %xmm9
	vpshufb	%xmm14, %xmm1, %xmm0
	vaesenclast	%xmm10, %xmm0, %xmm0
	vpxor	%xmm0, %xmm9, %xmm0
	#NO_APP
	vpslldq	$4, %xmm1, %xmm8
	vpunpcklqdq	%xmm1, %xmm12, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vinsertps	$55, %xmm1, %xmm0, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vshufps	$255, %xmm0, %xmm0, %xmm9
	vaesenclast	%xmm12, %xmm9, %xmm9
	vpxor	%xmm1, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$4, %xmm0, %xmm9
	vpunpcklqdq	%xmm0, %xmm12, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vinsertps	$55, %xmm0, %xmm0, %xmm14
	vpxor	%xmm14, %xmm9, %xmm9
	vpshufb	%xmm13, %xmm8, %xmm15
	vaesenclast	.LCPI3_13(%rip), %xmm15, %xmm15
	vpxor	%xmm0, %xmm9, %xmm9
	vpxor	%xmm9, %xmm15, %xmm15
	#APP
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm5, %xmm5
	vaesenc	%xmm1, %xmm3, %xmm3
	vaesenc	%xmm1, %xmm6, %xmm6
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm6, %xmm6
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm6, %xmm6
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenclast	%xmm15, %xmm4, %xmm4
	vaesenclast	%xmm15, %xmm5, %xmm5
	vaesenclast	%xmm15, %xmm3, %xmm3
	vaesenclast	%xmm15, %xmm6, %xmm6
	vaesenclast	%xmm15, %xmm2, %xmm2
	vaesenclast	%xmm15, %xmm7, %xmm7
	#NO_APP
	vpunpcklqdq	%xmm5, %xmm4, %xmm0
	vmovaps	%xmm0, -24(%rsp)
	vpunpcklqdq	%xmm6, %xmm3, %xmm5
	vpunpcklqdq	%xmm7, %xmm2, %xmm6
	vpslldq	$4, %xmm5, %xmm0
	vpunpcklqdq	%xmm3, %xmm12, %xmm1
	vinsertps	$55, %xmm3, %xmm0, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm6, %xmm1
	vaesenclast	.LCPI3_6(%rip), %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm3
	vpslldq	$4, %xmm6, %xmm0
	vpunpcklqdq	%xmm2, %xmm12, %xmm1
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm3, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm3, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm2, %xmm1
	vaesenclast	.LCPI3_7(%rip), %xmm1, %xmm1
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm7
	vpslldq	$4, %xmm2, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm7, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm8
	vpslldq	$4, %xmm7, %xmm0
	vpslldq	$8, %xmm7, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm7, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm8, %xmm1
	vaesenclast	.LCPI3_9(%rip), %xmm1, %xmm1
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm9
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm9, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpxor	%xmm0, %xmm8, %xmm0
	vpxor	%xmm0, %xmm1, %xmm10
	vpslldq	$4, %xmm9, %xmm0
	vpslldq	$8, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm9, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm10, %xmm1
	vaesenclast	%xmm11, %xmm1, %xmm1
	vpxor	%xmm0, %xmm9, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpslldq	$4, %xmm10, %xmm0
	vpslldq	$8, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm10, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufd	$255, %xmm11, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpxor	%xmm0, %xmm10, %xmm0
	vpxor	%xmm0, %xmm1, %xmm15
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm11, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm13, %xmm15, %xmm1
	vmovdqa	%xmm13, %xmm4
	vaesenclast	.LCPI3_11(%rip), %xmm1, %xmm1
	vpxor	%xmm0, %xmm11, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$4, %xmm15, %xmm1
	vpslldq	$8, %xmm15, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpslldq	$12, %xmm15, %xmm14
	vpxor	%xmm1, %xmm14, %xmm1
	vpshufd	$255, %xmm0, %xmm14
	vaesenclast	%xmm12, %xmm14, %xmm14
	vpxor	%xmm1, %xmm15, %xmm1
	vpxor	%xmm1, %xmm14, %xmm1
	vpslldq	$4, %xmm0, %xmm14
	vpslldq	$8, %xmm0, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpslldq	$12, %xmm0, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpshufb	%xmm4, %xmm1, %xmm14
	vaesenclast	.LCPI3_12(%rip), %xmm14, %xmm14
	vpxor	%xmm0, %xmm13, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpslldq	$4, %xmm1, %xmm14
	vpslldq	$8, %xmm1, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vpslldq	$12, %xmm1, %xmm14
	vpxor	%xmm4, %xmm14, %xmm4
	vpshufd	$255, %xmm13, %xmm14
	vaesenclast	%xmm12, %xmm14, %xmm12
	vpxor	%xmm1, %xmm4, %xmm4
	vpxor	%xmm4, %xmm12, %xmm4
	vpslldq	$4, %xmm13, %xmm12
	vpslldq	$8, %xmm13, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpslldq	$12, %xmm13, %xmm14
	vpxor	%xmm14, %xmm12, %xmm12
	vpshufb	.LCPI3_5(%rip), %xmm4, %xmm14
	vaesenclast	.LCPI3_13(%rip), %xmm14, %xmm14
	vpxor	%xmm13, %xmm12, %xmm12
	vpxor	%xmm12, %xmm14, %xmm12
	vmovdqa	%xmm5, (%rdi)
	vmovdqa	%xmm6, 16(%rdi)
	vmovdqa	%xmm3, 32(%rdi)
	vmovdqa	%xmm2, 48(%rdi)
	vmovdqa	%xmm7, 64(%rdi)
	vmovdqa	%xmm8, 80(%rdi)
	vmovdqa	%xmm9, 96(%rdi)
	vmovdqa	%xmm10, 112(%rdi)
	vmovdqa	%xmm11, 128(%rdi)
	vmovdqa	%xmm15, 144(%rdi)
	vmovdqa	%xmm0, 160(%rdi)
	vmovdqa	%xmm1, 176(%rdi)
	vmovdqa	%xmm13, 192(%rdi)
	vmovdqa	%xmm4, 208(%rdi)
	vmovdqa	%xmm12, 224(%rdi)
	vmovdqa	-24(%rsp), %xmm9
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm1
	vpbroadcastq	.LCPI3_14(%rip), %ymm0
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm2, %ymm3
	vinserti128	$1, %xmm2, %ymm1, %ymm4
	vpclmulqdq	$0, %ymm4, %ymm3, %ymm5
	vpunpckhqdq	%ymm4, %ymm3, %ymm6
	vpunpcklqdq	%ymm4, %ymm3, %ymm7
	vpxor	%ymm7, %ymm6, %ymm6
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm4, %ymm3, %ymm4
	vpxor	%ymm4, %ymm5, %ymm7
	vpxor	%ymm7, %ymm6, %ymm6
	vpslldq	$8, %ymm6, %ymm7
	vpxor	%ymm7, %ymm5, %ymm5
	vpclmulqdq	$16, %ymm0, %ymm5, %ymm7
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm7, %ymm5
	vpclmulqdq	$16, %ymm0, %ymm5, %ymm7
	vpsrldq	$8, %ymm6, %ymm6
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm6, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm7, %ymm5
	vpclmulqdq	$0, %ymm5, %ymm3, %ymm4
	vpunpckhqdq	%ymm5, %ymm3, %ymm6
	vpunpcklqdq	%ymm5, %ymm3, %ymm7
	vpxor	%ymm7, %ymm6, %ymm6
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm5, %ymm3, %ymm7
	vpxor	%ymm7, %ymm4, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpslldq	$8, %ymm6, %ymm8
	vpxor	%ymm4, %ymm8, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm4, %ymm8
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vpclmulqdq	$16, %ymm0, %ymm4, %ymm8
	vpsrldq	$8, %ymm6, %ymm6
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm6, %ymm4
	vpxor	%ymm7, %ymm4, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vpunpcklqdq	%ymm4, %ymm3, %ymm6
	vpunpckhqdq	%ymm4, %ymm3, %ymm7
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$0, %ymm4, %ymm3, %ymm7
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm4, %ymm3, %ymm3
	vpxor	%ymm3, %ymm7, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpslldq	$8, %ymm6, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$16, %ymm0, %ymm7, %ymm8
	vpshufd	$78, %ymm7, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpsrldq	$8, %ymm6, %ymm6
	vpclmulqdq	$16, %ymm0, %ymm7, %ymm0
	vpshufd	$78, %ymm7, %ymm7
	vpxor	%ymm7, %ymm6, %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vpxor	%ymm3, %ymm0, %ymm0
	vmovdqa	%xmm1, 240(%rdi)
	vmovdqa	%xmm2, 256(%rdi)
	vmovdqu	%ymm5, 272(%rdi)
	vmovdqu	%ymm4, 304(%rdi)
	vmovdqu	%ymm0, 336(%rdi)
	vmovdqa	%xmm9, 368(%rdi)
.LBB3_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	vzeroupper
	retq
.Lfunc_end3:
	.size	haberdashery_sivmac_raptorlake_init, .Lfunc_end3-haberdashery_sivmac_raptorlake_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_0:
	.quad	-4467570830351532032
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI4_2:
	.quad	-1
	.quad	9223372036854775807
	.section	.text.haberdashery_sivmac_raptorlake_sign,"ax",@progbits
	.globl	haberdashery_sivmac_raptorlake_sign
	.p2align	4
	.type	haberdashery_sivmac_raptorlake_sign,@function
haberdashery_sivmac_raptorlake_sign:
	.cfi_startproc
	cmpq	$16, %r8
	setne	%r8b
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	xorl	%eax, %eax
	orb	%r8b, %r9b
	jne	.LBB4_11
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$192, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovdqa	240(%rdi), %xmm6
	vpxor	%xmm8, %xmm8, %xmm8
	cmpq	$256, %rdx
	vmovdqa	%ymm6, 64(%rsp)
	jb	.LBB4_2
	vinserti128	$1, %xmm6, %ymm6, %ymm0
	vmovdqa	%ymm0, (%rsp)
	vbroadcasti128	256(%rdi), %ymm1
	vbroadcasti128	272(%rdi), %ymm2
	vbroadcasti128	288(%rdi), %ymm3
	vbroadcasti128	304(%rdi), %ymm4
	vbroadcasti128	320(%rdi), %ymm5
	vbroadcasti128	336(%rdi), %ymm6
	vbroadcasti128	352(%rdi), %ymm7
	vpbroadcastq	.LCPI4_0(%rip), %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	movq	%rdx, %rbx
	.p2align	4
.LBB4_13:
	vmovdqa	%ymm8, 32(%rsp)
	vmovdqu	128(%rsi), %ymm9
	vmovdqu	160(%rsi), %ymm10
	vmovdqu	192(%rsi), %ymm11
	vmovdqu	224(%rsi), %ymm12
	vmovdqa	(%rsp), %ymm0
	vpunpcklqdq	%ymm12, %ymm0, %ymm13
	vpunpckhqdq	%ymm12, %ymm0, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm12, %ymm0, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm12, %ymm0, %ymm12
	vpunpcklqdq	%ymm11, %ymm1, %ymm15
	vpunpckhqdq	%ymm11, %ymm1, %ymm8
	vpxor	%ymm15, %ymm8, %ymm8
	vpclmulqdq	$0, %ymm11, %ymm1, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpxor	%ymm13, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm11, %ymm1, %ymm11
	vpxor	%ymm12, %ymm11, %ymm12
	vpunpcklqdq	%ymm10, %ymm2, %ymm11
	vpunpckhqdq	%ymm10, %ymm2, %ymm13
	vpxor	%ymm11, %ymm13, %ymm13
	vpclmulqdq	$0, %ymm10, %ymm2, %ymm11
	vpunpcklqdq	%ymm9, %ymm3, %ymm15
	vpunpckhqdq	%ymm9, %ymm3, %ymm0
	vpxor	%ymm0, %ymm15, %ymm0
	vpclmulqdq	$0, %ymm9, %ymm3, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vmovdqu	64(%rsi), %ymm15
	vpxor	%ymm11, %ymm14, %ymm11
	vmovdqu	96(%rsi), %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm10, %ymm2, %ymm10
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpxor	%ymm0, %ymm13, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpclmulqdq	$17, %ymm9, %ymm3, %ymm8
	vpxor	%ymm8, %ymm10, %ymm8
	vpxor	%ymm8, %ymm12, %ymm8
	vpunpcklqdq	%ymm14, %ymm4, %ymm9
	vpunpckhqdq	%ymm14, %ymm4, %ymm10
	vpxor	%ymm9, %ymm10, %ymm9
	vpclmulqdq	$0, %ymm14, %ymm4, %ymm10
	vpunpcklqdq	%ymm15, %ymm5, %ymm12
	vpunpckhqdq	%ymm15, %ymm5, %ymm13
	vpxor	%ymm12, %ymm13, %ymm12
	vpclmulqdq	$0, %ymm15, %ymm5, %ymm13
	vpxor	%ymm13, %ymm10, %ymm10
	vmovdqu	32(%rsi), %ymm13
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm14, %ymm4, %ymm14
	vpclmulqdq	$1, %ymm12, %ymm12, %ymm12
	vpxor	%ymm12, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm15, %ymm5, %ymm12
	vpxor	%ymm12, %ymm14, %ymm12
	vpunpcklqdq	%ymm13, %ymm6, %ymm14
	vpunpckhqdq	%ymm13, %ymm6, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm13, %ymm6, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm11
	vpxor	%ymm11, %ymm9, %ymm9
	vpxor	%ymm0, %ymm9, %ymm0
	vmovdqa	32(%rsp), %ymm9
	vpxor	(%rsi), %ymm9, %ymm9
	vpclmulqdq	$17, %ymm13, %ymm6, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpxor	%ymm11, %ymm8, %ymm8
	vpunpcklqdq	%ymm9, %ymm7, %ymm11
	vpunpckhqdq	%ymm9, %ymm7, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm9, %ymm7, %ymm12
	vpxor	%ymm12, %ymm10, %ymm10
	vpclmulqdq	$17, %ymm9, %ymm7, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm9
	vpxor	%ymm10, %ymm9, %ymm9
	vpxor	%ymm0, %ymm9, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpslldq	$8, %ymm0, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpsrldq	$8, %ymm0, %ymm0
	vmovdqa	128(%rsp), %ymm11
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm10
	vpshufd	$78, %ymm9, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpshufd	$78, %ymm9, %ymm10
	vpxor	%ymm0, %ymm10, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm8
	vpxor	%ymm0, %ymm8, %ymm8
	addq	$256, %rsi
	addq	$-256, %rbx
	cmpq	$255, %rbx
	ja	.LBB4_13
	vmovdqa	64(%rsp), %ymm6
	cmpq	$32, %rbx
	jae	.LBB4_4
	jmp	.LBB4_6
.LBB4_2:
	movq	%rdx, %rbx
	cmpq	$32, %rbx
	jb	.LBB4_6
.LBB4_4:
	vinserti128	$1, %xmm6, %ymm6, %ymm0
	vpbroadcastq	.LCPI4_0(%rip), %ymm1
	.p2align	4
.LBB4_5:
	addq	$-32, %rbx
	vpxor	(%rsi), %ymm8, %ymm2
	addq	$32, %rsi
	vpunpcklqdq	%ymm2, %ymm0, %ymm3
	vpunpckhqdq	%ymm2, %ymm0, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm0, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm2, %ymm0, %ymm2
	vpxor	%ymm2, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpxor	%ymm2, %ymm5, %ymm8
	cmpq	$31, %rbx
	ja	.LBB4_5
.LBB4_6:
	vmovdqa	368(%rdi), %xmm5
	testq	%rbx, %rbx
	je	.LBB4_10
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	%rcx, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 96(%rsp)
	leaq	96(%rsp), %rdi
	movq	%rbx, %rdx
	vmovdqa	%ymm8, 32(%rsp)
	vmovdqa	%xmm5, (%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm5
	vmovdqa	64(%rsp), %ymm1
	vmovdqa	32(%rsp), %ymm0
	vpxor	96(%rsp), %ymm0, %ymm0
	cmpq	$17, %rbx
	jae	.LBB4_9
	vmovdqa	%xmm5, %xmm1
.LBB4_9:
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vpunpcklqdq	%ymm0, %ymm1, %ymm2
	vpunpckhqdq	%ymm0, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm1
	vpxor	%ymm1, %ymm2, %ymm1
	vpslldq	$8, %ymm1, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpsrldq	$8, %ymm1, %ymm1
	vpbroadcastq	.LCPI4_0(%rip), %ymm3
	vpclmulqdq	$16, %ymm3, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm3, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm8
	movq	%r12, %rcx
	movq	%r15, %rdi
	movq	%r14, %rdx
.LBB4_10:
	vmovq	%rdx, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0
	vextracti128	$1, %ymm8, %xmm1
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_0(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpand	.LCPI4_2(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vaesenc	16(%rdi), %xmm0, %xmm0
	vaesenc	32(%rdi), %xmm0, %xmm0
	vaesenc	48(%rdi), %xmm0, %xmm0
	vaesenc	64(%rdi), %xmm0, %xmm0
	vaesenc	80(%rdi), %xmm0, %xmm0
	vaesenc	96(%rdi), %xmm0, %xmm0
	vaesenc	112(%rdi), %xmm0, %xmm0
	vaesenc	128(%rdi), %xmm0, %xmm0
	vaesenc	144(%rdi), %xmm0, %xmm0
	vaesenc	160(%rdi), %xmm0, %xmm0
	vaesenc	176(%rdi), %xmm0, %xmm0
	vaesenc	192(%rdi), %xmm0, %xmm0
	vaesenc	208(%rdi), %xmm0, %xmm0
	vaesenclast	224(%rdi), %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movl	$1, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB4_11:
	vzeroupper
	retq
.Lfunc_end4:
	.size	haberdashery_sivmac_raptorlake_sign, .Lfunc_end4-haberdashery_sivmac_raptorlake_sign
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_0:
	.quad	-4467570830351532032
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.zero	8
	.quad	-4467570830351532032
.LCPI5_2:
	.quad	-1
	.quad	9223372036854775807
	.section	.text.haberdashery_sivmac_raptorlake_verify,"ax",@progbits
	.globl	haberdashery_sivmac_raptorlake_verify
	.p2align	4
	.type	haberdashery_sivmac_raptorlake_verify,@function
haberdashery_sivmac_raptorlake_verify:
	.cfi_startproc
	movabsq	$68719476736, %rax
	cmpq	%rax, %rdx
	seta	%r9b
	cmpq	$16, %r8
	setb	%r8b
	xorl	%eax, %eax
	orb	%r9b, %r8b
	jne	.LBB5_11
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$192, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovdqa	240(%rdi), %xmm6
	vpxor	%xmm8, %xmm8, %xmm8
	cmpq	$256, %rdx
	vmovdqa	%ymm6, 96(%rsp)
	jb	.LBB5_2
	vinserti128	$1, %xmm6, %ymm6, %ymm0
	vmovdqa	%ymm0, 32(%rsp)
	vbroadcasti128	256(%rdi), %ymm1
	vbroadcasti128	272(%rdi), %ymm2
	vbroadcasti128	288(%rdi), %ymm3
	vbroadcasti128	304(%rdi), %ymm4
	vbroadcasti128	320(%rdi), %ymm5
	vbroadcasti128	336(%rdi), %ymm6
	vbroadcasti128	352(%rdi), %ymm7
	vpbroadcastq	.LCPI5_0(%rip), %ymm0
	vmovdqa	%ymm0, (%rsp)
	movq	%rdx, %rbx
	.p2align	4
.LBB5_13:
	vmovdqa	%ymm8, 64(%rsp)
	vmovdqu	128(%rsi), %ymm9
	vmovdqu	160(%rsi), %ymm10
	vmovdqu	192(%rsi), %ymm11
	vmovdqu	224(%rsi), %ymm12
	vmovdqa	32(%rsp), %ymm0
	vpunpcklqdq	%ymm12, %ymm0, %ymm13
	vpunpckhqdq	%ymm12, %ymm0, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm12, %ymm0, %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm12, %ymm0, %ymm12
	vpunpcklqdq	%ymm11, %ymm1, %ymm15
	vpunpckhqdq	%ymm11, %ymm1, %ymm8
	vpxor	%ymm15, %ymm8, %ymm8
	vpclmulqdq	$0, %ymm11, %ymm1, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpxor	%ymm13, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm11, %ymm1, %ymm11
	vpxor	%ymm12, %ymm11, %ymm12
	vpunpcklqdq	%ymm10, %ymm2, %ymm11
	vpunpckhqdq	%ymm10, %ymm2, %ymm13
	vpxor	%ymm11, %ymm13, %ymm13
	vpclmulqdq	$0, %ymm10, %ymm2, %ymm11
	vpunpcklqdq	%ymm9, %ymm3, %ymm15
	vpunpckhqdq	%ymm9, %ymm3, %ymm0
	vpxor	%ymm0, %ymm15, %ymm0
	vpclmulqdq	$0, %ymm9, %ymm3, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vmovdqu	64(%rsi), %ymm15
	vpxor	%ymm11, %ymm14, %ymm11
	vmovdqu	96(%rsi), %ymm14
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm10, %ymm2, %ymm10
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpxor	%ymm0, %ymm13, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpclmulqdq	$17, %ymm9, %ymm3, %ymm8
	vpxor	%ymm8, %ymm10, %ymm8
	vpxor	%ymm8, %ymm12, %ymm8
	vpunpcklqdq	%ymm14, %ymm4, %ymm9
	vpunpckhqdq	%ymm14, %ymm4, %ymm10
	vpxor	%ymm9, %ymm10, %ymm9
	vpclmulqdq	$0, %ymm14, %ymm4, %ymm10
	vpunpcklqdq	%ymm15, %ymm5, %ymm12
	vpunpckhqdq	%ymm15, %ymm5, %ymm13
	vpxor	%ymm12, %ymm13, %ymm12
	vpclmulqdq	$0, %ymm15, %ymm5, %ymm13
	vpxor	%ymm13, %ymm10, %ymm10
	vmovdqu	32(%rsi), %ymm13
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm14, %ymm4, %ymm14
	vpclmulqdq	$1, %ymm12, %ymm12, %ymm12
	vpxor	%ymm12, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm15, %ymm5, %ymm12
	vpxor	%ymm12, %ymm14, %ymm12
	vpunpcklqdq	%ymm13, %ymm6, %ymm14
	vpunpckhqdq	%ymm13, %ymm6, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm13, %ymm6, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm11
	vpxor	%ymm11, %ymm9, %ymm9
	vpxor	%ymm0, %ymm9, %ymm0
	vmovdqa	64(%rsp), %ymm9
	vpxor	(%rsi), %ymm9, %ymm9
	vpclmulqdq	$17, %ymm13, %ymm6, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpxor	%ymm11, %ymm8, %ymm8
	vpunpcklqdq	%ymm9, %ymm7, %ymm11
	vpunpckhqdq	%ymm9, %ymm7, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm9, %ymm7, %ymm12
	vpxor	%ymm12, %ymm10, %ymm10
	vpclmulqdq	$17, %ymm9, %ymm7, %ymm9
	vpxor	%ymm9, %ymm8, %ymm8
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm9
	vpxor	%ymm10, %ymm9, %ymm9
	vpxor	%ymm0, %ymm9, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpslldq	$8, %ymm0, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpsrldq	$8, %ymm0, %ymm0
	vmovdqa	(%rsp), %ymm11
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm10
	vpshufd	$78, %ymm9, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpshufd	$78, %ymm9, %ymm10
	vpxor	%ymm0, %ymm10, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm8
	vpxor	%ymm0, %ymm8, %ymm8
	addq	$256, %rsi
	addq	$-256, %rbx
	cmpq	$255, %rbx
	ja	.LBB5_13
	vmovdqa	96(%rsp), %ymm6
	cmpq	$32, %rbx
	jae	.LBB5_4
	jmp	.LBB5_6
.LBB5_2:
	movq	%rdx, %rbx
	cmpq	$32, %rbx
	jb	.LBB5_6
.LBB5_4:
	vinserti128	$1, %xmm6, %ymm6, %ymm0
	vpbroadcastq	.LCPI5_0(%rip), %ymm1
	.p2align	4
.LBB5_5:
	addq	$-32, %rbx
	vpxor	(%rsi), %ymm8, %ymm2
	addq	$32, %rsi
	vpunpcklqdq	%ymm2, %ymm0, %ymm3
	vpunpckhqdq	%ymm2, %ymm0, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm0, %ymm4
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$17, %ymm2, %ymm0, %ymm2
	vpxor	%ymm2, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpxor	%ymm2, %ymm5, %ymm8
	cmpq	$31, %rbx
	ja	.LBB5_5
.LBB5_6:
	vmovdqu	(%rcx), %xmm5
	vmovdqa	368(%rdi), %xmm7
	testq	%rbx, %rbx
	je	.LBB5_10
	vmovdqa	%xmm5, 32(%rsp)
	movq	%rdx, %r14
	movq	%rdi, %r15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 128(%rsp)
	leaq	128(%rsp), %rdi
	movq	%rbx, %rdx
	vmovdqa	%ymm8, 64(%rsp)
	vmovdqa	%xmm7, (%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	(%rsp), %xmm7
	vmovdqa	96(%rsp), %ymm1
	vmovdqa	64(%rsp), %ymm0
	vpxor	128(%rsp), %ymm0, %ymm0
	cmpq	$17, %rbx
	jae	.LBB5_9
	vmovdqa	%xmm7, %xmm1
.LBB5_9:
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vpunpcklqdq	%ymm0, %ymm1, %ymm2
	vpunpckhqdq	%ymm0, %ymm1, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm0, %ymm1, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm1
	vpxor	%ymm1, %ymm2, %ymm1
	vpslldq	$8, %ymm1, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpsrldq	$8, %ymm1, %ymm1
	vpbroadcastq	.LCPI5_0(%rip), %ymm3
	vpclmulqdq	$16, %ymm3, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$16, %ymm3, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm8
	movq	%r15, %rdi
	movq	%r14, %rdx
	vmovdqa	32(%rsp), %xmm5
.LBB5_10:
	vmovq	%rdx, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0
	vextracti128	$1, %ymm8, %xmm1
	vpxor	%xmm0, %xmm8, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm7, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm7, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_0(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpand	.LCPI5_2(%rip), %xmm0, %xmm0
	vpxor	(%rdi), %xmm0, %xmm0
	vaesenc	16(%rdi), %xmm0, %xmm0
	vaesenc	32(%rdi), %xmm0, %xmm0
	vaesenc	48(%rdi), %xmm0, %xmm0
	vaesenc	64(%rdi), %xmm0, %xmm0
	vaesenc	80(%rdi), %xmm0, %xmm0
	vaesenc	96(%rdi), %xmm0, %xmm0
	vaesenc	112(%rdi), %xmm0, %xmm0
	vaesenc	128(%rdi), %xmm0, %xmm0
	vaesenc	144(%rdi), %xmm0, %xmm0
	vaesenc	160(%rdi), %xmm0, %xmm0
	vaesenc	176(%rdi), %xmm0, %xmm0
	vaesenc	192(%rdi), %xmm0, %xmm0
	vaesenc	208(%rdi), %xmm0, %xmm0
	vaesenclast	224(%rdi), %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB5_11:
	vzeroupper
	retq
.Lfunc_end5:
	.size	haberdashery_sivmac_raptorlake_verify, .Lfunc_end5-haberdashery_sivmac_raptorlake_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_raptorlake_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_raptorlake_is_supported
	.p2align	4
	.type	haberdashery_sivmac_raptorlake_is_supported,@function
haberdashery_sivmac_raptorlake_is_supported:
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
	.size	haberdashery_sivmac_raptorlake_is_supported, .Lfunc_end6-haberdashery_sivmac_raptorlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

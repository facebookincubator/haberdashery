# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.text._ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h63e08b08bcbefd39E,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h63e08b08bcbefd39E
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h63e08b08bcbefd39E,@function
_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h63e08b08bcbefd39E:
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
	.size	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h63e08b08bcbefd39E, .Lfunc_end0-_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h63e08b08bcbefd39E
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h65f75857e0649ee3E,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h65f75857e0649ee3E
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h65f75857e0649ee3E,@function
_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h65f75857e0649ee3E:
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
	.size	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h65f75857e0649ee3E, .Lfunc_end1-_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h65f75857e0649ee3E
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h47a4bce2b1f318d4E,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h47a4bce2b1f318d4E
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h47a4bce2b1f318d4E,@function
_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h47a4bce2b1f318d4E:
	.cfi_startproc
	movq	%rdi, %rax
	vmovaps	16(%rsi), %xmm0
	vxorps	(%rsi), %xmm0, %xmm0
	vmovaps	%xmm0, (%rdi)
	retq
.Lfunc_end2:
	.size	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h47a4bce2b1f318d4E, .Lfunc_end2-_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h47a4bce2b1f318d4E
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
.LCPI3_2:
	.quad	8589934594
	.quad	8589934594
.LCPI3_3:
	.quad	17179869188
	.quad	17179869188
.LCPI3_4:
	.quad	34359738376
	.quad	34359738376
.LCPI3_5:
	.quad	68719476752
	.quad	68719476752
.LCPI3_6:
	.quad	137438953504
	.quad	137438953504
.LCPI3_7:
	.quad	274877907008
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmdndk_raptorlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_raptorlake_init
	.p2align	4
	.type	haberdashery_aes256gcmdndk_raptorlake_init,@function
haberdashery_aes256gcmdndk_raptorlake_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB3_2
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpbroadcastd	.LCPI3_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm4
	vaesenclast	.LCPI3_1(%rip), %xmm4, %xmm4
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm1, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$255, %xmm2, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vaesenclast	%xmm6, %xmm5, %xmm5
	vpxor	%xmm1, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpslldq	$12, %xmm2, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpshufb	%xmm3, %xmm4, %xmm7
	vaesenclast	.LCPI3_2(%rip), %xmm7, %xmm7
	vpxor	%xmm2, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$12, %xmm4, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$255, %xmm5, %xmm8
	vaesenclast	%xmm6, %xmm8, %xmm8
	vpxor	%xmm4, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpslldq	$12, %xmm5, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpshufb	%xmm3, %xmm7, %xmm9
	vaesenclast	.LCPI3_3(%rip), %xmm9, %xmm9
	vpxor	%xmm5, %xmm8, %xmm8
	vpxor	%xmm8, %xmm9, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpslldq	$12, %xmm7, %xmm10
	vpxor	%xmm10, %xmm9, %xmm9
	vpshufd	$255, %xmm8, %xmm10
	vaesenclast	%xmm6, %xmm10, %xmm10
	vpxor	%xmm7, %xmm9, %xmm9
	vpxor	%xmm9, %xmm10, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpxor	%xmm11, %xmm10, %xmm10
	vpslldq	$12, %xmm8, %xmm11
	vpshufb	%xmm3, %xmm9, %xmm12
	vaesenclast	.LCPI3_4(%rip), %xmm12, %xmm12
	vpxor	%xmm11, %xmm10, %xmm10
	vpxor	%xmm8, %xmm10, %xmm10
	vpxor	%xmm10, %xmm12, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpslldq	$12, %xmm9, %xmm12
	vpxor	%xmm12, %xmm11, %xmm11
	vpshufd	$255, %xmm10, %xmm12
	vaesenclast	%xmm6, %xmm12, %xmm12
	vpxor	%xmm9, %xmm11, %xmm11
	vpxor	%xmm11, %xmm12, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpslldq	$12, %xmm10, %xmm13
	vpxor	%xmm13, %xmm12, %xmm12
	vpshufb	%xmm3, %xmm11, %xmm13
	vaesenclast	.LCPI3_5(%rip), %xmm13, %xmm13
	vpxor	%xmm10, %xmm12, %xmm12
	vpxor	%xmm12, %xmm13, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpslldq	$12, %xmm11, %xmm14
	vpxor	%xmm14, %xmm13, %xmm13
	vpshufd	$255, %xmm12, %xmm14
	vaesenclast	%xmm6, %xmm14, %xmm14
	vpxor	%xmm11, %xmm13, %xmm13
	vpxor	%xmm13, %xmm14, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpslldq	$12, %xmm12, %xmm15
	vpxor	%xmm15, %xmm14, %xmm14
	vpshufb	%xmm3, %xmm13, %xmm15
	vaesenclast	.LCPI3_6(%rip), %xmm15, %xmm15
	vpxor	%xmm12, %xmm14, %xmm14
	vpxor	%xmm14, %xmm15, %xmm14
	vpslldq	$4, %xmm13, %xmm15
	vpslldq	$8, %xmm13, %xmm3
	vpxor	%xmm3, %xmm15, %xmm3
	vpslldq	$12, %xmm13, %xmm15
	vpxor	%xmm3, %xmm15, %xmm3
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm6, %xmm15, %xmm6
	vpxor	%xmm3, %xmm13, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpslldq	$4, %xmm14, %xmm6
	vpslldq	$8, %xmm14, %xmm15
	vpxor	%xmm6, %xmm15, %xmm6
	vpslldq	$12, %xmm14, %xmm15
	vpxor	%xmm6, %xmm15, %xmm6
	vpshufb	.LCPI3_0(%rip), %xmm3, %xmm15
	vaesenclast	.LCPI3_7(%rip), %xmm15, %xmm15
	vpxor	%xmm6, %xmm14, %xmm6
	vpxor	%xmm6, %xmm15, %xmm6
	vmovdqa	%xmm0, (%rdi)
	vmovdqa	%xmm1, 16(%rdi)
	vmovdqa	%xmm2, 32(%rdi)
	vmovdqa	%xmm4, 48(%rdi)
	vmovdqa	%xmm5, 64(%rdi)
	vmovdqa	%xmm7, 80(%rdi)
	vmovdqa	%xmm8, 96(%rdi)
	vmovdqa	%xmm9, 112(%rdi)
	vmovdqa	%xmm10, 128(%rdi)
	vmovdqa	%xmm11, 144(%rdi)
	vmovdqa	%xmm12, 160(%rdi)
	vmovdqa	%xmm13, 176(%rdi)
	vmovdqa	%xmm14, 192(%rdi)
	vmovdqa	%xmm3, 208(%rdi)
	vmovdqa	%xmm6, 224(%rdi)
.LBB3_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndk_raptorlake_init, .Lfunc_end3-haberdashery_aes256gcmdndk_raptorlake_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_0:
	.long	1
.LCPI4_5:
	.long	0x00000002
.LCPI4_6:
	.long	0x0c0f0e0d
.LCPI4_7:
	.long	0x00000004
.LCPI4_8:
	.long	0x00000008
.LCPI4_9:
	.long	0x00000010
.LCPI4_10:
	.long	0x00000020
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_1:
	.quad	2
	.quad	0
.LCPI4_2:
	.quad	4
	.quad	0
.LCPI4_3:
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
.LCPI4_4:
	.quad	4294967297
	.quad	4294967297
.LCPI4_11:
	.quad	274877907008
	.quad	274877907008
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
.LCPI4_13:
	.zero	8
	.quad	-4467570830351532032
.LCPI4_14:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
.LCPI4_15:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
.LCPI4_16:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
.LCPI4_17:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
.LCPI4_18:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
.LCPI4_19:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
.LCPI4_20:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI4_21:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI4_22:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI4_23:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI4_24:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI4_25:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
.LCPI4_26:
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
.LCPI4_27:
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
.LCPI4_28:
	.zero	16
	.section	.rodata,"a",@progbits
.LCPI4_29:
	.byte	2
	.byte	0
.LCPI4_30:
	.byte	4
	.byte	0
.LCPI4_32:
	.byte	8
	.byte	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_31:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndk_raptorlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_raptorlake_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_raptorlake_encrypt,@function
haberdashery_aes256gcmdndk_raptorlake_encrypt:
	.cfi_startproc
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
	subq	$432, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	480(%rsp), %r15
	xorl	%eax, %eax
	cmpq	496(%rsp), %r15
	jne	.LBB4_46
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB4_46
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB4_46
	cmpq	$24, %rdx
	jne	.LBB4_46
	cmpq	$16, 512(%rsp)
	jne	.LBB4_46
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vpbroadcastd	.LCPI4_0(%rip), %xmm1
	vpinsrd	$1, 12(%rsi), %xmm1, %xmm1
	vpinsrd	$2, 16(%rsi), %xmm1, %xmm1
	vpinsrd	$3, 20(%rsi), %xmm1, %xmm1
	vmovaps	(%rdi), %xmm2
	vxorps	%xmm0, %xmm2, %xmm0
	vxorps	%xmm1, %xmm2, %xmm1
	vpmovsxbq	.LCPI4_29(%rip), %xmm3
	vxorps	%xmm3, %xmm0, %xmm2
	vxorps	%xmm3, %xmm1, %xmm3
	vpmovsxbq	.LCPI4_30(%rip), %xmm5
	vxorps	%xmm5, %xmm0, %xmm4
	vxorps	%xmm5, %xmm1, %xmm5
	vmovaps	16(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	32(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	48(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm2, %xmm1
	vpxor	%xmm0, %xmm1, %xmm5
	vpxor	%xmm0, %xmm4, %xmm7
	vpslldq	$4, %xmm5, %xmm0
	vpslldq	$8, %xmm5, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpbroadcastd	.LCPI4_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm7, %xmm3
	vaesenclast	.LCPI4_4(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vmovdqa	%xmm5, 176(%rsp)
	vaesenc	%xmm7, %xmm5, %xmm1
	vpslldq	$4, %xmm7, %xmm2
	vpslldq	$8, %xmm7, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm7, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm6, %xmm3
	vpxor	%xmm11, %xmm11, %xmm11
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm7, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm8
	vbroadcastss	.LCPI4_5(%rip), %xmm3
	vbroadcastss	.LCPI4_6(%rip), %xmm2
	vmovdqa	%xmm6, %xmm9
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovdqa	%xmm8, (%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm10, %xmm6
	vaesenclast	%xmm11, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vbroadcastss	.LCPI4_7(%rip), %xmm3
	vmovaps	%xmm10, 112(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm12
	vaesenclast	%xmm3, %xmm12, %xmm12
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovaps	%xmm6, 160(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm6, %xmm3, %xmm3
	vpshufd	$255, %xmm12, %xmm10
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpxor	%xmm3, %xmm10, %xmm10
	#NO_APP
	vbroadcastss	.LCPI4_8(%rip), %xmm3
	vmovdqa	%xmm12, %xmm8
	#APP
	vaesenc	%xmm12, %xmm1, %xmm1
	vpslldq	$4, %xmm12, %xmm4
	vpslldq	$8, %xmm12, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm12, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm12, %xmm4
	vpshufb	%xmm2, %xmm10, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovaps	%xmm10, 144(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$255, %xmm6, %xmm13
	vaesenclast	%xmm11, %xmm13, %xmm13
	vpxor	%xmm3, %xmm13, %xmm13
	#NO_APP
	vbroadcastss	.LCPI4_9(%rip), %xmm3
	vmovaps	%xmm6, 96(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm13, %xmm14
	vaesenclast	%xmm3, %xmm14, %xmm14
	vpxor	%xmm4, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm3
	vpslldq	$8, %xmm13, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm13, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm13, %xmm3
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm11, %xmm15, %xmm15
	vpxor	%xmm3, %xmm15, %xmm15
	#NO_APP
	vbroadcastss	.LCPI4_10(%rip), %xmm3
	vmovaps	%xmm14, 288(%rsp)
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm4
	vpslldq	$8, %xmm14, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm14, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm14, %xmm4
	vpshufb	%xmm2, %xmm15, %xmm12
	vaesenclast	%xmm3, %xmm12, %xmm12
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vmovdqa	%xmm13, %xmm5
	vpslldq	$4, %xmm15, %xmm2
	vpunpcklqdq	%xmm15, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm15, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm12, %xmm3
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpxor	%xmm2, %xmm15, %xmm2
	vpxor	%xmm2, %xmm3, %xmm10
	vpslldq	$4, %xmm12, %xmm2
	vpunpcklqdq	%xmm12, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm10, %xmm0
	vaesenclast	.LCPI4_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm12, %xmm2
	vpxor	%xmm2, %xmm0, %xmm2
	vmovaps	%xmm15, 272(%rsp)
	vaesenc	%xmm15, %xmm1, %xmm0
	vmovaps	%xmm12, 256(%rsp)
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	%xmm2, 80(%rsp)
	vaesenclast	%xmm2, %xmm0, %xmm0
	vpshufb	.LCPI4_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpblendd	$12, %xmm1, %xmm3, %xmm1
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpbroadcastq	.LCPI4_31(%rip), %xmm13
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm12
	vpclmulqdq	$16, %xmm15, %xmm12, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm12, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm12, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm12, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, 368(%rsp)
	vpclmulqdq	$0, %xmm12, %xmm12, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm12, %xmm12, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpclmulqdq	$16, %xmm15, %xmm11, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm11, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm15, %xmm11, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm11, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm14
	testq	%r8, %r8
	vmovdqa	%xmm5, 240(%rsp)
	vmovdqa	%xmm7, 128(%rsp)
	vmovdqa	%xmm9, 192(%rsp)
	vmovdqa	%xmm8, 208(%rsp)
	vmovdqa	%xmm10, 224(%rsp)
	je	.LBB4_6
	cmpq	$96, %r8
	jb	.LBB4_11
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI4_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm1, %xmm5
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm4
	vmovdqa	%xmm6, %xmm8
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm12, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm12, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm12, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	%xmm12, %xmm10
	vpclmulqdq	$17, %xmm2, %xmm12, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm11, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm11, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm11, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vmovdqa	%xmm11, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm11, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm4
	vmovdqa	%xmm14, %xmm13
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vmovdqa	368(%rsp), %xmm12
	vpclmulqdq	$0, %xmm6, %xmm12, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm12, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm12, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm12, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	vmovdqa	%xmm8, %xmm14
	vmovdqa	%xmm7, %xmm11
	cmpq	$96, %rsi
	jb	.LBB4_19
	.p2align	4
.LBB4_18:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI4_31(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm0, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm3
	vpshufb	%xmm0, %xmm5, %xmm1
	vpshufb	%xmm0, %xmm6, %xmm2
	vpshufb	%xmm0, %xmm7, %xmm4
	vpshufb	%xmm0, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm15, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm15, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm15, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm10, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm10, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm11, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm11, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm11, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm11, %xmm1
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm13, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm13, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm13, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB4_18
.LBB4_19:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpbroadcastq	.LCPI4_31(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm8, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm3
	vmovdqa	208(%rsp), %xmm4
	vmovdqa	240(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm7
	vmovdqa	192(%rsp), %xmm2
	vmovdqa	(%rsp), %xmm9
	vmovdqa	%xmm10, %xmm12
	vmovdqa	%xmm14, %xmm6
	vmovdqa	%xmm13, %xmm14
	vmovdqa	224(%rsp), %xmm10
	vmovdqa	%xmm8, %xmm13
	cmpq	$16, %rsi
	jae	.LBB4_20
.LBB4_13:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB4_15
	jmp	.LBB4_7
.LBB4_6:
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm9, %xmm2
	vmovdqa	(%rsp), %xmm9
	jmp	.LBB4_7
.LBB4_11:
	movq	%r8, %rsi
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm9, %xmm2
	vmovdqa	(%rsp), %xmm9
	cmpq	$16, %rsi
	jb	.LBB4_13
.LBB4_20:
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB4_21
	cmpq	$16, %rdx
	jae	.LBB4_23
.LBB4_14:
	testq	%rdx, %rdx
	je	.LBB4_7
.LBB4_15:
	vmovdqa	%xmm3, 32(%rsp)
	vmovdqa	%xmm14, 304(%rsp)
	vmovdqa	%xmm11, 320(%rsp)
	vmovdqa	%xmm6, 336(%rsp)
	vmovdqa	%xmm12, 352(%rsp)
	vmovdqa	%xmm15, 64(%rsp)
	movq	%r9, %r14
	movq	%r8, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	48(%rsp), %xmm0
	testq	%r15, %r15
	je	.LBB4_16
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	128(%rsp), %xmm7
	vmovdqa	192(%rsp), %xmm2
	vmovdqa	(%rsp), %xmm9
	vmovdqa	208(%rsp), %xmm4
	vmovdqa	240(%rsp), %xmm5
	vmovdqa	224(%rsp), %xmm10
	vpbroadcastq	.LCPI4_31(%rip), %xmm13
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	352(%rsp), %xmm12
	vmovdqa	336(%rsp), %xmm6
	vmovdqa	320(%rsp), %xmm11
	vmovdqa	304(%rsp), %xmm14
	vmovdqa	32(%rsp), %xmm1
	jb	.LBB4_46
	movq	%rbx, %r8
	movq	%r14, %r9
	vpshufb	.LCPI4_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vmovdqa	%xmm2, %xmm8
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vmovdqa	%xmm8, %xmm2
	jmp	.LBB4_29
.LBB4_21:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI4_12(%rip), %xmm0, %xmm0
	addq	$16, %rcx
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vmovdqa	%xmm2, %xmm8
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	vmovdqa	%xmm8, %xmm2
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB4_14
.LBB4_23:
	vmovdqa	%xmm5, %xmm10
	vmovdqa	%xmm2, %xmm9
	vmovdqa	%xmm4, %xmm8
	vmovdqa	.LCPI4_12(%rip), %xmm0
	.p2align	4
.LBB4_24:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm13, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	cmpq	$15, %rsi
	ja	.LBB4_24
	movq	%rsi, %rdx
	vmovdqa	%xmm8, %xmm4
	vmovdqa	%xmm9, %xmm2
	vmovdqa	%xmm10, %xmm5
	vmovdqa	(%rsp), %xmm9
	vmovdqa	224(%rsp), %xmm10
	testq	%rdx, %rdx
	jne	.LBB4_15
.LBB4_7:
	testq	%r15, %r15
	je	.LBB4_8
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB4_46
.LBB4_29:
	movq	488(%rsp), %rdx
	cmpq	$96, %r15
	vmovdqa	%xmm15, 64(%rsp)
	jb	.LBB4_30
	vmovdqa	%xmm3, 32(%rsp)
	vmovdqa	%xmm11, 320(%rsp)
	vmovdqa	%xmm6, 336(%rsp)
	vmovdqa	%xmm12, 352(%rsp)
	leaq	96(%r9), %rcx
	leaq	96(%rdx), %rax
	vmovdqa	%xmm2, %xmm6
	vmovdqa	%xmm5, %xmm12
	vmovaps	176(%rsp), %xmm5
	vxorps	.LCPI4_14(%rip), %xmm5, %xmm0
	vxorps	.LCPI4_15(%rip), %xmm5, %xmm1
	vxorps	.LCPI4_16(%rip), %xmm5, %xmm2
	vxorps	.LCPI4_17(%rip), %xmm5, %xmm3
	vmovdqa	%xmm4, %xmm8
	vxorps	.LCPI4_18(%rip), %xmm5, %xmm4
	vxorps	.LCPI4_19(%rip), %xmm5, %xmm5
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm5, %xmm5
	#NO_APP
	vmovaps	288(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	272(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	256(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	(%r9), %xmm0, %xmm12
	vpxor	16(%r9), %xmm1, %xmm6
	vpxor	32(%r9), %xmm2, %xmm8
	vpxor	48(%r9), %xmm3, %xmm10
	vpxor	64(%r9), %xmm4, %xmm11
	vpxor	80(%r9), %xmm5, %xmm1
	vmovdqu	%xmm12, (%rdx)
	vmovdqu	%xmm6, 16(%rdx)
	vmovdqu	%xmm8, 32(%rdx)
	vmovdqu	%xmm10, 48(%rdx)
	leaq	-96(%r15), %rbx
	vmovdqu	%xmm11, 64(%rdx)
	vmovdqu	%xmm1, 80(%rdx)
	vpmovsxbq	.LCPI4_32(%rip), %xmm0
	cmpq	$96, %rbx
	jb	.LBB4_34
	vmovdqa	%xmm14, 304(%rsp)
	vmovdqa	32(%rsp), %xmm9
	.p2align	4
.LBB4_36:
	vmovdqa	%xmm10, 384(%rsp)
	vmovdqa	%xmm8, 400(%rsp)
	vmovdqa	%xmm6, 16(%rsp)
	vmovdqa	.LCPI4_12(%rip), %xmm10
	vpshufb	%xmm10, %xmm0, %xmm2
	vpaddd	.LCPI4_21(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm4
	vpaddd	.LCPI4_1(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm5
	vpaddd	.LCPI4_22(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm6
	vpaddd	.LCPI4_2(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vpaddd	.LCPI4_23(%rip), %xmm0, %xmm3
	vpshufb	%xmm10, %xmm3, %xmm8
	vpshufb	%xmm10, %xmm12, %xmm3
	vpxor	%xmm3, %xmm9, %xmm3
	vmovdqa	%xmm3, 32(%rsp)
	vpshufb	%xmm10, %xmm1, %xmm9
	vmovdqa	176(%rsp), %xmm3
	vpxor	%xmm2, %xmm3, %xmm12
	vpxor	%xmm4, %xmm3, %xmm13
	vpxor	%xmm5, %xmm3, %xmm14
	vpxor	%xmm6, %xmm3, %xmm15
	vpxor	%xmm7, %xmm3, %xmm1
	vpxor	%xmm3, %xmm8, %xmm2
	vmovaps	128(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm12, %xmm12
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	#NO_APP
	vxorps	%xmm4, %xmm4, %xmm4
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vmovaps	192(%rsp), %xmm8
	vmovaps	64(%rsp), %xmm3
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpshufb	%xmm10, %xmm11, %xmm7
	vmovaps	(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovaps	112(%rsp), %xmm3
	vmovaps	352(%rsp), %xmm9
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	384(%rsp), %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vmovaps	160(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	208(%rsp), %xmm3
	vmovaps	336(%rsp), %xmm9
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	400(%rsp), %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vmovaps	144(%rsp), %xmm3
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	#NO_APP
	vmovaps	96(%rsp), %xmm3
	vmovaps	320(%rsp), %xmm9
	#APP
	vaesenc	%xmm3, %xmm12, %xmm12
	vaesenc	%xmm3, %xmm13, %xmm13
	vaesenc	%xmm3, %xmm14, %xmm14
	vaesenc	%xmm3, %xmm15, %xmm15
	vaesenc	%xmm3, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm9, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm9, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovdqa	16(%rsp), %xmm3
	vpshufb	%xmm10, %xmm3, %xmm7
	vmovaps	240(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovaps	288(%rsp), %xmm9
	vmovaps	304(%rsp), %xmm3
	#APP
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm7, %xmm8
	vpxor	%xmm4, %xmm8, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	#NO_APP
	vmovaps	272(%rsp), %xmm7
	#APP
	vaesenc	%xmm7, %xmm12, %xmm12
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	vaesenc	%xmm7, %xmm15, %xmm15
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	#NO_APP
	vmovaps	256(%rsp), %xmm8
	vmovaps	368(%rsp), %xmm3
	vmovaps	32(%rsp), %xmm9
	#APP
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm7, %xmm7, %xmm7
	vpunpcklqdq	%xmm5, %xmm7, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpunpckhqdq	%xmm7, %xmm5, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpbroadcastq	.LCPI4_31(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpshufd	$78, %xmm3, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vmovaps	224(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	vaesenc	%xmm5, %xmm15, %xmm15
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	#NO_APP
	vmovdqa	80(%rsp), %xmm5
	#APP
	vaesenclast	%xmm5, %xmm12, %xmm12
	vaesenclast	%xmm5, %xmm13, %xmm13
	vaesenclast	%xmm5, %xmm14, %xmm14
	vaesenclast	%xmm5, %xmm15, %xmm15
	vaesenclast	%xmm5, %xmm1, %xmm1
	vaesenclast	%xmm5, %xmm2, %xmm2
	#NO_APP
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm3
	vpxor	(%rcx), %xmm12, %xmm12
	vpxor	16(%rcx), %xmm13, %xmm6
	vpxor	32(%rcx), %xmm14, %xmm8
	vpxor	48(%rcx), %xmm15, %xmm10
	vpxor	64(%rcx), %xmm1, %xmm11
	vpxor	80(%rcx), %xmm2, %xmm1
	vpxor	%xmm3, %xmm4, %xmm9
	addq	$96, %rcx
	vmovdqu	%xmm12, (%rax)
	vmovdqu	%xmm6, 16(%rax)
	vmovdqu	%xmm8, 32(%rax)
	vmovdqu	%xmm10, 48(%rax)
	vmovdqu	%xmm11, 64(%rax)
	vmovdqu	%xmm1, 80(%rax)
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI4_24(%rip), %xmm0, %xmm0
	cmpq	$95, %rbx
	ja	.LBB4_36
	vmovdqa	%xmm9, 32(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	vpbroadcastq	.LCPI4_31(%rip), %xmm13
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	304(%rsp), %xmm14
	jmp	.LBB4_38
.LBB4_8:
	vmovdqa	%xmm9, %xmm8
	vmovdqa	%xmm2, %xmm9
	vmovdqa	%xmm4, %xmm10
	vmovdqa	160(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	80(%rsp), %xmm11
	jmp	.LBB4_9
.LBB4_30:
	vpmovsxbq	.LCPI4_29(%rip), %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	movq	%r15, %rbx
	movq	%r8, %r12
	cmpq	$16, %rbx
	jae	.LBB4_39
.LBB4_32:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	16(%rsp), %xmm7
	jmp	.LBB4_41
.LBB4_16:
	movq	%rbx, %r8
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	128(%rsp), %xmm7
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	160(%rsp), %xmm4
	vmovdqa	208(%rsp), %xmm10
	vmovdqa	144(%rsp), %xmm14
	vmovdqa	96(%rsp), %xmm12
	vmovdqa	80(%rsp), %xmm11
	vpbroadcastq	.LCPI4_31(%rip), %xmm13
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	32(%rsp), %xmm1
	jmp	.LBB4_44
.LBB4_34:
	vmovdqa	%xmm0, 16(%rsp)
	vpbroadcastq	.LCPI4_31(%rip), %xmm13
.LBB4_38:
	vmovdqa	.LCPI4_12(%rip), %xmm3
	vpshufb	%xmm3, %xmm12, %xmm0
	vpxor	32(%rsp), %xmm0, %xmm0
	vpshufb	%xmm3, %xmm6, %xmm2
	vpshufb	%xmm3, %xmm8, %xmm4
	vpshufb	%xmm3, %xmm10, %xmm5
	vpshufb	%xmm3, %xmm11, %xmm6
	vpshufb	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovdqa	352(%rsp), %xmm10
	vpclmulqdq	$0, %xmm6, %xmm10, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm6, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm6, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm10, %xmm6
	vpxor	%xmm1, %xmm6, %xmm1
	vmovdqa	336(%rsp), %xmm9
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vmovdqa	320(%rsp), %xmm10
	vpclmulqdq	$0, %xmm4, %xmm10, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm3
	vpclmulqdq	$1, %xmm4, %xmm10, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$16, %xmm4, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm10, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vmovdqa	368(%rsp), %xmm8
	vpclmulqdq	$0, %xmm0, %xmm8, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$1, %xmm0, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm8, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm8, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm3
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa	208(%rsp), %xmm4
	vmovdqa	240(%rsp), %xmm5
	movq	%r8, %r12
	cmpq	$16, %rbx
	jb	.LBB4_32
.LBB4_39:
	vmovdqa	256(%rsp), %xmm12
	vmovdqa	224(%rsp), %xmm11
	vmovdqa	80(%rsp), %xmm13
	vpbroadcastq	.LCPI4_31(%rip), %xmm10
	vmovdqa	64(%rsp), %xmm8
	vmovdqa	16(%rsp), %xmm7
	vmovdqa	128(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm1
	vmovdqa	112(%rsp), %xmm14
	vmovdqa	96(%rsp), %xmm6
	.p2align	4
.LBB4_40:
	vmovdqa	.LCPI4_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm7, %xmm2
	vpxor	176(%rsp), %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	192(%rsp), %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	160(%rsp), %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	144(%rsp), %xmm2, %xmm2
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	288(%rsp), %xmm2, %xmm2
	vaesenc	272(%rsp), %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenclast	%xmm13, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vmovdqu	%xmm2, (%rdx)
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm3
	vmovdqa	%xmm4, %xmm15
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm4
	vmovdqa	%xmm5, %xmm0
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vmovdqa	%xmm0, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpshufd	$78, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vmovdqa	%xmm15, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm3, %xmm3
	vpxor	%xmm2, %xmm3, %xmm3
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %r14
	addq	$-16, %rbx
	vpaddd	.LCPI4_21(%rip), %xmm7, %xmm7
	movq	%r14, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rbx
	ja	.LBB4_40
.LBB4_41:
	vmovdqa	%xmm7, 16(%rsp)
	testq	%rbx, %rbx
	je	.LBB4_42
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r13
	movq	%rbx, %rdx
	vmovdqa	%xmm3, 32(%rsp)
	callq	*%r13
	vmovdqa	16(%rsp), %xmm0
	vpshufb	.LCPI4_12(%rip), %xmm0, %xmm0
	vpxor	176(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	224(%rsp), %xmm0, %xmm0
	vaesenclast	80(%rsp), %xmm0, %xmm0
	vpxor	48(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	vmovdqa	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%r13
	vmovaps	16(%rsp), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*%r13
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	80(%rsp), %xmm11
	vmovdqa	96(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm14
	vmovdqa	208(%rsp), %xmm10
	vmovdqa	160(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	(%rsp), %xmm8
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	128(%rsp), %xmm7
	vmovdqa	176(%rsp), %xmm6
	vmovdqa	48(%rsp), %xmm0
	movq	%r12, %r8
	vpbroadcastq	.LCPI4_31(%rip), %xmm13
	vmovdqa	64(%rsp), %xmm15
.LBB4_44:
	vpshufb	.LCPI4_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm13, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm3
	jmp	.LBB4_45
.LBB4_42:
	vmovdqa	%xmm4, %xmm10
	movq	%r12, %r8
	vmovdqa	80(%rsp), %xmm11
	vpbroadcastq	.LCPI4_31(%rip), %xmm13
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	128(%rsp), %xmm7
	vmovdqa	192(%rsp), %xmm9
	vmovdqa	(%rsp), %xmm8
	vmovdqa	160(%rsp), %xmm4
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	176(%rsp), %xmm6
.LBB4_9:
	vmovdqa	96(%rsp), %xmm12
	vmovdqa	144(%rsp), %xmm14
.LBB4_45:
	vmovq	%r8, %xmm0
	vmovq	%r15, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	.LCPI4_25(%rip), %xmm6, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	224(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI4_26(%rip), %xmm1, %xmm1
	vaesenclast	%xmm11, %xmm3, %xmm3
	vpshufb	.LCPI4_27(%rip), %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI4_12(%rip), %xmm0, %xmm0
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	movq	504(%rsp), %rax
	vmovdqu	%xmm0, (%rax)
	movl	$1, %eax
.LBB4_46:
	addq	$432, %rsp
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
	retq
.Lfunc_end4:
	.size	haberdashery_aes256gcmdndk_raptorlake_encrypt, .Lfunc_end4-haberdashery_aes256gcmdndk_raptorlake_encrypt
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_0:
	.long	1
.LCPI5_5:
	.long	0x00000002
.LCPI5_6:
	.long	0x0c0f0e0d
.LCPI5_7:
	.long	0x00000004
.LCPI5_8:
	.long	0x00000008
.LCPI5_9:
	.long	0x00000010
.LCPI5_10:
	.long	0x00000020
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.quad	2
	.quad	0
.LCPI5_2:
	.quad	4
	.quad	0
.LCPI5_3:
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
.LCPI5_4:
	.quad	4294967297
	.quad	4294967297
.LCPI5_11:
	.quad	274877907008
	.quad	274877907008
.LCPI5_12:
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
.LCPI5_13:
	.zero	8
	.quad	-4467570830351532032
.LCPI5_14:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI5_15:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI5_16:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI5_17:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI5_18:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
.LCPI5_19:
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
.LCPI5_20:
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
.LCPI5_21:
	.zero	16
	.section	.rodata,"a",@progbits
.LCPI5_22:
	.byte	2
	.byte	0
.LCPI5_23:
	.byte	4
	.byte	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_24:
	.quad	-4467570830351532032
	.section	.text.haberdashery_aes256gcmdndk_raptorlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_raptorlake_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_raptorlake_decrypt,@function
haberdashery_aes256gcmdndk_raptorlake_decrypt:
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
	movq	544(%rsp), %r15
	xorl	%eax, %eax
	cmpq	576(%rsp), %r15
	jne	.LBB5_44
	movq	%r15, %r10
	shrq	$5, %r10
	cmpq	$2147483646, %r10
	ja	.LBB5_44
	movabsq	$2305843009213693950, %r10
	cmpq	%r10, %r8
	ja	.LBB5_44
	cmpq	$24, %rdx
	jne	.LBB5_44
	cmpq	$16, 560(%rsp)
	jne	.LBB5_44
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vpbroadcastd	.LCPI5_0(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpinsrd	$2, 16(%rsi), %xmm2, %xmm2
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vpinsrd	$3, 20(%rsi), %xmm2, %xmm1
	vmovaps	(%rdi), %xmm2
	vxorps	%xmm0, %xmm2, %xmm0
	vxorps	%xmm1, %xmm2, %xmm1
	vpmovsxbq	.LCPI5_22(%rip), %xmm15
	vxorps	%xmm0, %xmm15, %xmm2
	vxorps	%xmm1, %xmm15, %xmm3
	vpmovsxbq	.LCPI5_23(%rip), %xmm5
	vxorps	%xmm5, %xmm0, %xmm4
	vxorps	%xmm5, %xmm1, %xmm5
	vmovaps	16(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	32(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	48(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm3, %xmm2, %xmm1
	vpxor	%xmm0, %xmm1, %xmm13
	vpxor	%xmm0, %xmm4, %xmm4
	vpslldq	$4, %xmm13, %xmm0
	vpslldq	$8, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$12, %xmm13, %xmm1
	vpxor	%xmm1, %xmm0, %xmm1
	vpbroadcastd	.LCPI5_6(%rip), %xmm0
	vpshufb	%xmm0, %xmm4, %xmm2
	vaesenclast	.LCPI5_4(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm13, %xmm1
	vpxor	%xmm1, %xmm2, %xmm7
	vaesenc	%xmm4, %xmm13, %xmm1
	vpslldq	$4, %xmm4, %xmm2
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm7, %xmm3
	vpxor	%xmm9, %xmm9, %xmm9
	vaesenclast	%xmm9, %xmm3, %xmm3
	vmovdqa	%xmm4, 176(%rsp)
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm10
	vbroadcastss	.LCPI5_5(%rip), %xmm3
	vbroadcastss	.LCPI5_6(%rip), %xmm2
	vmovdqa	%xmm7, 160(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm10, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	vmovdqa	%xmm10, 208(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm10, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm10, %xmm3
	vpshufd	$255, %xmm6, %xmm8
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI5_7(%rip), %xmm3
	vmovaps	%xmm6, 128(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm7
	vaesenclast	%xmm3, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovaps	%xmm8, 144(%rsp)
	#APP
	vaesenc	%xmm8, %xmm1, %xmm1
	vpslldq	$4, %xmm8, %xmm3
	vpslldq	$8, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm8, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm3, %xmm8, %xmm3
	vpshufd	$255, %xmm7, %xmm6
	vaesenclast	%xmm9, %xmm6, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	#NO_APP
	vbroadcastss	.LCPI5_8(%rip), %xmm3
	vmovaps	%xmm7, 112(%rsp)
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm4
	vpslldq	$8, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm7, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm7, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm6, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpxor	%xmm4, %xmm10, %xmm10
	#NO_APP
	vmovaps	%xmm6, 96(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm6, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm6, %xmm3, %xmm3
	vpshufd	$255, %xmm10, %xmm7
	vaesenclast	%xmm9, %xmm7, %xmm7
	vpxor	%xmm3, %xmm7, %xmm7
	#NO_APP
	vbroadcastss	.LCPI5_9(%rip), %xmm3
	vmovaps	%xmm10, 192(%rsp)
	#APP
	vaesenc	%xmm10, %xmm1, %xmm1
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm4, %xmm10, %xmm4
	vpshufb	%xmm2, %xmm7, %xmm6
	vaesenclast	%xmm3, %xmm6, %xmm6
	vpxor	%xmm4, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vpslldq	$4, %xmm7, %xmm3
	vpslldq	$8, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpslldq	$12, %xmm7, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpxor	%xmm7, %xmm3, %xmm3
	vpshufd	$255, %xmm6, %xmm8
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpxor	%xmm3, %xmm8, %xmm8
	#NO_APP
	vbroadcastss	.LCPI5_10(%rip), %xmm3
	vmovaps	%xmm6, 288(%rsp)
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vpslldq	$4, %xmm6, %xmm4
	vpslldq	$8, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm6, %xmm4, %xmm4
	vpshufb	%xmm2, %xmm8, %xmm12
	vaesenclast	%xmm3, %xmm12, %xmm12
	vpxor	%xmm4, %xmm12, %xmm12
	#NO_APP
	vpslldq	$4, %xmm8, %xmm2
	vpunpcklqdq	%xmm8, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm8, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$255, %xmm12, %xmm3
	vaesenclast	%xmm9, %xmm3, %xmm3
	vpxor	%xmm2, %xmm8, %xmm2
	vpxor	%xmm2, %xmm3, %xmm4
	vpslldq	$4, %xmm12, %xmm2
	vpunpcklqdq	%xmm12, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vinsertps	$55, %xmm12, %xmm0, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufb	%xmm0, %xmm4, %xmm0
	vaesenclast	.LCPI5_11(%rip), %xmm0, %xmm0
	vpxor	%xmm2, %xmm12, %xmm2
	vpxor	%xmm2, %xmm0, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm3, %xmm0, %xmm0
	vpshufb	.LCPI5_12(%rip), %xmm0, %xmm0
	vpsrlq	$63, %xmm0, %xmm1
	vpaddq	%xmm0, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqa	%xmm2, (%rsp)
	vpblendd	$12, %xmm1, %xmm9, %xmm1
	vmovdqa	%xmm4, %xmm9
	vpsllq	$63, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm10, %xmm0
	vpbroadcastq	.LCPI5_24(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm10, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm10, %xmm5, %xmm0
	vpclmulqdq	$1, %xmm10, %xmm5, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm5, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm5, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm14
	vpclmulqdq	$0, %xmm14, %xmm14, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm14, %xmm14, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm11
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm1
	vpshufd	$78, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm4
	vpclmulqdq	$16, %xmm10, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm10, %xmm4, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpclmulqdq	$0, %xmm10, %xmm4, %xmm1
	vpslldq	$8, %xmm0, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpsrldq	$8, %xmm0, %xmm0
	vpclmulqdq	$17, %xmm10, %xmm4, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 400(%rsp)
	movq	552(%rsp), %r12
	testq	%r8, %r8
	vmovaps	%xmm8, 272(%rsp)
	vmovaps	%xmm12, 256(%rsp)
	vmovdqa	%xmm9, 240(%rsp)
	vmovdqa	%xmm3, 224(%rsp)
	vmovdqa	%xmm10, 48(%rsp)
	vmovdqa	%xmm11, 384(%rsp)
	vmovdqa	%xmm4, 368(%rsp)
	vmovdqa	%xmm13, 80(%rsp)
	vmovdqa	%xmm7, 32(%rsp)
	je	.LBB5_36
	cmpq	$96, %r8
	jb	.LBB5_7
	vmovdqu	32(%rcx), %xmm1
	vmovdqu	48(%rcx), %xmm2
	vmovdqu	64(%rcx), %xmm3
	vmovdqa	%xmm4, %xmm0
	vmovdqu	80(%rcx), %xmm4
	vmovdqa	.LCPI5_12(%rip), %xmm12
	vmovdqa	%xmm5, %xmm8
	vpshufb	%xmm12, %xmm1, %xmm5
	vpshufb	%xmm12, %xmm2, %xmm1
	vpshufb	%xmm12, %xmm3, %xmm2
	vpshufb	%xmm12, %xmm4, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm10, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm10, %xmm6
	vpclmulqdq	$16, %xmm3, %xmm10, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm10, %xmm3
	vpclmulqdq	$0, %xmm2, %xmm8, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm8, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa	%xmm14, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm8, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm9, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm9, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vpclmulqdq	$0, %xmm5, %xmm0, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm9, %xmm7
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$1, %xmm5, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm0, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vmovdqu	(%rcx), %xmm6
	vpclmulqdq	$17, %xmm5, %xmm0, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm5
	vpshufb	%xmm12, %xmm6, %xmm6
	vpshufb	%xmm12, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm1, %xmm9, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	400(%rsp), %xmm13
	vpclmulqdq	$0, %xmm5, %xmm13, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$1, %xmm5, %xmm13, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm13, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm13, %xmm5
	vpxor	%xmm5, %xmm1, %xmm5
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	addq	$96, %rcx
	leaq	-96(%r8), %rsi
	vmovdqa	%xmm8, %xmm11
	vmovdqa	%xmm9, %xmm14
	cmpq	$96, %rsi
	jb	.LBB5_13
	vmovdqa	384(%rsp), %xmm12
	vmovdqa	368(%rsp), %xmm0
	vmovdqa	.LCPI5_12(%rip), %xmm10
	.p2align	4
.LBB5_12:
	vmovdqu	(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm6
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm8
	vpslldq	$8, %xmm2, %xmm9
	vpxor	%xmm1, %xmm9, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastq	.LCPI5_24(%rip), %xmm9
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpshufb	%xmm10, %xmm4, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm3, %xmm1, %xmm3
	vpshufb	%xmm10, %xmm5, %xmm1
	vpshufb	%xmm10, %xmm6, %xmm2
	vpshufb	%xmm10, %xmm7, %xmm4
	vpshufb	%xmm10, %xmm8, %xmm5
	vmovdqa	48(%rsp), %xmm9
	vpclmulqdq	$0, %xmm5, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm5, %xmm9, %xmm7
	vpclmulqdq	$16, %xmm5, %xmm9, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm5, %xmm9, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm11, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$1, %xmm4, %xmm11, %xmm8
	vpclmulqdq	$16, %xmm4, %xmm11, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm11, %xmm4
	vpxor	%xmm5, %xmm4, %xmm4
	vpclmulqdq	$0, %xmm2, %xmm14, %xmm5
	vpclmulqdq	$1, %xmm2, %xmm14, %xmm8
	vpclmulqdq	$16, %xmm2, %xmm14, %xmm9
	vpxor	%xmm9, %xmm8, %xmm8
	vpclmulqdq	$0, %xmm1, %xmm0, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$1, %xmm1, %xmm0, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm14, %xmm2
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm0, %xmm7
	vpxor	%xmm7, %xmm2, %xmm2
	vmovdqu	16(%rcx), %xmm7
	vpshufb	%xmm10, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm0, %xmm1
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm7, %xmm13, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm7, %xmm13, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm13, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm7, %xmm13, %xmm1
	vpxor	%xmm1, %xmm2, %xmm6
	vpclmulqdq	$0, %xmm3, %xmm12, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$1, %xmm3, %xmm12, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm3, %xmm12, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$17, %xmm3, %xmm12, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	addq	$96, %rcx
	addq	$-96, %rsi
	cmpq	$95, %rsi
	ja	.LBB5_12
.LBB5_13:
	vpslldq	$8, %xmm2, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpbroadcastq	.LCPI5_24(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	32(%rsp), %xmm7
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	%xmm11, %xmm5
	vmovdqa	80(%rsp), %xmm13
	cmpq	$16, %rsi
	jae	.LBB5_14
.LBB5_9:
	movq	%rsi, %rdx
	testq	%rdx, %rdx
	jne	.LBB5_23
	jmp	.LBB5_21
.LBB5_36:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	xorl	%r8d, %r8d
	testq	%r15, %r15
	jne	.LBB5_26
	jmp	.LBB5_37
.LBB5_7:
	movq	%r8, %rsi
	cmpq	$16, %rsi
	jb	.LBB5_9
.LBB5_14:
	leaq	-16(%rsi), %rdx
	testb	$16, %dl
	je	.LBB5_15
	cmpq	$16, %rdx
	jae	.LBB5_17
.LBB5_20:
	testq	%rdx, %rdx
	je	.LBB5_21
.LBB5_23:
	vmovdqa	%xmm14, 304(%rsp)
	vmovdqa	%xmm5, 320(%rsp)
	movq	%r9, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r8, %r14
	callq	*memcpy@GOTPCREL(%rip)
	movq	%r14, %r8
	vmovdqa	16(%rsp), %xmm0
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB5_45
	movabsq	$-68719476704, %rax
	leaq	(%r15,%rax), %rcx
	incq	%rax
	cmpq	%rax, %rcx
	movl	$0, %eax
	vmovdqa	80(%rsp), %xmm13
	vpmovsxbq	.LCPI5_22(%rip), %xmm15
	vpbroadcastq	.LCPI5_24(%rip), %xmm4
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	320(%rsp), %xmm5
	vmovdqa	304(%rsp), %xmm14
	jb	.LBB5_44
	movq	%rbx, %r9
	vpshufb	.LCPI5_12(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	jmp	.LBB5_26
.LBB5_15:
	vmovdqu	(%rcx), %xmm0
	vpshufb	.LCPI5_12(%rip), %xmm0, %xmm0
	addq	$16, %rcx
	vpxor	(%rsp), %xmm0, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	32(%rsp), %xmm7
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rdx, %rsi
	cmpq	$16, %rdx
	jb	.LBB5_20
.LBB5_17:
	vmovdqa	%xmm14, %xmm11
	vmovdqa	%xmm5, %xmm14
	vmovdqa	.LCPI5_12(%rip), %xmm0
	vmovdqa	(%rsp), %xmm3
	.p2align	4
.LBB5_18:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	addq	$32, %rcx
	addq	$-32, %rsi
	vpshufb	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm10, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm10, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm10, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm10, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	cmpq	$15, %rsi
	ja	.LBB5_18
	vmovdqa	%xmm3, (%rsp)
	movq	%rsi, %rdx
	vmovdqa	%xmm14, %xmm5
	vmovdqa	%xmm11, %xmm14
	testq	%rdx, %rdx
	jne	.LBB5_23
.LBB5_21:
	shlq	$3, %r8
	testq	%r15, %r15
	je	.LBB5_37
	movabsq	$-68719476704, %rcx
	leaq	(%r15,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB5_44
.LBB5_26:
	movq	568(%rsp), %rax
	cmpq	$96, %r15
	jb	.LBB5_27
	vpmovsxbq	.LCPI5_22(%rip), %xmm15
	movq	%r15, %rbx
	vmovdqa	%xmm5, 320(%rsp)
	vmovdqa	%xmm14, 304(%rsp)
	vmovdqa	(%rsp), %xmm14
	.p2align	4
.LBB5_31:
	vmovdqa	%xmm15, 64(%rsp)
	vmovdqu	(%r9), %xmm7
	vmovdqa	%xmm7, 336(%rsp)
	vmovups	32(%r9), %xmm0
	vmovaps	%xmm0, (%rsp)
	vmovdqu	48(%r9), %xmm10
	vmovdqa	%xmm10, 416(%rsp)
	vmovdqu	64(%r9), %xmm4
	vmovdqa	%xmm4, 448(%rsp)
	vmovdqu	80(%r9), %xmm8
	vmovdqa	%xmm8, 352(%rsp)
	vmovdqa	.LCPI5_12(%rip), %xmm12
	vpshufb	%xmm12, %xmm15, %xmm0
	vpaddd	.LCPI5_14(%rip), %xmm15, %xmm1
	vpshufb	%xmm12, %xmm1, %xmm1
	vpaddd	.LCPI5_1(%rip), %xmm15, %xmm2
	vpshufb	%xmm12, %xmm2, %xmm2
	vpaddd	.LCPI5_15(%rip), %xmm15, %xmm3
	vpshufb	%xmm12, %xmm3, %xmm3
	vpaddd	.LCPI5_2(%rip), %xmm15, %xmm5
	vpshufb	%xmm12, %xmm5, %xmm5
	vpaddd	.LCPI5_16(%rip), %xmm15, %xmm6
	vpshufb	%xmm12, %xmm6, %xmm6
	vpshufb	%xmm12, %xmm7, %xmm7
	vpxor	%xmm7, %xmm14, %xmm7
	vmovdqa	%xmm7, 432(%rsp)
	vpshufb	%xmm12, %xmm8, %xmm8
	vpxor	%xmm0, %xmm13, %xmm14
	vpxor	%xmm1, %xmm13, %xmm15
	vpxor	%xmm2, %xmm13, %xmm1
	vpxor	%xmm3, %xmm13, %xmm2
	vpxor	%xmm5, %xmm13, %xmm3
	vpxor	80(%rsp), %xmm6, %xmm13
	vmovaps	176(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm14, %xmm14
	vaesenc	%xmm0, %xmm15, %xmm15
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm0, %xmm13, %xmm13
	#NO_APP
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm6, %xmm6, %xmm6
	vpxor	%xmm7, %xmm7, %xmm7
	vmovaps	160(%rsp), %xmm9
	vmovaps	48(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm8, %xmm0
	vpxor	%xmm0, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm8, %xmm0
	vpxor	%xmm0, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm8, %xmm0
	vpxor	%xmm0, %xmm7, %xmm7
	#NO_APP
	vpshufb	%xmm12, %xmm4, %xmm0
	vmovaps	208(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovaps	128(%rsp), %xmm9
	vmovaps	320(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vpshufb	%xmm12, %xmm10, %xmm0
	vmovaps	144(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	#NO_APP
	vmovaps	112(%rsp), %xmm9
	vmovaps	304(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovdqa	(%rsp), %xmm0
	vpshufb	%xmm12, %xmm0, %xmm0
	vmovaps	96(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm13, %xmm13
	#NO_APP
	vmovaps	192(%rsp), %xmm9
	vmovaps	368(%rsp), %xmm11
	#APP
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm11, %xmm0, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vmovdqu	16(%r9), %xmm0
	vmovaps	32(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vpshufb	%xmm12, %xmm0, %xmm4
	vmovdqa	288(%rsp), %xmm10
	vmovaps	400(%rsp), %xmm12
	#APP
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm12, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm12, %xmm4, %xmm9
	vpxor	%xmm5, %xmm9, %xmm5
	vpclmulqdq	$17, %xmm12, %xmm4, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	vpclmulqdq	$1, %xmm12, %xmm4, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vmovaps	272(%rsp), %xmm4
	#APP
	vaesenc	%xmm4, %xmm14, %xmm14
	vaesenc	%xmm4, %xmm15, %xmm15
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	#NO_APP
	vmovdqa	256(%rsp), %xmm11
	vmovdqa	384(%rsp), %xmm9
	vmovaps	432(%rsp), %xmm12
	#APP
	vaesenc	%xmm11, %xmm14, %xmm14
	vaesenc	%xmm11, %xmm15, %xmm15
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm13, %xmm13
	vpclmulqdq	$16, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	vpclmulqdq	$0, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm6, %xmm6
	vpclmulqdq	$1, %xmm9, %xmm12, %xmm4
	vpxor	%xmm4, %xmm7, %xmm7
	#NO_APP
	vpxor	%xmm9, %xmm9, %xmm9
	vpunpcklqdq	%xmm7, %xmm9, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpunpckhqdq	%xmm9, %xmm7, %xmm5
	vpbroadcastq	.LCPI5_24(%rip), %xmm7
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$78, %xmm4, %xmm6
	vpxor	%xmm6, %xmm5, %xmm5
	vmovaps	240(%rsp), %xmm6
	#APP
	vaesenc	%xmm6, %xmm14, %xmm14
	vaesenc	%xmm6, %xmm15, %xmm15
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	#NO_APP
	vmovaps	224(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm14, %xmm14
	vaesenclast	%xmm6, %xmm15, %xmm15
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm13, %xmm13
	#NO_APP
	vpxor	336(%rsp), %xmm14, %xmm6
	vpxor	%xmm0, %xmm15, %xmm0
	vmovdqa	64(%rsp), %xmm15
	vpxor	(%rsp), %xmm1, %xmm1
	vpxor	416(%rsp), %xmm2, %xmm2
	vpxor	448(%rsp), %xmm3, %xmm3
	vmovdqu	%xmm6, (%rax)
	vmovdqu	%xmm0, 16(%rax)
	vmovdqu	%xmm1, 32(%rax)
	vmovdqu	%xmm2, 48(%rax)
	vxorps	352(%rsp), %xmm13, %xmm0
	vmovdqa	80(%rsp), %xmm13
	vmovdqu	%xmm3, 64(%rax)
	vmovups	%xmm0, 80(%rax)
	vpclmulqdq	$16, %xmm7, %xmm4, %xmm0
	vpxor	%xmm0, %xmm5, %xmm14
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rbx
	vpaddd	.LCPI5_17(%rip), %xmm15, %xmm15
	cmpq	$95, %rbx
	ja	.LBB5_31
	cmpq	$16, %rbx
	jb	.LBB5_29
.LBB5_32:
	vmovdqa	48(%rsp), %xmm9
	vmovdqa	208(%rsp), %xmm0
	vmovdqa	96(%rsp), %xmm11
	vmovdqa	128(%rsp), %xmm7
	vmovdqa	112(%rsp), %xmm12
	vmovdqa	192(%rsp), %xmm10
	vmovdqa	32(%rsp), %xmm8
	vmovdqa	.LCPI5_12(%rip), %xmm1
	.p2align	4
.LBB5_33:
	vmovdqu	(%r9), %xmm2
	vpshufb	%xmm1, %xmm2, %xmm3
	vpxor	%xmm3, %xmm14, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm9, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm9, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm9, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpclmulqdq	$17, %xmm3, %xmm9, %xmm3
	vpsrldq	$8, %xmm5, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpbroadcastq	.LCPI5_24(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm5
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpshufb	%xmm1, %xmm15, %xmm5
	vpxor	%xmm5, %xmm13, %xmm5
	vaesenc	176(%rsp), %xmm5, %xmm5
	vaesenc	160(%rsp), %xmm5, %xmm5
	vaesenc	%xmm0, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	144(%rsp), %xmm5, %xmm5
	vaesenc	%xmm12, %xmm5, %xmm5
	vaesenc	%xmm11, %xmm5, %xmm5
	vaesenc	%xmm10, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	288(%rsp), %xmm5, %xmm5
	vaesenc	272(%rsp), %xmm5, %xmm5
	vaesenc	256(%rsp), %xmm5, %xmm5
	vaesenc	240(%rsp), %xmm5, %xmm5
	vaesenclast	224(%rsp), %xmm5, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vmovdqu	%xmm2, (%rax)
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm2
	vpxor	%xmm3, %xmm2, %xmm14
	leaq	16(%rax), %r14
	addq	$-16, %rbx
	addq	$16, %r9
	vpaddd	.LCPI5_14(%rip), %xmm15, %xmm15
	movq	%r14, %rax
	cmpq	$15, %rbx
	ja	.LBB5_33
	testq	%rbx, %rbx
	je	.LBB5_35
.LBB5_38:
	vmovdqa	%xmm14, (%rsp)
	movq	%r8, %r13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbp
	movq	%r9, %rsi
	movq	%rbx, %rdx
	vmovdqa	%xmm15, 64(%rsp)
	callq	*%rbp
	vmovdqa	16(%rsp), %xmm1
	vmovdqa	64(%rsp), %xmm0
	vpshufb	.LCPI5_12(%rip), %xmm0, %xmm0
	vpxor	80(%rsp), %xmm0, %xmm0
	vaesenc	176(%rsp), %xmm0, %xmm0
	vaesenc	160(%rsp), %xmm0, %xmm0
	vaesenc	208(%rsp), %xmm0, %xmm0
	vaesenc	128(%rsp), %xmm0, %xmm0
	vaesenc	144(%rsp), %xmm0, %xmm0
	vaesenc	112(%rsp), %xmm0, %xmm0
	vaesenc	96(%rsp), %xmm0, %xmm0
	vaesenc	192(%rsp), %xmm0, %xmm0
	vaesenc	32(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	272(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenc	240(%rsp), %xmm0, %xmm0
	vaesenclast	224(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm1, 352(%rsp)
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, 336(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*%rbp
	vmovups	(%r12), %xmm0
	vmovaps	%xmm0, 64(%rsp)
	testq	%r15, %r15
	je	.LBB5_39
	vmovaps	352(%rsp), %xmm0
	vmovaps	%xmm0, 464(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	464(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	16(%rsp), %xmm0
	movq	%r13, %r8
	jmp	.LBB5_41
.LBB5_27:
	movq	%r15, %rbx
	vmovdqa	(%rsp), %xmm14
	cmpq	$16, %rbx
	jae	.LBB5_32
.LBB5_29:
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.LBB5_38
.LBB5_35:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vpbroadcastq	.LCPI5_24(%rip), %xmm6
	vmovdqa	48(%rsp), %xmm10
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	144(%rsp), %xmm8
	vmovdqa	96(%rsp), %xmm12
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	112(%rsp), %xmm5
	jmp	.LBB5_42
.LBB5_45:
	vpshufb	.LCPI5_12(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm10
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_24(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vmovdqa	%xmm0, (%rsp)
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	32(%rsp), %xmm7
.LBB5_37:
	vmovdqu	(%r12), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	96(%rsp), %xmm12
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm8
	vmovdqa	(%rsp), %xmm14
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	112(%rsp), %xmm5
	jmp	.LBB5_43
.LBB5_39:
	movq	%r13, %r8
	vmovdqa	336(%rsp), %xmm0
.LBB5_41:
	vpshufb	.LCPI5_12(%rip), %xmm0, %xmm0
	vpxor	(%rsp), %xmm0, %xmm0
	vmovdqa	48(%rsp), %xmm10
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_24(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm14
	vmovdqa	176(%rsp), %xmm11
	vmovdqa	80(%rsp), %xmm13
	vmovdqa	160(%rsp), %xmm9
	vmovdqa	128(%rsp), %xmm15
	vmovdqa	144(%rsp), %xmm8
	vmovdqa	112(%rsp), %xmm5
	vmovdqa	96(%rsp), %xmm12
.LBB5_42:
	vmovdqa	32(%rsp), %xmm7
.LBB5_43:
	vmovq	%r15, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vmovq	%r8, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpxor	%xmm0, %xmm14, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm10, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm10, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm10, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm2, %xmm3
	vpxor	.LCPI5_18(%rip), %xmm13, %xmm4
	vpxor	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm11, %xmm4, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	208(%rsp), %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	192(%rsp), %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	288(%rsp), %xmm3, %xmm3
	vaesenc	272(%rsp), %xmm3, %xmm3
	vaesenc	256(%rsp), %xmm3, %xmm3
	vaesenc	240(%rsp), %xmm3, %xmm3
	vpshufb	.LCPI5_19(%rip), %xmm1, %xmm1
	vpshufb	.LCPI5_20(%rip), %xmm2, %xmm2
	vaesenclast	224(%rsp), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	64(%rsp), %xmm1, %xmm1
	vpshufb	.LCPI5_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB5_44:
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
.Lfunc_end5:
	.size	haberdashery_aes256gcmdndk_raptorlake_decrypt, .Lfunc_end5-haberdashery_aes256gcmdndk_raptorlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_raptorlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_raptorlake_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndk_raptorlake_is_supported,@function
haberdashery_aes256gcmdndk_raptorlake_is_supported:
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
	.size	haberdashery_aes256gcmdndk_raptorlake_is_supported, .Lfunc_end6-haberdashery_aes256gcmdndk_raptorlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

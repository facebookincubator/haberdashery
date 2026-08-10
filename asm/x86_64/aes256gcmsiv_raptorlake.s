# @generated
# https://github.com/facebookincubator/haberdashery/
	.section	.text._ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h8f3fee6959eecda1E,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h8f3fee6959eecda1E
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h8f3fee6959eecda1E,@function
_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h8f3fee6959eecda1E:
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
	.size	_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h8f3fee6959eecda1E, .Lfunc_end0-_ZN20haberdashery_asm_gen9aes256gcm15pack_blocks_25617h8f3fee6959eecda1E
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h87bfadbbd6b53a8dE,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h87bfadbbd6b53a8dE
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h87bfadbbd6b53a8dE,@function
_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h87bfadbbd6b53a8dE:
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
	.size	_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h87bfadbbd6b53a8dE, .Lfunc_end1-_ZN20haberdashery_asm_gen9aes256gcm17unpack_blocks_25617h87bfadbbd6b53a8dE
	.cfi_endproc

	.section	.text._ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h8abb13c01161f0b3E,"ax",@progbits
	.globl	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h8abb13c01161f0b3E
	.p2align	4
	.type	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h8abb13c01161f0b3E,@function
_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h8abb13c01161f0b3E:
	.cfi_startproc
	movq	%rdi, %rax
	vmovaps	16(%rsi), %xmm0
	vxorps	(%rsi), %xmm0, %xmm0
	vmovaps	%xmm0, (%rdi)
	retq
.Lfunc_end2:
	.size	_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h8abb13c01161f0b3E, .Lfunc_end2-_ZN20haberdashery_asm_gen9aes256gcm16ghash_reduce_25617h8abb13c01161f0b3E
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
	.section	.text.haberdashery_aes256gcmsiv_raptorlake_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_raptorlake_init
	.p2align	4
	.type	haberdashery_aes256gcmsiv_raptorlake_init,@function
haberdashery_aes256gcmsiv_raptorlake_init:
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
	.size	haberdashery_aes256gcmsiv_raptorlake_init, .Lfunc_end3-haberdashery_aes256gcmsiv_raptorlake_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI4_1:
	.quad	2
	.quad	0
.LCPI4_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI4_3:
	.quad	4
	.quad	0
.LCPI4_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI4_5:
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
.LCPI4_6:
	.quad	4294967297
	.quad	4294967297
.LCPI4_7:
	.quad	8589934594
	.quad	8589934594
.LCPI4_8:
	.quad	17179869188
	.quad	17179869188
.LCPI4_9:
	.quad	34359738376
	.quad	34359738376
.LCPI4_10:
	.quad	68719476752
	.quad	68719476752
.LCPI4_11:
	.quad	137438953504
	.quad	137438953504
.LCPI4_12:
	.quad	274877907008
	.quad	274877907008
.LCPI4_14:
	.zero	8
	.quad	-4467570830351532032
.LCPI4_15:
	.quad	-1
	.quad	9223372036854775807
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
	.byte	128
.LCPI4_24:
	.long	16
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_13:
	.quad	-4467570830351532032
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI4_17:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI4_18:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI4_19:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI4_20:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI4_21:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI4_22:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI4_23:
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_25:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_raptorlake_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_raptorlake_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_raptorlake_encrypt,@function
haberdashery_aes256gcmsiv_raptorlake_encrypt:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$1056, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	16(%rbp), %r13
	xorl	%eax, %eax
	cmpq	32(%rbp), %r13
	jne	.LBB4_42
	movq	%r9, %rbx
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r9b
	cmpq	%rax, %r13
	setb	%al
	andb	%r9b, %al
	cmpq	$16, 48(%rbp)
	sete	%r9b
	cmpq	$12, %rdx
	sete	%r12b
	andb	%r9b, %r12b
	andb	%al, %r12b
	cmpb	$1, %r12b
	jne	.LBB4_41
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm0
	vxorps	.LCPI4_0(%rip), %xmm0, %xmm3
	vxorps	.LCPI4_1(%rip), %xmm0, %xmm2
	vxorps	.LCPI4_2(%rip), %xmm0, %xmm4
	vxorps	.LCPI4_3(%rip), %xmm0, %xmm1
	vxorps	.LCPI4_4(%rip), %xmm0, %xmm5
	vmovaps	16(%rdi), %xmm6
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	vmovaps	64(%rdi), %xmm9
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm0, %xmm7
	vpunpcklqdq	%xmm4, %xmm2, %xmm6
	vpunpcklqdq	%xmm5, %xmm1, %xmm5
	vpslldq	$4, %xmm6, %xmm3
	vpxor	%xmm14, %xmm14, %xmm14
	vpunpcklqdq	%xmm2, %xmm14, %xmm4
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpbroadcastd	.LCPI4_25(%rip), %xmm9
	vpshufb	%xmm9, %xmm5, %xmm3
	vaesenclast	.LCPI4_6(%rip), %xmm3, %xmm3
	vmovdqa	%ymm6, 800(%rsp)
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm4
	vpslldq	$4, %xmm5, %xmm2
	vpunpcklqdq	%xmm1, %xmm14, %xmm3
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vmovdqa	%ymm5, 832(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm9, %xmm3, %xmm2
	vaesenclast	.LCPI4_7(%rip), %xmm2, %xmm2
	vmovdqa	%ymm4, 768(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vmovdqa	%ymm3, 576(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm9, %xmm3, %xmm2
	vaesenclast	.LCPI4_8(%rip), %xmm2, %xmm2
	vmovdqa	%ymm4, 544(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vmovdqa	%ymm3, 512(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm3
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm9, %xmm3, %xmm2
	vaesenclast	.LCPI4_9(%rip), %xmm2, %xmm2
	vmovdqa	%ymm4, 480(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm4
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm4, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vmovdqa	%ymm3, 736(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpshufb	%xmm9, %xmm5, %xmm3
	vaesenclast	.LCPI4_10(%rip), %xmm3, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vmovdqa	%ymm4, 704(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm3
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufd	$255, %xmm3, %xmm2
	vaesenclast	%xmm14, %xmm2, %xmm2
	vmovdqa	%ymm5, 672(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm8
	vpslldq	$4, %xmm3, %xmm1
	vpslldq	$8, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm9, %xmm8, %xmm2
	vaesenclast	.LCPI4_11(%rip), %xmm2, %xmm2
	vmovdqa	%ymm3, 640(%rsp)
	vpxor	%xmm3, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm13
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm15
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm2
	vpbroadcastq	.LCPI4_13(%rip), %ymm11
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovaps	%xmm7, 256(%rsp)
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm11, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vinserti128	$1, %xmm2, %ymm2, %ymm10
	vinserti128	$1, %xmm2, %ymm9, %ymm2
	vpunpckhqdq	%ymm2, %ymm10, %ymm3
	vpunpcklqdq	%ymm2, %ymm10, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm10, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm10, %ymm2
	vpxor	%ymm2, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm11, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpshufd	$78, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$16, %ymm11, %ymm4, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpunpckhqdq	%ymm2, %ymm10, %ymm3
	vpunpcklqdq	%ymm2, %ymm10, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm10, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm10, %ymm5
	vpxor	%ymm5, %ymm4, %ymm6
	vpxor	%ymm6, %ymm3, %ymm3
	vpslldq	$8, %ymm3, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm11, %ymm4, %ymm6
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm6, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpshufd	$78, %ymm4, %ymm6
	vpxor	%ymm6, %ymm3, %ymm3
	vpxor	%ymm5, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm11, %ymm4, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpunpcklqdq	%ymm3, %ymm10, %ymm4
	vpunpckhqdq	%ymm3, %ymm10, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$0, %ymm3, %ymm10, %ymm5
	vpclmulqdq	$17, %ymm3, %ymm10, %ymm6
	vpxor	%ymm6, %ymm5, %ymm7
	vpxor	%ymm7, %ymm4, %ymm4
	vpslldq	$8, %ymm4, %ymm7
	vpxor	%ymm7, %ymm5, %ymm5
	vpclmulqdq	$16, %ymm11, %ymm5, %ymm7
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm7, %ymm5
	vpsrldq	$8, %ymm4, %ymm4
	vpshufd	$78, %ymm5, %ymm7
	vpxor	%ymm7, %ymm4, %ymm4
	vpxor	%ymm6, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm11, %ymm5, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vextracti128	$1, %ymm2, %xmm1
	vpermq	$68, %ymm2, %ymm2
	vextracti128	$1, %ymm3, %xmm5
	vpermq	$68, %ymm3, %ymm0
	vextracti128	$1, %ymm4, %xmm6
	vxorps	%xmm3, %xmm3, %xmm3
	vpermq	$68, %ymm4, %ymm3
	vpshufd	$255, %xmm13, %xmm4
	vpxor	%xmm12, %xmm12, %xmm12
	cmpq	$256, %r8
	vmovdqa	%ymm8, 608(%rsp)
	vmovdqa	%ymm13, 288(%rsp)
	vmovdqa	%ymm11, 128(%rsp)
	vmovdqa	%ymm9, 96(%rsp)
	vmovdqa	%ymm2, 448(%rsp)
	vmovdqa	%ymm0, 960(%rsp)
	vmovdqa	%ymm3, 928(%rsp)
	vmovdqa	%ymm1, 224(%rsp)
	vmovdqa	%ymm5, 896(%rsp)
	vmovdqa	%ymm6, 864(%rsp)
	jb	.LBB4_3
	vmovdqa	%xmm4, 160(%rsp)
	vmovdqa	%xmm15, 192(%rsp)
	vinserti128	$1, %xmm9, %ymm9, %ymm4
	vmovdqa	%ymm4, 32(%rsp)
	vinserti128	$1, %xmm1, %ymm1, %ymm4
	vinserti128	$1, %xmm5, %ymm5, %ymm5
	vinserti128	$1, %xmm6, %ymm6, %ymm6
	movq	%r8, %r14
	vmovdqa	%ymm10, %ymm1
	.p2align	4
.LBB4_19:
	vmovdqa	%ymm12, (%rsp)
	vmovdqu	128(%rcx), %ymm7
	vmovdqu	160(%rcx), %ymm8
	vmovdqu	192(%rcx), %ymm9
	vmovdqu	224(%rcx), %ymm10
	vmovdqa	32(%rsp), %ymm13
	vpunpcklqdq	%ymm10, %ymm13, %ymm11
	vpunpckhqdq	%ymm10, %ymm13, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm13, %ymm12
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm11
	vpclmulqdq	$17, %ymm10, %ymm13, %ymm10
	vpunpcklqdq	%ymm9, %ymm1, %ymm13
	vpunpckhqdq	%ymm9, %ymm1, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm9, %ymm1, %ymm14
	vpxor	%ymm12, %ymm14, %ymm12
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpxor	%ymm11, %ymm13, %ymm11
	vpclmulqdq	$17, %ymm9, %ymm1, %ymm9
	vpxor	%ymm10, %ymm9, %ymm10
	vpunpcklqdq	%ymm8, %ymm2, %ymm9
	vpunpckhqdq	%ymm8, %ymm2, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vpclmulqdq	$0, %ymm8, %ymm2, %ymm9
	vpunpcklqdq	%ymm7, %ymm4, %ymm14
	vpunpckhqdq	%ymm7, %ymm4, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm7, %ymm4, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vmovdqu	64(%rcx), %ymm15
	vpxor	%ymm9, %ymm12, %ymm9
	vmovdqu	96(%rcx), %ymm12
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm8, %ymm2, %ymm8
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm14
	vpxor	%ymm14, %ymm13, %ymm13
	vpxor	%ymm13, %ymm11, %ymm11
	vpclmulqdq	$17, %ymm7, %ymm4, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpxor	%ymm7, %ymm10, %ymm7
	vpunpcklqdq	%ymm12, %ymm0, %ymm8
	vpunpckhqdq	%ymm12, %ymm0, %ymm10
	vpxor	%ymm8, %ymm10, %ymm8
	vpclmulqdq	$0, %ymm12, %ymm0, %ymm10
	vpunpcklqdq	%ymm15, %ymm5, %ymm13
	vpunpckhqdq	%ymm15, %ymm5, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm15, %ymm5, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	32(%rcx), %ymm14
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm12, %ymm0, %ymm12
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpxor	%ymm13, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm15, %ymm5, %ymm13
	vpxor	%ymm13, %ymm12, %ymm12
	vpunpcklqdq	%ymm14, %ymm3, %ymm13
	vpunpckhqdq	%ymm14, %ymm3, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vpclmulqdq	$0, %ymm14, %ymm3, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpxor	%ymm10, %ymm9, %ymm9
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm8, %ymm11, %ymm8
	vmovdqa	(%rsp), %ymm10
	vpxor	(%rcx), %ymm10, %ymm10
	vpclmulqdq	$17, %ymm14, %ymm3, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpxor	%ymm7, %ymm11, %ymm7
	vpunpcklqdq	%ymm10, %ymm6, %ymm11
	vpunpckhqdq	%ymm10, %ymm6, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm6, %ymm12
	vpxor	%ymm12, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm10, %ymm6, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm10
	vmovdqa	128(%rsp), %ymm11
	vpxor	%ymm9, %ymm10, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm7, %ymm8, %ymm8
	vpslldq	$8, %ymm8, %ymm10
	vpxor	%ymm10, %ymm9, %ymm9
	vpsrldq	$8, %ymm8, %ymm8
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm10
	vpshufd	$78, %ymm9, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpshufd	$78, %ymm9, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm8
	vpxor	%ymm7, %ymm8, %ymm12
	addq	$256, %rcx
	addq	$-256, %r14
	cmpq	$255, %r14
	ja	.LBB4_19
	vmovdqa	608(%rsp), %ymm8
	vmovdqa	288(%rsp), %ymm13
	vmovdqa	96(%rsp), %ymm9
	vmovdqa	%ymm1, %ymm10
	vpxor	%xmm14, %xmm14, %xmm14
	vmovdqa	192(%rsp), %xmm15
	vmovdqa	160(%rsp), %xmm4
	jmp	.LBB4_4
.LBB4_3:
	movq	%r8, %r14
.LBB4_4:
	vaesenclast	%xmm14, %xmm4, %xmm0
	vpxor	%xmm8, %xmm15, %xmm2
	vpslldq	$4, %xmm13, %xmm1
	vpslldq	$8, %xmm13, %xmm3
	cmpq	$32, %r14
	jb	.LBB4_7
	vinserti128	$1, %xmm9, %ymm9, %ymm4
	.p2align	4
.LBB4_6:
	addq	$-32, %r14
	vpxor	(%rcx), %ymm12, %ymm5
	addq	$32, %rcx
	vpunpcklqdq	%ymm5, %ymm4, %ymm6
	vpunpckhqdq	%ymm5, %ymm4, %ymm7
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$0, %ymm5, %ymm4, %ymm7
	vpclmulqdq	$1, %ymm6, %ymm6, %ymm6
	vpclmulqdq	$17, %ymm5, %ymm4, %ymm5
	vpxor	%ymm5, %ymm7, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpslldq	$8, %ymm6, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpsrldq	$8, %ymm6, %ymm6
	vpclmulqdq	$16, %ymm11, %ymm7, %ymm8
	vpshufd	$78, %ymm7, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$16, %ymm11, %ymm7, %ymm8
	vpshufd	$78, %ymm7, %ymm7
	vpxor	%ymm7, %ymm6, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpxor	%ymm5, %ymm8, %ymm12
	cmpq	$31, %r14
	ja	.LBB4_6
.LBB4_7:
	vpxor	%xmm2, %xmm0, %xmm14
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm13, %xmm2
	vmovss	8(%rsi), %xmm0
	vmovaps	%xmm0, 192(%rsp)
	vmovq	(%rsi), %xmm0
	vmovdqa	%xmm0, 160(%rsp)
	testq	%r14, %r14
	vmovdqa	%ymm14, 352(%rsp)
	je	.LBB4_11
	vmovdqa	%xmm2, 384(%rsp)
	vmovdqa	%xmm1, 416(%rsp)
	vmovdqa	%ymm10, 32(%rsp)
	movq	%r8, %r15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r14, %rdx
	vmovdqa	%ymm12, (%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	96(%rsp), %ymm9
	vmovdqa	(%rsp), %ymm0
	vpxor	64(%rsp), %ymm0, %ymm0
	vmovdqa	%xmm9, %xmm1
	cmpq	$17, %r14
	jae	.LBB4_10
	vmovaps	256(%rsp), %xmm1
.LBB4_10:
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
	vmovdqa	128(%rsp), %ymm11
	vpclmulqdq	$16, %ymm11, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$16, %ymm11, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm12
	movq	%r15, %r8
	vmovdqa	288(%rsp), %ymm13
	vmovdqa	352(%rsp), %ymm14
	vmovdqa	32(%rsp), %ymm10
	vmovdqa	416(%rsp), %xmm1
	vmovdqa	384(%rsp), %xmm2
.LBB4_11:
	vpxor	%xmm2, %xmm1, %xmm1
	vpshufb	.LCPI4_5(%rip), %xmm14, %xmm2
	vmovq	%r13, %xmm3
	vmovq	%r8, %xmm5
	cmpq	$256, %r13
	vmovdqa	224(%rsp), %ymm0
	jb	.LBB4_12
	vmovdqa	%xmm5, 1008(%rsp)
	vmovdqa	%xmm2, 320(%rsp)
	vmovdqa	%xmm3, 384(%rsp)
	vmovdqa	%xmm1, 416(%rsp)
	vinserti128	$1, %xmm9, %ymm9, %ymm1
	vmovdqa	%ymm1, 32(%rsp)
	vinserti128	$1, %xmm0, %ymm0, %ymm5
	vmovdqa	896(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm6
	vmovdqa	864(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm7
	movq	%rbx, %rsi
	movq	%r13, %r14
	vmovdqa	%ymm10, %ymm1
	vmovdqa	448(%rsp), %ymm2
	vmovdqa	960(%rsp), %ymm3
	vmovdqa	928(%rsp), %ymm4
	.p2align	4
.LBB4_22:
	vmovdqa	%ymm12, (%rsp)
	vmovdqu	128(%rsi), %ymm8
	vmovdqu	160(%rsi), %ymm9
	vmovdqu	192(%rsi), %ymm10
	vmovdqu	224(%rsi), %ymm11
	vmovdqa	32(%rsp), %ymm0
	vpunpcklqdq	%ymm11, %ymm0, %ymm12
	vpunpckhqdq	%ymm11, %ymm0, %ymm13
	vpxor	%ymm12, %ymm13, %ymm12
	vpclmulqdq	$0, %ymm11, %ymm0, %ymm13
	vpclmulqdq	$1, %ymm12, %ymm12, %ymm12
	vpclmulqdq	$17, %ymm11, %ymm0, %ymm11
	vpunpcklqdq	%ymm10, %ymm1, %ymm14
	vpunpckhqdq	%ymm10, %ymm1, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm10, %ymm1, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm14
	vpxor	%ymm12, %ymm14, %ymm12
	vpclmulqdq	$17, %ymm10, %ymm1, %ymm10
	vpxor	%ymm11, %ymm10, %ymm11
	vpunpcklqdq	%ymm9, %ymm2, %ymm10
	vpunpckhqdq	%ymm9, %ymm2, %ymm14
	vpxor	%ymm10, %ymm14, %ymm14
	vpclmulqdq	$0, %ymm9, %ymm2, %ymm10
	vpunpcklqdq	%ymm8, %ymm5, %ymm15
	vpunpckhqdq	%ymm8, %ymm5, %ymm0
	vpxor	%ymm0, %ymm15, %ymm0
	vpclmulqdq	$0, %ymm8, %ymm5, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vmovdqu	64(%rsi), %ymm15
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	96(%rsi), %ymm13
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm14
	vpclmulqdq	$17, %ymm9, %ymm2, %ymm9
	vpclmulqdq	$1, %ymm0, %ymm0, %ymm0
	vpxor	%ymm0, %ymm14, %ymm0
	vpxor	%ymm0, %ymm12, %ymm0
	vpclmulqdq	$17, %ymm8, %ymm5, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpxor	%ymm8, %ymm11, %ymm8
	vpunpcklqdq	%ymm13, %ymm3, %ymm9
	vpunpckhqdq	%ymm13, %ymm3, %ymm11
	vpxor	%ymm9, %ymm11, %ymm9
	vpclmulqdq	$0, %ymm13, %ymm3, %ymm11
	vpunpcklqdq	%ymm15, %ymm6, %ymm12
	vpunpckhqdq	%ymm15, %ymm6, %ymm14
	vpxor	%ymm12, %ymm14, %ymm12
	vpclmulqdq	$0, %ymm15, %ymm6, %ymm14
	vpxor	%ymm14, %ymm11, %ymm11
	vmovdqu	32(%rsi), %ymm14
	vpclmulqdq	$1, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm13, %ymm3, %ymm13
	vpclmulqdq	$1, %ymm12, %ymm12, %ymm12
	vpxor	%ymm12, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm15, %ymm6, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpunpcklqdq	%ymm14, %ymm4, %ymm13
	vpunpckhqdq	%ymm14, %ymm4, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vpclmulqdq	$0, %ymm14, %ymm4, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpxor	%ymm11, %ymm10, %ymm10
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm11
	vpxor	%ymm11, %ymm9, %ymm9
	vpxor	%ymm0, %ymm9, %ymm0
	vmovdqa	(%rsp), %ymm9
	vpxor	(%rsi), %ymm9, %ymm9
	vpclmulqdq	$17, %ymm14, %ymm4, %ymm11
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
	vmovdqa	128(%rsp), %ymm11
	vpxor	%ymm10, %ymm9, %ymm9
	vpxor	%ymm0, %ymm9, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpslldq	$8, %ymm0, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpsrldq	$8, %ymm0, %ymm0
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm10
	vpshufd	$78, %ymm9, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpshufd	$78, %ymm9, %ymm10
	vpxor	%ymm0, %ymm10, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpclmulqdq	$16, %ymm11, %ymm9, %ymm8
	vpxor	%ymm0, %ymm8, %ymm12
	addq	$256, %rsi
	addq	$-256, %r14
	cmpq	$255, %r14
	ja	.LBB4_22
	vmovdqa	288(%rsp), %ymm13
	vmovdqa	352(%rsp), %ymm14
	vmovdqa	96(%rsp), %ymm9
	vmovdqa	416(%rsp), %xmm1
	vmovdqa	384(%rsp), %xmm3
	vmovdqa	320(%rsp), %xmm2
	vmovdqa	1008(%rsp), %xmm5
	jmp	.LBB4_13
.LBB4_12:
	movq	%r13, %r14
	movq	%rbx, %rsi
.LBB4_13:
	vaesenclast	.LCPI4_12(%rip), %xmm2, %xmm2
	vpxor	%xmm1, %xmm13, %xmm4
	vpunpcklqdq	%xmm3, %xmm5, %xmm0
	cmpq	$32, %r14
	jb	.LBB4_16
	vinserti128	$1, %xmm9, %ymm9, %ymm1
	.p2align	4
.LBB4_15:
	addq	$-32, %r14
	vpxor	(%rsi), %ymm12, %ymm3
	addq	$32, %rsi
	vpunpcklqdq	%ymm3, %ymm1, %ymm5
	vpunpckhqdq	%ymm3, %ymm1, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm3, %ymm1, %ymm6
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm5
	vpclmulqdq	$17, %ymm3, %ymm1, %ymm3
	vpxor	%ymm3, %ymm6, %ymm7
	vpxor	%ymm7, %ymm5, %ymm5
	vpslldq	$8, %ymm5, %ymm7
	vpxor	%ymm7, %ymm6, %ymm6
	vpsrldq	$8, %ymm5, %ymm5
	vpclmulqdq	$16, %ymm11, %ymm6, %ymm7
	vpshufd	$78, %ymm6, %ymm6
	vpxor	%ymm6, %ymm7, %ymm6
	vpclmulqdq	$16, %ymm11, %ymm6, %ymm7
	vpshufd	$78, %ymm6, %ymm6
	vpxor	%ymm6, %ymm5, %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm7, %ymm12
	cmpq	$31, %r14
	ja	.LBB4_15
.LBB4_16:
	movq	40(%rbp), %r15
	vmovdqa	160(%rsp), %xmm1
	vpunpcklqdq	192(%rsp), %xmm1, %xmm1
	vpxor	%xmm4, %xmm2, %xmm15
	vpsllq	$3, %xmm0, %xmm2
	testq	%r14, %r14
	vmovdqa	%ymm15, 320(%rsp)
	je	.LBB4_17
	vmovdqa	%xmm2, 224(%rsp)
	vmovdqa	%xmm1, 32(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	%r14, %rdx
	vmovdqa	%ymm12, (%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	96(%rsp), %ymm1
	vmovdqa	(%rsp), %ymm0
	vpxor	64(%rsp), %ymm0, %ymm0
	cmpq	$17, %r14
	jae	.LBB4_26
	vmovaps	256(%rsp), %xmm1
.LBB4_26:
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
	vmovdqa	128(%rsp), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm12
	vmovdqa	576(%rsp), %ymm4
	vmovdqa	544(%rsp), %ymm5
	vmovdqa	512(%rsp), %ymm6
	vmovdqa	480(%rsp), %ymm7
	vmovdqa	288(%rsp), %ymm13
	vmovdqa	352(%rsp), %ymm14
	vmovdqa	320(%rsp), %ymm15
	vmovdqa	32(%rsp), %xmm1
	vmovdqa	224(%rsp), %xmm2
	jmp	.LBB4_27
.LBB4_17:
	vmovdqa	576(%rsp), %ymm4
	vmovdqa	544(%rsp), %ymm5
	vmovdqa	512(%rsp), %ymm6
	vmovdqa	480(%rsp), %ymm7
.LBB4_27:
	vextracti128	$1, %ymm12, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm12, %xmm1
	vmovdqa	256(%rsp), %xmm8
	vpclmulqdq	$1, %xmm1, %xmm8, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm8, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm8, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI4_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	movq	24(%rbp), %rax
	vpand	.LCPI4_15(%rip), %xmm0, %xmm0
	vmovdqa	800(%rsp), %ymm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqa	832(%rsp), %ymm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa	768(%rsp), %ymm3
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vmovdqa	736(%rsp), %ymm8
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa	704(%rsp), %ymm9
	vaesenc	%xmm9, %xmm0, %xmm0
	vmovdqa	672(%rsp), %ymm10
	vaesenc	%xmm10, %xmm0, %xmm0
	vmovdqa	640(%rsp), %ymm11
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	608(%rsp), %ymm12
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm14, %xmm0, %xmm0
	vaesenclast	%xmm15, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r15)
	vpor	.LCPI4_16(%rip), %xmm0, %xmm0
	cmpq	$256, %r13
	jb	.LBB4_31
	vinserti128	$1, %xmm2, %ymm2, %ymm2
	vmovdqa	%ymm2, 128(%rsp)
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vmovdqa	%ymm1, 32(%rsp)
	vinserti128	$1, %xmm3, %ymm3, %ymm1
	vmovdqa	%ymm1, 96(%rsp)
	vinserti128	$1, %xmm4, %ymm4, %ymm1
	vmovdqa	%ymm1, 256(%rsp)
	vinserti128	$1, %xmm5, %ymm5, %ymm1
	vmovdqa	%ymm1, 224(%rsp)
	vinserti128	$1, %xmm6, %ymm6, %ymm1
	vmovdqa	%ymm1, 192(%rsp)
	vinserti128	$1, %xmm7, %ymm7, %ymm1
	vmovdqa	%ymm1, 160(%rsp)
	vinserti128	$1, %xmm8, %ymm8, %ymm1
	vmovdqa	%ymm1, 448(%rsp)
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vinserti128	$1, %xmm10, %ymm10, %ymm10
	vinserti128	$1, %xmm11, %ymm11, %ymm11
	vinserti128	$1, %xmm12, %ymm12, %ymm12
	vinserti128	$1, %xmm13, %ymm13, %ymm13
	vinserti128	$1, %xmm14, %ymm14, %ymm14
	vinserti128	$1, %xmm15, %ymm15, %ymm15
	.p2align	4
.LBB4_29:
	vmovdqa	%ymm0, (%rsp)
	vpaddd	.LCPI4_0(%rip), %xmm0, %xmm1
	vinserti128	$1, %xmm1, %ymm0, %ymm1
	vmovdqa	(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vpaddd	.LCPI4_17(%rip), %ymm0, %ymm2
	vpaddd	.LCPI4_18(%rip), %ymm0, %ymm3
	vpaddd	.LCPI4_19(%rip), %ymm0, %ymm4
	vpaddd	.LCPI4_20(%rip), %ymm0, %ymm5
	vpaddd	.LCPI4_21(%rip), %ymm0, %ymm6
	vpaddd	.LCPI4_22(%rip), %ymm0, %ymm7
	vpaddd	.LCPI4_23(%rip), %ymm0, %ymm0
	vmovdqa	128(%rsp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vpxor	%ymm2, %ymm8, %ymm2
	vpxor	%ymm3, %ymm8, %ymm3
	vpxor	%ymm4, %ymm8, %ymm4
	vpxor	%ymm5, %ymm8, %ymm5
	vpxor	%ymm6, %ymm8, %ymm6
	vpxor	%ymm7, %ymm8, %ymm7
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqa	32(%rsp), %ymm8
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm0
	vmovdqa	96(%rsp), %ymm8
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm0
	vmovdqa	256(%rsp), %ymm8
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm0
	vmovdqa	224(%rsp), %ymm8
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm0
	vmovdqa	192(%rsp), %ymm8
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm0
	vmovdqa	160(%rsp), %ymm8
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm0
	vmovdqa	448(%rsp), %ymm8
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm2, %ymm2
	vaesenc	%ymm8, %ymm3, %ymm3
	vaesenc	%ymm8, %ymm4, %ymm4
	vaesenc	%ymm8, %ymm5, %ymm5
	vaesenc	%ymm8, %ymm6, %ymm6
	vaesenc	%ymm8, %ymm7, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm1, %ymm1
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm10, %ymm1, %ymm1
	vaesenc	%ymm10, %ymm2, %ymm2
	vaesenc	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm10, %ymm4, %ymm4
	vaesenc	%ymm10, %ymm5, %ymm5
	vaesenc	%ymm10, %ymm6, %ymm6
	vaesenc	%ymm10, %ymm7, %ymm7
	vaesenc	%ymm10, %ymm0, %ymm0
	vaesenc	%ymm11, %ymm1, %ymm1
	vaesenc	%ymm11, %ymm2, %ymm2
	vaesenc	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm5, %ymm5
	vaesenc	%ymm11, %ymm6, %ymm6
	vaesenc	%ymm11, %ymm7, %ymm7
	vaesenc	%ymm11, %ymm0, %ymm0
	vaesenc	%ymm12, %ymm1, %ymm1
	vaesenc	%ymm12, %ymm2, %ymm2
	vaesenc	%ymm12, %ymm3, %ymm3
	vaesenc	%ymm12, %ymm4, %ymm4
	vaesenc	%ymm12, %ymm5, %ymm5
	vaesenc	%ymm12, %ymm6, %ymm6
	vaesenc	%ymm12, %ymm7, %ymm7
	vaesenc	%ymm12, %ymm0, %ymm0
	vaesenc	%ymm13, %ymm1, %ymm1
	vaesenc	%ymm13, %ymm2, %ymm2
	vaesenc	%ymm13, %ymm3, %ymm3
	vaesenc	%ymm13, %ymm4, %ymm4
	vaesenc	%ymm13, %ymm5, %ymm5
	vaesenc	%ymm13, %ymm6, %ymm6
	vaesenc	%ymm13, %ymm7, %ymm7
	vaesenc	%ymm13, %ymm0, %ymm0
	vaesenc	%ymm14, %ymm1, %ymm1
	vaesenc	%ymm14, %ymm2, %ymm2
	vaesenc	%ymm14, %ymm3, %ymm3
	vaesenc	%ymm14, %ymm4, %ymm4
	vaesenc	%ymm14, %ymm5, %ymm5
	vaesenc	%ymm14, %ymm6, %ymm6
	vaesenc	%ymm14, %ymm7, %ymm7
	vaesenc	%ymm14, %ymm0, %ymm0
	vaesenclast	%ymm15, %ymm1, %ymm1
	vaesenclast	%ymm15, %ymm2, %ymm2
	vaesenclast	%ymm15, %ymm3, %ymm3
	vaesenclast	%ymm15, %ymm4, %ymm4
	vaesenclast	%ymm15, %ymm5, %ymm5
	vaesenclast	%ymm15, %ymm6, %ymm6
	vaesenclast	%ymm15, %ymm7, %ymm7
	vaesenclast	%ymm15, %ymm0, %ymm0
	vpxor	(%rbx), %ymm1, %ymm1
	vpxor	32(%rbx), %ymm2, %ymm2
	vpxor	64(%rbx), %ymm3, %ymm3
	vpxor	96(%rbx), %ymm4, %ymm4
	vpxor	128(%rbx), %ymm5, %ymm5
	vpxor	160(%rbx), %ymm6, %ymm6
	vpxor	192(%rbx), %ymm7, %ymm7
	vpxor	224(%rbx), %ymm0, %ymm0
	vmovdqu	%ymm1, (%rax)
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	%ymm3, 64(%rax)
	vmovdqu	%ymm4, 96(%rax)
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	%ymm6, 160(%rax)
	vmovdqu	%ymm7, 192(%rax)
	vmovdqu	%ymm0, 224(%rax)
	vmovdqa	(%rsp), %ymm0
	addq	$256, %rbx
	addq	$256, %rax
	addq	$-256, %r13
	vpaddd	.LCPI4_24(%rip), %xmm0, %xmm0
	cmpq	$255, %r13
	ja	.LBB4_29
	vmovdqa	832(%rsp), %ymm1
	vmovdqa	800(%rsp), %ymm2
	vmovdqa	768(%rsp), %ymm3
	vmovdqa	576(%rsp), %ymm4
	vmovdqa	544(%rsp), %ymm5
	vmovdqa	512(%rsp), %ymm6
	vmovdqa	480(%rsp), %ymm7
	vmovdqa	288(%rsp), %ymm13
	vmovdqa	352(%rsp), %ymm14
	vmovdqa	320(%rsp), %ymm15
.LBB4_31:
	cmpq	$32, %r13
	jb	.LBB4_38
	vmovdqa	%ymm0, (%rsp)
	vinserti128	$1, %xmm2, %ymm2, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vinserti128	$1, %xmm1, %ymm1, %ymm2
	vinserti128	$1, %xmm3, %ymm3, %ymm1
	vinserti128	$1, %xmm4, %ymm4, %ymm4
	vinserti128	$1, %xmm5, %ymm5, %ymm5
	vinserti128	$1, %xmm6, %ymm6, %ymm6
	vinserti128	$1, %xmm7, %ymm7, %ymm7
	vmovdqa	736(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm9
	vmovdqa	704(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm10
	vmovdqa	672(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm11
	vmovdqa	640(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm12
	vmovdqa	608(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm8
	vinserti128	$1, %xmm13, %ymm13, %ymm13
	vinserti128	$1, %xmm14, %ymm14, %ymm14
	vinserti128	$1, %xmm15, %ymm15, %ymm15
	leaq	-32(%r13), %r14
	testb	$32, %r14b
	vmovdqa	%ymm4, 256(%rsp)
	vmovdqa	%ymm2, 224(%rsp)
	vmovdqa	%ymm8, 32(%rsp)
	vmovdqa	%ymm11, 96(%rsp)
	jne	.LBB4_33
	leaq	32(%rbx), %rsi
	leaq	32(%rax), %r15
	vmovdqa	(%rsp), %ymm0
	vmovdqa	%ymm1, %ymm11
	vpaddd	.LCPI4_0(%rip), %xmm0, %xmm1
	vinserti128	$1, %xmm1, %ymm0, %ymm3
	vpaddd	.LCPI4_1(%rip), %xmm0, %xmm8
	vmovdqa	128(%rsp), %ymm1
	vpxor	%ymm3, %ymm1, %ymm0
	vmovdqa	%ymm11, %ymm1
	vaesenc	%ymm2, %ymm0, %ymm0
	vaesenc	%ymm11, %ymm0, %ymm0
	vaesenc	%ymm4, %ymm0, %ymm0
	vmovdqa	%ymm8, %ymm4
	vaesenc	%ymm5, %ymm0, %ymm0
	vaesenc	%ymm6, %ymm0, %ymm0
	vaesenc	%ymm7, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm10, %ymm0, %ymm0
	vmovdqa	96(%rsp), %ymm11
	vaesenc	%ymm11, %ymm0, %ymm0
	vaesenc	%ymm12, %ymm0, %ymm0
	vmovdqa	32(%rsp), %ymm8
	vaesenc	%ymm8, %ymm0, %ymm0
	vaesenc	%ymm13, %ymm0, %ymm0
	vaesenc	%ymm14, %ymm0, %ymm0
	vaesenclast	%ymm15, %ymm0, %ymm0
	vpxor	(%rbx), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	movq	%r15, %rax
	vmovdqa	%xmm4, %xmm0
	movq	%r14, %r13
	movq	%rsi, %rbx
	cmpq	$32, %r14
	jae	.LBB4_36
	jmp	.LBB4_39
.LBB4_33:
	vmovdqa	(%rsp), %ymm0
	cmpq	$32, %r14
	jb	.LBB4_39
.LBB4_36:
	vmovdqa	%ymm15, 192(%rsp)
	vmovdqa	%ymm14, 160(%rsp)
	vmovdqa	%ymm13, 448(%rsp)
	vmovdqa	%ymm12, 960(%rsp)
	vmovdqa	%ymm10, 928(%rsp)
	vmovdqa	%ymm9, 896(%rsp)
	vmovdqa	%ymm7, 864(%rsp)
	vmovdqa	%ymm6, 416(%rsp)
	vmovdqa	%ymm5, 384(%rsp)
	vmovdqa	%ymm1, (%rsp)
	vmovdqa	128(%rsp), %ymm2
	vmovdqa	224(%rsp), %ymm5
	vmovdqa	256(%rsp), %ymm4
	vmovdqa	384(%rsp), %ymm3
	vmovdqa	416(%rsp), %ymm6
	vmovdqa	864(%rsp), %ymm7
	vmovdqa	896(%rsp), %ymm8
	vmovdqa	928(%rsp), %ymm9
	vmovdqa	96(%rsp), %ymm10
	vmovdqa	960(%rsp), %ymm11
	vmovdqa	32(%rsp), %ymm12
	vmovdqa	448(%rsp), %ymm13
	vmovdqa	160(%rsp), %ymm14
	vmovdqa	192(%rsp), %ymm15
	.p2align	4
.LBB4_37:
	vpaddd	.LCPI4_0(%rip), %xmm0, %xmm1
	vinserti128	$1, %xmm1, %ymm0, %ymm1
	vpxor	%ymm1, %ymm2, %ymm1
	vaesenc	%ymm5, %ymm1, %ymm1
	vaesenc	(%rsp), %ymm1, %ymm1
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm3, %ymm1, %ymm1
	vaesenc	%ymm6, %ymm1, %ymm1
	vaesenc	%ymm7, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm9, %ymm1, %ymm1
	vaesenc	%ymm10, %ymm1, %ymm1
	vaesenc	%ymm11, %ymm1, %ymm1
	vaesenc	%ymm12, %ymm1, %ymm1
	vaesenc	%ymm13, %ymm1, %ymm1
	vaesenc	%ymm14, %ymm1, %ymm1
	vaesenclast	%ymm15, %ymm1, %ymm1
	vpxor	(%rbx), %ymm1, %ymm1
	vmovdqu	%ymm1, (%rax)
	vinserti128	$1, %xmm0, %ymm0, %ymm1
	vpaddd	.LCPI4_17(%rip), %ymm1, %ymm1
	vpxor	%ymm1, %ymm2, %ymm1
	vaesenc	%ymm5, %ymm1, %ymm1
	vaesenc	(%rsp), %ymm1, %ymm1
	vaesenc	%ymm4, %ymm1, %ymm1
	vaesenc	%ymm3, %ymm1, %ymm1
	vaesenc	%ymm6, %ymm1, %ymm1
	vaesenc	%ymm7, %ymm1, %ymm1
	vaesenc	%ymm8, %ymm1, %ymm1
	vaesenc	%ymm9, %ymm1, %ymm1
	vaesenc	%ymm10, %ymm1, %ymm1
	vaesenc	%ymm11, %ymm1, %ymm1
	vaesenc	%ymm12, %ymm1, %ymm1
	vaesenc	%ymm13, %ymm1, %ymm1
	vaesenc	%ymm14, %ymm1, %ymm1
	vaesenclast	%ymm15, %ymm1, %ymm1
	vpxor	32(%rbx), %ymm1, %ymm1
	vmovdqu	%ymm1, 32(%rax)
	addq	$64, %rbx
	addq	$64, %rax
	addq	$-64, %r13
	vpaddd	.LCPI4_3(%rip), %xmm0, %xmm0
	cmpq	$31, %r13
	ja	.LBB4_37
.LBB4_38:
	movq	%rbx, %rsi
	movq	%rax, %r15
	movq	%r13, %r14
	vmovdqa	%xmm0, %xmm4
.LBB4_39:
	testq	%r14, %r14
	je	.LBB4_41
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 64(%rsp)
	leaq	64(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %rbx
	movq	%r14, %rdx
	vmovdqa	%ymm4, (%rsp)
	vzeroupper
	callq	*%rbx
	vmovdqa	(%rsp), %ymm1
	vpaddd	.LCPI4_0(%rip), %xmm1, %xmm0
	vinserti128	$1, %xmm0, %ymm1, %ymm0
	vmovdqa	800(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	832(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	768(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	576(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	544(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	512(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	480(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	736(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	704(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	672(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	640(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	608(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	288(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	352(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	320(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenclast	%ymm1, %ymm0, %ymm0
	vpxor	64(%rsp), %ymm0, %ymm0
	vmovdqa	%ymm0, 64(%rsp)
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	vzeroupper
	callq	*%rbx
.LBB4_41:
	movzbl	%r12b, %eax
.LBB4_42:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Lfunc_end4:
	.size	haberdashery_aes256gcmsiv_raptorlake_encrypt, .Lfunc_end4-haberdashery_aes256gcmsiv_raptorlake_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI5_1:
	.quad	2
	.quad	0
.LCPI5_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI5_3:
	.quad	4
	.quad	0
.LCPI5_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI5_5:
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
.LCPI5_6:
	.quad	4294967297
	.quad	4294967297
.LCPI5_7:
	.quad	8589934594
	.quad	8589934594
.LCPI5_8:
	.quad	17179869188
	.quad	17179869188
.LCPI5_9:
	.quad	34359738376
	.quad	34359738376
.LCPI5_10:
	.quad	68719476752
	.quad	68719476752
.LCPI5_11:
	.quad	137438953504
	.quad	137438953504
.LCPI5_12:
	.quad	274877907008
	.quad	274877907008
.LCPI5_14:
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
	.byte	128
.LCPI5_22:
	.long	16
	.long	0
	.long	0
	.long	0
.LCPI5_23:
	.long	17
	.long	0
	.long	0
	.long	0
.LCPI5_31:
	.zero	8
	.quad	-4467570830351532032
.LCPI5_32:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_13:
	.quad	-4467570830351532032
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_15:
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI5_16:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI5_17:
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI5_18:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
.LCPI5_19:
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI5_20:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
.LCPI5_21:
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI5_24:
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI5_25:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
.LCPI5_26:
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
.LCPI5_27:
	.long	24
	.long	0
	.long	0
	.long	0
	.long	25
	.long	0
	.long	0
	.long	0
.LCPI5_28:
	.long	26
	.long	0
	.long	0
	.long	0
	.long	27
	.long	0
	.long	0
	.long	0
.LCPI5_29:
	.long	28
	.long	0
	.long	0
	.long	0
	.long	29
	.long	0
	.long	0
	.long	0
.LCPI5_30:
	.long	30
	.long	0
	.long	0
	.long	0
	.long	31
	.long	0
	.long	0
	.long	0
.LCPI5_33:
	.zero	32
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_34:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_raptorlake_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_raptorlake_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_raptorlake_decrypt,@function
haberdashery_aes256gcmsiv_raptorlake_decrypt:
	.cfi_startproc
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
	subq	$1760, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	16(%rbp), %rbx
	xorl	%eax, %eax
	cmpq	48(%rbp), %rbx
	jne	.LBB5_33
	cmpq	$12, %rdx
	jne	.LBB5_33
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB5_33
	cmpq	%rdx, %rbx
	jae	.LBB5_33
	cmpq	$16, 32(%rbp)
	jb	.LBB5_33
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm2
	vxorps	.LCPI5_0(%rip), %xmm2, %xmm3
	vxorps	.LCPI5_1(%rip), %xmm2, %xmm0
	vxorps	.LCPI5_2(%rip), %xmm2, %xmm4
	vxorps	.LCPI5_3(%rip), %xmm2, %xmm1
	vxorps	.LCPI5_4(%rip), %xmm2, %xmm5
	vmovaps	16(%rdi), %xmm6
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	vmovaps	64(%rdi), %xmm9
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm5, %xmm5
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpunpcklqdq	%xmm3, %xmm2, %xmm7
	vpunpcklqdq	%xmm4, %xmm0, %xmm6
	vpunpcklqdq	%xmm5, %xmm1, %xmm5
	vpslldq	$4, %xmm6, %xmm3
	vpxor	%xmm2, %xmm2, %xmm2
	vpunpcklqdq	%xmm0, %xmm2, %xmm4
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpxor	%xmm0, %xmm4, %xmm0
	vpxor	%xmm0, %xmm3, %xmm3
	vpbroadcastd	.LCPI5_34(%rip), %xmm10
	vpshufb	%xmm10, %xmm5, %xmm4
	vaesenclast	.LCPI5_6(%rip), %xmm4, %xmm4
	vmovdqa	%ymm6, 768(%rsp)
	vpxor	%xmm6, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm6
	vpslldq	$4, %xmm5, %xmm3
	vpunpcklqdq	%xmm1, %xmm2, %xmm4
	vinsertps	$55, %xmm1, %xmm0, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpshufd	$255, %xmm6, %xmm3
	vaesenclast	%xmm2, %xmm3, %xmm3
	vmovdqa	%ymm5, 736(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm4
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm10, %xmm4, %xmm3
	vaesenclast	.LCPI5_7(%rip), %xmm3, %xmm3
	vmovdqa	%ymm6, 704(%rsp)
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm3
	vaesenclast	%xmm2, %xmm3, %xmm3
	vmovdqa	%ymm4, 672(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm4
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm10, %xmm4, %xmm3
	vaesenclast	.LCPI5_8(%rip), %xmm3, %xmm3
	vmovdqa	%ymm5, 640(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm3
	vaesenclast	%xmm2, %xmm3, %xmm3
	vmovdqa	%ymm4, 608(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm4
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm10, %xmm4, %xmm3
	vaesenclast	.LCPI5_9(%rip), %xmm3, %xmm3
	vmovdqa	%ymm5, 576(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm3
	vaesenclast	%xmm2, %xmm3, %xmm3
	vmovdqa	%ymm4, 544(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm4
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm10, %xmm4, %xmm3
	vaesenclast	.LCPI5_10(%rip), %xmm3, %xmm3
	vmovdqa	%ymm5, 512(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm5
	vpslldq	$4, %xmm4, %xmm1
	vpslldq	$8, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm4, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm5, %xmm3
	vaesenclast	%xmm2, %xmm3, %xmm3
	vmovdqa	%ymm4, 480(%rsp)
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm6
	vpslldq	$4, %xmm5, %xmm1
	vpslldq	$8, %xmm5, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufb	%xmm10, %xmm6, %xmm3
	vaesenclast	.LCPI5_11(%rip), %xmm3, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqa	%ymm5, 448(%rsp)
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm8
	vpslldq	$4, %xmm6, %xmm1
	vpslldq	$8, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpslldq	$12, %xmm6, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpshufd	$255, %xmm8, %xmm3
	vaesenclast	%xmm2, %xmm3, %xmm2
	vmovdqa	%ymm6, 416(%rsp)
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vmovdqa	%ymm1, 256(%rsp)
	vpslldq	$4, %xmm8, %xmm1
	vpslldq	$8, %xmm8, %xmm2
	vpxor	%xmm2, %xmm1, %xmm12
	vpclmulqdq	$0, %xmm7, %xmm7, %xmm2
	vpbroadcastq	.LCPI5_13(%rip), %ymm1
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vmovdqa	%xmm7, 240(%rsp)
	vpclmulqdq	$17, %xmm7, %xmm7, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm9, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm9, %xmm9, %xmm3
	vpshufd	$78, %xmm2, %xmm4
	vpxor	%xmm4, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm2, %xmm2
	vpxor	%xmm2, %xmm3, %xmm2
	vinserti128	$1, %xmm2, %ymm2, %ymm15
	vinserti128	$1, %xmm2, %ymm9, %ymm2
	vpunpckhqdq	%ymm2, %ymm15, %ymm3
	vpunpcklqdq	%ymm2, %ymm15, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm15, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm15, %ymm2
	vpxor	%ymm2, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpslldq	$8, %ymm3, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm5
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpshufd	$78, %ymm4, %ymm5
	vpxor	%ymm5, %ymm3, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpunpckhqdq	%ymm2, %ymm15, %ymm3
	vpunpcklqdq	%ymm2, %ymm15, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpclmulqdq	$1, %ymm3, %ymm3, %ymm3
	vpclmulqdq	$0, %ymm2, %ymm15, %ymm4
	vpclmulqdq	$17, %ymm2, %ymm15, %ymm5
	vpxor	%ymm5, %ymm4, %ymm6
	vpxor	%ymm6, %ymm3, %ymm3
	vpslldq	$8, %ymm3, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm6
	vpshufd	$78, %ymm4, %ymm4
	vpxor	%ymm4, %ymm6, %ymm4
	vpsrldq	$8, %ymm3, %ymm3
	vpshufd	$78, %ymm4, %ymm6
	vpxor	%ymm6, %ymm3, %ymm3
	vpxor	%ymm5, %ymm3, %ymm3
	vpclmulqdq	$16, %ymm1, %ymm4, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpunpcklqdq	%ymm3, %ymm15, %ymm4
	vpunpckhqdq	%ymm3, %ymm15, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$0, %ymm3, %ymm15, %ymm5
	vpclmulqdq	$17, %ymm3, %ymm15, %ymm6
	vpxor	%ymm6, %ymm5, %ymm7
	vpxor	%ymm7, %ymm4, %ymm4
	vpslldq	$8, %ymm4, %ymm7
	vpxor	%ymm7, %ymm5, %ymm5
	vpclmulqdq	$16, %ymm1, %ymm5, %ymm7
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm7, %ymm5
	vpsrldq	$8, %ymm4, %ymm4
	vpshufd	$78, %ymm5, %ymm7
	vpxor	%ymm7, %ymm4, %ymm4
	vmovdqa	%ymm1, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm1, %ymm5, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vextracti128	$1, %ymm2, %xmm5
	vpermq	$68, %ymm2, %ymm1
	vextracti128	$1, %ymm3, %xmm6
	vxorps	%xmm2, %xmm2, %xmm2
	vpermq	$68, %ymm3, %ymm2
	vextracti128	$1, %ymm4, %xmm11
	vpermq	$68, %ymm4, %ymm0
	vmovdqa	%ymm8, 288(%rsp)
	vpslldq	$12, %xmm8, %xmm3
	vpxor	%xmm4, %xmm4, %xmm4
	cmpq	$256, %r8
	vmovdqa	%ymm9, 800(%rsp)
	vmovdqa	%ymm15, 160(%rsp)
	vmovdqa	%ymm7, 192(%rsp)
	vmovdqa	%ymm0, 1120(%rsp)
	vmovdqa	%ymm2, 1088(%rsp)
	vmovdqa	%ymm1, 1056(%rsp)
	vmovdqa	%ymm5, 32(%rsp)
	vmovdqa	%ymm6, 352(%rsp)
	vmovdqa	%ymm11, 320(%rsp)
	jb	.LBB5_6
	vmovdqa	%xmm3, 128(%rsp)
	vmovdqa	%xmm12, 64(%rsp)
	vinserti128	$1, %xmm9, %ymm9, %ymm3
	vmovdqa	%ymm3, (%rsp)
	vinserti128	$1, %xmm5, %ymm5, %ymm3
	vinserti128	$1, %xmm6, %ymm6, %ymm5
	vinserti128	$1, %xmm11, %ymm11, %ymm6
	movq	%r8, %r14
	.p2align	4
.LBB5_18:
	vmovdqu	128(%rcx), %ymm7
	vmovdqu	160(%rcx), %ymm8
	vmovdqu	192(%rcx), %ymm9
	vmovdqu	224(%rcx), %ymm10
	vmovdqa	(%rsp), %ymm13
	vpunpcklqdq	%ymm10, %ymm13, %ymm11
	vpunpckhqdq	%ymm10, %ymm13, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm13, %ymm12
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm11
	vpclmulqdq	$17, %ymm10, %ymm13, %ymm10
	vpunpcklqdq	%ymm9, %ymm15, %ymm13
	vpunpckhqdq	%ymm9, %ymm15, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm9, %ymm15, %ymm14
	vpxor	%ymm12, %ymm14, %ymm12
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpxor	%ymm11, %ymm13, %ymm11
	vpclmulqdq	$17, %ymm9, %ymm15, %ymm9
	vpxor	%ymm10, %ymm9, %ymm10
	vpunpcklqdq	%ymm8, %ymm1, %ymm9
	vpunpckhqdq	%ymm8, %ymm1, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vpclmulqdq	$0, %ymm8, %ymm1, %ymm9
	vpunpcklqdq	%ymm7, %ymm3, %ymm14
	vpunpckhqdq	%ymm7, %ymm3, %ymm15
	vpxor	%ymm14, %ymm15, %ymm14
	vpclmulqdq	$0, %ymm7, %ymm3, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vmovdqu	64(%rcx), %ymm15
	vpxor	%ymm9, %ymm12, %ymm9
	vmovdqu	96(%rcx), %ymm12
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpclmulqdq	$17, %ymm8, %ymm1, %ymm8
	vpclmulqdq	$1, %ymm14, %ymm14, %ymm14
	vpxor	%ymm14, %ymm13, %ymm13
	vpxor	%ymm13, %ymm11, %ymm11
	vpclmulqdq	$17, %ymm7, %ymm3, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpxor	%ymm7, %ymm10, %ymm7
	vpunpcklqdq	%ymm12, %ymm2, %ymm8
	vpunpckhqdq	%ymm12, %ymm2, %ymm10
	vpxor	%ymm8, %ymm10, %ymm8
	vpclmulqdq	$0, %ymm12, %ymm2, %ymm10
	vpunpcklqdq	%ymm15, %ymm5, %ymm13
	vpunpckhqdq	%ymm15, %ymm5, %ymm14
	vpxor	%ymm13, %ymm14, %ymm13
	vpclmulqdq	$0, %ymm15, %ymm5, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	32(%rcx), %ymm14
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm12, %ymm2, %ymm12
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm13
	vpxor	%ymm13, %ymm8, %ymm8
	vpclmulqdq	$17, %ymm15, %ymm5, %ymm13
	vpxor	%ymm13, %ymm12, %ymm12
	vpunpcklqdq	%ymm14, %ymm0, %ymm13
	vpunpckhqdq	%ymm14, %ymm0, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vpclmulqdq	$0, %ymm14, %ymm0, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vmovdqa	160(%rsp), %ymm15
	vpxor	%ymm10, %ymm9, %ymm9
	vpclmulqdq	$1, %ymm13, %ymm13, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm8, %ymm11, %ymm8
	vpxor	(%rcx), %ymm4, %ymm10
	vpclmulqdq	$17, %ymm14, %ymm0, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpxor	%ymm7, %ymm11, %ymm7
	vpunpcklqdq	%ymm10, %ymm6, %ymm11
	vpunpckhqdq	%ymm10, %ymm6, %ymm12
	vpxor	%ymm11, %ymm12, %ymm11
	vpclmulqdq	$0, %ymm10, %ymm6, %ymm12
	vpxor	%ymm12, %ymm9, %ymm9
	vpclmulqdq	$17, %ymm10, %ymm6, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vpclmulqdq	$1, %ymm11, %ymm11, %ymm10
	vpxor	%ymm9, %ymm10, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm7, %ymm8, %ymm8
	vpslldq	$8, %ymm8, %ymm10
	vpxor	%ymm10, %ymm9, %ymm9
	vpsrldq	$8, %ymm8, %ymm8
	vmovdqa	192(%rsp), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm9, %ymm10
	vpshufd	$78, %ymm9, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpshufd	$78, %ymm9, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpclmulqdq	$16, %ymm4, %ymm9, %ymm8
	vpxor	%ymm7, %ymm8, %ymm4
	addq	$256, %rcx
	addq	$-256, %r14
	cmpq	$255, %r14
	ja	.LBB5_18
	vmovdqa	192(%rsp), %ymm7
	vmovdqa	800(%rsp), %ymm9
	vpbroadcastd	.LCPI5_34(%rip), %xmm10
	vmovdqa	64(%rsp), %xmm12
	vmovdqa	128(%rsp), %xmm3
	jmp	.LBB5_7
.LBB5_6:
	movq	%r8, %r14
.LBB5_7:
	vpxor	%xmm3, %xmm12, %xmm1
	vmovdqa	256(%rsp), %ymm2
	vpshufb	%xmm10, %xmm2, %xmm0
	movq	24(%rbp), %rax
	cmpq	$32, %r14
	jb	.LBB5_10
	vinserti128	$1, %xmm9, %ymm9, %ymm2
	.p2align	4
.LBB5_9:
	addq	$-32, %r14
	vpxor	(%rcx), %ymm4, %ymm3
	addq	$32, %rcx
	vpunpcklqdq	%ymm3, %ymm2, %ymm4
	vpunpckhqdq	%ymm3, %ymm2, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$0, %ymm3, %ymm2, %ymm5
	vpclmulqdq	$1, %ymm4, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm3, %ymm2, %ymm3
	vpxor	%ymm3, %ymm5, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpslldq	$8, %ymm4, %ymm6
	vpxor	%ymm6, %ymm5, %ymm5
	vpsrldq	$8, %ymm4, %ymm4
	vpclmulqdq	$16, %ymm7, %ymm5, %ymm6
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$16, %ymm7, %ymm5, %ymm6
	vpshufd	$78, %ymm5, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpxor	%ymm3, %ymm4, %ymm3
	vpxor	%ymm3, %ymm6, %ymm4
	cmpq	$31, %r14
	ja	.LBB5_9
.LBB5_10:
	vmovss	8(%rsi), %xmm2
	vmovaps	%xmm2, 944(%rsp)
	vmovq	(%rsi), %xmm2
	vmovdqa	%xmm2, 928(%rsp)
	vaesenclast	.LCPI5_12(%rip), %xmm0, %xmm5
	vpxor	288(%rsp), %xmm1, %xmm1
	vmovdqu	(%rax), %xmm0
	vmovdqa	%xmm0, 400(%rsp)
	testq	%r14, %r14
	je	.LBB5_14
	vmovdqa	%xmm1, 128(%rsp)
	vmovdqa	%xmm5, (%rsp)
	movq	%r8, %r15
	movq	%r9, %r12
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 96(%rsp)
	leaq	96(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r14, %rdx
	vmovdqa	%ymm4, 64(%rsp)
	vzeroupper
	callq	*memcpy@GOTPCREL(%rip)
	vmovdqa	800(%rsp), %ymm9
	vmovdqa	64(%rsp), %ymm0
	vpxor	96(%rsp), %ymm0, %ymm0
	vmovdqa	%xmm9, %xmm1
	cmpq	$17, %r14
	jae	.LBB5_13
	vmovaps	240(%rsp), %xmm1
.LBB5_13:
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
	vmovdqa	192(%rsp), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm4
	movq	%r12, %r9
	movq	%r15, %r8
	vmovdqa	(%rsp), %xmm5
	vmovdqa	128(%rsp), %xmm1
.LBB5_14:
	vmovq	%rbx, %xmm2
	vmovq	%r8, %xmm3
	movq	40(%rbp), %rdx
	vpxor	%xmm1, %xmm5, %xmm1
	vmovdqa	400(%rsp), %xmm0
	vpor	.LCPI5_14(%rip), %xmm0, %xmm8
	vinserti128	$1, %xmm9, %ymm9, %ymm11
	cmpq	$256, %rbx
	vmovdqa	%ymm1, 832(%rsp)
	jb	.LBB5_20
	vmovdqa	%ymm4, 64(%rsp)
	vmovdqa	%xmm3, 896(%rsp)
	vmovdqa	%xmm2, 912(%rsp)
	vmovdqa	%ymm11, 1024(%rsp)
	vmovaps	32(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 960(%rsp)
	vmovaps	352(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 992(%rsp)
	vmovaps	320(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 864(%rsp)
	leaq	256(%r9), %rcx
	leaq	256(%rdx), %rax
	vpaddd	.LCPI5_0(%rip), %xmm8, %xmm0
	vmovdqa	%ymm1, %ymm14
	vinserti128	$1, %xmm8, %ymm8, %ymm1
	vpaddd	.LCPI5_15(%rip), %ymm1, %ymm2
	vpaddd	.LCPI5_16(%rip), %ymm1, %ymm3
	vpaddd	.LCPI5_17(%rip), %ymm1, %ymm4
	vpaddd	.LCPI5_18(%rip), %ymm1, %ymm5
	vpaddd	.LCPI5_19(%rip), %ymm1, %ymm6
	vpaddd	.LCPI5_20(%rip), %ymm1, %ymm7
	vpaddd	.LCPI5_21(%rip), %ymm1, %ymm1
	vinserti128	$1, %xmm0, %ymm8, %ymm0
	vmovdqa	768(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vpxor	%ymm0, %ymm9, %ymm0
	vpxor	%ymm2, %ymm9, %ymm2
	vpxor	%ymm3, %ymm9, %ymm3
	vpxor	%ymm4, %ymm9, %ymm4
	vpxor	%ymm5, %ymm9, %ymm5
	vpxor	%ymm6, %ymm9, %ymm6
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqa	%ymm9, 1600(%rsp)
	vpxor	%ymm1, %ymm9, %ymm1
	vmovdqa	736(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1568(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	704(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1536(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	672(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1504(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	640(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1472(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	608(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1440(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	576(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1408(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	544(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1376(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	512(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1344(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm1
	vmovdqa	480(%rsp), %ymm9
	vinserti128	$1, %xmm9, %ymm9, %ymm9
	vaesenc	%ymm9, %ymm0, %ymm0
	vaesenc	%ymm9, %ymm2, %ymm2
	vaesenc	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm9, %ymm4, %ymm4
	vaesenc	%ymm9, %ymm5, %ymm5
	vaesenc	%ymm9, %ymm6, %ymm6
	vaesenc	%ymm9, %ymm7, %ymm7
	vmovdqa	%ymm9, 1312(%rsp)
	vaesenc	%ymm9, %ymm1, %ymm9
	vmovdqa	448(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vaesenc	%ymm1, %ymm2, %ymm10
	vmovdqa	%ymm1, %ymm2
	vaesenc	%ymm1, %ymm3, %ymm3
	vaesenc	%ymm1, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm5, %ymm5
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm1, %ymm7, %ymm7
	vaesenc	%ymm1, %ymm9, %ymm9
	vmovdqa	416(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vaesenc	%ymm1, %ymm10, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm3
	vaesenc	%ymm1, %ymm4, %ymm11
	vmovdqa	%ymm1, %ymm4
	vaesenc	%ymm1, %ymm5, %ymm5
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm1, %ymm7, %ymm7
	vaesenc	%ymm1, %ymm9, %ymm9
	vmovdqa	288(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vaesenc	%ymm1, %ymm10, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm3
	vaesenc	%ymm1, %ymm11, %ymm11
	vaesenc	%ymm1, %ymm5, %ymm12
	vmovdqa	%ymm1, %ymm5
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm1, %ymm7, %ymm7
	vaesenc	%ymm1, %ymm9, %ymm9
	vmovdqa	256(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vaesenc	%ymm1, %ymm10, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm3
	vaesenc	%ymm1, %ymm11, %ymm11
	vaesenc	%ymm1, %ymm12, %ymm12
	vaesenc	%ymm1, %ymm6, %ymm6
	vaesenc	%ymm1, %ymm7, %ymm13
	vaesenc	%ymm1, %ymm9, %ymm9
	vinserti128	$1, %xmm14, %ymm14, %ymm7
	vaesenclast	%ymm7, %ymm0, %ymm0
	vaesenclast	%ymm7, %ymm10, %ymm10
	vaesenclast	%ymm7, %ymm3, %ymm3
	vaesenclast	%ymm7, %ymm11, %ymm11
	vaesenclast	%ymm7, %ymm12, %ymm12
	vaesenclast	%ymm7, %ymm6, %ymm14
	vaesenclast	%ymm7, %ymm13, %ymm13
	vaesenclast	%ymm7, %ymm9, %ymm9
	vpxor	(%r9), %ymm0, %ymm6
	vpxor	32(%r9), %ymm10, %ymm15
	vpxor	64(%r9), %ymm3, %ymm3
	vpxor	96(%r9), %ymm11, %ymm11
	vpxor	128(%r9), %ymm12, %ymm0
	vmovdqa	%ymm3, %ymm12
	vpxor	160(%r9), %ymm14, %ymm14
	vpxor	192(%r9), %ymm13, %ymm10
	vmovdqa	%ymm0, %ymm13
	vpxor	224(%r9), %ymm9, %ymm9
	vmovdqu	%ymm6, (%rdx)
	vmovdqu	%ymm15, 32(%rdx)
	vmovdqu	%ymm3, 64(%rdx)
	vmovdqu	%ymm11, 96(%rdx)
	vmovdqu	%ymm0, 128(%rdx)
	vmovdqu	%ymm14, 160(%rdx)
	vmovdqu	%ymm10, 192(%rdx)
	addq	$-256, %rbx
	vmovdqu	%ymm9, 224(%rdx)
	vpaddd	.LCPI5_22(%rip), %xmm8, %xmm3
	cmpq	$256, %rbx
	jb	.LBB5_16
	vmovdqa	64(%rsp), %ymm0
	vmovdqa	%ymm5, 1280(%rsp)
	vmovdqa	%ymm2, 1216(%rsp)
	vmovdqa	%ymm7, 1248(%rsp)
	vmovdqa	%ymm4, 1184(%rsp)
	vmovdqa	%ymm1, 1152(%rsp)
	vmovdqa	%ymm15, %ymm2
	.p2align	4
.LBB5_23:
	vmovdqa	%ymm2, 32(%rsp)
	vmovdqa	%ymm12, (%rsp)
	vmovdqa	%ymm13, 1664(%rsp)
	vmovdqa	%ymm11, 1696(%rsp)
	vmovdqa	%ymm14, 128(%rsp)
	vmovdqa	%ymm9, 320(%rsp)
	vmovdqa	%ymm10, 352(%rsp)
	vmovdqa	%xmm3, %xmm1
	vmovdqa	%ymm1, 64(%rsp)
	vpxor	%ymm0, %ymm6, %ymm0
	vpaddd	.LCPI5_23(%rip), %xmm8, %xmm3
	vinserti128	$1, %xmm3, %ymm1, %ymm3
	vinserti128	$1, %xmm8, %ymm8, %ymm6
	vpaddd	.LCPI5_24(%rip), %ymm6, %ymm10
	vpaddd	.LCPI5_25(%rip), %ymm6, %ymm11
	vpaddd	.LCPI5_26(%rip), %ymm6, %ymm12
	vmovdqa	864(%rsp), %ymm4
	vpunpcklqdq	%ymm4, %ymm0, %ymm8
	vpunpckhqdq	%ymm4, %ymm0, %ymm13
	vpxor	%ymm8, %ymm13, %ymm15
	vpaddd	.LCPI5_27(%rip), %ymm6, %ymm13
	vpaddd	.LCPI5_28(%rip), %ymm6, %ymm14
	vpaddd	.LCPI5_29(%rip), %ymm6, %ymm9
	vpaddd	.LCPI5_30(%rip), %ymm6, %ymm1
	vmovdqa	1600(%rsp), %ymm2
	vpxor	%ymm3, %ymm2, %ymm8
	vpxor	%ymm2, %ymm10, %ymm6
	vpxor	%ymm2, %ymm11, %ymm10
	vpxor	%ymm2, %ymm12, %ymm11
	vpxor	%ymm2, %ymm13, %ymm12
	vpxor	%ymm2, %ymm14, %ymm13
	vpxor	%ymm2, %ymm9, %ymm14
	vpxor	%ymm1, %ymm2, %ymm3
	vpclmulqdq	$1, %ymm15, %ymm15, %ymm1
	vmovdqa	%ymm1, 1632(%rsp)
	vmovaps	1120(%rsp), %ymm5
	vmovaps	1568(%rsp), %ymm7
	vmovaps	32(%rsp), %ymm1
	#APP
	vaesenc	%ymm7, %ymm8, %ymm8
	vaesenc	%ymm7, %ymm6, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm10
	vaesenc	%ymm7, %ymm11, %ymm11
	vaesenc	%ymm7, %ymm12, %ymm12
	vaesenc	%ymm7, %ymm13, %ymm13
	vaesenc	%ymm7, %ymm14, %ymm14
	vaesenc	%ymm7, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm5, %ymm9
	vpunpckhqdq	%ymm1, %ymm5, %ymm15
	vpxor	%ymm9, %ymm15, %ymm15
	vpclmulqdq	$16, %ymm15, %ymm15, %ymm15
	vpclmulqdq	$0, %ymm1, %ymm5, %ymm2
	vpclmulqdq	$17, %ymm1, %ymm5, %ymm9
	#NO_APP
	vxorps	1632(%rsp), %ymm15, %ymm1
	vmovaps	%ymm1, 32(%rsp)
	vpclmulqdq	$17, %ymm4, %ymm0, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm4, %ymm0, %ymm0
	vpxor	%ymm0, %ymm2, %ymm0
	vmovaps	992(%rsp), %ymm5
	vmovaps	1536(%rsp), %ymm7
	vmovaps	(%rsp), %ymm1
	#APP
	vaesenc	%ymm7, %ymm8, %ymm8
	vaesenc	%ymm7, %ymm6, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm10
	vaesenc	%ymm7, %ymm11, %ymm11
	vaesenc	%ymm7, %ymm12, %ymm12
	vaesenc	%ymm7, %ymm13, %ymm13
	vaesenc	%ymm7, %ymm14, %ymm14
	vaesenc	%ymm7, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm5, %ymm2
	vpunpckhqdq	%ymm1, %ymm5, %ymm15
	vpxor	%ymm2, %ymm15, %ymm15
	vpclmulqdq	$16, %ymm15, %ymm15, %ymm15
	vpclmulqdq	$0, %ymm1, %ymm5, %ymm4
	vpclmulqdq	$17, %ymm1, %ymm5, %ymm2
	#NO_APP
	vpxor	32(%rsp), %ymm15, %ymm1
	vpxor	%ymm2, %ymm9, %ymm2
	vpxor	%ymm4, %ymm0, %ymm0
	vmovdqa	%ymm0, (%rsp)
	vmovaps	1504(%rsp), %ymm5
	vmovaps	1088(%rsp), %ymm7
	vmovaps	1696(%rsp), %ymm0
	#APP
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm11, %ymm11
	vaesenc	%ymm5, %ymm12, %ymm12
	vaesenc	%ymm5, %ymm13, %ymm13
	vaesenc	%ymm5, %ymm14, %ymm14
	vaesenc	%ymm5, %ymm3, %ymm3
	vpunpcklqdq	%ymm0, %ymm7, %ymm4
	vpunpckhqdq	%ymm0, %ymm7, %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm0, %ymm7, %ymm15
	vpclmulqdq	$17, %ymm0, %ymm7, %ymm4
	#NO_APP
	vpxor	%ymm1, %ymm9, %ymm1
	vpxor	%ymm4, %ymm2, %ymm2
	vxorps	(%rsp), %ymm15, %ymm0
	vmovaps	%ymm0, (%rsp)
	vmovaps	1472(%rsp), %ymm5
	vmovaps	960(%rsp), %ymm7
	vmovaps	1664(%rsp), %ymm0
	#APP
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm11, %ymm11
	vaesenc	%ymm5, %ymm12, %ymm12
	vaesenc	%ymm5, %ymm13, %ymm13
	vaesenc	%ymm5, %ymm14, %ymm14
	vaesenc	%ymm5, %ymm3, %ymm3
	vpunpcklqdq	%ymm0, %ymm7, %ymm4
	vpunpckhqdq	%ymm0, %ymm7, %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm0, %ymm7, %ymm15
	vpclmulqdq	$17, %ymm0, %ymm7, %ymm4
	#NO_APP
	vpxor	%ymm1, %ymm9, %ymm1
	vpxor	%ymm4, %ymm2, %ymm2
	vxorps	(%rsp), %ymm15, %ymm0
	vmovaps	%ymm0, (%rsp)
	vmovaps	1056(%rsp), %ymm5
	vmovaps	1440(%rsp), %ymm7
	vmovaps	128(%rsp), %ymm0
	#APP
	vaesenc	%ymm7, %ymm8, %ymm8
	vaesenc	%ymm7, %ymm6, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm10
	vaesenc	%ymm7, %ymm11, %ymm11
	vaesenc	%ymm7, %ymm12, %ymm12
	vaesenc	%ymm7, %ymm13, %ymm13
	vaesenc	%ymm7, %ymm14, %ymm14
	vaesenc	%ymm7, %ymm3, %ymm3
	vpunpcklqdq	%ymm0, %ymm5, %ymm4
	vpunpckhqdq	%ymm0, %ymm5, %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm0, %ymm5, %ymm15
	vpclmulqdq	$17, %ymm0, %ymm5, %ymm4
	#NO_APP
	vpxor	%ymm1, %ymm9, %ymm1
	vpxor	%ymm4, %ymm2, %ymm2
	vxorps	(%rsp), %ymm15, %ymm0
	vmovaps	%ymm0, (%rsp)
	vmovaps	160(%rsp), %ymm5
	vmovaps	1408(%rsp), %ymm7
	vmovaps	352(%rsp), %ymm0
	#APP
	vaesenc	%ymm7, %ymm8, %ymm8
	vaesenc	%ymm7, %ymm6, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm10
	vaesenc	%ymm7, %ymm11, %ymm11
	vaesenc	%ymm7, %ymm12, %ymm12
	vaesenc	%ymm7, %ymm13, %ymm13
	vaesenc	%ymm7, %ymm14, %ymm14
	vaesenc	%ymm7, %ymm3, %ymm3
	vpunpcklqdq	%ymm0, %ymm5, %ymm4
	vpunpckhqdq	%ymm0, %ymm5, %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm0, %ymm5, %ymm15
	vpclmulqdq	$17, %ymm0, %ymm5, %ymm4
	#NO_APP
	vpxor	%ymm1, %ymm9, %ymm1
	vpxor	%ymm4, %ymm2, %ymm2
	vxorps	(%rsp), %ymm15, %ymm0
	vmovaps	%ymm0, 32(%rsp)
	vmovaps	1024(%rsp), %ymm5
	vmovaps	1376(%rsp), %ymm7
	vmovaps	320(%rsp), %ymm0
	#APP
	vaesenc	%ymm7, %ymm8, %ymm8
	vaesenc	%ymm7, %ymm6, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm10
	vaesenc	%ymm7, %ymm11, %ymm11
	vaesenc	%ymm7, %ymm12, %ymm12
	vaesenc	%ymm7, %ymm13, %ymm13
	vaesenc	%ymm7, %ymm14, %ymm14
	vaesenc	%ymm7, %ymm3, %ymm3
	vpunpcklqdq	%ymm0, %ymm5, %ymm4
	vpunpckhqdq	%ymm0, %ymm5, %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpclmulqdq	$16, %ymm9, %ymm9, %ymm9
	vpclmulqdq	$0, %ymm0, %ymm5, %ymm15
	vpclmulqdq	$17, %ymm0, %ymm5, %ymm4
	#NO_APP
	vpxor	%ymm1, %ymm9, %ymm9
	vpxor	%ymm4, %ymm2, %ymm2
	vmovdqa	%ymm2, (%rsp)
	vpxor	32(%rsp), %ymm15, %ymm0
	vpxor	%ymm0, %ymm9, %ymm1
	vpxor	%ymm2, %ymm1, %ymm1
	vpslldq	$8, %ymm1, %ymm2
	vpxor	%ymm2, %ymm0, %ymm0
	vpsrldq	$8, %ymm1, %ymm1
	vmovdqa	192(%rsp), %ymm7
	vpclmulqdq	$16, %ymm7, %ymm0, %ymm2
	vpshufd	$78, %ymm0, %ymm0
	vpxor	%ymm0, %ymm2, %ymm0
	vpshufd	$78, %ymm0, %ymm2
	vpxor	%ymm2, %ymm1, %ymm15
	vmovdqa	1344(%rsp), %ymm5
	vaesenc	%ymm5, %ymm8, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm4
	vaesenc	%ymm5, %ymm11, %ymm6
	vaesenc	%ymm5, %ymm12, %ymm8
	vaesenc	%ymm5, %ymm13, %ymm9
	vaesenc	%ymm5, %ymm14, %ymm10
	vaesenc	%ymm5, %ymm3, %ymm3
	vmovdqa	1312(%rsp), %ymm5
	vaesenc	%ymm5, %ymm1, %ymm1
	vaesenc	%ymm5, %ymm2, %ymm2
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm9, %ymm9
	vaesenc	%ymm5, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm3, %ymm3
	vmovdqa	1216(%rsp), %ymm5
	vaesenc	%ymm5, %ymm1, %ymm1
	vaesenc	%ymm5, %ymm2, %ymm2
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm9, %ymm9
	vaesenc	%ymm5, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm3, %ymm3
	vmovdqa	1184(%rsp), %ymm5
	vaesenc	%ymm5, %ymm1, %ymm1
	vaesenc	%ymm5, %ymm2, %ymm2
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm9, %ymm9
	vaesenc	%ymm5, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm3, %ymm3
	vmovdqa	1280(%rsp), %ymm11
	vaesenc	%ymm11, %ymm1, %ymm1
	vaesenc	%ymm11, %ymm2, %ymm2
	vaesenc	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm6, %ymm6
	vaesenc	%ymm11, %ymm8, %ymm8
	vaesenc	%ymm11, %ymm9, %ymm9
	vaesenc	%ymm11, %ymm10, %ymm10
	vaesenc	%ymm11, %ymm3, %ymm3
	vmovdqa	1152(%rsp), %ymm5
	vaesenc	%ymm5, %ymm1, %ymm1
	vaesenc	%ymm5, %ymm2, %ymm2
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm6
	vaesenc	%ymm5, %ymm8, %ymm8
	vaesenc	%ymm5, %ymm9, %ymm9
	vaesenc	%ymm5, %ymm10, %ymm10
	vaesenc	%ymm5, %ymm3, %ymm3
	vmovdqa	1248(%rsp), %ymm5
	vaesenclast	%ymm5, %ymm1, %ymm1
	vaesenclast	%ymm5, %ymm2, %ymm2
	vaesenclast	%ymm5, %ymm4, %ymm4
	vaesenclast	%ymm5, %ymm6, %ymm11
	vaesenclast	%ymm5, %ymm8, %ymm8
	vaesenclast	%ymm5, %ymm9, %ymm9
	vaesenclast	%ymm5, %ymm10, %ymm10
	vaesenclast	%ymm5, %ymm3, %ymm3
	vpxor	(%rcx), %ymm1, %ymm6
	vpxor	32(%rcx), %ymm2, %ymm2
	vpxor	64(%rcx), %ymm4, %ymm12
	vpxor	96(%rcx), %ymm11, %ymm11
	vpxor	128(%rcx), %ymm8, %ymm13
	vpxor	160(%rcx), %ymm9, %ymm14
	vpxor	192(%rcx), %ymm10, %ymm10
	vpxor	224(%rcx), %ymm3, %ymm9
	vpxor	(%rsp), %ymm15, %ymm1
	leaq	256(%rcx), %rcx
	vmovdqu	%ymm6, (%rax)
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	%ymm12, 64(%rax)
	vmovdqu	%ymm11, 96(%rax)
	vmovdqu	%ymm13, 128(%rax)
	vmovdqu	%ymm14, 160(%rax)
	vmovdqu	%ymm10, 192(%rax)
	vmovdqu	%ymm9, 224(%rax)
	addq	$256, %rax
	addq	$-256, %rbx
	vpclmulqdq	$16, %ymm7, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqa	64(%rsp), %ymm1
	vmovdqa	%xmm1, %xmm8
	vpaddd	.LCPI5_22(%rip), %xmm1, %xmm3
	cmpq	$255, %rbx
	ja	.LBB5_23
	vmovdqa	%ymm2, 32(%rsp)
	vmovdqa	%ymm12, (%rsp)
	vmovdqa	%ymm11, %ymm15
	jmp	.LBB5_25
.LBB5_16:
	vmovdqa	%ymm15, 32(%rsp)
	vmovdqa	%ymm12, (%rsp)
	vmovdqa	%ymm11, %ymm15
	vmovdqa	64(%rsp), %ymm0
.LBB5_25:
	vmovdqa	864(%rsp), %ymm12
	vpxor	%ymm0, %ymm6, %ymm0
	vmovdqa	1024(%rsp), %ymm11
	vpunpcklqdq	%ymm9, %ymm11, %ymm1
	vpunpckhqdq	%ymm9, %ymm11, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	vmovdqa	160(%rsp), %ymm6
	vpunpcklqdq	%ymm10, %ymm6, %ymm2
	vpunpckhqdq	%ymm10, %ymm6, %ymm4
	vpxor	%ymm2, %ymm4, %ymm2
	vpclmulqdq	$0, %ymm9, %ymm11, %ymm4
	vpclmulqdq	$0, %ymm10, %ymm6, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vpclmulqdq	$1, %ymm1, %ymm1, %ymm1
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	vpclmulqdq	$17, %ymm10, %ymm6, %ymm2
	vpclmulqdq	$17, %ymm9, %ymm11, %ymm5
	vpxor	%ymm5, %ymm2, %ymm2
	vmovdqa	1056(%rsp), %ymm7
	vpunpcklqdq	%ymm14, %ymm7, %ymm5
	vpunpckhqdq	%ymm14, %ymm7, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm14, %ymm7, %ymm6
	vpclmulqdq	$17, %ymm14, %ymm7, %ymm7
	vmovdqa	960(%rsp), %ymm10
	vpunpcklqdq	%ymm13, %ymm10, %ymm8
	vpunpckhqdq	%ymm13, %ymm10, %ymm9
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$0, %ymm13, %ymm10, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm5
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm6
	vpxor	%ymm6, %ymm5, %ymm5
	vpxor	%ymm5, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm13, %ymm10, %ymm5
	vpxor	%ymm5, %ymm7, %ymm5
	vpxor	%ymm5, %ymm2, %ymm2
	vmovdqa	1088(%rsp), %ymm7
	vpunpcklqdq	%ymm15, %ymm7, %ymm5
	vpunpckhqdq	%ymm15, %ymm7, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm15, %ymm7, %ymm6
	vpclmulqdq	$17, %ymm15, %ymm7, %ymm7
	vmovdqa	992(%rsp), %ymm10
	vmovdqa	(%rsp), %ymm13
	vpunpcklqdq	%ymm13, %ymm10, %ymm8
	vpunpckhqdq	%ymm13, %ymm10, %ymm9
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$0, %ymm13, %ymm10, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm5
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm8
	vpxor	%ymm5, %ymm8, %ymm5
	vpclmulqdq	$17, %ymm13, %ymm10, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vmovdqa	1120(%rsp), %ymm10
	vmovdqa	32(%rsp), %ymm13
	vpunpcklqdq	%ymm13, %ymm10, %ymm8
	vpunpckhqdq	%ymm13, %ymm10, %ymm9
	vpxor	%ymm8, %ymm9, %ymm8
	vpclmulqdq	$0, %ymm13, %ymm10, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpclmulqdq	$1, %ymm8, %ymm8, %ymm6
	vpxor	%ymm6, %ymm5, %ymm5
	vpxor	%ymm5, %ymm1, %ymm1
	vpclmulqdq	$17, %ymm13, %ymm10, %ymm5
	vpxor	%ymm5, %ymm7, %ymm5
	vpxor	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm12, %ymm5
	vpunpckhqdq	%ymm0, %ymm12, %ymm6
	vpxor	%ymm5, %ymm6, %ymm5
	vpclmulqdq	$0, %ymm0, %ymm12, %ymm6
	vpxor	%ymm6, %ymm4, %ymm4
	vpclmulqdq	$17, %ymm0, %ymm12, %ymm0
	vpxor	%ymm0, %ymm2, %ymm0
	vpclmulqdq	$1, %ymm5, %ymm5, %ymm2
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm1
	vpslldq	$8, %ymm1, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpsrldq	$8, %ymm1, %ymm1
	vmovdqa	192(%rsp), %ymm5
	vpclmulqdq	$16, %ymm5, %ymm2, %ymm4
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm4, %ymm2
	vpshufd	$78, %ymm2, %ymm4
	vpxor	%ymm4, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpclmulqdq	$16, %ymm5, %ymm2, %ymm1
	vpxor	%ymm0, %ymm1, %ymm4
	movq	%rax, %rdx
	movq	%rcx, %r9
	vmovdqa	%xmm3, %xmm8
	vmovdqa	832(%rsp), %ymm1
	vmovdqa	912(%rsp), %xmm2
	vmovdqa	896(%rsp), %xmm3
.LBB5_20:
	vpunpcklqdq	%xmm2, %xmm3, %xmm0
	vmovdqa	%xmm0, 128(%rsp)
	cmpq	$32, %rbx
	jb	.LBB5_21
	vmovaps	768(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 160(%rsp)
	vmovaps	736(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, (%rsp)
	vmovaps	704(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 32(%rsp)
	vmovaps	672(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 64(%rsp)
	vmovaps	640(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	608(%rsp), %ymm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 320(%rsp)
	vmovdqa	576(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm7
	vmovdqa	544(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm9
	vmovdqa	512(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm10
	vmovdqa	480(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm6
	vmovdqa	448(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm12
	vmovdqa	416(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm13
	vmovdqa	288(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm14
	vmovdqa	256(%rsp), %ymm0
	vinserti128	$1, %xmm0, %ymm0, %ymm15
	vinserti128	$1, %xmm1, %ymm1, %ymm0
	vmovdqa	192(%rsp), %ymm5
	.p2align	4
.LBB5_27:
	vpaddd	.LCPI5_0(%rip), %xmm8, %xmm1
	vinserti128	$1, %xmm1, %ymm8, %ymm1
	vpxor	160(%rsp), %ymm1, %ymm1
	vaesenc	(%rsp), %ymm1, %ymm1
	vaesenc	32(%rsp), %ymm1, %ymm1
	vaesenc	64(%rsp), %ymm1, %ymm1
	vaesenc	352(%rsp), %ymm1, %ymm1
	vaesenc	320(%rsp), %ymm1, %ymm1
	vaesenc	%ymm7, %ymm1, %ymm1
	vaesenc	%ymm9, %ymm1, %ymm1
	vaesenc	%ymm10, %ymm1, %ymm1
	vaesenc	%ymm6, %ymm1, %ymm1
	vaesenc	%ymm12, %ymm1, %ymm1
	vaesenc	%ymm13, %ymm1, %ymm1
	vaesenc	%ymm14, %ymm1, %ymm1
	vaesenc	%ymm15, %ymm1, %ymm1
	vaesenclast	%ymm0, %ymm1, %ymm1
	vpxor	(%r9), %ymm1, %ymm1
	vmovdqu	%ymm1, (%rdx)
	vpxor	%ymm4, %ymm1, %ymm1
	vpunpcklqdq	%ymm1, %ymm11, %ymm2
	vpunpckhqdq	%ymm1, %ymm11, %ymm3
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$0, %ymm1, %ymm11, %ymm3
	vpclmulqdq	$1, %ymm2, %ymm2, %ymm2
	vpclmulqdq	$17, %ymm1, %ymm11, %ymm1
	vpxor	%ymm1, %ymm3, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpslldq	$8, %ymm2, %ymm4
	vpxor	%ymm4, %ymm3, %ymm3
	vpsrldq	$8, %ymm2, %ymm2
	vpclmulqdq	$16, %ymm5, %ymm3, %ymm4
	vpshufd	$78, %ymm3, %ymm3
	vpxor	%ymm3, %ymm4, %ymm3
	vpshufd	$78, %ymm3, %ymm4
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	leaq	32(%r9), %rsi
	leaq	32(%rdx), %r14
	addq	$-32, %rbx
	vpaddd	.LCPI5_1(%rip), %xmm8, %xmm4
	vpclmulqdq	$16, %ymm5, %ymm3, %ymm2
	vmovdqa	%ymm4, %ymm3
	vpxor	%ymm1, %ymm2, %ymm4
	movq	%r14, %rdx
	vmovdqa	%xmm3, %xmm8
	movq	%rsi, %r9
	cmpq	$31, %rbx
	ja	.LBB5_27
	jmp	.LBB5_28
.LBB5_21:
	movq	%rdx, %r14
	movq	%r9, %rsi
	vmovdqa	%xmm8, %xmm3
.LBB5_28:
	vmovdqa	928(%rsp), %xmm0
	vpunpcklqdq	944(%rsp), %xmm0, %xmm1
	vmovdqa	128(%rsp), %xmm0
	vpsllq	$3, %xmm0, %xmm2
	testq	%rbx, %rbx
	je	.LBB5_32
	vmovdqa	%xmm2, (%rsp)
	vmovdqa	%xmm1, 160(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 96(%rsp)
	leaq	96(%rsp), %rdi
	movq	memcpy@GOTPCREL(%rip), %r15
	movq	%rbx, %rdx
	vmovdqa	%ymm4, 64(%rsp)
	vmovdqa	%ymm3, 32(%rsp)
	vzeroupper
	callq	*%r15
	vmovdqa	32(%rsp), %ymm1
	vpaddd	.LCPI5_0(%rip), %xmm1, %xmm0
	vinserti128	$1, %xmm0, %ymm1, %ymm0
	vmovdqa	768(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	736(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	704(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	672(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	640(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	608(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	576(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	544(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	512(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	480(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	448(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	416(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	288(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	256(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm0, %ymm0
	vmovdqa	832(%rsp), %ymm1
	vinserti128	$1, %xmm1, %ymm1, %ymm1
	vaesenclast	%ymm1, %ymm0, %ymm0
	vpxor	96(%rsp), %ymm0, %ymm0
	vmovdqa	%ymm0, 96(%rsp)
	leaq	96(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	vzeroupper
	callq	*%r15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 96(%rsp)
	leaq	96(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	vzeroupper
	callq	*%r15
	vmovdqa	64(%rsp), %ymm0
	vpxor	96(%rsp), %ymm0, %ymm0
	cmpq	$17, %rbx
	vmovdqa	800(%rsp), %ymm1
	jae	.LBB5_31
	vmovaps	240(%rsp), %xmm1
.LBB5_31:
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
	vmovdqa	192(%rsp), %ymm4
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vpclmulqdq	$16, %ymm4, %ymm2, %ymm3
	vpshufd	$78, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm0, %ymm3, %ymm4
	vmovdqa	160(%rsp), %xmm1
	vmovdqa	(%rsp), %xmm2
.LBB5_32:
	vextracti128	$1, %ymm4, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm4, %xmm1
	vmovdqa	240(%rsp), %xmm4
	vpclmulqdq	$1, %xmm1, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm1, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$0, %xmm1, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm4, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpslldq	$8, %xmm2, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vpbroadcastq	.LCPI5_13(%rip), %xmm2
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm2, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpand	.LCPI5_32(%rip), %xmm0, %xmm0
	vpxor	768(%rsp), %xmm0, %xmm0
	vaesenc	736(%rsp), %xmm0, %xmm0
	vaesenc	704(%rsp), %xmm0, %xmm0
	vaesenc	672(%rsp), %xmm0, %xmm0
	vaesenc	640(%rsp), %xmm0, %xmm0
	vaesenc	608(%rsp), %xmm0, %xmm0
	vaesenc	576(%rsp), %xmm0, %xmm0
	vaesenc	544(%rsp), %xmm0, %xmm0
	vaesenc	512(%rsp), %xmm0, %xmm0
	vaesenc	480(%rsp), %xmm0, %xmm0
	vaesenc	448(%rsp), %xmm0, %xmm0
	vaesenc	416(%rsp), %xmm0, %xmm0
	vaesenc	288(%rsp), %xmm0, %xmm0
	vaesenc	256(%rsp), %xmm0, %xmm0
	vaesenclast	832(%rsp), %xmm0, %xmm0
	vpxor	400(%rsp), %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB5_33:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Lfunc_end5:
	.size	haberdashery_aes256gcmsiv_raptorlake_decrypt, .Lfunc_end5-haberdashery_aes256gcmsiv_raptorlake_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_raptorlake_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_raptorlake_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmsiv_raptorlake_is_supported,@function
haberdashery_aes256gcmsiv_raptorlake_is_supported:
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
	.size	haberdashery_aes256gcmsiv_raptorlake_is_supported, .Lfunc_end6-haberdashery_aes256gcmsiv_raptorlake_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

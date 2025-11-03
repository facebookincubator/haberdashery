# @generated
# https://github.com/facebookincubator/haberdashery/
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	4294967297
.LCPI0_2:
	.quad	8589934594
.LCPI0_3:
	.quad	17179869188
.LCPI0_4:
	.quad	34359738376
.LCPI0_5:
	.quad	68719476752
.LCPI0_6:
	.quad	137438953504
.LCPI0_7:
	.quad	274877907008
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmdndk_skylakex_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_init
	.p2align	4
	.type	haberdashery_aes256gcmdndk_skylakex_init,@function
haberdashery_aes256gcmdndk_skylakex_init:
	.cfi_startproc
	cmpq	$32, %rdx
	jne	.LBB0_2
	vmovupd	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm3
	vpslldq	$12, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpbroadcastd	.LCPI0_8(%rip), %xmm3
	vpshufb	%xmm3, %xmm1, %xmm2
	vpbroadcastq	.LCPI0_1(%rip), %xmm5
	vaesenclast	%xmm5, %xmm2, %xmm2
	vpternlogq	$150, %xmm4, %xmm0, %xmm2
	vpslldq	$4, %xmm1, %xmm4
	vpslldq	$8, %xmm1, %xmm5
	vpslldq	$12, %xmm1, %xmm7
	vpternlogq	$150, %xmm5, %xmm4, %xmm7
	vpshufd	$255, %xmm2, %xmm4
	vpxor	%xmm6, %xmm6, %xmm6
	vaesenclast	%xmm6, %xmm4, %xmm4
	vpternlogq	$150, %xmm7, %xmm1, %xmm4
	vpslldq	$4, %xmm2, %xmm5
	vpslldq	$8, %xmm2, %xmm7
	vpslldq	$12, %xmm2, %xmm8
	vpternlogq	$150, %xmm7, %xmm5, %xmm8
	vpshufb	%xmm3, %xmm4, %xmm5
	vpbroadcastq	.LCPI0_2(%rip), %xmm7
	vaesenclast	%xmm7, %xmm5, %xmm5
	vpternlogq	$150, %xmm8, %xmm2, %xmm5
	vpslldq	$4, %xmm4, %xmm7
	vpslldq	$8, %xmm4, %xmm8
	vpslldq	$12, %xmm4, %xmm9
	vpternlogq	$150, %xmm8, %xmm7, %xmm9
	vpshufd	$255, %xmm5, %xmm7
	vaesenclast	%xmm6, %xmm7, %xmm7
	vpternlogq	$150, %xmm9, %xmm4, %xmm7
	vpslldq	$4, %xmm5, %xmm8
	vpslldq	$8, %xmm5, %xmm9
	vpslldq	$12, %xmm5, %xmm10
	vpternlogq	$150, %xmm9, %xmm8, %xmm10
	vpshufb	%xmm3, %xmm7, %xmm8
	vpbroadcastq	.LCPI0_3(%rip), %xmm9
	vaesenclast	%xmm9, %xmm8, %xmm8
	vpternlogq	$150, %xmm10, %xmm5, %xmm8
	vpslldq	$4, %xmm7, %xmm9
	vpslldq	$8, %xmm7, %xmm10
	vpslldq	$12, %xmm7, %xmm11
	vpternlogq	$150, %xmm10, %xmm9, %xmm11
	vpshufd	$255, %xmm8, %xmm9
	vaesenclast	%xmm6, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm7, %xmm9
	vpslldq	$4, %xmm8, %xmm10
	vpslldq	$8, %xmm8, %xmm11
	vpslldq	$12, %xmm8, %xmm12
	vpternlogq	$150, %xmm11, %xmm10, %xmm12
	vpshufb	%xmm3, %xmm9, %xmm10
	vpbroadcastq	.LCPI0_4(%rip), %xmm11
	vaesenclast	%xmm11, %xmm10, %xmm10
	vpternlogq	$150, %xmm12, %xmm8, %xmm10
	vpslldq	$4, %xmm9, %xmm11
	vpslldq	$8, %xmm9, %xmm12
	vpslldq	$12, %xmm9, %xmm13
	vpternlogq	$150, %xmm12, %xmm11, %xmm13
	vpshufd	$255, %xmm10, %xmm11
	vaesenclast	%xmm6, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm9, %xmm11
	vpslldq	$4, %xmm10, %xmm12
	vpslldq	$8, %xmm10, %xmm13
	vpslldq	$12, %xmm10, %xmm14
	vpternlogq	$150, %xmm13, %xmm12, %xmm14
	vpshufb	%xmm3, %xmm11, %xmm12
	vpbroadcastq	.LCPI0_5(%rip), %xmm13
	vaesenclast	%xmm13, %xmm12, %xmm12
	vpternlogq	$150, %xmm14, %xmm10, %xmm12
	vpslldq	$4, %xmm11, %xmm13
	vpslldq	$8, %xmm11, %xmm14
	vpslldq	$12, %xmm11, %xmm15
	vpternlogq	$150, %xmm14, %xmm13, %xmm15
	vpshufd	$255, %xmm12, %xmm13
	vaesenclast	%xmm6, %xmm13, %xmm13
	vpternlogq	$150, %xmm15, %xmm11, %xmm13
	vpslldq	$4, %xmm12, %xmm14
	vpslldq	$8, %xmm12, %xmm15
	vpslldq	$12, %xmm12, %xmm16
	vpternlogq	$150, %xmm15, %xmm14, %xmm16
	vpshufb	%xmm3, %xmm13, %xmm14
	vpbroadcastq	.LCPI0_6(%rip), %xmm15
	vaesenclast	%xmm15, %xmm14, %xmm14
	vpternlogq	$150, %xmm16, %xmm12, %xmm14
	vpslldq	$4, %xmm13, %xmm15
	vpslldq	$8, %xmm13, %xmm16
	vpslldq	$12, %xmm13, %xmm17
	vpternlogq	$150, %xmm16, %xmm15, %xmm17
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm6, %xmm15, %xmm6
	vpternlogq	$150, %xmm17, %xmm13, %xmm6
	vpslldq	$4, %xmm14, %xmm15
	vpslldq	$8, %xmm14, %xmm16
	vpslldq	$12, %xmm14, %xmm17
	vpternlogq	$150, %xmm16, %xmm15, %xmm17
	vpshufb	%xmm3, %xmm6, %xmm3
	vpbroadcastq	.LCPI0_7(%rip), %xmm15
	vaesenclast	%xmm15, %xmm3, %xmm3
	vpternlogq	$150, %xmm17, %xmm14, %xmm3
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
	vmovdqa	%xmm6, 208(%rdi)
	vmovdqa	%xmm3, 224(%rdi)
.LBB0_2:
	xorl	%eax, %eax
	cmpq	$32, %rdx
	sete	%al
	retq
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndk_skylakex_init, .Lfunc_end0-haberdashery_aes256gcmdndk_skylakex_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_0:
	.long	1
.LCPI1_5:
	.long	0x00000002
.LCPI1_6:
	.long	0x0c0f0e0d
.LCPI1_7:
	.long	0x00000004
.LCPI1_8:
	.long	0x00000008
.LCPI1_9:
	.long	0x00000010
.LCPI1_10:
	.long	0x00000020
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.quad	2
	.quad	0
.LCPI1_2:
	.quad	4
	.quad	0
.LCPI1_3:
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
.LCPI1_12:
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
.LCPI1_14:
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
.LCPI1_15:
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
.LCPI1_16:
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
.LCPI1_17:
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
.LCPI1_18:
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
.LCPI1_19:
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
.LCPI1_20:
	.long	8
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_23:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_24:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI1_25:
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
.LCPI1_26:
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
.LCPI1_27:
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
	.quad	4294967297
.LCPI1_11:
	.quad	274877907008
.LCPI1_13:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI1_28:
	.byte	2
	.byte	0
.LCPI1_29:
	.byte	4
	.byte	0
.LCPI1_30:
	.byte	8
	.byte	0
.LCPI1_31:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcmdndk_skylakex_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_skylakex_encrypt,@function
haberdashery_aes256gcmdndk_skylakex_encrypt:
	.cfi_startproc
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	160(%rsp), %r10
	xorl	%eax, %eax
	cmpq	176(%rsp), %r10
	jne	.LBB1_44
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB1_44
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB1_44
	cmpq	$24, %rdx
	jne	.LBB1_44
	cmpq	$16, 192(%rsp)
	jne	.LBB1_44
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vpbroadcastd	.LCPI1_0(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpinsrd	$2, 16(%rsi), %xmm2, %xmm2
	vpinsrd	$3, 20(%rsi), %xmm2, %xmm2
	vmovaps	(%rdi), %xmm3
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	%xmm0, %xmm3, %xmm0
	vxorps	%xmm2, %xmm3, %xmm1
	vpmovsxbq	.LCPI1_28(%rip), %xmm23
	vxorps	%xmm23, %xmm0, %xmm2
	vxorps	%xmm23, %xmm1, %xmm4
	vpmovsxbq	.LCPI1_29(%rip), %xmm5
	vxorps	%xmm5, %xmm0, %xmm3
	vmovaps	16(%rdi), %xmm6
	vxorps	%xmm5, %xmm1, %xmm5
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	vmovaps	32(%rdi), %xmm6
	vmovaps	48(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	64(%rdi), %xmm6
	vmovaps	80(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	vmovaps	112(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	vmovaps	144(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	vmovaps	176(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	vmovaps	208(%rdi), %xmm7
	#APP
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm5, %xmm5
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm5, %xmm5
	#NO_APP
	vmovdqa	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm0, %xmm0
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm5, %xmm5
	#NO_APP
	vpxor	%xmm4, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpxor	%xmm5, %xmm3, %xmm5
	vpternlogq	$150, %xmm0, %xmm1, %xmm5
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpbroadcastd	.LCPI1_6(%rip), %xmm1
	vpshufb	%xmm1, %xmm5, %xmm0
	vpbroadcastq	.LCPI1_4(%rip), %xmm3
	vaesenclast	%xmm3, %xmm0, %xmm8
	vpternlogq	$150, %xmm2, %xmm4, %xmm8
	vmovdqa64	%xmm4, %xmm29
	vaesenc	%xmm5, %xmm4, %xmm0
	vpslldq	$4, %xmm5, %xmm2
	vpslldq	$8, %xmm5, %xmm3
	vpslldq	$12, %xmm5, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm8, %xmm2
	vpxor	%xmm6, %xmm6, %xmm6
	vaesenclast	%xmm6, %xmm2, %xmm9
	vbroadcastss	.LCPI1_5(%rip), %xmm3
	vmovaps	%xmm5, -32(%rsp)
	vpternlogq	$150, %xmm4, %xmm5, %xmm9
	vbroadcastss	.LCPI1_6(%rip), %xmm2
	vmovdqa	%xmm8, -128(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm9, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm8, %xmm7, %xmm11
	#NO_APP
	vbroadcastss	.LCPI1_7(%rip), %xmm3
	vmovdqa	%xmm9, -16(%rsp)
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vpslldq	$4, %xmm9, %xmm4
	vpslldq	$8, %xmm9, %xmm5
	vpslldq	$12, %xmm9, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufd	$255, %xmm11, %xmm10
	vaesenclast	%xmm6, %xmm10, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	#NO_APP
	vmovdqa64	%xmm11, %xmm20
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm5
	vpslldq	$12, %xmm11, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm10, %xmm8
	vaesenclast	%xmm3, %xmm8, %xmm8
	vpternlogq	$150, %xmm11, %xmm7, %xmm8
	#NO_APP
	vmovdqa64	%xmm10, %xmm28
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vpslldq	$4, %xmm10, %xmm3
	vpslldq	$8, %xmm10, %xmm4
	vpslldq	$12, %xmm10, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm8, %xmm13
	vaesenclast	%xmm6, %xmm13, %xmm13
	vpternlogq	$150, %xmm10, %xmm5, %xmm13
	#NO_APP
	vbroadcastss	.LCPI1_8(%rip), %xmm3
	vmovaps	%xmm8, -48(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm13, %xmm10
	vaesenclast	%xmm3, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm7, %xmm10
	#NO_APP
	vmovaps	%xmm13, -80(%rsp)
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vpslldq	$4, %xmm13, %xmm3
	vpslldq	$8, %xmm13, %xmm4
	vpslldq	$12, %xmm13, %xmm5
	vpternlogq	$150, %xmm3, %xmm4, %xmm5
	vpshufd	$255, %xmm10, %xmm8
	vaesenclast	%xmm6, %xmm8, %xmm8
	vpternlogq	$150, %xmm13, %xmm5, %xmm8
	#NO_APP
	vbroadcastss	.LCPI1_9(%rip), %xmm3
	vmovaps	%xmm10, -96(%rsp)
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vpslldq	$4, %xmm10, %xmm4
	vpslldq	$8, %xmm10, %xmm5
	vpslldq	$12, %xmm10, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm8, %xmm13
	vaesenclast	%xmm3, %xmm13, %xmm13
	vpternlogq	$150, %xmm10, %xmm7, %xmm13
	#NO_APP
	vbroadcastss	.LCPI1_10(%rip), %xmm3
	vmovaps	%xmm8, -112(%rsp)
	#APP
	vaesenc	%xmm8, %xmm0, %xmm0
	vpslldq	$4, %xmm8, %xmm4
	vpslldq	$8, %xmm8, %xmm5
	vpslldq	$12, %xmm8, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufd	$255, %xmm13, %xmm10
	vaesenclast	%xmm6, %xmm10, %xmm10
	vpternlogq	$150, %xmm8, %xmm7, %xmm10
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vpslldq	$4, %xmm13, %xmm4
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm7
	vpternlogq	$150, %xmm4, %xmm5, %xmm7
	vpshufb	%xmm2, %xmm10, %xmm11
	vaesenclast	%xmm3, %xmm11, %xmm11
	vpternlogq	$150, %xmm13, %xmm7, %xmm11
	#NO_APP
	vpslldq	$4, %xmm10, %xmm2
	vpunpcklqdq	%xmm10, %xmm6, %xmm3
	vinsertps	$55, %xmm10, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpshufd	$255, %xmm11, %xmm2
	vaesenclast	%xmm6, %xmm2, %xmm5
	vpternlogq	$150, %xmm4, %xmm10, %xmm5
	vpshufb	%xmm1, %xmm5, %xmm1
	vpbroadcastq	.LCPI1_11(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm12
	vpslldq	$4, %xmm11, %xmm1
	vpunpcklqdq	%xmm11, %xmm6, %xmm2
	vinsertps	$55, %xmm11, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpternlogq	$150, %xmm3, %xmm11, %xmm12
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa64	%xmm5, %xmm30
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpaddq	%xmm0, %xmm0, %xmm1
	vpsrlq	$63, %xmm0, %xmm0
	vpshufd	$78, %xmm0, %xmm2
	vpblendd	$12, %xmm0, %xmm6, %xmm0
	vpsllq	$63, %xmm0, %xmm3
	vpternlogq	$30, %xmm2, %xmm1, %xmm3
	vpsllq	$62, %xmm0, %xmm1
	vpsllq	$57, %xmm0, %xmm5
	vpternlogq	$150, %xmm1, %xmm3, %xmm5
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm9
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm8
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm8, %xmm0
	vpclmulqdq	$1, %xmm5, %xmm8, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm8, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm8, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm15
	vpternlogq	$150, %xmm0, %xmm2, %xmm15
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm7
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm8, %xmm0
	vpshufd	$78, %xmm0, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm9, %xmm0, %xmm1
	vpshufd	$78, %xmm0, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm8, %xmm0
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpclmulqdq	$16, %xmm5, %xmm4, %xmm0
	vpclmulqdq	$1, %xmm5, %xmm4, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vpslldq	$8, %xmm0, %xmm1
	vpclmulqdq	$0, %xmm5, %xmm4, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm4, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpsrldq	$8, %xmm0, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	testq	%r8, %r8
	je	.LBB1_11
	cmpq	$96, %r8
	jb	.LBB1_7
	vmovdqa64	%xmm12, %xmm26
	vmovaps	%xmm11, %xmm27
	vmovaps	%xmm10, %xmm18
	vmovdqa64	%xmm13, %xmm22
	vmovdqa64	%xmm28, %xmm21
	vmovdqa64	%xmm29, %xmm16
	vmovdqa64	.LCPI1_12(%rip), %xmm29
	movq	%r8, %rdx
	vmovdqa64	%xmm5, %xmm19
	vmovdqa	%xmm8, %xmm5
	vmovdqa	%xmm15, %xmm8
	vmovdqa	%xmm4, %xmm15
	vmovdqa	%xmm1, %xmm0
	.p2align	4
.LBB1_20:
	vmovdqu64	(%rcx), %xmm24
	vmovdqu	16(%rcx), %xmm2
	vmovdqu	32(%rcx), %xmm3
	vmovdqu	48(%rcx), %xmm4
	vmovdqa64	%xmm7, %xmm28
	vmovdqu	64(%rcx), %xmm7
	vmovdqu	80(%rcx), %xmm11
	vpshufb	%xmm29, %xmm4, %xmm4
	vpshufb	%xmm29, %xmm7, %xmm7
	vpshufb	%xmm29, %xmm11, %xmm11
	vmovdqa64	%xmm19, %xmm1
	vpclmulqdq	$0, %xmm11, %xmm1, %xmm12
	vpclmulqdq	$1, %xmm11, %xmm1, %xmm13
	vpclmulqdq	$16, %xmm11, %xmm1, %xmm14
	vpxor	%xmm13, %xmm14, %xmm13
	vpclmulqdq	$0, %xmm7, %xmm5, %xmm14
	vpclmulqdq	$1, %xmm7, %xmm5, %xmm10
	vpclmulqdq	$16, %xmm7, %xmm5, %xmm9
	vpternlogq	$150, %xmm10, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm4, %xmm8, %xmm10
	vpternlogq	$150, %xmm12, %xmm14, %xmm10
	vpclmulqdq	$1, %xmm4, %xmm8, %xmm12
	vpclmulqdq	$16, %xmm4, %xmm8, %xmm13
	vpternlogq	$150, %xmm12, %xmm9, %xmm13
	vpshufb	%xmm29, %xmm2, %xmm2
	vpshufb	%xmm29, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm11, %xmm1, %xmm9
	vpclmulqdq	$17, %xmm7, %xmm5, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm8, %xmm4
	vpternlogq	$150, %xmm9, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm7
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm9
	vpternlogq	$150, %xmm7, %xmm13, %xmm9
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm7
	vpclmulqdq	$0, %xmm2, %xmm0, %xmm11
	vpternlogq	$150, %xmm7, %xmm10, %xmm11
	vpclmulqdq	$1, %xmm2, %xmm0, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm0, %xmm10
	vpternlogq	$150, %xmm7, %xmm9, %xmm10
	vmovdqa64	%xmm28, %xmm7
	vpbroadcastq	.LCPI1_13(%rip), %xmm9
	vpshufb	%xmm29, %xmm24, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm4
	vpternlogq	$150, %xmm3, %xmm10, %xmm4
	vpclmulqdq	$0, %xmm1, %xmm7, %xmm3
	vpslldq	$8, %xmm4, %xmm6
	vpternlogq	$150, %xmm3, %xmm11, %xmm6
	vpclmulqdq	$17, %xmm1, %xmm7, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm6, %xmm3
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm6
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	vpsrldq	$8, %xmm4, %xmm1
	vpshufd	$78, %xmm3, %xmm2
	addq	$96, %rcx
	addq	$-96, %rdx
	vpternlogq	$150, %xmm1, %xmm2, %xmm6
	cmpq	$95, %rdx
	ja	.LBB1_20
	vmovdqa64	%xmm16, %xmm29
	vmovdqa64	%xmm21, %xmm28
	vmovdqa64	%xmm22, %xmm13
	vmovaps	%xmm18, %xmm10
	vmovaps	%xmm27, %xmm11
	vmovdqa64	%xmm26, %xmm12
	vmovdqa	%xmm15, %xmm4
	vmovdqa	%xmm8, %xmm15
	vmovdqa	%xmm5, %xmm8
	vmovdqa64	%xmm19, %xmm5
	vmovdqa	%xmm0, %xmm1
	cmpq	$16, %rdx
	jae	.LBB1_13
.LBB1_9:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB1_22
	jmp	.LBB1_11
.LBB1_7:
	movq	%r8, %rdx
	cmpq	$16, %rdx
	jb	.LBB1_9
.LBB1_13:
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB1_14
	cmpq	$16, %rsi
	jae	.LBB1_16
.LBB1_10:
	testq	%rsi, %rsi
	je	.LBB1_11
.LBB1_22:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	testq	%r10, %r10
	je	.LBB1_23
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_44
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vmovdqa64	%xmm1, %xmm16
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
	vmovdqa64	%xmm16, %xmm1
	jmp	.LBB1_27
.LBB1_14:
	vmovdqu	(%rcx), %xmm0
	addq	$16, %rcx
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vmovdqa64	%xmm1, %xmm16
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm9, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
	vmovdqa64	%xmm16, %xmm1
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB1_10
.LBB1_16:
	vmovdqa64	%xmm1, %xmm17
	vmovdqa64	%xmm8, %xmm16
	vmovdqa	%xmm15, %xmm8
	vmovdqa	%xmm4, %xmm15
	vmovdqa	.LCPI1_12(%rip), %xmm0
	.p2align	4
.LBB1_17:
	vmovdqu	(%rcx), %xmm1
	vmovdqu	16(%rcx), %xmm2
	vpshufb	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm3
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpternlogq	$150, %xmm1, %xmm4, %xmm6
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm0, %xmm2, %xmm1
	vpternlogq	$150, %xmm3, %xmm6, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm9, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm6
	vpternlogq	$150, %xmm3, %xmm2, %xmm6
	cmpq	$15, %rdx
	ja	.LBB1_17
	movq	%rdx, %rsi
	vmovdqa	%xmm15, %xmm4
	vmovdqa	%xmm8, %xmm15
	vmovdqa64	%xmm16, %xmm8
	vmovdqa64	%xmm17, %xmm1
	testq	%rsi, %rsi
	jne	.LBB1_22
.LBB1_11:
	testq	%r10, %r10
	je	.LBB1_12
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB1_44
.LBB1_27:
	vmovdqa	%xmm5, -64(%rsp)
	movq	168(%rsp), %rdx
	cmpq	$96, %r10
	jb	.LBB1_28
	vmovdqa	%xmm1, (%rsp)
	vmovdqa	%xmm4, 16(%rsp)
	vmovdqa	%xmm7, 32(%rsp)
	vpxorq	.LCPI1_14(%rip), %xmm29, %xmm0
	vpxorq	.LCPI1_15(%rip), %xmm29, %xmm1
	vpxorq	.LCPI1_16(%rip), %xmm29, %xmm2
	vpxorq	.LCPI1_17(%rip), %xmm29, %xmm3
	vpxorq	.LCPI1_18(%rip), %xmm29, %xmm4
	vpxorq	.LCPI1_19(%rip), %xmm29, %xmm7
	vmovaps	-32(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm7, %xmm7
	#NO_APP
	vmovaps	-128(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vmovaps	-16(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm7, %xmm7
	#NO_APP
	vmovdqa64	%xmm20, %xmm5
	vmovdqa64	%xmm20, 128(%rsp)
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm7, %xmm7
	#NO_APP
	vmovdqa64	%xmm28, %xmm9
	vmovdqa64	%xmm28, 112(%rsp)
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vmovaps	-48(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vmovaps	-80(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vmovaps	-96(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	vmovaps	-112(%rsp), %xmm9
	#APP
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm0, %xmm0
	vaesenc	%xmm13, %xmm1, %xmm1
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm13, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm10, %xmm0, %xmm0
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm7, %xmm7
	#NO_APP
	vmovdqa64	%xmm30, %xmm5
	#APP
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm4, %xmm4
	vaesenc	%xmm5, %xmm7, %xmm7
	#NO_APP
	#APP
	vaesenclast	%xmm12, %xmm0, %xmm0
	vaesenclast	%xmm12, %xmm1, %xmm1
	vaesenclast	%xmm12, %xmm2, %xmm2
	vaesenclast	%xmm12, %xmm3, %xmm3
	vaesenclast	%xmm12, %xmm4, %xmm4
	vaesenclast	%xmm12, %xmm7, %xmm7
	#NO_APP
	vpxorq	(%r9), %xmm0, %xmm16
	vpxorq	16(%r9), %xmm1, %xmm17
	vpxorq	32(%r9), %xmm2, %xmm25
	vpxorq	48(%r9), %xmm3, %xmm27
	vpxorq	64(%r9), %xmm4, %xmm28
	vpxor	80(%r9), %xmm7, %xmm1
	addq	$96, %r9
	leaq	96(%rdx), %rcx
	vmovdqu64	%xmm16, (%rdx)
	vmovdqu64	%xmm17, 16(%rdx)
	vmovdqu64	%xmm25, 32(%rdx)
	vmovdqu64	%xmm27, 48(%rdx)
	leaq	-96(%r10), %rax
	vmovdqu64	%xmm28, 64(%rdx)
	vmovdqu	%xmm1, 80(%rdx)
	cmpq	$96, %rax
	jb	.LBB1_32
	vpmovsxbq	.LCPI1_30(%rip), %xmm23
	vmovdqa64	.LCPI1_12(%rip), %xmm18
	vmovdqa	%xmm15, 96(%rsp)
	vmovdqa64	-112(%rsp), %xmm22
	vmovdqa	%xmm13, 80(%rsp)
	vmovaps	%xmm11, 64(%rsp)
	vmovdqa	%xmm12, 48(%rsp)
	vmovdqa64	-128(%rsp), %xmm24
	vmovdqa64	32(%rsp), %xmm19
	vmovdqa64	16(%rsp), %xmm21
	vmovdqa64	(%rsp), %xmm20
	vmovdqa64	-64(%rsp), %xmm26
	.p2align	4
.LBB1_34:
	vpshufb	%xmm18, %xmm23, %xmm0
	vpaddd	.LCPI1_21(%rip), %xmm23, %xmm2
	vpshufb	%xmm18, %xmm2, %xmm2
	vpaddd	.LCPI1_1(%rip), %xmm23, %xmm3
	vpshufb	%xmm18, %xmm3, %xmm3
	vpaddd	.LCPI1_22(%rip), %xmm23, %xmm4
	vpshufb	%xmm18, %xmm4, %xmm4
	vpaddd	.LCPI1_2(%rip), %xmm23, %xmm7
	vpshufb	%xmm18, %xmm7, %xmm7
	vpaddd	.LCPI1_23(%rip), %xmm23, %xmm9
	vpshufb	%xmm18, %xmm9, %xmm9
	vmovaps	%xmm10, %xmm31
	vmovdqa64	%xmm24, %xmm10
	vpshufb	%xmm18, %xmm1, %xmm14
	vpxorq	%xmm0, %xmm29, %xmm13
	vpxorq	%xmm2, %xmm29, %xmm11
	vpxorq	%xmm3, %xmm29, %xmm12
	vpxorq	%xmm4, %xmm29, %xmm1
	vpxorq	%xmm7, %xmm29, %xmm2
	vpxorq	%xmm9, %xmm29, %xmm3
	vmovaps	-32(%rsp), %xmm0
	#APP
	vaesenc	%xmm0, %xmm13, %xmm13
	vaesenc	%xmm0, %xmm11, %xmm11
	vaesenc	%xmm0, %xmm12, %xmm12
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm0, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm3
	#NO_APP
	vpxor	%xmm4, %xmm4, %xmm4
	vpxor	%xmm7, %xmm7, %xmm7
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa64	%xmm26, %xmm5
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm5, %xmm14, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm5, %xmm14, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm5, %xmm14, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm5, %xmm14, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vpshufb	%xmm18, %xmm28, %xmm9
	vmovaps	-16(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	#NO_APP
	vmovaps	128(%rsp), %xmm15
	#APP
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm8, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm9, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm9, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vpshufb	%xmm18, %xmm27, %xmm9
	vmovaps	112(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	#NO_APP
	vmovaps	96(%rsp), %xmm15
	vmovaps	-48(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm15, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm15, %xmm9, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$17, %xmm15, %xmm9, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm15, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vpshufb	%xmm18, %xmm25, %xmm9
	vmovaps	-80(%rsp), %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	#NO_APP
	vmovdqa64	%xmm21, %xmm14
	vmovaps	-96(%rsp), %xmm5
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm14, %xmm9, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$17, %xmm14, %xmm9, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm14, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vmovdqa64	%xmm30, %xmm5
	vpshufb	%xmm18, %xmm17, %xmm9
	vmovdqa64	%xmm22, %xmm10
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	#NO_APP
	vmovaps	80(%rsp), %xmm15
	vmovdqa64	%xmm20, %xmm14
	#APP
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	vpclmulqdq	$0, %xmm14, %xmm9, %xmm10
	vpxor	%xmm4, %xmm10, %xmm4
	vpclmulqdq	$17, %xmm14, %xmm9, %xmm10
	vpxor	%xmm0, %xmm10, %xmm0
	vpclmulqdq	$1, %xmm14, %xmm9, %xmm10
	vpxor	%xmm7, %xmm10, %xmm7
	#NO_APP
	vmovaps	%xmm31, %xmm10
	vpshufb	%xmm18, %xmm16, %xmm9
	vpxor	%xmm6, %xmm9, %xmm6
	#APP
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm11, %xmm11
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm1, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm2
	vaesenc	%xmm10, %xmm3, %xmm3
	#NO_APP
	vmovdqa	64(%rsp), %xmm15
	vmovdqa64	%xmm8, %xmm16
	vmovdqa64	%xmm19, %xmm8
	#APP
	vaesenc	%xmm15, %xmm13, %xmm13
	vaesenc	%xmm15, %xmm11, %xmm11
	vaesenc	%xmm15, %xmm12, %xmm12
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	%xmm15, %xmm2, %xmm2
	vaesenc	%xmm15, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm8, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$0, %xmm8, %xmm6, %xmm9
	vpxor	%xmm4, %xmm9, %xmm4
	vpclmulqdq	$17, %xmm8, %xmm6, %xmm9
	vpxor	%xmm0, %xmm9, %xmm0
	vpclmulqdq	$1, %xmm8, %xmm6, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	#NO_APP
	vmovdqa64	%xmm16, %xmm8
	#APP
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm11, %xmm11
	vaesenc	%xmm5, %xmm12, %xmm12
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm3, %xmm3
	#NO_APP
	vmovaps	48(%rsp), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm13, %xmm13
	vaesenclast	%xmm6, %xmm11, %xmm11
	vaesenclast	%xmm6, %xmm12, %xmm12
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm3, %xmm3
	#NO_APP
	vpxorq	(%r9), %xmm13, %xmm16
	vxorps	16(%r9), %xmm11, %xmm17
	vpxorq	32(%r9), %xmm12, %xmm25
	vpxorq	48(%r9), %xmm1, %xmm27
	vpxor	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm7, %xmm1, %xmm6
	vpunpckhqdq	%xmm1, %xmm7, %xmm7
	vpxorq	64(%r9), %xmm2, %xmm28
	vpxor	80(%r9), %xmm3, %xmm1
	vpxor	%xmm6, %xmm4, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpbroadcastq	.LCPI1_13(%rip), %xmm4
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm7, %xmm0, %xmm6
	vpshufd	$78, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm4, %xmm2, %xmm2
	vpternlogq	$150, %xmm2, %xmm0, %xmm6
	addq	$96, %r9
	vmovdqu64	%xmm16, (%rcx)
	vmovups	%xmm17, 16(%rcx)
	vmovdqu64	%xmm25, 32(%rcx)
	vmovdqu64	%xmm27, 48(%rcx)
	vmovdqu64	%xmm28, 64(%rcx)
	vmovdqu	%xmm1, 80(%rcx)
	addq	$96, %rcx
	addq	$-96, %rax
	vpaddd	.LCPI1_24(%rip), %xmm23, %xmm23
	cmpq	$95, %rax
	ja	.LBB1_34
	vmovdqa	80(%rsp), %xmm13
	vmovaps	64(%rsp), %xmm11
	vmovdqa	48(%rsp), %xmm12
	vmovdqa	96(%rsp), %xmm15
	jmp	.LBB1_36
.LBB1_12:
	vmovdqa64	-48(%rsp), %xmm24
	vmovdqa	-80(%rsp), %xmm4
	vmovdqa	-96(%rsp), %xmm7
	vmovdqa	%xmm9, %xmm8
	vmovdqa	-112(%rsp), %xmm9
	vmovdqa	-128(%rsp), %xmm15
	jmp	.LBB1_43
.LBB1_28:
	vmovaps	%xmm10, %xmm31
	movq	%r10, %rax
	vmovdqa64	%xmm28, %xmm4
	jmp	.LBB1_29
.LBB1_23:
	vmovdqa64	-48(%rsp), %xmm24
	vmovdqa	-80(%rsp), %xmm4
	vmovdqa	-96(%rsp), %xmm7
	vmovdqa	-112(%rsp), %xmm9
	vmovdqa	-128(%rsp), %xmm15
	jmp	.LBB1_42
.LBB1_32:
	vmovaps	%xmm10, %xmm31
	vpmovsxbq	.LCPI1_30(%rip), %xmm23
	vmovdqa64	-64(%rsp), %xmm26
.LBB1_36:
	vmovdqa	.LCPI1_12(%rip), %xmm0
	vpshufb	%xmm0, %xmm27, %xmm2
	vpshufb	%xmm0, %xmm28, %xmm3
	vpshufb	%xmm0, %xmm1, %xmm1
	vmovdqa64	%xmm26, %xmm5
	vpclmulqdq	$0, %xmm1, %xmm5, %xmm4
	vpclmulqdq	$1, %xmm1, %xmm5, %xmm7
	vpclmulqdq	$16, %xmm1, %xmm5, %xmm9
	vpxor	%xmm7, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm3, %xmm8, %xmm9
	vpclmulqdq	$16, %xmm3, %xmm8, %xmm10
	vpternlogq	$150, %xmm9, %xmm7, %xmm10
	vpclmulqdq	$0, %xmm3, %xmm8, %xmm7
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm9
	vpternlogq	$150, %xmm4, %xmm7, %xmm9
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm7
	vpternlogq	$150, %xmm4, %xmm10, %xmm7
	vpclmulqdq	$17, %xmm3, %xmm8, %xmm3
	vpshufb	%xmm0, %xmm17, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpshufb	%xmm0, %xmm25, %xmm8
	vpclmulqdq	$17, %xmm1, %xmm5, %xmm1
	vpternlogq	$150, %xmm1, %xmm3, %xmm2
	vmovdqa	16(%rsp), %xmm10
	vpclmulqdq	$1, %xmm8, %xmm10, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm10, %xmm3
	vpternlogq	$150, %xmm1, %xmm7, %xmm3
	vpclmulqdq	$0, %xmm8, %xmm10, %xmm1
	vmovdqa	(%rsp), %xmm15
	vpclmulqdq	$0, %xmm4, %xmm15, %xmm7
	vpternlogq	$150, %xmm1, %xmm9, %xmm7
	vpclmulqdq	$1, %xmm4, %xmm15, %xmm1
	vpclmulqdq	$16, %xmm4, %xmm15, %xmm9
	vpternlogq	$150, %xmm1, %xmm3, %xmm9
	vpclmulqdq	$17, %xmm8, %xmm10, %xmm1
	vpclmulqdq	$17, %xmm4, %xmm15, %xmm3
	vpshufb	%xmm0, %xmm16, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm3
	vmovdqa	32(%rsp), %xmm6
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm2
	vpternlogq	$150, %xmm1, %xmm9, %xmm2
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpslldq	$8, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm7, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %xmm6
	vpclmulqdq	$16, %xmm6, %xmm4, %xmm1
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm6, %xmm1, %xmm6
	vpternlogq	$150, %xmm0, %xmm3, %xmm6
	vpsrldq	$8, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm1, %xmm6
	movq	%rcx, %rdx
	vmovdqa64	128(%rsp), %xmm20
	vmovdqa	112(%rsp), %xmm4
.LBB1_29:
	vmovdqa64	%xmm12, %xmm22
	vmovdqa64	%xmm30, %xmm18
	vmovdqa64	%xmm11, %xmm17
	vmovdqa64	%xmm13, %xmm16
	cmpq	$16, %rax
	vmovdqa	-48(%rsp), %xmm3
	vmovdqa	-16(%rsp), %xmm0
	vmovdqa64	%xmm4, %xmm28
	vmovdqa64	%xmm3, %xmm24
	jb	.LBB1_30
	vmovdqa64	.LCPI1_12(%rip), %xmm21
	vpmovsxbq	.LCPI1_31(%rip), %xmm19
	vmovdqa64	-80(%rsp), %xmm25
	vmovdqa64	-96(%rsp), %xmm30
	vmovdqa	-112(%rsp), %xmm9
	vmovdqa64	%xmm16, %xmm11
	vmovaps	%xmm31, %xmm12
	vmovdqa64	%xmm17, %xmm14
	vmovdqa64	%xmm18, %xmm1
	vmovdqa64	%xmm22, %xmm8
	vmovdqa64	%xmm0, %xmm26
	vpbroadcastq	.LCPI1_13(%rip), %xmm27
	vmovdqa	-128(%rsp), %xmm0
	vmovdqa64	%xmm29, %xmm7
	vmovdqa	-32(%rsp), %xmm13
	vmovdqa64	%xmm20, %xmm5
	vmovdqa	-64(%rsp), %xmm15
	.p2align	4
.LBB1_38:
	vpshufb	%xmm21, %xmm23, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	vaesenc	%xmm13, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm2, %xmm2
	vmovdqa64	%xmm26, %xmm7
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm3, %xmm2, %xmm2
	vmovdqa64	%xmm25, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vmovdqa64	%xmm30, %xmm3
	vaesenc	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm14, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm2, %xmm2
	vaesenclast	%xmm8, %xmm2, %xmm2
	vpxor	(%r9), %xmm2, %xmm2
	vpshufb	%xmm21, %xmm2, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm6
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm4, %xmm7
	vpxor	%xmm7, %xmm6, %xmm6
	vmovdqa64	%xmm27, %xmm10
	vpclmulqdq	$16, %xmm10, %xmm6, %xmm7
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm10, %xmm7, %xmm6
	vpxor	%xmm3, %xmm6, %xmm6
	vpshufd	$78, %xmm7, %xmm3
	vmovdqa64	%xmm29, %xmm7
	leaq	16(%r9), %rsi
	leaq	16(%rdx), %rcx
	addq	$-16, %rax
	vpaddd	%xmm19, %xmm23, %xmm23
	vmovdqu	%xmm2, (%rdx)
	vpsrldq	$8, %xmm4, %xmm2
	vmovdqa64	%xmm28, %xmm4
	vpternlogq	$150, %xmm2, %xmm3, %xmm6
	vmovdqa64	%xmm24, %xmm3
	movq	%rcx, %rdx
	movq	%rsi, %r9
	cmpq	$15, %rax
	ja	.LBB1_38
	testq	%rax, %rax
	je	.LBB1_40
.LBB1_41:
	movl	$-1, %edx
	bzhil	%eax, %edx, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rsi), %xmm0 {%k1} {z}
	vpshufb	.LCPI1_12(%rip), %xmm23, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vaesenc	-32(%rsp), %xmm1, %xmm1
	vmovdqa	-128(%rsp), %xmm15
	vaesenc	%xmm15, %xmm1, %xmm1
	vaesenc	-16(%rsp), %xmm1, %xmm1
	vmovdqa64	%xmm20, %xmm2
	vaesenc	%xmm2, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm3, %xmm1, %xmm1
	vmovdqa	-80(%rsp), %xmm4
	vaesenc	%xmm4, %xmm1, %xmm1
	vmovdqa	-96(%rsp), %xmm7
	vaesenc	%xmm7, %xmm1, %xmm1
	vmovdqa	-112(%rsp), %xmm9
	vaesenc	%xmm9, %xmm1, %xmm1
	vmovdqa64	%xmm16, %xmm13
	vaesenc	%xmm13, %xmm1, %xmm1
	vmovaps	%xmm12, %xmm10
	vaesenc	%xmm12, %xmm1, %xmm1
	vmovdqa64	%xmm17, %xmm11
	vaesenc	%xmm11, %xmm1, %xmm1
	vmovdqa64	%xmm18, %xmm2
	vmovdqa64	%xmm18, %xmm30
	vaesenc	%xmm2, %xmm1, %xmm1
	vmovdqa64	%xmm22, %xmm12
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqu8	%xmm0, (%rcx) {%k1}
	vmovdqu8	%xmm0, %xmm0 {%k1} {z}
	vmovdqa	-64(%rsp), %xmm5
.LBB1_42:
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpbroadcastq	.LCPI1_13(%rip), %xmm8
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm8, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm6
	vpternlogq	$150, %xmm2, %xmm1, %xmm6
	jmp	.LBB1_43
.LBB1_30:
	movq	%rdx, %rcx
	movq	%r9, %rsi
	vmovaps	%xmm31, %xmm12
	vmovdqa64	%xmm29, %xmm7
	testq	%rax, %rax
	jne	.LBB1_41
.LBB1_40:
	vmovdqa	-80(%rsp), %xmm4
	vmovdqa	-96(%rsp), %xmm7
	vmovdqa	-112(%rsp), %xmm9
	vmovdqa64	%xmm16, %xmm13
	vmovaps	%xmm12, %xmm10
	vmovdqa64	%xmm17, %xmm11
	vmovdqa64	%xmm18, %xmm30
	vmovdqa64	%xmm22, %xmm12
	vpbroadcastq	.LCPI1_13(%rip), %xmm8
	vmovdqa	-128(%rsp), %xmm15
	vmovdqa	-64(%rsp), %xmm5
.LBB1_43:
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpsllq	$3, %xmm0, %xmm0
	vpxor	%xmm0, %xmm6, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm5, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm5, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm8, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxorq	.LCPI1_25(%rip), %xmm29, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	-16(%rsp), %xmm3, %xmm3
	vmovdqa64	%xmm20, %xmm5
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa64	%xmm28, %xmm5
	vaesenc	%xmm5, %xmm3, %xmm3
	vmovdqa64	%xmm24, %xmm5
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vaesenc	%xmm10, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vmovdqa64	%xmm30, %xmm14
	vaesenc	%xmm14, %xmm3, %xmm3
	vaesenclast	%xmm12, %xmm3, %xmm3
	vpshufb	.LCPI1_27(%rip), %xmm2, %xmm2
	vpshufb	.LCPI1_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI1_26(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpternlogq	$150, %xmm0, %xmm3, %xmm2
	movq	184(%rsp), %rax
	vmovdqu	%xmm2, (%rax)
	movl	$1, %eax
.LBB1_44:
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndk_skylakex_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_skylakex_encrypt
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_0:
	.long	1
.LCPI2_5:
	.long	0x00000002
.LCPI2_6:
	.long	0x0c0f0e0d
.LCPI2_7:
	.long	0x00000004
.LCPI2_8:
	.long	0x00000008
.LCPI2_9:
	.long	0x00000010
.LCPI2_10:
	.long	0x00000020
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.quad	2
	.quad	0
.LCPI2_2:
	.quad	4
	.quad	0
.LCPI2_3:
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
.LCPI2_12:
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
.LCPI2_14:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_15:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_16:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_17:
	.long	6
	.long	0
	.long	0
	.long	0
.LCPI2_18:
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
.LCPI2_19:
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
.LCPI2_20:
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
	.quad	4294967297
.LCPI2_11:
	.quad	274877907008
.LCPI2_13:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
.LCPI2_21:
	.byte	2
	.byte	0
.LCPI2_22:
	.byte	4
	.byte	0
.LCPI2_23:
	.byte	1
	.byte	0
	.section	.text.haberdashery_aes256gcmdndk_skylakex_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_skylakex_decrypt,@function
haberdashery_aes256gcmdndk_skylakex_decrypt:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	96(%rsp), %r10
	xorl	%eax, %eax
	cmpq	128(%rsp), %r10
	jne	.LBB2_41
	movq	%r10, %r11
	shrq	$5, %r11
	cmpq	$2147483646, %r11
	ja	.LBB2_41
	movabsq	$2305843009213693950, %r11
	cmpq	%r11, %r8
	ja	.LBB2_41
	cmpq	$24, %rdx
	jne	.LBB2_41
	cmpq	$16, 112(%rsp)
	jne	.LBB2_41
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vpbroadcastd	.LCPI2_0(%rip), %xmm2
	vpinsrd	$1, 12(%rsi), %xmm2, %xmm2
	vpinsrd	$2, 16(%rsi), %xmm2, %xmm2
	vpinsrd	$3, 20(%rsi), %xmm2, %xmm3
	vmovaps	(%rdi), %xmm4
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	%xmm0, %xmm4, %xmm2
	vxorps	%xmm3, %xmm4, %xmm3
	vpmovsxbq	.LCPI2_21(%rip), %xmm31
	vxorps	%xmm31, %xmm2, %xmm1
	vxorps	%xmm31, %xmm3, %xmm5
	vpmovsxbq	.LCPI2_22(%rip), %xmm6
	vxorps	%xmm6, %xmm2, %xmm4
	vmovaps	16(%rdi), %xmm7
	vxorps	%xmm6, %xmm3, %xmm6
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	vmovaps	32(%rdi), %xmm7
	vmovaps	48(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	64(%rdi), %xmm7
	vmovaps	80(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	96(%rdi), %xmm7
	vmovaps	112(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	128(%rdi), %xmm7
	vmovaps	144(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	160(%rdi), %xmm7
	vmovaps	176(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovaps	192(%rdi), %xmm7
	vmovaps	208(%rdi), %xmm8
	#APP
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm6, %xmm6
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm6, %xmm6
	#NO_APP
	vmovdqa	224(%rdi), %xmm7
	#APP
	vaesenclast	%xmm7, %xmm2, %xmm2
	vaesenclast	%xmm7, %xmm3, %xmm3
	vaesenclast	%xmm7, %xmm1, %xmm1
	vaesenclast	%xmm7, %xmm5, %xmm5
	vaesenclast	%xmm7, %xmm4, %xmm4
	vaesenclast	%xmm7, %xmm6, %xmm6
	#NO_APP
	vpxor	%xmm5, %xmm1, %xmm10
	vpternlogq	$150, %xmm2, %xmm3, %xmm10
	vpxor	%xmm6, %xmm4, %xmm6
	vpternlogq	$150, %xmm2, %xmm3, %xmm6
	vpslldq	$4, %xmm10, %xmm1
	vpslldq	$8, %xmm10, %xmm2
	vpslldq	$12, %xmm10, %xmm3
	vpternlogq	$150, %xmm2, %xmm1, %xmm3
	vpbroadcastd	.LCPI2_6(%rip), %xmm2
	vpshufb	%xmm2, %xmm6, %xmm1
	vpbroadcastq	.LCPI2_4(%rip), %xmm4
	vaesenclast	%xmm4, %xmm1, %xmm11
	vpternlogq	$150, %xmm3, %xmm10, %xmm11
	vaesenc	%xmm6, %xmm10, %xmm1
	vpslldq	$4, %xmm6, %xmm3
	vpslldq	$8, %xmm6, %xmm4
	vpslldq	$12, %xmm6, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm11, %xmm3
	vpxor	%xmm7, %xmm7, %xmm7
	vaesenclast	%xmm7, %xmm3, %xmm0
	vbroadcastss	.LCPI2_5(%rip), %xmm4
	vmovaps	%xmm6, -96(%rsp)
	vpternlogq	$150, %xmm5, %xmm6, %xmm0
	vbroadcastss	.LCPI2_6(%rip), %xmm3
	vmovdqa64	%xmm11, %xmm17
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm5
	vpslldq	$8, %xmm11, %xmm6
	vpslldq	$12, %xmm11, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufb	%xmm3, %xmm0, %xmm9
	vaesenclast	%xmm4, %xmm9, %xmm9
	vpternlogq	$150, %xmm11, %xmm8, %xmm9
	#NO_APP
	vbroadcastss	.LCPI2_7(%rip), %xmm4
	vmovdqa64	%xmm0, %xmm18
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm5
	vpslldq	$8, %xmm0, %xmm6
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufd	$255, %xmm9, %xmm11
	vaesenclast	%xmm7, %xmm11, %xmm11
	vpternlogq	$150, %xmm0, %xmm8, %xmm11
	#NO_APP
	vmovdqa64	%xmm9, %xmm30
	#APP
	vaesenc	%xmm9, %xmm1, %xmm1
	vpslldq	$4, %xmm9, %xmm5
	vpslldq	$8, %xmm9, %xmm6
	vpslldq	$12, %xmm9, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufb	%xmm3, %xmm11, %xmm0
	vaesenclast	%xmm4, %xmm0, %xmm0
	vpternlogq	$150, %xmm9, %xmm8, %xmm0
	#NO_APP
	vmovdqa64	%xmm11, %xmm28
	#APP
	vaesenc	%xmm11, %xmm1, %xmm1
	vpslldq	$4, %xmm11, %xmm4
	vpslldq	$8, %xmm11, %xmm5
	vpslldq	$12, %xmm11, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm0, %xmm13
	vaesenclast	%xmm7, %xmm13, %xmm13
	vpternlogq	$150, %xmm11, %xmm6, %xmm13
	#NO_APP
	vbroadcastss	.LCPI2_8(%rip), %xmm4
	vmovdqa64	%xmm0, %xmm26
	#APP
	vaesenc	%xmm0, %xmm1, %xmm1
	vpslldq	$4, %xmm0, %xmm5
	vpslldq	$8, %xmm0, %xmm6
	vpslldq	$12, %xmm0, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufb	%xmm3, %xmm13, %xmm14
	vaesenclast	%xmm4, %xmm14, %xmm14
	vpternlogq	$150, %xmm0, %xmm8, %xmm14
	#NO_APP
	vmovaps	%xmm13, -32(%rsp)
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm4
	vpslldq	$8, %xmm13, %xmm5
	vpslldq	$12, %xmm13, %xmm6
	vpternlogq	$150, %xmm4, %xmm5, %xmm6
	vpshufd	$255, %xmm14, %xmm15
	vaesenclast	%xmm7, %xmm15, %xmm15
	vpternlogq	$150, %xmm13, %xmm6, %xmm15
	#NO_APP
	vbroadcastss	.LCPI2_9(%rip), %xmm4
	vmovaps	%xmm14, -48(%rsp)
	#APP
	vaesenc	%xmm14, %xmm1, %xmm1
	vpslldq	$4, %xmm14, %xmm5
	vpslldq	$8, %xmm14, %xmm6
	vpslldq	$12, %xmm14, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufb	%xmm3, %xmm15, %xmm13
	vaesenclast	%xmm4, %xmm13, %xmm13
	vpternlogq	$150, %xmm14, %xmm8, %xmm13
	#NO_APP
	vbroadcastss	.LCPI2_10(%rip), %xmm4
	vmovaps	%xmm15, -64(%rsp)
	#APP
	vaesenc	%xmm15, %xmm1, %xmm1
	vpslldq	$4, %xmm15, %xmm5
	vpslldq	$8, %xmm15, %xmm6
	vpslldq	$12, %xmm15, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufd	$255, %xmm13, %xmm0
	vaesenclast	%xmm7, %xmm0, %xmm0
	vpternlogq	$150, %xmm15, %xmm8, %xmm0
	#NO_APP
	#APP
	vaesenc	%xmm13, %xmm1, %xmm1
	vpslldq	$4, %xmm13, %xmm5
	vpslldq	$8, %xmm13, %xmm6
	vpslldq	$12, %xmm13, %xmm8
	vpternlogq	$150, %xmm5, %xmm6, %xmm8
	vpshufb	%xmm3, %xmm0, %xmm9
	vaesenclast	%xmm4, %xmm9, %xmm9
	vpternlogq	$150, %xmm13, %xmm8, %xmm9
	#NO_APP
	vpslldq	$4, %xmm0, %xmm3
	vpunpcklqdq	%xmm0, %xmm7, %xmm4
	vinsertps	$55, %xmm0, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm3, %xmm5
	vpshufd	$255, %xmm9, %xmm3
	vaesenclast	%xmm7, %xmm3, %xmm8
	vpternlogq	$150, %xmm5, %xmm0, %xmm8
	vpshufb	%xmm2, %xmm8, %xmm2
	vpbroadcastq	.LCPI2_11(%rip), %xmm3
	vaesenclast	%xmm3, %xmm2, %xmm12
	vpslldq	$4, %xmm9, %xmm2
	vpunpcklqdq	%xmm9, %xmm7, %xmm3
	vinsertps	$55, %xmm9, %xmm0, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm4
	vpternlogq	$150, %xmm4, %xmm9, %xmm12
	vmovdqa64	%xmm0, %xmm29
	vaesenc	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenclast	%xmm12, %xmm1, %xmm1
	vpshufb	.LCPI2_12(%rip), %xmm1, %xmm1
	vpaddq	%xmm1, %xmm1, %xmm2
	vpsrlq	$63, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm3
	vpblendd	$12, %xmm1, %xmm7, %xmm1
	vpsllq	$63, %xmm1, %xmm4
	vpternlogq	$30, %xmm3, %xmm2, %xmm4
	vpsllq	$62, %xmm1, %xmm2
	vpsllq	$57, %xmm1, %xmm6
	vpternlogq	$150, %xmm2, %xmm4, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm6, %xmm1
	vpbroadcastq	.LCPI2_13(%rip), %xmm14
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm5
	vpclmulqdq	$17, %xmm6, %xmm6, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm5
	vpclmulqdq	$16, %xmm6, %xmm5, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm5, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm5, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm5, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm11
	vpternlogq	$150, %xmm1, %xmm3, %xmm11
	vpclmulqdq	$0, %xmm11, %xmm11, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm0
	vpclmulqdq	$17, %xmm11, %xmm11, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vmovdqa	%xmm0, -16(%rsp)
	vpclmulqdq	$0, %xmm5, %xmm5, %xmm1
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm2, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm15
	vpclmulqdq	$17, %xmm5, %xmm5, %xmm1
	vpternlogq	$150, %xmm2, %xmm1, %xmm15
	vpclmulqdq	$16, %xmm6, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm6, %xmm15, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpslldq	$8, %xmm1, %xmm2
	vpclmulqdq	$0, %xmm6, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm4
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm2, %xmm25
	vpternlogq	$150, %xmm1, %xmm4, %xmm25
	testq	%r8, %r8
	vmovdqa	%xmm15, 64(%rsp)
	je	.LBB2_25
	cmpq	$96, %r8
	jb	.LBB2_7
	vmovaps	%xmm10, -128(%rsp)
	vmovdqa	%xmm12, -112(%rsp)
	vmovdqa	%xmm8, -80(%rsp)
	vmovaps	%xmm9, %xmm23
	vmovdqa64	%xmm13, %xmm22
	vmovdqa64	%xmm26, %xmm21
	vmovdqa64	.LCPI2_12(%rip), %xmm27
	movq	%r8, %rdx
	vmovdqa	%xmm11, %xmm0
	vmovdqa	%xmm5, %xmm11
	vmovdqa64	%xmm6, %xmm24
	vmovdqa	-16(%rsp), %xmm6
	vmovdqa	%xmm15, %xmm1
	.p2align	4
.LBB2_20:
	vmovdqu64	(%rcx), %xmm26
	vmovdqu	16(%rcx), %xmm4
	vmovdqu	32(%rcx), %xmm5
	vmovdqu	48(%rcx), %xmm10
	vmovdqu	64(%rcx), %xmm12
	vmovdqu	80(%rcx), %xmm13
	vpshufb	%xmm27, %xmm10, %xmm10
	vpshufb	%xmm27, %xmm12, %xmm12
	vpshufb	%xmm27, %xmm13, %xmm13
	vmovdqa64	%xmm24, %xmm2
	vpclmulqdq	$0, %xmm13, %xmm2, %xmm14
	vpclmulqdq	$1, %xmm13, %xmm2, %xmm15
	vpclmulqdq	$16, %xmm13, %xmm2, %xmm9
	vpxor	%xmm15, %xmm9, %xmm9
	vpclmulqdq	$0, %xmm12, %xmm11, %xmm15
	vpclmulqdq	$1, %xmm12, %xmm11, %xmm3
	vpclmulqdq	$16, %xmm12, %xmm11, %xmm8
	vpternlogq	$150, %xmm3, %xmm9, %xmm8
	vpclmulqdq	$0, %xmm10, %xmm0, %xmm3
	vpternlogq	$150, %xmm14, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm10, %xmm0, %xmm9
	vpclmulqdq	$16, %xmm10, %xmm0, %xmm14
	vpternlogq	$150, %xmm9, %xmm8, %xmm14
	vpshufb	%xmm27, %xmm4, %xmm4
	vpshufb	%xmm27, %xmm5, %xmm5
	vpclmulqdq	$17, %xmm13, %xmm2, %xmm8
	vpclmulqdq	$17, %xmm12, %xmm11, %xmm9
	vpclmulqdq	$17, %xmm10, %xmm0, %xmm10
	vpternlogq	$150, %xmm8, %xmm9, %xmm10
	vpclmulqdq	$1, %xmm5, %xmm1, %xmm8
	vpclmulqdq	$16, %xmm5, %xmm1, %xmm9
	vpternlogq	$150, %xmm8, %xmm14, %xmm9
	vpbroadcastq	.LCPI2_13(%rip), %xmm14
	vpclmulqdq	$0, %xmm5, %xmm1, %xmm8
	vmovdqa64	%xmm25, %xmm13
	vpclmulqdq	$0, %xmm4, %xmm13, %xmm12
	vpternlogq	$150, %xmm8, %xmm3, %xmm12
	vpclmulqdq	$1, %xmm4, %xmm13, %xmm3
	vpclmulqdq	$16, %xmm4, %xmm13, %xmm8
	vpternlogq	$150, %xmm3, %xmm9, %xmm8
	vpshufb	%xmm27, %xmm26, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	vpclmulqdq	$17, %xmm5, %xmm1, %xmm3
	vpclmulqdq	$17, %xmm4, %xmm13, %xmm4
	vpternlogq	$150, %xmm3, %xmm10, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm5
	vpternlogq	$150, %xmm3, %xmm8, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm3
	vpslldq	$8, %xmm5, %xmm7
	vpternlogq	$150, %xmm3, %xmm12, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm7, %xmm3
	vpshufd	$78, %xmm7, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm3, %xmm7
	vpternlogq	$150, %xmm2, %xmm4, %xmm7
	vpsrldq	$8, %xmm5, %xmm2
	vpshufd	$78, %xmm3, %xmm3
	addq	$96, %rcx
	addq	$-96, %rdx
	vpternlogq	$150, %xmm2, %xmm3, %xmm7
	cmpq	$95, %rdx
	ja	.LBB2_20
	vmovdqa64	%xmm18, %xmm15
	vmovdqa64	%xmm21, %xmm26
	vmovdqa64	%xmm22, %xmm13
	vmovaps	%xmm23, %xmm9
	vmovdqa	-80(%rsp), %xmm8
	vmovdqa	-112(%rsp), %xmm12
	vmovapd	-128(%rsp), %xmm10
	vmovdqa	%xmm11, %xmm5
	vmovdqa	%xmm0, %xmm11
	vmovdqa64	%xmm17, %xmm4
	vmovdqa64	%xmm24, %xmm6
	cmpq	$16, %rdx
	jae	.LBB2_10
.LBB2_9:
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	jne	.LBB2_22
	jmp	.LBB2_17
.LBB2_25:
	xorl	%r8d, %r8d
	testq	%r10, %r10
	vmovdqa64	%xmm18, %xmm15
	vmovdqa64	%xmm17, %xmm4
	jne	.LBB2_26
	jmp	.LBB2_40
.LBB2_7:
	movq	%r8, %rdx
	vmovdqa64	%xmm18, %xmm15
	vmovdqa64	%xmm17, %xmm4
	cmpq	$16, %rdx
	jb	.LBB2_9
.LBB2_10:
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	je	.LBB2_11
	cmpq	$16, %rsi
	jae	.LBB2_13
.LBB2_16:
	testq	%rsi, %rsi
	je	.LBB2_17
.LBB2_22:
	movl	$-1, %edx
	bzhil	%esi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm1 {%k1} {z}
	shlq	$3, %r8
	testq	%r10, %r10
	je	.LBB2_39
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_41
	vpshufb	.LCPI2_12(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm3
	vmovdqa64	%xmm4, %xmm16
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm4, %xmm7
	vmovdqa64	%xmm16, %xmm4
	vpternlogq	$150, %xmm3, %xmm2, %xmm7
	jmp	.LBB2_26
.LBB2_11:
	vmovdqu	(%rcx), %xmm1
	addq	$16, %rcx
	vpshufb	.LCPI2_12(%rip), %xmm1, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
	vpclmulqdq	$0, %xmm1, %xmm6, %xmm2
	vmovdqa64	%xmm4, %xmm16
	vpclmulqdq	$1, %xmm1, %xmm6, %xmm4
	vmovdqa	%xmm5, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm6, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm1, %xmm6, %xmm1
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm1, %xmm5, %xmm7
	vmovdqa	%xmm3, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm7
	vmovdqa64	%xmm16, %xmm4
	movq	%rsi, %rdx
	cmpq	$16, %rsi
	jb	.LBB2_16
.LBB2_13:
	vmovdqa64	%xmm15, %xmm16
	vmovdqa	%xmm4, %xmm15
	vmovdqa	%xmm11, %xmm0
	vmovdqa	%xmm5, %xmm11
	vmovdqa	.LCPI2_12(%rip), %xmm1
	.p2align	4
.LBB2_14:
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpshufb	%xmm1, %xmm2, %xmm2
	vpxor	%xmm2, %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vpslldq	$8, %xmm5, %xmm7
	vpxor	%xmm7, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$16, %xmm14, %xmm4, %xmm7
	vpshufd	$78, %xmm4, %xmm4
	vpternlogq	$150, %xmm2, %xmm5, %xmm7
	addq	$32, %rcx
	addq	$-32, %rdx
	vpshufb	%xmm1, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm6, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm6, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm6, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm14, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm2, %xmm5, %xmm7
	vpternlogq	$150, %xmm4, %xmm3, %xmm7
	cmpq	$15, %rdx
	ja	.LBB2_14
	movq	%rdx, %rsi
	vmovdqa	%xmm11, %xmm5
	vmovdqa	%xmm0, %xmm11
	vmovdqa	%xmm15, %xmm4
	vmovdqa64	%xmm16, %xmm15
	testq	%rsi, %rsi
	jne	.LBB2_22
.LBB2_17:
	shlq	$3, %r8
	testq	%r10, %r10
	je	.LBB2_40
	movabsq	$-68719476704, %rcx
	leaq	(%r10,%rcx), %rdx
	incq	%rcx
	cmpq	%rcx, %rdx
	jb	.LBB2_41
.LBB2_26:
	vmovdqa	%xmm12, -112(%rsp)
	vmovdqa64	%xmm29, -128(%rsp)
	movq	120(%rsp), %rax
	cmpq	$96, %r10
	jb	.LBB2_27
	vpmovsxbq	.LCPI2_21(%rip), %xmm31
	vmovdqa64	.LCPI2_12(%rip), %xmm16
	movq	%r10, %rcx
	vmovdqa64	%xmm10, %xmm29
	vmovdqa	%xmm4, 16(%rsp)
	vmovdqa	%xmm15, (%rsp)
	vmovdqa64	%xmm30, 32(%rsp)
	vmovdqa64	%xmm28, 48(%rsp)
	vmovdqa64	%xmm26, -80(%rsp)
	vmovdqa64	%xmm13, %xmm22
	vmovdqa64	%xmm9, %xmm21
	vmovdqa64	%xmm8, %xmm20
	vmovdqa	-96(%rsp), %xmm10
	vmovdqa64	%xmm5, %xmm18
	vmovdqa64	%xmm11, %xmm17
	vmovdqa64	-16(%rsp), %xmm19
	vmovdqa64	%xmm25, %xmm0
	vmovaps	64(%rsp), %xmm23
	.p2align	4
.LBB2_33:
	vmovdqu64	16(%r9), %xmm24
	vmovdqu64	32(%r9), %xmm25
	vmovdqu64	48(%r9), %xmm26
	vmovdqu64	64(%r9), %xmm27
	vmovdqu64	80(%r9), %xmm28
	vpshufb	%xmm16, %xmm31, %xmm1
	vpaddd	.LCPI2_14(%rip), %xmm31, %xmm2
	vpshufb	%xmm16, %xmm2, %xmm2
	vpaddd	.LCPI2_1(%rip), %xmm31, %xmm3
	vpshufb	%xmm16, %xmm3, %xmm3
	vpaddd	.LCPI2_15(%rip), %xmm31, %xmm4
	vpshufb	%xmm16, %xmm4, %xmm5
	vpaddd	.LCPI2_2(%rip), %xmm31, %xmm4
	vpshufb	%xmm16, %xmm4, %xmm8
	vpaddd	.LCPI2_16(%rip), %xmm31, %xmm4
	vpshufb	%xmm16, %xmm4, %xmm9
	vpshufb	%xmm16, %xmm28, %xmm11
	vpxorq	%xmm1, %xmm29, %xmm15
	vpxorq	%xmm2, %xmm29, %xmm4
	vpxorq	%xmm3, %xmm29, %xmm14
	vpxorq	%xmm5, %xmm29, %xmm12
	vpxorq	%xmm8, %xmm29, %xmm13
	vpxorq	%xmm9, %xmm29, %xmm2
	#APP
	vaesenc	%xmm10, %xmm15, %xmm15
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm14, %xmm14
	vaesenc	%xmm10, %xmm12, %xmm12
	vaesenc	%xmm10, %xmm13, %xmm13
	vaesenc	%xmm10, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqa64	%xmm10, %xmm30
	vpxor	%xmm10, %xmm10, %xmm10
	vpxor	%xmm5, %xmm5, %xmm5
	vmovaps	16(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm5, %xmm5
	vpclmulqdq	$1, %xmm6, %xmm11, %xmm3
	vpxor	%xmm3, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm27, %xmm3
	vmovaps	(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovaps	32(%rsp), %xmm9
	vmovdqa64	%xmm18, %xmm11
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm26, %xmm3
	vmovaps	48(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovaps	-80(%rsp), %xmm9
	vmovdqa64	%xmm17, %xmm11
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm25, %xmm3
	vmovaps	-32(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovaps	-48(%rsp), %xmm9
	vmovaps	%xmm23, %xmm11
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm3, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm11, %xmm3, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	#NO_APP
	vpshufb	%xmm16, %xmm24, %xmm3
	vmovaps	-64(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm22, %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm0, %xmm3, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm3, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm0, %xmm3, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	#NO_APP
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm16, %xmm3, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vmovaps	-128(%rsp), %xmm8
	#APP
	vaesenc	%xmm8, %xmm15, %xmm15
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm14, %xmm14
	vaesenc	%xmm8, %xmm12, %xmm12
	vaesenc	%xmm8, %xmm13, %xmm13
	vaesenc	%xmm8, %xmm2, %xmm2
	#NO_APP
	vmovdqa64	%xmm21, %xmm9
	vmovdqa64	%xmm19, %xmm11
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm11, %xmm7, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	vpclmulqdq	$0, %xmm11, %xmm7, %xmm8
	vpxor	%xmm1, %xmm8, %xmm1
	vpclmulqdq	$17, %xmm11, %xmm7, %xmm8
	vpxor	%xmm5, %xmm8, %xmm5
	vpclmulqdq	$1, %xmm11, %xmm7, %xmm8
	vpxor	%xmm8, %xmm10, %xmm10
	#NO_APP
	vpxor	%xmm8, %xmm8, %xmm8
	vpunpcklqdq	%xmm10, %xmm8, %xmm7
	vpunpckhqdq	%xmm8, %xmm10, %xmm8
	vmovdqa64	%xmm20, %xmm9
	#APP
	vaesenc	%xmm9, %xmm15, %xmm15
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm14, %xmm14
	vaesenc	%xmm9, %xmm12, %xmm12
	vaesenc	%xmm9, %xmm13, %xmm13
	vaesenc	%xmm9, %xmm2, %xmm2
	#NO_APP
	vmovaps	-112(%rsp), %xmm9
	#APP
	vaesenclast	%xmm9, %xmm15, %xmm15
	vaesenclast	%xmm9, %xmm4, %xmm4
	vaesenclast	%xmm9, %xmm14, %xmm14
	vaesenclast	%xmm9, %xmm12, %xmm12
	vaesenclast	%xmm9, %xmm13, %xmm13
	vaesenclast	%xmm9, %xmm2, %xmm2
	#NO_APP
	vpxor	%xmm3, %xmm15, %xmm3
	vpxorq	%xmm24, %xmm4, %xmm4
	vpxorq	%xmm25, %xmm14, %xmm9
	vpbroadcastq	.LCPI2_13(%rip), %xmm14
	vpxorq	%xmm26, %xmm12, %xmm10
	vpxorq	%xmm27, %xmm13, %xmm11
	vpxorq	%xmm28, %xmm2, %xmm2
	vpxor	%xmm7, %xmm1, %xmm1
	vpshufd	$78, %xmm1, %xmm7
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm5, %xmm8, %xmm7
	vmovdqu	%xmm3, (%rax)
	vmovdqu	%xmm4, 16(%rax)
	vmovdqu	%xmm9, 32(%rax)
	vmovdqu	%xmm10, 48(%rax)
	vmovdqa64	%xmm30, %xmm10
	vmovdqu	%xmm11, 64(%rax)
	vmovdqu	%xmm2, 80(%rax)
	vpshufd	$78, %xmm1, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm1
	vpternlogq	$150, %xmm1, %xmm2, %xmm7
	addq	$96, %r9
	addq	$96, %rax
	addq	$-96, %rcx
	vpaddd	.LCPI2_17(%rip), %xmm31, %xmm31
	cmpq	$95, %rcx
	ja	.LBB2_33
	vmovdqa64	%xmm20, %xmm2
	vmovdqa64	%xmm21, %xmm12
	vmovdqa64	%xmm22, %xmm11
	vmovdqa64	%xmm29, %xmm10
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	(%rsp), %xmm15
	vmovdqa64	32(%rsp), %xmm30
	vmovdqa64	48(%rsp), %xmm28
	vmovdqa64	-80(%rsp), %xmm26
	jmp	.LBB2_28
.LBB2_27:
	vmovdqa	%xmm8, %xmm2
	vmovdqa	%xmm9, %xmm12
	vmovdqa	%xmm13, %xmm11
	movq	%r10, %rcx
.LBB2_28:
	vmovdqa64	%xmm4, %xmm21
	vmovdqa64	%xmm15, %xmm20
	vmovdqa64	%xmm10, %xmm18
	cmpq	$16, %rcx
	jb	.LBB2_29
	vmovdqa64	.LCPI2_12(%rip), %xmm17
	vpmovsxbq	.LCPI2_23(%rip), %xmm16
	vmovdqa64	-32(%rsp), %xmm22
	vmovdqa64	-48(%rsp), %xmm23
	vmovdqa64	-64(%rsp), %xmm24
	vmovdqa64	-128(%rsp), %xmm25
	vmovdqa64	-112(%rsp), %xmm29
	vpbroadcastq	.LCPI2_13(%rip), %xmm27
	vmovdqa64	%xmm18, %xmm19
	vmovdqa	-96(%rsp), %xmm13
	vmovdqa64	%xmm20, %xmm0
	vmovdqa64	%xmm30, %xmm10
	vmovdqa64	%xmm28, %xmm14
	vmovdqa64	%xmm26, %xmm9
	vmovdqa64	%xmm21, %xmm15
	.p2align	4
.LBB2_36:
	vmovdqu	(%r9), %xmm3
	vpshufb	%xmm17, %xmm3, %xmm4
	vpxor	%xmm4, %xmm7, %xmm4
	vpclmulqdq	$1, %xmm4, %xmm6, %xmm5
	vpclmulqdq	$16, %xmm4, %xmm6, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$0, %xmm4, %xmm6, %xmm7
	vpclmulqdq	$17, %xmm4, %xmm6, %xmm4
	vpslldq	$8, %xmm5, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vmovdqa64	%xmm27, %xmm1
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm7
	vpxor	%xmm7, %xmm8, %xmm7
	vpshufd	$78, %xmm7, %xmm8
	vpclmulqdq	$16, %xmm1, %xmm7, %xmm7
	vpxor	%xmm4, %xmm7, %xmm7
	vpshufb	%xmm17, %xmm31, %xmm4
	vpxorq	%xmm4, %xmm19, %xmm4
	vaesenc	%xmm13, %xmm4, %xmm4
	vaesenc	%xmm15, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm10, %xmm4, %xmm4
	vaesenc	%xmm14, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm4, %xmm4
	vmovdqa64	%xmm22, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovdqa64	%xmm23, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vmovdqa64	%xmm24, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm11, %xmm4, %xmm4
	vmovdqa64	%xmm25, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm4
	vaesenc	%xmm12, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm4, %xmm4
	vmovdqa64	%xmm29, %xmm1
	vaesenclast	%xmm1, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	leaq	16(%rax), %rdx
	addq	$-16, %rcx
	addq	$16, %r9
	vpsrldq	$8, %xmm5, %xmm4
	vpternlogq	$150, %xmm4, %xmm8, %xmm7
	vpaddd	%xmm16, %xmm31, %xmm31
	vmovdqu	%xmm3, (%rax)
	movq	%rdx, %rax
	cmpq	$15, %rcx
	ja	.LBB2_36
	vmovdqa	%xmm2, %xmm8
	testq	%rcx, %rcx
	je	.LBB2_31
.LBB2_37:
	movl	$-1, %eax
	bzhil	%ecx, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%r9), %xmm2 {%k1} {z}
	vmovdqa64	%xmm21, %xmm3
	vpshufb	.LCPI2_12(%rip), %xmm31, %xmm0
	vmovdqa64	%xmm18, %xmm10
	vpxorq	%xmm0, %xmm18, %xmm0
	vaesenc	-96(%rsp), %xmm0, %xmm0
	vmovdqa64	%xmm21, %xmm4
	vaesenc	%xmm3, %xmm0, %xmm0
	vmovdqa64	%xmm20, %xmm15
	vaesenc	%xmm15, %xmm0, %xmm0
	vmovdqa64	%xmm30, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa64	%xmm28, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa64	%xmm26, %xmm1
	vaesenc	%xmm1, %xmm0, %xmm0
	vaesenc	-32(%rsp), %xmm0, %xmm0
	vaesenc	-48(%rsp), %xmm0, %xmm0
	vaesenc	-64(%rsp), %xmm0, %xmm0
	vmovdqa	%xmm11, %xmm13
	vaesenc	%xmm11, %xmm0, %xmm0
	vmovdqa	-128(%rsp), %xmm1
	vmovdqa64	%xmm1, %xmm29
	vaesenc	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm12, %xmm9
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqa	-112(%rsp), %xmm12
	vaesenclast	%xmm12, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm1
	vmovdqu8	%xmm1, (%rdx) {%k1}
	testq	%r10, %r10
	vpbroadcastq	.LCPI2_13(%rip), %xmm14
	je	.LBB2_39
	vmovdqa	%xmm2, %xmm1
.LBB2_39:
	vpshufb	.LCPI2_12(%rip), %xmm1, %xmm0
	vpxor	%xmm0, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm14, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm7
	vpternlogq	$150, %xmm2, %xmm1, %xmm7
	jmp	.LBB2_40
.LBB2_29:
	movq	%rax, %rdx
	vmovdqa	%xmm2, %xmm8
	testq	%rcx, %rcx
	jne	.LBB2_37
.LBB2_31:
	vmovdqa	%xmm11, %xmm13
	vmovdqa64	-128(%rsp), %xmm29
	vmovdqa	%xmm12, %xmm9
	vmovdqa	-112(%rsp), %xmm12
	vpbroadcastq	.LCPI2_13(%rip), %xmm14
	vmovdqa64	%xmm18, %xmm10
	vmovdqa64	%xmm20, %xmm15
	vmovdqa64	%xmm21, %xmm4
.LBB2_40:
	vmovq	%r8, %xmm0
	vmovq	%r10, %xmm1
	vpsllq	$3, %xmm1, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpclmulqdq	$1, %xmm0, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm0, %xmm6, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm6, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm6, %xmm0
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpshufd	$78, %xmm2, %xmm3
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm2
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm14, %xmm2, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpxor	.LCPI2_18(%rip), %xmm10, %xmm3
	vaesenc	-96(%rsp), %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vmovdqa64	%xmm30, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm28, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vmovdqa64	%xmm26, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	-32(%rsp), %xmm3, %xmm3
	vaesenc	-48(%rsp), %xmm3, %xmm3
	vaesenc	-64(%rsp), %xmm3, %xmm3
	vaesenc	%xmm13, %xmm3, %xmm3
	vmovdqa64	%xmm29, %xmm4
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vpshufb	.LCPI2_19(%rip), %xmm2, %xmm2
	movq	104(%rsp), %rax
	vaesenclast	%xmm12, %xmm3, %xmm3
	vpshufb	.LCPI2_12(%rip), %xmm0, %xmm0
	vpshufb	.LCPI2_20(%rip), %xmm1, %xmm1
	vpternlogq	$150, %xmm0, %xmm2, %xmm1
	vpternlogq	$150, (%rax), %xmm3, %xmm1
	xorl	%eax, %eax
	vptest	%xmm1, %xmm1
	sete	%al
.LBB2_41:
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndk_skylakex_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndk_skylakex_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_skylakex_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_skylakex_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndk_skylakex_is_supported,@function
haberdashery_aes256gcmdndk_skylakex_is_supported:
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
	andl	$-779157207, %r8d
	xorl	%eax, %eax
	orl	%edi, %r8d
	sete	%al
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndk_skylakex_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_skylakex_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

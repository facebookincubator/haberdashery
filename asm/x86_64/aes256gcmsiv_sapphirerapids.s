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
	.section	.text.haberdashery_aes256gcmsiv_sapphirerapids_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_sapphirerapids_init
	.p2align	4
	.type	haberdashery_aes256gcmsiv_sapphirerapids_init,@function
haberdashery_aes256gcmsiv_sapphirerapids_init:
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
	.size	haberdashery_aes256gcmsiv_sapphirerapids_init, .Lfunc_end0-haberdashery_aes256gcmsiv_sapphirerapids_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI1_1:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI1_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_3:
	.quad	4
	.quad	0
.LCPI1_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI1_5:
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
.LCPI1_14:
	.quad	-1
	.quad	9223372036854775807
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
	.byte	128
.LCPI1_16:
	.quad	0
	.quad	8
.LCPI1_25:
	.long	32
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_6:
	.quad	4294967297
.LCPI1_7:
	.quad	8589934594
.LCPI1_8:
	.quad	17179869188
.LCPI1_9:
	.quad	34359738376
.LCPI1_10:
	.quad	68719476752
.LCPI1_11:
	.quad	137438953504
.LCPI1_12:
	.quad	274877907008
.LCPI1_13:
	.quad	-4467570830351532032
.LCPI1_27:
	.byte	4
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	0
	.byte	7
	.byte	0
.LCPI1_28:
	.byte	8
	.byte	0
	.byte	9
	.byte	0
	.byte	10
	.byte	0
	.byte	11
	.byte	0
.LCPI1_29:
	.byte	12
	.byte	0
	.byte	13
	.byte	0
	.byte	14
	.byte	0
	.byte	15
	.byte	0
.LCPI1_30:
	.byte	16
	.byte	0
	.byte	17
	.byte	0
	.byte	18
	.byte	0
	.byte	19
	.byte	0
.LCPI1_31:
	.byte	20
	.byte	0
	.byte	21
	.byte	0
	.byte	22
	.byte	0
	.byte	23
	.byte	0
.LCPI1_32:
	.byte	24
	.byte	0
	.byte	25
	.byte	0
	.byte	26
	.byte	0
	.byte	27
	.byte	0
.LCPI1_33:
	.byte	28
	.byte	0
	.byte	29
	.byte	0
	.byte	30
	.byte	0
	.byte	31
	.byte	0
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.LCPI1_17:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI1_18:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI1_19:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI1_20:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI1_21:
	.long	16
	.long	0
	.long	0
	.long	0
	.long	17
	.long	0
	.long	0
	.long	0
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI1_22:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
.LCPI1_23:
	.long	24
	.long	0
	.long	0
	.long	0
	.long	25
	.long	0
	.long	0
	.long	0
	.long	26
	.long	0
	.long	0
	.long	0
	.long	27
	.long	0
	.long	0
	.long	0
.LCPI1_24:
	.long	28
	.long	0
	.long	0
	.long	0
	.long	29
	.long	0
	.long	0
	.long	0
	.long	30
	.long	0
	.long	0
	.long	0
	.long	31
	.long	0
	.long	0
	.long	0
.LCPI1_34:
	.byte	32
	.byte	0
.LCPI1_35:
	.byte	1
	.byte	0
.LCPI1_36:
	.byte	2
	.byte	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_26:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_sapphirerapids_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_sapphirerapids_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_sapphirerapids_encrypt,@function
haberdashery_aes256gcmsiv_sapphirerapids_encrypt:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$992, %rsp
	.cfi_def_cfa_offset 1008
	.cfi_offset %rbx, -16
	movq	1008(%rsp), %r10
	xorl	%eax, %eax
	cmpq	1024(%rsp), %r10
	jne	.LBB1_60
	movabsq	$68719476737, %rax
	cmpq	%rax, %r8
	setb	%r11b
	cmpq	%rax, %r10
	setb	%bl
	andb	%r11b, %bl
	cmpq	$16, 1040(%rsp)
	sete	%r11b
	cmpq	$12, %rdx
	sete	%al
	andb	%r11b, %al
	andb	%bl, %al
	cmpb	$1, %al
	jne	.LBB1_59
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm1
	vxorps	.LCPI1_0(%rip), %xmm1, %xmm2
	vxorps	.LCPI1_1(%rip), %xmm1, %xmm0
	vxorps	.LCPI1_2(%rip), %xmm1, %xmm3
	vxorps	.LCPI1_3(%rip), %xmm1, %xmm13
	vxorps	.LCPI1_4(%rip), %xmm1, %xmm14
	vmovdqa	16(%rdi), %xmm5
	vmovdqa	32(%rdi), %xmm6
	vmovaps	48(%rdi), %xmm7
	vmovaps	64(%rdi), %xmm4
	#APP
	vaesenc	%xmm5, %xmm1, %xmm1
	vaesenc	%xmm5, %xmm2, %xmm2
	vaesenc	%xmm5, %xmm0, %xmm0
	vaesenc	%xmm5, %xmm3, %xmm3
	vaesenc	%xmm5, %xmm13, %xmm13
	vaesenc	%xmm5, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm0, %xmm0
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm13, %xmm13
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm13, %xmm13
	vaesenc	%xmm7, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	80(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	96(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	112(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	128(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	144(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	160(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	176(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	192(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	208(%rdi), %xmm4
	#APP
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm13, %xmm13
	vaesenc	%xmm4, %xmm14, %xmm14
	#NO_APP
	vmovaps	224(%rdi), %xmm4
	#APP
	vaesenclast	%xmm4, %xmm1, %xmm1
	vaesenclast	%xmm4, %xmm2, %xmm2
	vaesenclast	%xmm4, %xmm0, %xmm0
	vaesenclast	%xmm4, %xmm3, %xmm3
	vaesenclast	%xmm4, %xmm13, %xmm13
	vaesenclast	%xmm4, %xmm14, %xmm14
	#NO_APP
	vpunpcklqdq	%xmm2, %xmm1, %xmm15
	vpunpcklqdq	%xmm3, %xmm0, %xmm10
	vpunpcklqdq	%xmm14, %xmm13, %xmm9
	vpslldq	$4, %xmm10, %xmm1
	vxorpd	%xmm23, %xmm23, %xmm23
	vpunpcklqdq	%xmm0, %xmm23, %xmm2
	vinsertps	$55, %xmm0, %xmm0, %xmm0
	vpternlogq	$150, %xmm2, %xmm1, %xmm0
	vpbroadcastd	.LCPI1_26(%rip), %xmm19
	vpshufb	%xmm19, %xmm9, %xmm1
	vpbroadcastq	.LCPI1_6(%rip), %xmm2
	vaesenclast	%xmm2, %xmm1, %xmm11
	vpternlogq	$150, %xmm0, %xmm10, %xmm11
	vpslldq	$4, %xmm9, %xmm0
	vpunpcklqdq	%xmm13, %xmm23, %xmm1
	vinsertps	$55, %xmm13, %xmm0, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm11, %xmm0
	vaesenclast	%xmm23, %xmm0, %xmm12
	vpternlogq	$150, %xmm2, %xmm9, %xmm12
	vpslldq	$4, %xmm11, %xmm0
	vpslldq	$8, %xmm11, %xmm1
	vpslldq	$12, %xmm11, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm19, %xmm12, %xmm0
	vpbroadcastq	.LCPI1_7(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm8
	vpternlogq	$150, %xmm2, %xmm11, %xmm8
	vpslldq	$4, %xmm12, %xmm0
	vpslldq	$8, %xmm12, %xmm1
	vpslldq	$12, %xmm12, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm8, %xmm0
	vaesenclast	%xmm23, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm12, %xmm3
	vpslldq	$4, %xmm8, %xmm0
	vpslldq	$8, %xmm8, %xmm1
	vpslldq	$12, %xmm8, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm19, %xmm3, %xmm0
	vpbroadcastq	.LCPI1_8(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm17
	vpternlogq	$150, %xmm2, %xmm8, %xmm17
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm17, %xmm0
	vaesenclast	%xmm23, %xmm0, %xmm4
	vmovups	%zmm3, 864(%rsp)
	vpternlogq	$150, %xmm2, %xmm3, %xmm4
	vpslldq	$4, %xmm17, %xmm0
	vpslldq	$8, %xmm17, %xmm1
	vpslldq	$12, %xmm17, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm19, %xmm4, %xmm0
	vpbroadcastq	.LCPI1_9(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm3
	vpternlogq	$150, %xmm2, %xmm17, %xmm3
	vpslldq	$4, %xmm4, %xmm0
	vpslldq	$8, %xmm4, %xmm1
	vpslldq	$12, %xmm4, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm3, %xmm0
	vaesenclast	%xmm23, %xmm0, %xmm25
	vmovups	%zmm4, 736(%rsp)
	vpternlogq	$150, %xmm2, %xmm4, %xmm25
	vpslldq	$4, %xmm3, %xmm0
	vpslldq	$8, %xmm3, %xmm1
	vpslldq	$12, %xmm3, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm19, %xmm25, %xmm0
	vpbroadcastq	.LCPI1_10(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm26
	vmovups	%zmm3, 672(%rsp)
	vpternlogq	$150, %xmm2, %xmm3, %xmm26
	vpslldq	$4, %xmm25, %xmm0
	vpslldq	$8, %xmm25, %xmm1
	vpslldq	$12, %xmm25, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufd	$255, %xmm26, %xmm0
	vaesenclast	%xmm23, %xmm0, %xmm27
	vpternlogq	$150, %xmm2, %xmm25, %xmm27
	vpslldq	$4, %xmm26, %xmm0
	vpslldq	$8, %xmm26, %xmm1
	vpslldq	$12, %xmm26, %xmm2
	vpternlogq	$150, %xmm1, %xmm0, %xmm2
	vpshufb	%xmm19, %xmm27, %xmm0
	vpbroadcastq	.LCPI1_11(%rip), %xmm1
	vaesenclast	%xmm1, %xmm0, %xmm28
	vpternlogq	$150, %xmm2, %xmm26, %xmm28
	vpslldq	$4, %xmm27, %xmm29
	vpclmulqdq	$0, %xmm15, %xmm15, %xmm0
	vpclmulqdq	$17, %xmm15, %xmm15, %xmm1
	vpbroadcastq	.LCPI1_13(%rip), %xmm16
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm2
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm0, %xmm1
	vpclmulqdq	$17, %xmm0, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm18
	vpternlogq	$150, %xmm0, %xmm2, %xmm18
	vpclmulqdq	$0, %xmm18, %xmm18, %xmm0
	vpclmulqdq	$1, %xmm18, %xmm18, %xmm1
	vpxor	%xmm1, %xmm1, %xmm1
	vpclmulqdq	$17, %xmm18, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm20
	vpternlogq	$150, %xmm1, %xmm2, %xmm20
	vpclmulqdq	$0, %xmm20, %xmm18, %xmm0
	vpclmulqdq	$1, %xmm20, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm20, %xmm18, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm20, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm21
	vpternlogq	$150, %xmm1, %xmm2, %xmm21
	vpclmulqdq	$0, %xmm21, %xmm18, %xmm0
	vpclmulqdq	$1, %xmm21, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm21, %xmm18, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm21, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm22
	vpternlogq	$150, %xmm1, %xmm2, %xmm22
	vpclmulqdq	$0, %xmm22, %xmm18, %xmm0
	vpclmulqdq	$1, %xmm22, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm22, %xmm18, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm22, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm24
	vpternlogq	$150, %xmm1, %xmm2, %xmm24
	vpclmulqdq	$0, %xmm24, %xmm18, %xmm0
	vpclmulqdq	$1, %xmm24, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm24, %xmm18, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm24, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm30
	vpternlogq	$150, %xmm1, %xmm2, %xmm30
	vpclmulqdq	$0, %xmm30, %xmm18, %xmm0
	vpclmulqdq	$1, %xmm30, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm30, %xmm18, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm30, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpsrldq	$8, %xmm1, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpshufd	$78, %xmm0, %xmm7
	vpternlogq	$150, %xmm1, %xmm2, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm18, %xmm0
	vpclmulqdq	$1, %xmm7, %xmm18, %xmm1
	vpclmulqdq	$16, %xmm7, %xmm18, %xmm2
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$17, %xmm7, %xmm18, %xmm2
	vpslldq	$8, %xmm1, %xmm3
	vpxor	%xmm3, %xmm0, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpshufd	$78, %xmm0, %xmm0
	vpxor	%xmm0, %xmm3, %xmm0
	vpclmulqdq	$16, %xmm16, %xmm0, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpslldq	$8, %xmm27, %xmm3
	vmovapd	%xmm3, -128(%rsp)
	vpsrldq	$8, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpternlogq	$150, %xmm1, %xmm2, %xmm0
	vpslldq	$12, %xmm27, %xmm1
	vmovapd	%xmm1, 96(%rsp)
	vpshufd	$255, %xmm28, %xmm1
	vmovdqa	%xmm1, 32(%rsp)
	cmpq	$576, %r8
	vmovups	%zmm17, 800(%rsp)
	vmovups	%zmm25, 608(%rsp)
	vmovups	%zmm26, 544(%rsp)
	vmovups	%zmm27, 480(%rsp)
	vmovdqu64	%zmm28, 416(%rsp)
	vmovdqu64	%zmm7, 352(%rsp)
	vmovdqu64	%zmm0, 288(%rsp)
	jb	.LBB1_6
	vmovapd	%xmm29, -112(%rsp)
	vshufi64x2	$0, %zmm18, %zmm18, %zmm1
	vmovdqu64	%zmm20, -32(%rsp)
	vshufi64x2	$0, %zmm20, %zmm20, %zmm2
	vmovdqu64	%zmm21, -96(%rsp)
	vshufi64x2	$0, %zmm21, %zmm21, %zmm3
	vmovdqu64	%zmm22, 224(%rsp)
	vshufi64x2	$0, %zmm22, %zmm22, %zmm4
	vmovdqu64	%zmm24, 160(%rsp)
	vshufi64x2	$0, %zmm24, %zmm24, %zmm5
	vmovdqu64	%zmm30, 928(%rsp)
	vshufi64x2	$0, %zmm30, %zmm30, %zmm6
	vshufi64x2	$0, %zmm7, %zmm7, %zmm7
	vshufi64x2	$0, %zmm0, %zmm0, %zmm31
	vpxor	%xmm0, %xmm0, %xmm0
	vpbroadcastq	.LCPI1_13(%rip), %zmm27
	movq	%r8, %rdi
	.p2align	4
.LBB1_4:
	vmovdqu64	64(%rcx), %zmm29
	vmovdqu64	128(%rcx), %zmm30
	vmovdqu64	192(%rcx), %zmm19
	vmovdqu64	256(%rcx), %zmm26
	vmovdqu64	320(%rcx), %zmm17
	vmovdqu64	384(%rcx), %zmm28
	vmovdqu64	448(%rcx), %zmm20
	vpxord	(%rcx), %zmm0, %zmm0
	addq	$512, %rcx
	addq	$-512, %rdi
	vpunpcklqdq	%zmm20, %zmm1, %zmm21
	vpunpckhqdq	%zmm20, %zmm1, %zmm22
	vpxorq	%zmm21, %zmm22, %zmm21
	vpclmulqdq	$0, %zmm20, %zmm1, %zmm22
	vpclmulqdq	$1, %zmm21, %zmm21, %zmm21
	vpclmulqdq	$17, %zmm20, %zmm1, %zmm20
	vpunpcklqdq	%zmm28, %zmm2, %zmm23
	vpunpckhqdq	%zmm28, %zmm2, %zmm24
	vpxorq	%zmm23, %zmm24, %zmm23
	vpclmulqdq	$0, %zmm28, %zmm2, %zmm24
	vpxorq	%zmm22, %zmm24, %zmm22
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm23
	vpxorq	%zmm21, %zmm23, %zmm21
	vpclmulqdq	$17, %zmm28, %zmm2, %zmm23
	vpxorq	%zmm20, %zmm23, %zmm20
	vpunpcklqdq	%zmm17, %zmm3, %zmm23
	vpunpckhqdq	%zmm17, %zmm3, %zmm24
	vpxorq	%zmm23, %zmm24, %zmm23
	vpclmulqdq	$0, %zmm17, %zmm3, %zmm24
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm23
	vpclmulqdq	$17, %zmm17, %zmm3, %zmm17
	vpunpcklqdq	%zmm26, %zmm4, %zmm28
	vpunpckhqdq	%zmm26, %zmm4, %zmm25
	vpxorq	%zmm28, %zmm25, %zmm25
	vpclmulqdq	$0, %zmm26, %zmm4, %zmm28
	vpternlogq	$150, %zmm24, %zmm22, %zmm28
	vpclmulqdq	$1, %zmm25, %zmm25, %zmm22
	vpternlogq	$150, %zmm23, %zmm21, %zmm22
	vpclmulqdq	$17, %zmm26, %zmm4, %zmm21
	vpternlogq	$150, %zmm17, %zmm20, %zmm21
	vpunpcklqdq	%zmm19, %zmm5, %zmm17
	vpunpckhqdq	%zmm19, %zmm5, %zmm20
	vpxorq	%zmm17, %zmm20, %zmm17
	vpclmulqdq	$0, %zmm19, %zmm5, %zmm20
	vpclmulqdq	$1, %zmm17, %zmm17, %zmm17
	vpclmulqdq	$17, %zmm19, %zmm5, %zmm19
	vpunpcklqdq	%zmm30, %zmm6, %zmm23
	vpunpckhqdq	%zmm30, %zmm6, %zmm24
	vpxorq	%zmm23, %zmm24, %zmm23
	vpclmulqdq	$0, %zmm30, %zmm6, %zmm24
	vpternlogq	$150, %zmm20, %zmm28, %zmm24
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm20
	vpternlogq	$150, %zmm17, %zmm22, %zmm20
	vpclmulqdq	$17, %zmm30, %zmm6, %zmm17
	vpternlogq	$150, %zmm19, %zmm21, %zmm17
	vpunpcklqdq	%zmm29, %zmm7, %zmm19
	vpunpckhqdq	%zmm29, %zmm7, %zmm21
	vpxorq	%zmm19, %zmm21, %zmm19
	vpclmulqdq	$0, %zmm29, %zmm7, %zmm21
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm19
	vpclmulqdq	$17, %zmm29, %zmm7, %zmm22
	vpunpcklqdq	%zmm0, %zmm31, %zmm23
	vpunpckhqdq	%zmm0, %zmm31, %zmm25
	vpxorq	%zmm23, %zmm25, %zmm23
	vpclmulqdq	$0, %zmm0, %zmm31, %zmm25
	vpternlogq	$150, %zmm21, %zmm24, %zmm25
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm21
	vpternlogq	$150, %zmm19, %zmm20, %zmm21
	vpclmulqdq	$17, %zmm0, %zmm31, %zmm0
	vpternlogq	$150, %zmm22, %zmm17, %zmm0
	vpternlogq	$150, %zmm25, %zmm0, %zmm21
	vpslldq	$8, %zmm21, %zmm17
	vxorpd	%zmm25, %zmm17, %zmm17
	vpsrldq	$8, %zmm21, %zmm19
	vpclmulqdq	$16, %zmm27, %zmm17, %zmm20
	vpshufd	$78, %zmm17, %zmm17
	vpxorq	%zmm17, %zmm20, %zmm17
	vpclmulqdq	$16, %zmm27, %zmm17, %zmm20
	vpshufd	$78, %zmm17, %zmm17
	vpxorq	%zmm0, %zmm20, %zmm0
	vpternlogd	$150, %zmm17, %zmm19, %zmm0
	cmpq	$575, %rdi
	ja	.LBB1_4
	vmovupd	800(%rsp), %zmm17
	vmovupd	608(%rsp), %zmm25
	vmovupd	544(%rsp), %zmm26
	vmovupd	480(%rsp), %zmm27
	vmovdqu64	416(%rsp), %zmm28
	vpbroadcastd	.LCPI1_26(%rip), %xmm19
	vmovdqu64	-32(%rsp), %zmm20
	vmovdqu64	-96(%rsp), %zmm21
	vmovdqu64	224(%rsp), %zmm22
	vxorpd	%xmm23, %xmm23, %xmm23
	vmovdqu64	160(%rsp), %zmm24
	vmovdqu64	928(%rsp), %zmm30
	vmovapd	-112(%rsp), %xmm29
	jmp	.LBB1_7
.LBB1_6:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r8, %rdi
	vpxord	%xmm31, %xmm31, %xmm31
	movq	%r8, %rdx
	cmpq	$64, %r8
	jb	.LBB1_15
.LBB1_7:
	vmovdqu64	(%rcx), %zmm4
	leaq	64(%rcx), %r11
	leaq	-64(%rdi), %rdx
	cmpq	$64, %rdx
	jb	.LBB1_10
	vshufi64x2	$0, %zmm18, %zmm18, %zmm1
	testb	$64, %dil
	jne	.LBB1_11
	vmovdqu64	64(%rcx), %zmm2
	vpxord	%zmm0, %zmm4, %zmm0
	vpunpcklqdq	%zmm0, %zmm1, %zmm3
	vpunpckhqdq	%zmm0, %zmm1, %zmm4
	vpxorq	%zmm3, %zmm4, %zmm3
	vpclmulqdq	$0, %zmm0, %zmm1, %zmm4
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpclmulqdq	$17, %zmm0, %zmm1, %zmm0
	vpternlogq	$150, %zmm4, %zmm0, %zmm3
	vpslldq	$8, %zmm3, %zmm5
	vxorpd	%zmm4, %zmm5, %zmm4
	vpsrldq	$8, %zmm3, %zmm3
	vpbroadcastq	.LCPI1_13(%rip), %zmm5
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm6
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm6, %zmm4
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm0, %zmm5, %zmm0
	vpternlogd	$150, %zmm3, %zmm4, %zmm0
	subq	$-128, %rcx
	leaq	-128(%rdi), %rdx
	movq	%rcx, %r11
	vmovdqa64	%zmm2, %zmm4
	andl	$960, %edi
	cmpl	$128, %edi
	jne	.LBB1_12
	jmp	.LBB1_14
.LBB1_10:
	vmovdqa64	%zmm4, %zmm2
	movq	%r11, %rcx
	jmp	.LBB1_14
.LBB1_11:
	andl	$960, %edi
	cmpl	$128, %edi
	je	.LBB1_14
.LBB1_12:
	vpbroadcastq	.LCPI1_13(%rip), %zmm3
	movq	%r11, %rcx
	vmovdqa64	%zmm4, %zmm2
	.p2align	4
.LBB1_13:
	vpxord	%zmm0, %zmm2, %zmm0
	vpunpcklqdq	%zmm0, %zmm1, %zmm2
	vpunpckhqdq	%zmm0, %zmm1, %zmm4
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$0, %zmm0, %zmm1, %zmm4
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpclmulqdq	$17, %zmm0, %zmm1, %zmm0
	vpternlogq	$150, %zmm4, %zmm0, %zmm2
	vpslldq	$8, %zmm2, %zmm5
	vxorpd	%zmm4, %zmm5, %zmm4
	vpsrldq	$8, %zmm2, %zmm2
	vpclmulqdq	$16, %zmm3, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm5, %zmm4
	vpclmulqdq	$16, %zmm3, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpternlogd	$150, %zmm0, %zmm2, %zmm5
	vmovdqu64	64(%rcx), %zmm2
	vpternlogd	$150, (%rcx), %zmm4, %zmm5
	vpunpcklqdq	%zmm5, %zmm1, %zmm0
	vpunpckhqdq	%zmm5, %zmm1, %zmm4
	vpxorq	%zmm0, %zmm4, %zmm0
	vpclmulqdq	$0, %zmm5, %zmm1, %zmm4
	vpclmulqdq	$1, %zmm0, %zmm0, %zmm0
	vpclmulqdq	$17, %zmm5, %zmm1, %zmm5
	vpternlogq	$150, %zmm4, %zmm5, %zmm0
	vpslldq	$8, %zmm0, %zmm6
	vxorpd	%zmm4, %zmm6, %zmm4
	vpsrldq	$8, %zmm0, %zmm6
	vpclmulqdq	$16, %zmm3, %zmm4, %zmm0
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm0, %zmm0
	vpclmulqdq	$16, %zmm3, %zmm0, %zmm4
	vpshufd	$78, %zmm0, %zmm7
	vpxorq	%zmm5, %zmm4, %zmm0
	vpternlogd	$150, %zmm6, %zmm7, %zmm0
	subq	$-128, %rcx
	addq	$-128, %rdx
	cmpq	$63, %rdx
	ja	.LBB1_13
.LBB1_14:
	vpxord	%zmm2, %zmm0, %zmm0
	vextracti128	$1, %ymm0, %xmm1
	vextracti32x4	$2, %zmm0, %xmm2
	vextracti32x4	$3, %zmm0, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpternlogq	$150, %xmm1, %xmm0, %xmm6
	vpshufd	$78, %xmm4, %xmm0
	vpternlogq	$150, %xmm5, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm4, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm31
	vpternlogq	$150, %xmm2, %xmm0, %xmm31
.LBB1_15:
	vmovdqa	96(%rsp), %xmm4
	vpternlogq	$150, -128(%rsp), %xmm29, %xmm4
	vmovdqa	32(%rsp), %xmm0
	vaesenclast	%xmm23, %xmm0, %xmm29
	cmpq	$16, %rdx
	jb	.LBB1_24
	leaq	-16(%rdx), %rdi
	testb	$16, %dil
	jne	.LBB1_17
	vpxorq	(%rcx), %xmm31, %xmm0
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm31
	vpternlogq	$150, %xmm2, %xmm0, %xmm31
	movq	%rdi, %rdx
	cmpq	$16, %rdi
	jb	.LBB1_18
	jmp	.LBB1_31
.LBB1_17:
	cmpq	$16, %rdi
	jae	.LBB1_31
.LBB1_18:
	vpternlogq	$150, %xmm4, %xmm27, %xmm29
	testq	%rdi, %rdi
	je	.LBB1_20
.LBB1_19:
	movl	$-1, %edx
	bzhil	%edi, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm0 {%k1} {z}
	vpxorq	%xmm0, %xmm31, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm31
	vpternlogq	$150, %xmm2, %xmm0, %xmm31
.LBB1_20:
	vpslldq	$4, %xmm28, %xmm0
	vmovapd	%xmm0, -128(%rsp)
	vpslldq	$8, %xmm28, %xmm0
	vmovapd	%xmm0, 32(%rsp)
	vpslldq	$12, %xmm28, %xmm23
	vpshufb	%xmm19, %xmm29, %xmm19
	vmovq	%r10, %xmm0
	vmovdqa	%xmm0, -32(%rsp)
	vmovq	%r8, %xmm0
	vmovdqa	%xmm0, -96(%rsp)
	vmovdqa64	%xmm31, %xmm0
	movb	$63, %cl
	kmovd	%ecx, %k1
	vpexpandq	%zmm0, %zmm0 {%k1} {z}
	cmpq	$576, %r10
	vmovdqu64	%zmm29, 96(%rsp)
	jb	.LBB1_25
	vmovdqa64	%xmm19, 160(%rsp)
	vmovapd	%xmm23, 224(%rsp)
	vmovapd	%zmm8, %zmm17
	vshufi64x2	$0, %zmm18, %zmm18, %zmm1
	vshufi64x2	$0, %zmm20, %zmm20, %zmm2
	vshufi64x2	$0, %zmm21, %zmm21, %zmm3
	vshufi64x2	$0, %zmm22, %zmm22, %zmm4
	vshufi64x2	$0, %zmm24, %zmm24, %zmm5
	vshufi64x2	$0, %zmm30, %zmm30, %zmm6
	vmovdqu64	352(%rsp), %zmm7
	vshufi64x2	$0, %zmm7, %zmm7, %zmm7
	vmovdqu64	288(%rsp), %zmm8
	vshufi64x2	$0, %zmm8, %zmm8, %zmm20
	vpbroadcastq	.LCPI1_13(%rip), %zmm21
	movq	%r9, %rcx
	movq	%r10, %rdi
	.p2align	4
.LBB1_22:
	vmovdqu64	64(%rcx), %zmm22
	vmovdqu64	128(%rcx), %zmm23
	vmovdqu64	192(%rcx), %zmm24
	vmovdqu64	256(%rcx), %zmm25
	vmovdqu64	320(%rcx), %zmm26
	vmovdqu64	384(%rcx), %zmm31
	vmovdqu64	448(%rcx), %zmm29
	vpxord	(%rcx), %zmm0, %zmm0
	addq	$512, %rcx
	addq	$-512, %rdi
	vpunpcklqdq	%zmm29, %zmm1, %zmm19
	vpunpckhqdq	%zmm29, %zmm1, %zmm28
	vpxorq	%zmm19, %zmm28, %zmm19
	vpclmulqdq	$0, %zmm29, %zmm1, %zmm28
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm19
	vpclmulqdq	$17, %zmm29, %zmm1, %zmm29
	vpunpcklqdq	%zmm31, %zmm2, %zmm30
	vpunpckhqdq	%zmm31, %zmm2, %zmm27
	vpxorq	%zmm30, %zmm27, %zmm27
	vpclmulqdq	$0, %zmm31, %zmm2, %zmm30
	vpxorq	%zmm28, %zmm30, %zmm28
	vpclmulqdq	$1, %zmm27, %zmm27, %zmm27
	vpxorq	%zmm19, %zmm27, %zmm19
	vpclmulqdq	$17, %zmm31, %zmm2, %zmm27
	vpxorq	%zmm29, %zmm27, %zmm27
	vpunpcklqdq	%zmm26, %zmm3, %zmm29
	vpunpckhqdq	%zmm26, %zmm3, %zmm30
	vpxorq	%zmm29, %zmm30, %zmm29
	vpclmulqdq	$0, %zmm26, %zmm3, %zmm30
	vpclmulqdq	$1, %zmm29, %zmm29, %zmm29
	vpclmulqdq	$17, %zmm26, %zmm3, %zmm26
	vpunpcklqdq	%zmm25, %zmm4, %zmm31
	vpunpckhqdq	%zmm25, %zmm4, %zmm8
	vpxorq	%zmm31, %zmm8, %zmm8
	vpclmulqdq	$0, %zmm25, %zmm4, %zmm31
	vpternlogq	$150, %zmm30, %zmm28, %zmm31
	vpclmulqdq	$1, %zmm8, %zmm8, %zmm8
	vpternlogq	$150, %zmm29, %zmm19, %zmm8
	vpclmulqdq	$17, %zmm25, %zmm4, %zmm19
	vpternlogq	$150, %zmm26, %zmm27, %zmm19
	vpunpcklqdq	%zmm24, %zmm5, %zmm25
	vpunpckhqdq	%zmm24, %zmm5, %zmm26
	vpxorq	%zmm25, %zmm26, %zmm25
	vpclmulqdq	$0, %zmm24, %zmm5, %zmm26
	vpclmulqdq	$1, %zmm25, %zmm25, %zmm25
	vpclmulqdq	$17, %zmm24, %zmm5, %zmm24
	vpunpcklqdq	%zmm23, %zmm6, %zmm27
	vpunpckhqdq	%zmm23, %zmm6, %zmm28
	vpxorq	%zmm27, %zmm28, %zmm27
	vpclmulqdq	$0, %zmm23, %zmm6, %zmm28
	vpternlogq	$150, %zmm26, %zmm31, %zmm28
	vpclmulqdq	$1, %zmm27, %zmm27, %zmm26
	vpternlogq	$150, %zmm25, %zmm8, %zmm26
	vpclmulqdq	$17, %zmm23, %zmm6, %zmm8
	vpternlogq	$150, %zmm24, %zmm19, %zmm8
	vpunpcklqdq	%zmm22, %zmm7, %zmm19
	vpunpckhqdq	%zmm22, %zmm7, %zmm23
	vpxorq	%zmm19, %zmm23, %zmm19
	vpclmulqdq	$0, %zmm22, %zmm7, %zmm23
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm19
	vpclmulqdq	$17, %zmm22, %zmm7, %zmm22
	vpunpcklqdq	%zmm0, %zmm20, %zmm24
	vpunpckhqdq	%zmm0, %zmm20, %zmm25
	vpxorq	%zmm24, %zmm25, %zmm24
	vpclmulqdq	$0, %zmm0, %zmm20, %zmm25
	vpternlogq	$150, %zmm23, %zmm28, %zmm25
	vpclmulqdq	$1, %zmm24, %zmm24, %zmm23
	vpternlogq	$150, %zmm19, %zmm26, %zmm23
	vpclmulqdq	$17, %zmm0, %zmm20, %zmm0
	vpternlogq	$150, %zmm22, %zmm8, %zmm0
	vpternlogq	$150, %zmm25, %zmm0, %zmm23
	vpslldq	$8, %zmm23, %zmm8
	vxorpd	%zmm25, %zmm8, %zmm8
	vpsrldq	$8, %zmm23, %zmm19
	vpclmulqdq	$16, %zmm21, %zmm8, %zmm22
	vpshufd	$78, %zmm8, %zmm8
	vpxorq	%zmm8, %zmm22, %zmm8
	vpclmulqdq	$16, %zmm21, %zmm8, %zmm22
	vpshufd	$78, %zmm8, %zmm8
	vpxorq	%zmm0, %zmm22, %zmm0
	vpternlogd	$150, %zmm8, %zmm19, %zmm0
	cmpq	$575, %rdi
	ja	.LBB1_22
	vmovapd	%zmm17, %zmm8
	vmovupd	800(%rsp), %zmm17
	vmovupd	608(%rsp), %zmm25
	vmovupd	544(%rsp), %zmm26
	vmovupd	480(%rsp), %zmm27
	vmovupd	416(%rsp), %zmm28
	vmovdqu64	96(%rsp), %zmm29
	vmovapd	224(%rsp), %xmm23
	vmovdqa64	160(%rsp), %xmm19
	jmp	.LBB1_26
	.p2align	4
.LBB1_31:
	vpxorq	(%rcx), %xmm31, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpternlogq	$150, %xmm0, %xmm2, %xmm3
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, 16(%rcx), %xmm3, %xmm0
	addq	$-32, %rdx
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm31
	vpternlogq	$150, %xmm2, %xmm0, %xmm31
	cmpq	$15, %rdx
	ja	.LBB1_31
.LBB1_24:
	movq	%rdx, %rdi
	vpternlogq	$150, %xmm4, %xmm27, %xmm29
	testq	%rdi, %rdi
	jne	.LBB1_19
	jmp	.LBB1_20
.LBB1_25:
	movq	%r9, %rcx
	movq	%r10, %rdi
	movq	%r10, %rdx
	cmpq	$64, %r10
	jb	.LBB1_37
.LBB1_26:
	vmovdqu64	(%rcx), %zmm4
	leaq	64(%rcx), %r8
	leaq	-64(%rdi), %rdx
	cmpq	$64, %rdx
	jb	.LBB1_29
	vshufi64x2	$0, %zmm18, %zmm18, %zmm1
	testb	$64, %dil
	jne	.LBB1_33
	vmovdqu64	64(%rcx), %zmm2
	vpxord	%zmm0, %zmm4, %zmm0
	vpunpcklqdq	%zmm0, %zmm1, %zmm3
	vpunpckhqdq	%zmm0, %zmm1, %zmm4
	vpxorq	%zmm3, %zmm4, %zmm3
	vpclmulqdq	$0, %zmm0, %zmm1, %zmm4
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpclmulqdq	$17, %zmm0, %zmm1, %zmm0
	vpternlogq	$150, %zmm4, %zmm0, %zmm3
	vpslldq	$8, %zmm3, %zmm5
	vxorpd	%zmm4, %zmm5, %zmm4
	vpsrldq	$8, %zmm3, %zmm3
	vpbroadcastq	.LCPI1_13(%rip), %zmm5
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm6
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm6, %zmm4
	vpclmulqdq	$16, %zmm5, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm0, %zmm5, %zmm0
	vpternlogd	$150, %zmm3, %zmm4, %zmm0
	subq	$-128, %rcx
	leaq	-128(%rdi), %rdx
	movq	%rcx, %r8
	vmovdqa64	%zmm2, %zmm4
	andl	$960, %edi
	cmpl	$128, %edi
	jne	.LBB1_34
	jmp	.LBB1_36
.LBB1_29:
	vmovdqa64	%zmm4, %zmm2
	movq	%r8, %rcx
	jmp	.LBB1_36
.LBB1_33:
	andl	$960, %edi
	cmpl	$128, %edi
	je	.LBB1_36
.LBB1_34:
	vpbroadcastq	.LCPI1_13(%rip), %zmm3
	movq	%r8, %rcx
	vmovdqa64	%zmm4, %zmm2
	.p2align	4
.LBB1_35:
	vpxord	%zmm0, %zmm2, %zmm0
	vpunpcklqdq	%zmm0, %zmm1, %zmm2
	vpunpckhqdq	%zmm0, %zmm1, %zmm4
	vpxorq	%zmm2, %zmm4, %zmm2
	vpclmulqdq	$0, %zmm0, %zmm1, %zmm4
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpclmulqdq	$17, %zmm0, %zmm1, %zmm0
	vpternlogq	$150, %zmm4, %zmm0, %zmm2
	vpslldq	$8, %zmm2, %zmm5
	vxorpd	%zmm4, %zmm5, %zmm4
	vpsrldq	$8, %zmm2, %zmm2
	vpclmulqdq	$16, %zmm3, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm5, %zmm4
	vpclmulqdq	$16, %zmm3, %zmm4, %zmm5
	vpshufd	$78, %zmm4, %zmm4
	vpternlogd	$150, %zmm0, %zmm2, %zmm5
	vmovdqu64	64(%rcx), %zmm2
	vpternlogd	$150, (%rcx), %zmm4, %zmm5
	vpunpcklqdq	%zmm5, %zmm1, %zmm0
	vpunpckhqdq	%zmm5, %zmm1, %zmm4
	vpxorq	%zmm0, %zmm4, %zmm0
	vpclmulqdq	$0, %zmm5, %zmm1, %zmm4
	vpclmulqdq	$1, %zmm0, %zmm0, %zmm0
	vpclmulqdq	$17, %zmm5, %zmm1, %zmm5
	vpternlogq	$150, %zmm4, %zmm5, %zmm0
	vpslldq	$8, %zmm0, %zmm6
	vxorpd	%zmm4, %zmm6, %zmm4
	vpsrldq	$8, %zmm0, %zmm6
	vpclmulqdq	$16, %zmm3, %zmm4, %zmm0
	vpshufd	$78, %zmm4, %zmm4
	vpxorq	%zmm4, %zmm0, %zmm0
	vpclmulqdq	$16, %zmm3, %zmm0, %zmm4
	vpshufd	$78, %zmm0, %zmm7
	vpxorq	%zmm5, %zmm4, %zmm0
	vpternlogd	$150, %zmm6, %zmm7, %zmm0
	subq	$-128, %rcx
	addq	$-128, %rdx
	cmpq	$63, %rdx
	ja	.LBB1_35
.LBB1_36:
	vpxord	%zmm2, %zmm0, %zmm0
	vextracti128	$1, %ymm0, %xmm1
	vextracti32x4	$2, %zmm0, %xmm2
	vextracti32x4	$3, %zmm0, %xmm3
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpternlogq	$150, %xmm1, %xmm0, %xmm6
	vpshufd	$78, %xmm4, %xmm0
	vpternlogq	$150, %xmm5, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm5
	vpternlogq	$150, %xmm2, %xmm0, %xmm5
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm4, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm4
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm4, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm4
	vpternlogq	$150, %xmm3, %xmm0, %xmm4
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm4, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm15, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm15, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm15, %xmm3
	vpxor	%xmm2, %xmm3, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm15, %xmm0
	vpslldq	$8, %xmm2, %xmm3
	vpxor	%xmm3, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm3, %xmm1
	vpclmulqdq	$16, %xmm16, %xmm1, %xmm3
	vpxor	%xmm0, %xmm3, %xmm0
	vpshufd	$78, %xmm1, %xmm31
	vpternlogq	$150, %xmm2, %xmm0, %xmm31
.LBB1_37:
	vmovd	8(%rsi), %xmm0
	vmovq	(%rsi), %xmm1
	vmovdqa	32(%rsp), %xmm2
	vpternlogq	$150, -128(%rsp), %xmm2, %xmm23
	vpbroadcastq	.LCPI1_12(%rip), %xmm2
	vaesenclast	%xmm2, %xmm19, %xmm30
	vmovdqa	-96(%rsp), %xmm2
	vpunpcklqdq	-32(%rsp), %xmm2, %xmm2
	cmpq	$16, %rdx
	jb	.LBB1_43
	leaq	-16(%rdx), %rsi
	testb	$16, %sil
	vmovdqu64	736(%rsp), %zmm7
	vmovdqu64	672(%rsp), %zmm18
	jne	.LBB1_40
	vpxorq	(%rcx), %xmm31, %xmm3
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm31
	vpternlogq	$150, %xmm5, %xmm3, %xmm31
	movq	%rsi, %rdx
.LBB1_40:
	cmpq	$16, %rsi
	jb	.LBB1_44
	.p2align	4
.LBB1_41:
	vpxorq	(%rcx), %xmm31, %xmm3
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpternlogq	$150, %xmm3, %xmm5, %xmm6
	vpshufd	$78, %xmm4, %xmm3
	vpternlogq	$150, 16(%rcx), %xmm6, %xmm3
	addq	$-32, %rdx
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm3, %xmm15, %xmm4
	vpclmulqdq	$1, %xmm3, %xmm15, %xmm5
	vpclmulqdq	$16, %xmm3, %xmm15, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm3, %xmm15, %xmm3
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm4, %xmm6
	vpxor	%xmm3, %xmm6, %xmm3
	vpshufd	$78, %xmm4, %xmm31
	vpternlogq	$150, %xmm5, %xmm3, %xmm31
	cmpq	$15, %rdx
	ja	.LBB1_41
	movq	%rdx, %rsi
	jmp	.LBB1_44
.LBB1_43:
	movq	%rdx, %rsi
	vmovdqu64	736(%rsp), %zmm7
	vmovdqu64	672(%rsp), %zmm18
.LBB1_44:
	movq	1032(%rsp), %rdx
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vpternlogq	$150, %xmm23, %xmm28, %xmm30
	vpsllq	$3, %xmm2, %xmm1
	testq	%rsi, %rsi
	je	.LBB1_46
	movl	$-1, %edi
	bzhil	%esi, %edi, %esi
	kmovd	%esi, %k1
	vmovdqu8	(%rcx), %xmm2 {%k1} {z}
	vpxorq	%xmm2, %xmm31, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm15, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm15, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm15, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm15, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm3, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpshufd	$78, %xmm3, %xmm31
	vpternlogq	$150, %xmm4, %xmm2, %xmm31
.LBB1_46:
	vpxorq	%xmm1, %xmm31, %xmm1
	movq	1016(%rsp), %rcx
	vpclmulqdq	$0, %xmm1, %xmm15, %xmm2
	vpclmulqdq	$1, %xmm1, %xmm15, %xmm3
	vpclmulqdq	$16, %xmm1, %xmm15, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm1, %xmm15, %xmm1
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm16, %xmm2, %xmm4
	vpternlogq	$150, %xmm0, %xmm1, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$108, .LCPI1_14(%rip), %xmm10, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vmovdqu64	864(%rsp), %zmm4
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm17, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm18, %xmm0, %xmm0
	vaesenc	%xmm25, %xmm0, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm28, %xmm0, %xmm0
	vaesenc	%xmm29, %xmm0, %xmm0
	vaesenclast	%xmm30, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rdx)
	vpor	.LCPI1_15(%rip), %xmm0, %xmm15
	cmpq	$512, %r10
	jb	.LBB1_50
	vmovups	%zmm10, 32(%rsp)
	vshufi64x2	$0, %zmm10, %zmm10, %zmm16
	vinserti128	$1, %xmm9, %ymm0, %ymm0
	vmovaps	%xmm9, -128(%rsp)
	vinserti32x4	$0, %xmm9, %zmm0, %zmm0
	vbroadcasti32x4	.LCPI1_16(%rip), %zmm1
	vpermi2q	%zmm14, %zmm13, %zmm1
	vshufi64x2	$228, %zmm1, %zmm0, %zmm13
	movb	$-64, %dl
	kmovd	%edx, %k1
	vmovdqa64	%zmm1, %zmm13 {%k1}
	vmovups	%zmm11, -32(%rsp)
	vshufi64x2	$0, %zmm11, %zmm11, %zmm14
	vmovups	%zmm12, -96(%rsp)
	vshufi64x2	$0, %zmm12, %zmm12, %zmm19
	vmovups	%zmm8, 352(%rsp)
	vshufi64x2	$0, %zmm8, %zmm8, %zmm20
	vshufi64x2	$0, %zmm4, %zmm4, %zmm21
	vshufi64x2	$0, %zmm17, %zmm17, %zmm22
	vshufi64x2	$0, %zmm7, %zmm7, %zmm23
	vshufi64x2	$0, %zmm18, %zmm18, %zmm24
	vshufi64x2	$0, %zmm25, %zmm25, %zmm25
	vshufi64x2	$0, %zmm26, %zmm26, %zmm26
	vshufi64x2	$0, %zmm27, %zmm27, %zmm27
	vshufi64x2	$0, %zmm28, %zmm28, %zmm28
	vshufi64x2	$0, %zmm29, %zmm29, %zmm29
	vmovdqu64	%zmm30, 288(%rsp)
	vshufi64x2	$0, %zmm30, %zmm30, %zmm30
	vpmovsxbq	.LCPI1_27(%rip), %zmm1
	vpmovsxbq	.LCPI1_28(%rip), %zmm0
	vpmovsxbq	.LCPI1_29(%rip), %zmm2
	vpmovsxbq	.LCPI1_30(%rip), %zmm3
	vpmovsxbq	.LCPI1_31(%rip), %zmm4
	vpmovsxbq	.LCPI1_32(%rip), %zmm5
	vpmovsxbq	.LCPI1_33(%rip), %zmm6
	vpmovsxbq	.LCPI1_34(%rip), %xmm7
	.p2align	4
.LBB1_48:
	vshufi64x2	$0, %zmm15, %zmm15, %zmm8
	vpaddd	.LCPI1_17(%rip), %zmm8, %zmm9
	vpaddd	%zmm1, %zmm8, %zmm10
	vpaddd	%zmm0, %zmm8, %zmm11
	vpaddd	%zmm2, %zmm8, %zmm12
	vpaddd	%zmm3, %zmm8, %zmm17
	vpaddd	%zmm4, %zmm8, %zmm18
	vpaddd	%zmm5, %zmm8, %zmm31
	vpaddd	%zmm6, %zmm8, %zmm8
	vpxord	%zmm16, %zmm9, %zmm9
	vpxord	%zmm16, %zmm10, %zmm10
	vpxord	%zmm16, %zmm11, %zmm11
	vpxord	%zmm16, %zmm12, %zmm12
	vpxord	%zmm16, %zmm17, %zmm17
	vpxord	%zmm16, %zmm18, %zmm18
	vpxord	%zmm16, %zmm31, %zmm31
	vpxord	%zmm16, %zmm8, %zmm8
	vaesenc	%zmm13, %zmm9, %zmm9
	vaesenc	%zmm13, %zmm10, %zmm10
	vaesenc	%zmm13, %zmm11, %zmm11
	vaesenc	%zmm13, %zmm12, %zmm12
	vaesenc	%zmm13, %zmm17, %zmm17
	vaesenc	%zmm13, %zmm18, %zmm18
	vaesenc	%zmm13, %zmm31, %zmm31
	vaesenc	%zmm13, %zmm8, %zmm8
	vaesenc	%zmm14, %zmm9, %zmm9
	vaesenc	%zmm14, %zmm10, %zmm10
	vaesenc	%zmm14, %zmm11, %zmm11
	vaesenc	%zmm14, %zmm12, %zmm12
	vaesenc	%zmm14, %zmm17, %zmm17
	vaesenc	%zmm14, %zmm18, %zmm18
	vaesenc	%zmm14, %zmm31, %zmm31
	vaesenc	%zmm14, %zmm8, %zmm8
	vaesenc	%zmm19, %zmm9, %zmm9
	vaesenc	%zmm19, %zmm10, %zmm10
	vaesenc	%zmm19, %zmm11, %zmm11
	vaesenc	%zmm19, %zmm12, %zmm12
	vaesenc	%zmm19, %zmm17, %zmm17
	vaesenc	%zmm19, %zmm18, %zmm18
	vaesenc	%zmm19, %zmm31, %zmm31
	vaesenc	%zmm19, %zmm8, %zmm8
	vaesenc	%zmm20, %zmm9, %zmm9
	vaesenc	%zmm20, %zmm10, %zmm10
	vaesenc	%zmm20, %zmm11, %zmm11
	vaesenc	%zmm20, %zmm12, %zmm12
	vaesenc	%zmm20, %zmm17, %zmm17
	vaesenc	%zmm20, %zmm18, %zmm18
	vaesenc	%zmm20, %zmm31, %zmm31
	vaesenc	%zmm20, %zmm8, %zmm8
	vaesenc	%zmm21, %zmm9, %zmm9
	vaesenc	%zmm21, %zmm10, %zmm10
	vaesenc	%zmm21, %zmm11, %zmm11
	vaesenc	%zmm21, %zmm12, %zmm12
	vaesenc	%zmm21, %zmm17, %zmm17
	vaesenc	%zmm21, %zmm18, %zmm18
	vaesenc	%zmm21, %zmm31, %zmm31
	vaesenc	%zmm21, %zmm8, %zmm8
	vaesenc	%zmm22, %zmm9, %zmm9
	vaesenc	%zmm22, %zmm10, %zmm10
	vaesenc	%zmm22, %zmm11, %zmm11
	vaesenc	%zmm22, %zmm12, %zmm12
	vaesenc	%zmm22, %zmm17, %zmm17
	vaesenc	%zmm22, %zmm18, %zmm18
	vaesenc	%zmm22, %zmm31, %zmm31
	vaesenc	%zmm22, %zmm8, %zmm8
	vaesenc	%zmm23, %zmm9, %zmm9
	vaesenc	%zmm23, %zmm10, %zmm10
	vaesenc	%zmm23, %zmm11, %zmm11
	vaesenc	%zmm23, %zmm12, %zmm12
	vaesenc	%zmm23, %zmm17, %zmm17
	vaesenc	%zmm23, %zmm18, %zmm18
	vaesenc	%zmm23, %zmm31, %zmm31
	vaesenc	%zmm23, %zmm8, %zmm8
	vaesenc	%zmm24, %zmm9, %zmm9
	vaesenc	%zmm24, %zmm10, %zmm10
	vaesenc	%zmm24, %zmm11, %zmm11
	vaesenc	%zmm24, %zmm12, %zmm12
	vaesenc	%zmm24, %zmm17, %zmm17
	vaesenc	%zmm24, %zmm18, %zmm18
	vaesenc	%zmm24, %zmm31, %zmm31
	vaesenc	%zmm24, %zmm8, %zmm8
	vaesenc	%zmm25, %zmm9, %zmm9
	vaesenc	%zmm25, %zmm10, %zmm10
	vaesenc	%zmm25, %zmm11, %zmm11
	vaesenc	%zmm25, %zmm12, %zmm12
	vaesenc	%zmm25, %zmm17, %zmm17
	vaesenc	%zmm25, %zmm18, %zmm18
	vaesenc	%zmm25, %zmm31, %zmm31
	vaesenc	%zmm25, %zmm8, %zmm8
	vaesenc	%zmm26, %zmm9, %zmm9
	vaesenc	%zmm26, %zmm10, %zmm10
	vaesenc	%zmm26, %zmm11, %zmm11
	vaesenc	%zmm26, %zmm12, %zmm12
	vaesenc	%zmm26, %zmm17, %zmm17
	vaesenc	%zmm26, %zmm18, %zmm18
	vaesenc	%zmm26, %zmm31, %zmm31
	vaesenc	%zmm26, %zmm8, %zmm8
	vaesenc	%zmm27, %zmm9, %zmm9
	vaesenc	%zmm27, %zmm10, %zmm10
	vaesenc	%zmm27, %zmm11, %zmm11
	vaesenc	%zmm27, %zmm12, %zmm12
	vaesenc	%zmm27, %zmm17, %zmm17
	vaesenc	%zmm27, %zmm18, %zmm18
	vaesenc	%zmm27, %zmm31, %zmm31
	vaesenc	%zmm27, %zmm8, %zmm8
	vaesenc	%zmm28, %zmm9, %zmm9
	vaesenc	%zmm28, %zmm10, %zmm10
	vaesenc	%zmm28, %zmm11, %zmm11
	vaesenc	%zmm28, %zmm12, %zmm12
	vaesenc	%zmm28, %zmm17, %zmm17
	vaesenc	%zmm28, %zmm18, %zmm18
	vaesenc	%zmm28, %zmm31, %zmm31
	vaesenc	%zmm28, %zmm8, %zmm8
	vaesenc	%zmm29, %zmm9, %zmm9
	vaesenc	%zmm29, %zmm10, %zmm10
	vaesenc	%zmm29, %zmm11, %zmm11
	vaesenc	%zmm29, %zmm12, %zmm12
	vaesenc	%zmm29, %zmm17, %zmm17
	vaesenc	%zmm29, %zmm18, %zmm18
	vaesenc	%zmm29, %zmm31, %zmm31
	vaesenc	%zmm29, %zmm8, %zmm8
	vaesenclast	%zmm30, %zmm9, %zmm9
	vaesenclast	%zmm30, %zmm10, %zmm10
	vaesenclast	%zmm30, %zmm11, %zmm11
	vaesenclast	%zmm30, %zmm12, %zmm12
	vaesenclast	%zmm30, %zmm17, %zmm17
	vaesenclast	%zmm30, %zmm18, %zmm18
	vaesenclast	%zmm30, %zmm31, %zmm31
	vaesenclast	%zmm30, %zmm8, %zmm8
	vpxorq	(%r9), %zmm9, %zmm9
	vpxorq	64(%r9), %zmm10, %zmm10
	vpxorq	128(%r9), %zmm11, %zmm11
	vpxorq	192(%r9), %zmm12, %zmm12
	vpxorq	256(%r9), %zmm17, %zmm17
	vpxorq	320(%r9), %zmm18, %zmm18
	vpxorq	384(%r9), %zmm31, %zmm31
	vpxorq	448(%r9), %zmm8, %zmm8
	vmovdqu64	%zmm9, (%rcx)
	vmovdqu64	%zmm10, 64(%rcx)
	vmovdqu64	%zmm11, 128(%rcx)
	vmovdqu64	%zmm12, 192(%rcx)
	vmovdqu64	%zmm17, 256(%rcx)
	vmovdqu64	%zmm18, 320(%rcx)
	vmovdqu64	%zmm31, 384(%rcx)
	vmovdqu64	%zmm8, 448(%rcx)
	addq	$512, %r9
	addq	$512, %rcx
	addq	$-512, %r10
	vpaddd	%xmm7, %xmm15, %xmm15
	cmpq	$511, %r10
	ja	.LBB1_48
	vmovapd	-128(%rsp), %xmm9
	vmovupd	32(%rsp), %zmm10
	vmovupd	-32(%rsp), %zmm11
	vmovupd	-96(%rsp), %zmm12
	vmovupd	352(%rsp), %zmm8
	vmovdqu64	864(%rsp), %zmm4
	vmovupd	800(%rsp), %zmm17
	vmovdqu64	736(%rsp), %zmm7
	vmovdqu64	672(%rsp), %zmm18
	vmovupd	608(%rsp), %zmm25
	vmovupd	544(%rsp), %zmm26
	vmovupd	480(%rsp), %zmm27
	vmovupd	416(%rsp), %zmm28
	vmovdqu64	96(%rsp), %zmm29
	vmovdqu64	288(%rsp), %zmm30
.LBB1_50:
	cmpq	$16, %r10
	jb	.LBB1_56
	leaq	-16(%r10), %rsi
	testb	$16, %sil
	jne	.LBB1_53
	leaq	16(%r9), %rdi
	leaq	16(%rcx), %rdx
	vpaddd	.LCPI1_0(%rip), %xmm15, %xmm0
	vpxor	%xmm10, %xmm15, %xmm1
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm11, %xmm1, %xmm1
	vaesenc	%xmm12, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm4, %xmm1, %xmm1
	vaesenc	%xmm17, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm18, %xmm1, %xmm1
	vaesenc	%xmm25, %xmm1, %xmm1
	vaesenc	%xmm26, %xmm1, %xmm1
	vaesenc	%xmm27, %xmm1, %xmm1
	vaesenc	%xmm28, %xmm1, %xmm1
	vaesenc	%xmm29, %xmm1, %xmm1
	vaesenclast	%xmm30, %xmm1, %xmm1
	vpxor	(%r9), %xmm1, %xmm1
	vmovdqu	%xmm1, (%rcx)
	movq	%rdx, %rcx
	vmovdqa	%xmm0, %xmm15
	movq	%rsi, %r10
	movq	%rdi, %r9
	cmpq	$16, %rsi
	jae	.LBB1_54
	jmp	.LBB1_57
.LBB1_53:
	cmpq	$16, %rsi
	jb	.LBB1_57
.LBB1_54:
	vpmovsxbq	.LCPI1_35(%rip), %xmm0
	vpmovsxbq	.LCPI1_36(%rip), %xmm1
	.p2align	4
.LBB1_55:
	vpaddd	%xmm0, %xmm15, %xmm2
	vpxor	%xmm10, %xmm15, %xmm3
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm17, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm18, %xmm3, %xmm3
	vaesenc	%xmm25, %xmm3, %xmm3
	vaesenc	%xmm26, %xmm3, %xmm3
	vaesenc	%xmm27, %xmm3, %xmm3
	vaesenc	%xmm28, %xmm3, %xmm3
	vaesenc	%xmm29, %xmm3, %xmm3
	vaesenclast	%xmm30, %xmm3, %xmm3
	vpxor	(%r9), %xmm3, %xmm3
	vmovdqu	%xmm3, (%rcx)
	vpxor	%xmm2, %xmm10, %xmm2
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm11, %xmm2, %xmm2
	vaesenc	%xmm12, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm4, %xmm2, %xmm2
	vaesenc	%xmm17, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm18, %xmm2, %xmm2
	vaesenc	%xmm25, %xmm2, %xmm2
	vaesenc	%xmm26, %xmm2, %xmm2
	vaesenc	%xmm27, %xmm2, %xmm2
	vaesenc	%xmm28, %xmm2, %xmm2
	vaesenc	%xmm29, %xmm2, %xmm2
	vaesenclast	%xmm30, %xmm2, %xmm2
	vpxor	16(%r9), %xmm2, %xmm2
	addq	$32, %r9
	vmovdqu	%xmm2, 16(%rcx)
	addq	$32, %rcx
	addq	$-32, %r10
	vpaddd	%xmm1, %xmm15, %xmm15
	cmpq	$15, %r10
	ja	.LBB1_55
.LBB1_56:
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rsi
	vmovdqa	%xmm15, %xmm0
.LBB1_57:
	testq	%rsi, %rsi
	je	.LBB1_59
	movl	$-1, %ecx
	bzhil	%esi, %ecx, %ecx
	kmovd	%ecx, %k1
	vmovdqu8	(%rdi), %xmm1 {%k1} {z}
	vpxor	%xmm0, %xmm10, %xmm0
	vaesenc	%xmm9, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm8, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm0, %xmm0
	vaesenc	%xmm17, %xmm0, %xmm0
	vaesenc	%xmm7, %xmm0, %xmm0
	vaesenc	%xmm18, %xmm0, %xmm0
	vaesenc	%xmm25, %xmm0, %xmm0
	vaesenc	%xmm26, %xmm0, %xmm0
	vaesenc	%xmm27, %xmm0, %xmm0
	vaesenc	%xmm28, %xmm0, %xmm0
	vaesenc	%xmm29, %xmm0, %xmm0
	vaesenclast	%xmm30, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu8	%xmm0, (%rdx) {%k1}
.LBB1_59:
	movzbl	%al, %eax
.LBB1_60:
	addq	$992, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end1:
	.size	haberdashery_aes256gcmsiv_sapphirerapids_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_sapphirerapids_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.long	1
	.long	0
	.long	0
	.long	0
.LCPI2_1:
	.long	2
	.long	0
	.long	0
	.long	0
.LCPI2_2:
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_3:
	.quad	4
	.quad	0
.LCPI2_4:
	.long	5
	.long	0
	.long	0
	.long	0
.LCPI2_5:
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
.LCPI2_14:
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
.LCPI2_15:
	.quad	0
	.quad	8
.LCPI2_24:
	.long	32
	.long	0
	.long	0
	.long	0
.LCPI2_25:
	.quad	-1
	.quad	9223372036854775807
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI2_6:
	.quad	4294967297
.LCPI2_7:
	.quad	8589934594
.LCPI2_8:
	.quad	17179869188
.LCPI2_9:
	.quad	34359738376
.LCPI2_10:
	.quad	68719476752
.LCPI2_11:
	.quad	137438953504
.LCPI2_12:
	.quad	274877907008
.LCPI2_13:
	.quad	-4467570830351532032
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.LCPI2_16:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	2
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
.LCPI2_17:
	.long	4
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
.LCPI2_18:
	.long	8
	.long	0
	.long	0
	.long	0
	.long	9
	.long	0
	.long	0
	.long	0
	.long	10
	.long	0
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	0
.LCPI2_19:
	.long	12
	.long	0
	.long	0
	.long	0
	.long	13
	.long	0
	.long	0
	.long	0
	.long	14
	.long	0
	.long	0
	.long	0
	.long	15
	.long	0
	.long	0
	.long	0
.LCPI2_20:
	.long	16
	.long	0
	.long	0
	.long	0
	.long	17
	.long	0
	.long	0
	.long	0
	.long	18
	.long	0
	.long	0
	.long	0
	.long	19
	.long	0
	.long	0
	.long	0
.LCPI2_21:
	.long	20
	.long	0
	.long	0
	.long	0
	.long	21
	.long	0
	.long	0
	.long	0
	.long	22
	.long	0
	.long	0
	.long	0
	.long	23
	.long	0
	.long	0
	.long	0
.LCPI2_22:
	.long	24
	.long	0
	.long	0
	.long	0
	.long	25
	.long	0
	.long	0
	.long	0
	.long	26
	.long	0
	.long	0
	.long	0
	.long	27
	.long	0
	.long	0
	.long	0
.LCPI2_23:
	.long	28
	.long	0
	.long	0
	.long	0
	.long	29
	.long	0
	.long	0
	.long	0
	.long	30
	.long	0
	.long	0
	.long	0
	.long	31
	.long	0
	.long	0
	.long	0
.LCPI2_27:
	.byte	1
	.byte	0
.LCPI2_28:
	.byte	2
	.byte	0
.LCPI2_29:
	.byte	4
	.byte	0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI2_26:
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.section	.text.haberdashery_aes256gcmsiv_sapphirerapids_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_sapphirerapids_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_sapphirerapids_decrypt,@function
haberdashery_aes256gcmsiv_sapphirerapids_decrypt:
	.cfi_startproc
	subq	$1784, %rsp
	.cfi_def_cfa_offset 1792
	movq	1792(%rsp), %r10
	xorl	%eax, %eax
	cmpq	1824(%rsp), %r10
	jne	.LBB2_45
	cmpq	$12, %rdx
	jne	.LBB2_45
	movabsq	$68719476737, %rdx
	cmpq	%rdx, %r8
	jae	.LBB2_45
	cmpq	%rdx, %r10
	jae	.LBB2_45
	cmpq	$16, 1808(%rsp)
	jb	.LBB2_45
	vmovsd	4(%rsi), %xmm0
	vmovss	(%rsi), %xmm1
	vshufps	$65, %xmm0, %xmm1, %xmm0
	vxorps	(%rdi), %xmm0, %xmm3
	vxorps	.LCPI2_0(%rip), %xmm3, %xmm4
	vxorps	.LCPI2_1(%rip), %xmm3, %xmm2
	vxorps	.LCPI2_2(%rip), %xmm3, %xmm5
	vxorps	.LCPI2_3(%rip), %xmm3, %xmm1
	vxorps	.LCPI2_4(%rip), %xmm3, %xmm14
	vmovaps	16(%rdi), %xmm7
	vmovaps	32(%rdi), %xmm8
	vmovaps	48(%rdi), %xmm9
	vmovaps	64(%rdi), %xmm6
	#APP
	vaesenc	%xmm7, %xmm3, %xmm3
	vaesenc	%xmm7, %xmm4, %xmm4
	vaesenc	%xmm7, %xmm2, %xmm2
	vaesenc	%xmm7, %xmm5, %xmm5
	vaesenc	%xmm7, %xmm1, %xmm1
	vaesenc	%xmm7, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm8, %xmm3, %xmm3
	vaesenc	%xmm8, %xmm4, %xmm4
	vaesenc	%xmm8, %xmm2, %xmm2
	vaesenc	%xmm8, %xmm5, %xmm5
	vaesenc	%xmm8, %xmm1, %xmm1
	vaesenc	%xmm8, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm9, %xmm3, %xmm3
	vaesenc	%xmm9, %xmm4, %xmm4
	vaesenc	%xmm9, %xmm2, %xmm2
	vaesenc	%xmm9, %xmm5, %xmm5
	vaesenc	%xmm9, %xmm1, %xmm1
	vaesenc	%xmm9, %xmm14, %xmm14
	#NO_APP
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	80(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	96(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	112(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	128(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	144(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	160(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	176(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	192(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	208(%rdi), %xmm6
	#APP
	vaesenc	%xmm6, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm4, %xmm4
	vaesenc	%xmm6, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm5, %xmm5
	vaesenc	%xmm6, %xmm1, %xmm1
	vaesenc	%xmm6, %xmm14, %xmm14
	#NO_APP
	vmovaps	224(%rdi), %xmm6
	#APP
	vaesenclast	%xmm6, %xmm3, %xmm3
	vaesenclast	%xmm6, %xmm4, %xmm4
	vaesenclast	%xmm6, %xmm2, %xmm2
	vaesenclast	%xmm6, %xmm5, %xmm5
	vaesenclast	%xmm6, %xmm1, %xmm1
	vaesenclast	%xmm6, %xmm14, %xmm14
	#NO_APP
	vpunpcklqdq	%xmm4, %xmm3, %xmm26
	vpunpcklqdq	%xmm5, %xmm2, %xmm25
	vpunpcklqdq	%xmm14, %xmm1, %xmm27
	vpslldq	$4, %xmm25, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vpunpcklqdq	%xmm2, %xmm3, %xmm5
	vinsertps	$55, %xmm2, %xmm0, %xmm2
	vpternlogq	$150, %xmm5, %xmm4, %xmm2
	vpbroadcastd	.LCPI2_26(%rip), %xmm22
	vpshufb	%xmm22, %xmm27, %xmm4
	vpbroadcastq	.LCPI2_6(%rip), %xmm5
	vaesenclast	%xmm5, %xmm4, %xmm28
	vpternlogq	$150, %xmm2, %xmm25, %xmm28
	vpslldq	$4, %xmm27, %xmm2
	vpunpcklqdq	%xmm1, %xmm3, %xmm4
	vinsertps	$55, %xmm1, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufd	$255, %xmm28, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm29
	vpternlogq	$150, %xmm5, %xmm27, %xmm29
	vpslldq	$4, %xmm28, %xmm2
	vpslldq	$8, %xmm28, %xmm4
	vpslldq	$12, %xmm28, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufb	%xmm22, %xmm29, %xmm2
	vpbroadcastq	.LCPI2_7(%rip), %xmm4
	vaesenclast	%xmm4, %xmm2, %xmm30
	vpternlogq	$150, %xmm5, %xmm28, %xmm30
	vpslldq	$4, %xmm29, %xmm2
	vpslldq	$8, %xmm29, %xmm4
	vpslldq	$12, %xmm29, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufd	$255, %xmm30, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm31
	vpternlogq	$150, %xmm5, %xmm29, %xmm31
	vpslldq	$4, %xmm30, %xmm2
	vpslldq	$8, %xmm30, %xmm4
	vpslldq	$12, %xmm30, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufb	%xmm22, %xmm31, %xmm2
	vpbroadcastq	.LCPI2_8(%rip), %xmm4
	vaesenclast	%xmm4, %xmm2, %xmm12
	vpternlogq	$150, %xmm5, %xmm30, %xmm12
	vpslldq	$4, %xmm31, %xmm2
	vpslldq	$8, %xmm31, %xmm4
	vpslldq	$12, %xmm31, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufd	$255, %xmm12, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm18
	vpternlogq	$150, %xmm5, %xmm31, %xmm18
	vpslldq	$4, %xmm12, %xmm2
	vpslldq	$8, %xmm12, %xmm4
	vpslldq	$12, %xmm12, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufb	%xmm22, %xmm18, %xmm2
	vpbroadcastq	.LCPI2_9(%rip), %xmm4
	vaesenclast	%xmm4, %xmm2, %xmm15
	vpternlogq	$150, %xmm5, %xmm12, %xmm15
	vpslldq	$4, %xmm18, %xmm2
	vpslldq	$8, %xmm18, %xmm4
	vpslldq	$12, %xmm18, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufd	$255, %xmm15, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm0
	vpternlogq	$150, %xmm5, %xmm18, %xmm0
	vpslldq	$4, %xmm15, %xmm2
	vpslldq	$8, %xmm15, %xmm4
	vpslldq	$12, %xmm15, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufb	%xmm22, %xmm0, %xmm2
	vpbroadcastq	.LCPI2_10(%rip), %xmm4
	vaesenclast	%xmm4, %xmm2, %xmm13
	vpternlogq	$150, %xmm5, %xmm15, %xmm13
	vpslldq	$4, %xmm0, %xmm2
	vpslldq	$8, %xmm0, %xmm4
	vpslldq	$12, %xmm0, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufd	$255, %xmm13, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm16
	vpternlogq	$150, %xmm5, %xmm0, %xmm16
	vpslldq	$4, %xmm13, %xmm2
	vpslldq	$8, %xmm13, %xmm4
	vpslldq	$12, %xmm13, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufb	%xmm22, %xmm16, %xmm2
	vpbroadcastq	.LCPI2_11(%rip), %xmm4
	vaesenclast	%xmm4, %xmm2, %xmm24
	vpternlogq	$150, %xmm5, %xmm13, %xmm24
	vpslldq	$4, %xmm16, %xmm2
	vpslldq	$8, %xmm16, %xmm4
	vpslldq	$12, %xmm16, %xmm5
	vpternlogq	$150, %xmm4, %xmm2, %xmm5
	vpshufd	$255, %xmm24, %xmm2
	vaesenclast	%xmm3, %xmm2, %xmm11
	vpternlogq	$150, %xmm5, %xmm16, %xmm11
	vpclmulqdq	$0, %xmm26, %xmm26, %xmm2
	vpclmulqdq	$17, %xmm26, %xmm26, %xmm3
	vpbroadcastq	.LCPI2_13(%rip), %xmm17
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpternlogq	$150, %xmm3, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm2, %xmm3
	vpclmulqdq	$17, %xmm2, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm4
	vpshufd	$78, %xmm3, %xmm19
	vpternlogq	$150, %xmm2, %xmm4, %xmm19
	vpclmulqdq	$0, %xmm19, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm19, %xmm19, %xmm3
	vpxor	%xmm3, %xmm3, %xmm3
	vpclmulqdq	$17, %xmm19, %xmm19, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm2, %xmm6
	vpternlogq	$150, %xmm3, %xmm4, %xmm6
	vpclmulqdq	$0, %xmm6, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm6, %xmm19, %xmm3
	vpclmulqdq	$16, %xmm6, %xmm19, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm6, %xmm19, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm2, %xmm7
	vpternlogq	$150, %xmm3, %xmm4, %xmm7
	vpclmulqdq	$0, %xmm7, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm7, %xmm19, %xmm3
	vpclmulqdq	$16, %xmm7, %xmm19, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm7, %xmm19, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm2, %xmm8
	vpternlogq	$150, %xmm3, %xmm4, %xmm8
	vpclmulqdq	$0, %xmm8, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm8, %xmm19, %xmm3
	vpclmulqdq	$16, %xmm8, %xmm19, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm8, %xmm19, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm2, %xmm9
	vpternlogq	$150, %xmm3, %xmm4, %xmm9
	vpclmulqdq	$0, %xmm9, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm9, %xmm19, %xmm3
	vpclmulqdq	$16, %xmm9, %xmm19, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm9, %xmm19, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm2, %xmm10
	vpternlogq	$150, %xmm3, %xmm4, %xmm10
	vpclmulqdq	$0, %xmm10, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm10, %xmm19, %xmm3
	vpclmulqdq	$16, %xmm10, %xmm19, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm10, %xmm19, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm2, %xmm20
	vpternlogq	$150, %xmm3, %xmm4, %xmm20
	vpclmulqdq	$0, %xmm20, %xmm19, %xmm2
	vpclmulqdq	$1, %xmm20, %xmm19, %xmm3
	vpclmulqdq	$16, %xmm20, %xmm19, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm20, %xmm19, %xmm4
	vpslldq	$8, %xmm3, %xmm5
	vpxor	%xmm5, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpshufd	$78, %xmm2, %xmm21
	vpternlogq	$150, %xmm3, %xmm4, %xmm21
	cmpq	$576, %r8
	vmovups	%zmm16, 1072(%rsp)
	vmovdqu64	%zmm24, 1008(%rsp)
	vmovups	%zmm18, 944(%rsp)
	vmovups	%zmm15, 880(%rsp)
	vmovups	%zmm0, 1136(%rsp)
	vmovups	%zmm13, 816(%rsp)
	vmovdqu64	%zmm11, 240(%rsp)
	vmovdqu64	%zmm19, 752(%rsp)
	vmovdqu64	%zmm6, 304(%rsp)
	vmovdqu64	%zmm7, 176(%rsp)
	vmovdqu64	%zmm8, 112(%rsp)
	vmovdqu64	%zmm9, 48(%rsp)
	vmovdqu64	%zmm10, 1712(%rsp)
	vmovdqu64	%zmm20, 1648(%rsp)
	vmovdqu64	%zmm21, 1584(%rsp)
	jb	.LBB2_9
	vmovapd	%zmm12, %zmm0
	vshufi64x2	$0, %zmm19, %zmm19, %zmm2
	vshufi64x2	$0, %zmm6, %zmm6, %zmm4
	vshufi64x2	$0, %zmm7, %zmm7, %zmm5
	vshufi64x2	$0, %zmm8, %zmm8, %zmm6
	vshufi64x2	$0, %zmm9, %zmm9, %zmm7
	vshufi64x2	$0, %zmm10, %zmm10, %zmm8
	vshufi64x2	$0, %zmm20, %zmm20, %zmm9
	vshufi64x2	$0, %zmm21, %zmm21, %zmm10
	vpxor	%xmm3, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_13(%rip), %zmm11
	movq	%r8, %rdx
	.p2align	4
.LBB2_7:
	vmovdqu64	64(%rcx), %zmm12
	vmovdqu64	128(%rcx), %zmm13
	vmovdqu64	192(%rcx), %zmm15
	vmovdqu64	256(%rcx), %zmm16
	vmovdqu64	320(%rcx), %zmm17
	vmovdqu64	384(%rcx), %zmm18
	vmovdqu64	448(%rcx), %zmm19
	vpxord	(%rcx), %zmm3, %zmm3
	addq	$512, %rcx
	addq	$-512, %rdx
	vpunpcklqdq	%zmm19, %zmm2, %zmm20
	vpunpckhqdq	%zmm19, %zmm2, %zmm21
	vpxorq	%zmm20, %zmm21, %zmm20
	vpclmulqdq	$0, %zmm19, %zmm2, %zmm21
	vpclmulqdq	$1, %zmm20, %zmm20, %zmm20
	vpclmulqdq	$17, %zmm19, %zmm2, %zmm19
	vpunpcklqdq	%zmm18, %zmm4, %zmm22
	vpunpckhqdq	%zmm18, %zmm4, %zmm23
	vpxorq	%zmm22, %zmm23, %zmm22
	vpclmulqdq	$0, %zmm18, %zmm4, %zmm23
	vpxorq	%zmm21, %zmm23, %zmm21
	vpclmulqdq	$1, %zmm22, %zmm22, %zmm22
	vpxorq	%zmm20, %zmm22, %zmm20
	vpclmulqdq	$17, %zmm18, %zmm4, %zmm18
	vpxorq	%zmm19, %zmm18, %zmm18
	vpunpcklqdq	%zmm17, %zmm5, %zmm19
	vpunpckhqdq	%zmm17, %zmm5, %zmm22
	vpxorq	%zmm19, %zmm22, %zmm19
	vpclmulqdq	$0, %zmm17, %zmm5, %zmm22
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm19
	vpclmulqdq	$17, %zmm17, %zmm5, %zmm17
	vpunpcklqdq	%zmm16, %zmm6, %zmm23
	vpunpckhqdq	%zmm16, %zmm6, %zmm24
	vpxorq	%zmm23, %zmm24, %zmm23
	vpclmulqdq	$0, %zmm16, %zmm6, %zmm24
	vpternlogq	$150, %zmm22, %zmm21, %zmm24
	vpclmulqdq	$1, %zmm23, %zmm23, %zmm21
	vpternlogq	$150, %zmm19, %zmm20, %zmm21
	vpclmulqdq	$17, %zmm16, %zmm6, %zmm16
	vpternlogq	$150, %zmm17, %zmm18, %zmm16
	vpunpcklqdq	%zmm15, %zmm7, %zmm17
	vpunpckhqdq	%zmm15, %zmm7, %zmm18
	vpxorq	%zmm17, %zmm18, %zmm17
	vpclmulqdq	$0, %zmm15, %zmm7, %zmm18
	vpclmulqdq	$1, %zmm17, %zmm17, %zmm17
	vpclmulqdq	$17, %zmm15, %zmm7, %zmm15
	vpunpcklqdq	%zmm13, %zmm8, %zmm19
	vpunpckhqdq	%zmm13, %zmm8, %zmm20
	vpxorq	%zmm19, %zmm20, %zmm19
	vpclmulqdq	$0, %zmm13, %zmm8, %zmm20
	vpternlogq	$150, %zmm18, %zmm24, %zmm20
	vpclmulqdq	$1, %zmm19, %zmm19, %zmm18
	vpternlogq	$150, %zmm17, %zmm21, %zmm18
	vpclmulqdq	$17, %zmm13, %zmm8, %zmm13
	vpternlogq	$150, %zmm15, %zmm16, %zmm13
	vpunpcklqdq	%zmm12, %zmm9, %zmm15
	vpunpckhqdq	%zmm12, %zmm9, %zmm16
	vpxorq	%zmm15, %zmm16, %zmm15
	vpclmulqdq	$0, %zmm12, %zmm9, %zmm16
	vpclmulqdq	$1, %zmm15, %zmm15, %zmm15
	vpclmulqdq	$17, %zmm12, %zmm9, %zmm12
	vpunpcklqdq	%zmm3, %zmm10, %zmm17
	vpunpckhqdq	%zmm3, %zmm10, %zmm19
	vpxorq	%zmm17, %zmm19, %zmm17
	vpclmulqdq	$0, %zmm3, %zmm10, %zmm19
	vpternlogq	$150, %zmm16, %zmm20, %zmm19
	vpclmulqdq	$1, %zmm17, %zmm17, %zmm16
	vpternlogq	$150, %zmm15, %zmm18, %zmm16
	vpclmulqdq	$17, %zmm3, %zmm10, %zmm3
	vpternlogq	$150, %zmm12, %zmm13, %zmm3
	vpternlogq	$150, %zmm19, %zmm3, %zmm16
	vpslldq	$8, %zmm16, %zmm12
	vxorpd	%zmm19, %zmm12, %zmm12
	vpsrldq	$8, %zmm16, %zmm13
	vpclmulqdq	$16, %zmm11, %zmm12, %zmm15
	vpshufd	$78, %zmm12, %zmm12
	vpxorq	%zmm12, %zmm15, %zmm12
	vpclmulqdq	$16, %zmm11, %zmm12, %zmm15
	vpshufd	$78, %zmm12, %zmm12
	vpxorq	%zmm3, %zmm15, %zmm3
	vpternlogd	$150, %zmm12, %zmm13, %zmm3
	cmpq	$575, %rdx
	ja	.LBB2_7
	vmovapd	%zmm0, %zmm12
	vmovupd	944(%rsp), %zmm18
	vmovupd	880(%rsp), %zmm15
	vmovdqu64	1136(%rsp), %zmm20
	vmovupd	816(%rsp), %zmm13
	vmovupd	1072(%rsp), %zmm16
	vmovdqu64	1008(%rsp), %zmm24
	vmovdqu64	240(%rsp), %zmm11
	vpbroadcastq	.LCPI2_13(%rip), %xmm17
	vmovdqu64	752(%rsp), %zmm19
	vpbroadcastd	.LCPI2_26(%rip), %xmm22
	jmp	.LBB2_10
.LBB2_9:
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	movq	%r8, %rdx
	movq	%r8, %rax
	cmpq	$64, %r8
	vmovdqa64	%zmm0, %zmm20
	jb	.LBB2_19
.LBB2_10:
	vmovdqu64	(%rcx), %zmm6
	leaq	64(%rcx), %rdi
	leaq	-64(%rdx), %rax
	cmpq	$64, %rax
	jb	.LBB2_11
	vshufi64x2	$0, %zmm19, %zmm19, %zmm2
	testb	$64, %dl
	jne	.LBB2_13
	vmovdqu64	64(%rcx), %zmm4
	vpxord	%zmm3, %zmm6, %zmm3
	vpunpcklqdq	%zmm3, %zmm2, %zmm5
	vpunpckhqdq	%zmm3, %zmm2, %zmm6
	vpxorq	%zmm5, %zmm6, %zmm5
	vpclmulqdq	$0, %zmm3, %zmm2, %zmm6
	vpclmulqdq	$1, %zmm5, %zmm5, %zmm5
	vpclmulqdq	$17, %zmm3, %zmm2, %zmm3
	vpternlogq	$150, %zmm6, %zmm3, %zmm5
	vpslldq	$8, %zmm5, %zmm7
	vxorpd	%zmm6, %zmm7, %zmm6
	vpsrldq	$8, %zmm5, %zmm5
	vpbroadcastq	.LCPI2_13(%rip), %zmm7
	vpclmulqdq	$16, %zmm7, %zmm6, %zmm8
	vpshufd	$78, %zmm6, %zmm6
	vpxorq	%zmm6, %zmm8, %zmm6
	vpclmulqdq	$16, %zmm7, %zmm6, %zmm7
	vpshufd	$78, %zmm6, %zmm6
	vpxorq	%zmm3, %zmm7, %zmm3
	vpternlogd	$150, %zmm5, %zmm6, %zmm3
	subq	$-128, %rcx
	leaq	-128(%rdx), %rax
	movq	%rcx, %rdi
	vmovdqa64	%zmm4, %zmm6
	jmp	.LBB2_15
.LBB2_11:
	vmovdqa64	%zmm6, %zmm4
	movq	%rdi, %rcx
	jmp	.LBB2_18
.LBB2_13:
.LBB2_15:
	andl	$960, %edx
	cmpl	$128, %edx
	je	.LBB2_18
	vpbroadcastq	.LCPI2_13(%rip), %zmm5
	movq	%rdi, %rcx
	vmovdqa64	%zmm6, %zmm4
	.p2align	4
.LBB2_17:
	vpxord	%zmm3, %zmm4, %zmm3
	vpunpcklqdq	%zmm3, %zmm2, %zmm4
	vpunpckhqdq	%zmm3, %zmm2, %zmm6
	vpxorq	%zmm4, %zmm6, %zmm4
	vpclmulqdq	$0, %zmm3, %zmm2, %zmm6
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpclmulqdq	$17, %zmm3, %zmm2, %zmm3
	vpternlogq	$150, %zmm6, %zmm3, %zmm4
	vpslldq	$8, %zmm4, %zmm7
	vxorpd	%zmm6, %zmm7, %zmm6
	vpsrldq	$8, %zmm4, %zmm4
	vpclmulqdq	$16, %zmm5, %zmm6, %zmm7
	vpshufd	$78, %zmm6, %zmm6
	vpxorq	%zmm6, %zmm7, %zmm6
	vpclmulqdq	$16, %zmm5, %zmm6, %zmm7
	vpshufd	$78, %zmm6, %zmm6
	vpternlogd	$150, %zmm3, %zmm4, %zmm7
	vmovdqu64	64(%rcx), %zmm4
	vpternlogd	$150, (%rcx), %zmm6, %zmm7
	vpunpcklqdq	%zmm7, %zmm2, %zmm3
	vpunpckhqdq	%zmm7, %zmm2, %zmm6
	vpxorq	%zmm3, %zmm6, %zmm3
	vpclmulqdq	$0, %zmm7, %zmm2, %zmm6
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpclmulqdq	$17, %zmm7, %zmm2, %zmm7
	vpternlogq	$150, %zmm6, %zmm7, %zmm3
	vpslldq	$8, %zmm3, %zmm8
	vxorpd	%zmm6, %zmm8, %zmm6
	vpsrldq	$8, %zmm3, %zmm8
	vpclmulqdq	$16, %zmm5, %zmm6, %zmm3
	vpshufd	$78, %zmm6, %zmm6
	vpxorq	%zmm6, %zmm3, %zmm3
	vpclmulqdq	$16, %zmm5, %zmm3, %zmm6
	vpshufd	$78, %zmm3, %zmm9
	vpxorq	%zmm7, %zmm6, %zmm3
	vpternlogd	$150, %zmm8, %zmm9, %zmm3
	subq	$-128, %rcx
	addq	$-128, %rax
	cmpq	$63, %rax
	ja	.LBB2_17
.LBB2_18:
	vpxord	%zmm4, %zmm3, %zmm2
	vextracti128	$1, %ymm2, %xmm3
	vextracti32x4	$2, %zmm2, %xmm4
	vextracti32x4	$3, %zmm2, %xmm5
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm6
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm7
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm8
	vpxor	%xmm7, %xmm8, %xmm7
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm7, %xmm8
	vpxor	%xmm6, %xmm8, %xmm6
	vpsrldq	$8, %xmm7, %xmm7
	vpclmulqdq	$16, %xmm17, %xmm6, %xmm8
	vpshufd	$78, %xmm6, %xmm6
	vpxor	%xmm6, %xmm8, %xmm6
	vpclmulqdq	$16, %xmm17, %xmm6, %xmm8
	vpternlogq	$150, %xmm3, %xmm2, %xmm8
	vpshufd	$78, %xmm6, %xmm2
	vpternlogq	$150, %xmm7, %xmm8, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm6
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm3, %xmm3
	vpsrldq	$8, %xmm6, %xmm6
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm7
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm7, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm7
	vpternlogq	$150, %xmm4, %xmm2, %xmm7
	vpshufd	$78, %xmm3, %xmm2
	vpternlogq	$150, %xmm6, %xmm7, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm6
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm4, %xmm6
	vpxor	%xmm6, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm6
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm6, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm6
	vpternlogq	$150, %xmm5, %xmm2, %xmm6
	vpshufd	$78, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm6, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm5
	vpxor	%xmm2, %xmm5, %xmm5
	vpshufd	$78, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
.LBB2_19:
	vpslldq	$4, %xmm24, %xmm4
	vpslldq	$8, %xmm24, %xmm5
	vpslldq	$12, %xmm24, %xmm3
	vpshufb	%xmm22, %xmm11, %xmm6
	vpbroadcastq	.LCPI2_12(%rip), %xmm7
	movq	1800(%rsp), %rdx
	cmpq	$16, %rax
	jb	.LBB2_20
	leaq	-16(%rax), %rdi
	testb	$16, %dil
	vmovdqa64	%zmm13, %zmm22
	jne	.LBB2_23
	vpxor	(%rcx), %xmm2, %xmm2
	addq	$16, %rcx
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpsrldq	$8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm17, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm17, %xmm8, %xmm10
	vpxor	%xmm2, %xmm10, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, %xmm9, %xmm10, %xmm2
	movq	%rdi, %rax
.LBB2_23:
	cmpq	$16, %rdi
	jb	.LBB2_24
	.p2align	4
.LBB2_29:
	vpxor	(%rcx), %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpsrldq	$8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm17, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm17, %xmm8, %xmm10
	vpternlogq	$150, %xmm2, %xmm9, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, 16(%rcx), %xmm10, %xmm2
	addq	$-32, %rax
	addq	$32, %rcx
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm8
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm9
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm10
	vpxor	%xmm9, %xmm10, %xmm9
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm9, %xmm10
	vpxor	%xmm10, %xmm8, %xmm8
	vpsrldq	$8, %xmm9, %xmm9
	vpclmulqdq	$16, %xmm17, %xmm8, %xmm10
	vpshufd	$78, %xmm8, %xmm8
	vpxor	%xmm8, %xmm10, %xmm8
	vpclmulqdq	$16, %xmm17, %xmm8, %xmm10
	vpxor	%xmm2, %xmm10, %xmm10
	vpshufd	$78, %xmm8, %xmm2
	vpternlogq	$150, %xmm9, %xmm10, %xmm2
	cmpq	$15, %rax
	ja	.LBB2_29
	movq	%rax, %rdi
	jmp	.LBB2_24
.LBB2_20:
	movq	%rax, %rdi
	vmovdqa64	%zmm13, %zmm22
.LBB2_24:
	vpternlogq	$150, %xmm5, %xmm4, %xmm3
	vaesenclast	%xmm7, %xmm6, %xmm8
	vmovdqu	(%rdx), %xmm7
	testq	%rdi, %rdi
	je	.LBB2_26
	movl	$-1, %eax
	bzhil	%edi, %eax, %eax
	kmovd	%eax, %k1
	vmovdqu8	(%rcx), %xmm4 {%k1} {z}
	vpxor	%xmm4, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm17, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm4, %xmm6
	vpxor	%xmm2, %xmm6, %xmm6
	vpshufd	$78, %xmm4, %xmm2
	vpternlogq	$150, %xmm5, %xmm6, %xmm2
.LBB2_26:
	vmovq	%r10, %xmm4
	vmovq	%r8, %xmm5
	vmovd	8(%rsi), %xmm9
	vmovq	(%rsi), %xmm10
	movq	1816(%rsp), %rdx
	vpternlogq	$150, %xmm3, %xmm24, %xmm8
	vporq	.LCPI2_14(%rip), %xmm7, %xmm23
	vmovdqa	%xmm2, %xmm3
	movb	$63, %al
	kmovd	%eax, %k1
	vpexpandq	%zmm3, %zmm13 {%k1} {z}
	cmpq	$1087, %r10
	jbe	.LBB2_27
	vmovdqa	%xmm5, -128(%rsp)
	vmovdqa	%xmm4, -112(%rsp)
	vmovdqa	%xmm10, -96(%rsp)
	vmovdqa	%xmm9, -80(%rsp)
	vmovdqa	%xmm7, -64(%rsp)
	vmovaps	%xmm26, -48(%rsp)
	leaq	512(%r9), %rax
	leaq	512(%rdx), %rcx
	vshufi64x2	$0, %zmm23, %zmm23, %zmm2
	vpaddd	.LCPI2_16(%rip), %zmm2, %zmm3
	vpaddd	.LCPI2_17(%rip), %zmm2, %zmm4
	vpaddd	.LCPI2_18(%rip), %zmm2, %zmm5
	vpaddd	.LCPI2_19(%rip), %zmm2, %zmm6
	vpaddd	.LCPI2_20(%rip), %zmm2, %zmm7
	vmovdqu64	%zmm8, -16(%rsp)
	vpaddd	.LCPI2_21(%rip), %zmm2, %zmm8
	addq	$-512, %r10
	vpaddd	.LCPI2_22(%rip), %zmm2, %zmm9
	vpaddd	.LCPI2_23(%rip), %zmm2, %zmm2
	vmovups	%zmm25, 688(%rsp)
	vshufi64x2	$0, %zmm25, %zmm25, %zmm10
	vpxord	%zmm10, %zmm3, %zmm3
	vpxord	%zmm10, %zmm4, %zmm4
	vpxord	%zmm10, %zmm5, %zmm5
	vpxord	%zmm10, %zmm6, %zmm6
	vpxord	%zmm10, %zmm7, %zmm7
	vpxord	%zmm10, %zmm8, %zmm8
	vpxord	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm0
	vpxord	%zmm10, %zmm2, %zmm2
	vinserti32x4	$1, %xmm27, %ymm0, %ymm10
	vmovaps	%xmm27, -32(%rsp)
	vinserti32x4	$0, %xmm27, %zmm10, %zmm10
	vmovdqa64	%zmm11, %zmm25
	vbroadcasti32x4	.LCPI2_15(%rip), %zmm11
	vpermi2q	%zmm14, %zmm1, %zmm11
	vshufi64x2	$228, %zmm11, %zmm10, %zmm10
	movb	$-64, %sil
	kmovd	%esi, %k1
	vmovdqa64	%zmm11, %zmm10 {%k1}
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm1
	vaesenc	%zmm10, %zmm2, %zmm2
	vmovups	%zmm28, 624(%rsp)
	vshufi64x2	$0, %zmm28, %zmm28, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm26
	vaesenc	%zmm10, %zmm2, %zmm2
	vmovups	%zmm29, 560(%rsp)
	vshufi64x2	$0, %zmm29, %zmm29, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm27
	vaesenc	%zmm10, %zmm2, %zmm2
	vmovups	%zmm30, 496(%rsp)
	vshufi64x2	$0, %zmm30, %zmm30, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm28
	vaesenc	%zmm10, %zmm2, %zmm2
	vmovups	%zmm31, 432(%rsp)
	vshufi64x2	$0, %zmm31, %zmm31, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm29
	vaesenc	%zmm10, %zmm2, %zmm2
	vmovups	%zmm12, 1520(%rsp)
	vshufi64x2	$0, %zmm12, %zmm12, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm30
	vaesenc	%zmm10, %zmm2, %zmm2
	vshufi64x2	$0, %zmm18, %zmm18, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm31
	vaesenc	%zmm10, %zmm2, %zmm2
	vmovdqa64	%zmm19, %zmm11
	vshufi64x2	$0, %zmm15, %zmm15, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm19
	vaesenc	%zmm10, %zmm2, %zmm2
	vshufi64x2	$0, %zmm20, %zmm20, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm21
	vaesenc	%zmm10, %zmm2, %zmm2
	vshufi64x2	$0, %zmm22, %zmm22, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm20
	vaesenc	%zmm10, %zmm2, %zmm2
	vshufi64x2	$0, %zmm16, %zmm16, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm17
	vaesenc	%zmm10, %zmm2, %zmm2
	vshufi64x2	$0, %zmm24, %zmm24, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm24
	vaesenc	%zmm10, %zmm2, %zmm2
	vshufi64x2	$0, %zmm25, %zmm25, %zmm10
	vaesenc	%zmm10, %zmm3, %zmm3
	vaesenc	%zmm10, %zmm4, %zmm4
	vaesenc	%zmm10, %zmm5, %zmm5
	vaesenc	%zmm10, %zmm6, %zmm6
	vaesenc	%zmm10, %zmm7, %zmm7
	vaesenc	%zmm10, %zmm8, %zmm8
	vaesenc	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm25
	vaesenc	%zmm10, %zmm2, %zmm2
	vmovdqu64	-16(%rsp), %zmm10
	vshufi64x2	$0, %zmm10, %zmm10, %zmm10
	vaesenclast	%zmm10, %zmm3, %zmm3
	vaesenclast	%zmm10, %zmm4, %zmm4
	vaesenclast	%zmm10, %zmm5, %zmm5
	vaesenclast	%zmm10, %zmm6, %zmm6
	vaesenclast	%zmm10, %zmm7, %zmm7
	vaesenclast	%zmm10, %zmm8, %zmm8
	vaesenclast	%zmm10, %zmm9, %zmm9
	vmovdqa64	%zmm10, %zmm14
	vaesenclast	%zmm10, %zmm2, %zmm10
	vpxorq	(%r9), %zmm3, %zmm16
	vpxorq	64(%r9), %zmm4, %zmm12
	vpxorq	128(%r9), %zmm5, %zmm5
	vpxorq	192(%r9), %zmm6, %zmm18
	vpxorq	256(%r9), %zmm7, %zmm15
	vpxorq	320(%r9), %zmm8, %zmm2
	vpxorq	384(%r9), %zmm9, %zmm3
	vpxorq	448(%r9), %zmm10, %zmm4
	vmovdqu64	%zmm16, (%rdx)
	vmovdqu64	%zmm12, 64(%rdx)
	vmovdqu64	%zmm5, 368(%rsp)
	vmovdqu64	%zmm5, 128(%rdx)
	vmovdqu64	%zmm18, 192(%rdx)
	vmovdqu64	%zmm15, 256(%rdx)
	vmovdqu64	%zmm2, 320(%rdx)
	vmovdqu64	%zmm3, 384(%rdx)
	vmovdqu64	%zmm4, 448(%rdx)
	vpaddd	.LCPI2_24(%rip), %xmm23, %xmm23
	vshufi64x2	$0, %zmm11, %zmm11, %zmm5
	vmovdqu64	%zmm5, 1200(%rsp)
	vmovdqu64	304(%rsp), %zmm5
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm5, 1264(%rsp)
	vmovdqu64	176(%rsp), %zmm5
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm5, 1328(%rsp)
	vmovdqu64	112(%rsp), %zmm5
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm5, 1392(%rsp)
	vmovdqu64	48(%rsp), %zmm5
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm5, 1456(%rsp)
	vmovdqu64	1712(%rsp), %zmm5
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm5, 48(%rsp)
	vmovdqu64	1648(%rsp), %zmm5
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm5, 112(%rsp)
	vmovdqu64	1584(%rsp), %zmm5
	vshufi64x2	$0, %zmm5, %zmm5, %zmm5
	vmovdqu64	%zmm5, 176(%rsp)
	vmovdqu64	1328(%rsp), %zmm11
	.p2align	4
.LBB2_47:
	vmovdqu64	%zmm12, 304(%rsp)
	vmovdqa64	%zmm15, %zmm9
	vmovdqa64	%zmm2, %zmm10
	vmovdqu64	1200(%rsp), %zmm12
	vpunpcklqdq	%zmm4, %zmm12, %zmm5
	vpunpckhqdq	%zmm4, %zmm12, %zmm6
	vpxorq	%zmm5, %zmm6, %zmm5
	vpclmulqdq	$0, %zmm4, %zmm12, %zmm6
	vpclmulqdq	$1, %zmm5, %zmm5, %zmm5
	vmovdqa64	%zmm23, %zmm22
	vmovdqa64	%zmm14, %zmm23
	vmovdqa64	%zmm25, %zmm15
	vmovdqa64	%zmm24, %zmm25
	vmovdqa64	%zmm17, %zmm24
	vmovdqa64	%zmm20, %zmm17
	vmovdqa64	%zmm21, %zmm20
	vmovdqa64	%zmm19, %zmm21
	vmovdqa64	%zmm31, %zmm19
	vmovdqa64	%zmm30, %zmm31
	vmovdqa64	%zmm29, %zmm30
	vmovdqa64	%zmm28, %zmm29
	vmovdqa64	%zmm27, %zmm28
	vmovdqa64	%zmm26, %zmm27
	vmovdqa64	%zmm1, %zmm14
	vmovdqa64	%zmm0, %zmm2
	vmovdqu64	1264(%rsp), %zmm26
	vpunpcklqdq	%zmm3, %zmm26, %zmm7
	vpunpckhqdq	%zmm3, %zmm26, %zmm8
	vpxorq	%zmm7, %zmm8, %zmm7
	vpclmulqdq	$0, %zmm3, %zmm26, %zmm8
	vpxorq	%zmm6, %zmm8, %zmm6
	vpclmulqdq	$1, %zmm7, %zmm7, %zmm7
	vpxorq	%zmm5, %zmm7, %zmm5
	vmovdqa64	%zmm10, %zmm1
	vpunpcklqdq	%zmm10, %zmm11, %zmm7
	vpunpckhqdq	%zmm10, %zmm11, %zmm8
	vpxorq	%zmm7, %zmm8, %zmm7
	vpclmulqdq	$0, %zmm10, %zmm11, %zmm8
	vmovdqu64	1392(%rsp), %zmm10
	vpclmulqdq	$0, %zmm9, %zmm10, %zmm0
	vpternlogq	$150, %zmm8, %zmm6, %zmm0
	vpunpcklqdq	%zmm9, %zmm10, %zmm6
	vpunpckhqdq	%zmm9, %zmm10, %zmm8
	vpxorq	%zmm6, %zmm8, %zmm6
	vpclmulqdq	$1, %zmm7, %zmm7, %zmm7
	vpclmulqdq	$1, %zmm6, %zmm6, %zmm6
	vpternlogq	$150, %zmm7, %zmm5, %zmm6
	vpxorq	%zmm13, %zmm16, %zmm5
	vmovdqu64	368(%rsp), %zmm13
	vpclmulqdq	$17, %zmm4, %zmm12, %zmm4
	vpclmulqdq	$17, %zmm3, %zmm26, %zmm3
	vmovdqa64	%zmm2, %zmm16
	vmovdqa64	%zmm14, %zmm26
	vmovdqa64	%zmm15, %zmm14
	vpxorq	%zmm4, %zmm3, %zmm3
	vpclmulqdq	$17, %zmm1, %zmm11, %zmm2
	vpclmulqdq	$17, %zmm9, %zmm10, %zmm4
	vpternlogq	$150, %zmm2, %zmm3, %zmm4
	vmovdqu64	1456(%rsp), %zmm15
	vpunpcklqdq	%zmm18, %zmm15, %zmm2
	vpunpckhqdq	%zmm18, %zmm15, %zmm3
	vpxorq	%zmm2, %zmm3, %zmm2
	vpclmulqdq	$0, %zmm18, %zmm15, %zmm3
	vmovdqu64	48(%rsp), %zmm10
	vpclmulqdq	$0, %zmm13, %zmm10, %zmm7
	vpternlogq	$150, %zmm3, %zmm0, %zmm7
	vpunpcklqdq	%zmm13, %zmm10, %zmm3
	vpunpckhqdq	%zmm13, %zmm10, %zmm8
	vpxorq	%zmm3, %zmm8, %zmm3
	vmovdqu64	304(%rsp), %zmm12
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpclmulqdq	$1, %zmm3, %zmm3, %zmm3
	vpternlogq	$150, %zmm2, %zmm6, %zmm3
	vshufi64x2	$0, %zmm22, %zmm22, %zmm2
	vpclmulqdq	$17, %zmm18, %zmm15, %zmm6
	vpclmulqdq	$17, %zmm13, %zmm10, %zmm8
	vpternlogq	$150, %zmm6, %zmm4, %zmm8
	vmovdqu64	112(%rsp), %zmm13
	vpunpcklqdq	%zmm12, %zmm13, %zmm4
	vpunpckhqdq	%zmm12, %zmm13, %zmm6
	vpxorq	%zmm4, %zmm6, %zmm4
	vpclmulqdq	$0, %zmm12, %zmm13, %zmm6
	vmovdqu64	176(%rsp), %zmm10
	vpclmulqdq	$0, %zmm5, %zmm10, %zmm9
	vpternlogq	$150, %zmm6, %zmm7, %zmm9
	vpunpcklqdq	%zmm5, %zmm10, %zmm6
	vpunpckhqdq	%zmm5, %zmm10, %zmm7
	vpxorq	%zmm6, %zmm7, %zmm6
	vpaddd	.LCPI2_16(%rip), %zmm2, %zmm7
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpclmulqdq	$1, %zmm6, %zmm6, %zmm6
	vpternlogq	$150, %zmm4, %zmm3, %zmm6
	vpaddd	.LCPI2_17(%rip), %zmm2, %zmm3
	vpaddd	.LCPI2_18(%rip), %zmm2, %zmm4
	vpclmulqdq	$17, %zmm12, %zmm13, %zmm12
	vpclmulqdq	$17, %zmm5, %zmm10, %zmm5
	vpternlogq	$150, %zmm12, %zmm8, %zmm5
	vpaddd	.LCPI2_19(%rip), %zmm2, %zmm8
	vpternlogq	$150, %zmm9, %zmm5, %zmm6
	vpslldq	$8, %zmm6, %zmm12
	vxorpd	%zmm9, %zmm12, %zmm9
	vpbroadcastq	.LCPI2_13(%rip), %zmm10
	vpclmulqdq	$16, %zmm10, %zmm9, %zmm12
	vpshufd	$78, %zmm9, %zmm9
	vpxorq	%zmm9, %zmm12, %zmm9
	vpclmulqdq	$16, %zmm10, %zmm9, %zmm12
	vpxorq	%zmm5, %zmm12, %zmm13
	vpaddd	.LCPI2_20(%rip), %zmm2, %zmm5
	vpsrldq	$8, %zmm6, %zmm6
	vpshufd	$78, %zmm9, %zmm9
	vpternlogd	$150, %zmm9, %zmm6, %zmm13
	vpaddd	.LCPI2_21(%rip), %zmm2, %zmm6
	vpaddd	.LCPI2_22(%rip), %zmm2, %zmm9
	vpaddd	.LCPI2_23(%rip), %zmm2, %zmm2
	vpxord	%zmm16, %zmm7, %zmm7
	vpxord	%zmm16, %zmm3, %zmm3
	vpxord	%zmm16, %zmm4, %zmm4
	vpxord	%zmm16, %zmm8, %zmm8
	vpxord	%zmm16, %zmm5, %zmm5
	vpxord	%zmm16, %zmm6, %zmm6
	vpxord	%zmm16, %zmm9, %zmm9
	vmovdqa64	%zmm16, %zmm0
	vpxord	%zmm16, %zmm2, %zmm2
	vaesenc	%zmm26, %zmm7, %zmm7
	vaesenc	%zmm26, %zmm3, %zmm3
	vaesenc	%zmm26, %zmm4, %zmm4
	vaesenc	%zmm26, %zmm8, %zmm8
	vaesenc	%zmm26, %zmm5, %zmm5
	vaesenc	%zmm26, %zmm6, %zmm6
	vaesenc	%zmm26, %zmm9, %zmm9
	vmovdqa64	%zmm26, %zmm1
	vaesenc	%zmm26, %zmm2, %zmm2
	vaesenc	%zmm27, %zmm7, %zmm7
	vaesenc	%zmm27, %zmm3, %zmm3
	vaesenc	%zmm27, %zmm4, %zmm4
	vaesenc	%zmm27, %zmm8, %zmm8
	vaesenc	%zmm27, %zmm5, %zmm5
	vaesenc	%zmm27, %zmm6, %zmm6
	vaesenc	%zmm27, %zmm9, %zmm9
	vmovdqa64	%zmm27, %zmm26
	vaesenc	%zmm27, %zmm2, %zmm2
	vaesenc	%zmm28, %zmm7, %zmm7
	vaesenc	%zmm28, %zmm3, %zmm3
	vaesenc	%zmm28, %zmm4, %zmm4
	vaesenc	%zmm28, %zmm8, %zmm8
	vaesenc	%zmm28, %zmm5, %zmm5
	vaesenc	%zmm28, %zmm6, %zmm6
	vaesenc	%zmm28, %zmm9, %zmm9
	vmovdqa64	%zmm28, %zmm27
	vaesenc	%zmm28, %zmm2, %zmm2
	vaesenc	%zmm29, %zmm7, %zmm7
	vaesenc	%zmm29, %zmm3, %zmm3
	vaesenc	%zmm29, %zmm4, %zmm4
	vaesenc	%zmm29, %zmm8, %zmm8
	vaesenc	%zmm29, %zmm5, %zmm5
	vaesenc	%zmm29, %zmm6, %zmm6
	vaesenc	%zmm29, %zmm9, %zmm9
	vmovdqa64	%zmm29, %zmm28
	vaesenc	%zmm29, %zmm2, %zmm2
	vaesenc	%zmm30, %zmm7, %zmm7
	vaesenc	%zmm30, %zmm3, %zmm3
	vaesenc	%zmm30, %zmm4, %zmm4
	vaesenc	%zmm30, %zmm8, %zmm8
	vaesenc	%zmm30, %zmm5, %zmm5
	vaesenc	%zmm30, %zmm6, %zmm6
	vaesenc	%zmm30, %zmm9, %zmm9
	vmovdqa64	%zmm30, %zmm29
	vaesenc	%zmm30, %zmm2, %zmm2
	vaesenc	%zmm31, %zmm7, %zmm7
	vaesenc	%zmm31, %zmm3, %zmm3
	vaesenc	%zmm31, %zmm4, %zmm4
	vaesenc	%zmm31, %zmm8, %zmm8
	vaesenc	%zmm31, %zmm5, %zmm5
	vaesenc	%zmm31, %zmm6, %zmm6
	vaesenc	%zmm31, %zmm9, %zmm9
	vmovdqa64	%zmm31, %zmm30
	vaesenc	%zmm31, %zmm2, %zmm2
	vaesenc	%zmm19, %zmm7, %zmm7
	vaesenc	%zmm19, %zmm3, %zmm3
	vaesenc	%zmm19, %zmm4, %zmm4
	vaesenc	%zmm19, %zmm8, %zmm8
	vaesenc	%zmm19, %zmm5, %zmm5
	vaesenc	%zmm19, %zmm6, %zmm6
	vaesenc	%zmm19, %zmm9, %zmm9
	vmovdqa64	%zmm19, %zmm31
	vaesenc	%zmm19, %zmm2, %zmm2
	vaesenc	%zmm21, %zmm7, %zmm7
	vaesenc	%zmm21, %zmm3, %zmm3
	vaesenc	%zmm21, %zmm4, %zmm4
	vaesenc	%zmm21, %zmm8, %zmm8
	vaesenc	%zmm21, %zmm5, %zmm5
	vaesenc	%zmm21, %zmm6, %zmm6
	vaesenc	%zmm21, %zmm9, %zmm9
	vmovdqa64	%zmm21, %zmm19
	vaesenc	%zmm21, %zmm2, %zmm2
	vaesenc	%zmm20, %zmm7, %zmm7
	vaesenc	%zmm20, %zmm3, %zmm3
	vaesenc	%zmm20, %zmm4, %zmm4
	vaesenc	%zmm20, %zmm8, %zmm8
	vaesenc	%zmm20, %zmm5, %zmm5
	vaesenc	%zmm20, %zmm6, %zmm6
	vaesenc	%zmm20, %zmm9, %zmm9
	vmovdqa64	%zmm20, %zmm21
	vaesenc	%zmm20, %zmm2, %zmm2
	vaesenc	%zmm17, %zmm7, %zmm7
	vaesenc	%zmm17, %zmm3, %zmm3
	vaesenc	%zmm17, %zmm4, %zmm4
	vaesenc	%zmm17, %zmm8, %zmm8
	vaesenc	%zmm17, %zmm5, %zmm5
	vaesenc	%zmm17, %zmm6, %zmm6
	vaesenc	%zmm17, %zmm9, %zmm9
	vmovdqa64	%zmm17, %zmm20
	vaesenc	%zmm17, %zmm2, %zmm2
	vaesenc	%zmm24, %zmm7, %zmm7
	vaesenc	%zmm24, %zmm3, %zmm3
	vaesenc	%zmm24, %zmm4, %zmm4
	vaesenc	%zmm24, %zmm8, %zmm8
	vaesenc	%zmm24, %zmm5, %zmm5
	vaesenc	%zmm24, %zmm6, %zmm6
	vaesenc	%zmm24, %zmm9, %zmm9
	vmovdqa64	%zmm24, %zmm17
	vaesenc	%zmm24, %zmm2, %zmm2
	vaesenc	%zmm25, %zmm7, %zmm7
	vaesenc	%zmm25, %zmm3, %zmm3
	vaesenc	%zmm25, %zmm4, %zmm4
	vaesenc	%zmm25, %zmm8, %zmm8
	vaesenc	%zmm25, %zmm5, %zmm5
	vaesenc	%zmm25, %zmm6, %zmm6
	vaesenc	%zmm25, %zmm9, %zmm9
	vmovdqa64	%zmm25, %zmm24
	vaesenc	%zmm25, %zmm2, %zmm2
	vaesenc	%zmm14, %zmm7, %zmm7
	vaesenc	%zmm14, %zmm3, %zmm3
	vaesenc	%zmm14, %zmm4, %zmm4
	vaesenc	%zmm14, %zmm8, %zmm8
	vaesenc	%zmm14, %zmm5, %zmm5
	vaesenc	%zmm14, %zmm6, %zmm6
	vaesenc	%zmm14, %zmm9, %zmm9
	vmovdqa64	%zmm14, %zmm25
	vaesenc	%zmm14, %zmm2, %zmm10
	vaesenclast	%zmm23, %zmm7, %zmm2
	vaesenclast	%zmm23, %zmm3, %zmm3
	vaesenclast	%zmm23, %zmm4, %zmm4
	vaesenclast	%zmm23, %zmm8, %zmm7
	vaesenclast	%zmm23, %zmm5, %zmm5
	vaesenclast	%zmm23, %zmm6, %zmm6
	vaesenclast	%zmm23, %zmm9, %zmm8
	vpxorq	(%rax), %zmm2, %zmm16
	vpxorq	64(%rax), %zmm3, %zmm12
	vpxorq	128(%rax), %zmm4, %zmm9
	vpxorq	192(%rax), %zmm7, %zmm18
	vpxorq	256(%rax), %zmm5, %zmm15
	vpxorq	320(%rax), %zmm6, %zmm2
	vpxorq	384(%rax), %zmm8, %zmm3
	vmovdqa64	%zmm23, %zmm14
	vaesenclast	%zmm23, %zmm10, %zmm4
	vpxorq	448(%rax), %zmm4, %zmm4
	leaq	512(%rax), %rax
	vmovdqu64	%zmm16, (%rcx)
	vmovdqu64	%zmm12, 64(%rcx)
	vmovdqu64	%zmm9, 368(%rsp)
	vmovdqu64	%zmm9, 128(%rcx)
	vmovdqu64	%zmm18, 192(%rcx)
	vmovdqu64	%zmm15, 256(%rcx)
	vmovdqu64	%zmm2, 320(%rcx)
	vmovdqu64	%zmm3, 384(%rcx)
	vmovdqu64	%zmm4, 448(%rcx)
	addq	$512, %rcx
	addq	$-512, %r10
	vpaddd	.LCPI2_24(%rip), %xmm22, %xmm22
	vmovdqa64	%zmm22, %zmm23
	cmpq	$575, %r10
	ja	.LBB2_47
	vpxorq	%zmm13, %zmm16, %zmm13
	vmovdqu64	1200(%rsp), %zmm5
	vpunpcklqdq	%zmm4, %zmm5, %zmm22
	vpunpckhqdq	%zmm4, %zmm5, %zmm16
	vpxorq	%zmm22, %zmm16, %zmm16
	vpclmulqdq	$0, %zmm4, %zmm5, %zmm22
	vpclmulqdq	$1, %zmm16, %zmm16, %zmm16
	vpclmulqdq	$17, %zmm4, %zmm5, %zmm6
	vmovdqu64	1264(%rsp), %zmm5
	vpunpcklqdq	%zmm3, %zmm5, %zmm11
	vpunpckhqdq	%zmm3, %zmm5, %zmm4
	vpxorq	%zmm11, %zmm4, %zmm4
	vpclmulqdq	$0, %zmm3, %zmm5, %zmm11
	vpxorq	%zmm22, %zmm11, %zmm11
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpxorq	%zmm16, %zmm4, %zmm4
	vpclmulqdq	$17, %zmm3, %zmm5, %zmm3
	vpxorq	%zmm6, %zmm3, %zmm3
	vmovdqu64	1328(%rsp), %zmm5
	vpunpcklqdq	%zmm2, %zmm5, %zmm10
	vpunpckhqdq	%zmm2, %zmm5, %zmm16
	vpxorq	%zmm10, %zmm16, %zmm10
	vpclmulqdq	$0, %zmm2, %zmm5, %zmm16
	vpclmulqdq	$1, %zmm10, %zmm10, %zmm10
	vpclmulqdq	$17, %zmm2, %zmm5, %zmm2
	vmovdqu64	1392(%rsp), %zmm5
	vpunpcklqdq	%zmm15, %zmm5, %zmm9
	vpunpckhqdq	%zmm15, %zmm5, %zmm22
	vpxorq	%zmm9, %zmm22, %zmm9
	vpclmulqdq	$0, %zmm15, %zmm5, %zmm22
	vpternlogq	$150, %zmm16, %zmm11, %zmm22
	vpclmulqdq	$1, %zmm9, %zmm9, %zmm9
	vpternlogq	$150, %zmm10, %zmm4, %zmm9
	vpclmulqdq	$17, %zmm15, %zmm5, %zmm4
	vpternlogq	$150, %zmm2, %zmm3, %zmm4
	vmovdqu64	1456(%rsp), %zmm5
	vpunpcklqdq	%zmm18, %zmm5, %zmm2
	vpunpckhqdq	%zmm18, %zmm5, %zmm3
	vpxorq	%zmm2, %zmm3, %zmm2
	vpclmulqdq	$0, %zmm18, %zmm5, %zmm3
	vpclmulqdq	$1, %zmm2, %zmm2, %zmm2
	vpclmulqdq	$17, %zmm18, %zmm5, %zmm7
	vmovdqu64	48(%rsp), %zmm5
	vmovdqu64	368(%rsp), %zmm6
	vpunpcklqdq	%zmm6, %zmm5, %zmm8
	vpunpckhqdq	%zmm6, %zmm5, %zmm10
	vpxorq	%zmm8, %zmm10, %zmm8
	vpclmulqdq	$0, %zmm6, %zmm5, %zmm10
	vpternlogq	$150, %zmm3, %zmm22, %zmm10
	vpclmulqdq	$1, %zmm8, %zmm8, %zmm3
	vpternlogq	$150, %zmm2, %zmm9, %zmm3
	vpclmulqdq	$17, %zmm6, %zmm5, %zmm2
	vpternlogq	$150, %zmm7, %zmm4, %zmm2
	vmovdqu64	112(%rsp), %zmm5
	vpunpcklqdq	%zmm12, %zmm5, %zmm4
	vpunpckhqdq	%zmm12, %zmm5, %zmm6
	vpxorq	%zmm4, %zmm6, %zmm4
	vpclmulqdq	$0, %zmm12, %zmm5, %zmm6
	vpclmulqdq	$1, %zmm4, %zmm4, %zmm4
	vpclmulqdq	$17, %zmm12, %zmm5, %zmm5
	vmovdqu64	176(%rsp), %zmm9
	vpunpcklqdq	%zmm13, %zmm9, %zmm7
	vpunpckhqdq	%zmm13, %zmm9, %zmm8
	vpxorq	%zmm7, %zmm8, %zmm7
	vpclmulqdq	$0, %zmm13, %zmm9, %zmm8
	vpternlogq	$150, %zmm6, %zmm10, %zmm8
	vpclmulqdq	$1, %zmm7, %zmm7, %zmm6
	vpternlogq	$150, %zmm4, %zmm3, %zmm6
	vpclmulqdq	$17, %zmm13, %zmm9, %zmm3
	vpternlogq	$150, %zmm5, %zmm2, %zmm3
	vpternlogq	$150, %zmm8, %zmm3, %zmm6
	vpslldq	$8, %zmm6, %zmm2
	vxorpd	%zmm8, %zmm2, %zmm2
	vpsrldq	$8, %zmm6, %zmm4
	vpbroadcastq	.LCPI2_13(%rip), %zmm6
	vpclmulqdq	$16, %zmm6, %zmm2, %zmm5
	vpshufd	$78, %zmm2, %zmm2
	vpxorq	%zmm2, %zmm5, %zmm2
	vpclmulqdq	$16, %zmm6, %zmm2, %zmm5
	vpxorq	%zmm4, %zmm5, %zmm4
	vpshufd	$78, %zmm2, %zmm13
	vpternlogq	$150, %zmm4, %zmm3, %zmm13
	movq	%rcx, %rdx
	movq	%rax, %r9
	vmovupd	1520(%rsp), %zmm12
	vmovupd	944(%rsp), %zmm18
	vmovupd	880(%rsp), %zmm15
	vmovdqu64	816(%rsp), %zmm22
	vmovdqu64	240(%rsp), %zmm11
	vmovdqu64	-16(%rsp), %zmm8
	jmp	.LBB2_32
.LBB2_27:
	cmpq	$64, %r10
	jb	.LBB2_34
	vmovdqa	%xmm5, -128(%rsp)
	vmovdqa	%xmm4, -112(%rsp)
	vmovdqa	%xmm10, -96(%rsp)
	vmovdqa	%xmm9, -80(%rsp)
	vmovdqa	%xmm7, -64(%rsp)
	vmovaps	%xmm26, -48(%rsp)
	vmovups	%zmm25, 688(%rsp)
	vshufi64x2	$0, %zmm25, %zmm25, %zmm0
	vinserti32x4	$1, %xmm27, %ymm0, %ymm2
	vmovaps	%xmm27, -32(%rsp)
	vinserti32x4	$0, %xmm27, %zmm2, %zmm2
	vbroadcasti32x4	.LCPI2_15(%rip), %zmm3
	vpermi2q	%zmm14, %zmm1, %zmm3
	vshufi64x2	$228, %zmm3, %zmm2, %zmm1
	movb	$-64, %al
	kmovd	%eax, %k1
	vmovdqa64	%zmm3, %zmm1 {%k1}
	vmovups	%zmm28, 624(%rsp)
	vshufi64x2	$0, %zmm28, %zmm28, %zmm26
	vmovups	%zmm29, 560(%rsp)
	vshufi64x2	$0, %zmm29, %zmm29, %zmm27
	vmovups	%zmm30, 496(%rsp)
	vshufi64x2	$0, %zmm30, %zmm30, %zmm28
	vmovups	%zmm31, 432(%rsp)
	vshufi64x2	$0, %zmm31, %zmm31, %zmm29
	vshufi64x2	$0, %zmm12, %zmm12, %zmm30
	vshufi64x2	$0, %zmm18, %zmm18, %zmm31
	vshufi64x2	$0, %zmm15, %zmm15, %zmm19
	vshufi64x2	$0, %zmm20, %zmm20, %zmm21
	vshufi64x2	$0, %zmm22, %zmm22, %zmm20
	vshufi64x2	$0, %zmm16, %zmm16, %zmm17
	vshufi64x2	$0, %zmm24, %zmm24, %zmm24
	vshufi64x2	$0, %zmm11, %zmm11, %zmm25
	vshufi64x2	$0, %zmm8, %zmm8, %zmm14
.LBB2_32:
	addq	$-64, %r10
	vmovdqu64	(%r9), %zmm2
	addq	$64, %r9
	cmpq	$64, %r10
	jb	.LBB2_33
	vmovdqu64	%zmm8, -16(%rsp)
	vmovdqu64	752(%rsp), %zmm3
	vshufi64x2	$0, %zmm3, %zmm3, %zmm3
	vpmovsxbq	.LCPI2_27(%rip), %xmm4
	vpmovsxbq	.LCPI2_28(%rip), %xmm6
	vpmovsxbq	.LCPI2_29(%rip), %xmm5
	vinserti128	$1, .LCPI2_2(%rip), %ymm6, %ymm6
	vpbroadcastq	.LCPI2_13(%rip), %zmm7
	.p2align	4
.LBB2_37:
	vmovdqa64	%xmm23, %xmm8
	vpaddd	%xmm4, %xmm23, %xmm9
	vinserti32x4	$1, %xmm23, %ymm8, %ymm10
	vpaddd	%ymm6, %ymm10, %ymm10
	vinserti128	$1, %xmm9, %ymm8, %ymm9
	vinserti64x4	$1, %ymm10, %zmm9, %zmm9
	vpxorq	%zmm0, %zmm9, %zmm9
	vaesenc	%zmm1, %zmm9, %zmm9
	vaesenc	%zmm26, %zmm9, %zmm9
	vaesenc	%zmm27, %zmm9, %zmm9
	vaesenc	%zmm28, %zmm9, %zmm9
	vaesenc	%zmm29, %zmm9, %zmm9
	vaesenc	%zmm30, %zmm9, %zmm9
	vaesenc	%zmm31, %zmm9, %zmm9
	vaesenc	%zmm19, %zmm9, %zmm9
	vaesenc	%zmm21, %zmm9, %zmm9
	vaesenc	%zmm20, %zmm9, %zmm9
	vaesenc	%zmm17, %zmm9, %zmm9
	vaesenc	%zmm24, %zmm9, %zmm9
	vaesenc	%zmm25, %zmm9, %zmm9
	vaesenclast	%zmm14, %zmm9, %zmm9
	vpxorq	%zmm2, %zmm9, %zmm9
	vmovdqu64	(%r9), %zmm2
	vpaddd	%xmm5, %xmm8, %xmm23
	vmovdqu64	%zmm9, (%rdx)
	addq	$64, %r9
	addq	$-64, %r10
	vpxorq	%zmm13, %zmm9, %zmm8
	vpunpcklqdq	%zmm8, %zmm3, %zmm9
	vpunpckhqdq	%zmm8, %zmm3, %zmm10
	vpxorq	%zmm9, %zmm10, %zmm9
	vpclmulqdq	$0, %zmm8, %zmm3, %zmm10
	vpclmulqdq	$1, %zmm9, %zmm9, %zmm9
	vpclmulqdq	$17, %zmm8, %zmm3, %zmm8
	vpternlogq	$150, %zmm10, %zmm8, %zmm9
	vpslldq	$8, %zmm9, %zmm11
	vxorpd	%zmm10, %zmm11, %zmm10
	vpsrldq	$8, %zmm9, %zmm9
	vpclmulqdq	$16, %zmm7, %zmm10, %zmm11
	vpshufd	$78, %zmm10, %zmm10
	vpxorq	%zmm10, %zmm11, %zmm10
	vpclmulqdq	$16, %zmm7, %zmm10, %zmm11
	vpshufd	$78, %zmm10, %zmm10
	vpxorq	%zmm8, %zmm11, %zmm13
	vpternlogd	$150, %zmm9, %zmm10, %zmm13
	addq	$64, %rdx
	cmpq	$63, %r10
	ja	.LBB2_37
	leaq	64(%rdx), %rax
	vmovdqu64	240(%rsp), %zmm11
	vmovdqu64	-16(%rsp), %zmm8
	jmp	.LBB2_39
.LBB2_33:
	leaq	64(%rdx), %rax
.LBB2_39:
	vpaddd	.LCPI2_0(%rip), %xmm23, %xmm3
	vpmovsxbq	.LCPI2_28(%rip), %xmm4
	vinserti32x4	$1, %xmm23, %ymm23, %ymm5
	vinserti32x4	$1, %xmm3, %ymm23, %ymm6
	vpaddd	.LCPI2_3(%rip), %xmm23, %xmm23
	vinserti128	$1, .LCPI2_2(%rip), %ymm4, %ymm4
	vpaddd	%ymm4, %ymm5, %ymm4
	vinserti64x4	$1, %ymm4, %zmm6, %zmm4
	vpxorq	%zmm0, %zmm4, %zmm4
	vaesenc	%zmm1, %zmm4, %zmm0
	vaesenc	%zmm26, %zmm0, %zmm0
	vaesenc	%zmm27, %zmm0, %zmm0
	vaesenc	%zmm28, %zmm0, %zmm0
	vaesenc	%zmm29, %zmm0, %zmm0
	vaesenc	%zmm30, %zmm0, %zmm0
	vaesenc	%zmm31, %zmm0, %zmm0
	vaesenc	%zmm19, %zmm0, %zmm0
	vaesenc	%zmm21, %zmm0, %zmm0
	vaesenc	%zmm20, %zmm0, %zmm0
	vaesenc	%zmm17, %zmm0, %zmm0
	vaesenc	%zmm24, %zmm0, %zmm0
	vaesenc	%zmm25, %zmm0, %zmm0
	vaesenclast	%zmm14, %zmm0, %zmm0
	vpxorq	%zmm2, %zmm0, %zmm0
	vmovdqu64	%zmm0, (%rdx)
	vpxord	%zmm0, %zmm13, %zmm0
	vextracti128	$1, %ymm0, %xmm1
	vextracti32x4	$2, %zmm0, %xmm2
	vextracti32x4	$3, %zmm0, %xmm4
	vmovdqa64	-48(%rsp), %xmm26
	vpclmulqdq	$0, %xmm0, %xmm26, %xmm5
	vpclmulqdq	$1, %xmm0, %xmm26, %xmm6
	vpclmulqdq	$16, %xmm0, %xmm26, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpclmulqdq	$17, %xmm0, %xmm26, %xmm0
	vpslldq	$8, %xmm6, %xmm7
	vpxor	%xmm7, %xmm5, %xmm5
	vpsrldq	$8, %xmm6, %xmm6
	vpbroadcastq	.LCPI2_13(%rip), %xmm17
	vpclmulqdq	$16, %xmm17, %xmm5, %xmm7
	vpshufd	$78, %xmm5, %xmm5
	vpxor	%xmm5, %xmm7, %xmm5
	vpclmulqdq	$16, %xmm17, %xmm5, %xmm7
	vpternlogq	$150, %xmm1, %xmm0, %xmm7
	vpshufd	$78, %xmm5, %xmm0
	vpternlogq	$150, %xmm6, %xmm7, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm26, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm26, %xmm5
	vpclmulqdq	$16, %xmm0, %xmm26, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm0, %xmm26, %xmm0
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm1, %xmm1
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm6
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm6
	vpternlogq	$150, %xmm2, %xmm0, %xmm6
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm5, %xmm6, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm26, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm26, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm26, %xmm5
	vpxor	%xmm2, %xmm5, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm26, %xmm0
	vpslldq	$8, %xmm2, %xmm5
	vpxor	%xmm5, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm5
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm5, %xmm1
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm5
	vpternlogq	$150, %xmm4, %xmm0, %xmm5
	vpshufd	$78, %xmm1, %xmm0
	vpternlogq	$150, %xmm2, %xmm5, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm26, %xmm1
	vpclmulqdq	$1, %xmm0, %xmm26, %xmm2
	vpclmulqdq	$16, %xmm0, %xmm26, %xmm4
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$17, %xmm0, %xmm26, %xmm0
	vpslldq	$8, %xmm2, %xmm4
	vpxor	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm2, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm2
	vpshufd	$78, %xmm1, %xmm1
	vpxor	%xmm1, %xmm2, %xmm1
	vpclmulqdq	$16, %xmm17, %xmm1, %xmm2
	vpxor	%xmm0, %xmm2, %xmm0
	vpshufd	$78, %xmm1, %xmm2
	vpternlogq	$150, %xmm4, %xmm0, %xmm2
	movq	%rax, %rdx
	vmovupd	688(%rsp), %zmm25
	vmovapd	-32(%rsp), %xmm27
	vmovupd	624(%rsp), %zmm28
	vmovupd	560(%rsp), %zmm29
	vmovupd	496(%rsp), %zmm30
	vmovupd	432(%rsp), %zmm31
	vmovupd	1072(%rsp), %zmm16
	vmovupd	1008(%rsp), %zmm24
	vmovdqa	-64(%rsp), %xmm7
	vmovdqa	-80(%rsp), %xmm9
	vmovdqa	-96(%rsp), %xmm10
	vmovdqa	-112(%rsp), %xmm4
	vmovdqa	-128(%rsp), %xmm5
	vmovdqu64	1136(%rsp), %zmm20
.LBB2_34:
	vpunpcklqdq	%xmm4, %xmm5, %xmm0
	cmpq	$16, %r10
	jb	.LBB2_35
	vpmovsxbq	.LCPI2_27(%rip), %xmm1
	.p2align	4
.LBB2_41:
	leaq	16(%r9), %rcx
	leaq	16(%rdx), %rax
	addq	$-16, %r10
	vpxorq	%xmm25, %xmm23, %xmm3
	vaesenc	%xmm27, %xmm3, %xmm3
	vaesenc	%xmm28, %xmm3, %xmm3
	vaesenc	%xmm29, %xmm3, %xmm3
	vaesenc	%xmm30, %xmm3, %xmm3
	vaesenc	%xmm31, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm18, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm20, %xmm3, %xmm3
	vaesenc	%xmm22, %xmm3, %xmm3
	vaesenc	%xmm16, %xmm3, %xmm3
	vaesenc	%xmm24, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpxor	(%r9), %xmm3, %xmm4
	vmovdqu	%xmm4, (%rdx)
	vpaddd	%xmm1, %xmm23, %xmm3
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm4
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm5
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm6
	vpxor	%xmm5, %xmm6, %xmm5
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm5, %xmm6
	vpxor	%xmm6, %xmm4, %xmm4
	vpsrldq	$8, %xmm5, %xmm5
	vpclmulqdq	$16, %xmm17, %xmm4, %xmm6
	vpshufd	$78, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm4, %xmm6
	vpxor	%xmm2, %xmm6, %xmm6
	vpshufd	$78, %xmm4, %xmm2
	vpternlogq	$150, %xmm5, %xmm6, %xmm2
	movq	%rax, %rdx
	vmovdqa64	%xmm3, %xmm23
	movq	%rcx, %r9
	cmpq	$15, %r10
	ja	.LBB2_41
	vpunpcklqdq	%xmm9, %xmm10, %xmm1
	vpsllq	$3, %xmm0, %xmm0
	testq	%r10, %r10
	je	.LBB2_44
.LBB2_43:
	movl	$-1, %edx
	bzhil	%r10d, %edx, %edx
	kmovd	%edx, %k1
	vmovdqu8	(%rcx), %xmm4 {%k1} {z}
	vpxorq	%xmm25, %xmm3, %xmm3
	vaesenc	%xmm27, %xmm3, %xmm3
	vaesenc	%xmm28, %xmm3, %xmm3
	vaesenc	%xmm29, %xmm3, %xmm3
	vaesenc	%xmm30, %xmm3, %xmm3
	vaesenc	%xmm31, %xmm3, %xmm3
	vaesenc	%xmm12, %xmm3, %xmm3
	vaesenc	%xmm18, %xmm3, %xmm3
	vaesenc	%xmm15, %xmm3, %xmm3
	vaesenc	%xmm20, %xmm3, %xmm3
	vaesenc	%xmm22, %xmm3, %xmm3
	vaesenc	%xmm16, %xmm3, %xmm3
	vaesenc	%xmm24, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm3, %xmm3
	vaesenclast	%xmm8, %xmm3, %xmm3
	vpxor	%xmm3, %xmm4, %xmm3
	vmovdqu8	%xmm3, (%rax) {%k1}
	vmovdqu8	(%rax), %xmm3 {%k1} {z}
	vpxor	%xmm3, %xmm2, %xmm2
	vpclmulqdq	$0, %xmm2, %xmm26, %xmm3
	vpclmulqdq	$1, %xmm2, %xmm26, %xmm4
	vpclmulqdq	$16, %xmm2, %xmm26, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpclmulqdq	$17, %xmm2, %xmm26, %xmm2
	vpslldq	$8, %xmm4, %xmm5
	vpxor	%xmm5, %xmm3, %xmm3
	vpsrldq	$8, %xmm4, %xmm4
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm5
	vpshufd	$78, %xmm3, %xmm3
	vpxor	%xmm3, %xmm5, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm3, %xmm5
	vpxor	%xmm2, %xmm5, %xmm5
	vpshufd	$78, %xmm3, %xmm2
	vpternlogq	$150, %xmm4, %xmm5, %xmm2
.LBB2_44:
	vpxor	%xmm0, %xmm2, %xmm0
	vpclmulqdq	$0, %xmm0, %xmm26, %xmm2
	vpclmulqdq	$1, %xmm0, %xmm26, %xmm3
	vpclmulqdq	$16, %xmm0, %xmm26, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpclmulqdq	$17, %xmm0, %xmm26, %xmm0
	vpslldq	$8, %xmm3, %xmm4
	vpxor	%xmm4, %xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm3
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm4
	vpshufd	$78, %xmm2, %xmm2
	vpxor	%xmm2, %xmm4, %xmm2
	vpclmulqdq	$16, %xmm17, %xmm2, %xmm4
	vpternlogq	$150, %xmm1, %xmm0, %xmm4
	vpshufd	$78, %xmm2, %xmm0
	vpternlogq	$150, %xmm3, %xmm4, %xmm0
	vpternlogq	$120, .LCPI2_25(%rip), %xmm0, %xmm25
	vaesenc	%xmm27, %xmm25, %xmm0
	vaesenc	%xmm28, %xmm0, %xmm0
	vaesenc	%xmm29, %xmm0, %xmm0
	vaesenc	%xmm30, %xmm0, %xmm0
	vaesenc	%xmm31, %xmm0, %xmm0
	vaesenc	%xmm12, %xmm0, %xmm0
	vaesenc	%xmm18, %xmm0, %xmm0
	vaesenc	%xmm15, %xmm0, %xmm0
	vaesenc	%xmm20, %xmm0, %xmm0
	vaesenc	%xmm22, %xmm0, %xmm0
	vaesenc	%xmm16, %xmm0, %xmm0
	vaesenc	%xmm24, %xmm0, %xmm0
	vaesenc	%xmm11, %xmm0, %xmm0
	vaesenclast	%xmm8, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	xorl	%eax, %eax
	vptest	%xmm0, %xmm0
	sete	%al
.LBB2_45:
	addq	$1784, %rsp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB2_35:
	.cfi_def_cfa_offset 1792
	movq	%rdx, %rax
	movq	%r9, %rcx
	vmovdqa64	%xmm23, %xmm3
	vpunpcklqdq	%xmm9, %xmm10, %xmm1
	vpsllq	$3, %xmm0, %xmm0
	testq	%r10, %r10
	jne	.LBB2_43
	jmp	.LBB2_44
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_sapphirerapids_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_sapphirerapids_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_sapphirerapids_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_sapphirerapids_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmsiv_sapphirerapids_is_supported,@function
haberdashery_aes256gcmsiv_sapphirerapids_is_supported:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$1, %esi
	movl	$1, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %rdi
	cpuid
	xchgq	%rbx, %rdi

	#NO_APP
	movl	%ecx, %r9d
	movl	%edx, %r10d
	notl	%r10d
	notl	%r9d
	movl	$7, %eax
	xorl	%ecx, %ecx
	#APP

	movq	%rbx, %r11
	cpuid
	xchgq	%rbx, %r11

	#NO_APP
	movl	%edx, %edi
	movl	%ecx, %r8d
	movl	$7, %eax
	movl	$1, %ecx
	#APP

	movq	%rbx, %rbx
	cpuid
	xchgq	%rbx, %rbx

	#NO_APP
	andl	$1993871875, %r9d
	andl	$125829120, %r10d
	orl	%r9d, %r10d
	jne	.LBB3_5
	notl	%r11d
	testl	$-240189143, %r11d
	jne	.LBB3_5
	andl	$440426346, %r8d
	cmpl	$440426346, %r8d
	jne	.LBB3_5
	andl	$8470528, %edi
	cmpl	$8470528, %edi
	jne	.LBB3_5
	andl	$48, %eax
	cmpl	$48, %eax
	jne	.LBB3_5
	movl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:
	.cfi_def_cfa_offset 16
	xorl	%esi, %esi
	movl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_sapphirerapids_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_sapphirerapids_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

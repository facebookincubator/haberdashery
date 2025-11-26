# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


	.section	.text.haberdashery_aes256gcmdndk_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcmdndk_neoversev2_init,@function
haberdashery_aes256gcmdndk_neoversev2_init:
	.cfi_startproc
	cmp	x2, #32
	b.ne	.LBB0_2
	ldp	q0, q1, [x1]
	movi	v4.2d, #0000000000000000
	ext	v3.16b, v4.16b, v4.16b, #4
	movi	v6.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	mov	w8, v1.s[3]
	mov	v16.d[1], v1.d[0]
	ror	w8, w8, #8
	ext	v5.16b, v3.16b, v0.16b, #12
	mov	v6.d[1], v0.d[0]
	dup	v7.4s, w8
	stp	q0, q1, [x0]
	eor	v6.16b, v5.16b, v6.16b
	dup	v5.4s, v4.s[0]
	aese	v7.16b, v2.16b
	ext	v4.16b, v5.16b, v0.16b, #4
	dup	v7.4s, v7.s[0]
	eor3	v7.16b, v6.16b, v4.16b, v7.16b
	movi	v4.4s, #1
	ext	v6.16b, v3.16b, v1.16b, #12
	eor3	v4.16b, v0.16b, v7.16b, v4.16b
	eor	v6.16b, v6.16b, v16.16b
	ext	v16.16b, v5.16b, v1.16b, #4
	eor	v17.16b, v0.16b, v7.16b
	dup	v18.4s, v4.s[3]
	mov	v19.d[1], v4.d[0]
	ext	v20.16b, v5.16b, v4.16b, #4
	aese	v18.16b, v2.16b
	dup	v18.4s, v18.s[0]
	eor3	v16.16b, v6.16b, v16.16b, v18.16b
	ext	v18.16b, v3.16b, v4.16b, #12
	eor	v6.16b, v1.16b, v16.16b
	mov	w8, v6.s[3]
	ext	v22.16b, v5.16b, v6.16b, #4
	stp	q4, q6, [x0, #32]
	ror	w8, w8, #8
	dup	v21.4s, w8
	aese	v21.16b, v2.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	movi	v21.2d, #0000000000000000
	mov	v21.d[1], v6.d[0]
	eor3	v18.16b, v19.16b, v18.16b, v20.16b
	ext	v20.16b, v3.16b, v6.16b, #12
	eor3	v19.16b, v0.16b, v7.16b, v18.16b
	movi	v7.4s, #3
	movi	v0.4s, #127
	eor3	v7.16b, v17.16b, v18.16b, v7.16b
	dup	v23.4s, v7.s[3]
	aese	v23.16b, v2.16b
	dup	v23.4s, v23.s[0]
	eor	v21.16b, v21.16b, v23.16b
	ext	v23.16b, v5.16b, v7.16b, #4
	eor3	v20.16b, v21.16b, v20.16b, v22.16b
	movi	v22.2d, #0000000000000000
	mov	v22.d[1], v7.d[0]
	ext	v21.16b, v3.16b, v7.16b, #12
	eor3	v16.16b, v1.16b, v16.16b, v20.16b
	mov	w8, v16.s[3]
	stp	q7, q16, [x0, #64]
	ror	w8, w8, #8
	dup	v24.4s, w8
	aese	v24.16b, v2.16b
	dup	v24.4s, v24.s[0]
	eor	v22.16b, v22.16b, v24.16b
	ext	v24.16b, v5.16b, v16.16b, #4
	eor3	v21.16b, v22.16b, v21.16b, v23.16b
	movi	v23.2d, #0000000000000000
	mov	v23.d[1], v16.d[0]
	eor3	v22.16b, v17.16b, v18.16b, v21.16b
	movi	v17.4s, #7
	ext	v18.16b, v3.16b, v16.16b, #12
	eor3	v17.16b, v19.16b, v21.16b, v17.16b
	dup	v25.4s, v17.s[3]
	aese	v25.16b, v2.16b
	dup	v25.4s, v25.s[0]
	eor	v23.16b, v23.16b, v25.16b
	ext	v25.16b, v5.16b, v17.16b, #4
	eor3	v23.16b, v23.16b, v18.16b, v24.16b
	movi	v24.2d, #0000000000000000
	mov	v24.d[1], v17.d[0]
	eor3	v18.16b, v6.16b, v20.16b, v23.16b
	ext	v20.16b, v3.16b, v17.16b, #12
	mov	w8, v18.s[3]
	stp	q17, q18, [x0, #96]
	ror	w8, w8, #8
	dup	v26.4s, w8
	aese	v26.16b, v2.16b
	dup	v26.4s, v26.s[0]
	eor	v24.16b, v24.16b, v26.16b
	ext	v26.16b, v5.16b, v18.16b, #4
	eor3	v24.16b, v24.16b, v20.16b, v25.16b
	ext	v20.16b, v3.16b, v18.16b, #12
	eor3	v25.16b, v19.16b, v21.16b, v24.16b
	movi	v19.4s, #15
	movi	v21.2d, #0000000000000000
	mov	v21.d[1], v18.d[0]
	eor3	v19.16b, v22.16b, v24.16b, v19.16b
	dup	v27.4s, v19.s[3]
	aese	v27.16b, v2.16b
	dup	v27.4s, v27.s[0]
	eor	v21.16b, v21.16b, v27.16b
	ext	v27.16b, v5.16b, v19.16b, #4
	eor3	v26.16b, v21.16b, v20.16b, v26.16b
	ext	v21.16b, v3.16b, v19.16b, #12
	eor3	v20.16b, v16.16b, v23.16b, v26.16b
	movi	v23.2d, #0000000000000000
	mov	v23.d[1], v19.d[0]
	mov	w8, v20.s[3]
	ror	w8, w8, #8
	dup	v28.4s, w8
	stp	q19, q20, [x0, #128]
	aese	v28.16b, v2.16b
	dup	v28.4s, v28.s[0]
	eor	v23.16b, v23.16b, v28.16b
	ext	v28.16b, v5.16b, v20.16b, #4
	eor3	v23.16b, v23.16b, v21.16b, v27.16b
	movi	v21.4s, #31
	movi	v27.2d, #0000000000000000
	mov	v27.d[1], v20.d[0]
	eor3	v21.16b, v25.16b, v23.16b, v21.16b
	eor3	v22.16b, v22.16b, v24.16b, v23.16b
	ext	v24.16b, v3.16b, v20.16b, #12
	dup	v29.4s, v21.s[3]
	aese	v29.16b, v2.16b
	dup	v29.4s, v29.s[0]
	eor	v27.16b, v27.16b, v29.16b
	eor3	v24.16b, v27.16b, v24.16b, v28.16b
	movi	v27.2d, #0000000000000000
	mov	v27.d[1], v21.d[0]
	ext	v28.16b, v5.16b, v21.16b, #4
	eor3	v24.16b, v18.16b, v26.16b, v24.16b
	ext	v26.16b, v3.16b, v21.16b, #12
	mov	w8, v24.s[3]
	stp	q21, q24, [x0, #160]
	ror	w8, w8, #8
	dup	v29.4s, w8
	aese	v29.16b, v2.16b
	dup	v29.4s, v29.s[0]
	eor	v27.16b, v27.16b, v29.16b
	eor3	v26.16b, v27.16b, v26.16b, v28.16b
	ext	v27.16b, v5.16b, v24.16b, #4
	eor3	v23.16b, v25.16b, v23.16b, v26.16b
	movi	v25.4s, #63
	eor3	v22.16b, v22.16b, v26.16b, v25.16b
	ext	v25.16b, v3.16b, v24.16b, #12
	movi	v26.2d, #0000000000000000
	mov	v26.d[1], v24.d[0]
	dup	v28.4s, v22.s[3]
	ext	v3.16b, v3.16b, v22.16b, #12
	ext	v5.16b, v5.16b, v22.16b, #4
	aese	v28.16b, v2.16b
	dup	v28.4s, v28.s[0]
	eor3	v25.16b, v28.16b, v26.16b, v25.16b
	movi	v26.2d, #0000000000000000
	mov	v26.d[1], v22.d[0]
	eor3	v25.16b, v25.16b, v27.16b, v24.16b
	mov	w8, v25.s[3]
	stp	q22, q25, [x0, #192]
	ror	w8, w8, #8
	dup	v27.4s, w8
	aese	v27.16b, v2.16b
	dup	v2.4s, v27.s[0]
	eor	v2.16b, v26.16b, v2.16b
	eor3	v2.16b, v2.16b, v3.16b, v5.16b
	eor3	v0.16b, v23.16b, v2.16b, v0.16b
	str	q0, [x0, #224]
.LBB0_2:
	cmp	x2, #32
	cset	w0, eq
	ret
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndk_neoversev2_init, .Lfunc_end0-haberdashery_aes256gcmdndk_neoversev2_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.byte	2
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
.LCPI1_1:
	.byte	4
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
.LCPI1_2:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI1_3:
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
.LCPI1_4:
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
.LCPI1_5:
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
.LCPI1_6:
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
.LCPI1_7:
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
.LCPI1_8:
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
.LCPI1_9:
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
	.byte	8
.LCPI1_10:
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
	.byte	9
.LCPI1_11:
	.word	0
	.word	0
	.word	0
	.word	10
.LCPI1_12:
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
	.byte	0
	.byte	0
	.byte	0
.LCPI1_13:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI1_14:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI1_15:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI1_16:
	.word	0
	.word	0
	.word	0
	.word	6
.LCPI1_17:
	.word	0
	.word	0
	.word	0
	.word	7
.LCPI1_18:
	.word	0
	.word	0
	.word	0
	.word	8
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
	.byte	1
	.section	.text.haberdashery_aes256gcmdndk_neoversev2_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_neoversev2_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_neoversev2_encrypt,@function
haberdashery_aes256gcmdndk_neoversev2_encrypt:
	.cfi_startproc
	stp	d15, d14, [sp, #-160]!
	.cfi_def_cfa_offset 160
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	stp	x29, x30, [sp, #64]
	stp	x28, x27, [sp, #80]
	stp	x26, x25, [sp, #96]
	stp	x24, x23, [sp, #112]
	stp	x22, x21, [sp, #128]
	stp	x20, x19, [sp, #144]
	add	x29, sp, #64
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	.cfi_offset b14, -152
	.cfi_offset b15, -160
	sub	sp, sp, #704
	ldr	x8, [x29, #96]
	cmp	x6, x8
	b.ne	.LBB1_21
	mov	x9, #68719411200
	mov	w8, wzr
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB1_39
	mov	x9, #2305843009213693950
	cmp	x4, x9
	b.hi	.LBB1_39
	cmp	x2, #24
	b.ne	.LBB1_39
	ldr	x9, [x29, #112]
	cmp	x9, #16
	b.ne	.LBB1_39
	movi	v1.4s, #1
	add	x9, x1, #12
	add	x8, x1, #8
	add	x10, x1, #16
	add	x11, x1, #20
	movi	v3.2d, #0000000000000000
	ld1	{ v3.s }[1], [x1], #4
	ldp	q16, q17, [x0]
	movi	v0.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v2.4s, #1
	ld1	{ v1.s }[1], [x9]
	ld1	{ v3.s }[2], [x1]
	ld1	{ v1.s }[2], [x10]
	ld1	{ v3.s }[3], [x8]
	adrp	x8, .LCPI1_0
	ldr	q5, [x8, :lo12:.LCPI1_0]
	adrp	x8, .LCPI1_1
	ld1	{ v1.s }[3], [x11]
	ldr	q7, [x8, :lo12:.LCPI1_1]
	eor	v4.16b, v3.16b, v5.16b
	eor	v6.16b, v3.16b, v7.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	eor	v5.16b, v1.16b, v5.16b
	eor	v7.16b, v1.16b, v7.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #32]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #64]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #96]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #128]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #160]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #192]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v17.16b
	aese	v4.16b, v17.16b
	aese	v5.16b, v17.16b
	aese	v6.16b, v17.16b
	aese	v7.16b, v17.16b
	aese	v1.16b, v17.16b
	eor	v16.16b, v4.16b, v5.16b
	eor3	v5.16b, v4.16b, v5.16b, v3.16b
	eor	v4.16b, v6.16b, v7.16b
	eor3	v6.16b, v6.16b, v7.16b, v3.16b
	movi	v7.2d, #0000000000000000
	eor3	v20.16b, v4.16b, v3.16b, v1.16b
	eor3	v31.16b, v16.16b, v3.16b, v1.16b
	ext	v3.16b, v0.16b, v0.16b, #4
	mov	w8, v20.s[3]
	ext	v4.16b, v3.16b, v31.16b, #12
	mov	v7.d[1], v31.d[0]
	stur	q20, [x29, #-128]
	ror	w8, w8, #8
	eor	v7.16b, v4.16b, v7.16b
	dup	v4.4s, v0.s[0]
	dup	v17.4s, w8
	ext	v16.16b, v4.16b, v31.16b, #4
	aese	v17.16b, v19.16b
	dup	v17.4s, v17.s[0]
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v20.d[0]
	ext	v17.16b, v4.16b, v20.16b, #4
	eor3	v21.16b, v31.16b, v7.16b, v2.16b
	ext	v2.16b, v3.16b, v20.16b, #12
	eor3	v5.16b, v5.16b, v1.16b, v7.16b
	dup	v18.4s, v21.s[3]
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v2.16b, v16.16b, v2.16b, v17.16b
	ext	v16.16b, v4.16b, v21.16b, #4
	eor3	v9.16b, v6.16b, v1.16b, v2.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v21.d[0]
	ext	v1.16b, v3.16b, v21.16b, #12
	mov	w8, v9.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v19.16b
	dup	v17.4s, v17.s[0]
	eor	v6.16b, v6.16b, v17.16b
	ext	v17.16b, v4.16b, v9.16b, #4
	eor3	v1.16b, v6.16b, v1.16b, v16.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v9.d[0]
	eor3	v6.16b, v31.16b, v7.16b, v1.16b
	movi	v7.4s, #3
	eor3	v10.16b, v5.16b, v1.16b, v7.16b
	ext	v7.16b, v3.16b, v9.16b, #12
	dup	v18.4s, v10.s[3]
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v7.16b, v16.16b, v7.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v10.d[0]
	ext	v17.16b, v4.16b, v10.16b, #4
	eor3	v11.16b, v20.16b, v2.16b, v7.16b
	ext	v2.16b, v3.16b, v10.16b, #12
	mov	w8, v11.s[3]
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v2.16b, v16.16b, v2.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v11.d[0]
	ext	v17.16b, v4.16b, v11.16b, #4
	eor3	v1.16b, v5.16b, v1.16b, v2.16b
	movi	v5.4s, #7
	eor3	v12.16b, v6.16b, v2.16b, v5.16b
	ext	v5.16b, v3.16b, v11.16b, #12
	dup	v18.4s, v12.s[3]
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v5.16b, v16.16b, v5.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v12.d[0]
	ext	v17.16b, v4.16b, v12.16b, #4
	eor3	v13.16b, v9.16b, v7.16b, v5.16b
	ext	v7.16b, v3.16b, v12.16b, #12
	mov	w8, v13.s[3]
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v7.16b, v16.16b, v7.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v13.d[0]
	ext	v17.16b, v4.16b, v13.16b, #4
	eor3	v2.16b, v6.16b, v2.16b, v7.16b
	movi	v6.4s, #15
	eor3	v14.16b, v1.16b, v7.16b, v6.16b
	ext	v6.16b, v3.16b, v13.16b, #12
	dup	v18.4s, v14.s[3]
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v6.16b, v16.16b, v6.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v14.d[0]
	ext	v17.16b, v4.16b, v14.16b, #4
	eor3	v15.16b, v11.16b, v5.16b, v6.16b
	ext	v5.16b, v3.16b, v14.16b, #12
	mov	w8, v15.s[3]
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v5.16b, v16.16b, v5.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v15.d[0]
	ext	v17.16b, v4.16b, v15.16b, #4
	eor3	v1.16b, v1.16b, v7.16b, v5.16b
	movi	v7.4s, #31
	eor3	v22.16b, v2.16b, v5.16b, v7.16b
	ext	v7.16b, v3.16b, v15.16b, #12
	dup	v18.4s, v22.s[3]
	aese	v18.16b, v19.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v7.16b, v16.16b, v7.16b, v17.16b
	ext	v16.16b, v4.16b, v22.16b, #4
	eor3	v23.16b, v13.16b, v6.16b, v7.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v22.d[0]
	ext	v6.16b, v3.16b, v22.16b, #12
	mov	w8, v23.s[3]
	stp	q23, q21, [sp, #80]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v19.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v6.16b, v7.16b, v6.16b, v16.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v23.d[0]
	ext	v16.16b, v4.16b, v23.16b, #4
	eor3	v2.16b, v2.16b, v5.16b, v6.16b
	movi	v5.4s, #63
	eor3	v24.16b, v1.16b, v6.16b, v5.16b
	ext	v5.16b, v3.16b, v23.16b, #12
	dup	v17.4s, v24.s[3]
	ext	v3.16b, v3.16b, v24.16b, #12
	ext	v4.16b, v4.16b, v24.16b, #4
	stur	q24, [x29, #-144]
	aese	v17.16b, v19.16b
	dup	v17.4s, v17.s[0]
	eor3	v5.16b, v17.16b, v7.16b, v5.16b
	eor3	v25.16b, v5.16b, v16.16b, v23.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v24.d[0]
	mov	w8, v25.s[3]
	ror	w8, w8, #8
	dup	v7.4s, w8
	mov	x8, #-4467570830351532032
	aese	v7.16b, v19.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v3.16b, v5.16b, v3.16b, v4.16b
	movi	v4.4s, #127
	eor3	v26.16b, v2.16b, v3.16b, v4.16b
	movi	v2.2d, #0000000000000000
	aese	v2.16b, v31.16b
	aesmc	v2.16b, v2.16b
	eor3	v1.16b, v1.16b, v6.16b, v3.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	stp	q26, q25, [sp, #48]
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v12.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v25.16b
	eor3	v1.16b, v1.16b, v4.16b, v2.16b
	rev64	v1.16b, v1.16b
	ext	v1.16b, v1.16b, v1.16b, #8
	ushr	v2.2d, v1.2d, #63
	add	v1.2d, v1.2d, v1.2d
	ext	v3.16b, v2.16b, v2.16b, #8
	mov	v2.d[0], v0.d[0]
	shl	v0.2d, v2.2d, #63
	eor3	v0.16b, v3.16b, v1.16b, v0.16b
	shl	v1.2d, v2.2d, #62
	shl	v2.2d, v2.2d, #57
	eor3	v29.16b, v0.16b, v1.16b, v2.16b
	dup	v0.2d, v29.d[0]
	pmull	v3.1q, v29.1d, v29.1d
	pmull2	v5.1q, v29.2d, v29.2d
	fmov	x24, d29
	mov	x23, v29.d[1]
	pmull2	v1.1q, v0.2d, v29.2d
	pmull2	v2.1q, v29.2d, v0.2d
	eor	v1.16b, v2.16b, v1.16b
	movi	v2.2d, #0000000000000000
	mov	v2.d[0], v1.d[1]
	zip1	v1.2d, v19.2d, v1.2d
	eor	v3.16b, v1.16b, v3.16b
	fmov	d1, x8
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull	v4.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v4.16b, v5.16b, v4.16b
	eor3	v28.16b, v2.16b, v4.16b, v3.16b
	dup	v3.2d, v28.d[0]
	pmull	v5.1q, v28.1d, v28.1d
	pmull2	v6.1q, v28.2d, v28.2d
	fmov	x25, d28
	pmull2	v2.1q, v3.2d, v28.2d
	pmull2	v4.1q, v28.2d, v3.2d
	pmull2	v3.1q, v3.2d, v29.2d
	mov	x14, v28.d[1]
	eor	v2.16b, v4.16b, v2.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v2.d[1]
	zip1	v2.2d, v19.2d, v2.2d
	eor	v2.16b, v2.16b, v5.16b
	ext	v5.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v1.1d
	eor	v2.16b, v5.16b, v2.16b
	pmull	v5.1q, v2.1d, v1.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v16.16b, v4.16b, v5.16b, v2.16b
	dup	v2.2d, v16.d[0]
	pmull	v6.1q, v16.1d, v16.1d
	pmull2	v7.1q, v16.2d, v16.2d
	fmov	x27, d16
	mov	x15, v16.d[1]
	pmull2	v4.1q, v2.2d, v16.2d
	pmull2	v5.1q, v16.2d, v2.2d
	pmull2	v2.1q, v2.2d, v29.2d
	eor	v4.16b, v5.16b, v4.16b
	zip1	v5.2d, v19.2d, v4.2d
	eor	v5.16b, v5.16b, v6.16b
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v1.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v1.1d
	eor	v6.16b, v7.16b, v6.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[0], v4.d[1]
	ext	v4.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v28.1d, v29.1d
	eor3	v27.16b, v6.16b, v7.16b, v4.16b
	pmull2	v4.1q, v28.2d, v0.2d
	pmull2	v6.1q, v28.2d, v29.2d
	eor	v3.16b, v4.16b, v3.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v3.d[1]
	zip1	v3.2d, v19.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v6.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v6.d[0]
	pmull	v5.1q, v6.1d, v6.1d
	fmov	x2, d6
	mov	x0, v6.d[1]
	str	q6, [sp, #464]
	pmull2	v4.1q, v3.2d, v6.2d
	pmull2	v3.1q, v6.2d, v3.2d
	pmull2	v6.1q, v6.2d, v6.2d
	eor	v3.16b, v3.16b, v4.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v3.d[1]
	zip1	v3.2d, v19.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	movi	v6.2d, #0000000000000000
	eor3	v7.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v7.d[0]
	pmull2	v4.1q, v7.2d, v0.2d
	pmull	v5.1q, v7.1d, v29.1d
	pmull2	v0.1q, v16.2d, v0.2d
	fmov	x26, d7
	mov	x18, v7.d[1]
	stp	q7, q16, [sp, #480]
	pmull2	v3.1q, v3.2d, v29.2d
	eor	v0.16b, v0.16b, v2.16b
	eor	v3.16b, v4.16b, v3.16b
	zip1	v2.2d, v19.2d, v0.2d
	zip1	v4.2d, v19.2d, v3.2d
	mov	v6.d[0], v3.d[1]
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v3.1q, v4.1d, v1.1d
	pmull2	v4.1q, v7.2d, v29.2d
	eor	v3.16b, v4.16b, v3.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v0.d[1]
	eor3	v3.16b, v6.16b, v3.16b, v5.16b
	str	q3, [sp, #448]
	pmull	v3.1q, v16.1d, v29.1d
	eor	v2.16b, v2.16b, v3.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v1.1d
	eor	v2.16b, v3.16b, v2.16b
	pmull	v0.1q, v2.1d, v1.1d
	pmull2	v1.1q, v16.2d, v29.2d
	ext	v3.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v1.16b, v0.16b
	eor3	v8.16b, v4.16b, v0.16b, v3.16b
	cbz	x4, .LBB1_19
	subs	x19, x4, #128
	stp	q15, q14, [x29, #-256]
	stur	q22, [x29, #-160]
	stp	q13, q12, [x29, #-224]
	stp	q11, q10, [x29, #-192]
	b.lo	.LBB1_11
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	fmov	d23, x14
	mov	v30.16b, v8.16b
	mov	v14.16b, v28.16b
	rev64	v6.16b, v1.16b
	ldp	q17, q18, [x3, #96]
	rev64	v1.16b, v18.16b
	rev64	v19.16b, v3.16b
	ldr	q24, [sp, #496]
	ldp	q4, q16, [x3, #64]
	rev64	v3.16b, v16.16b
	add	x3, x3, #128
	rev64	v7.16b, v2.16b
	rev64	v2.16b, v17.16b
	pmull2	v17.1q, v29.2d, v1.2d
	pmull	v18.1q, v29.1d, v1.1d
	rev64	v5.16b, v0.16b
	dup	v0.2d, x24
	rev64	v4.16b, v4.16b
	eor	v17.16b, v18.16b, v17.16b
	fmov	d18, x23
	pmull2	v21.1q, v28.2d, v2.2d
	pmull	v22.1q, v28.1d, v2.1d
	pmull2	v16.1q, v0.2d, v1.2d
	eor3	v17.16b, v17.16b, v21.16b, v22.16b
	ldr	q22, [sp, #464]
	pmull	v18.1q, v18.1d, v1.1d
	dup	v1.2d, x25
	pmull2	v20.1q, v1.2d, v2.2d
	pmull	v2.1q, v23.1d, v2.1d
	fmov	d23, x0
	eor	v18.16b, v2.16b, v18.16b
	dup	v2.2d, x2
	eor	v16.16b, v20.16b, v16.16b
	pmull2	v21.1q, v22.2d, v3.2d
	pmull	v22.1q, v22.1d, v3.1d
	pmull	v23.1q, v23.1d, v3.1d
	eor3	v17.16b, v17.16b, v21.16b, v22.16b
	pmull2	v22.1q, v24.2d, v4.2d
	pmull2	v20.1q, v2.2d, v3.2d
	dup	v3.2d, x27
	pmull2	v21.1q, v3.2d, v4.2d
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	fmov	d21, x15
	pmull	v20.1q, v24.1d, v4.1d
	eor3	v17.16b, v17.16b, v22.16b, v20.16b
	pmull	v4.1q, v21.1d, v4.1d
	pmull	v21.1q, v8.1d, v19.1d
	eor3	v18.16b, v18.16b, v23.16b, v4.16b
	dup	v4.2d, v8.d[0]
	ldr	q23, [sp, #480]
	pmull2	v20.1q, v4.2d, v19.2d
	pmull2	v4.1q, v8.2d, v19.2d
	dup	v19.2d, v19.d[0]
	eor3	v17.16b, v17.16b, v4.16b, v21.16b
	dup	v4.2d, x26
	pmull2	v19.1q, v8.2d, v19.2d
	ldr	q8, [sp, #448]
	pmull2	v22.1q, v23.2d, v7.2d
	pmull	v23.1q, v23.1d, v7.1d
	pmull2	v21.1q, v4.2d, v7.2d
	eor3	v17.16b, v17.16b, v22.16b, v23.16b
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	fmov	d20, x18
	pmull	v21.1q, v27.1d, v5.1d
	pmull	v7.1q, v20.1d, v7.1d
	pmull	v20.1q, v8.1d, v6.1d
	eor3	v7.16b, v18.16b, v19.16b, v7.16b
	pmull2	v19.1q, v8.2d, v6.2d
	dup	v18.2d, v8.d[0]
	eor3	v19.16b, v17.16b, v19.16b, v20.16b
	dup	v17.2d, v27.d[0]
	pmull2	v18.1q, v18.2d, v6.2d
	dup	v6.2d, v6.d[0]
	pmull2	v20.1q, v27.2d, v5.2d
	pmull2	v17.1q, v17.2d, v5.2d
	dup	v5.2d, v5.d[0]
	pmull2	v6.1q, v8.2d, v6.2d
	pmull2	v5.1q, v27.2d, v5.2d
	eor3	v17.16b, v16.16b, v18.16b, v17.16b
	eor3	v18.16b, v19.16b, v20.16b, v21.16b
	eor3	v16.16b, v7.16b, v6.16b, v5.16b
	cmp	x19, #128
	b.lo	.LBB1_10
	ldp	q11, q15, [sp, #480]
	ldr	q13, [sp, #464]
	mov	x13, #-4467570830351532032
	fmov	d7, x23
	fmov	x8, d30
	mov	x9, v30.d[1]
	movi	v5.2d, #0000000000000000
	fmov	d6, x13
	fmov	x10, d8
	mov	x11, v8.d[1]
	fmov	x12, d27
	mov	x13, v27.d[1]
	.p2align	5, , 16
.LBB1_9:
	mov	v12.16b, v27.16b
	zip1	v27.2d, v5.2d, v18.2d
	ldp	q19, q20, [x3]
	movi	v28.2d, #0000000000000000
	mov	v28.d[0], v18.d[1]
	ldp	q21, q22, [x3, #32]
	mov	v10.16b, v29.16b
	sub	x19, x19, #128
	eor	v17.16b, v27.16b, v17.16b
	ldp	q23, q24, [x3, #64]
	ldp	q25, q26, [x3, #96]
	add	x3, x3, #128
	pmull	v18.1q, v17.1d, v6.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	eor	v17.16b, v17.16b, v18.16b
	pmull	v18.1q, v17.1d, v6.1d
	ext	v27.16b, v17.16b, v17.16b, #8
	rev64	v17.16b, v19.16b
	rev64	v19.16b, v21.16b
	rev64	v21.16b, v23.16b
	rev64	v23.16b, v25.16b
	eor3	v16.16b, v16.16b, v28.16b, v18.16b
	ext	v18.16b, v17.16b, v17.16b, #8
	rev64	v17.16b, v20.16b
	rev64	v20.16b, v22.16b
	rev64	v22.16b, v24.16b
	rev64	v24.16b, v26.16b
	pmull	v28.1q, v14.1d, v23.1d
	pmull2	v25.1q, v29.2d, v24.2d
	pmull	v26.1q, v29.1d, v24.1d
	fmov	d29, x14
	eor3	v16.16b, v18.16b, v16.16b, v27.16b
	pmull2	v18.1q, v0.2d, v24.2d
	pmull2	v27.1q, v14.2d, v23.2d
	pmull	v24.1q, v7.1d, v24.1d
	eor	v25.16b, v26.16b, v25.16b
	pmull2	v26.1q, v1.2d, v23.2d
	pmull	v23.1q, v29.1d, v23.1d
	mov	v29.16b, v10.16b
	eor	v18.16b, v26.16b, v18.16b
	eor3	v25.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v13.2d, v22.2d
	pmull	v27.1q, v13.1d, v22.1d
	fmov	d28, x0
	eor	v23.16b, v23.16b, v24.16b
	pmull2	v24.1q, v2.2d, v22.2d
	eor3	v25.16b, v25.16b, v26.16b, v27.16b
	pmull2	v26.1q, v3.2d, v21.2d
	pmull2	v27.1q, v15.2d, v21.2d
	pmull	v22.1q, v28.1d, v22.1d
	eor3	v18.16b, v18.16b, v24.16b, v26.16b
	fmov	d26, x15
	pmull	v24.1q, v15.1d, v21.1d
	eor3	v24.16b, v25.16b, v27.16b, v24.16b
	fmov	d27, x18
	pmull	v25.1q, v30.1d, v20.1d
	pmull	v21.1q, v26.1d, v21.1d
	fmov	d26, x9
	eor3	v21.16b, v23.16b, v22.16b, v21.16b
	dup	v22.2d, x8
	pmull2	v23.1q, v30.2d, v20.2d
	eor3	v23.16b, v24.16b, v23.16b, v25.16b
	pmull2	v24.1q, v4.2d, v19.2d
	pmull2	v25.1q, v11.2d, v19.2d
	pmull2	v22.1q, v22.2d, v20.2d
	pmull	v20.1q, v26.1d, v20.1d
	pmull	v26.1q, v11.1d, v19.1d
	pmull	v19.1q, v27.1d, v19.1d
	mov	v27.16b, v12.16b
	eor3	v18.16b, v18.16b, v22.16b, v24.16b
	eor3	v22.16b, v23.16b, v25.16b, v26.16b
	eor3	v19.16b, v21.16b, v20.16b, v19.16b
	pmull2	v21.1q, v8.2d, v17.2d
	pmull	v23.1q, v8.1d, v17.1d
	dup	v20.2d, x10
	fmov	d24, x11
	eor3	v21.16b, v22.16b, v21.16b, v23.16b
	fmov	d22, x13
	dup	v23.2d, x12
	pmull2	v20.1q, v20.2d, v17.2d
	pmull	v24.1q, v24.1d, v17.1d
	pmull	v17.1q, v27.1d, v16.1d
	pmull	v22.1q, v22.1d, v16.1d
	pmull2	v23.1q, v23.2d, v16.2d
	pmull2	v16.1q, v12.2d, v16.2d
	eor3	v17.16b, v18.16b, v20.16b, v17.16b
	eor3	v18.16b, v21.16b, v22.16b, v23.16b
	eor3	v16.16b, v19.16b, v24.16b, v16.16b
	cmp	x19, #127
	b.hi	.LBB1_9
.LBB1_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v18.2d
	mov	x8, #-4467570830351532032
	ldp	q22, q24, [x29, #-160]
	ldp	q25, q23, [sp, #64]
	mov	v0.d[0], v18.d[1]
	mov	v28.16b, v14.16b
	mov	v8.16b, v30.16b
	fmov	d2, x8
	ldr	q26, [sp, #48]
	ldur	q20, [x29, #-128]
	eor	v1.16b, v1.16b, v17.16b
	ldr	q21, [sp, #96]
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v16.16b, v0.16b, v2.16b
	eor	v19.16b, v1.16b, v0.16b
	str	x2, [sp, #8]
	mov	x28, x4
	cmp	x19, #16
	b.hs	.LBB1_12
	b	.LBB1_14
.LBB1_11:
	mov	x19, x4
	str	x2, [sp, #8]
	mov	x28, x4
	cmp	x4, #16
	b.lo	.LBB1_14
.LBB1_12:
	fmov	d0, x23
	movi	v2.2d, #0000000000000000
	dup	v1.2d, x24
	fmov	d3, x8
	.p2align	5, , 16
.LBB1_13:
	ldr	q4, [x3], #16
	movi	v16.2d, #0000000000000000
	sub	x19, x19, #16
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v19.16b
	pmull	v6.1q, v0.1d, v4.1d
	pmull2	v7.1q, v1.2d, v4.2d
	pmull	v5.1q, v29.1d, v4.1d
	pmull2	v4.1q, v29.2d, v4.2d
	eor	v6.16b, v7.16b, v6.16b
	zip1	v7.2d, v2.2d, v6.2d
	mov	v16.d[0], v6.d[1]
	eor	v5.16b, v7.16b, v5.16b
	pmull	v6.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v6.16b
	pmull	v6.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v4.16b, v6.16b, v4.16b
	eor3	v19.16b, v16.16b, v4.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB1_13
.LBB1_14:
	cbz	x19, .LBB1_18
	mov	w8, #16
	str	x0, [sp, #304]
	stp	q9, q19, [sp, #16]
	mov	x21, x24
	mov	x22, x7
	mov	w1, wzr
	mov	x24, x6
	mov	x20, x3
	sub	x2, x8, x19
	sub	x8, x29, #96
	stp	q8, q28, [sp, #368]
	str	x18, [sp, #320]
	str	x15, [sp, #352]
	add	x0, x8, x19
	str	x14, [sp, #336]
	stp	q27, q31, [sp, #400]
	str	q29, [sp, #432]
	str	x5, [sp, #288]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	mov	x6, x24
	cbz	x24, .LBB1_28
	ldr	q29, [sp, #432]
	ldr	q1, [sp, #32]
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.lo	.LBB1_21
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	mov	x8, #-4467570830351532032
	ldp	q24, q20, [x29, #-144]
	ldp	q27, q31, [sp, #400]
	dup	v3.2d, x21
	ldp	q23, q21, [sp, #80]
	ldr	q9, [sp, #16]
	mov	x24, x21
	mov	x4, x28
	mov	x7, x22
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q11, q10, [x29, #-192]
	eor	v0.16b, v0.16b, v1.16b
	ldp	q13, q12, [x29, #-224]
	ldp	q15, q14, [x29, #-256]
	ldur	q22, [x29, #-160]
	ldp	q26, q25, [sp, #48]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v29.1d, v0.1d
	pmull2	v0.1q, v29.2d, v0.2d
	ldp	q8, q28, [sp, #368]
	ldr	x5, [sp, #288]
	ldr	x14, [sp, #336]
	ldr	x15, [sp, #352]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	ldr	x18, [sp, #320]
	ldr	x0, [sp, #304]
	ldr	x2, [sp, #8]
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v19.16b, v3.16b, v0.16b, v1.16b
	b	.LBB1_22
.LBB1_18:
	ldp	q11, q10, [x29, #-192]
	ldp	q13, q12, [x29, #-224]
	mov	x4, x28
	ldr	x2, [sp, #8]
	ldp	q15, q14, [x29, #-256]
.LBB1_19:
	cbz	x6, .LBB1_38
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.hs	.LBB1_22
.LBB1_21:
	mov	w8, wzr
	b	.LBB1_39
.LBB1_22:
	adrp	x10, .LCPI1_2
	subs	x19, x6, #128
	stp	q31, q29, [sp, #416]
	str	q9, [sp, #16]
	b.lo	.LBB1_27
	adrp	x8, .LCPI1_3
	adrp	x9, .LCPI1_4
	ldp	q16, q17, [x5]
	str	q19, [sp, #32]
	adrp	x11, .LCPI1_11
	stp	q28, q27, [sp, #384]
	ldp	q18, q19, [x5, #32]
	ldr	q1, [x8, :lo12:.LCPI1_3]
	adrp	x8, .LCPI1_5
	ldr	q2, [x9, :lo12:.LCPI1_4]
	adrp	x9, .LCPI1_6
	ldr	q3, [x8, :lo12:.LCPI1_5]
	adrp	x8, .LCPI1_7
	ldr	q4, [x9, :lo12:.LCPI1_6]
	adrp	x9, .LCPI1_8
	ldr	q6, [x8, :lo12:.LCPI1_7]
	adrp	x8, .LCPI1_9
	ldr	q7, [x9, :lo12:.LCPI1_8]
	adrp	x9, .LCPI1_10
	ldr	q5, [x8, :lo12:.LCPI1_9]
	ldr	q0, [x9, :lo12:.LCPI1_10]
	//APP
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v31.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v31.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v31.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v31.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v20.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v20.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v20.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v21.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v21.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v21.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v9.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v11.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v12.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v12.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v13.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v14.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v14.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v14.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v15.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v15.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v15.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v22.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v23.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v23.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v23.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v23.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	//APP
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v24.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v24.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	//NO_APP
	aese	v1.16b, v25.16b
	aese	v2.16b, v25.16b
	mov	v23.16b, v26.16b
	ldp	q20, q21, [x5, #64]
	aese	v3.16b, v25.16b
	aese	v4.16b, v25.16b
	aese	v6.16b, v25.16b
	aese	v7.16b, v25.16b
	add	x9, x5, #128
	add	x8, x7, #128
	eor3	v26.16b, v16.16b, v1.16b, v26.16b
	mov	v16.16b, v25.16b
	eor3	v25.16b, v17.16b, v2.16b, v23.16b
	ldp	q1, q2, [x5, #96]
	eor3	v28.16b, v18.16b, v3.16b, v23.16b
	eor3	v27.16b, v19.16b, v4.16b, v23.16b
	aese	v5.16b, v16.16b
	aese	v0.16b, v16.16b
	eor3	v29.16b, v21.16b, v7.16b, v23.16b
	stp	q26, q25, [x7]
	stp	q28, q27, [x7, #32]
	eor3	v30.16b, v20.16b, v6.16b, v23.16b
	eor3	v9.16b, v1.16b, v5.16b, v23.16b
	eor3	v23.16b, v2.16b, v0.16b, v23.16b
	stp	q30, q29, [x7, #64]
	stp	q9, q23, [x7, #96]
	cmp	x19, #128
	b.lo	.LBB1_29
	ldr	q0, [sp, #400]
	ldr	q6, [sp, #480]
	ldr	q20, [x11, :lo12:.LCPI1_11]
	adrp	x11, .LCPI1_12
	ext	v1.16b, v0.16b, v0.16b, #8
	ldr	q0, [sp, #448]
	ldr	q17, [sp, #96]
	ldr	q18, [sp, #16]
	stur	q22, [x29, #-160]
	ldp	q22, q24, [sp, #64]
	ldp	q5, q19, [sp, #32]
	stp	q15, q14, [x29, #-256]
	stp	q13, q12, [x29, #-224]
	stp	q11, q10, [x29, #-192]
	str	q8, [sp, #368]
	ext	v0.16b, v0.16b, v0.16b, #8
	stp	q0, q1, [sp, #336]
	ext	v1.16b, v6.16b, v6.16b, #8
	ext	v0.16b, v8.16b, v8.16b, #8
	stp	q0, q1, [sp, #304]
	ldr	q0, [sp, #496]
	ext	v1.16b, v0.16b, v0.16b, #8
	ldr	q0, [sp, #464]
	ext	v0.16b, v0.16b, v0.16b, #8
	stp	q0, q1, [sp, #272]
	ldr	q0, [sp, #384]
	ext	v1.16b, v0.16b, v0.16b, #8
	ldr	q0, [sp, #432]
	ext	v0.16b, v0.16b, v0.16b, #8
	stp	q0, q1, [sp, #240]
	ldr	q0, [x11, :lo12:.LCPI1_12]
	adrp	x11, .LCPI1_18
	str	q0, [sp, #224]
	ldr	q0, [x10, :lo12:.LCPI1_2]
	adrp	x10, .LCPI1_13
	str	q0, [sp, #208]
	ldr	q0, [x10, :lo12:.LCPI1_13]
	adrp	x10, .LCPI1_14
	str	q0, [sp, #192]
	ldr	q0, [x10, :lo12:.LCPI1_14]
	adrp	x10, .LCPI1_15
	str	q0, [sp, #176]
	ldr	q0, [x10, :lo12:.LCPI1_15]
	adrp	x10, .LCPI1_16
	str	q0, [sp, #160]
	ldr	q0, [x10, :lo12:.LCPI1_16]
	adrp	x10, .LCPI1_17
	str	q0, [sp, #144]
	ldr	q0, [x10, :lo12:.LCPI1_17]
	mov	x10, #-4467570830351532032
	str	q0, [sp, #128]
	ldr	q0, [x11, :lo12:.LCPI1_18]
	str	q0, [sp, #112]
	.p2align	5, , 16
.LBB1_25:
	ldr	q0, [sp, #224]
	rev32	v14.16b, v20.16b
	ldr	q7, [sp, #352]
	ldur	q21, [x29, #-128]
	add	x11, x9, #128
	add	x12, x8, #128
	sub	x19, x19, #128
	orr	v0.16b, v20.16b, v0.16b
	rev32	v15.16b, v0.16b
	ldr	q0, [sp, #208]
	add	v0.4s, v20.4s, v0.4s
	rev32	v12.16b, v0.16b
	ldr	q0, [sp, #192]
	add	v0.4s, v20.4s, v0.4s
	rev32	v13.16b, v0.16b
	ldr	q0, [sp, #176]
	add	v0.4s, v20.4s, v0.4s
	rev32	v10.16b, v0.16b
	ldr	q0, [sp, #160]
	add	v0.4s, v20.4s, v0.4s
	rev32	v11.16b, v0.16b
	ldr	q0, [sp, #144]
	add	v0.4s, v20.4s, v0.4s
	rev32	v8.16b, v0.16b
	ldr	q0, [sp, #128]
	add	v0.4s, v20.4s, v0.4s
	rev32	v31.16b, v0.16b
	rev64	v0.16b, v26.16b
	ext	v26.16b, v0.16b, v0.16b, #8
	rev64	v0.16b, v25.16b
	ext	v2.16b, v0.16b, v0.16b, #8
	rev64	v0.16b, v28.16b
	eor	v26.16b, v5.16b, v26.16b
	ldp	q5, q16, [sp, #400]
	ext	v3.16b, v0.16b, v0.16b, #8
	rev64	v0.16b, v27.16b
	ext	v4.16b, v0.16b, v0.16b, #8
	rev64	v0.16b, v30.16b
	ext	v30.16b, v0.16b, v0.16b, #8
	rev64	v0.16b, v29.16b
	ext	v1.16b, v0.16b, v0.16b, #8
	rev64	v0.16b, v9.16b
	rev64	v9.16b, v23.16b
	movi	v23.2d, #0000000000000000
	//APP
	aese	v14.16b, v16.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v16.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v16.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v16.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v16.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v16.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v16.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v16.16b
	aesmc	v31.16b, v31.16b
	pmull	v27.1q, v26.1d, v5.1d
	pmull2	v25.1q, v26.2d, v5.2d
	pmull	v28.1q, v26.1d, v7.1d
	pmull2	v29.1q, v26.2d, v7.2d
	eor3	v23.16b, v23.16b, v28.16b, v29.16b
	//NO_APP
	ldr	q7, [sp, #448]
	ldr	q16, [sp, #336]
	//APP
	aese	v14.16b, v21.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v21.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v21.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v21.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v21.16b
	aesmc	v31.16b, v31.16b
	pmull	v28.1q, v2.1d, v7.1d
	pmull2	v26.1q, v2.2d, v7.2d
	pmull	v29.1q, v2.1d, v16.1d
	pmull2	v5.1q, v2.2d, v16.2d
	eor3	v23.16b, v23.16b, v29.16b, v5.16b
	//NO_APP
	eor	v2.16b, v28.16b, v27.16b
	ldr	q7, [sp, #320]
	//APP
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v17.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v17.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v17.16b
	aesmc	v31.16b, v31.16b
	pmull	v5.1q, v3.1d, v6.1d
	pmull2	v28.1q, v3.2d, v6.2d
	pmull	v27.1q, v3.1d, v7.1d
	pmull2	v29.1q, v3.2d, v7.2d
	eor3	v23.16b, v23.16b, v27.16b, v29.16b
	//NO_APP
	ldr	q7, [sp, #304]
	ldr	q16, [sp, #368]
	//APP
	aese	v14.16b, v18.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v18.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v18.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v18.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v18.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v18.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v18.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v18.16b
	aesmc	v31.16b, v31.16b
	pmull	v3.1q, v4.1d, v16.1d
	pmull2	v27.1q, v4.2d, v16.2d
	pmull	v29.1q, v4.1d, v7.1d
	pmull2	v6.1q, v4.2d, v7.2d
	eor3	v23.16b, v23.16b, v29.16b, v6.16b
	//NO_APP
	ldr	q6, [sp, #496]
	ldr	q7, [sp, #288]
	ldp	q21, q16, [x29, #-192]
	eor3	v2.16b, v2.16b, v5.16b, v3.16b
	//APP
	aese	v14.16b, v16.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v16.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v16.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v16.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v16.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v16.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v16.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v16.16b
	aesmc	v31.16b, v31.16b
	pmull	v3.1q, v30.1d, v6.1d
	pmull2	v29.1q, v30.2d, v6.2d
	pmull	v4.1q, v30.1d, v7.1d
	pmull2	v5.1q, v30.2d, v7.2d
	eor3	v23.16b, v23.16b, v4.16b, v5.16b
	//NO_APP
	ldr	q7, [sp, #464]
	ldr	q16, [sp, #272]
	//APP
	aese	v14.16b, v21.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v21.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v21.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v21.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v21.16b
	aesmc	v31.16b, v31.16b
	pmull	v4.1q, v1.1d, v7.1d
	pmull2	v30.1q, v1.2d, v7.2d
	pmull	v5.1q, v1.1d, v16.1d
	pmull2	v6.1q, v1.2d, v16.2d
	eor3	v23.16b, v23.16b, v5.16b, v6.16b
	//NO_APP
	ext	v0.16b, v0.16b, v0.16b, #8
	ldr	q6, [sp, #384]
	ldr	q7, [sp, #256]
	ldp	q21, q16, [x29, #-224]
	eor3	v1.16b, v2.16b, v3.16b, v4.16b
	ext	v2.16b, v9.16b, v9.16b, #8
	//APP
	aese	v14.16b, v16.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v16.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v16.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v16.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v16.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v16.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v16.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v16.16b
	aesmc	v31.16b, v31.16b
	pmull	v3.1q, v0.1d, v6.1d
	pmull2	v9.1q, v0.2d, v6.2d
	pmull	v4.1q, v0.1d, v7.1d
	pmull2	v5.1q, v0.2d, v7.2d
	eor3	v23.16b, v23.16b, v4.16b, v5.16b
	//NO_APP
	ldr	q7, [sp, #432]
	ldr	q16, [sp, #240]
	//APP
	aese	v14.16b, v21.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v21.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v21.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v21.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v21.16b
	aesmc	v31.16b, v31.16b
	pmull	v4.1q, v2.1d, v7.1d
	pmull2	v0.1q, v2.2d, v7.2d
	pmull	v5.1q, v2.1d, v16.1d
	pmull2	v6.1q, v2.2d, v16.2d
	eor3	v23.16b, v23.16b, v5.16b, v6.16b
	//NO_APP
	eor3	v2.16b, v26.16b, v25.16b, v28.16b
	ldr	q6, [sp, #480]
	ldp	q5, q7, [x29, #-256]
	//APP
	aese	v14.16b, v7.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v7.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v7.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v7.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v7.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v7.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v7.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v7.16b
	aesmc	v31.16b, v31.16b
	//NO_APP
	//APP
	aese	v14.16b, v5.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v5.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v5.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v5.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v5.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v5.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v5.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v5.16b
	aesmc	v31.16b, v31.16b
	//NO_APP
	ldp	q7, q5, [x29, #-160]
	//APP
	aese	v14.16b, v7.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v7.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v7.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v7.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v7.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v7.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v7.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v7.16b
	aesmc	v31.16b, v31.16b
	//NO_APP
	//APP
	aese	v14.16b, v24.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v24.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v24.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v24.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v24.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v24.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v24.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v24.16b
	aesmc	v31.16b, v31.16b
	//NO_APP
	//APP
	aese	v14.16b, v5.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v5.16b
	aesmc	v15.16b, v15.16b
	aese	v12.16b, v5.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v5.16b
	aesmc	v13.16b, v13.16b
	aese	v10.16b, v5.16b
	aesmc	v10.16b, v10.16b
	aese	v11.16b, v5.16b
	aesmc	v11.16b, v11.16b
	aese	v8.16b, v5.16b
	aesmc	v8.16b, v8.16b
	aese	v31.16b, v5.16b
	aesmc	v31.16b, v31.16b
	//NO_APP
	aese	v14.16b, v22.16b
	aese	v15.16b, v22.16b
	aese	v12.16b, v22.16b
	aese	v13.16b, v22.16b
	aese	v10.16b, v22.16b
	aese	v11.16b, v22.16b
	aese	v8.16b, v22.16b
	aese	v31.16b, v22.16b
	eor3	v1.16b, v1.16b, v3.16b, v4.16b
	ldp	q3, q4, [x9]
	eor3	v2.16b, v2.16b, v27.16b, v29.16b
	eor3	v2.16b, v2.16b, v30.16b, v9.16b
	eor3	v25.16b, v4.16b, v15.16b, v19.16b
	eor3	v26.16b, v3.16b, v14.16b, v19.16b
	ldp	q3, q4, [x9, #32]
	eor3	v27.16b, v4.16b, v13.16b, v19.16b
	eor3	v28.16b, v3.16b, v12.16b, v19.16b
	ldp	q3, q4, [x9, #64]
	eor3	v29.16b, v4.16b, v11.16b, v19.16b
	movi	v4.2d, #0000000000000000
	zip1	v4.2d, v4.2d, v23.2d
	eor3	v30.16b, v3.16b, v10.16b, v19.16b
	movi	v3.2d, #0000000000000000
	mov	v3.d[0], v23.d[1]
	eor	v1.16b, v4.16b, v1.16b
	eor3	v0.16b, v2.16b, v0.16b, v3.16b
	fmov	d2, x10
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v5.16b, v0.16b, v2.16b, v1.16b
	ldp	q0, q1, [x9, #96]
	stp	q26, q25, [x8]
	stp	q28, q27, [x8, #32]
	stp	q30, q29, [x8, #64]
	mov	x9, x11
	eor3	v23.16b, v1.16b, v31.16b, v19.16b
	eor3	v9.16b, v0.16b, v8.16b, v19.16b
	ldr	q0, [sp, #112]
	stp	q9, q23, [x8, #96]
	mov	x8, x12
	add	v20.4s, v20.4s, v0.4s
	cmp	x19, #127
	b.hi	.LBB1_25
	ldp	q11, q10, [x29, #-192]
	ldp	q13, q12, [x29, #-224]
	mov	x8, x12
	mov	x9, x11
	ldur	q22, [x29, #-160]
	ldr	q24, [sp, #496]
	ldr	q31, [sp, #464]
	ldr	q8, [sp, #368]
	str	q20, [sp, #352]
	str	q5, [sp, #32]
	ldp	q15, q14, [x29, #-256]
	b	.LBB1_30
.LBB1_27:
	ldr	q18, [x10, :lo12:.LCPI1_2]
	mov	x19, x6
	b	.LBB1_31
.LBB1_28:
	ldp	q24, q20, [x29, #-144]
	ldp	q31, q29, [sp, #416]
	mov	x4, x28
	mov	x24, x21
	ldur	q22, [x29, #-160]
	ldp	q23, q21, [sp, #80]
	ldp	q9, q1, [sp, #16]
	ldp	q11, q10, [x29, #-192]
	ldp	q13, q12, [x29, #-224]
	ldp	q15, q14, [x29, #-256]
	ldp	q26, q25, [sp, #48]
	b	.LBB1_36
.LBB1_29:
	ldr	q0, [x11, :lo12:.LCPI1_11]
	ldr	q24, [sp, #496]
	ldr	q31, [sp, #464]
	str	q0, [sp, #352]
.LBB1_30:
	rev64	v5.16b, v29.16b
	ldr	q29, [sp, #432]
	rev64	v0.16b, v26.16b
	rev64	v7.16b, v23.16b
	ldr	q20, [sp, #384]
	rev64	v6.16b, v9.16b
	fmov	d21, x14
	rev64	v4.16b, v30.16b
	mov	x10, #-4467570830351532032
	ldp	q9, q16, [sp, #16]
	rev64	v3.16b, v27.16b
	mov	x7, x8
	mov	x5, x9
	rev64	v2.16b, v28.16b
	rev64	v1.16b, v25.16b
	ldp	q26, q25, [sp, #48]
	ext	v0.16b, v0.16b, v0.16b, #8
	pmull2	v17.1q, v29.2d, v7.2d
	pmull	v18.1q, v29.1d, v7.1d
	eor	v0.16b, v0.16b, v16.16b
	dup	v16.2d, x24
	pmull2	v19.1q, v20.2d, v6.2d
	pmull	v20.1q, v20.1d, v6.1d
	eor	v17.16b, v18.16b, v17.16b
	fmov	d18, x23
	pmull2	v16.1q, v16.2d, v7.2d
	eor3	v17.16b, v17.16b, v19.16b, v20.16b
	pmull2	v19.1q, v31.2d, v5.2d
	pmull	v20.1q, v31.1d, v5.1d
	ldr	q31, [sp, #416]
	pmull	v7.1q, v18.1d, v7.1d
	dup	v18.2d, x25
	eor3	v17.16b, v17.16b, v19.16b, v20.16b
	pmull	v19.1q, v24.1d, v4.1d
	fmov	d20, x15
	pmull2	v18.1q, v18.2d, v6.2d
	pmull	v6.1q, v21.1d, v6.1d
	fmov	d21, x0
	eor	v16.16b, v18.16b, v16.16b
	dup	v18.2d, x2
	pmull2	v18.1q, v18.2d, v5.2d
	pmull	v5.1q, v21.1d, v5.1d
	ldp	q23, q21, [sp, #80]
	eor3	v5.16b, v6.16b, v7.16b, v5.16b
	dup	v6.2d, x27
	pmull2	v7.1q, v24.2d, v4.2d
	eor3	v7.16b, v17.16b, v7.16b, v19.16b
	pmull2	v17.1q, v8.2d, v3.2d
	pmull2	v6.1q, v6.2d, v4.2d
	pmull	v4.1q, v20.1d, v4.1d
	ldp	q24, q20, [x29, #-144]
	eor3	v6.16b, v16.16b, v18.16b, v6.16b
	pmull	v18.1q, v8.1d, v3.1d
	dup	v16.2d, v8.d[0]
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	ldr	q17, [sp, #480]
	pmull2	v16.1q, v16.2d, v3.2d
	dup	v3.2d, v3.d[0]
	fmov	d18, x18
	pmull2	v3.1q, v8.2d, v3.2d
	eor3	v3.16b, v5.16b, v4.16b, v3.16b
	dup	v4.2d, x26
	pmull2	v5.1q, v17.2d, v2.2d
	pmull	v17.1q, v17.1d, v2.1d
	pmull2	v4.1q, v4.2d, v2.2d
	pmull	v2.1q, v18.1d, v2.1d
	ldr	q18, [sp, #352]
	eor3	v5.16b, v7.16b, v5.16b, v17.16b
	ldr	q17, [sp, #448]
	eor3	v4.16b, v6.16b, v16.16b, v4.16b
	pmull2	v7.1q, v17.2d, v1.2d
	pmull	v16.1q, v17.1d, v1.1d
	dup	v6.2d, v17.d[0]
	eor3	v5.16b, v5.16b, v7.16b, v16.16b
	ldr	q16, [sp, #400]
	pmull2	v6.1q, v6.2d, v1.2d
	dup	v1.2d, v1.d[0]
	pmull2	v1.1q, v17.2d, v1.2d
	eor3	v1.16b, v3.16b, v2.16b, v1.16b
	dup	v3.2d, v0.d[0]
	dup	v7.2d, v16.d[0]
	pmull2	v3.1q, v16.2d, v3.2d
	pmull	v2.1q, v16.1d, v0.1d
	pmull2	v7.1q, v7.2d, v0.2d
	eor3	v2.16b, v4.16b, v6.16b, v2.16b
	movi	v4.2d, #0000000000000000
	pmull2	v0.1q, v16.2d, v0.2d
	eor3	v3.16b, v5.16b, v3.16b, v7.16b
	zip1	v5.2d, v4.2d, v3.2d
	mov	v4.d[0], v3.d[1]
	fmov	d3, x10
	eor	v2.16b, v5.16b, v2.16b
	pmull	v5.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v5.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v0.16b, v1.16b, v0.16b, v3.16b
	eor3	v19.16b, v4.16b, v0.16b, v2.16b
.LBB1_31:
	mov	x25, x4
	mov	x26, x6
	cmp	x19, #16
	b.lo	.LBB1_34
	adrp	x8, .LCPI1_12
	fmov	d1, x23
	movi	v3.2d, #0000000000000000
	ldr	q0, [x8, :lo12:.LCPI1_12]
	mov	x8, #-4467570830351532032
	dup	v2.2d, x24
	fmov	d4, x8
	.p2align	5, , 16
.LBB1_33:
	rev32	v6.16b, v18.16b
	ldr	q5, [x5], #16
	movi	v17.2d, #0000000000000000
	add	v18.4s, v18.4s, v0.4s
	sub	x19, x19, #16
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v20.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v21.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v23.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v25.16b
	eor3	v5.16b, v5.16b, v6.16b, v26.16b
	str	q5, [x7], #16
	rev64	v5.16b, v5.16b
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v19.16b
	pmull	v7.1q, v1.1d, v5.1d
	pmull2	v16.1q, v2.2d, v5.2d
	pmull	v6.1q, v29.1d, v5.1d
	pmull2	v5.1q, v29.2d, v5.2d
	eor	v7.16b, v16.16b, v7.16b
	zip1	v16.2d, v3.2d, v7.2d
	mov	v17.d[0], v7.d[1]
	eor	v6.16b, v16.16b, v6.16b
	pmull	v7.1q, v6.1d, v4.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v7.1q, v6.1d, v4.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v5.16b, v7.16b, v5.16b
	eor3	v19.16b, v17.16b, v5.16b, v6.16b
	cmp	x19, #15
	b.hi	.LBB1_33
.LBB1_34:
	cbz	x19, .LBB1_37
	mov	w8, #16
	mov	w1, wzr
	mov	x21, x7
	mov	x22, x5
	stp	q15, q14, [x29, #-256]
	sub	x20, x8, x19
	sub	x8, x29, #96
	stp	q13, q12, [x29, #-224]
	add	x0, x8, x19
	mov	x2, x20
	stur	q22, [x29, #-160]
	stp	q11, q10, [x29, #-192]
	str	q19, [sp, #32]
	str	q18, [sp, #352]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldr	q1, [sp, #352]
	ldr	q2, [sp, #416]
	ldur	q0, [x29, #-96]
	sub	x1, x29, #96
	sub	x22, x29, #96
	mov	x0, x21
	mov	x2, x19
	rev32	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldur	q2, [x29, #-128]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #96]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #16]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [x29, #-192]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [x29, #-224]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [x29, #-256]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldur	q2, [x29, #-160]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #80]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldur	q2, [x29, #-144]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #48]
	aese	v1.16b, v3.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	str	q0, [sp, #496]
	stur	q0, [x29, #-96]
	bl	memcpy
	ldr	q0, [sp, #496]
	add	x0, x22, x19
	mov	w1, wzr
	mov	x2, x20
	stur	q0, [x29, #-112]
	bl	memset
	sub	x0, x29, #96
	sub	x1, x29, #112
	mov	x2, x19
	bl	memcpy
	ldp	q1, q26, [sp, #32]
	ldp	q31, q29, [sp, #416]
	mov	x6, x26
	mov	x4, x25
	ldr	q9, [sp, #16]
	ldr	q21, [sp, #96]
	ldur	q20, [x29, #-128]
	ldur	q0, [x29, #-96]
	ldp	q25, q23, [sp, #64]
	ldp	q22, q24, [x29, #-160]
	ldp	q15, q14, [x29, #-256]
	ldp	q13, q12, [x29, #-224]
	ldp	q11, q10, [x29, #-192]
.LBB1_36:
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	mov	x8, #-4467570830351532032
	ext	v0.16b, v0.16b, v0.16b, #8
	dup	v3.2d, x24
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v29.1d, v0.1d
	pmull2	v0.1q, v29.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v19.16b, v3.16b, v0.16b, v1.16b
	b	.LBB1_38
.LBB1_37:
	mov	x6, x26
	mov	x4, x25
.LBB1_38:
	lsl	x9, x6, #3
	lsl	x10, x4, #3
	fmov	d2, x23
	ldr	x8, [x29, #104]
	dup	v3.2d, x24
	fmov	d0, x9
	mov	x9, #-4467570830351532032
	mov	v0.d[1], x10
	eor	v0.16b, v19.16b, v0.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v29.1d, v0.1d
	pmull2	v0.1q, v29.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x9
	adrp	x9, .LCPI1_19
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldr	q1, [x9, :lo12:.LCPI1_19]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v25.16b
	eor3	v0.16b, v1.16b, v0.16b, v26.16b
	str	q0, [x8]
	mov	w8, #1
.LBB1_39:
	mov	w0, w8
	add	sp, sp, #704
	.cfi_def_cfa wsp, 160
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldp	d15, d14, [sp], #160
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	.cfi_restore b14
	.cfi_restore b15
	ret
.Lfunc_end1:
	.size	haberdashery_aes256gcmdndk_neoversev2_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndk_neoversev2_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.byte	2
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
.LCPI2_1:
	.byte	4
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
.LCPI2_2:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI2_3:
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
	.byte	0
	.byte	0
	.byte	0
.LCPI2_4:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI2_5:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI2_6:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI2_7:
	.word	0
	.word	0
	.word	0
	.word	6
.LCPI2_8:
	.word	0
	.word	0
	.word	0
	.word	7
.LCPI2_9:
	.word	0
	.word	0
	.word	0
	.word	8
.LCPI2_10:
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
	.section	.text.haberdashery_aes256gcmdndk_neoversev2_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_neoversev2_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndk_neoversev2_decrypt,@function
haberdashery_aes256gcmdndk_neoversev2_decrypt:
	.cfi_startproc
	stp	d15, d14, [sp, #-160]!
	.cfi_def_cfa_offset 160
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	stp	x29, x30, [sp, #64]
	str	x28, [sp, #80]
	stp	x26, x25, [sp, #96]
	stp	x24, x23, [sp, #112]
	stp	x22, x21, [sp, #128]
	stp	x20, x19, [sp, #144]
	add	x29, sp, #64
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	.cfi_offset b14, -152
	.cfi_offset b15, -160
	sub	sp, sp, #704
	ldr	x8, [x29, #112]
	cmp	x6, x8
	b.ne	.LBB2_21
	mov	x9, #68719411200
	mov	w8, wzr
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB2_40
	mov	x9, #2305843009213693950
	cmp	x4, x9
	b.hi	.LBB2_40
	cmp	x2, #24
	b.ne	.LBB2_40
	ldr	x9, [x29, #96]
	cmp	x9, #16
	b.ne	.LBB2_40
	movi	v1.4s, #1
	add	x9, x1, #12
	add	x8, x1, #8
	add	x10, x1, #16
	add	x11, x1, #20
	movi	v3.2d, #0000000000000000
	ld1	{ v3.s }[1], [x1], #4
	ldp	q16, q17, [x0]
	movi	v0.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v2.4s, #1
	ld1	{ v1.s }[1], [x9]
	ld1	{ v3.s }[2], [x1]
	ld1	{ v1.s }[2], [x10]
	ld1	{ v3.s }[3], [x8]
	adrp	x8, .LCPI2_0
	ldr	q5, [x8, :lo12:.LCPI2_0]
	adrp	x8, .LCPI2_1
	ld1	{ v1.s }[3], [x11]
	ldr	q7, [x8, :lo12:.LCPI2_1]
	eor	v4.16b, v3.16b, v5.16b
	eor	v6.16b, v3.16b, v7.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	eor	v5.16b, v1.16b, v5.16b
	eor	v7.16b, v1.16b, v7.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #32]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #64]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #96]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #128]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #160]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	ldp	q16, q17, [x0, #192]
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v17.16b
	aese	v4.16b, v17.16b
	aese	v5.16b, v17.16b
	aese	v6.16b, v17.16b
	aese	v7.16b, v17.16b
	aese	v1.16b, v17.16b
	eor	v16.16b, v4.16b, v5.16b
	eor3	v5.16b, v4.16b, v5.16b, v3.16b
	eor	v4.16b, v6.16b, v7.16b
	eor3	v6.16b, v6.16b, v7.16b, v3.16b
	movi	v7.2d, #0000000000000000
	eor3	v21.16b, v4.16b, v3.16b, v1.16b
	eor3	v19.16b, v16.16b, v3.16b, v1.16b
	ext	v3.16b, v0.16b, v0.16b, #4
	mov	w8, v21.s[3]
	ext	v4.16b, v3.16b, v19.16b, #12
	mov	v7.d[1], v19.d[0]
	stur	q21, [x29, #-112]
	ror	w8, w8, #8
	eor	v7.16b, v4.16b, v7.16b
	dup	v4.4s, v0.s[0]
	dup	v17.4s, w8
	ext	v16.16b, v4.16b, v19.16b, #4
	aese	v17.16b, v24.16b
	dup	v17.4s, v17.s[0]
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v21.d[0]
	ext	v17.16b, v4.16b, v21.16b, #4
	eor3	v25.16b, v19.16b, v7.16b, v2.16b
	ext	v2.16b, v3.16b, v21.16b, #12
	eor3	v5.16b, v5.16b, v1.16b, v7.16b
	dup	v18.4s, v25.s[3]
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v2.16b, v16.16b, v2.16b, v17.16b
	ext	v16.16b, v4.16b, v25.16b, #4
	eor3	v31.16b, v6.16b, v1.16b, v2.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v25.d[0]
	ext	v1.16b, v3.16b, v25.16b, #12
	mov	w8, v31.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	stp	q31, q25, [x29, #-192]
	aese	v17.16b, v24.16b
	dup	v17.4s, v17.s[0]
	eor	v6.16b, v6.16b, v17.16b
	ext	v17.16b, v4.16b, v31.16b, #4
	eor3	v1.16b, v6.16b, v1.16b, v16.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v31.d[0]
	eor3	v6.16b, v19.16b, v7.16b, v1.16b
	movi	v7.4s, #3
	eor3	v26.16b, v5.16b, v1.16b, v7.16b
	ext	v7.16b, v3.16b, v31.16b, #12
	dup	v18.4s, v26.s[3]
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v7.16b, v16.16b, v7.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v26.d[0]
	ext	v17.16b, v4.16b, v26.16b, #4
	eor3	v20.16b, v21.16b, v2.16b, v7.16b
	ext	v2.16b, v3.16b, v26.16b, #12
	mov	w8, v20.s[3]
	stp	q20, q19, [sp, #432]
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v2.16b, v16.16b, v2.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v20.d[0]
	ext	v17.16b, v4.16b, v20.16b, #4
	eor3	v1.16b, v5.16b, v1.16b, v2.16b
	movi	v5.4s, #7
	eor3	v30.16b, v6.16b, v2.16b, v5.16b
	ext	v5.16b, v3.16b, v20.16b, #12
	dup	v18.4s, v30.s[3]
	stp	q30, q26, [x29, #-224]
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v5.16b, v16.16b, v5.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v30.d[0]
	ext	v17.16b, v4.16b, v30.16b, #4
	eor3	v10.16b, v31.16b, v7.16b, v5.16b
	ext	v7.16b, v3.16b, v30.16b, #12
	mov	w8, v10.s[3]
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v7.16b, v16.16b, v7.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v10.d[0]
	ext	v17.16b, v4.16b, v10.16b, #4
	eor3	v2.16b, v6.16b, v2.16b, v7.16b
	movi	v6.4s, #15
	eor3	v9.16b, v1.16b, v7.16b, v6.16b
	ext	v6.16b, v3.16b, v10.16b, #12
	dup	v18.4s, v9.s[3]
	stp	q9, q10, [x29, #-256]
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v6.16b, v16.16b, v6.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v9.d[0]
	ext	v17.16b, v4.16b, v9.16b, #4
	eor3	v11.16b, v20.16b, v5.16b, v6.16b
	ext	v5.16b, v3.16b, v9.16b, #12
	mov	w8, v11.s[3]
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v5.16b, v16.16b, v5.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v11.d[0]
	ext	v17.16b, v4.16b, v11.16b, #4
	eor3	v1.16b, v1.16b, v7.16b, v5.16b
	movi	v7.4s, #31
	eor3	v13.16b, v2.16b, v5.16b, v7.16b
	ext	v7.16b, v3.16b, v11.16b, #12
	dup	v18.4s, v13.s[3]
	stp	q13, q11, [sp, #480]
	aese	v18.16b, v24.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v7.16b, v16.16b, v7.16b, v17.16b
	ext	v16.16b, v4.16b, v13.16b, #4
	eor3	v18.16b, v10.16b, v6.16b, v7.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v13.d[0]
	ext	v6.16b, v3.16b, v13.16b, #12
	mov	w8, v18.s[3]
	str	q18, [sp, #416]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v24.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v6.16b, v7.16b, v6.16b, v16.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v18.d[0]
	ext	v16.16b, v4.16b, v18.16b, #4
	eor3	v2.16b, v2.16b, v5.16b, v6.16b
	movi	v5.4s, #63
	eor3	v14.16b, v1.16b, v6.16b, v5.16b
	ext	v5.16b, v3.16b, v18.16b, #12
	dup	v17.4s, v14.s[3]
	ext	v3.16b, v3.16b, v14.16b, #12
	ext	v4.16b, v4.16b, v14.16b, #4
	str	q14, [sp, #464]
	aese	v17.16b, v24.16b
	dup	v17.4s, v17.s[0]
	eor3	v5.16b, v17.16b, v7.16b, v5.16b
	eor3	v22.16b, v5.16b, v16.16b, v18.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v14.d[0]
	mov	w8, v22.s[3]
	ror	w8, w8, #8
	dup	v7.4s, w8
	mov	x8, #-4467570830351532032
	aese	v7.16b, v24.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v3.16b, v5.16b, v3.16b, v4.16b
	movi	v4.4s, #127
	eor3	v23.16b, v2.16b, v3.16b, v4.16b
	movi	v2.2d, #0000000000000000
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	eor3	v1.16b, v1.16b, v6.16b, v3.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	stp	q23, q22, [sp]
	aese	v2.16b, v25.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v31.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v26.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v30.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v18.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v22.16b
	eor3	v1.16b, v1.16b, v4.16b, v2.16b
	rev64	v1.16b, v1.16b
	ext	v1.16b, v1.16b, v1.16b, #8
	ushr	v2.2d, v1.2d, #63
	add	v1.2d, v1.2d, v1.2d
	ext	v3.16b, v2.16b, v2.16b, #8
	mov	v2.d[0], v0.d[0]
	shl	v0.2d, v2.2d, #63
	eor3	v0.16b, v3.16b, v1.16b, v0.16b
	shl	v1.2d, v2.2d, #62
	shl	v2.2d, v2.2d, #57
	eor3	v29.16b, v0.16b, v1.16b, v2.16b
	dup	v0.2d, v29.d[0]
	pmull	v3.1q, v29.1d, v29.1d
	pmull2	v5.1q, v29.2d, v29.2d
	fmov	x22, d29
	mov	x23, v29.d[1]
	pmull2	v1.1q, v0.2d, v29.2d
	pmull2	v2.1q, v29.2d, v0.2d
	eor	v1.16b, v2.16b, v1.16b
	movi	v2.2d, #0000000000000000
	mov	v2.d[0], v1.d[1]
	zip1	v1.2d, v24.2d, v1.2d
	eor	v3.16b, v1.16b, v3.16b
	fmov	d1, x8
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull	v4.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v4.16b, v5.16b, v4.16b
	eor3	v15.16b, v2.16b, v4.16b, v3.16b
	dup	v3.2d, v15.d[0]
	pmull	v5.1q, v15.1d, v15.1d
	pmull2	v6.1q, v15.2d, v15.2d
	pmull2	v2.1q, v3.2d, v15.2d
	pmull2	v4.1q, v15.2d, v3.2d
	pmull2	v3.1q, v3.2d, v29.2d
	eor	v2.16b, v4.16b, v2.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v2.d[1]
	zip1	v2.2d, v24.2d, v2.2d
	eor	v2.16b, v2.16b, v5.16b
	ext	v5.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v1.1d
	eor	v2.16b, v5.16b, v2.16b
	pmull	v5.1q, v2.1d, v1.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v28.16b, v4.16b, v5.16b, v2.16b
	dup	v2.2d, v28.d[0]
	pmull	v6.1q, v28.1d, v28.1d
	pmull2	v7.1q, v28.2d, v28.2d
	pmull2	v4.1q, v2.2d, v28.2d
	pmull2	v5.1q, v28.2d, v2.2d
	pmull2	v2.1q, v2.2d, v29.2d
	eor	v4.16b, v5.16b, v4.16b
	zip1	v5.2d, v24.2d, v4.2d
	eor	v5.16b, v5.16b, v6.16b
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v1.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v1.1d
	eor	v6.16b, v7.16b, v6.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[0], v4.d[1]
	ext	v4.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v15.1d, v29.1d
	eor3	v27.16b, v6.16b, v7.16b, v4.16b
	pmull2	v4.1q, v15.2d, v0.2d
	pmull2	v6.1q, v15.2d, v29.2d
	eor	v3.16b, v4.16b, v3.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v3.d[1]
	zip1	v3.2d, v24.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v8.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v8.d[0]
	pmull	v5.1q, v8.1d, v8.1d
	pmull2	v6.1q, v8.2d, v8.2d
	pmull2	v4.1q, v3.2d, v8.2d
	pmull2	v3.1q, v8.2d, v3.2d
	eor	v3.16b, v3.16b, v4.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v3.d[1]
	zip1	v3.2d, v24.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	movi	v6.2d, #0000000000000000
	eor3	v7.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v7.d[0]
	pmull2	v4.1q, v7.2d, v0.2d
	pmull	v5.1q, v7.1d, v29.1d
	pmull2	v0.1q, v28.2d, v0.2d
	pmull2	v3.1q, v3.2d, v29.2d
	eor	v0.16b, v0.16b, v2.16b
	eor	v3.16b, v4.16b, v3.16b
	zip1	v2.2d, v24.2d, v0.2d
	zip1	v4.2d, v24.2d, v3.2d
	mov	v6.d[0], v3.d[1]
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v3.1q, v4.1d, v1.1d
	pmull2	v4.1q, v7.2d, v29.2d
	eor	v3.16b, v4.16b, v3.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v0.d[1]
	eor3	v3.16b, v6.16b, v3.16b, v5.16b
	str	q3, [sp, #384]
	pmull	v3.1q, v28.1d, v29.1d
	eor	v2.16b, v2.16b, v3.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v1.1d
	eor	v2.16b, v3.16b, v2.16b
	pmull	v0.1q, v2.1d, v1.1d
	pmull2	v1.1q, v28.2d, v29.2d
	ext	v3.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v1.16b, v0.16b
	eor3	v12.16b, v4.16b, v0.16b, v3.16b
	cbz	x4, .LBB2_19
	subs	x19, x4, #128
	str	q7, [sp, #368]
	b.lo	.LBB2_11
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	fmov	x12, d7
	mov	x11, v7.d[1]
	ldp	q17, q18, [x3, #96]
	mov	v24.16b, v7.16b
	mov	v13.16b, v12.16b
	mov	v11.16b, v8.16b
	ldp	q4, q16, [x3, #64]
	fmov	x13, d15
	add	x3, x3, #128
	rev64	v6.16b, v1.16b
	rev64	v1.16b, v18.16b
	mov	x8, v15.d[1]
	rev64	v19.16b, v3.16b
	rev64	v3.16b, v16.16b
	fmov	d23, x8
	fmov	x15, d8
	rev64	v7.16b, v2.16b
	rev64	v2.16b, v17.16b
	pmull2	v17.1q, v29.2d, v1.2d
	pmull	v18.1q, v29.1d, v1.1d
	rev64	v5.16b, v0.16b
	dup	v0.2d, x22
	mov	x10, v8.d[1]
	fmov	x14, d28
	rev64	v4.16b, v4.16b
	eor	v17.16b, v18.16b, v17.16b
	fmov	d18, x23
	pmull2	v21.1q, v15.2d, v2.2d
	pmull	v22.1q, v15.1d, v2.1d
	mov	x9, v28.d[1]
	pmull2	v16.1q, v0.2d, v1.2d
	eor3	v17.16b, v17.16b, v21.16b, v22.16b
	pmull2	v21.1q, v8.2d, v3.2d
	pmull	v22.1q, v8.1d, v3.1d
	pmull	v18.1q, v18.1d, v1.1d
	dup	v1.2d, x13
	eor3	v17.16b, v17.16b, v21.16b, v22.16b
	pmull2	v22.1q, v28.2d, v4.2d
	pmull2	v20.1q, v1.2d, v2.2d
	pmull	v2.1q, v23.1d, v2.1d
	fmov	d23, x10
	eor	v18.16b, v2.16b, v18.16b
	dup	v2.2d, x15
	eor	v16.16b, v20.16b, v16.16b
	pmull	v23.1q, v23.1d, v3.1d
	pmull2	v20.1q, v2.2d, v3.2d
	dup	v3.2d, x14
	pmull2	v21.1q, v3.2d, v4.2d
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	fmov	d21, x9
	pmull	v20.1q, v28.1d, v4.1d
	eor3	v17.16b, v17.16b, v22.16b, v20.16b
	pmull2	v22.1q, v24.2d, v7.2d
	pmull	v4.1q, v21.1d, v4.1d
	pmull	v21.1q, v12.1d, v19.1d
	eor3	v18.16b, v18.16b, v23.16b, v4.16b
	dup	v4.2d, v12.d[0]
	pmull	v23.1q, v24.1d, v7.1d
	pmull2	v20.1q, v4.2d, v19.2d
	pmull2	v4.1q, v12.2d, v19.2d
	dup	v19.2d, v19.d[0]
	eor3	v17.16b, v17.16b, v4.16b, v21.16b
	dup	v4.2d, x12
	pmull2	v19.1q, v12.2d, v19.2d
	ldr	q12, [sp, #384]
	eor3	v17.16b, v17.16b, v22.16b, v23.16b
	pmull2	v21.1q, v4.2d, v7.2d
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	fmov	d20, x11
	pmull	v21.1q, v27.1d, v5.1d
	pmull	v7.1q, v20.1d, v7.1d
	pmull	v20.1q, v12.1d, v6.1d
	eor3	v7.16b, v18.16b, v19.16b, v7.16b
	pmull2	v19.1q, v12.2d, v6.2d
	dup	v18.2d, v12.d[0]
	eor3	v19.16b, v17.16b, v19.16b, v20.16b
	dup	v17.2d, v27.d[0]
	pmull2	v18.1q, v18.2d, v6.2d
	dup	v6.2d, v6.d[0]
	pmull2	v20.1q, v27.2d, v5.2d
	pmull2	v17.1q, v17.2d, v5.2d
	dup	v5.2d, v5.d[0]
	pmull2	v6.1q, v12.2d, v6.2d
	pmull2	v5.1q, v27.2d, v5.2d
	eor3	v17.16b, v16.16b, v18.16b, v17.16b
	eor3	v18.16b, v19.16b, v20.16b, v21.16b
	eor3	v16.16b, v7.16b, v6.16b, v5.16b
	cmp	x19, #128
	b.lo	.LBB2_10
	ldr	q31, [sp, #368]
	mov	x17, #-4467570830351532032
	fmov	d7, x23
	fmov	x12, d13
	mov	x13, v13.d[1]
	movi	v5.2d, #0000000000000000
	fmov	d6, x17
	fmov	x14, d12
	mov	x15, v12.d[1]
	fmov	x16, d27
	mov	x17, v27.d[1]
	.p2align	5, , 16
.LBB2_9:
	mov	v9.16b, v27.16b
	zip1	v27.2d, v5.2d, v18.2d
	ldp	q19, q20, [x3]
	mov	v8.16b, v28.16b
	movi	v28.2d, #0000000000000000
	mov	v28.d[0], v18.d[1]
	ldp	q21, q22, [x3, #32]
	mov	v30.16b, v15.16b
	sub	x19, x19, #128
	eor	v17.16b, v27.16b, v17.16b
	pmull	v18.1q, v17.1d, v6.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	ldp	q23, q24, [x3, #64]
	ldp	q25, q26, [x3, #96]
	add	x3, x3, #128
	eor	v17.16b, v17.16b, v18.16b
	pmull	v18.1q, v17.1d, v6.1d
	ext	v27.16b, v17.16b, v17.16b, #8
	rev64	v17.16b, v19.16b
	rev64	v19.16b, v21.16b
	rev64	v21.16b, v23.16b
	rev64	v23.16b, v25.16b
	eor3	v16.16b, v16.16b, v28.16b, v18.16b
	ext	v18.16b, v17.16b, v17.16b, #8
	rev64	v17.16b, v20.16b
	rev64	v20.16b, v22.16b
	rev64	v22.16b, v24.16b
	rev64	v24.16b, v26.16b
	pmull	v28.1q, v15.1d, v23.1d
	pmull2	v25.1q, v29.2d, v24.2d
	pmull	v26.1q, v29.1d, v24.1d
	eor3	v16.16b, v18.16b, v16.16b, v27.16b
	pmull2	v27.1q, v15.2d, v23.2d
	mov	v15.16b, v29.16b
	fmov	d29, x8
	pmull2	v18.1q, v0.2d, v24.2d
	pmull	v24.1q, v7.1d, v24.1d
	eor	v25.16b, v26.16b, v25.16b
	pmull2	v26.1q, v1.2d, v23.2d
	pmull	v23.1q, v29.1d, v23.1d
	mov	v29.16b, v15.16b
	mov	v15.16b, v30.16b
	eor	v18.16b, v26.16b, v18.16b
	eor3	v25.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v11.2d, v22.2d
	pmull	v27.1q, v11.1d, v22.1d
	fmov	d28, x10
	eor	v23.16b, v23.16b, v24.16b
	pmull2	v24.1q, v2.2d, v22.2d
	eor3	v25.16b, v25.16b, v26.16b, v27.16b
	pmull2	v26.1q, v3.2d, v21.2d
	pmull2	v27.1q, v8.2d, v21.2d
	pmull	v22.1q, v28.1d, v22.1d
	mov	v28.16b, v8.16b
	eor3	v18.16b, v18.16b, v24.16b, v26.16b
	fmov	d26, x9
	pmull	v24.1q, v28.1d, v21.1d
	pmull	v21.1q, v26.1d, v21.1d
	eor3	v24.16b, v25.16b, v27.16b, v24.16b
	fmov	d26, x13
	fmov	d27, x11
	pmull	v25.1q, v13.1d, v20.1d
	eor3	v21.16b, v23.16b, v22.16b, v21.16b
	dup	v22.2d, x12
	pmull2	v23.1q, v13.2d, v20.2d
	eor3	v23.16b, v24.16b, v23.16b, v25.16b
	pmull2	v24.1q, v4.2d, v19.2d
	pmull2	v25.1q, v31.2d, v19.2d
	pmull2	v22.1q, v22.2d, v20.2d
	pmull	v20.1q, v26.1d, v20.1d
	pmull	v26.1q, v31.1d, v19.1d
	pmull	v19.1q, v27.1d, v19.1d
	mov	v27.16b, v9.16b
	eor3	v18.16b, v18.16b, v22.16b, v24.16b
	eor3	v22.16b, v23.16b, v25.16b, v26.16b
	eor3	v19.16b, v21.16b, v20.16b, v19.16b
	pmull2	v21.1q, v12.2d, v17.2d
	pmull	v23.1q, v12.1d, v17.1d
	dup	v20.2d, x14
	fmov	d24, x15
	eor3	v21.16b, v22.16b, v21.16b, v23.16b
	fmov	d22, x17
	dup	v23.2d, x16
	pmull2	v20.1q, v20.2d, v17.2d
	pmull	v24.1q, v24.1d, v17.1d
	pmull	v17.1q, v27.1d, v16.1d
	pmull	v22.1q, v22.1d, v16.1d
	pmull2	v23.1q, v23.2d, v16.2d
	pmull2	v16.1q, v9.2d, v16.2d
	eor3	v17.16b, v18.16b, v20.16b, v17.16b
	eor3	v18.16b, v21.16b, v22.16b, v23.16b
	eor3	v16.16b, v19.16b, v24.16b, v16.16b
	cmp	x19, #127
	b.hi	.LBB2_9
.LBB2_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v18.2d
	mov	x8, #-4467570830351532032
	mov	v0.d[0], v18.d[1]
	ldp	q20, q19, [sp, #432]
	ldr	q18, [sp, #416]
	mov	v8.16b, v11.16b
	mov	v12.16b, v13.16b
	fmov	d2, x8
	ldp	q23, q22, [sp]
	eor	v1.16b, v1.16b, v17.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v16.16b, v0.16b, v2.16b
	eor	v24.16b, v1.16b, v0.16b
	mov	x21, x4
	cmp	x19, #16
	b.hs	.LBB2_12
	b	.LBB2_14
.LBB2_11:
	mov	x19, x4
	mov	x21, x4
	cmp	x4, #16
	b.lo	.LBB2_14
.LBB2_12:
	fmov	d0, x23
	movi	v2.2d, #0000000000000000
	dup	v1.2d, x22
	fmov	d3, x8
	.p2align	5, , 16
.LBB2_13:
	ldr	q4, [x3], #16
	movi	v16.2d, #0000000000000000
	sub	x19, x19, #16
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v24.16b
	pmull	v6.1q, v0.1d, v4.1d
	pmull2	v7.1q, v1.2d, v4.2d
	pmull	v5.1q, v29.1d, v4.1d
	pmull2	v4.1q, v29.2d, v4.2d
	eor	v6.16b, v7.16b, v6.16b
	zip1	v7.2d, v2.2d, v6.2d
	mov	v16.d[0], v6.d[1]
	eor	v5.16b, v7.16b, v5.16b
	pmull	v6.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v6.16b
	pmull	v6.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v4.16b, v6.16b, v4.16b
	eor3	v24.16b, v16.16b, v4.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB2_13
.LBB2_14:
	cbz	x19, .LBB2_18
	mov	w8, #16
	stp	q12, q8, [sp, #288]
	mov	x24, x5
	mov	x25, x7
	mov	w1, wzr
	mov	x26, x6
	mov	x20, x3
	sub	x2, x8, x19
	sub	x8, x29, #80
	stp	q27, q28, [sp, #320]
	add	x0, x8, x19
	str	q15, [sp, #352]
	stur	q24, [x29, #-128]
	str	q29, [sp, #400]
	bl	memset
	sub	x0, x29, #80
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-80]
	mov	x6, x26
	cbz	x26, .LBB2_32
	ldr	q29, [sp, #400]
	ldur	q1, [x29, #-128]
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.lo	.LBB2_21
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	mov	x8, #-4467570830351532032
	ldp	q20, q19, [sp, #432]
	ldp	q31, q25, [x29, #-192]
	dup	v3.2d, x22
	ldp	q30, q26, [x29, #-224]
	ldp	q9, q10, [x29, #-256]
	mov	x7, x25
	mov	x4, x21
	mov	x5, x24
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q13, q11, [sp, #480]
	eor	v0.16b, v0.16b, v1.16b
	ldr	q18, [sp, #416]
	ldr	q14, [sp, #464]
	ldp	q23, q22, [sp]
	ldp	q28, q15, [sp, #336]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v29.1d, v0.1d
	pmull2	v0.1q, v29.2d, v0.2d
	ldp	q8, q27, [sp, #304]
	ldr	q7, [sp, #368]
	ldr	q12, [sp, #288]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v24.16b, v3.16b, v0.16b, v1.16b
	b	.LBB2_22
.LBB2_18:
	ldp	q31, q25, [x29, #-192]
	ldp	q30, q26, [x29, #-224]
	mov	x4, x21
	ldr	q14, [sp, #464]
	ldr	q7, [sp, #368]
	ldp	q9, q10, [x29, #-256]
	ldp	q13, q11, [sp, #480]
.LBB2_19:
	cbz	x6, .LBB2_33
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.hs	.LBB2_22
.LBB2_21:
	mov	w8, wzr
	b	.LBB2_40
.LBB2_22:
	ldr	x19, [x29, #104]
	adrp	x8, .LCPI2_2
	str	q29, [sp, #400]
	cmp	x6, #128
	b.lo	.LBB2_26
	ldr	q0, [sp, #384]
	ext	v1.16b, v27.16b, v27.16b, #8
	mov	v16.16b, v24.16b
	stp	q8, q27, [sp, #304]
	mov	x20, x6
	str	q7, [sp, #368]
	ext	v0.16b, v0.16b, v0.16b, #8
	stp	q0, q1, [sp, #256]
	ext	v1.16b, v7.16b, v7.16b, #8
	ext	v0.16b, v12.16b, v12.16b, #8
	stp	q0, q1, [sp, #224]
	ext	v1.16b, v28.16b, v28.16b, #8
	ext	v0.16b, v8.16b, v8.16b, #8
	stp	q0, q1, [sp, #192]
	ext	v1.16b, v15.16b, v15.16b, #8
	ext	v0.16b, v29.16b, v29.16b, #8
	stp	q0, q1, [sp, #160]
	ldr	q0, [x8, :lo12:.LCPI2_2]
	adrp	x8, .LCPI2_3
	ldr	q1, [x8, :lo12:.LCPI2_3]
	adrp	x8, .LCPI2_4
	stp	q28, q15, [sp, #336]
	str	q12, [sp, #288]
	mov	v8.16b, v0.16b
	stp	q1, q0, [sp, #128]
	ldr	q1, [x8, :lo12:.LCPI2_4]
	adrp	x8, .LCPI2_5
	str	q1, [sp, #112]
	ldr	q1, [x8, :lo12:.LCPI2_5]
	adrp	x8, .LCPI2_6
	str	q1, [sp, #96]
	ldr	q1, [x8, :lo12:.LCPI2_6]
	adrp	x8, .LCPI2_7
	str	q1, [sp, #80]
	ldr	q1, [x8, :lo12:.LCPI2_7]
	adrp	x8, .LCPI2_8
	str	q1, [sp, #64]
	ldr	q1, [x8, :lo12:.LCPI2_8]
	adrp	x8, .LCPI2_9
	str	q1, [sp, #48]
	ldr	q1, [x8, :lo12:.LCPI2_9]
	mov	x8, #-4467570830351532032
	str	q1, [sp, #32]
	.p2align	5, , 16
.LBB2_24:
	ldp	q1, q2, [sp, #128]
	ldp	q4, q3, [sp, #96]
	mov	v25.16b, v8.16b
	add	x9, x5, #128
	add	x10, x19, #128
	sub	x20, x20, #128
	rev32	v24.16b, v25.16b
	ldp	q6, q5, [sp, #64]
	ldr	q7, [sp, #48]
	add	v2.4s, v8.4s, v2.4s
	ldp	q28, q17, [x5]
	ldp	q20, q18, [x5, #32]
	ldp	q30, q29, [x5, #64]
	add	v3.4s, v8.4s, v3.4s
	add	v5.4s, v8.4s, v5.4s
	stur	q18, [x29, #-160]
	orr	v1.16b, v8.16b, v1.16b
	add	v4.4s, v8.4s, v4.4s
	add	v6.4s, v8.4s, v6.4s
	add	v7.4s, v8.4s, v7.4s
	ldp	q8, q31, [x5, #96]
	rev64	v0.16b, v28.16b
	stp	q20, q17, [x29, #-144]
	rev64	v17.16b, v17.16b
	rev32	v13.16b, v3.16b
	rev64	v3.16b, v18.16b
	rev32	v14.16b, v2.16b
	rev32	v11.16b, v5.16b
	mov	x5, x9
	ext	v0.16b, v0.16b, v0.16b, #8
	rev32	v15.16b, v1.16b
	rev32	v10.16b, v6.16b
	rev64	v1.16b, v20.16b
	rev64	v6.16b, v30.16b
	rev32	v12.16b, v4.16b
	rev32	v9.16b, v7.16b
	ext	v4.16b, v17.16b, v17.16b, #8
	rev64	v20.16b, v29.16b
	eor	v2.16b, v16.16b, v0.16b
	movi	v0.2d, #0000000000000000
	ext	v7.16b, v1.16b, v1.16b, #8
	ldp	q21, q16, [sp, #256]
	ldr	q1, [sp, #320]
	//APP
	aese	v24.16b, v19.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v19.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v19.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v19.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v19.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v19.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v19.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v19.16b
	aesmc	v9.16b, v9.16b
	pmull	v17.1q, v2.1d, v1.1d
	pmull2	v26.1q, v2.2d, v1.2d
	pmull	v5.1q, v2.1d, v16.1d
	pmull2	v18.1q, v2.2d, v16.2d
	eor3	v0.16b, v0.16b, v5.16b, v18.16b
	//NO_APP
	ext	v2.16b, v3.16b, v3.16b, #8
	ldp	q27, q16, [sp, #368]
	ldur	q1, [x29, #-112]
	//APP
	aese	v24.16b, v1.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v1.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v1.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v1.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v1.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v1.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v1.16b
	aesmc	v9.16b, v9.16b
	pmull	v18.1q, v4.1d, v16.1d
	pmull2	v5.1q, v4.2d, v16.2d
	pmull	v3.1q, v4.1d, v21.1d
	pmull2	v19.1q, v4.2d, v21.2d
	eor3	v0.16b, v0.16b, v3.16b, v19.16b
	//NO_APP
	ext	v3.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v18.16b, v17.16b
	ldr	q1, [sp, #240]
	ldur	q16, [x29, #-176]
	//APP
	aese	v24.16b, v16.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v16.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v16.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v16.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v16.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v16.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v16.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v16.16b
	aesmc	v9.16b, v9.16b
	pmull	v18.1q, v7.1d, v27.1d
	pmull2	v19.1q, v7.2d, v27.2d
	pmull	v17.1q, v7.1d, v1.1d
	pmull2	v21.1q, v7.2d, v1.2d
	eor3	v0.16b, v0.16b, v17.16b, v21.16b
	//NO_APP
	eor3	v1.16b, v5.16b, v26.16b, v19.16b
	rev64	v17.16b, v31.16b
	ext	v7.16b, v20.16b, v20.16b, #8
	ldr	q16, [sp, #224]
	ldur	q26, [x29, #-192]
	ldr	q27, [sp, #288]
	//APP
	aese	v24.16b, v26.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v26.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v26.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v26.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v26.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v26.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v26.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v26.16b
	aesmc	v9.16b, v9.16b
	pmull	v5.1q, v2.1d, v27.1d
	pmull2	v19.1q, v2.2d, v27.2d
	pmull	v20.1q, v2.1d, v16.1d
	pmull2	v21.1q, v2.2d, v16.2d
	eor3	v0.16b, v0.16b, v20.16b, v21.16b
	//NO_APP
	ldp	q16, q27, [sp, #192]
	ldur	q21, [x29, #-208]
	ldr	q26, [sp, #336]
	rev64	v4.16b, v8.16b
	ext	v2.16b, v4.16b, v4.16b, #8
	eor3	v4.16b, v6.16b, v18.16b, v5.16b
	//APP
	aese	v24.16b, v21.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v21.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v21.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v21.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v21.16b
	aesmc	v9.16b, v9.16b
	pmull	v5.1q, v3.1d, v26.1d
	pmull2	v6.1q, v3.2d, v26.2d
	pmull	v18.1q, v3.1d, v27.1d
	pmull2	v20.1q, v3.2d, v27.2d
	eor3	v0.16b, v0.16b, v18.16b, v20.16b
	//NO_APP
	eor3	v1.16b, v1.16b, v19.16b, v6.16b
	ldr	q20, [sp, #432]
	ext	v3.16b, v17.16b, v17.16b, #8
	ldr	q21, [sp, #304]
	//APP
	aese	v24.16b, v20.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v20.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v20.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v20.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v20.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v20.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v20.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v20.16b
	aesmc	v9.16b, v9.16b
	pmull	v6.1q, v7.1d, v21.1d
	pmull2	v17.1q, v7.2d, v21.2d
	pmull	v18.1q, v7.1d, v16.1d
	pmull2	v19.1q, v7.2d, v16.2d
	eor3	v0.16b, v0.16b, v18.16b, v19.16b
	//NO_APP
	ldur	q26, [x29, #-224]
	ldp	q16, q27, [sp, #160]
	ldr	q21, [sp, #352]
	ldr	q19, [sp, #448]
	eor3	v4.16b, v4.16b, v5.16b, v6.16b
	//APP
	aese	v24.16b, v26.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v26.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v26.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v26.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v26.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v26.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v26.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v26.16b
	aesmc	v9.16b, v9.16b
	pmull	v5.1q, v2.1d, v21.1d
	pmull2	v6.1q, v2.2d, v21.2d
	pmull	v7.1q, v2.1d, v27.1d
	pmull2	v18.1q, v2.2d, v27.2d
	eor3	v0.16b, v0.16b, v7.16b, v18.16b
	//NO_APP
	ldp	q26, q18, [sp, #400]
	eor3	v1.16b, v1.16b, v17.16b, v6.16b
	ldur	q21, [x29, #-240]
	//APP
	aese	v24.16b, v21.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v21.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v21.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v21.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v21.16b
	aesmc	v9.16b, v9.16b
	pmull	v2.1q, v3.1d, v26.1d
	pmull2	v6.1q, v3.2d, v26.2d
	pmull	v7.1q, v3.1d, v16.1d
	pmull2	v17.1q, v3.2d, v16.2d
	eor3	v0.16b, v0.16b, v7.16b, v17.16b
	//NO_APP
	movi	v3.2d, #0000000000000000
	mov	v3.d[0], v0.d[1]
	eor3	v2.16b, v4.16b, v5.16b, v2.16b
	eor3	v1.16b, v1.16b, v6.16b, v3.16b
	movi	v3.2d, #0000000000000000
	zip1	v0.2d, v3.2d, v0.2d
	fmov	d3, x8
	eor	v0.16b, v0.16b, v2.16b
	pmull	v2.1q, v0.1d, v3.1d
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v2.16b
	pmull	v2.1q, v0.1d, v3.1d
	ext	v0.16b, v0.16b, v0.16b, #8
	ldur	q3, [x29, #-160]
	eor3	v16.16b, v1.16b, v2.16b, v0.16b
	ldur	q0, [x29, #-256]
	//APP
	aese	v24.16b, v0.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v0.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v0.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v0.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v0.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v0.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v0.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v0.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	ldp	q0, q1, [sp, #480]
	//APP
	aese	v24.16b, v1.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v1.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v1.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v1.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v1.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v1.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v1.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	ldp	q2, q1, [x29, #-144]
	//APP
	aese	v24.16b, v0.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v0.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v0.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v0.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v0.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v0.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v0.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v0.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	//APP
	aese	v24.16b, v18.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v18.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v18.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v18.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v18.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v18.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v18.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v18.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	ldr	q0, [sp, #464]
	//APP
	aese	v24.16b, v0.16b
	aesmc	v24.16b, v24.16b
	aese	v15.16b, v0.16b
	aesmc	v15.16b, v15.16b
	aese	v14.16b, v0.16b
	aesmc	v14.16b, v14.16b
	aese	v13.16b, v0.16b
	aesmc	v13.16b, v13.16b
	aese	v12.16b, v0.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v0.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v0.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v0.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	aese	v24.16b, v22.16b
	aese	v15.16b, v22.16b
	aese	v10.16b, v22.16b
	aese	v9.16b, v22.16b
	aese	v14.16b, v22.16b
	aese	v13.16b, v22.16b
	aese	v12.16b, v22.16b
	aese	v11.16b, v22.16b
	eor3	v0.16b, v23.16b, v24.16b, v28.16b
	eor3	v6.16b, v23.16b, v10.16b, v8.16b
	eor3	v4.16b, v23.16b, v12.16b, v30.16b
	eor3	v5.16b, v23.16b, v11.16b, v29.16b
	eor3	v1.16b, v23.16b, v15.16b, v1.16b
	eor3	v3.16b, v23.16b, v13.16b, v3.16b
	stp	q0, q1, [x19]
	eor3	v0.16b, v23.16b, v9.16b, v31.16b
	eor3	v2.16b, v23.16b, v14.16b, v2.16b
	stp	q2, q3, [x19, #32]
	stp	q4, q5, [x19, #64]
	stp	q6, q0, [x19, #96]
	ldr	q0, [sp, #32]
	mov	x19, x10
	add	v8.4s, v25.4s, v0.4s
	cmp	x20, #127
	b.hi	.LBB2_24
	ldp	q31, q25, [x29, #-192]
	ldp	q30, q26, [x29, #-224]
	mov	v24.16b, v16.16b
	mov	x19, x10
	mov	x5, x9
	ldr	q14, [sp, #464]
	ldr	q29, [sp, #400]
	ldp	q9, q10, [x29, #-256]
	ldp	q13, q11, [sp, #480]
	b	.LBB2_27
.LBB2_26:
	ldr	q8, [x8, :lo12:.LCPI2_2]
	mov	x20, x6
.LBB2_27:
	cmp	x20, #16
	b.lo	.LBB2_30
	mov	x8, #-4467570830351532032
	fmov	d0, x23
	movi	v2.2d, #0000000000000000
	dup	v1.2d, x22
	fmov	d3, x8
	adrp	x8, .LCPI2_3
	ldr	q4, [x8, :lo12:.LCPI2_3]
	.p2align	5, , 16
.LBB2_29:
	ldur	q7, [x29, #-112]
	rev32	v6.16b, v8.16b
	ldr	q5, [x5], #16
	movi	v17.2d, #0000000000000000
	add	v8.4s, v8.4s, v4.4s
	sub	x20, x20, #16
	aese	v6.16b, v19.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v7.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v25.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v26.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v20.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v30.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v18.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v22.16b
	eor3	v6.16b, v23.16b, v6.16b, v5.16b
	rev64	v5.16b, v5.16b
	ext	v5.16b, v5.16b, v5.16b, #8
	str	q6, [x19], #16
	eor	v5.16b, v5.16b, v24.16b
	pmull	v7.1q, v0.1d, v5.1d
	pmull2	v16.1q, v1.2d, v5.2d
	pmull	v6.1q, v29.1d, v5.1d
	pmull2	v5.1q, v29.2d, v5.2d
	eor	v7.16b, v16.16b, v7.16b
	zip1	v16.2d, v2.2d, v7.2d
	mov	v17.d[0], v7.d[1]
	eor	v6.16b, v16.16b, v6.16b
	pmull	v7.1q, v6.1d, v3.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v7.1q, v6.1d, v3.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v5.16b, v7.16b, v5.16b
	eor3	v24.16b, v17.16b, v5.16b, v6.16b
	cmp	x20, #15
	b.hi	.LBB2_29
.LBB2_30:
	stur	q24, [x29, #-128]
	mov	x24, x4
	mov	x25, x6
	cbz	x20, .LBB2_34
	mov	w8, #16
	mov	w1, wzr
	mov	x26, x7
	mov	x21, x5
	stur	q8, [x29, #-144]
	sub	x2, x8, x20
	sub	x8, x29, #80
	add	x0, x8, x20
	bl	memset
	sub	x0, x29, #80
	mov	x1, x21
	mov	x2, x20
	bl	memcpy
	ldur	q0, [x29, #-144]
	ldr	q1, [sp, #448]
	ldur	q2, [x29, #-80]
	sub	x1, x29, #80
	mov	x0, x19
	mov	x2, x20
	rev32	v0.16b, v0.16b
	stur	q2, [x29, #-160]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-112]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [x29, #-192]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-208]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #432]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [x29, #-240]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-256]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #480]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #416]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #464]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp]
	aese	v0.16b, v3.16b
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	stur	q0, [x29, #-80]
	bl	memcpy
	ldur	q1, [x29, #-160]
	mov	x7, x26
	b	.LBB2_35
.LBB2_32:
	ldur	q1, [x29, #-128]
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	ldp	q29, q18, [sp, #400]
	mov	x8, #-4467570830351532032
	ldp	q20, q19, [sp, #432]
	dup	v3.2d, x22
	ldp	q31, q25, [x29, #-192]
	ldp	q30, q26, [x29, #-224]
	mov	x4, x21
	mov	x7, x25
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q9, q10, [x29, #-256]
	eor	v0.16b, v0.16b, v1.16b
	ldp	q13, q11, [sp, #480]
	ldr	q14, [sp, #464]
	ldp	q23, q22, [sp]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v29.1d, v0.1d
	pmull2	v0.1q, v29.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v24.16b, v3.16b, v0.16b, v1.16b
.LBB2_33:
	ldr	q5, [x7]
	b	.LBB2_39
.LBB2_34:
	movi	v1.2d, #0000000000000000
.LBB2_35:
	ldr	q0, [x7]
	sub	x0, x29, #80
	sub	x1, x29, #96
	stur	q1, [x29, #-96]
	stp	xzr, xzr, [x29, #-80]
	mov	x2, x20
	stur	q0, [x29, #-144]
	bl	memcpy
	cbz	x20, .LBB2_37
	ldur	q0, [x29, #-80]
	ldur	q1, [x29, #-128]
	fmov	d2, x23
	ldp	q29, q18, [sp, #400]
	mov	x8, #-4467570830351532032
	ldp	q20, q19, [sp, #432]
	dup	v3.2d, x22
	ldp	q31, q25, [x29, #-192]
	mov	x6, x25
	mov	x4, x24
	rev64	v0.16b, v0.16b
	ldp	q30, q26, [x29, #-224]
	ldp	q9, q10, [x29, #-256]
	ldp	q13, q11, [sp, #480]
	ldr	q14, [sp, #464]
	ldp	q23, q22, [sp]
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v29.1d, v0.1d
	pmull2	v0.1q, v29.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v24.16b, v3.16b, v0.16b, v1.16b
	b	.LBB2_38
.LBB2_37:
	ldp	q20, q19, [sp, #432]
	ldp	q31, q25, [x29, #-192]
	mov	x6, x25
	mov	x4, x24
	ldr	q14, [sp, #464]
	ldur	q24, [x29, #-128]
	ldp	q30, q26, [x29, #-224]
	ldp	q9, q10, [x29, #-256]
	ldp	q13, q11, [sp, #480]
	ldp	q29, q18, [sp, #400]
	ldp	q23, q22, [sp]
.LBB2_38:
	ldur	q5, [x29, #-144]
.LBB2_39:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d2, x23
	dup	v3.2d, x22
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	eor	v0.16b, v24.16b, v0.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v29.1d, v0.1d
	pmull2	v0.1q, v29.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	adrp	x8, .LCPI2_10
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	ldur	q2, [x29, #-112]
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI2_10]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v30.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v18.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v22.16b
	eor3	v0.16b, v5.16b, v0.16b, v1.16b
	eor	v0.16b, v0.16b, v23.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
.LBB2_40:
	mov	w0, w8
	add	sp, sp, #704
	.cfi_def_cfa wsp, 160
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldr	x28, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldp	d15, d14, [sp], #160
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	.cfi_restore b14
	.cfi_restore b15
	ret
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndk_neoversev2_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndk_neoversev2_decrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndk_neoversev2_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_neoversev2_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndk_neoversev2_is_supported,@function
haberdashery_aes256gcmdndk_neoversev2_is_supported:
	.cfi_startproc
	mov	w0, #1
	ret
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndk_neoversev2_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndk_neoversev2_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

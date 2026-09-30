# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
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
.LCPI0_1:
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
.LCPI0_2:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI0_3:
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
.LCPI0_4:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI0_5:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI0_6:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI0_7:
	.word	0
	.word	0
	.word	0
	.word	6
.LCPI0_8:
	.word	0
	.word	0
	.word	0
	.word	7
.LCPI0_9:
	.word	0
	.word	0
	.word	0
	.word	8
.LCPI0_10:
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
	sub	sp, sp, #688
	ldr	x8, [x29, #112]
	cmp	x6, x8
	b.ne	.LBB0_10
	mov	x9, #68719411200
	mov	w8, wzr
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB0_34
	mov	x9, #2305843009213693950
	cmp	x4, x9
	b.hi	.LBB0_34
	cmp	x2, #24
	b.ne	.LBB0_34
	ldr	x9, [x29, #96]
	cmp	x9, #16
	b.ne	.LBB0_34
	movi	v1.4s, #1
	add	x9, x1, #12
	add	x8, x1, #8
	add	x10, x1, #16
	add	x11, x1, #20
	movi	v3.2d, #0000000000000000
	ld1	{ v3.s }[1], [x1], #4
	ldp	q16, q17, [x0]
	ld1	{ v1.s }[1], [x9]
	movi	v0.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v2.4s, #1
	mov	x9, #-4467570830351532032
	ld1	{ v3.s }[2], [x1]
	ld1	{ v1.s }[2], [x10]
	ld1	{ v3.s }[3], [x8]
	adrp	x8, .LCPI0_0
	ldr	q5, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_1
	ld1	{ v1.s }[3], [x11]
	ldr	q7, [x8, :lo12:.LCPI0_1]
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
	eor3	v4.16b, v4.16b, v5.16b, v3.16b
	eor	v5.16b, v6.16b, v7.16b
	eor3	v6.16b, v6.16b, v7.16b, v3.16b
	movi	v7.2d, #0000000000000000
	eor3	v22.16b, v5.16b, v3.16b, v1.16b
	eor3	v21.16b, v16.16b, v3.16b, v1.16b
	ext	v3.16b, v0.16b, v0.16b, #4
	mov	w8, v22.s[3]
	ext	v5.16b, v3.16b, v21.16b, #12
	mov	v7.d[1], v21.d[0]
	stp	q21, q22, [x29, #-240]
	ror	w8, w8, #8
	eor	v7.16b, v5.16b, v7.16b
	dup	v5.4s, v0.s[0]
	dup	v17.4s, w8
	ext	v16.16b, v5.16b, v21.16b, #4
	ext	v18.16b, v5.16b, v22.16b, #4
	aese	v17.16b, v23.16b
	dup	v17.4s, v17.s[0]
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v22.d[0]
	eor3	v25.16b, v21.16b, v7.16b, v2.16b
	ext	v2.16b, v3.16b, v22.16b, #12
	eor3	v16.16b, v4.16b, v1.16b, v7.16b
	dup	v19.4s, v25.s[3]
	aese	v19.16b, v23.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v2.16b, v17.16b, v2.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v25.d[0]
	ext	v18.16b, v5.16b, v25.16b, #4
	eor3	v29.16b, v6.16b, v1.16b, v2.16b
	ext	v6.16b, v3.16b, v25.16b, #12
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	mov	w8, v29.s[3]
	stp	q29, q25, [x29, #-144]
	ror	w8, w8, #8
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	dup	v19.4s, w8
	aese	v1.16b, v29.16b
	aesmc	v1.16b, v1.16b
	aese	v19.16b, v23.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	ext	v19.16b, v5.16b, v29.16b, #4
	eor3	v6.16b, v17.16b, v6.16b, v18.16b
	movi	v17.4s, #3
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v29.d[0]
	eor3	v27.16b, v16.16b, v6.16b, v17.16b
	ext	v17.16b, v3.16b, v29.16b, #12
	eor3	v7.16b, v21.16b, v7.16b, v6.16b
	dup	v20.4s, v27.s[3]
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	aese	v20.16b, v23.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v27.d[0]
	ext	v19.16b, v5.16b, v27.16b, #4
	eor3	v31.16b, v22.16b, v2.16b, v17.16b
	ext	v2.16b, v3.16b, v27.16b, #12
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	mov	w8, v31.s[3]
	stur	q31, [x29, #-256]
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v23.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v2.16b, v18.16b, v2.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v31.d[0]
	ext	v19.16b, v5.16b, v31.16b, #4
	eor3	v6.16b, v16.16b, v6.16b, v2.16b
	movi	v16.4s, #7
	eor3	v30.16b, v7.16b, v2.16b, v16.16b
	ext	v16.16b, v3.16b, v31.16b, #12
	dup	v20.4s, v30.s[3]
	aese	v1.16b, v30.16b
	aesmc	v1.16b, v1.16b
	stp	q30, q27, [x29, #-176]
	aese	v20.16b, v23.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v30.d[0]
	ext	v19.16b, v5.16b, v30.16b, #4
	eor3	v9.16b, v29.16b, v17.16b, v16.16b
	ext	v17.16b, v3.16b, v30.16b, #12
	mov	w8, v9.s[3]
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	str	q9, [sp, #480]
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v23.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v9.d[0]
	ext	v19.16b, v5.16b, v9.16b, #4
	eor3	v2.16b, v7.16b, v2.16b, v17.16b
	movi	v7.4s, #15
	eor3	v24.16b, v6.16b, v17.16b, v7.16b
	ext	v7.16b, v3.16b, v9.16b, #12
	dup	v20.4s, v24.s[3]
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v20.16b, v23.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v7.16b, v18.16b, v7.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v24.d[0]
	ext	v19.16b, v5.16b, v24.16b, #4
	eor3	v10.16b, v31.16b, v16.16b, v7.16b
	ext	v16.16b, v3.16b, v24.16b, #12
	mov	w8, v10.s[3]
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v23.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v10.d[0]
	ext	v19.16b, v5.16b, v10.16b, #4
	eor3	v6.16b, v6.16b, v17.16b, v16.16b
	movi	v17.4s, #31
	eor3	v11.16b, v2.16b, v16.16b, v17.16b
	ext	v17.16b, v3.16b, v10.16b, #12
	dup	v20.4s, v11.s[3]
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	stp	q11, q10, [x29, #-208]
	aese	v20.16b, v23.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	ext	v18.16b, v5.16b, v11.16b, #4
	eor3	v20.16b, v9.16b, v7.16b, v17.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v11.d[0]
	ext	v7.16b, v3.16b, v11.16b, #12
	mov	w8, v20.s[3]
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	ror	w8, w8, #8
	dup	v19.4s, w8
	stp	q20, q24, [sp, #448]
	aese	v19.16b, v23.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v7.16b, v17.16b, v7.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v20.d[0]
	ext	v18.16b, v5.16b, v20.16b, #4
	eor3	v2.16b, v2.16b, v16.16b, v7.16b
	movi	v16.4s, #63
	eor3	v12.16b, v6.16b, v7.16b, v16.16b
	ext	v16.16b, v3.16b, v20.16b, #12
	dup	v19.4s, v12.s[3]
	ext	v3.16b, v3.16b, v12.16b, #12
	ext	v5.16b, v5.16b, v12.16b, #4
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	str	q12, [sp, #432]
	aese	v19.16b, v23.16b
	dup	v19.4s, v19.s[0]
	eor3	v16.16b, v19.16b, v17.16b, v16.16b
	movi	v19.2d, #0000000000000000
	eor3	v18.16b, v16.16b, v18.16b, v20.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v12.d[0]
	mov	w8, v18.s[3]
	aese	v1.16b, v18.16b
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v19.16b
	dup	v17.4s, v17.s[0]
	eor	v16.16b, v16.16b, v17.16b
	eor3	v3.16b, v16.16b, v3.16b, v5.16b
	eor3	v5.16b, v6.16b, v7.16b, v3.16b
	movi	v6.4s, #127
	eor3	v1.16b, v5.16b, v6.16b, v1.16b
	eor3	v17.16b, v2.16b, v3.16b, v6.16b
	rev64	v1.16b, v1.16b
	stp	q17, q18, [sp, #400]
	ext	v1.16b, v1.16b, v1.16b, #8
	ushr	v2.2d, v1.2d, #63
	add	v1.2d, v1.2d, v1.2d
	ext	v3.16b, v2.16b, v2.16b, #8
	mov	v2.d[0], v0.d[0]
	orr	v1.16b, v3.16b, v1.16b
	shl	v0.2d, v2.2d, #63
	eor	v0.16b, v1.16b, v0.16b
	shl	v1.2d, v2.2d, #62
	shl	v2.2d, v2.2d, #57
	eor3	v13.16b, v0.16b, v1.16b, v2.16b
	dup	v1.2d, v13.d[0]
	pmull	v3.1q, v13.1d, v13.1d
	pmull2	v5.1q, v13.2d, v13.2d
	pmull2	v0.1q, v1.2d, v13.2d
	fmov	x8, d13
	dup	v14.2d, x8
	mov	x23, v13.d[1]
	eor	v0.16b, v0.16b, v0.16b
	str	q13, [sp, #384]
	str	q14, [sp]
	zip2	v2.2d, v0.2d, v19.2d
	zip1	v0.2d, v19.2d, v0.2d
	eor	v3.16b, v0.16b, v3.16b
	fmov	d0, x9
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v0.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull	v4.1q, v3.1d, v0.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v4.16b, v5.16b, v4.16b
	eor3	v15.16b, v2.16b, v4.16b, v3.16b
	dup	v3.2d, v15.d[0]
	pmull	v5.1q, v15.1d, v15.1d
	pmull2	v6.1q, v15.2d, v15.2d
	pmull2	v2.1q, v3.2d, v15.2d
	pmull2	v3.1q, v3.2d, v13.2d
	eor	v2.16b, v2.16b, v2.16b
	zip2	v4.2d, v2.2d, v19.2d
	zip1	v2.2d, v19.2d, v2.2d
	eor	v2.16b, v2.16b, v5.16b
	ext	v5.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v0.1d
	eor	v2.16b, v5.16b, v2.16b
	pmull	v5.1q, v2.1d, v0.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v23.16b, v4.16b, v5.16b, v2.16b
	dup	v2.2d, v23.d[0]
	pmull	v6.1q, v23.1d, v23.1d
	pmull2	v7.1q, v23.2d, v23.2d
	pmull2	v4.1q, v2.2d, v23.2d
	pmull2	v2.1q, v2.2d, v13.2d
	eor	v4.16b, v4.16b, v4.16b
	zip1	v5.2d, v19.2d, v4.2d
	zip2	v4.2d, v4.2d, v19.2d
	eor	v5.16b, v5.16b, v6.16b
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v0.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v0.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v26.16b, v6.16b, v4.16b, v5.16b
	pmull2	v4.1q, v15.2d, v1.2d
	pmull	v5.1q, v15.1d, v13.1d
	pmull2	v6.1q, v15.2d, v13.2d
	eor	v3.16b, v4.16b, v3.16b
	zip2	v4.2d, v3.2d, v19.2d
	zip1	v3.2d, v19.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v0.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v0.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v28.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v28.d[0]
	pmull	v5.1q, v28.1d, v28.1d
	pmull2	v6.1q, v28.2d, v28.2d
	pmull2	v3.1q, v3.2d, v28.2d
	eor	v3.16b, v3.16b, v3.16b
	zip2	v4.2d, v3.2d, v19.2d
	zip1	v3.2d, v19.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v0.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v0.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v8.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v8.d[0]
	pmull2	v4.1q, v8.2d, v1.2d
	pmull	v5.1q, v8.1d, v13.1d
	pmull2	v6.1q, v8.2d, v13.2d
	pmull2	v1.1q, v23.2d, v1.2d
	pmull2	v3.1q, v3.2d, v13.2d
	eor	v1.16b, v1.16b, v2.16b
	eor	v3.16b, v4.16b, v3.16b
	zip1	v2.2d, v19.2d, v1.2d
	zip2	v1.2d, v1.2d, v19.2d
	zip1	v4.2d, v19.2d, v3.2d
	zip2	v3.2d, v3.2d, v19.2d
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v0.1d
	eor	v4.16b, v5.16b, v4.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v0.1d
	eor	v4.16b, v6.16b, v4.16b
	eor3	v6.16b, v3.16b, v4.16b, v5.16b
	pmull	v3.1q, v23.1d, v13.1d
	eor	v2.16b, v2.16b, v3.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v0.1q, v2.1d, v0.1d
	pmull2	v2.1q, v23.2d, v13.2d
	eor	v0.16b, v2.16b, v0.16b
	eor3	v0.16b, v1.16b, v0.16b, v3.16b
	stp	q0, q6, [sp, #352]
	cbz	x4, .LBB0_20
	subs	x19, x4, #128
	b.lo	.LBB0_11
	ldp	q0, q1, [x3]
	ldp	q16, q17, [x3, #96]
	ldp	q2, q3, [x3, #32]
	fmov	x13, d15
	mov	v29.16b, v23.16b
	ldp	q6, q7, [x3, #64]
	mov	x8, v15.d[1]
	fmov	d22, x8
	fmov	x15, d28
	mov	x10, v28.d[1]
	mov	v25.16b, v28.16b
	add	x3, x3, #128
	rev64	v5.16b, v1.16b
	fmov	x14, d23
	ldp	q11, q10, [sp, #352]
	mov	x9, v23.d[1]
	fmov	d24, x9
	rev64	v3.16b, v3.16b
	rev64	v4.16b, v0.16b
	rev64	v0.16b, v17.16b
	rev64	v1.16b, v16.16b
	rev64	v18.16b, v2.16b
	rev64	v2.16b, v7.16b
	rev64	v6.16b, v6.16b
	fmov	x12, d8
	mov	x11, v8.d[1]
	pmull2	v16.1q, v13.2d, v0.2d
	pmull	v17.1q, v14.1d, v0.1d
	pmull2	v7.1q, v14.2d, v0.2d
	pmull2	v20.1q, v15.2d, v1.2d
	eor	v16.16b, v17.16b, v16.16b
	fmov	d17, x23
	pmull	v17.1q, v17.1d, v0.1d
	dup	v0.2d, x13
	pmull2	v19.1q, v0.2d, v1.2d
	pmull	v21.1q, v0.1d, v1.1d
	pmull	v1.1q, v22.1d, v1.1d
	fmov	d22, x10
	eor	v17.16b, v1.16b, v17.16b
	dup	v1.2d, x15
	eor	v7.16b, v19.16b, v7.16b
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	pmull2	v20.1q, v28.2d, v2.2d
	pmull	v22.1q, v22.1d, v2.1d
	pmull2	v19.1q, v1.2d, v2.2d
	pmull	v21.1q, v1.1d, v2.1d
	dup	v2.2d, x14
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	pmull2	v21.1q, v23.2d, v6.2d
	pmull2	v20.1q, v2.2d, v6.2d
	pmull	v23.1q, v2.1d, v6.1d
	pmull	v6.1q, v24.1d, v6.1d
	eor3	v6.16b, v17.16b, v22.16b, v6.16b
	dup	v17.2d, v11.d[0]
	eor3	v7.16b, v7.16b, v19.16b, v20.16b
	pmull2	v19.1q, v11.2d, v3.2d
	pmull	v20.1q, v11.1d, v3.1d
	eor3	v16.16b, v16.16b, v21.16b, v23.16b
	mov	v23.16b, v8.16b
	pmull2	v17.1q, v17.2d, v3.2d
	dup	v3.2d, v3.d[0]
	eor3	v16.16b, v16.16b, v19.16b, v20.16b
	pmull2	v20.1q, v8.2d, v18.2d
	pmull2	v21.1q, v11.2d, v3.2d
	dup	v3.2d, x12
	pmull2	v19.1q, v3.2d, v18.2d
	pmull	v22.1q, v3.1d, v18.1d
	eor3	v7.16b, v7.16b, v17.16b, v19.16b
	fmov	d17, x11
	eor3	v16.16b, v16.16b, v20.16b, v22.16b
	pmull	v19.1q, v10.1d, v5.1d
	pmull	v20.1q, v26.1d, v4.1d
	pmull	v17.1q, v17.1d, v18.1d
	pmull2	v18.1q, v10.2d, v5.2d
	eor3	v6.16b, v6.16b, v21.16b, v17.16b
	dup	v17.2d, v10.d[0]
	eor3	v16.16b, v16.16b, v18.16b, v19.16b
	dup	v18.2d, v26.d[0]
	pmull2	v19.1q, v26.2d, v4.2d
	pmull2	v17.1q, v17.2d, v5.2d
	dup	v5.2d, v5.d[0]
	pmull2	v18.1q, v18.2d, v4.2d
	dup	v4.2d, v4.d[0]
	eor3	v16.16b, v16.16b, v19.16b, v20.16b
	pmull2	v5.1q, v10.2d, v5.2d
	pmull2	v4.1q, v26.2d, v4.2d
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	eor3	v6.16b, v6.16b, v5.16b, v4.16b
	cmp	x4, #256
	b.lo	.LBB0_12
	mov	x17, #-4467570830351532032
	fmov	x12, d11
	mov	v28.16b, v25.16b
	mov	v8.16b, v23.16b
	movi	v4.2d, #0000000000000000
	fmov	d5, x17
	mov	x13, v11.d[1]
	fmov	x14, d10
	mov	x15, v10.d[1]
	fmov	x16, d26
	mov	x17, v26.d[1]
	.p2align	5, , 16
.LBB0_9:
	zip1	v25.2d, v4.2d, v16.2d
	ldp	q17, q18, [x3]
	zip2	v16.2d, v16.2d, v4.2d
	mov	v30.16b, v26.16b
	ldp	q19, q20, [x3, #32]
	ldp	q21, q22, [x3, #64]
	eor	v7.16b, v25.16b, v7.16b
	ldp	q23, q24, [x3, #96]
	fmov	d27, x8
	add	x3, x3, #128
	sub	x19, x19, #128
	pmull	v25.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v7.16b, v7.16b, v25.16b
	pmull	v25.1q, v7.1d, v5.1d
	ext	v26.16b, v7.16b, v7.16b, #8
	rev64	v7.16b, v17.16b
	rev64	v17.16b, v19.16b
	rev64	v19.16b, v21.16b
	rev64	v21.16b, v23.16b
	eor3	v6.16b, v6.16b, v16.16b, v25.16b
	ext	v16.16b, v7.16b, v7.16b, #8
	rev64	v7.16b, v18.16b
	rev64	v18.16b, v20.16b
	rev64	v20.16b, v22.16b
	rev64	v22.16b, v24.16b
	pmull2	v25.1q, v15.2d, v21.2d
	pmull2	v23.1q, v13.2d, v22.2d
	pmull	v24.1q, v14.1d, v22.1d
	eor3	v6.16b, v16.16b, v6.16b, v26.16b
	pmull	v26.1q, v0.1d, v21.1d
	pmull2	v16.1q, v14.2d, v22.2d
	eor	v23.16b, v24.16b, v23.16b
	fmov	d24, x23
	eor3	v23.16b, v23.16b, v25.16b, v26.16b
	fmov	d26, x10
	pmull	v25.1q, v1.1d, v20.1d
	pmull	v22.1q, v24.1d, v22.1d
	pmull2	v24.1q, v0.2d, v21.2d
	pmull	v21.1q, v27.1d, v21.1d
	fmov	d27, x9
	eor	v16.16b, v24.16b, v16.16b
	pmull2	v24.1q, v28.2d, v20.2d
	eor	v21.16b, v21.16b, v22.16b
	pmull2	v22.1q, v1.2d, v20.2d
	pmull	v20.1q, v26.1d, v20.1d
	pmull	v26.1q, v2.1d, v19.1d
	eor3	v23.16b, v23.16b, v24.16b, v25.16b
	pmull2	v24.1q, v2.2d, v19.2d
	pmull2	v25.1q, v29.2d, v19.2d
	pmull	v19.1q, v27.1d, v19.1d
	eor3	v19.16b, v21.16b, v20.16b, v19.16b
	dup	v20.2d, x12
	eor3	v16.16b, v16.16b, v22.16b, v24.16b
	eor3	v22.16b, v23.16b, v25.16b, v26.16b
	fmov	d24, x13
	fmov	d25, x11
	pmull2	v23.1q, v11.2d, v18.2d
	mov	v26.16b, v30.16b
	pmull2	v21.1q, v20.2d, v18.2d
	pmull	v20.1q, v20.1d, v18.1d
	pmull	v18.1q, v24.1d, v18.1d
	pmull	v24.1q, v3.1d, v17.1d
	eor3	v20.16b, v22.16b, v23.16b, v20.16b
	pmull2	v22.1q, v3.2d, v17.2d
	pmull2	v23.1q, v8.2d, v17.2d
	pmull	v17.1q, v25.1d, v17.1d
	eor3	v17.16b, v19.16b, v18.16b, v17.16b
	dup	v18.2d, x14
	eor3	v16.16b, v16.16b, v21.16b, v22.16b
	eor3	v20.16b, v20.16b, v23.16b, v24.16b
	pmull2	v21.1q, v10.2d, v7.2d
	fmov	d22, x15
	pmull2	v19.1q, v18.2d, v7.2d
	pmull	v18.1q, v18.1d, v7.1d
	pmull	v22.1q, v22.1d, v7.1d
	pmull	v7.1q, v26.1d, v6.1d
	eor3	v18.16b, v20.16b, v21.16b, v18.16b
	fmov	d20, x17
	dup	v21.2d, x16
	eor3	v7.16b, v16.16b, v19.16b, v7.16b
	pmull	v20.1q, v20.1d, v6.1d
	pmull2	v21.1q, v21.2d, v6.2d
	pmull2	v6.1q, v30.2d, v6.2d
	eor3	v16.16b, v18.16b, v20.16b, v21.16b
	eor3	v6.16b, v17.16b, v22.16b, v6.16b
	cmp	x19, #127
	b.hi	.LBB0_9
	b	.LBB0_13
.LBB0_10:
	mov	w8, wzr
	b	.LBB0_34
.LBB0_11:
	mov	x19, x4
	mov	x21, x4
	cmp	x4, #16
	b.hs	.LBB0_14
	b	.LBB0_16
.LBB0_12:
	mov	v28.16b, v25.16b
	mov	v8.16b, v23.16b
.LBB0_13:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v16.2d
	mov	x8, #-4467570830351532032
	ldp	q21, q22, [x29, #-240]
	fmov	d2, x8
	ldp	q20, q24, [sp, #448]
	mov	v23.16b, v29.16b
	zip2	v0.2d, v16.2d, v0.2d
	eor	v1.16b, v1.16b, v7.16b
	ldp	q17, q18, [sp, #400]
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	ldp	q29, q25, [x29, #-144]
	ldp	q30, q27, [x29, #-176]
	ldp	q11, q10, [x29, #-208]
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v6.16b, v0.16b, v2.16b
	eor	v19.16b, v1.16b, v0.16b
	mov	x21, x4
	cmp	x19, #16
	b.lo	.LBB0_16
.LBB0_14:
	mov	x8, #-4467570830351532032
	fmov	d0, x23
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB0_15:
	ldr	q3, [x3], #16
	sub	x19, x19, #16
	rev64	v3.16b, v3.16b
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v19.16b
	pmull	v5.1q, v0.1d, v3.1d
	pmull2	v6.1q, v14.2d, v3.2d
	pmull	v4.1q, v13.1d, v3.1d
	pmull2	v3.1q, v13.2d, v3.2d
	eor	v5.16b, v6.16b, v5.16b
	zip1	v6.2d, v1.2d, v5.2d
	zip2	v5.2d, v5.2d, v1.2d
	eor	v4.16b, v6.16b, v4.16b
	pmull	v6.1q, v4.1d, v2.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v6.16b
	pmull	v6.1q, v4.1d, v2.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v3.16b, v6.16b, v3.16b
	eor3	v19.16b, v5.16b, v3.16b, v4.16b
	cmp	x19, #15
	b.hi	.LBB0_15
.LBB0_16:
	cbz	x19, .LBB0_19
	mov	w8, #16
	stp	q8, q28, [sp, #272]
	mov	x24, x5
	mov	x22, x7
	sub	x2, x8, x19
	sub	x8, x29, #80
	stp	q26, q23, [sp, #304]
	mov	w1, wzr
	add	x0, x8, x19
	stur	q19, [x29, #-112]
	str	q15, [sp, #336]
	mov	x25, x6
	mov	x20, x3
	bl	memset
	sub	x0, x29, #80
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-80]
	mov	x6, x25
	cbz	x25, .LBB0_31
	ldur	q1, [x29, #-112]
	rev64	v0.16b, v0.16b
	ldr	q14, [sp]
	fmov	d2, x23
	ldr	q13, [sp, #384]
	mov	x8, #-4467570830351532032
	ldp	q21, q22, [x29, #-240]
	ldp	q29, q25, [x29, #-144]
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q30, q27, [x29, #-176]
	mov	x7, x22
	mov	x4, x21
	ldur	q31, [x29, #-256]
	ldp	q24, q9, [sp, #464]
	mov	x5, x24
	eor	v0.16b, v0.16b, v1.16b
	ldp	q11, q10, [x29, #-208]
	ldp	q12, q20, [sp, #432]
	ldp	q17, q18, [sp, #400]
	ldp	q23, q15, [sp, #320]
	ldp	q28, q26, [sp, #288]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v14.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	pmull2	v0.1q, v13.2d, v0.2d
	ldr	q8, [sp, #272]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v19.16b, v2.16b, v0.16b, v1.16b
	b	.LBB0_21
.LBB0_19:
	mov	x4, x21
.LBB0_20:
	cbz	x6, .LBB0_33
.LBB0_21:
	ldr	x19, [x29, #104]
	adrp	x8, .LCPI0_2
	cmp	x6, #128
	b.lo	.LBB0_25
	ldr	q0, [sp, #368]
	ext	v1.16b, v26.16b, v26.16b, #8
	ldr	q16, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_3
	mov	x20, x6
	ext	v0.16b, v0.16b, v0.16b, #8
	str	q16, [sp, #128]
	str	q8, [sp, #272]
	stp	q0, q1, [sp, #240]
	ldr	q0, [sp, #352]
	ext	v1.16b, v8.16b, v8.16b, #8
	ext	v0.16b, v0.16b, v0.16b, #8
	stp	q0, q1, [sp, #208]
	ext	v1.16b, v23.16b, v23.16b, #8
	ext	v0.16b, v28.16b, v28.16b, #8
	stp	q0, q1, [sp, #176]
	ext	v1.16b, v15.16b, v15.16b, #8
	ext	v0.16b, v13.16b, v13.16b, #8
	stp	q0, q1, [sp, #144]
	ldr	q0, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	stp	q28, q26, [sp, #288]
	stp	q23, q15, [sp, #320]
	str	q0, [sp, #112]
	ldr	q0, [x8, :lo12:.LCPI0_4]
	adrp	x8, .LCPI0_5
	str	q0, [sp, #96]
	ldr	q0, [x8, :lo12:.LCPI0_5]
	adrp	x8, .LCPI0_6
	str	q0, [sp, #80]
	ldr	q0, [x8, :lo12:.LCPI0_6]
	adrp	x8, .LCPI0_7
	str	q0, [sp, #64]
	ldr	q0, [x8, :lo12:.LCPI0_7]
	adrp	x8, .LCPI0_8
	str	q0, [sp, #48]
	ldr	q0, [x8, :lo12:.LCPI0_8]
	adrp	x8, .LCPI0_9
	str	q0, [sp, #32]
	ldr	q0, [x8, :lo12:.LCPI0_9]
	mov	x8, #-4467570830351532032
	str	q0, [sp, #16]
	.p2align	5, , 16
.LBB0_23:
	ldr	q0, [sp, #112]
	ldp	q8, q31, [x5]
	rev32	v12.16b, v16.16b
	add	x9, x5, #128
	ldp	q30, q29, [x5, #32]
	ldp	q28, q27, [x5, #64]
	ldp	q26, q2, [x5, #96]
	add	x10, x19, #128
	sub	x20, x20, #128
	mov	x5, x9
	ldp	q23, q25, [sp, #240]
	rev64	v3.16b, v31.16b
	stur	q2, [x29, #-112]
	rev64	v5.16b, v29.16b
	rev64	v18.16b, v2.16b
	ldr	q2, [sp, #304]
	rev64	v7.16b, v27.16b
	orr	v0.16b, v16.16b, v0.16b
	rev64	v4.16b, v30.16b
	rev64	v6.16b, v28.16b
	rev64	v17.16b, v26.16b
	rev32	v13.16b, v0.16b
	ldr	q0, [sp, #128]
	add	v0.4s, v16.4s, v0.4s
	rev32	v14.16b, v0.16b
	ldr	q0, [sp, #96]
	add	v0.4s, v16.4s, v0.4s
	rev32	v15.16b, v0.16b
	ldp	q1, q0, [sp, #64]
	add	v0.4s, v16.4s, v0.4s
	add	v1.4s, v16.4s, v1.4s
	rev32	v0.16b, v0.16b
	rev32	v11.16b, v1.16b
	ldr	q1, [sp, #48]
	add	v1.4s, v16.4s, v1.4s
	rev32	v10.16b, v1.16b
	ldr	q1, [sp, #32]
	add	v1.4s, v16.4s, v1.4s
	rev32	v9.16b, v1.16b
	rev64	v1.16b, v8.16b
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v19.16b, v19.16b, v1.16b
	movi	v1.2d, #0000000000000000
	//APP
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v21.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v21.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v21.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v21.16b
	aesmc	v9.16b, v9.16b
	pmull	v20.1q, v19.1d, v2.1d
	pmull2	v2.1q, v19.2d, v2.2d
	pmull	v24.1q, v19.1d, v25.1d
	pmull2	v19.1q, v19.2d, v25.2d
	eor3	v1.16b, v1.16b, v24.16b, v19.16b
	//NO_APP
	ext	v19.16b, v3.16b, v3.16b, #8
	ldr	q3, [sp, #368]
	//APP
	aese	v12.16b, v22.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v22.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v22.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v22.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v22.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v22.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v22.16b
	aesmc	v9.16b, v9.16b
	pmull	v24.1q, v19.1d, v3.1d
	pmull2	v3.1q, v19.2d, v3.2d
	pmull	v21.1q, v19.1d, v23.1d
	pmull2	v19.1q, v19.2d, v23.2d
	eor3	v1.16b, v1.16b, v21.16b, v19.16b
	//NO_APP
	eor	v19.16b, v24.16b, v20.16b
	ext	v20.16b, v4.16b, v4.16b, #8
	ldr	q4, [sp, #272]
	ldr	q22, [sp, #224]
	ldp	q25, q23, [x29, #-144]
	//APP
	aese	v12.16b, v23.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v23.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v23.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v23.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v23.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v23.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v23.16b
	aesmc	v9.16b, v9.16b
	pmull	v21.1q, v20.1d, v4.1d
	pmull2	v4.1q, v20.2d, v4.2d
	pmull	v24.1q, v20.1d, v22.1d
	pmull2	v20.1q, v20.2d, v22.2d
	eor3	v1.16b, v1.16b, v24.16b, v20.16b
	//NO_APP
	eor3	v2.16b, v3.16b, v2.16b, v4.16b
	ext	v20.16b, v5.16b, v5.16b, #8
	ldr	q5, [sp, #352]
	ldr	q23, [sp, #208]
	//APP
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v25.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v25.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v25.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v25.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	pmull	v24.1q, v20.1d, v5.1d
	pmull2	v5.1q, v20.2d, v5.2d
	pmull	v22.1q, v20.1d, v23.1d
	pmull2	v20.1q, v20.2d, v23.2d
	eor3	v1.16b, v1.16b, v22.16b, v20.16b
	//NO_APP
	ext	v20.16b, v6.16b, v6.16b, #8
	ldr	q6, [sp, #320]
	movi	v4.2d, #0000000000000000
	ldp	q23, q25, [sp, #176]
	eor3	v19.16b, v19.16b, v21.16b, v24.16b
	ldur	q24, [x29, #-160]
	//APP
	aese	v12.16b, v24.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v24.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v24.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v24.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v24.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v24.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v24.16b
	aesmc	v9.16b, v9.16b
	pmull	v21.1q, v20.1d, v6.1d
	pmull2	v6.1q, v20.2d, v6.2d
	pmull	v22.1q, v20.1d, v25.1d
	pmull2	v20.1q, v20.2d, v25.2d
	eor3	v1.16b, v1.16b, v22.16b, v20.16b
	//NO_APP
	eor3	v2.16b, v2.16b, v5.16b, v6.16b
	ext	v20.16b, v7.16b, v7.16b, #8
	ldr	q7, [sp, #288]
	ldur	q25, [x29, #-256]
	//APP
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v25.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v25.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v25.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v25.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	pmull	v22.1q, v20.1d, v7.1d
	pmull2	v7.1q, v20.2d, v7.2d
	pmull	v24.1q, v20.1d, v23.1d
	pmull2	v20.1q, v20.2d, v23.2d
	eor3	v1.16b, v1.16b, v24.16b, v20.16b
	//NO_APP
	ext	v20.16b, v17.16b, v17.16b, #8
	ldr	q17, [sp, #336]
	ldp	q23, q25, [sp, #144]
	ldur	q24, [x29, #-176]
	eor3	v19.16b, v19.16b, v21.16b, v22.16b
	//APP
	aese	v12.16b, v24.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v24.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v24.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v24.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v24.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v24.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v24.16b
	aesmc	v9.16b, v9.16b
	pmull	v21.1q, v20.1d, v17.1d
	pmull2	v17.1q, v20.2d, v17.2d
	pmull	v22.1q, v20.1d, v25.1d
	pmull2	v20.1q, v20.2d, v25.2d
	eor3	v1.16b, v1.16b, v22.16b, v20.16b
	//NO_APP
	ext	v20.16b, v18.16b, v18.16b, #8
	ldr	q18, [sp, #384]
	ldr	q25, [sp, #480]
	//APP
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v25.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v25.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v25.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v25.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	pmull	v22.1q, v20.1d, v18.1d
	pmull2	v18.1q, v20.2d, v18.2d
	pmull	v24.1q, v20.1d, v23.1d
	pmull2	v20.1q, v20.2d, v23.2d
	eor3	v1.16b, v1.16b, v24.16b, v20.16b
	//NO_APP
	eor3	v2.16b, v2.16b, v7.16b, v17.16b
	zip1	v3.2d, v4.2d, v1.2d
	zip2	v1.2d, v1.2d, v4.2d
	ldp	q20, q24, [sp, #448]
	//APP
	aese	v12.16b, v24.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v24.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v24.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v24.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v24.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v24.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v24.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	eor3	v19.16b, v19.16b, v21.16b, v22.16b
	eor3	v1.16b, v2.16b, v18.16b, v1.16b
	fmov	d2, x8
	ldp	q17, q18, [sp, #400]
	ldp	q21, q22, [x29, #-240]
	eor	v3.16b, v3.16b, v19.16b
	pmull	v4.1q, v3.1d, v2.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v4.16b
	pmull	v2.1q, v3.1d, v2.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor3	v19.16b, v1.16b, v2.16b, v3.16b
	ldp	q1, q2, [x29, #-208]
	//APP
	aese	v12.16b, v2.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v2.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v2.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v2.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v2.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v2.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v2.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	//APP
	aese	v12.16b, v1.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v1.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v1.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v1.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v1.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v1.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	//APP
	aese	v12.16b, v20.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v20.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v20.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v20.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v20.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v20.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v20.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	ldr	q1, [sp, #432]
	//APP
	aese	v12.16b, v1.16b
	aesmc	v12.16b, v12.16b
	aese	v13.16b, v1.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	aese	v15.16b, v1.16b
	aesmc	v15.16b, v15.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v11.16b, v1.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v1.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v1.16b
	aesmc	v9.16b, v9.16b
	//NO_APP
	aese	v12.16b, v18.16b
	aese	v13.16b, v18.16b
	aese	v0.16b, v18.16b
	aese	v11.16b, v18.16b
	aese	v10.16b, v18.16b
	aese	v9.16b, v18.16b
	aese	v14.16b, v18.16b
	aese	v15.16b, v18.16b
	eor3	v1.16b, v17.16b, v12.16b, v8.16b
	eor3	v2.16b, v17.16b, v13.16b, v31.16b
	eor3	v0.16b, v17.16b, v0.16b, v28.16b
	eor3	v3.16b, v17.16b, v14.16b, v30.16b
	eor3	v4.16b, v17.16b, v15.16b, v29.16b
	stp	q1, q2, [x19]
	eor3	v1.16b, v17.16b, v11.16b, v27.16b
	eor3	v2.16b, v17.16b, v10.16b, v26.16b
	stp	q3, q4, [x19, #32]
	stp	q0, q1, [x19, #64]
	ldur	q0, [x29, #-112]
	eor3	v0.16b, v17.16b, v9.16b, v0.16b
	stp	q2, q0, [x19, #96]
	ldr	q0, [sp, #16]
	mov	x19, x10
	add	v16.4s, v16.4s, v0.4s
	cmp	x20, #127
	b.hi	.LBB0_23
	ldp	q29, q25, [x29, #-144]
	ldp	q30, q27, [x29, #-176]
	ldur	q31, [x29, #-256]
	ldr	q9, [sp, #480]
	mov	x19, x10
	mov	x5, x9
	ldr	q12, [sp, #432]
	ldr	q13, [sp, #384]
	ldp	q11, q10, [x29, #-208]
	ldr	q14, [sp]
	mov	x24, x4
	mov	x25, x7
	cmp	x20, #16
	b.hs	.LBB0_26
	b	.LBB0_28
.LBB0_25:
	ldr	q16, [x8, :lo12:.LCPI0_2]
	mov	x20, x6
	mov	x24, x4
	mov	x25, x7
	cmp	x6, #16
	b.lo	.LBB0_28
.LBB0_26:
	mov	x8, #-4467570830351532032
	fmov	d0, x23
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	adrp	x8, .LCPI0_3
	ldr	q3, [x8, :lo12:.LCPI0_3]
	.p2align	5, , 16
.LBB0_27:
	rev32	v5.16b, v16.16b
	ldr	q4, [x5], #16
	add	v16.4s, v16.4s, v3.4s
	sub	x20, x20, #16
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v25.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v18.16b
	eor3	v5.16b, v17.16b, v5.16b, v4.16b
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	str	q5, [x19], #16
	eor	v4.16b, v4.16b, v19.16b
	pmull	v6.1q, v0.1d, v4.1d
	pmull2	v7.1q, v14.2d, v4.2d
	pmull	v5.1q, v13.1d, v4.1d
	pmull2	v4.1q, v13.2d, v4.2d
	eor	v6.16b, v7.16b, v6.16b
	zip1	v7.2d, v1.2d, v6.2d
	zip2	v6.2d, v6.2d, v1.2d
	eor	v5.16b, v7.16b, v5.16b
	pmull	v7.1q, v5.1d, v2.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v7.16b
	pmull	v7.1q, v5.1d, v2.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v4.16b, v7.16b, v4.16b
	eor3	v19.16b, v6.16b, v4.16b, v5.16b
	cmp	x20, #15
	b.hi	.LBB0_27
.LBB0_28:
	cbz	x20, .LBB0_30
	mov	w8, #16
	mov	w1, wzr
	mov	x26, x6
	mov	x22, x5
	stur	q19, [x29, #-112]
	sub	x21, x8, x20
	sub	x8, x29, #80
	str	q16, [sp, #352]
	add	x0, x8, x20
	mov	x2, x21
	bl	memset
	sub	x0, x29, #80
	mov	x1, x22
	mov	x2, x20
	bl	memcpy
	ldr	q0, [sp, #352]
	ldp	q3, q1, [x29, #-240]
	sub	x1, x29, #80
	sub	x22, x29, #80
	ldur	q2, [x29, #-80]
	mov	x0, x19
	mov	x2, x20
	rev32	v0.16b, v0.16b
	str	q2, [sp, #368]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [x29, #-144]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-160]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-256]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-176]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #464]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [x29, #-208]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #432]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #400]
	aese	v0.16b, v3.16b
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	stur	q0, [x29, #-80]
	bl	memcpy
	ldr	q0, [sp, #368]
	add	x0, x22, x20
	mov	w1, wzr
	mov	x2, x21
	stur	q0, [x29, #-96]
	bl	memset
	sub	x0, x29, #80
	sub	x1, x29, #96
	mov	x2, x20
	bl	memcpy
	ldp	q25, q1, [x29, #-128]
	ldr	q14, [sp]
	mov	x6, x26
	mov	x7, x25
	ldp	q13, q17, [sp, #384]
	ldp	q18, q12, [sp, #416]
	ldp	q20, q24, [sp, #448]
	mov	x4, x24
	ldr	q9, [sp, #480]
	ldur	q29, [x29, #-144]
	ldp	q11, q10, [x29, #-208]
	ldur	q22, [x29, #-224]
	ldur	q0, [x29, #-80]
	ldp	q30, q27, [x29, #-176]
	ldp	q31, q21, [x29, #-256]
	b	.LBB0_32
.LBB0_30:
	mov	x7, x25
	mov	x4, x24
	b	.LBB0_33
.LBB0_31:
	ldp	q21, q22, [x29, #-240]
	ldp	q29, q25, [x29, #-144]
	ldp	q30, q27, [x29, #-176]
	mov	x7, x22
	mov	x4, x21
	ldur	q31, [x29, #-256]
	ldp	q24, q9, [sp, #464]
	ldr	q13, [sp, #384]
	ldr	q14, [sp]
	ldur	q1, [x29, #-112]
	ldp	q11, q10, [x29, #-208]
	ldp	q12, q20, [sp, #432]
	ldp	q17, q18, [sp, #400]
.LBB0_32:
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	mov	x8, #-4467570830351532032
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v14.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	pmull2	v0.1q, v13.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v19.16b, v2.16b, v0.16b, v1.16b
.LBB0_33:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d2, x23
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	eor	v0.16b, v19.16b, v0.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v14.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	pmull2	v0.1q, v13.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	adrp	x8, .LCPI0_10
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI0_10]
	ldr	q2, [x7]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v29.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v30.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v18.16b
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	eor	v0.16b, v0.16b, v17.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
.LBB0_34:
	mov	w0, w8
	add	sp, sp, #688
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
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndk_neoversev2_decrypt, .Lfunc_end0-haberdashery_aes256gcmdndk_neoversev2_decrypt
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
	sub	sp, sp, #736
	ldr	x9, [x29, #96]
	cmp	x6, x9
	b.ne	.LBB1_7
	ldr	x9, [x29, #112]
	cmp	x2, #24
	mov	x8, x0
	ccmp	x9, #16, #0, eq
	mov	x9, #2305843009213693951
	ccmp	x4, x9, #2, eq
	mov	x9, #68719476704
	ccmp	x6, x9, #2, lo
	cset	w0, lo
	cmp	w0, #1
	b.ne	.LBB1_34
	movi	v1.4s, #1
	add	x10, x1, #12
	add	x9, x1, #8
	add	x11, x1, #16
	add	x12, x1, #20
	movi	v3.2d, #0000000000000000
	ld1	{ v3.s }[1], [x1], #4
	ldp	q16, q17, [x8]
	ld1	{ v1.s }[1], [x10]
	movi	v0.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v2.4s, #1
	ldr	x27, [x29, #104]
	ld1	{ v3.s }[2], [x1]
	ld1	{ v1.s }[2], [x11]
	ld1	{ v3.s }[3], [x9]
	adrp	x9, .LCPI1_0
	ldr	q5, [x9, :lo12:.LCPI1_0]
	adrp	x9, .LCPI1_1
	ld1	{ v1.s }[3], [x12]
	ldr	q7, [x9, :lo12:.LCPI1_1]
	mov	x9, #-4467570830351532032
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
	ldp	q16, q17, [x8, #32]
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
	ldp	q16, q17, [x8, #64]
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
	ldp	q16, q17, [x8, #96]
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
	ldp	q16, q17, [x8, #128]
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
	ldp	q16, q17, [x8, #160]
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
	ldp	q16, q17, [x8, #192]
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
	eor3	v4.16b, v4.16b, v5.16b, v3.16b
	eor	v5.16b, v6.16b, v7.16b
	eor3	v6.16b, v6.16b, v7.16b, v3.16b
	movi	v7.2d, #0000000000000000
	eor3	v29.16b, v5.16b, v3.16b, v1.16b
	eor3	v30.16b, v16.16b, v3.16b, v1.16b
	ext	v3.16b, v0.16b, v0.16b, #4
	mov	w8, v29.s[3]
	ext	v5.16b, v3.16b, v30.16b, #12
	mov	v7.d[1], v30.d[0]
	stp	q30, q29, [x29, #-160]
	ror	w8, w8, #8
	eor	v7.16b, v5.16b, v7.16b
	dup	v5.4s, v0.s[0]
	dup	v17.4s, w8
	ext	v16.16b, v5.16b, v30.16b, #4
	ext	v18.16b, v5.16b, v29.16b, #4
	aese	v17.16b, v21.16b
	dup	v17.4s, v17.s[0]
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v29.d[0]
	eor3	v9.16b, v30.16b, v7.16b, v2.16b
	ext	v2.16b, v3.16b, v29.16b, #12
	eor3	v16.16b, v4.16b, v1.16b, v7.16b
	dup	v19.4s, v9.s[3]
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v2.16b, v17.16b, v2.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v9.d[0]
	ext	v18.16b, v5.16b, v9.16b, #4
	eor3	v10.16b, v6.16b, v1.16b, v2.16b
	ext	v6.16b, v3.16b, v9.16b, #12
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v29.16b
	aesmc	v1.16b, v1.16b
	mov	w8, v10.s[3]
	stp	q10, q9, [x29, #-192]
	ror	w8, w8, #8
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	dup	v19.4s, w8
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	ext	v19.16b, v5.16b, v10.16b, #4
	eor3	v6.16b, v17.16b, v6.16b, v18.16b
	movi	v17.4s, #3
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v10.d[0]
	eor3	v11.16b, v16.16b, v6.16b, v17.16b
	ext	v17.16b, v3.16b, v10.16b, #12
	eor3	v7.16b, v30.16b, v7.16b, v6.16b
	dup	v20.4s, v11.s[3]
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v11.d[0]
	ext	v19.16b, v5.16b, v11.16b, #4
	eor3	v12.16b, v29.16b, v2.16b, v17.16b
	ext	v2.16b, v3.16b, v11.16b, #12
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	mov	w8, v12.s[3]
	stp	q12, q11, [x29, #-224]
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v2.16b, v18.16b, v2.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v12.d[0]
	ext	v19.16b, v5.16b, v12.16b, #4
	eor3	v6.16b, v16.16b, v6.16b, v2.16b
	movi	v16.4s, #7
	eor3	v13.16b, v7.16b, v2.16b, v16.16b
	ext	v16.16b, v3.16b, v12.16b, #12
	dup	v20.4s, v13.s[3]
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v13.d[0]
	ext	v19.16b, v5.16b, v13.16b, #4
	eor3	v14.16b, v10.16b, v17.16b, v16.16b
	ext	v17.16b, v3.16b, v13.16b, #12
	mov	w8, v14.s[3]
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	ror	w8, w8, #8
	stp	q14, q13, [x29, #-256]
	dup	v20.4s, w8
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v14.d[0]
	ext	v19.16b, v5.16b, v14.16b, #4
	eor3	v2.16b, v7.16b, v2.16b, v17.16b
	movi	v7.4s, #15
	eor3	v28.16b, v6.16b, v17.16b, v7.16b
	ext	v7.16b, v3.16b, v14.16b, #12
	dup	v20.4s, v28.s[3]
	aese	v1.16b, v28.16b
	aesmc	v1.16b, v1.16b
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v7.16b, v18.16b, v7.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v28.d[0]
	ext	v19.16b, v5.16b, v28.16b, #4
	eor3	v31.16b, v12.16b, v16.16b, v7.16b
	ext	v16.16b, v3.16b, v28.16b, #12
	mov	w8, v31.s[3]
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	str	q31, [sp, #96]
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v31.d[0]
	ext	v19.16b, v5.16b, v31.16b, #4
	eor3	v6.16b, v6.16b, v17.16b, v16.16b
	movi	v17.4s, #31
	eor3	v8.16b, v2.16b, v16.16b, v17.16b
	ext	v17.16b, v3.16b, v31.16b, #12
	dup	v20.4s, v8.s[3]
	aese	v1.16b, v8.16b
	aesmc	v1.16b, v1.16b
	stp	q8, q28, [sp, #496]
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	ext	v18.16b, v5.16b, v8.16b, #4
	eor3	v15.16b, v14.16b, v7.16b, v17.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v8.d[0]
	ext	v7.16b, v3.16b, v8.16b, #12
	mov	w8, v15.s[3]
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	ror	w8, w8, #8
	str	q15, [sp, #480]
	dup	v19.4s, w8
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v7.16b, v17.16b, v7.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v15.d[0]
	ext	v18.16b, v5.16b, v15.16b, #4
	eor3	v2.16b, v2.16b, v16.16b, v7.16b
	movi	v16.4s, #63
	eor3	v22.16b, v6.16b, v7.16b, v16.16b
	ext	v16.16b, v3.16b, v15.16b, #12
	dup	v19.4s, v22.s[3]
	ext	v3.16b, v3.16b, v22.16b, #12
	ext	v5.16b, v5.16b, v22.16b, #4
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	str	q22, [sp, #528]
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor3	v16.16b, v19.16b, v17.16b, v16.16b
	eor3	v23.16b, v16.16b, v18.16b, v15.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v22.d[0]
	mov	w8, v23.s[3]
	aese	v1.16b, v23.16b
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v21.16b
	dup	v17.4s, v17.s[0]
	eor	v16.16b, v16.16b, v17.16b
	eor3	v3.16b, v16.16b, v3.16b, v5.16b
	eor3	v5.16b, v6.16b, v7.16b, v3.16b
	movi	v6.4s, #127
	eor3	v1.16b, v5.16b, v6.16b, v1.16b
	eor3	v24.16b, v2.16b, v3.16b, v6.16b
	rev64	v1.16b, v1.16b
	ext	v1.16b, v1.16b, v1.16b, #8
	stp	q24, q23, [sp, #48]
	ushr	v2.2d, v1.2d, #63
	add	v1.2d, v1.2d, v1.2d
	ext	v3.16b, v2.16b, v2.16b, #8
	mov	v2.d[0], v0.d[0]
	orr	v1.16b, v3.16b, v1.16b
	shl	v0.2d, v2.2d, #63
	eor	v0.16b, v1.16b, v0.16b
	shl	v1.2d, v2.2d, #62
	shl	v2.2d, v2.2d, #57
	eor3	v27.16b, v0.16b, v1.16b, v2.16b
	dup	v1.2d, v27.d[0]
	pmull	v3.1q, v27.1d, v27.1d
	pmull2	v5.1q, v27.2d, v27.2d
	fmov	x8, d27
	mov	x24, v27.d[1]
	stur	q27, [x29, #-128]
	pmull2	v0.1q, v1.2d, v27.2d
	dup	v25.2d, x8
	eor	v0.16b, v0.16b, v0.16b
	str	q25, [sp, #32]
	zip2	v2.2d, v0.2d, v21.2d
	zip1	v0.2d, v21.2d, v0.2d
	eor	v3.16b, v0.16b, v3.16b
	fmov	d0, x9
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v0.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull	v4.1q, v3.1d, v0.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v4.16b, v5.16b, v4.16b
	eor3	v20.16b, v2.16b, v4.16b, v3.16b
	dup	v3.2d, v20.d[0]
	pmull	v5.1q, v20.1d, v20.1d
	pmull2	v6.1q, v20.2d, v20.2d
	pmull2	v2.1q, v3.2d, v20.2d
	pmull2	v3.1q, v3.2d, v27.2d
	mov	x23, v20.d[1]
	fmov	x16, d20
	eor	v2.16b, v2.16b, v2.16b
	zip2	v4.2d, v2.2d, v21.2d
	zip1	v2.2d, v21.2d, v2.2d
	eor	v2.16b, v2.16b, v5.16b
	ext	v5.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v0.1d
	eor	v2.16b, v5.16b, v2.16b
	pmull	v5.1q, v2.1d, v0.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v16.16b, v4.16b, v5.16b, v2.16b
	dup	v2.2d, v16.d[0]
	pmull	v6.1q, v16.1d, v16.1d
	pmull2	v7.1q, v16.2d, v16.2d
	mov	x15, v16.d[1]
	fmov	x17, d16
	pmull2	v4.1q, v2.2d, v16.2d
	pmull2	v2.1q, v2.2d, v27.2d
	eor	v4.16b, v4.16b, v4.16b
	zip1	v5.2d, v21.2d, v4.2d
	zip2	v4.2d, v4.2d, v21.2d
	eor	v5.16b, v5.16b, v6.16b
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v0.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v0.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v26.16b, v6.16b, v4.16b, v5.16b
	pmull2	v4.1q, v20.2d, v1.2d
	pmull	v5.1q, v20.1d, v27.1d
	pmull2	v6.1q, v20.2d, v27.2d
	eor	v3.16b, v4.16b, v3.16b
	zip2	v4.2d, v3.2d, v21.2d
	zip1	v3.2d, v21.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v0.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v0.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v7.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v7.d[0]
	pmull	v5.1q, v7.1d, v7.1d
	pmull2	v6.1q, v7.2d, v7.2d
	pmull2	v3.1q, v3.2d, v7.2d
	fmov	x20, d7
	mov	x2, v7.d[1]
	eor	v3.16b, v3.16b, v3.16b
	zip2	v4.2d, v3.2d, v21.2d
	zip1	v3.2d, v21.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v0.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v0.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v6.16b, v4.16b, v5.16b, v3.16b
	dup	v3.2d, v6.d[0]
	pmull2	v4.1q, v6.2d, v1.2d
	pmull	v5.1q, v6.1d, v27.1d
	fmov	x1, d6
	mov	x18, v6.d[1]
	str	q6, [sp, #464]
	pmull2	v6.1q, v6.2d, v27.2d
	pmull2	v1.1q, v16.2d, v1.2d
	pmull2	v3.1q, v3.2d, v27.2d
	eor	v1.16b, v1.16b, v2.16b
	eor	v3.16b, v4.16b, v3.16b
	zip1	v4.2d, v21.2d, v3.2d
	zip2	v3.2d, v3.2d, v21.2d
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v0.1d
	eor	v4.16b, v5.16b, v4.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v0.1d
	eor	v4.16b, v6.16b, v4.16b
	movi	v6.2d, #0000000000000000
	zip1	v2.2d, v6.2d, v1.2d
	zip2	v1.2d, v1.2d, v6.2d
	eor3	v3.16b, v3.16b, v4.16b, v5.16b
	str	q3, [sp, #448]
	pmull	v3.1q, v16.1d, v27.1d
	eor	v2.16b, v2.16b, v3.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v0.1q, v2.1d, v0.1d
	pmull2	v2.1q, v16.2d, v27.2d
	eor	v0.16b, v2.16b, v0.16b
	eor3	v0.16b, v1.16b, v0.16b, v3.16b
	str	q0, [sp, #432]
	cbz	x4, .LBB1_17
	subs	x19, x4, #128
	b.lo	.LBB1_8
	ldp	q0, q1, [x3]
	mov	v23.16b, v16.16b
	mov	v24.16b, v7.16b
	fmov	d22, x23
	ldp	q16, q17, [x3, #96]
	ldp	q2, q3, [x3, #32]
	ldp	q6, q7, [x3, #64]
	mov	v11.16b, v20.16b
	mov	v12.16b, v24.16b
	mov	v13.16b, v23.16b
	ldp	q14, q10, [sp, #432]
	add	x3, x3, #128
	rev64	v5.16b, v1.16b
	rev64	v3.16b, v3.16b
	rev64	v4.16b, v0.16b
	rev64	v0.16b, v17.16b
	rev64	v1.16b, v16.16b
	rev64	v18.16b, v2.16b
	rev64	v2.16b, v7.16b
	rev64	v6.16b, v6.16b
	pmull2	v16.1q, v27.2d, v0.2d
	pmull	v17.1q, v25.1d, v0.1d
	pmull2	v7.1q, v25.2d, v0.2d
	pmull2	v20.1q, v20.2d, v1.2d
	eor	v16.16b, v17.16b, v16.16b
	fmov	d17, x24
	pmull	v17.1q, v17.1d, v0.1d
	dup	v0.2d, x16
	pmull2	v19.1q, v0.2d, v1.2d
	pmull	v21.1q, v0.1d, v1.1d
	pmull	v1.1q, v22.1d, v1.1d
	fmov	d22, x2
	eor	v17.16b, v1.16b, v17.16b
	dup	v1.2d, x20
	eor	v7.16b, v19.16b, v7.16b
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	pmull2	v20.1q, v24.2d, v2.2d
	fmov	d24, x15
	pmull	v22.1q, v22.1d, v2.1d
	pmull2	v19.1q, v1.2d, v2.2d
	pmull	v21.1q, v1.1d, v2.1d
	dup	v2.2d, x17
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	pmull2	v21.1q, v23.2d, v6.2d
	pmull2	v20.1q, v2.2d, v6.2d
	pmull	v23.1q, v2.1d, v6.1d
	pmull	v6.1q, v24.1d, v6.1d
	eor3	v6.16b, v17.16b, v22.16b, v6.16b
	dup	v17.2d, v14.d[0]
	eor3	v7.16b, v7.16b, v19.16b, v20.16b
	eor3	v16.16b, v16.16b, v21.16b, v23.16b
	pmull2	v19.1q, v14.2d, v3.2d
	pmull	v20.1q, v14.1d, v3.1d
	pmull2	v17.1q, v17.2d, v3.2d
	dup	v3.2d, v3.d[0]
	eor3	v16.16b, v16.16b, v19.16b, v20.16b
	ldr	q20, [sp, #464]
	pmull2	v21.1q, v14.2d, v3.2d
	dup	v3.2d, x1
	pmull2	v19.1q, v3.2d, v18.2d
	pmull	v22.1q, v3.1d, v18.1d
	pmull2	v20.1q, v20.2d, v18.2d
	eor3	v7.16b, v7.16b, v17.16b, v19.16b
	fmov	d17, x18
	pmull	v19.1q, v10.1d, v5.1d
	eor3	v16.16b, v16.16b, v20.16b, v22.16b
	pmull	v20.1q, v26.1d, v4.1d
	pmull	v17.1q, v17.1d, v18.1d
	pmull2	v18.1q, v10.2d, v5.2d
	eor3	v6.16b, v6.16b, v21.16b, v17.16b
	dup	v17.2d, v10.d[0]
	eor3	v16.16b, v16.16b, v18.16b, v19.16b
	dup	v18.2d, v26.d[0]
	pmull2	v19.1q, v26.2d, v4.2d
	pmull2	v17.1q, v17.2d, v5.2d
	dup	v5.2d, v5.d[0]
	pmull2	v18.1q, v18.2d, v4.2d
	dup	v4.2d, v4.d[0]
	eor3	v16.16b, v16.16b, v19.16b, v20.16b
	pmull2	v5.1q, v10.2d, v5.2d
	pmull2	v4.1q, v26.2d, v4.2d
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	eor3	v6.16b, v6.16b, v5.16b, v4.16b
	cmp	x4, #256
	b.lo	.LBB1_9
	ldr	q30, [sp, #32]
	ldr	q29, [sp, #464]
	mov	x13, #-4467570830351532032
	fmov	x8, d14
	movi	v4.2d, #0000000000000000
	fmov	d5, x13
	mov	x9, v14.d[1]
	fmov	x10, d10
	mov	x11, v10.d[1]
	fmov	x12, d26
	mov	x13, v26.d[1]
	.p2align	5, , 16
.LBB1_6:
	zip1	v25.2d, v4.2d, v16.2d
	ldp	q17, q18, [x3]
	zip2	v16.2d, v16.2d, v4.2d
	mov	v9.16b, v26.16b
	ldp	q19, q20, [x3, #32]
	ldp	q21, q22, [x3, #64]
	eor	v7.16b, v25.16b, v7.16b
	ldp	q23, q24, [x3, #96]
	add	x3, x3, #128
	sub	x19, x19, #128
	pmull	v25.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v7.16b, v7.16b, v25.16b
	pmull	v25.1q, v7.1d, v5.1d
	ext	v26.16b, v7.16b, v7.16b, #8
	rev64	v7.16b, v17.16b
	rev64	v17.16b, v19.16b
	rev64	v19.16b, v21.16b
	rev64	v21.16b, v23.16b
	eor3	v6.16b, v6.16b, v16.16b, v25.16b
	ext	v16.16b, v7.16b, v7.16b, #8
	rev64	v7.16b, v18.16b
	rev64	v18.16b, v20.16b
	rev64	v20.16b, v22.16b
	rev64	v22.16b, v24.16b
	pmull2	v25.1q, v11.2d, v21.2d
	pmull2	v23.1q, v27.2d, v22.2d
	pmull	v24.1q, v30.1d, v22.1d
	fmov	d27, x23
	eor3	v6.16b, v16.16b, v6.16b, v26.16b
	pmull	v26.1q, v0.1d, v21.1d
	pmull2	v16.1q, v30.2d, v22.2d
	eor	v23.16b, v24.16b, v23.16b
	fmov	d24, x24
	eor3	v23.16b, v23.16b, v25.16b, v26.16b
	fmov	d26, x2
	pmull	v25.1q, v1.1d, v20.1d
	pmull	v22.1q, v24.1d, v22.1d
	pmull2	v24.1q, v0.2d, v21.2d
	pmull	v21.1q, v27.1d, v21.1d
	fmov	d27, x15
	eor	v16.16b, v24.16b, v16.16b
	pmull2	v24.1q, v12.2d, v20.2d
	eor	v21.16b, v21.16b, v22.16b
	pmull2	v22.1q, v1.2d, v20.2d
	pmull	v20.1q, v26.1d, v20.1d
	pmull	v26.1q, v2.1d, v19.1d
	eor3	v23.16b, v23.16b, v24.16b, v25.16b
	pmull2	v24.1q, v2.2d, v19.2d
	pmull2	v25.1q, v13.2d, v19.2d
	pmull	v19.1q, v27.1d, v19.1d
	ldur	q27, [x29, #-128]
	eor3	v19.16b, v21.16b, v20.16b, v19.16b
	dup	v20.2d, x8
	eor3	v16.16b, v16.16b, v22.16b, v24.16b
	eor3	v22.16b, v23.16b, v25.16b, v26.16b
	fmov	d24, x9
	fmov	d25, x18
	pmull2	v23.1q, v14.2d, v18.2d
	mov	v26.16b, v9.16b
	pmull2	v21.1q, v20.2d, v18.2d
	pmull	v20.1q, v20.1d, v18.1d
	pmull	v18.1q, v24.1d, v18.1d
	pmull	v24.1q, v3.1d, v17.1d
	eor3	v20.16b, v22.16b, v23.16b, v20.16b
	pmull2	v22.1q, v3.2d, v17.2d
	pmull2	v23.1q, v29.2d, v17.2d
	pmull	v17.1q, v25.1d, v17.1d
	eor3	v17.16b, v19.16b, v18.16b, v17.16b
	dup	v18.2d, x10
	eor3	v16.16b, v16.16b, v21.16b, v22.16b
	eor3	v20.16b, v20.16b, v23.16b, v24.16b
	pmull2	v21.1q, v10.2d, v7.2d
	fmov	d22, x11
	pmull2	v19.1q, v18.2d, v7.2d
	pmull	v18.1q, v18.1d, v7.1d
	pmull	v22.1q, v22.1d, v7.1d
	pmull	v7.1q, v26.1d, v6.1d
	eor3	v18.16b, v20.16b, v21.16b, v18.16b
	fmov	d20, x13
	dup	v21.2d, x12
	eor3	v7.16b, v16.16b, v19.16b, v7.16b
	pmull	v20.1q, v20.1d, v6.1d
	pmull2	v21.1q, v21.2d, v6.2d
	pmull2	v6.1q, v9.2d, v6.2d
	eor3	v16.16b, v18.16b, v20.16b, v21.16b
	eor3	v6.16b, v17.16b, v22.16b, v6.16b
	cmp	x19, #127
	b.hi	.LBB1_6
	b	.LBB1_10
.LBB1_7:
	mov	w0, wzr
	b	.LBB1_34
.LBB1_8:
	mov	x19, x4
	stp	x17, x16, [sp, #16]
	stp	x20, x1, [sp]
	mov	x26, x4
	cmp	x4, #16
	b.hs	.LBB1_11
	b	.LBB1_13
.LBB1_9:
	ldr	q30, [sp, #32]
.LBB1_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v16.2d
	mov	x8, #-4467570830351532032
	zip2	v0.2d, v16.2d, v0.2d
	ldr	q22, [sp, #528]
	mov	v25.16b, v30.16b
	fmov	d2, x8
	ldp	q24, q23, [sp, #48]
	mov	v20.16b, v11.16b
	mov	v16.16b, v13.16b
	eor	v1.16b, v1.16b, v7.16b
	ldp	q9, q30, [x29, #-176]
	ldur	q29, [x29, #-144]
	mov	v7.16b, v12.16b
	ldp	q11, q10, [x29, #-208]
	ldp	q13, q12, [x29, #-240]
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	ldur	q14, [x29, #-256]
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v6.16b, v0.16b, v2.16b
	eor	v6.16b, v1.16b, v0.16b
	stp	x17, x16, [sp, #16]
	stp	x20, x1, [sp]
	mov	x26, x4
	cmp	x19, #16
	b.lo	.LBB1_13
.LBB1_11:
	mov	x8, #-4467570830351532032
	fmov	d0, x24
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB1_12:
	ldr	q3, [x3], #16
	sub	x19, x19, #16
	rev64	v3.16b, v3.16b
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v6.16b
	pmull	v5.1q, v0.1d, v3.1d
	pmull2	v6.1q, v25.2d, v3.2d
	pmull	v4.1q, v27.1d, v3.1d
	pmull2	v3.1q, v27.2d, v3.2d
	eor	v5.16b, v6.16b, v5.16b
	zip1	v6.2d, v1.2d, v5.2d
	zip2	v5.2d, v5.2d, v1.2d
	eor	v4.16b, v6.16b, v4.16b
	pmull	v6.1q, v4.1d, v2.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v6.16b
	pmull	v6.1q, v4.1d, v2.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v3.16b, v6.16b, v3.16b
	eor3	v6.16b, v5.16b, v3.16b, v4.16b
	cmp	x19, #15
	b.hi	.LBB1_12
.LBB1_13:
	cbz	x19, .LBB1_16
	mov	w8, #16
	str	x2, [sp, #320]
	mov	w28, w0
	str	x18, [sp, #336]
	sub	x2, x8, x19
	sub	x8, x29, #96
	stp	q7, q16, [sp, #368]
	mov	x21, x5
	add	x0, x8, x19
	str	q6, [sp, #80]
	str	x15, [sp, #352]
	mov	x25, x7
	stp	q20, q26, [sp, #400]
	mov	w1, wzr
	mov	x22, x6
	mov	x20, x3
	bl	memset
	sub	x0, x29, #96
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	mov	x6, x22
	cbz	x22, .LBB1_31
	ldp	q1, q31, [sp, #80]
	rev64	v0.16b, v0.16b
	ldr	q25, [sp, #32]
	fmov	d2, x24
	ldur	q27, [x29, #-128]
	mov	x8, #-4467570830351532032
	ldp	q30, q29, [x29, #-160]
	ldp	q10, q9, [x29, #-192]
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q12, q11, [x29, #-224]
	mov	w0, w28
	mov	x4, x26
	ldp	q14, q13, [x29, #-256]
	ldp	q8, q28, [sp, #496]
	ldr	q15, [sp, #480]
	mov	x7, x25
	mov	x5, x21
	eor	v0.16b, v0.16b, v1.16b
	ldr	q22, [sp, #528]
	ldp	q24, q23, [sp, #48]
	ldp	q20, q26, [sp, #400]
	ldp	q7, q16, [sp, #368]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v25.2d, v0.2d
	pmull	v1.1q, v27.1d, v0.1d
	pmull2	v0.1q, v27.2d, v0.2d
	ldr	x15, [sp, #352]
	ldp	x17, x16, [sp, #16]
	ldr	x18, [sp, #336]
	ldr	x2, [sp, #320]
	ldp	x20, x1, [sp]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v6.16b, v2.16b, v0.16b, v1.16b
	b	.LBB1_18
.LBB1_16:
	ldp	x17, x16, [sp, #16]
	ldp	x20, x1, [sp]
	mov	x4, x26
.LBB1_17:
	cbz	x6, .LBB1_33
.LBB1_18:
	adrp	x10, .LCPI1_2
	subs	x19, x6, #128
	b.lo	.LBB1_23
	adrp	x9, .LCPI1_3
	str	q6, [sp, #80]
	ldp	q17, q18, [x5]
	ldr	q3, [x9, :lo12:.LCPI1_3]
	adrp	x9, .LCPI1_4
	stp	q7, q16, [sp, #368]
	add	x8, x5, #128
	ldr	q4, [x9, :lo12:.LCPI1_4]
	adrp	x9, .LCPI1_5
	stp	q20, q26, [sp, #400]
	adrp	x11, .LCPI1_11
	ldr	q5, [x9, :lo12:.LCPI1_5]
	adrp	x9, .LCPI1_6
	ldp	q19, q20, [x5, #32]
	ldr	q6, [x9, :lo12:.LCPI1_6]
	adrp	x9, .LCPI1_7
	ldp	q21, q16, [x5, #64]
	ldr	q7, [x9, :lo12:.LCPI1_7]
	adrp	x9, .LCPI1_8
	ldr	q2, [x9, :lo12:.LCPI1_8]
	adrp	x9, .LCPI1_9
	ldr	q0, [x9, :lo12:.LCPI1_9]
	adrp	x9, .LCPI1_10
	ldr	q1, [x9, :lo12:.LCPI1_10]
	//APP
	aese	v3.16b, v30.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v30.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v30.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v30.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v30.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v30.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v29.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v29.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v29.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v29.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v29.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v29.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v9.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v11.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v12.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v12.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v13.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v14.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v14.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v14.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v28.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v28.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v28.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v28.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v28.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v31.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v31.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v31.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v31.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v8.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v8.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v8.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v8.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v8.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v8.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v15.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v15.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v15.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v22.16b
	aesmc	v7.16b, v7.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	aese	v3.16b, v23.16b
	aese	v4.16b, v23.16b
	aese	v5.16b, v23.16b
	aese	v6.16b, v23.16b
	aese	v7.16b, v23.16b
	aese	v2.16b, v23.16b
	aese	v0.16b, v23.16b
	aese	v1.16b, v23.16b
	add	x9, x7, #128
	eor3	v26.16b, v17.16b, v3.16b, v24.16b
	eor3	v25.16b, v18.16b, v4.16b, v24.16b
	eor3	v27.16b, v19.16b, v5.16b, v24.16b
	ldp	q3, q4, [x5, #96]
	eor3	v28.16b, v20.16b, v6.16b, v24.16b
	eor3	v31.16b, v21.16b, v7.16b, v24.16b
	eor3	v8.16b, v16.16b, v2.16b, v24.16b
	stp	q26, q25, [x7]
	stp	q27, q28, [x7, #32]
	stp	q31, q8, [x7, #64]
	eor3	v15.16b, v3.16b, v0.16b, v24.16b
	eor3	v0.16b, v4.16b, v1.16b, v24.16b
	stp	q15, q0, [x7, #96]
	cmp	x6, #256
	b.lo	.LBB1_24
	ldr	q1, [sp, #416]
	ldr	q20, [x11, :lo12:.LCPI1_11]
	adrp	x11, .LCPI1_12
	ldp	q3, q21, [sp, #80]
	movi	v19.2d, #0000000000000000
	ext	v2.16b, v1.16b, v1.16b, #8
	ldp	q1, q16, [sp, #448]
	ext	v1.16b, v1.16b, v1.16b, #8
	stp	q1, q2, [sp, #336]
	ldr	q1, [sp, #432]
	ext	v2.16b, v16.16b, v16.16b, #8
	ext	v1.16b, v1.16b, v1.16b, #8
	stp	q1, q2, [sp, #304]
	ldp	q1, q4, [sp, #368]
	ext	v2.16b, v4.16b, v4.16b, #8
	ext	v1.16b, v1.16b, v1.16b, #8
	stp	q1, q2, [sp, #272]
	ldr	q1, [sp, #400]
	ext	v1.16b, v1.16b, v1.16b, #8
	str	q1, [sp, #256]
	ldur	q1, [x29, #-128]
	ext	v1.16b, v1.16b, v1.16b, #8
	str	q1, [sp, #240]
	ldr	q1, [x11, :lo12:.LCPI1_12]
	str	q1, [sp, #224]
	ldr	q1, [x10, :lo12:.LCPI1_2]
	adrp	x10, .LCPI1_13
	str	q1, [sp, #208]
	ldr	q1, [x10, :lo12:.LCPI1_13]
	adrp	x10, .LCPI1_14
	str	q1, [sp, #192]
	ldr	q1, [x10, :lo12:.LCPI1_14]
	adrp	x10, .LCPI1_15
	str	q1, [sp, #176]
	ldr	q1, [x10, :lo12:.LCPI1_15]
	adrp	x10, .LCPI1_16
	str	q1, [sp, #160]
	ldr	q1, [x10, :lo12:.LCPI1_16]
	adrp	x10, .LCPI1_17
	str	q1, [sp, #144]
	ldr	q1, [x10, :lo12:.LCPI1_17]
	adrp	x10, .LCPI1_18
	str	q1, [sp, #128]
	ldr	q1, [x10, :lo12:.LCPI1_18]
	mov	x10, #-4467570830351532032
	str	q1, [sp, #112]
	.p2align	5, , 16
.LBB1_21:
	ldr	q1, [sp, #224]
	rev64	v26.16b, v26.16b
	rev64	v25.16b, v25.16b
	rev32	v13.16b, v20.16b
	rev64	v27.16b, v27.16b
	ldr	q6, [sp, #416]
	rev64	v28.16b, v28.16b
	rev64	v2.16b, v15.16b
	ldp	q22, q7, [sp, #336]
	ldur	q17, [x29, #-160]
	ldr	q18, [sp, #448]
	rev64	v31.16b, v31.16b
	rev64	v8.16b, v8.16b
	ext	v2.16b, v2.16b, v2.16b, #8
	add	x11, x8, #128
	add	x12, x9, #128
	sub	x19, x19, #128
	orr	v1.16b, v20.16b, v1.16b
	rev32	v14.16b, v1.16b
	ldr	q1, [sp, #208]
	add	v1.4s, v20.4s, v1.4s
	rev32	v11.16b, v1.16b
	ldr	q1, [sp, #192]
	add	v1.4s, v20.4s, v1.4s
	rev32	v12.16b, v1.16b
	ldr	q1, [sp, #176]
	add	v1.4s, v20.4s, v1.4s
	rev32	v9.16b, v1.16b
	ldr	q1, [sp, #160]
	add	v1.4s, v20.4s, v1.4s
	rev32	v10.16b, v1.16b
	ldr	q1, [sp, #144]
	add	v1.4s, v20.4s, v1.4s
	rev32	v29.16b, v1.16b
	ldr	q1, [sp, #128]
	add	v1.4s, v20.4s, v1.4s
	rev32	v30.16b, v1.16b
	rev64	v1.16b, v0.16b
	ext	v0.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v3.16b, v0.16b
	//APP
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v17.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	pmull	v15.1q, v26.1d, v6.1d
	pmull2	v0.1q, v26.2d, v6.2d
	pmull	v4.1q, v26.1d, v7.1d
	pmull2	v5.1q, v26.2d, v7.2d
	eor3	v3.16b, v19.16b, v4.16b, v5.16b
	//NO_APP
	ext	v4.16b, v25.16b, v25.16b, #8
	ldur	q17, [x29, #-144]
	//APP
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v17.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	pmull	v5.1q, v4.1d, v18.1d
	pmull2	v25.1q, v4.2d, v18.2d
	pmull	v26.1q, v4.1d, v22.1d
	pmull2	v7.1q, v4.2d, v22.2d
	eor3	v6.16b, v3.16b, v26.16b, v7.16b
	//NO_APP
	eor	v3.16b, v5.16b, v15.16b
	ext	v4.16b, v27.16b, v27.16b, #8
	ldp	q22, q18, [sp, #304]
	ldur	q17, [x29, #-176]
	//APP
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v17.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	pmull	v5.1q, v4.1d, v16.1d
	pmull2	v26.1q, v4.2d, v16.2d
	pmull	v27.1q, v4.1d, v18.1d
	pmull2	v15.1q, v4.2d, v18.2d
	eor3	v7.16b, v6.16b, v27.16b, v15.16b
	//NO_APP
	ext	v4.16b, v28.16b, v28.16b, #8
	ldr	q18, [sp, #432]
	ldur	q17, [x29, #-192]
	//APP
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v17.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	pmull	v6.1q, v4.1d, v18.1d
	pmull2	v27.1q, v4.2d, v18.2d
	pmull	v28.1q, v4.1d, v22.1d
	pmull2	v16.1q, v4.2d, v22.2d
	eor3	v15.16b, v7.16b, v28.16b, v16.16b
	//NO_APP
	ext	v4.16b, v31.16b, v31.16b, #8
	ldr	q18, [sp, #384]
	ldr	q22, [sp, #288]
	ldur	q17, [x29, #-208]
	eor3	v0.16b, v25.16b, v0.16b, v26.16b
	eor3	v3.16b, v3.16b, v5.16b, v6.16b
	//APP
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v17.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	pmull	v5.1q, v4.1d, v18.1d
	pmull2	v28.1q, v4.2d, v18.2d
	pmull	v7.1q, v4.1d, v22.1d
	pmull2	v16.1q, v4.2d, v22.2d
	eor3	v6.16b, v15.16b, v7.16b, v16.16b
	//NO_APP
	ext	v4.16b, v8.16b, v8.16b, #8
	ldr	q18, [sp, #368]
	ldr	q22, [sp, #272]
	ldp	q17, q25, [x29, #-240]
	//APP
	aese	v13.16b, v25.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v25.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v25.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v25.16b
	aesmc	v30.16b, v30.16b
	pmull	v7.1q, v4.1d, v18.1d
	pmull2	v31.1q, v4.2d, v18.2d
	pmull	v8.1q, v4.1d, v22.1d
	pmull2	v15.1q, v4.2d, v22.2d
	eor3	v16.16b, v6.16b, v8.16b, v15.16b
	//NO_APP
	ldr	q15, [sp, #400]
	eor3	v0.16b, v0.16b, v27.16b, v28.16b
	ldp	q22, q18, [sp, #240]
	eor3	v3.16b, v3.16b, v5.16b, v7.16b
	//APP
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v17.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	pmull	v4.1q, v2.1d, v15.1d
	pmull2	v8.1q, v2.2d, v15.2d
	pmull	v6.1q, v2.1d, v18.1d
	pmull2	v7.1q, v2.2d, v18.2d
	eor3	v5.16b, v16.16b, v6.16b, v7.16b
	//NO_APP
	ext	v2.16b, v1.16b, v1.16b, #8
	ldur	q18, [x29, #-128]
	ldur	q17, [x29, #-256]
	//APP
	aese	v13.16b, v17.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v17.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v17.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	pmull	v6.1q, v2.1d, v18.1d
	pmull2	v15.1q, v2.2d, v18.2d
	pmull	v7.1q, v2.1d, v22.1d
	pmull2	v16.1q, v2.2d, v22.2d
	eor3	v1.16b, v5.16b, v7.16b, v16.16b
	//NO_APP
	eor3	v0.16b, v0.16b, v31.16b, v8.16b
	eor3	v2.16b, v3.16b, v4.16b, v6.16b
	ldp	q3, q4, [x8]
	ldp	q5, q6, [sp, #496]
	//APP
	aese	v13.16b, v6.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v6.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v6.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v6.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v6.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v6.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	//NO_APP
	//APP
	aese	v13.16b, v21.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v21.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v21.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v21.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v21.16b
	aesmc	v30.16b, v30.16b
	//NO_APP
	//APP
	aese	v13.16b, v5.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v5.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v5.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v5.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v5.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v5.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v5.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v5.16b
	aesmc	v30.16b, v30.16b
	//NO_APP
	ldp	q16, q5, [sp, #464]
	//APP
	aese	v13.16b, v5.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v5.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v5.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v5.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v5.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v5.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v5.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v5.16b
	aesmc	v30.16b, v30.16b
	//NO_APP
	ldr	q5, [sp, #528]
	//APP
	aese	v13.16b, v5.16b
	aesmc	v13.16b, v13.16b
	aese	v14.16b, v5.16b
	aesmc	v14.16b, v14.16b
	aese	v11.16b, v5.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v5.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v5.16b
	aesmc	v9.16b, v9.16b
	aese	v10.16b, v5.16b
	aesmc	v10.16b, v10.16b
	aese	v29.16b, v5.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v5.16b
	aesmc	v30.16b, v30.16b
	//NO_APP
	aese	v13.16b, v23.16b
	aese	v14.16b, v23.16b
	aese	v11.16b, v23.16b
	aese	v12.16b, v23.16b
	aese	v9.16b, v23.16b
	aese	v29.16b, v23.16b
	aese	v30.16b, v23.16b
	aese	v10.16b, v23.16b
	eor3	v25.16b, v4.16b, v14.16b, v24.16b
	eor3	v26.16b, v3.16b, v13.16b, v24.16b
	ldp	q3, q4, [x8, #32]
	eor3	v28.16b, v4.16b, v12.16b, v24.16b
	eor3	v27.16b, v3.16b, v11.16b, v24.16b
	ldp	q3, q4, [x8, #64]
	eor3	v8.16b, v4.16b, v10.16b, v24.16b
	eor3	v31.16b, v3.16b, v9.16b, v24.16b
	zip1	v3.2d, v19.2d, v1.2d
	zip2	v1.2d, v1.2d, v19.2d
	eor3	v0.16b, v0.16b, v15.16b, v1.16b
	fmov	d1, x10
	eor	v2.16b, v3.16b, v2.16b
	pmull	v3.1q, v2.1d, v1.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v3.16b
	pmull	v1.1q, v2.1d, v1.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v3.16b, v0.16b, v1.16b, v2.16b
	ldp	q0, q1, [x8, #96]
	stp	q26, q25, [x9]
	stp	q27, q28, [x9, #32]
	stp	q31, q8, [x9, #64]
	mov	x8, x11
	eor3	v15.16b, v0.16b, v29.16b, v24.16b
	eor3	v0.16b, v1.16b, v30.16b, v24.16b
	ldr	q1, [sp, #112]
	add	v20.4s, v20.4s, v1.4s
	stp	q15, q0, [x9, #96]
	mov	x9, x12
	cmp	x19, #127
	b.hi	.LBB1_21
	ldp	q30, q29, [x29, #-160]
	ldp	q10, q9, [x29, #-192]
	ldp	q12, q11, [x29, #-224]
	mov	x9, x12
	mov	x8, x11
	ldr	q22, [sp, #528]
	ldp	q14, q13, [x29, #-256]
	str	q20, [sp, #352]
	str	q3, [sp, #80]
	b	.LBB1_25
.LBB1_23:
	ldr	q16, [x10, :lo12:.LCPI1_2]
	mov	x19, x6
	mov	x23, x4
	cmp	x6, #16
	b.hs	.LBB1_26
	b	.LBB1_28
.LBB1_24:
	ldr	q1, [x11, :lo12:.LCPI1_11]
	str	q1, [sp, #352]
.LBB1_25:
	rev64	v1.16b, v26.16b
	rev64	v3.16b, v27.16b
	ldur	q27, [x29, #-128]
	rev64	v16.16b, v0.16b
	ldr	q20, [sp, #400]
	rev64	v7.16b, v15.16b
	fmov	d21, x23
	rev64	v6.16b, v8.16b
	rev64	v5.16b, v31.16b
	rev64	v4.16b, v28.16b
	mov	x10, #-4467570830351532032
	ext	v2.16b, v1.16b, v1.16b, #8
	rev64	v1.16b, v25.16b
	ldr	q25, [sp, #32]
	ldp	q8, q28, [sp, #496]
	ldp	q0, q31, [sp, #80]
	ldr	q15, [sp, #480]
	mov	x7, x9
	mov	x5, x8
	pmull2	v17.1q, v27.2d, v16.2d
	eor	v0.16b, v2.16b, v0.16b
	pmull2	v20.1q, v20.2d, v7.2d
	pmull	v18.1q, v25.1d, v16.1d
	pmull2	v2.1q, v25.2d, v16.2d
	eor	v17.16b, v18.16b, v17.16b
	fmov	d18, x24
	pmull	v16.1q, v18.1d, v16.1d
	dup	v18.2d, x16
	pmull2	v19.1q, v18.2d, v7.2d
	pmull	v18.1q, v18.1d, v7.1d
	pmull	v7.1q, v21.1d, v7.1d
	fmov	d21, x2
	eor3	v17.16b, v17.16b, v20.16b, v18.16b
	ldr	q20, [sp, #368]
	dup	v18.2d, x20
	eor	v2.16b, v19.16b, v2.16b
	pmull2	v19.1q, v18.2d, v6.2d
	pmull	v18.1q, v18.1d, v6.1d
	pmull2	v20.1q, v20.2d, v6.2d
	pmull	v6.1q, v21.1d, v6.1d
	eor3	v6.16b, v7.16b, v16.16b, v6.16b
	dup	v7.2d, x17
	eor3	v17.16b, v17.16b, v20.16b, v18.16b
	ldr	q18, [sp, #384]
	fmov	d20, x15
	pmull2	v16.1q, v7.2d, v5.2d
	pmull	v7.1q, v7.1d, v5.1d
	eor3	v2.16b, v2.16b, v19.16b, v16.16b
	ldr	q19, [sp, #432]
	pmull2	v18.1q, v18.2d, v5.2d
	pmull	v5.1q, v20.1d, v5.1d
	eor3	v7.16b, v17.16b, v18.16b, v7.16b
	dup	v16.2d, v19.d[0]
	pmull2	v17.1q, v19.2d, v4.2d
	pmull	v18.1q, v19.1d, v4.1d
	pmull2	v16.1q, v16.2d, v4.2d
	dup	v4.2d, v4.d[0]
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	ldr	q17, [sp, #464]
	fmov	d18, x18
	pmull2	v4.1q, v19.2d, v4.2d
	eor3	v4.16b, v6.16b, v5.16b, v4.16b
	dup	v5.2d, x1
	pmull2	v17.1q, v17.2d, v3.2d
	pmull2	v6.1q, v5.2d, v3.2d
	pmull	v5.1q, v5.1d, v3.1d
	pmull	v3.1q, v18.1d, v3.1d
	eor3	v5.16b, v7.16b, v17.16b, v5.16b
	ldr	q17, [sp, #448]
	eor3	v2.16b, v2.16b, v16.16b, v6.16b
	pmull2	v7.1q, v17.2d, v1.2d
	pmull	v16.1q, v17.1d, v1.1d
	dup	v6.2d, v17.d[0]
	eor3	v5.16b, v5.16b, v7.16b, v16.16b
	ldr	q16, [sp, #416]
	pmull2	v6.1q, v6.2d, v1.2d
	dup	v1.2d, v1.d[0]
	pmull2	v1.1q, v17.2d, v1.2d
	eor3	v1.16b, v4.16b, v3.16b, v1.16b
	dup	v4.2d, v0.d[0]
	dup	v7.2d, v16.d[0]
	pmull	v3.1q, v16.1d, v0.1d
	pmull2	v4.1q, v16.2d, v4.2d
	pmull2	v7.1q, v7.2d, v0.2d
	eor3	v2.16b, v2.16b, v6.16b, v3.16b
	pmull2	v0.1q, v16.2d, v0.2d
	ldr	q16, [sp, #352]
	eor3	v3.16b, v5.16b, v4.16b, v7.16b
	movi	v4.2d, #0000000000000000
	zip1	v5.2d, v4.2d, v3.2d
	zip2	v3.2d, v3.2d, v4.2d
	fmov	d4, x10
	eor	v2.16b, v5.16b, v2.16b
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v5.16b
	pmull	v4.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v0.16b, v1.16b, v0.16b, v4.16b
	eor3	v6.16b, v3.16b, v0.16b, v2.16b
	mov	x23, x4
	cmp	x19, #16
	b.lo	.LBB1_28
.LBB1_26:
	adrp	x8, .LCPI1_12
	fmov	d1, x24
	movi	v2.2d, #0000000000000000
	ldr	q0, [x8, :lo12:.LCPI1_12]
	mov	x8, #-4467570830351532032
	fmov	d3, x8
	.p2align	5, , 16
.LBB1_27:
	rev32	v5.16b, v16.16b
	ldr	q4, [x5], #16
	add	v16.4s, v16.4s, v0.4s
	sub	x19, x19, #16
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v23.16b
	eor3	v4.16b, v4.16b, v5.16b, v24.16b
	str	q4, [x7], #16
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v6.16b
	pmull	v6.1q, v1.1d, v4.1d
	pmull2	v7.1q, v25.2d, v4.2d
	pmull	v5.1q, v27.1d, v4.1d
	pmull2	v4.1q, v27.2d, v4.2d
	eor	v6.16b, v7.16b, v6.16b
	zip1	v7.2d, v2.2d, v6.2d
	zip2	v6.2d, v6.2d, v2.2d
	eor	v5.16b, v7.16b, v5.16b
	pmull	v7.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v7.16b
	pmull	v7.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v4.16b, v7.16b, v4.16b
	eor3	v6.16b, v6.16b, v4.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB1_27
.LBB1_28:
	cbz	x19, .LBB1_30
	mov	w8, #16
	mov	w25, w0
	mov	w1, wzr
	mov	x26, x6
	mov	x21, x7
	mov	x22, x5
	sub	x20, x8, x19
	sub	x8, x29, #96
	str	q6, [sp, #80]
	str	q16, [sp, #352]
	add	x0, x8, x19
	mov	x2, x20
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldr	q1, [sp, #352]
	ldp	q3, q2, [x29, #-160]
	sub	x1, x29, #96
	sub	x22, x29, #96
	ldur	q0, [x29, #-96]
	mov	x0, x21
	mov	x2, x19
	rev32	v1.16b, v1.16b
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
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
	ldr	q2, [sp, #512]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #96]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #480]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #528]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #48]
	aese	v1.16b, v3.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	str	q0, [sp, #464]
	stur	q0, [x29, #-96]
	bl	memcpy
	ldr	q0, [sp, #464]
	add	x0, x22, x19
	mov	w1, wzr
	mov	x2, x20
	stur	q0, [x29, #-112]
	bl	memset
	sub	x0, x29, #96
	sub	x1, x29, #112
	mov	x2, x19
	bl	memcpy
	ldp	q23, q1, [sp, #64]
	ldp	q25, q24, [sp, #32]
	ldp	q29, q27, [x29, #-144]
	mov	x6, x26
	mov	w0, w25
	mov	x4, x23
	ldp	q28, q22, [sp, #512]
	ldp	q15, q8, [sp, #480]
	ldr	q31, [sp, #96]
	ldp	q14, q13, [x29, #-256]
	ldur	q30, [x29, #-160]
	ldur	q0, [x29, #-96]
	ldp	q12, q11, [x29, #-224]
	ldp	q10, q9, [x29, #-192]
	b	.LBB1_32
.LBB1_30:
	mov	x4, x23
	b	.LBB1_33
.LBB1_31:
	ldp	q30, q29, [x29, #-160]
	ldp	q10, q9, [x29, #-192]
	ldp	q12, q11, [x29, #-224]
	mov	w0, w28
	mov	x4, x26
	ldr	q15, [sp, #480]
	ldp	q14, q13, [x29, #-256]
	ldr	q22, [sp, #528]
	ldur	q27, [x29, #-128]
	ldr	q25, [sp, #32]
	ldp	q8, q28, [sp, #496]
	ldp	q1, q31, [sp, #80]
	ldp	q24, q23, [sp, #48]
.LBB1_32:
	rev64	v0.16b, v0.16b
	fmov	d2, x24
	mov	x8, #-4467570830351532032
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v25.2d, v0.2d
	pmull	v1.1q, v27.1d, v0.1d
	pmull2	v0.1q, v27.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v6.16b, v2.16b, v0.16b, v1.16b
.LBB1_33:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d2, x24
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	eor	v0.16b, v6.16b, v0.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v25.2d, v0.2d
	pmull	v1.1q, v27.1d, v0.1d
	pmull2	v0.1q, v27.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	adrp	x8, .LCPI1_19
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI1_19]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v1.16b, v30.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v29.16b
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
	aese	v1.16b, v28.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v8.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v23.16b
	eor3	v0.16b, v1.16b, v0.16b, v24.16b
	str	q0, [x27]
.LBB1_34:
	add	sp, sp, #736
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

	.section	.text.haberdashery_aes256gcmdndk_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndk_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcmdndk_neoversev2_init,@function
haberdashery_aes256gcmdndk_neoversev2_init:
	.cfi_startproc
	cmp	x2, #32
	b.ne	.LBB2_2
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
	stp	q0, q1, [x0]
	dup	v7.4s, w8
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
	ror	w8, w8, #8
	dup	v24.4s, w8
	stp	q7, q16, [x0, #64]
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
	stp	q19, q20, [x0, #128]
	ror	w8, w8, #8
	dup	v28.4s, w8
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
	ror	w8, w8, #8
	dup	v29.4s, w8
	stp	q21, q24, [x0, #160]
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
.LBB2_2:
	cmp	x2, #32
	cset	w0, eq
	ret
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndk_neoversev2_init, .Lfunc_end2-haberdashery_aes256gcmdndk_neoversev2_init
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

	.ident	"rustc version 1.98.0-nightly (c397dae80 2026-07-02)"
	.section	".note.GNU-stack","",@progbits

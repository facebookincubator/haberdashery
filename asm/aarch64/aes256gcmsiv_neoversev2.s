# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI0_2:
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.LCPI0_3:
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
.LCPI0_4:
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.LCPI0_5:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI0_6:
	.word	6
	.word	0
	.word	0
	.word	0
.LCPI0_7:
	.word	7
	.word	0
	.word	0
	.word	0
.LCPI0_8:
	.word	8
	.word	0
	.word	0
	.word	0
.LCPI0_9:
	.word	9
	.word	0
	.word	0
	.word	0
.LCPI0_10:
	.word	10
	.word	0
	.word	0
	.word	0
.LCPI0_11:
	.word	11
	.word	0
	.word	0
	.word	0
.LCPI0_12:
	.word	12
	.word	0
	.word	0
	.word	0
.LCPI0_13:
	.word	13
	.word	0
	.word	0
	.word	0
.LCPI0_14:
	.word	14
	.word	0
	.word	0
	.word	0
.LCPI0_15:
	.word	15
	.word	0
	.word	0
	.word	0
.LCPI0_16:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	127
	.section	.text.haberdashery_aes256gcmsiv_neoversev2_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_neoversev2_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_neoversev2_decrypt,@function
haberdashery_aes256gcmsiv_neoversev2_decrypt:
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
	.cfi_remember_state
	sub	sp, sp, #768
	ldr	x8, [x29, #112]
	cmp	x6, x8
	b.ne	.LBB0_9
	mov	w8, wzr
	cmp	x2, #12
	b.ne	.LBB0_10
	mov	x9, #1
	movk	x9, #16, lsl #32
	cmp	x4, x9
	b.hs	.LBB0_10
	cmp	x6, x9
	b.hs	.LBB0_10
	ldr	x8, [x29, #96]
	cmp	x8, #16
	b.lo	.LBB0_9
	ldp	w14, w2, [x1]
	movi	v0.2d, #0000000000000000
	ldr	w1, [x1, #8]
	adrp	x8, .LCPI0_0
	movi	v16.2d, #0000000000000000
	ldr	q1, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_1
	ldp	q6, q7, [x0]
	movi	v29.2d, #0000000000000000
	mov	v0.s[1], w14
	str	q1, [sp, #208]
	mov	v0.s[2], w2
	mov	v0.s[3], w1
	eor	v3.16b, v0.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_2
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	str	q1, [sp, #512]
	eor	v4.16b, v0.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_3
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	str	q1, [sp, #496]
	eor	v2.16b, v0.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	str	q1, [sp, #480]
	eor	v5.16b, v0.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI0_4]
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	str	q1, [sp, #464]
	eor	v1.16b, v0.16b, v1.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #32]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #64]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #96]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #128]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #160]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #192]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	ldr	q6, [x0, #224]
	aese	v3.16b, v7.16b
	aese	v5.16b, v7.16b
	aese	v1.16b, v7.16b
	aese	v4.16b, v7.16b
	aese	v0.16b, v7.16b
	aese	v2.16b, v7.16b
	eor	v12.16b, v6.16b, v3.16b
	eor	v3.16b, v6.16b, v5.16b
	eor	v1.8b, v6.8b, v1.8b
	eor	v15.16b, v6.16b, v4.16b
	eor	v13.16b, v6.16b, v0.16b
	eor	v2.8b, v6.8b, v2.8b
	dup	v0.4s, v16.s[0]
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	mov	v14.16b, v3.16b
	mov	v5.d[1], v15.d[0]
	ext	v7.16b, v0.16b, v15.16b, #4
	mov	v15.d[1], v2.d[0]
	mov	v6.d[1], v3.d[0]
	fmov	x9, d12
	mov	v14.d[1], v1.d[0]
	movi	v1.2d, #0000000000000000
	str	q1, [sp, #288]
	ext	v1.16b, v16.16b, v16.16b, #4
	mov	w8, v14.s[3]
	ext	v2.16b, v1.16b, v15.16b, #12
	ror	w8, w8, #8
	dup	v4.4s, w8
	aese	v4.16b, v29.16b
	dup	v4.4s, v4.s[0]
	eor	v4.16b, v5.16b, v4.16b
	movi	v5.4s, #1
	eor3	v2.16b, v4.16b, v2.16b, v7.16b
	ext	v7.16b, v0.16b, v3.16b, #4
	eor3	v10.16b, v15.16b, v2.16b, v5.16b
	ext	v5.16b, v1.16b, v14.16b, #12
	eor	v4.16b, v15.16b, v2.16b
	dup	v16.4s, v10.s[3]
	aese	v16.16b, v29.16b
	dup	v16.4s, v16.s[0]
	eor	v6.16b, v6.16b, v16.16b
	ext	v16.16b, v0.16b, v10.16b, #4
	eor3	v5.16b, v6.16b, v5.16b, v7.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v10.d[0]
	ext	v6.16b, v1.16b, v10.16b, #12
	eor	v18.16b, v14.16b, v5.16b
	eor	v3.8b, v3.8b, v5.8b
	mov	w8, v18.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v29.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v6.16b, v7.16b, v6.16b, v16.16b
	movi	v7.4s, #3
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v3.d[0]
	ext	v3.16b, v0.16b, v18.16b, #4
	eor3	v19.16b, v4.16b, v6.16b, v7.16b
	ext	v7.16b, v1.16b, v18.16b, #12
	eor3	v2.16b, v15.16b, v2.16b, v6.16b
	dup	v17.4s, v19.s[3]
	stp	q19, q18, [x29, #-256]
	aese	v17.16b, v29.16b
	dup	v17.4s, v17.s[0]
	eor	v16.16b, v16.16b, v17.16b
	eor3	v3.16b, v16.16b, v7.16b, v3.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v19.d[0]
	ext	v16.16b, v0.16b, v19.16b, #4
	eor3	v21.16b, v14.16b, v5.16b, v3.16b
	ext	v5.16b, v1.16b, v19.16b, #12
	mov	w8, v21.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v29.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v5.16b, v7.16b, v5.16b, v16.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v21.d[0]
	ext	v16.16b, v0.16b, v21.16b, #4
	eor3	v4.16b, v4.16b, v6.16b, v5.16b
	movi	v6.4s, #7
	eor3	v22.16b, v2.16b, v5.16b, v6.16b
	ext	v6.16b, v1.16b, v21.16b, #12
	dup	v17.4s, v22.s[3]
	aese	v17.16b, v29.16b
	dup	v17.4s, v17.s[0]
	stp	q22, q21, [x29, #-144]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v6.16b, v7.16b, v6.16b, v16.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v22.d[0]
	ext	v16.16b, v0.16b, v22.16b, #4
	eor3	v23.16b, v18.16b, v3.16b, v6.16b
	ext	v3.16b, v1.16b, v22.16b, #12
	pmull	v18.1q, v12.1d, v12.1d
	mov	w8, v23.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v29.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v7.16b, v7.16b, v3.16b, v16.16b
	movi	v3.4s, #15
	ext	v16.16b, v0.16b, v23.16b, #4
	eor3	v25.16b, v4.16b, v7.16b, v3.16b
	eor3	v2.16b, v2.16b, v5.16b, v7.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v23.d[0]
	ext	v3.16b, v1.16b, v23.16b, #12
	dup	v17.4s, v25.s[3]
	aese	v17.16b, v29.16b
	dup	v17.4s, v17.s[0]
	stp	q25, q23, [x29, #-176]
	eor	v5.16b, v5.16b, v17.16b
	eor3	v5.16b, v5.16b, v3.16b, v16.16b
	ext	v3.16b, v1.16b, v25.16b, #12
	ext	v16.16b, v0.16b, v25.16b, #4
	eor3	v26.16b, v21.16b, v6.16b, v5.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v25.d[0]
	mov	w8, v26.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v29.16b
	dup	v17.4s, v17.s[0]
	eor	v6.16b, v6.16b, v17.16b
	eor3	v3.16b, v6.16b, v3.16b, v16.16b
	ext	v16.16b, v0.16b, v26.16b, #4
	eor3	v6.16b, v4.16b, v7.16b, v3.16b
	movi	v4.4s, #31
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v26.d[0]
	eor3	v27.16b, v2.16b, v3.16b, v4.16b
	ext	v4.16b, v1.16b, v26.16b, #12
	stp	q3, q2, [sp, #544]
	dup	v17.4s, v27.s[3]
	aese	v17.16b, v29.16b
	stp	q27, q26, [x29, #-208]
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v4.16b, v7.16b, v4.16b, v16.16b
	ext	v7.16b, v0.16b, v27.16b, #4
	eor3	v28.16b, v23.16b, v5.16b, v4.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v27.d[0]
	ext	v4.16b, v1.16b, v27.16b, #12
	mov	w8, v28.s[3]
	stur	q28, [x29, #-224]
	ror	w8, w8, #8
	dup	v16.4s, w8
	mov	x8, #-4467570830351532032
	aese	v16.16b, v29.16b
	dup	v16.4s, v16.s[0]
	eor	v5.16b, v5.16b, v16.16b
	pmull	v16.1q, v13.1d, v13.1d
	eor3	v2.16b, v5.16b, v4.16b, v7.16b
	movi	v5.4s, #63
	eor3	v24.16b, v6.16b, v2.16b, v5.16b
	ext	v5.16b, v1.16b, v28.16b, #12
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v28.d[0]
	dup	v7.4s, v24.s[3]
	str	q2, [sp, #528]
	aese	v7.16b, v29.16b
	dup	v7.4s, v7.s[0]
	eor3	v5.16b, v7.16b, v6.16b, v5.16b
	pmull	v6.1q, v13.1d, v12.1d
	eor	v7.16b, v6.16b, v6.16b
	zip1	v6.2d, v29.2d, v7.2d
	zip2	v7.2d, v7.2d, v29.2d
	eor	v16.16b, v6.16b, v16.16b
	fmov	d6, x8
	ext	v17.16b, v16.16b, v16.16b, #8
	pmull	v16.1q, v16.1d, v6.1d
	eor	v16.16b, v17.16b, v16.16b
	pmull	v17.1q, v16.1d, v6.1d
	ext	v16.16b, v16.16b, v16.16b, #8
	eor	v17.16b, v18.16b, v17.16b
	eor3	v8.16b, v7.16b, v17.16b, v16.16b
	dup	v7.2d, v8.d[0]
	pmull	v17.1q, v8.1d, v8.1d
	pmull2	v18.1q, v8.2d, v8.2d
	mov	x25, v8.d[1]
	pmull2	v7.1q, v7.2d, v8.2d
	fmov	x28, d8
	stur	q8, [x29, #-112]
	eor	v7.16b, v7.16b, v7.16b
	zip1	v16.2d, v29.2d, v7.2d
	zip2	v7.2d, v7.2d, v29.2d
	eor	v16.16b, v16.16b, v17.16b
	ext	v17.16b, v16.16b, v16.16b, #8
	pmull	v16.1q, v16.1d, v6.1d
	eor	v16.16b, v17.16b, v16.16b
	pmull	v17.1q, v16.1d, v6.1d
	ext	v16.16b, v16.16b, v16.16b, #8
	eor	v17.16b, v18.16b, v17.16b
	eor3	v2.16b, v7.16b, v17.16b, v16.16b
	dup	v7.2d, v2.d[0]
	pmull	v17.1q, v2.1d, v2.1d
	pmull2	v18.1q, v2.2d, v2.2d
	mov	x23, v2.d[1]
	fmov	x24, d2
	pmull2	v7.1q, v7.2d, v2.2d
	eor	v7.16b, v7.16b, v7.16b
	zip1	v16.2d, v29.2d, v7.2d
	zip2	v7.2d, v7.2d, v29.2d
	eor	v16.16b, v16.16b, v17.16b
	ext	v17.16b, v16.16b, v16.16b, #8
	pmull	v16.1q, v16.1d, v6.1d
	eor	v16.16b, v17.16b, v16.16b
	pmull	v17.1q, v16.1d, v6.1d
	ext	v16.16b, v16.16b, v16.16b, #8
	eor	v17.16b, v18.16b, v17.16b
	pmull	v18.1q, v8.1d, v13.1d
	eor3	v30.16b, v17.16b, v7.16b, v16.16b
	dup	v16.2d, v13.d[0]
	pmull	v7.1q, v8.1d, v12.1d
	pmull2	v17.1q, v8.2d, v16.2d
	eor	v17.16b, v17.16b, v7.16b
	zip1	v7.2d, v29.2d, v17.2d
	zip2	v17.2d, v17.2d, v29.2d
	eor	v7.16b, v7.16b, v18.16b
	ext	v18.16b, v7.16b, v7.16b, #8
	pmull	v7.1q, v7.1d, v6.1d
	eor	v18.16b, v18.16b, v7.16b
	dup	v7.2d, v12.d[0]
	pmull	v19.1q, v18.1d, v6.1d
	pmull2	v20.1q, v8.2d, v7.2d
	ext	v18.16b, v18.16b, v18.16b, #8
	eor	v19.16b, v20.16b, v19.16b
	eor3	v3.16b, v17.16b, v19.16b, v18.16b
	dup	v17.2d, v3.d[0]
	pmull	v19.1q, v3.1d, v3.1d
	pmull2	v20.1q, v3.2d, v3.2d
	fmov	x27, d3
	mov	x26, v3.d[1]
	pmull2	v17.1q, v17.2d, v3.2d
	eor	v17.16b, v17.16b, v17.16b
	zip1	v18.2d, v29.2d, v17.2d
	zip2	v17.2d, v17.2d, v29.2d
	eor	v18.16b, v18.16b, v19.16b
	ext	v19.16b, v18.16b, v18.16b, #8
	pmull	v18.1q, v18.1d, v6.1d
	eor	v18.16b, v19.16b, v18.16b
	pmull	v19.1q, v18.1d, v6.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	eor	v19.16b, v20.16b, v19.16b
	eor3	v4.16b, v17.16b, v19.16b, v18.16b
	pmull	v17.1q, v4.1d, v12.1d
	pmull2	v18.1q, v4.2d, v16.2d
	pmull	v19.1q, v4.1d, v13.1d
	pmull2	v20.1q, v4.2d, v7.2d
	pmull2	v16.1q, v2.2d, v16.2d
	pmull2	v7.1q, v2.2d, v7.2d
	fmov	x21, d4
	mov	x22, v4.d[1]
	eor	v17.16b, v18.16b, v17.16b
	zip1	v18.2d, v29.2d, v17.2d
	zip2	v17.2d, v17.2d, v29.2d
	eor	v18.16b, v18.16b, v19.16b
	ext	v19.16b, v18.16b, v18.16b, #8
	pmull	v18.1q, v18.1d, v6.1d
	eor	v18.16b, v19.16b, v18.16b
	pmull	v19.1q, v18.1d, v6.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	eor	v19.16b, v20.16b, v19.16b
	eor3	v11.16b, v17.16b, v19.16b, v18.16b
	pmull	v17.1q, v2.1d, v12.1d
	pmull	v18.1q, v2.1d, v13.1d
	eor	v16.16b, v16.16b, v17.16b
	zip1	v17.2d, v29.2d, v16.2d
	zip2	v16.2d, v16.2d, v29.2d
	stp	q11, q30, [sp, #16]
	eor	v17.16b, v17.16b, v18.16b
	ext	v18.16b, v17.16b, v17.16b, #8
	pmull	v17.1q, v17.1d, v6.1d
	eor	v17.16b, v18.16b, v17.16b
	pmull	v6.1q, v17.1d, v6.1d
	eor	v6.16b, v7.16b, v6.16b
	ext	v7.16b, v17.16b, v17.16b, #8
	eor3	v31.16b, v16.16b, v6.16b, v7.16b
	ext	v6.16b, v0.16b, v28.16b, #4
	eor3	v9.16b, v5.16b, v6.16b, v28.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v24.d[0]
	str	q31, [sp]
	mov	w8, v9.s[3]
	stp	q9, q24, [sp, #256]
	ror	w8, w8, #8
	dup	v6.4s, w8
	fmov	x8, d13
	aese	v6.16b, v29.16b
	dup	v6.4s, v6.s[0]
	cmp	x4, #128
	b.lo	.LBB0_11
	mov	x10, v31.d[1]
	fmov	d16, x25
	fmov	d17, x26
	mov	x11, v11.d[1]
	fmov	x12, d30
	fmov	d18, x23
	fmov	d20, x22
	mov	x13, v30.d[1]
	stp	q6, q5, [sp, #432]
	fmov	d19, x10
	mov	x10, #-4467570830351532032
	fmov	d21, x11
	mov	v6.16b, v30.16b
	mov	v5.16b, v31.16b
	movi	v7.2d, #0000000000000000
	mov	x19, x4
	fmov	d22, x13
	dup	v23.2d, x12
	fmov	d24, x10
	.p2align	5, , 16
.LBB0_7:
	ldr	q25, [x3]
	ldp	d26, d27, [x3, #112]
	add	x10, x3, #128
	sub	x19, x19, #128
	eor	v25.16b, v25.16b, v29.16b
	pmull	v28.1q, v13.1d, v26.1d
	pmull	v26.1q, v12.1d, v26.1d
	pmull	v29.1q, v13.1d, v27.1d
	pmull	v27.1q, v12.1d, v27.1d
	eor	v26.16b, v29.16b, v26.16b
	ldp	d29, d30, [x3, #96]
	pmull	v31.1q, v8.1d, v29.1d
	ldur	q8, [x29, #-112]
	pmull	v29.1q, v16.1d, v29.1d
	eor	v28.16b, v31.16b, v28.16b
	pmull	v8.1q, v8.1d, v30.1d
	pmull	v30.1q, v16.1d, v30.1d
	eor3	v26.16b, v26.16b, v29.16b, v8.16b
	ldp	d29, d31, [x3, #80]
	pmull	v9.1q, v3.1d, v31.1d
	pmull	v31.1q, v17.1d, v31.1d
	pmull	v8.1q, v3.1d, v29.1d
	pmull	v29.1q, v17.1d, v29.1d
	eor3	v27.16b, v30.16b, v27.16b, v31.16b
	eor3	v26.16b, v26.16b, v29.16b, v9.16b
	ldp	d29, d30, [x3, #64]
	pmull	v9.1q, v2.1d, v30.1d
	pmull	v30.1q, v18.1d, v30.1d
	pmull	v31.1q, v2.1d, v29.1d
	pmull	v29.1q, v18.1d, v29.1d
	eor3	v28.16b, v28.16b, v8.16b, v31.16b
	eor3	v26.16b, v26.16b, v29.16b, v9.16b
	ldp	d29, d31, [x3, #48]
	pmull	v9.1q, v5.1d, v31.1d
	pmull	v31.1q, v19.1d, v31.1d
	pmull	v8.1q, v5.1d, v29.1d
	pmull	v29.1q, v19.1d, v29.1d
	eor3	v27.16b, v27.16b, v30.16b, v31.16b
	eor3	v26.16b, v26.16b, v29.16b, v9.16b
	ldp	d29, d30, [x3, #32]
	pmull	v9.1q, v4.1d, v30.1d
	pmull	v30.1q, v20.1d, v30.1d
	pmull	v31.1q, v4.1d, v29.1d
	pmull	v29.1q, v20.1d, v29.1d
	eor3	v28.16b, v28.16b, v8.16b, v31.16b
	eor3	v26.16b, v26.16b, v29.16b, v9.16b
	ldp	d29, d31, [x3, #16]
	mov	x3, x10
	pmull	v9.1q, v11.1d, v31.1d
	pmull	v31.1q, v21.1d, v31.1d
	pmull	v8.1q, v11.1d, v29.1d
	pmull	v29.1q, v21.1d, v29.1d
	eor3	v27.16b, v27.16b, v30.16b, v31.16b
	pmull	v30.1q, v22.1d, v25.1d
	pmull2	v31.1q, v23.2d, v25.2d
	eor3	v26.16b, v26.16b, v29.16b, v9.16b
	pmull	v29.1q, v6.1d, v25.1d
	pmull2	v25.1q, v6.2d, v25.2d
	eor3	v26.16b, v26.16b, v30.16b, v31.16b
	eor3	v28.16b, v28.16b, v8.16b, v29.16b
	ldur	q8, [x29, #-112]
	zip1	v29.2d, v7.2d, v26.2d
	zip2	v26.2d, v26.2d, v7.2d
	eor	v28.16b, v29.16b, v28.16b
	pmull	v29.1q, v28.1d, v24.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor	v28.16b, v28.16b, v29.16b
	pmull	v29.1q, v28.1d, v24.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor3	v25.16b, v27.16b, v25.16b, v29.16b
	eor3	v29.16b, v25.16b, v26.16b, v28.16b
	cmp	x19, #127
	b.hi	.LBB0_7
	ldp	q22, q21, [x29, #-144]
	ldp	q25, q23, [x29, #-176]
	ldp	q27, q26, [x29, #-208]
	mov	x3, x10
	ldur	q28, [x29, #-224]
	ldp	q9, q24, [sp, #256]
	ldp	q6, q5, [sp, #432]
	b	.LBB0_12
.LBB0_9:
	mov	w8, wzr
.LBB0_10:
	mov	w0, w8
	add	sp, sp, #768
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
.LBB0_11:
	.cfi_restore_state
	mov	x19, x4
.LBB0_12:
	ldr	q11, [sp, #208]
	dup	v31.2d, x8
	ext	v1.16b, v1.16b, v24.16b, #12
	ext	v0.16b, v0.16b, v24.16b, #4
	eor	v5.16b, v5.16b, v6.16b
	dup	v30.2d, x9
	stp	q4, q2, [sp, #64]
	str	q3, [sp, #48]
	cmp	x19, #16
	b.lo	.LBB0_15
	mov	x8, #-4467570830351532032
	movi	v6.2d, #0000000000000000
	fmov	d7, x8
	.p2align	5, , 16
.LBB0_14:
	ldr	q16, [x3], #16
	sub	x19, x19, #16
	eor	v16.16b, v16.16b, v29.16b
	pmull	v18.1q, v12.1d, v16.1d
	pmull2	v19.1q, v31.2d, v16.2d
	pmull	v17.1q, v13.1d, v16.1d
	pmull2	v16.1q, v30.2d, v16.2d
	eor	v18.16b, v19.16b, v18.16b
	zip1	v19.2d, v6.2d, v18.2d
	zip2	v18.2d, v18.2d, v6.2d
	eor	v17.16b, v19.16b, v17.16b
	pmull	v19.1q, v17.1d, v7.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	eor	v17.16b, v17.16b, v19.16b
	pmull	v19.1q, v17.1d, v7.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	eor	v16.16b, v19.16b, v16.16b
	eor3	v29.16b, v16.16b, v18.16b, v17.16b
	cmp	x19, #15
	b.hi	.LBB0_14
.LBB0_15:
	ldp	q3, q2, [sp, #544]
	ldr	q4, [sp, #528]
	eor3	v1.16b, v5.16b, v1.16b, v0.16b
	eor3	v3.16b, v2.16b, v3.16b, v4.16b
	ldr	q2, [x7]
	ldr	x20, [x29, #104]
	movi	v4.4s, #127
	str	q10, [sp, #224]
	stp	q31, q30, [sp, #128]
	stp	q12, q14, [sp, #544]
	str	q13, [sp, #112]
	str	q15, [sp, #160]
	str	q2, [sp, #192]
	cbz	x19, .LBB0_17
	mov	w8, #16
	str	w2, [sp, #416]
	str	x26, [sp, #400]
	mov	x26, x28
	sub	x2, x8, x19
	sub	x8, x29, #96
	str	w1, [sp, #368]
	mov	w1, wzr
	mov	x28, x27
	add	x0, x8, x19
	str	x22, [sp, #528]
	mov	x22, x6
	str	x23, [sp, #448]
	mov	x23, x5
	str	x24, [sp, #432]
	mov	x24, x4
	str	x21, [sp, #384]
	mov	x21, x3
	str	q29, [sp, #240]
	mov	x27, x25
	mov	w25, w14
	stp	q1, q3, [sp, #336]
	bl	memset
	mov	x1, x21
	ldr	x21, [sp, #384]
	sub	x0, x29, #96
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	ldr	q1, [sp, #240]
	ldp	q31, q30, [sp, #128]
	mov	x8, #-4467570830351532032
	ldp	q12, q14, [sp, #544]
	mov	w14, w25
	mov	x25, x27
	mov	x27, x28
	ldr	q13, [sp, #112]
	ldp	q9, q24, [sp, #256]
	mov	x28, x26
	mov	x4, x24
	ldp	q28, q27, [x29, #-224]
	ldp	q26, q25, [x29, #-192]
	ldp	q23, q22, [x29, #-160]
	mov	x5, x23
	mov	x6, x22
	eor	v0.16b, v0.16b, v1.16b
	ldur	q21, [x29, #-128]
	ldp	q11, q10, [sp, #208]
	ldr	q15, [sp, #160]
	ldr	w2, [sp, #416]
	ldr	w1, [sp, #368]
	pmull	v2.1q, v12.1d, v0.1d
	pmull2	v3.1q, v31.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	pmull2	v0.1q, v30.2d, v0.2d
	ldr	x26, [sp, #400]
	ldr	x24, [sp, #432]
	ldr	x23, [sp, #448]
	ldr	x22, [sp, #528]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	movi	v4.4s, #127
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v29.16b, v2.16b, v0.16b, v1.16b
	ldp	q1, q3, [sp, #336]
.LBB0_17:
	ldr	q0, [sp, #288]
	adrp	x9, .LCPI0_5
	eor3	v18.16b, v3.16b, v1.16b, v4.16b
	ldr	q1, [sp, #192]
	lsl	x8, x4, #3
	subs	x19, x6, #128
	ldp	q20, q19, [x29, #-256]
	str	q18, [sp, #176]
	mov	v0.s[0], w14
	str	q0, [sp, #288]
	ldr	q0, [x9, :lo12:.LCPI0_5]
	orr	v8.16b, v1.16b, v0.16b
	b.lo	.LBB0_22
	ldp	q3, q4, [sp, #496]
	adrp	x10, .LCPI0_6
	add	v16.4s, v8.4s, v11.4s
	mov	v17.16b, v8.16b
	ldr	q0, [x10, :lo12:.LCPI0_6]
	adrp	x10, .LCPI0_7
	ldp	q2, q7, [x5]
	adrp	x11, .LCPI0_8
	ldr	q1, [x10, :lo12:.LCPI0_7]
	str	q29, [sp, #240]
	add	x9, x5, #128
	add	x10, x20, #128
	add	v5.4s, v8.4s, v4.4s
	add	v6.4s, v8.4s, v3.4s
	ldp	q4, q3, [sp, #464]
	add	v0.4s, v8.4s, v0.4s
	add	v1.4s, v8.4s, v1.4s
	add	v3.4s, v8.4s, v3.4s
	add	v4.4s, v8.4s, v4.4s
	//APP
	aese	v17.16b, v15.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v15.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v15.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v15.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v14.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v14.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v14.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v14.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v10.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v10.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v19.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v19.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v19.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v19.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v19.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v19.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v20.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v20.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v20.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v20.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v21.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v21.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v21.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v21.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v22.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v22.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v23.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v23.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v23.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v23.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v23.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v25.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v25.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v25.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v25.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v25.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v25.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v25.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v26.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v26.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v26.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v26.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v26.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v26.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v27.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v27.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v27.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v27.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v27.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v27.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v28.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v28.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v28.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v28.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v28.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v28.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	//APP
	aese	v17.16b, v24.16b
	aesmc	v17.16b, v17.16b
	aese	v16.16b, v24.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v24.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	aese	v17.16b, v9.16b
	aese	v16.16b, v9.16b
	aese	v5.16b, v9.16b
	aese	v6.16b, v9.16b
	aese	v3.16b, v9.16b
	aese	v4.16b, v9.16b
	aese	v0.16b, v9.16b
	aese	v1.16b, v9.16b
	eor3	v30.16b, v2.16b, v17.16b, v18.16b
	eor3	v2.16b, v7.16b, v16.16b, v18.16b
	ldp	q7, q16, [x5, #32]
	eor3	v29.16b, v16.16b, v6.16b, v18.16b
	eor3	v24.16b, v7.16b, v5.16b, v18.16b
	ldp	q5, q6, [x5, #64]
	eor3	v31.16b, v5.16b, v3.16b, v18.16b
	mov	v5.16b, v8.16b
	eor3	v8.16b, v6.16b, v4.16b, v18.16b
	ldp	q3, q4, [x5, #96]
	stp	q30, q2, [x20]
	stp	q24, q29, [x20, #32]
	str	q5, [sp, #96]
	eor3	v10.16b, v4.16b, v1.16b, v18.16b
	stp	q31, q8, [x20, #64]
	eor3	v9.16b, v3.16b, v0.16b, v18.16b
	ldr	q0, [x11, :lo12:.LCPI0_8]
	add	v5.4s, v5.4s, v0.4s
	stp	q9, q10, [x20, #96]
	cmp	x6, #255
	b.ls	.LBB0_23
	mov	v1.16b, v13.16b
	ldur	q7, [x29, #-112]
	str	q0, [sp, #432]
	adrp	x17, .LCPI0_9
	ldp	q0, q16, [sp, #64]
	ldp	q20, q19, [sp, #256]
	mov	v21.16b, v15.16b
	mov	v15.16b, v13.16b
	mov	v1.d[1], v12.d[0]
	ldr	q18, [sp, #176]
	ldr	q23, [sp, #96]
	movi	v28.2d, #0000000000000000
	str	q1, [sp, #528]
	ext	v1.16b, v1.16b, v1.16b, #8
	str	q1, [sp, #512]
	ldp	q17, q1, [sp, #32]
	ext	v4.16b, v7.16b, v7.16b, #8
	ext	v6.16b, v16.16b, v16.16b, #8
	ext	v3.16b, v1.16b, v1.16b, #8
	stp	q3, q4, [sp, #480]
	ldr	q4, [sp]
	fmov	x12, d17
	mov	x11, v17.d[1]
	ext	v3.16b, v4.16b, v4.16b, #8
	fmov	x16, d4
	mov	x15, v4.d[1]
	stp	q3, q6, [sp, #448]
	ext	v3.16b, v0.16b, v0.16b, #8
	str	q3, [sp, #416]
	ldr	q3, [sp, #16]
	ext	v6.16b, v3.16b, v3.16b, #8
	fmov	x14, d3
	mov	x13, v3.d[1]
	str	q6, [sp, #400]
	ext	v6.16b, v17.16b, v17.16b, #8
	str	q6, [sp, #384]
	ldr	q6, [x17, :lo12:.LCPI0_9]
	adrp	x17, .LCPI0_10
	str	q6, [sp, #368]
	ldr	q6, [x17, :lo12:.LCPI0_10]
	adrp	x17, .LCPI0_11
	str	q6, [sp, #352]
	ldr	q6, [x17, :lo12:.LCPI0_11]
	adrp	x17, .LCPI0_12
	str	q6, [sp, #336]
	ldr	q6, [x17, :lo12:.LCPI0_12]
	adrp	x17, .LCPI0_13
	str	q6, [sp, #320]
	ldr	q6, [x17, :lo12:.LCPI0_13]
	adrp	x17, .LCPI0_14
	ldr	q26, [x17, :lo12:.LCPI0_14]
	adrp	x17, .LCPI0_15
	ldr	q27, [x17, :lo12:.LCPI0_15]
	mov	x17, #-4467570830351532032
	str	q6, [sp, #304]
	ldp	q22, q6, [sp, #224]
	.p2align	5, , 16
.LBB0_20:
	pmull	v11.1q, v12.1d, v10.1d
	ldp	q25, q13, [sp, #496]
	//APP
	pmull2	v12.1q, v13.2d, v10.2d
	//NO_APP
	ldr	q13, [sp, #528]
	//APP
	pmull2	v14.1q, v25.2d, v9.2d
	//NO_APP
	ldr	q25, [sp, #480]
	eor	v30.16b, v30.16b, v6.16b
	ldr	q6, [sp, #384]
	add	x18, x9, #128
	add	x0, x10, #128
	eor	v11.16b, v12.16b, v11.16b
	//APP
	pmull2	v12.1q, v13.2d, v10.2d
	//NO_APP
	fmov	d13, x25
	pmull	v10.1q, v15.1d, v10.1d
	sub	x19, x19, #128
	pmull	v13.1q, v13.1d, v9.1d
	eor3	v11.16b, v11.16b, v13.16b, v14.16b
	fmov	d13, x26
	//APP
	pmull2	v14.1q, v25.2d, v8.2d
	//NO_APP
	ldr	q25, [sp, #464]
	pmull	v13.1q, v13.1d, v8.1d
	eor3	v11.16b, v11.16b, v13.16b, v14.16b
	//APP
	pmull2	v13.1q, v7.2d, v9.2d
	//NO_APP
	pmull	v9.1q, v7.1d, v9.1d
	//APP
	pmull2	v14.1q, v1.2d, v8.2d
	//NO_APP
	pmull	v8.1q, v1.1d, v8.1d
	eor3	v12.16b, v13.16b, v12.16b, v14.16b
	//APP
	pmull2	v14.1q, v17.2d, v30.2d
	//NO_APP
	eor	v9.16b, v9.16b, v10.16b
	pmull	v10.1q, v16.1d, v31.1d
	eor3	v8.16b, v9.16b, v8.16b, v10.16b
	fmov	d9, x23
	//APP
	pmull2	v10.1q, v25.2d, v31.2d
	//NO_APP
	ldr	q25, [sp, #448]
	pmull	v9.1q, v9.1d, v31.1d
	eor3	v9.16b, v11.16b, v9.16b, v10.16b
	fmov	d10, x15
	//APP
	pmull2	v11.1q, v25.2d, v29.2d
	//NO_APP
	pmull	v10.1q, v10.1d, v29.1d
	eor3	v9.16b, v9.16b, v10.16b, v11.16b
	//APP
	pmull2	v11.1q, v16.2d, v31.2d
	//NO_APP
	//APP
	pmull2	v31.1q, v4.2d, v29.2d
	//NO_APP
	eor3	v11.16b, v12.16b, v11.16b, v31.16b
	pmull	v29.1q, v4.1d, v29.1d
	pmull	v12.1q, v0.1d, v24.1d
	mov	v10.16b, v23.16b
	ldr	q23, [sp, #368]
	eor3	v12.16b, v8.16b, v29.16b, v12.16b
	fmov	d29, x22
	pmull	v29.1q, v29.1d, v24.1d
	add	v31.4s, v10.4s, v23.4s
	ldp	q23, q25, [sp, #400]
	//APP
	pmull2	v8.1q, v25.2d, v24.2d
	//NO_APP
	eor3	v29.16b, v9.16b, v29.16b, v8.16b
	fmov	d8, x13
	//APP
	pmull2	v9.1q, v23.2d, v2.2d
	//NO_APP
	ldp	q23, q25, [sp, #336]
	pmull	v8.1q, v8.1d, v2.1d
	eor3	v13.16b, v29.16b, v8.16b, v9.16b
	//APP
	pmull2	v8.1q, v0.2d, v24.2d
	//NO_APP
	//APP
	pmull2	v24.1q, v3.2d, v2.2d
	//NO_APP
	eor3	v24.16b, v11.16b, v8.16b, v24.16b
	pmull	v2.1q, v3.1d, v2.1d
	pmull	v11.1q, v17.1d, v30.1d
	add	v29.4s, v10.4s, v25.4s
	add	v9.4s, v10.4s, v23.4s
	eor3	v2.16b, v12.16b, v2.16b, v11.16b
	fmov	d11, x11
	//APP
	pmull2	v12.1q, v6.2d, v30.2d
	//NO_APP
	ldp	q6, q23, [sp, #304]
	pmull	v11.1q, v11.1d, v30.1d
	eor3	v13.16b, v13.16b, v11.16b, v12.16b
	fmov	d12, x17
	add	v8.4s, v10.4s, v23.4s
	mov	v23.16b, v5.16b
	zip1	v11.2d, v28.2d, v13.2d
	zip2	v5.2d, v13.2d, v28.2d
	eor	v2.16b, v11.16b, v2.16b
	pmull	v11.1q, v2.1d, v12.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v11.16b
	add	v11.4s, v10.4s, v6.4s
	pmull	v30.1q, v2.1d, v12.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	add	v12.4s, v10.4s, v26.4s
	add	v10.4s, v10.4s, v27.4s
	eor3	v24.16b, v24.16b, v14.16b, v30.16b
	ldr	q14, [sp, #560]
	ldp	q30, q25, [x29, #-256]
	eor3	v6.16b, v5.16b, v24.16b, v2.16b
	mov	v24.16b, v23.16b
	//APP
	aese	v24.16b, v21.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v21.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v21.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v21.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v21.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	ldp	q2, q5, [x9]
	//APP
	aese	v24.16b, v14.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v14.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v14.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v14.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v14.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v14.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v14.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v14.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	//APP
	aese	v24.16b, v22.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v22.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v22.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v22.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v22.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v22.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v22.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v22.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	//APP
	aese	v24.16b, v25.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v25.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v25.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v25.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	//APP
	aese	v24.16b, v30.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v30.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v30.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v30.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v30.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v30.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v30.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v30.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	ldp	q30, q25, [x29, #-144]
	//APP
	aese	v24.16b, v25.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v25.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v25.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v25.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	//APP
	aese	v24.16b, v30.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v30.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v30.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v30.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v30.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v30.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v30.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v30.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	ldp	q30, q25, [x29, #-176]
	//APP
	aese	v24.16b, v25.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v25.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v25.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v25.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	//APP
	aese	v24.16b, v30.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v30.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v30.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v30.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v30.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v30.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v30.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v30.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	ldp	q25, q30, [x29, #-208]
	//APP
	aese	v24.16b, v30.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v30.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v30.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v30.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v30.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v30.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v30.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v30.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	//APP
	aese	v24.16b, v25.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v25.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v25.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v25.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	ldur	q25, [x29, #-224]
	//APP
	aese	v24.16b, v25.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v25.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v25.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v25.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v25.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v25.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v25.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v25.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	//APP
	aese	v24.16b, v19.16b
	aesmc	v24.16b, v24.16b
	aese	v31.16b, v19.16b
	aesmc	v31.16b, v31.16b
	aese	v29.16b, v19.16b
	aesmc	v29.16b, v29.16b
	aese	v9.16b, v19.16b
	aesmc	v9.16b, v9.16b
	aese	v8.16b, v19.16b
	aesmc	v8.16b, v8.16b
	aese	v11.16b, v19.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v19.16b
	aesmc	v12.16b, v12.16b
	aese	v10.16b, v19.16b
	aesmc	v10.16b, v10.16b
	//NO_APP
	aese	v24.16b, v20.16b
	aese	v31.16b, v20.16b
	aese	v29.16b, v20.16b
	aese	v9.16b, v20.16b
	aese	v8.16b, v20.16b
	aese	v11.16b, v20.16b
	aese	v12.16b, v20.16b
	aese	v10.16b, v20.16b
	eor3	v30.16b, v2.16b, v24.16b, v18.16b
	eor3	v2.16b, v5.16b, v31.16b, v18.16b
	ldp	q5, q31, [x9, #32]
	eor3	v24.16b, v5.16b, v29.16b, v18.16b
	eor3	v29.16b, v31.16b, v9.16b, v18.16b
	ldp	q5, q9, [x9, #64]
	eor3	v31.16b, v5.16b, v8.16b, v18.16b
	eor3	v8.16b, v9.16b, v11.16b, v18.16b
	ldp	q5, q11, [x9, #96]
	stp	q30, q2, [x10]
	stp	q24, q29, [x10, #32]
	mov	x9, x18
	eor3	v10.16b, v11.16b, v10.16b, v18.16b
	eor3	v9.16b, v5.16b, v12.16b, v18.16b
	ldr	q5, [sp, #432]
	ldr	q12, [sp, #544]
	stp	q31, q8, [x10, #64]
	add	v5.4s, v23.4s, v5.4s
	stp	q9, q10, [x10, #96]
	mov	x10, x0
	cmp	x19, #127
	b.hi	.LBB0_20
	mov	v13.16b, v15.16b
	mov	v15.16b, v21.16b
	ldp	q20, q19, [x29, #-256]
	ldur	q28, [x29, #-224]
	ldp	q22, q21, [x29, #-144]
	ldp	q25, q23, [x29, #-176]
	ldp	q27, q26, [x29, #-208]
	mov	x10, x0
	mov	x9, x18
	str	q6, [sp, #240]
	b	.LBB0_24
.LBB0_22:
	mov	x19, x6
	b	.LBB0_25
.LBB0_23:
	ldr	q0, [sp]
	fmov	x16, d0
	mov	x15, v0.d[1]
	ldr	q0, [sp, #16]
	fmov	x14, d0
	mov	x13, v0.d[1]
	ldr	q0, [sp, #32]
	fmov	x12, d0
	mov	x11, v0.d[1]
.LBB0_24:
	ldr	q0, [sp, #240]
	ldur	q17, [x29, #-112]
	fmov	d7, x25
	pmull	v3.1q, v12.1d, v10.1d
	ldr	q18, [sp, #48]
	pmull	v1.1q, v13.1d, v10.1d
	dup	v16.2d, x28
	mov	x20, x10
	mov	x5, x9
	pmull	v7.1q, v7.1d, v9.1d
	pmull2	v16.1q, v16.2d, v9.2d
	eor	v0.16b, v0.16b, v30.16b
	ldp	q11, q30, [sp, #128]
	pmull	v6.1q, v17.1d, v9.1d
	pmull2	v17.1q, v17.2d, v9.2d
	eor	v1.16b, v6.16b, v1.16b
	pmull	v6.1q, v18.1d, v8.1d
	pmull2	v18.1q, v18.2d, v8.2d
	pmull2	v4.1q, v11.2d, v10.2d
	eor	v3.16b, v4.16b, v3.16b
	pmull2	v4.1q, v30.2d, v10.2d
	eor3	v3.16b, v3.16b, v7.16b, v16.16b
	fmov	d7, x26
	dup	v16.2d, x27
	eor3	v4.16b, v17.16b, v4.16b, v18.16b
	ldr	q18, [sp, #80]
	dup	v17.2d, x24
	pmull	v7.1q, v7.1d, v8.1d
	pmull2	v16.1q, v16.2d, v8.2d
	pmull2	v17.1q, v17.2d, v31.2d
	mov	v8.16b, v5.16b
	eor3	v3.16b, v3.16b, v7.16b, v16.16b
	fmov	d16, x23
	pmull	v7.1q, v18.1d, v31.1d
	pmull2	v18.1q, v18.2d, v31.2d
	pmull	v16.1q, v16.1d, v31.1d
	eor3	v1.16b, v1.16b, v6.16b, v7.16b
	fmov	d7, x15
	fmov	d6, x16
	mov	v31.16b, v11.16b
	ldp	q11, q10, [sp, #208]
	eor3	v3.16b, v3.16b, v16.16b, v17.16b
	dup	v17.2d, x15
	dup	v16.2d, x16
	pmull	v7.1q, v7.1d, v29.1d
	pmull	v6.1q, v6.1d, v29.1d
	pmull2	v17.1q, v17.2d, v29.2d
	pmull2	v16.1q, v16.2d, v29.2d
	eor3	v4.16b, v4.16b, v18.16b, v17.16b
	ldr	q18, [sp, #64]
	eor3	v3.16b, v3.16b, v7.16b, v16.16b
	fmov	d16, x22
	dup	v17.2d, x21
	pmull	v16.1q, v16.1d, v24.1d
	pmull2	v17.1q, v17.2d, v24.2d
	eor3	v3.16b, v3.16b, v16.16b, v17.16b
	dup	v16.2d, x14
	dup	v17.2d, x13
	pmull	v7.1q, v18.1d, v24.1d
	pmull2	v18.1q, v18.2d, v24.2d
	eor3	v1.16b, v1.16b, v6.16b, v7.16b
	fmov	d7, x13
	fmov	d6, x14
	pmull2	v16.1q, v16.2d, v2.2d
	ldp	q9, q24, [sp, #256]
	pmull	v7.1q, v7.1d, v2.1d
	pmull	v6.1q, v6.1d, v2.1d
	pmull2	v2.1q, v17.2d, v2.2d
	dup	v17.2d, x11
	eor3	v3.16b, v3.16b, v7.16b, v16.16b
	fmov	d7, x11
	dup	v16.2d, x12
	eor3	v2.16b, v4.16b, v18.16b, v2.16b
	fmov	d4, x12
	mov	x11, #-4467570830351532032
	ldr	q18, [sp, #176]
	pmull	v7.1q, v7.1d, v0.1d
	pmull2	v16.1q, v16.2d, v0.2d
	pmull	v4.1q, v4.1d, v0.1d
	pmull2	v0.1q, v17.2d, v0.2d
	eor3	v3.16b, v3.16b, v7.16b, v16.16b
	eor3	v1.16b, v1.16b, v6.16b, v4.16b
	movi	v4.2d, #0000000000000000
	zip1	v6.2d, v4.2d, v3.2d
	zip2	v3.2d, v3.2d, v4.2d
	fmov	d4, x11
	eor	v1.16b, v6.16b, v1.16b
	pmull	v6.1q, v1.1d, v4.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v6.16b
	pmull	v4.1q, v1.1d, v4.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v2.16b, v0.16b, v4.16b
	eor3	v29.16b, v3.16b, v0.16b, v1.16b
.LBB0_25:
	ldr	q0, [sp, #288]
	fmov	d6, x8
	lsl	x9, x6, #3
	mov	v0.s[1], w2
	str	q0, [sp, #288]
	cmp	x19, #16
	b.lo	.LBB0_28
	mov	x8, #-4467570830351532032
	movi	v0.2d, #0000000000000000
	fmov	d1, x8
	.p2align	5, , 16
.LBB0_27:
	mov	v3.16b, v8.16b
	ldr	q2, [x5], #16
	add	v8.4s, v8.4s, v11.4s
	sub	x19, x19, #16
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v23.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v25.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v26.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v27.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v28.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v9.16b
	eor3	v4.16b, v2.16b, v3.16b, v18.16b
	eor	v2.16b, v2.16b, v3.16b
	eor3	v2.16b, v2.16b, v18.16b, v29.16b
	str	q4, [x20], #16
	pmull	v4.1q, v12.1d, v2.1d
	pmull2	v5.1q, v31.2d, v2.2d
	pmull	v3.1q, v13.1d, v2.1d
	pmull2	v2.1q, v30.2d, v2.2d
	eor	v4.16b, v5.16b, v4.16b
	zip1	v5.2d, v0.2d, v4.2d
	zip2	v4.2d, v4.2d, v0.2d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v5.16b
	pmull	v5.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v2.16b, v5.16b, v2.16b
	eor3	v29.16b, v2.16b, v4.16b, v3.16b
	cmp	x19, #15
	b.hi	.LBB0_27
.LBB0_28:
	ldr	q0, [sp, #288]
	mov	v6.d[1], x9
	mov	v0.s[2], w1
	str	q0, [sp, #288]
	cbz	x19, .LBB0_30
	mov	w8, #16
	mov	w1, wzr
	mov	x22, x5
	str	q29, [sp, #240]
	sub	x21, x8, x19
	sub	x8, x29, #96
	str	q8, [sp, #96]
	stur	q6, [x29, #-112]
	add	x0, x8, x19
	mov	x2, x21
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldr	q1, [sp, #160]
	ldr	q2, [sp, #96]
	ldur	q0, [x29, #-96]
	sub	x1, x29, #96
	sub	x22, x29, #96
	mov	x0, x20
	mov	x2, x19
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldr	q1, [sp, #560]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldr	q1, [sp, #224]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x29, #-256]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x29, #-144]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x29, #-176]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x29, #-208]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldur	q1, [x29, #-224]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #256]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	ldr	q1, [sp, #176]
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	stur	q0, [x29, #-96]
	bl	memcpy
	add	x0, x22, x19
	mov	w1, wzr
	mov	x2, x21
	bl	memset
	sub	x0, x29, #96
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	ldp	q31, q30, [sp, #128]
	mov	x8, #-4467570830351532032
	ldr	q13, [sp, #112]
	ldp	q10, q1, [sp, #224]
	eor	v0.16b, v0.16b, v1.16b
	pmull2	v3.1q, v31.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	ldp	q12, q14, [sp, #544]
	pmull	v2.1q, v12.1d, v0.1d
	pmull2	v0.1q, v30.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	ldp	q21, q6, [x29, #-128]
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	ldp	q15, q18, [sp, #160]
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	ldp	q9, q24, [sp, #256]
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ldp	q28, q27, [x29, #-224]
	ldp	q26, q25, [x29, #-192]
	ldp	q23, q22, [x29, #-160]
	ldp	q20, q19, [x29, #-256]
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v29.16b, v2.16b, v0.16b, v1.16b
.LBB0_30:
	eor	v0.16b, v29.16b, v6.16b
	mov	x8, #-4467570830351532032
	pmull	v2.1q, v12.1d, v0.1d
	pmull2	v3.1q, v31.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	pmull2	v0.1q, v30.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	adrp	x8, .LCPI0_16
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	ldr	q4, [sp, #288]
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v0.16b, v4.16b, v3.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI0_16]
	and	v0.16b, v0.16b, v1.16b
	ldr	q1, [sp, #192]
	aese	v0.16b, v15.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v14.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v19.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v25.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v26.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v27.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v28.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v9.16b
	eor3	v0.16b, v18.16b, v0.16b, v1.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	b	.LBB0_10
.Lfunc_end0:
	.size	haberdashery_aes256gcmsiv_neoversev2_decrypt, .Lfunc_end0-haberdashery_aes256gcmsiv_neoversev2_decrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI1_2:
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.LCPI1_3:
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
.LCPI1_4:
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.LCPI1_5:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	127
.LCPI1_6:
	.word	0
	.word	0
	.word	0
	.word	2147483648
.LCPI1_7:
	.word	6
	.word	0
	.word	0
	.word	0
.LCPI1_8:
	.word	7
	.word	0
	.word	0
	.word	0
.LCPI1_9:
	.word	8
	.word	0
	.word	0
	.word	0
	.section	.text.haberdashery_aes256gcmsiv_neoversev2_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_neoversev2_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmsiv_neoversev2_encrypt,@function
haberdashery_aes256gcmsiv_neoversev2_encrypt:
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
	sub	sp, sp, #752
	ldr	x8, [x29, #96]
	cmp	x6, x8
	b.ne	.LBB1_6
	ldr	x8, [x29, #112]
	mov	x9, #1
	mov	x19, x6
	movk	x9, #16, lsl #32
	cmp	x4, x9
	ccmp	x6, x9, #2, lo
	ccmp	x8, #16, #0, lo
	ccmp	x2, #12, #0, eq
	cset	w20, eq
	b.ne	.LBB1_33
	ldp	w14, w13, [x1]
	movi	v1.2d, #0000000000000000
	ldr	w12, [x1, #8]
	adrp	x8, .LCPI1_0
	movi	v16.2d, #0000000000000000
	ldr	q0, [x8, :lo12:.LCPI1_0]
	adrp	x8, .LCPI1_1
	ldp	q6, q7, [x0]
	dup	v23.4s, v16.s[0]
	movi	v8.2d, #0000000000000000
	ext	v24.16b, v16.16b, v16.16b, #4
	str	w20, [sp, #284]
	mov	x21, x7
	mov	x22, x5
	str	q23, [sp, #144]
	mov	v1.s[1], w14
	str	q0, [sp, #256]
	mov	v1.s[2], w13
	mov	v1.s[3], w12
	eor	v2.16b, v1.16b, v0.16b
	ldr	q0, [x8, :lo12:.LCPI1_1]
	adrp	x8, .LCPI1_2
	ldr	q20, [x8, :lo12:.LCPI1_2]
	adrp	x8, .LCPI1_3
	ldr	q21, [x8, :lo12:.LCPI1_3]
	adrp	x8, .LCPI1_4
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	ldr	q22, [x8, :lo12:.LCPI1_4]
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	str	q0, [sp, #240]
	eor	v4.16b, v1.16b, v0.16b
	eor	v3.16b, v1.16b, v20.16b
	eor	v5.16b, v1.16b, v21.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	eor	v0.16b, v1.16b, v22.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	str	q22, [sp, #192]
	stp	q21, q20, [sp, #208]
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	ldp	q6, q7, [x0, #32]
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	ldp	q6, q7, [x0, #64]
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	ldp	q6, q7, [x0, #96]
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	ldp	q6, q7, [x0, #128]
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	ldp	q6, q7, [x0, #160]
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	ldp	q6, q7, [x0, #192]
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	ldr	q6, [x0, #224]
	aese	v1.16b, v7.16b
	aese	v5.16b, v7.16b
	aese	v0.16b, v7.16b
	aese	v2.16b, v7.16b
	aese	v4.16b, v7.16b
	aese	v3.16b, v7.16b
	eor	v17.16b, v6.16b, v1.16b
	eor	v1.16b, v6.16b, v5.16b
	eor	v0.8b, v6.8b, v0.8b
	eor	v15.16b, v6.16b, v2.16b
	eor	v26.16b, v6.16b, v4.16b
	eor	v3.8b, v6.8b, v3.8b
	movi	v4.2d, #0000000000000000
	mov	v25.16b, v1.16b
	mov	v4.d[1], v26.d[0]
	ext	v5.16b, v23.16b, v26.16b, #4
	mov	v26.d[1], v3.d[0]
	movi	v3.4s, #1
	fmov	x9, d15
	mov	v25.d[1], v0.d[0]
	movi	v0.2d, #0000000000000000
	stp	q17, q0, [x29, #-144]
	ext	v0.16b, v24.16b, v26.16b, #12
	mov	w8, v25.s[3]
	ror	w8, w8, #8
	dup	v2.4s, w8
	aese	v2.16b, v8.16b
	dup	v2.4s, v2.s[0]
	eor	v2.16b, v4.16b, v2.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[1], v1.d[0]
	eor3	v0.16b, v2.16b, v0.16b, v5.16b
	ext	v5.16b, v23.16b, v1.16b, #4
	eor3	v27.16b, v26.16b, v0.16b, v3.16b
	ext	v3.16b, v24.16b, v25.16b, #12
	eor	v2.16b, v26.16b, v0.16b
	dup	v6.4s, v27.s[3]
	aese	v6.16b, v8.16b
	dup	v6.4s, v6.s[0]
	eor	v4.16b, v4.16b, v6.16b
	ext	v6.16b, v23.16b, v27.16b, #4
	eor3	v3.16b, v4.16b, v3.16b, v5.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v27.d[0]
	ext	v4.16b, v24.16b, v27.16b, #12
	eor	v16.16b, v25.16b, v3.16b
	eor	v1.8b, v1.8b, v3.8b
	mov	w8, v16.s[3]
	stp	q16, q27, [x29, #-256]
	ror	w8, w8, #8
	dup	v7.4s, w8
	aese	v7.16b, v8.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v4.16b, v5.16b, v4.16b, v6.16b
	movi	v5.4s, #3
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v1.d[0]
	ext	v1.16b, v23.16b, v16.16b, #4
	eor3	v28.16b, v2.16b, v4.16b, v5.16b
	ext	v5.16b, v24.16b, v16.16b, #12
	eor3	v0.16b, v26.16b, v0.16b, v4.16b
	dup	v7.4s, v28.s[3]
	str	q28, [sp, #544]
	aese	v7.16b, v8.16b
	dup	v7.4s, v7.s[0]
	eor	v6.16b, v6.16b, v7.16b
	eor3	v1.16b, v6.16b, v5.16b, v1.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v28.d[0]
	ext	v6.16b, v23.16b, v28.16b, #4
	eor3	v30.16b, v25.16b, v3.16b, v1.16b
	ext	v3.16b, v24.16b, v28.16b, #12
	mov	w8, v30.s[3]
	ror	w8, w8, #8
	dup	v7.4s, w8
	aese	v7.16b, v8.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v3.16b, v5.16b, v3.16b, v6.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v30.d[0]
	ext	v6.16b, v23.16b, v30.16b, #4
	eor3	v2.16b, v2.16b, v4.16b, v3.16b
	movi	v4.4s, #7
	eor3	v31.16b, v0.16b, v3.16b, v4.16b
	ext	v4.16b, v24.16b, v30.16b, #12
	dup	v7.4s, v31.s[3]
	aese	v7.16b, v8.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v4.16b, v5.16b, v4.16b, v6.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v31.d[0]
	ext	v6.16b, v23.16b, v31.16b, #4
	eor3	v8.16b, v16.16b, v1.16b, v4.16b
	movi	v16.2d, #0000000000000000
	ext	v1.16b, v24.16b, v31.16b, #12
	mov	w8, v8.s[3]
	ror	w8, w8, #8
	dup	v7.4s, w8
	aese	v7.16b, v16.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v1.16b, v5.16b, v1.16b, v6.16b
	ext	v5.16b, v23.16b, v8.16b, #4
	eor3	v7.16b, v0.16b, v3.16b, v1.16b
	movi	v0.4s, #15
	movi	v3.2d, #0000000000000000
	mov	v3.d[1], v8.d[0]
	eor3	v9.16b, v2.16b, v1.16b, v0.16b
	ext	v0.16b, v24.16b, v8.16b, #12
	dup	v6.4s, v9.s[3]
	aese	v6.16b, v16.16b
	dup	v6.4s, v6.s[0]
	eor	v3.16b, v3.16b, v6.16b
	eor3	v0.16b, v3.16b, v0.16b, v5.16b
	ext	v3.16b, v24.16b, v9.16b, #12
	ext	v5.16b, v23.16b, v9.16b, #4
	eor3	v10.16b, v30.16b, v4.16b, v0.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[1], v9.d[0]
	mov	w8, v10.s[3]
	ror	w8, w8, #8
	dup	v6.4s, w8
	aese	v6.16b, v16.16b
	dup	v6.4s, v6.s[0]
	eor	v4.16b, v4.16b, v6.16b
	dup	v6.2d, v15.d[0]
	eor3	v3.16b, v4.16b, v3.16b, v5.16b
	ext	v4.16b, v23.16b, v10.16b, #4
	eor3	v1.16b, v2.16b, v1.16b, v3.16b
	movi	v2.4s, #31
	stp	q3, q7, [sp, #160]
	eor3	v11.16b, v7.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	mov	v3.d[1], v10.d[0]
	ext	v2.16b, v24.16b, v10.16b, #12
	dup	v5.4s, v11.s[3]
	aese	v5.16b, v16.16b
	dup	v5.4s, v5.s[0]
	eor	v3.16b, v3.16b, v5.16b
	pmull	v5.1q, v15.1d, v15.1d
	eor3	v2.16b, v3.16b, v2.16b, v4.16b
	ext	v3.16b, v23.16b, v11.16b, #4
	eor3	v12.16b, v8.16b, v0.16b, v2.16b
	movi	v2.2d, #0000000000000000
	mov	v2.d[1], v11.d[0]
	ext	v0.16b, v24.16b, v11.16b, #12
	mov	w8, v12.s[3]
	ror	w8, w8, #8
	dup	v4.4s, w8
	mov	x8, #-4467570830351532032
	aese	v4.16b, v16.16b
	dup	v4.4s, v4.s[0]
	eor	v2.16b, v2.16b, v4.16b
	eor3	v2.16b, v2.16b, v0.16b, v3.16b
	movi	v0.4s, #63
	pmull	v3.1q, v17.1d, v17.1d
	stp	q24, q2, [sp, #112]
	eor3	v2.16b, v1.16b, v2.16b, v0.16b
	ext	v0.16b, v24.16b, v12.16b, #12
	movi	v1.2d, #0000000000000000
	mov	v1.d[1], v12.d[0]
	stur	q2, [x29, #-112]
	dup	v2.4s, v2.s[3]
	aese	v2.16b, v16.16b
	dup	v2.4s, v2.s[0]
	eor3	v0.16b, v2.16b, v1.16b, v0.16b
	pmull	v1.1q, v17.1d, v15.1d
	eor	v2.16b, v1.16b, v1.16b
	zip1	v1.2d, v16.2d, v2.2d
	zip2	v2.2d, v2.2d, v16.2d
	eor	v3.16b, v1.16b, v3.16b
	fmov	d1, x8
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull	v4.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v4.16b, v5.16b, v4.16b
	eor3	v24.16b, v2.16b, v4.16b, v3.16b
	dup	v2.2d, v24.d[0]
	pmull	v4.1q, v24.1d, v24.1d
	pmull2	v5.1q, v24.2d, v24.2d
	pmull2	v7.1q, v24.2d, v6.2d
	mov	x25, v24.d[1]
	pmull2	v2.1q, v2.2d, v24.2d
	eor	v2.16b, v2.16b, v2.16b
	zip1	v3.2d, v16.2d, v2.2d
	zip2	v2.2d, v2.2d, v16.2d
	eor	v3.16b, v3.16b, v4.16b
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull	v4.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v24.1d, v17.1d
	eor3	v14.16b, v2.16b, v4.16b, v3.16b
	dup	v3.2d, v17.d[0]
	pmull	v2.1q, v24.1d, v15.1d
	pmull2	v4.1q, v24.2d, v3.2d
	mov	x15, v14.d[1]
	eor	v2.16b, v4.16b, v2.16b
	zip1	v4.2d, v16.2d, v2.2d
	zip2	v2.2d, v2.2d, v16.2d
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v5.16b, v7.16b, v5.16b
	eor3	v18.16b, v2.16b, v5.16b, v4.16b
	dup	v2.2d, v18.d[0]
	pmull	v5.1q, v18.1d, v18.1d
	pmull2	v7.1q, v18.2d, v18.2d
	mov	x20, v18.d[1]
	stp	q18, q24, [sp, #384]
	pmull2	v2.1q, v2.2d, v18.2d
	eor	v2.16b, v2.16b, v2.16b
	zip1	v4.2d, v16.2d, v2.2d
	zip2	v2.2d, v2.2d, v16.2d
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v5.16b, v7.16b, v5.16b
	eor3	v19.16b, v2.16b, v5.16b, v4.16b
	pmull	v2.1q, v19.1d, v15.1d
	pmull2	v4.1q, v19.2d, v3.2d
	pmull	v5.1q, v19.1d, v17.1d
	pmull2	v7.1q, v19.2d, v6.2d
	mov	x26, v19.d[1]
	eor	v2.16b, v4.16b, v2.16b
	zip1	v4.2d, v16.2d, v2.2d
	zip2	v2.2d, v2.2d, v16.2d
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v5.16b, v7.16b, v5.16b
	eor3	v7.16b, v2.16b, v5.16b, v4.16b
	pmull2	v2.1q, v14.2d, v3.2d
	pmull	v3.1q, v14.1d, v15.1d
	pmull	v4.1q, v14.1d, v17.1d
	eor	v2.16b, v2.16b, v3.16b
	mov	x27, v7.d[1]
	zip1	v3.2d, v16.2d, v2.2d
	zip2	v2.2d, v2.2d, v16.2d
	stp	q7, q19, [sp, #352]
	eor	v3.16b, v3.16b, v4.16b
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull2	v4.1q, v14.2d, v6.2d
	pmull	v5.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v4.16b, v4.16b, v5.16b
	eor3	v4.16b, v2.16b, v4.16b, v3.16b
	ext	v2.16b, v23.16b, v12.16b, #4
	pmull	v3.1q, v14.1d, v14.1d
	eor3	v13.16b, v0.16b, v2.16b, v12.16b
	dup	v0.2d, v14.d[0]
	mov	x28, v4.d[1]
	pmull2	v0.1q, v0.2d, v14.2d
	mov	w8, v13.s[3]
	eor	v0.16b, v0.16b, v0.16b
	ror	w10, w8, #8
	zip1	v2.2d, v16.2d, v0.2d
	zip2	v0.2d, v0.2d, v16.2d
	fmov	x8, d17
	eor	v2.16b, v2.16b, v3.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v1.1d
	eor	v2.16b, v3.16b, v2.16b
	pmull2	v3.1q, v14.2d, v14.2d
	pmull	v1.1q, v2.1d, v1.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v1.16b, v3.16b, v1.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	fmov	x11, d0
	stp	q0, q4, [sp, #320]
	dup	v1.2d, x11
	mov	x24, v0.d[1]
	dup	v0.4s, w10
	str	q1, [sp, #304]
	cmp	x4, #128
	b.lo	.LBB1_7
	ldur	q20, [x29, #-144]
	ldp	q23, q24, [sp, #384]
	mov	x10, #-4467570830351532032
	movi	v1.2d, #0000000000000000
	ldp	q21, q22, [sp, #352]
	ldp	q27, q29, [sp, #320]
	ldr	q28, [sp, #304]
	movi	v6.2d, #0000000000000000
	mov	x23, x4
	.p2align	5, , 16
.LBB1_4:
	ldr	q2, [x3]
	ldp	d3, d4, [x3, #112]
	fmov	d17, x25
	add	x11, x3, #128
	sub	x23, x23, #128
	eor	v2.16b, v2.16b, v6.16b
	pmull	v5.1q, v20.1d, v3.1d
	pmull	v3.1q, v15.1d, v3.1d
	pmull	v6.1q, v20.1d, v4.1d
	pmull	v4.1q, v15.1d, v4.1d
	eor	v3.16b, v6.16b, v3.16b
	ldp	d6, d7, [x3, #96]
	pmull	v18.1q, v24.1d, v7.1d
	pmull	v7.1q, v17.1d, v7.1d
	pmull	v16.1q, v24.1d, v6.1d
	pmull	v6.1q, v17.1d, v6.1d
	eor	v5.16b, v16.16b, v5.16b
	eor3	v3.16b, v3.16b, v6.16b, v18.16b
	ldp	d6, d16, [x3, #80]
	fmov	d18, x20
	pmull	v19.1q, v23.1d, v16.1d
	pmull	v16.1q, v18.1d, v16.1d
	pmull	v17.1q, v23.1d, v6.1d
	pmull	v6.1q, v18.1d, v6.1d
	eor3	v4.16b, v7.16b, v4.16b, v16.16b
	fmov	d18, x15
	eor3	v3.16b, v3.16b, v6.16b, v19.16b
	ldp	d6, d7, [x3, #64]
	pmull	v19.1q, v14.1d, v7.1d
	pmull	v7.1q, v18.1d, v7.1d
	pmull	v16.1q, v14.1d, v6.1d
	pmull	v6.1q, v18.1d, v6.1d
	fmov	d18, x28
	eor3	v5.16b, v5.16b, v17.16b, v16.16b
	eor3	v3.16b, v3.16b, v6.16b, v19.16b
	ldp	d6, d16, [x3, #48]
	pmull	v19.1q, v29.1d, v16.1d
	pmull	v16.1q, v18.1d, v16.1d
	pmull	v17.1q, v29.1d, v6.1d
	pmull	v6.1q, v18.1d, v6.1d
	eor3	v4.16b, v4.16b, v7.16b, v16.16b
	fmov	d18, x26
	eor3	v3.16b, v3.16b, v6.16b, v19.16b
	ldp	d6, d7, [x3, #32]
	pmull	v19.1q, v22.1d, v7.1d
	pmull	v7.1q, v18.1d, v7.1d
	pmull	v16.1q, v22.1d, v6.1d
	pmull	v6.1q, v18.1d, v6.1d
	fmov	d18, x27
	eor3	v5.16b, v5.16b, v17.16b, v16.16b
	eor3	v3.16b, v3.16b, v6.16b, v19.16b
	ldp	d6, d16, [x3, #16]
	mov	x3, x11
	pmull	v19.1q, v21.1d, v16.1d
	pmull	v16.1q, v18.1d, v16.1d
	eor3	v4.16b, v4.16b, v7.16b, v16.16b
	fmov	d7, x24
	pmull	v17.1q, v21.1d, v6.1d
	pmull	v6.1q, v18.1d, v6.1d
	pmull2	v16.1q, v28.2d, v2.2d
	eor3	v3.16b, v3.16b, v6.16b, v19.16b
	pmull	v6.1q, v27.1d, v2.1d
	pmull	v7.1q, v7.1d, v2.1d
	pmull2	v2.1q, v27.2d, v2.2d
	eor3	v5.16b, v5.16b, v17.16b, v6.16b
	eor3	v3.16b, v3.16b, v7.16b, v16.16b
	zip1	v6.2d, v1.2d, v3.2d
	zip2	v3.2d, v3.2d, v1.2d
	eor	v5.16b, v6.16b, v5.16b
	fmov	d6, x10
	pmull	v7.1q, v5.1d, v6.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v7.16b
	pmull	v6.1q, v5.1d, v6.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor3	v2.16b, v4.16b, v2.16b, v6.16b
	eor3	v6.16b, v2.16b, v3.16b, v5.16b
	cmp	x23, #127
	b.hi	.LBB1_4
	mov	x3, x11
	movi	v16.2d, #0000000000000000
	dup	v23.2d, x8
	aese	v0.16b, v16.16b
	dup	v19.2d, x9
	cmp	x23, #16
	b.hs	.LBB1_8
	b	.LBB1_10
.LBB1_6:
	mov	w20, wzr
	b	.LBB1_33
.LBB1_7:
	movi	v6.2d, #0000000000000000
	mov	x23, x4
	dup	v23.2d, x8
	aese	v0.16b, v16.16b
	dup	v19.2d, x9
	cmp	x4, #16
	b.lo	.LBB1_10
.LBB1_8:
	ldur	q7, [x29, #-144]
	mov	x8, #-4467570830351532032
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB1_9:
	ldr	q3, [x3], #16
	sub	x23, x23, #16
	eor	v3.16b, v3.16b, v6.16b
	pmull	v5.1q, v15.1d, v3.1d
	pmull2	v6.1q, v23.2d, v3.2d
	pmull	v4.1q, v7.1d, v3.1d
	pmull2	v3.1q, v19.2d, v3.2d
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
	eor3	v6.16b, v3.16b, v5.16b, v4.16b
	cmp	x23, #15
	b.hi	.LBB1_9
.LBB1_10:
	ldur	q1, [x29, #-112]
	dup	v3.4s, v0.s[0]
	stur	q23, [x29, #-160]
	stur	q19, [x29, #-192]
	stp	q13, q12, [sp, #416]
	mov	v16.d[1], v1.d[0]
	str	q15, [sp, #288]
	stp	q11, q10, [sp, #448]
	stp	q9, q8, [sp, #480]
	stp	q31, q30, [sp, #512]
	stp	q26, q25, [x29, #-224]
	cbz	x23, .LBB1_12
	mov	w8, #16
	mov	w1, wzr
	str	x4, [sp, #104]
	str	x3, [sp, #8]
	sub	x2, x8, x23
	sub	x8, x29, #96
	stp	w13, w12, [sp, #96]
	str	w14, [sp, #92]
	add	x0, x8, x23
	stp	q14, q16, [sp, #48]
	str	x15, [sp, #40]
	stur	q6, [x29, #-176]
	str	q3, [sp, #16]
	bl	memset
	ldr	x1, [sp, #8]
	sub	x0, x29, #96
	mov	x2, x23
	bl	memcpy
	ldur	q0, [x29, #-96]
	ldp	q19, q1, [x29, #-192]
	mov	x8, #-4467570830351532032
	eor	v0.16b, v0.16b, v1.16b
	ldr	q15, [sp, #288]
	ldp	q3, q30, [x29, #-160]
	ldr	x15, [sp, #40]
	ldr	w12, [sp, #100]
	ldp	q14, q16, [sp, #48]
	ldp	w14, w13, [sp, #92]
	ldr	x4, [sp, #104]
	pmull	v2.1q, v15.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v30.1d, v0.1d
	pmull2	v0.1q, v19.2d, v0.2d
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
	ldr	q3, [sp, #16]
	eor3	v6.16b, v2.16b, v0.16b, v1.16b
	b	.LBB1_13
.LBB1_12:
	ldur	q30, [x29, #-144]
.LBB1_13:
	ldp	q0, q2, [x29, #-128]
	ldr	q1, [sp, #144]
	lsl	x8, x4, #3
	ext	v1.16b, v1.16b, v2.16b, #4
	mov	v0.s[0], w14
	ldp	q8, q31, [sp, #384]
	ldr	q12, [sp, #304]
	ldp	q10, q9, [sp, #352]
	ldp	q29, q11, [sp, #320]
	stur	q0, [x29, #-128]
	ldr	q0, [sp, #112]
	ext	v0.16b, v0.16b, v2.16b, #12
	eor	v2.16b, v16.16b, v3.16b
	cmp	x19, #128
	b.lo	.LBB1_17
	mov	x9, #-4467570830351532032
	fmov	d3, x25
	mov	v21.16b, v6.16b
	movi	v18.2d, #0000000000000000
	mov	x23, x19
	fmov	d4, x20
	fmov	d5, x15
	fmov	d6, x28
	fmov	d7, x26
	fmov	d16, x27
	fmov	d17, x24
	fmov	d19, x9
	mov	x9, x22
	.p2align	5, , 16
.LBB1_15:
	ldr	q20, [x9]
	add	x24, x9, #128
	sub	x23, x23, #128
	eor	v20.16b, v20.16b, v21.16b
	ldp	d21, d22, [x9, #112]
	pmull	v24.1q, v30.1d, v22.1d
	pmull	v22.1q, v15.1d, v22.1d
	pmull	v23.1q, v30.1d, v21.1d
	pmull	v21.1q, v15.1d, v21.1d
	eor	v21.16b, v24.16b, v21.16b
	ldp	d24, d25, [x9, #96]
	pmull	v27.1q, v31.1d, v25.1d
	pmull	v25.1q, v3.1d, v25.1d
	pmull	v26.1q, v31.1d, v24.1d
	pmull	v24.1q, v3.1d, v24.1d
	eor	v23.16b, v26.16b, v23.16b
	eor3	v21.16b, v21.16b, v24.16b, v27.16b
	ldp	d24, d26, [x9, #80]
	pmull	v28.1q, v8.1d, v26.1d
	pmull	v26.1q, v4.1d, v26.1d
	pmull	v27.1q, v8.1d, v24.1d
	pmull	v24.1q, v4.1d, v24.1d
	eor3	v22.16b, v25.16b, v22.16b, v26.16b
	eor3	v21.16b, v21.16b, v24.16b, v28.16b
	ldp	d24, d25, [x9, #64]
	pmull	v28.1q, v14.1d, v25.1d
	pmull	v25.1q, v5.1d, v25.1d
	pmull	v26.1q, v14.1d, v24.1d
	pmull	v24.1q, v5.1d, v24.1d
	eor3	v23.16b, v23.16b, v27.16b, v26.16b
	eor3	v21.16b, v21.16b, v24.16b, v28.16b
	ldp	d24, d26, [x9, #48]
	pmull	v28.1q, v11.1d, v26.1d
	pmull	v26.1q, v6.1d, v26.1d
	pmull	v27.1q, v11.1d, v24.1d
	pmull	v24.1q, v6.1d, v24.1d
	eor3	v22.16b, v22.16b, v25.16b, v26.16b
	eor3	v21.16b, v21.16b, v24.16b, v28.16b
	ldp	d24, d25, [x9, #32]
	pmull	v28.1q, v9.1d, v25.1d
	pmull	v25.1q, v7.1d, v25.1d
	pmull	v26.1q, v9.1d, v24.1d
	pmull	v24.1q, v7.1d, v24.1d
	eor3	v23.16b, v23.16b, v27.16b, v26.16b
	eor3	v21.16b, v21.16b, v24.16b, v28.16b
	ldp	d24, d26, [x9, #16]
	mov	x9, x24
	pmull	v28.1q, v10.1d, v26.1d
	pmull	v26.1q, v16.1d, v26.1d
	pmull	v27.1q, v10.1d, v24.1d
	pmull	v24.1q, v16.1d, v24.1d
	eor3	v22.16b, v22.16b, v25.16b, v26.16b
	pmull	v25.1q, v17.1d, v20.1d
	pmull2	v26.1q, v12.2d, v20.2d
	eor3	v21.16b, v21.16b, v24.16b, v28.16b
	pmull	v24.1q, v29.1d, v20.1d
	pmull2	v20.1q, v29.2d, v20.2d
	eor3	v21.16b, v21.16b, v25.16b, v26.16b
	eor3	v23.16b, v23.16b, v27.16b, v24.16b
	zip1	v24.2d, v18.2d, v21.2d
	zip2	v21.2d, v21.2d, v18.2d
	eor	v23.16b, v24.16b, v23.16b
	pmull	v24.1q, v23.1d, v19.1d
	ext	v23.16b, v23.16b, v23.16b, #8
	eor	v23.16b, v23.16b, v24.16b
	pmull	v24.1q, v23.1d, v19.1d
	ext	v23.16b, v23.16b, v23.16b, #8
	eor3	v20.16b, v22.16b, v20.16b, v24.16b
	eor3	v21.16b, v20.16b, v21.16b, v23.16b
	cmp	x23, #127
	b.hi	.LBB1_15
	ldur	q19, [x29, #-192]
	mov	v6.16b, v21.16b
	b	.LBB1_18
.LBB1_17:
	mov	x23, x19
	mov	x24, x22
.LBB1_18:
	ldur	q3, [x29, #-128]
	ldr	q5, [sp, #128]
	ldur	q17, [x29, #-160]
	fmov	d18, x8
	eor3	v0.16b, v2.16b, v0.16b, v1.16b
	lsl	x9, x19, #3
	ldr	x20, [x29, #104]
	mov	v3.s[1], w13
	stur	q3, [x29, #-128]
	ldp	q4, q3, [sp, #160]
	eor3	v3.16b, v3.16b, v4.16b, v5.16b
	movi	v4.4s, #127
	cmp	x23, #16
	b.lo	.LBB1_21
	mov	x8, #-4467570830351532032
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB1_20:
	ldr	q5, [x24], #16
	sub	x23, x23, #16
	eor	v5.16b, v5.16b, v6.16b
	pmull	v7.1q, v15.1d, v5.1d
	pmull2	v16.1q, v17.2d, v5.2d
	pmull	v6.1q, v30.1d, v5.1d
	pmull2	v5.1q, v19.2d, v5.2d
	eor	v7.16b, v16.16b, v7.16b
	zip1	v16.2d, v1.2d, v7.2d
	zip2	v7.2d, v7.2d, v1.2d
	eor	v6.16b, v16.16b, v6.16b
	pmull	v16.1q, v6.1d, v2.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v16.16b
	pmull	v16.1q, v6.1d, v2.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v5.16b, v16.16b, v5.16b
	eor3	v6.16b, v5.16b, v7.16b, v6.16b
	cmp	x23, #15
	b.hi	.LBB1_20
.LBB1_21:
	ldur	q1, [x29, #-128]
	mov	v18.d[1], x9
	eor3	v14.16b, v3.16b, v0.16b, v4.16b
	stur	q6, [x29, #-176]
	str	q14, [sp, #400]
	mov	v1.s[2], w12
	stur	q1, [x29, #-128]
	cbz	x23, .LBB1_23
	mov	w8, #16
	mov	w1, wzr
	str	q18, [sp, #384]
	sub	x2, x8, x23
	sub	x8, x29, #96
	add	x0, x8, x23
	bl	memset
	sub	x0, x29, #96
	mov	x1, x24
	mov	x2, x23
	bl	memcpy
	ldur	q0, [x29, #-96]
	ldp	q17, q30, [x29, #-160]
	mov	x8, #-4467570830351532032
	ldr	q15, [sp, #288]
	ldp	q19, q1, [x29, #-192]
	eor	v0.16b, v0.16b, v1.16b
	ldr	q7, [sp, #192]
	pmull	v2.1q, v15.1d, v0.1d
	pmull2	v3.1q, v17.2d, v0.2d
	pmull	v1.1q, v30.1d, v0.1d
	ldp	q18, q14, [sp, #384]
	pmull2	v0.1q, v19.2d, v0.2d
	ldp	q24, q21, [sp, #240]
	ldp	q6, q25, [sp, #208]
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
	eor3	v0.16b, v2.16b, v0.16b, v1.16b
	b	.LBB1_24
.LBB1_23:
	ldp	q24, q21, [sp, #240]
	ldp	q6, q25, [sp, #208]
	ldr	q7, [sp, #192]
	ldur	q0, [x29, #-176]
.LBB1_24:
	eor	v0.16b, v0.16b, v18.16b
	mov	x8, #-4467570830351532032
	ldp	q27, q26, [x29, #-224]
	pmull	v2.1q, v15.1d, v0.1d
	pmull2	v3.1q, v17.2d, v0.2d
	pmull	v1.1q, v30.1d, v0.1d
	pmull2	v0.1q, v19.2d, v0.2d
	ldp	q29, q28, [x29, #-256]
	ldp	q31, q30, [sp, #528]
	ldp	q9, q8, [sp, #496]
	ldp	q11, q10, [sp, #464]
	ldp	q13, q12, [sp, #432]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	ldr	q15, [sp, #416]
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	adrp	x8, .LCPI1_5
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	ldur	q4, [x29, #-128]
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v0.16b, v4.16b, v3.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI1_5]
	adrp	x8, .LCPI1_6
	and	v0.16b, v0.16b, v1.16b
	ldur	q1, [x29, #-112]
	aese	v0.16b, v27.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v26.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v28.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v29.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v30.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v31.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v8.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v9.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v11.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v12.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v13.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [x8, :lo12:.LCPI1_6]
	aese	v0.16b, v15.16b
	eor	v0.16b, v0.16b, v14.16b
	orr	v23.16b, v0.16b, v1.16b
	str	q0, [x20]
	cmp	x19, #128
	b.lo	.LBB1_28
	adrp	x8, .LCPI1_7
	ldur	q22, [x29, #-112]
	ldr	w20, [sp, #284]
	ldr	q0, [x8, :lo12:.LCPI1_7]
	adrp	x8, .LCPI1_8
	stur	q0, [x29, #-128]
	ldr	q0, [x8, :lo12:.LCPI1_8]
	adrp	x8, .LCPI1_9
	ldr	q2, [x8, :lo12:.LCPI1_9]
	stur	q0, [x29, #-144]
	.p2align	5, , 16
.LBB1_26:
	ldur	q4, [x29, #-128]
	ldp	q16, q17, [x22]
	mov	v3.16b, v23.16b
	add	v20.4s, v23.4s, v21.4s
	add	v18.4s, v23.4s, v24.4s
	add	v19.4s, v23.4s, v25.4s
	mov	v0.16b, v6.16b
	add	v6.4s, v23.4s, v6.4s
	mov	v1.16b, v7.16b
	add	v7.4s, v23.4s, v7.4s
	add	x8, x22, #128
	add	x9, x21, #128
	sub	x19, x19, #128
	add	v5.4s, v23.4s, v4.4s
	ldur	q4, [x29, #-144]
	add	v4.4s, v23.4s, v4.4s
	//APP
	aese	v3.16b, v27.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v27.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v27.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v27.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v27.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v27.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v26.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v26.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v26.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v26.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v26.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v26.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v28.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v28.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v28.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v28.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v28.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v29.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v29.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v29.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v29.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v29.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v29.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v30.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v30.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v30.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v30.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v30.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v30.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v31.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v31.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v31.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v31.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v31.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v8.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v8.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v8.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v8.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v8.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v8.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v9.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v9.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v9.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v10.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v10.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v10.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v11.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v11.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v11.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v12.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v12.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v12.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v13.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v13.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v13.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	//APP
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v20.16b, v22.16b
	aesmc	v20.16b, v20.16b
	aese	v18.16b, v22.16b
	aesmc	v18.16b, v18.16b
	aese	v19.16b, v22.16b
	aesmc	v19.16b, v19.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v22.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	//NO_APP
	aese	v3.16b, v15.16b
	aese	v20.16b, v15.16b
	aese	v18.16b, v15.16b
	aese	v19.16b, v15.16b
	aese	v6.16b, v15.16b
	aese	v7.16b, v15.16b
	aese	v5.16b, v15.16b
	aese	v4.16b, v15.16b
	add	v23.4s, v23.4s, v2.4s
	eor3	v3.16b, v16.16b, v3.16b, v14.16b
	eor3	v16.16b, v17.16b, v20.16b, v14.16b
	ldp	q17, q20, [x22, #32]
	eor3	v17.16b, v17.16b, v18.16b, v14.16b
	eor3	v18.16b, v20.16b, v19.16b, v14.16b
	ldp	q19, q20, [x22, #64]
	eor3	v7.16b, v20.16b, v7.16b, v14.16b
	eor3	v6.16b, v19.16b, v6.16b, v14.16b
	ldp	q19, q20, [x22, #96]
	stp	q3, q16, [x21]
	stp	q17, q18, [x21, #32]
	mov	x22, x8
	eor3	v4.16b, v20.16b, v4.16b, v14.16b
	eor3	v5.16b, v19.16b, v5.16b, v14.16b
	stp	q6, q7, [x21, #64]
	mov	v6.16b, v0.16b
	mov	v7.16b, v1.16b
	stp	q5, q4, [x21, #96]
	mov	x21, x9
	cmp	x19, #127
	b.hi	.LBB1_26
	mov	x22, x8
	mov	x21, x9
	cmp	x19, #16
	b.hs	.LBB1_29
	b	.LBB1_31
.LBB1_28:
	ldr	w20, [sp, #284]
	cmp	x19, #16
	b.lo	.LBB1_31
.LBB1_29:
	ldur	q2, [x29, #-112]
	.p2align	5, , 16
.LBB1_30:
	mov	v1.16b, v23.16b
	ldr	q0, [x22], #16
	add	v23.4s, v23.4s, v21.4s
	sub	x19, x19, #16
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v28.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v29.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v30.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v8.16b
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
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v15.16b
	eor3	v0.16b, v0.16b, v1.16b, v14.16b
	str	q0, [x21], #16
	cmp	x19, #15
	b.hi	.LBB1_30
.LBB1_31:
	cbz	x19, .LBB1_33
	mov	w8, #16
	mov	w1, wzr
	stur	q23, [x29, #-128]
	sub	x2, x8, x19
	sub	x8, x29, #96
	add	x0, x8, x19
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldur	q2, [x29, #-128]
	ldp	q3, q1, [x29, #-224]
	sub	x1, x29, #96
	mov	x0, x21
	ldur	q0, [x29, #-96]
	mov	x2, x19
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x29, #-256]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #528]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #496]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #464]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #432]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldur	q1, [x29, #-112]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #400]
	aese	v2.16b, v3.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	stur	q0, [x29, #-96]
	bl	memcpy
.LBB1_33:
	mov	w0, w20
	add	sp, sp, #752
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
	.size	haberdashery_aes256gcmsiv_neoversev2_encrypt, .Lfunc_end1-haberdashery_aes256gcmsiv_neoversev2_encrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcmsiv_neoversev2_init,@function
haberdashery_aes256gcmsiv_neoversev2_init:
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
	.size	haberdashery_aes256gcmsiv_neoversev2_init, .Lfunc_end2-haberdashery_aes256gcmsiv_neoversev2_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmsiv_neoversev2_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_neoversev2_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmsiv_neoversev2_is_supported,@function
haberdashery_aes256gcmsiv_neoversev2_is_supported:
	.cfi_startproc
	mov	w0, #1
	ret
.Lfunc_end3:
	.size	haberdashery_aes256gcmsiv_neoversev2_is_supported, .Lfunc_end3-haberdashery_aes256gcmsiv_neoversev2_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

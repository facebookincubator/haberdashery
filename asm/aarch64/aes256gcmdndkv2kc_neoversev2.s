# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	224
.LCPI0_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	225
.LCPI0_2:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	226
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
	.byte	0
	.byte	0
	.byte	0
	.byte	227
.LCPI0_4:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	228
.LCPI0_5:
	.word	0
	.word	0
	.word	0
	.word	1
.LCPI0_6:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI0_7:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI0_8:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI0_9:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI0_10:
	.word	0
	.word	0
	.word	0
	.word	6
	.section	.text.haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt,@function
haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt:
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
	sub	sp, sp, #640
	ldr	x8, [x29, #112]
	cmp	x6, x8
	b.ne	.LBB0_12
	mov	x9, #68719411200
	mov	w8, wzr
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB0_13
	mov	x9, #2305843009213693950
	cmp	x4, x9
	b.hi	.LBB0_13
	cmp	x2, #24
	b.ne	.LBB0_13
	ldr	x9, [x29, #96]
	cmp	x9, #48
	b.ne	.LBB0_13
	ldr	q0, [x1]
	adrp	x8, .LCPI0_0
	ldp	q5, q6, [x0, #32]
	mov	v25.16b, v0.16b
	ldr	q1, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_3
	ldr	q2, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	ldr	q3, [x8, :lo12:.LCPI0_4]
	ldp	q7, q16, [x0, #64]
	ldp	q17, q18, [x0, #96]
	ldp	q19, q20, [x0, #128]
	ldp	q21, q22, [x0, #160]
	ldp	q23, q24, [x0, #192]
	ldp	q27, q28, [x7, #16]
	mov	v25.b[15], wzr
	eor	v26.16b, v25.16b, v3.16b
	ldp	q3, q4, [x0]
	eor	v1.16b, v25.16b, v1.16b
	eor	v2.16b, v25.16b, v2.16b
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v3.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v4.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v4.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v5.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v5.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v6.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v16.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v17.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v17.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v18.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v18.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v18.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v19.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v20.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v21.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v22.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v26.16b, v23.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v24.16b
	aese	v2.16b, v24.16b
	aese	v26.16b, v24.16b
	eor3	v2.16b, v2.16b, v27.16b, v1.16b
	eor3	v26.16b, v26.16b, v28.16b, v1.16b
	orr	v2.16b, v26.16b, v2.16b
	mov	x8, v2.d[1]
	fmov	x9, d2
	orr	x8, x9, x8
	cbnz	x8, .LBB0_12
	adrp	x8, .LCPI0_1
	movi	v12.2d, #0000000000000000
	mov	x9, #-4467570830351532032
	ldrb	w11, [x1, #16]
	ldrb	w10, [x1, #17]
	ldr	q2, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_2
	umov	w12, v0.b[15]
	ldr	q26, [x8, :lo12:.LCPI0_2]
	orr	w11, w12, w11, lsl #8
	orr	w10, w11, w10, lsl #16
	ldrb	w11, [x1, #18]
	eor	v2.16b, v25.16b, v2.16b
	eor	v25.16b, v25.16b, v26.16b
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	orr	w10, w10, w11, lsl #24
	aese	v25.16b, v3.16b
	aesmc	v25.16b, v25.16b
	movi	v3.2d, #0000000000000000
	aese	v2.16b, v4.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v4.16b
	aesmc	v25.16b, v25.16b
	ext	v4.16b, v3.16b, v3.16b, #4
	aese	v2.16b, v5.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v5.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	movi	v6.2d, #0000000000000000
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v16.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v17.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v17.16b
	aesmc	v25.16b, v25.16b
	movi	v17.2d, #0000000000000000
	aese	v2.16b, v18.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v18.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v19.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v20.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v21.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v22.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v25.16b, v23.16b
	aesmc	v25.16b, v25.16b
	aese	v2.16b, v24.16b
	aese	v25.16b, v24.16b
	eor	v10.16b, v2.16b, v1.16b
	eor	v9.16b, v25.16b, v1.16b
	ext	v5.16b, v4.16b, v10.16b, #12
	mov	v6.d[1], v10.d[0]
	mov	w8, v9.s[3]
	mov	v17.d[1], v9.d[0]
	eor	v6.16b, v5.16b, v6.16b
	dup	v5.4s, v3.s[0]
	ror	w8, w8, #8
	dup	v16.4s, w8
	ext	v7.16b, v5.16b, v10.16b, #4
	aese	v16.16b, v12.16b
	dup	v16.4s, v16.s[0]
	eor3	v6.16b, v6.16b, v7.16b, v16.16b
	movi	v16.4s, #1
	eor3	v11.16b, v10.16b, v6.16b, v16.16b
	ext	v16.16b, v4.16b, v9.16b, #12
	eor3	v7.16b, v2.16b, v1.16b, v6.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	dup	v18.4s, v11.s[3]
	eor	v16.16b, v16.16b, v17.16b
	ext	v17.16b, v5.16b, v9.16b, #4
	ext	v19.16b, v5.16b, v11.16b, #4
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v12.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	stp	q11, q10, [x29, #-208]
	dup	v18.4s, v18.s[0]
	eor3	v16.16b, v16.16b, v17.16b, v18.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v11.d[0]
	ext	v17.16b, v4.16b, v11.16b, #12
	eor3	v14.16b, v25.16b, v1.16b, v16.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	mov	w8, v14.s[3]
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v12.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	ext	v20.16b, v5.16b, v14.16b, #4
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.4s, #3
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v14.d[0]
	eor3	v15.16b, v7.16b, v17.16b, v18.16b
	ext	v18.16b, v4.16b, v14.16b, #12
	eor3	v6.16b, v10.16b, v6.16b, v17.16b
	dup	v21.4s, v15.s[3]
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v21.16b, v12.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v18.16b, v19.16b, v18.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v15.d[0]
	ext	v20.16b, v5.16b, v15.16b, #4
	eor3	v24.16b, v9.16b, v16.16b, v18.16b
	ext	v16.16b, v4.16b, v15.16b, #12
	mov	w8, v24.s[3]
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	stp	q9, q24, [x29, #-176]
	ror	w8, w8, #8
	dup	v21.4s, w8
	aese	v21.16b, v12.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v16.16b, v19.16b, v16.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v24.d[0]
	ext	v20.16b, v5.16b, v24.16b, #4
	eor3	v7.16b, v7.16b, v17.16b, v16.16b
	movi	v17.4s, #7
	eor3	v27.16b, v6.16b, v16.16b, v17.16b
	ext	v17.16b, v4.16b, v24.16b, #12
	dup	v21.4s, v27.s[3]
	aese	v2.16b, v27.16b
	aesmc	v2.16b, v2.16b
	aese	v21.16b, v12.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v17.16b, v19.16b, v17.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v27.d[0]
	ext	v20.16b, v5.16b, v27.16b, #4
	eor3	v22.16b, v14.16b, v18.16b, v17.16b
	ext	v18.16b, v4.16b, v27.16b, #12
	mov	w8, v22.s[3]
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	stur	q22, [x29, #-144]
	ror	w8, w8, #8
	dup	v21.4s, w8
	aese	v21.16b, v12.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v18.16b, v19.16b, v18.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v22.d[0]
	ext	v20.16b, v5.16b, v22.16b, #4
	eor3	v6.16b, v6.16b, v16.16b, v18.16b
	movi	v16.4s, #15
	eor3	v23.16b, v7.16b, v18.16b, v16.16b
	ext	v16.16b, v4.16b, v22.16b, #12
	dup	v21.4s, v23.s[3]
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v21.16b, v12.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v16.16b, v19.16b, v16.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v23.d[0]
	ext	v20.16b, v5.16b, v23.16b, #4
	eor3	v25.16b, v24.16b, v17.16b, v16.16b
	ext	v17.16b, v4.16b, v23.16b, #12
	mov	w8, v25.s[3]
	aese	v2.16b, v25.16b
	aesmc	v2.16b, v2.16b
	ror	w8, w8, #8
	stp	q25, q23, [sp, #96]
	dup	v21.4s, w8
	aese	v21.16b, v12.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v17.16b, v19.16b, v17.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v25.d[0]
	ext	v20.16b, v5.16b, v25.16b, #4
	eor3	v7.16b, v7.16b, v18.16b, v17.16b
	movi	v18.4s, #31
	eor3	v26.16b, v6.16b, v17.16b, v18.16b
	ext	v18.16b, v4.16b, v25.16b, #12
	dup	v21.4s, v26.s[3]
	aese	v2.16b, v26.16b
	aesmc	v2.16b, v2.16b
	aese	v21.16b, v12.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v18.16b, v19.16b, v18.16b, v20.16b
	ext	v19.16b, v5.16b, v26.16b, #4
	eor3	v21.16b, v22.16b, v16.16b, v18.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v26.d[0]
	ext	v16.16b, v4.16b, v26.16b, #12
	mov	w8, v21.s[3]
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	stp	q21, q26, [sp, #64]
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v12.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v21.d[0]
	ext	v19.16b, v5.16b, v21.16b, #4
	eor3	v6.16b, v6.16b, v17.16b, v16.16b
	movi	v17.4s, #63
	eor3	v28.16b, v7.16b, v16.16b, v17.16b
	ext	v17.16b, v4.16b, v21.16b, #12
	dup	v20.4s, v28.s[3]
	ext	v4.16b, v4.16b, v28.16b, #12
	ext	v5.16b, v5.16b, v28.16b, #4
	aese	v2.16b, v28.16b
	aesmc	v2.16b, v2.16b
	str	q28, [sp, #128]
	aese	v20.16b, v12.16b
	dup	v20.4s, v20.s[0]
	eor3	v17.16b, v20.16b, v18.16b, v17.16b
	eor3	v19.16b, v17.16b, v19.16b, v21.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v28.d[0]
	mov	w8, v19.s[3]
	aese	v2.16b, v19.16b
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v12.16b
	dup	v18.4s, v18.s[0]
	eor	v17.16b, v17.16b, v18.16b
	eor3	v4.16b, v17.16b, v4.16b, v5.16b
	eor3	v5.16b, v7.16b, v16.16b, v4.16b
	movi	v7.4s, #127
	eor3	v1.16b, v5.16b, v7.16b, v2.16b
	eor3	v18.16b, v6.16b, v4.16b, v7.16b
	rev64	v1.16b, v1.16b
	stp	q18, q19, [sp, #32]
	ext	v1.16b, v1.16b, v1.16b, #8
	ushr	v2.2d, v1.2d, #63
	add	v1.2d, v1.2d, v1.2d
	ext	v4.16b, v2.16b, v2.16b, #8
	mov	v2.d[0], v3.d[0]
	shl	v3.2d, v2.2d, #63
	orr	v1.16b, v1.16b, v4.16b
	shl	v5.2d, v2.2d, #62
	shl	v2.2d, v2.2d, #57
	eor	v1.16b, v1.16b, v3.16b
	eor3	v13.16b, v1.16b, v5.16b, v2.16b
	dup	v2.2d, v13.d[0]
	pmull	v4.1q, v13.1d, v13.1d
	pmull2	v6.1q, v13.2d, v13.2d
	fmov	x8, d13
	mov	x23, v13.d[1]
	pmull2	v1.1q, v2.2d, v13.2d
	dup	v20.2d, x8
	stp	q20, q13, [x29, #-240]
	eor	v1.16b, v1.16b, v1.16b
	zip2	v3.2d, v1.2d, v12.2d
	zip1	v1.2d, v12.2d, v1.2d
	eor	v4.16b, v1.16b, v4.16b
	fmov	d1, x9
	ldrb	w9, [x1, #23]
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v22.16b, v3.16b, v5.16b, v4.16b
	dup	v3.2d, v22.d[0]
	pmull2	v5.1q, v22.2d, v2.2d
	pmull	v6.1q, v22.1d, v13.1d
	pmull2	v7.1q, v22.2d, v13.2d
	pmull	v16.1q, v22.1d, v22.1d
	pmull2	v17.1q, v22.2d, v22.2d
	fmov	x13, d22
	mov	x22, v22.d[1]
	pmull2	v4.1q, v3.2d, v13.2d
	pmull2	v3.1q, v3.2d, v22.2d
	eor	v4.16b, v5.16b, v4.16b
	eor	v3.16b, v3.16b, v3.16b
	zip2	v5.2d, v4.2d, v12.2d
	zip1	v4.2d, v12.2d, v4.2d
	eor	v4.16b, v4.16b, v6.16b
	ext	v6.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v6.16b, v4.16b
	pmull	v6.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v7.16b, v5.16b, v6.16b, v4.16b
	dup	v4.2d, v7.d[0]
	pmull	v6.1q, v7.1d, v7.1d
	fmov	x14, d7
	mov	x24, v7.d[1]
	stur	q7, [x29, #-256]
	pmull2	v4.1q, v4.2d, v7.2d
	pmull2	v7.1q, v7.2d, v7.2d
	eor	v4.16b, v4.16b, v4.16b
	zip1	v5.2d, v12.2d, v4.2d
	zip2	v4.2d, v4.2d, v12.2d
	eor	v5.16b, v5.16b, v6.16b
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v1.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	zip2	v7.2d, v3.2d, v12.2d
	zip1	v3.2d, v12.2d, v3.2d
	eor	v3.16b, v3.16b, v16.16b
	ext	v16.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v16.16b, v3.16b
	pmull	v16.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v16.16b, v17.16b, v16.16b
	eor3	v16.16b, v7.16b, v16.16b, v3.16b
	dup	v3.2d, v16.d[0]
	pmull2	v2.1q, v16.2d, v2.2d
	pmull	v7.1q, v16.1d, v13.1d
	fmov	x15, d16
	pmull2	v3.1q, v3.2d, v13.2d
	mov	x27, v16.d[1]
	eor	v2.16b, v2.16b, v3.16b
	zip1	v3.2d, v12.2d, v2.2d
	zip2	v2.2d, v2.2d, v12.2d
	eor	v3.16b, v3.16b, v7.16b
	ext	v7.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v7.16b, v3.16b
	ext	v7.16b, v3.16b, v3.16b, #8
	pmull	v1.1q, v3.1d, v1.1d
	pmull2	v3.1q, v16.2d, v13.2d
	eor	v1.16b, v3.16b, v1.16b
	eor3	v1.16b, v2.16b, v1.16b, v7.16b
	eor3	v2.16b, v4.16b, v6.16b, v5.16b
	movi	v5.4s, #1, lsl #24
	mov	v5.s[0], w10
	add	x10, x1, #19
	fmov	x16, d1
	mov	x28, v1.d[1]
	fmov	x17, d2
	mov	x25, v2.d[1]
	str	q2, [sp, #400]
	stp	q1, q16, [sp, #416]
	ld1	{ v5.s }[1], [x10]
	mov	v5.s[2], w9
	str	q5, [sp, #16]
	cbz	x4, .LBB0_22
	subs	x19, x4, #96
	b.lo	.LBB0_14
	ldp	q0, q1, [x3]
	ldp	q4, q5, [x3, #64]
	ldp	q2, q3, [x3, #32]
	mov	v30.16b, v20.16b
	mov	v8.16b, v22.16b
	add	x3, x3, #96
	ldur	q29, [x29, #-256]
	ldp	q31, q28, [sp, #416]
	rev64	v7.16b, v1.16b
	ldr	q12, [sp, #400]
	rev64	v6.16b, v0.16b
	rev64	v0.16b, v5.16b
	rev64	v1.16b, v4.16b
	rev64	v16.16b, v2.16b
	rev64	v2.16b, v3.16b
	pmull2	v4.1q, v13.2d, v0.2d
	pmull	v5.1q, v20.1d, v0.1d
	pmull2	v3.1q, v20.2d, v0.2d
	fmov	d20, x22
	pmull2	v18.1q, v22.2d, v1.2d
	fmov	d22, x27
	eor	v4.16b, v5.16b, v4.16b
	fmov	d5, x23
	pmull	v5.1q, v5.1d, v0.1d
	dup	v0.2d, x13
	pmull2	v17.1q, v0.2d, v1.2d
	pmull	v19.1q, v0.1d, v1.1d
	pmull	v1.1q, v20.1d, v1.1d
	fmov	d20, x24
	eor	v5.16b, v1.16b, v5.16b
	dup	v1.2d, x14
	eor	v3.16b, v17.16b, v3.16b
	eor3	v4.16b, v4.16b, v18.16b, v19.16b
	pmull2	v18.1q, v29.2d, v2.2d
	pmull	v20.1q, v20.1d, v2.1d
	pmull2	v17.1q, v1.2d, v2.2d
	pmull	v19.1q, v1.1d, v2.1d
	dup	v2.2d, x15
	eor3	v4.16b, v4.16b, v18.16b, v19.16b
	pmull2	v19.1q, v28.2d, v16.2d
	pmull2	v18.1q, v2.2d, v16.2d
	pmull	v21.1q, v2.1d, v16.1d
	pmull	v16.1q, v22.1d, v16.1d
	fmov	d22, x25
	eor3	v17.16b, v3.16b, v17.16b, v18.16b
	dup	v3.2d, x16
	eor3	v4.16b, v4.16b, v19.16b, v21.16b
	pmull2	v18.1q, v31.2d, v7.2d
	eor3	v5.16b, v5.16b, v20.16b, v16.16b
	fmov	d20, x28
	pmull	v19.1q, v3.1d, v7.1d
	pmull2	v16.1q, v3.2d, v7.2d
	pmull	v7.1q, v20.1d, v7.1d
	pmull2	v20.1q, v12.2d, v6.2d
	eor3	v18.16b, v4.16b, v18.16b, v19.16b
	dup	v4.2d, x17
	pmull2	v19.1q, v4.2d, v6.2d
	pmull	v21.1q, v4.1d, v6.1d
	pmull	v6.1q, v22.1d, v6.1d
	eor3	v16.16b, v17.16b, v16.16b, v19.16b
	eor3	v17.16b, v18.16b, v20.16b, v21.16b
	eor3	v7.16b, v5.16b, v7.16b, v6.16b
	cmp	x4, #192
	b.lo	.LBB0_11
	mov	x8, #-4467570830351532032
	movi	v5.2d, #0000000000000000
	fmov	d6, x8
	.p2align	5, , 16
.LBB0_10:
	zip1	v24.2d, v5.2d, v17.2d
	ldp	q18, q19, [x3]
	zip2	v17.2d, v17.2d, v5.2d
	fmov	d26, x22
	ldp	q20, q21, [x3, #32]
	ldp	q22, q23, [x3, #64]
	eor	v16.16b, v24.16b, v16.16b
	add	x3, x3, #96
	sub	x19, x19, #96
	pmull	v24.1q, v16.1d, v6.1d
	ext	v16.16b, v16.16b, v16.16b, #8
	eor	v16.16b, v16.16b, v24.16b
	pmull	v24.1q, v16.1d, v6.1d
	ext	v16.16b, v16.16b, v16.16b, #8
	eor3	v7.16b, v7.16b, v17.16b, v24.16b
	rev64	v17.16b, v18.16b
	rev64	v18.16b, v19.16b
	rev64	v19.16b, v20.16b
	rev64	v20.16b, v21.16b
	rev64	v21.16b, v22.16b
	rev64	v22.16b, v23.16b
	ext	v17.16b, v17.16b, v17.16b, #8
	pmull	v23.1q, v30.1d, v22.1d
	pmull2	v24.1q, v8.2d, v21.2d
	pmull	v25.1q, v0.1d, v21.1d
	eor3	v7.16b, v17.16b, v7.16b, v16.16b
	pmull2	v17.1q, v13.2d, v22.2d
	pmull2	v16.1q, v30.2d, v22.2d
	eor	v17.16b, v23.16b, v17.16b
	fmov	d23, x23
	eor3	v17.16b, v17.16b, v24.16b, v25.16b
	pmull	v24.1q, v1.1d, v20.1d
	fmov	d25, x24
	pmull	v22.1q, v23.1d, v22.1d
	pmull2	v23.1q, v0.2d, v21.2d
	pmull	v21.1q, v26.1d, v21.1d
	eor	v16.16b, v23.16b, v16.16b
	pmull2	v23.1q, v29.2d, v20.2d
	eor	v21.16b, v21.16b, v22.16b
	pmull2	v22.1q, v1.2d, v20.2d
	pmull	v20.1q, v25.1d, v20.1d
	pmull	v25.1q, v2.1d, v19.1d
	eor3	v17.16b, v17.16b, v23.16b, v24.16b
	pmull2	v23.1q, v2.2d, v19.2d
	pmull2	v24.1q, v28.2d, v19.2d
	eor3	v16.16b, v16.16b, v22.16b, v23.16b
	fmov	d22, x27
	eor3	v17.16b, v17.16b, v24.16b, v25.16b
	fmov	d23, x28
	pmull	v19.1q, v22.1d, v19.1d
	pmull	v22.1q, v3.1d, v18.1d
	eor3	v19.16b, v21.16b, v20.16b, v19.16b
	pmull2	v21.1q, v31.2d, v18.2d
	pmull2	v20.1q, v3.2d, v18.2d
	pmull	v18.1q, v23.1d, v18.1d
	pmull2	v23.1q, v4.2d, v7.2d
	eor3	v17.16b, v17.16b, v21.16b, v22.16b
	fmov	d22, x25
	pmull	v21.1q, v12.1d, v7.1d
	eor3	v16.16b, v16.16b, v20.16b, v21.16b
	pmull	v22.1q, v22.1d, v7.1d
	pmull2	v7.1q, v12.2d, v7.2d
	eor3	v17.16b, v17.16b, v22.16b, v23.16b
	eor3	v7.16b, v19.16b, v18.16b, v7.16b
	cmp	x19, #95
	b.hi	.LBB0_10
.LBB0_11:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v17.2d
	mov	x8, #-4467570830351532032
	ldur	q24, [x29, #-160]
	zip2	v0.2d, v17.2d, v0.2d
	mov	v20.16b, v30.16b
	fmov	d2, x8
	ldp	q25, q23, [sp, #96]
	mov	v22.16b, v8.16b
	eor	v1.16b, v1.16b, v16.16b
	ldp	q21, q26, [sp, #64]
	ldp	q18, q19, [sp, #32]
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v7.16b, v0.16b, v2.16b
	eor	v12.16b, v1.16b, v0.16b
	b	.LBB0_15
.LBB0_12:
	mov	w8, wzr
.LBB0_13:
	mov	w0, w8
	add	sp, sp, #640
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
.LBB0_14:
	.cfi_restore_state
	mov	x19, x4
.LBB0_15:
	str	x4, [sp, #8]
	cmp	x19, #16
	b.lo	.LBB0_18
	mov	x8, #-4467570830351532032
	fmov	d0, x23
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB0_17:
	ldr	q3, [x3], #16
	sub	x19, x19, #16
	rev64	v3.16b, v3.16b
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v12.16b
	pmull	v5.1q, v0.1d, v3.1d
	pmull2	v6.1q, v20.2d, v3.2d
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
	eor3	v12.16b, v5.16b, v3.16b, v4.16b
	cmp	x19, #15
	b.hi	.LBB0_17
.LBB0_18:
	cbz	x19, .LBB0_21
	mov	w8, #16
	stp	x17, x16, [sp, #248]
	str	x15, [sp, #272]
	mov	x21, x23
	sub	x2, x8, x19
	sub	x8, x29, #96
	str	x14, [sp, #288]
	str	x13, [sp, #304]
	add	x0, x8, x19
	stp	q12, q27, [sp, #336]
	stur	q14, [x29, #-128]
	stp	q15, q22, [sp, #368]
	str	x5, [sp, #320]
	mov	x26, x7
	mov	w1, wzr
	mov	x23, x6
	mov	x20, x3
	bl	memset
	sub	x0, x29, #96
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	mov	x6, x23
	cbz	x23, .LBB0_34
	ldr	q1, [sp, #336]
	rev64	v0.16b, v0.16b
	ldp	q20, q13, [x29, #-240]
	mov	x23, x21
	fmov	d2, x23
	mov	x8, #-4467570830351532032
	ldp	q10, q9, [x29, #-192]
	ldur	q11, [x29, #-208]
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q16, q14, [x29, #-144]
	ldur	q24, [x29, #-160]
	mov	x7, x26
	ldp	q27, q15, [sp, #352]
	ldp	q25, q23, [sp, #96]
	ldp	q21, q26, [sp, #64]
	eor	v0.16b, v0.16b, v1.16b
	ldr	q5, [sp, #16]
	ldr	q22, [sp, #384]
	ldp	q18, q19, [sp, #32]
	ldr	x4, [sp, #8]
	ldr	x5, [sp, #320]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v20.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	pmull2	v0.1q, v13.2d, v0.2d
	ldr	x13, [sp, #304]
	ldr	x14, [sp, #288]
	ldr	x15, [sp, #272]
	ldp	x17, x16, [sp, #248]
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
	eor3	v12.16b, v2.16b, v0.16b, v1.16b
	b	.LBB0_23
.LBB0_21:
	ldr	q5, [sp, #16]
	ldr	x4, [sp, #8]
.LBB0_22:
	ldur	q16, [x29, #-144]
	cbz	x6, .LBB0_36
.LBB0_23:
	adrp	x8, .LCPI0_5
	ldr	x19, [x29, #104]
	rev32	v1.16b, v5.16b
	ldr	q29, [x8, :lo12:.LCPI0_5]
	add	v17.4s, v1.4s, v29.4s
	cmp	x6, #96
	b.lo	.LBB0_27
	adrp	x8, .LCPI0_6
	mov	v28.16b, v19.16b
	mov	v19.16b, v23.16b
	ldr	q23, [sp, #128]
	ldr	q7, [sp, #400]
	mov	x20, x6
	ldr	q0, [x8, :lo12:.LCPI0_6]
	adrp	x8, .LCPI0_7
	stp	q29, q22, [sp, #368]
	mov	v22.16b, v26.16b
	stp	x28, x25, [sp, #240]
	str	x27, [sp, #216]
	stp	x22, x24, [sp, #176]
	str	q0, [sp, #352]
	ldr	q0, [x8, :lo12:.LCPI0_7]
	adrp	x8, .LCPI0_8
	str	q0, [sp, #336]
	ldr	q0, [x8, :lo12:.LCPI0_8]
	adrp	x8, .LCPI0_9
	ldr	q1, [x8, :lo12:.LCPI0_9]
	adrp	x8, .LCPI0_10
	str	q0, [sp, #320]
	dup	v0.2d, x17
	stp	q0, q1, [sp, #288]
	dup	v0.2d, x16
	dup	v1.2d, x13
	str	q0, [sp, #272]
	ldr	q0, [x8, :lo12:.LCPI0_10]
	mov	x8, #-4467570830351532032
	str	q1, [sp, #144]
	stp	x8, x23, [sp, #160]
	str	q0, [sp, #256]
	dup	v0.2d, x15
	str	q0, [sp, #224]
	dup	v0.2d, x14
	str	q0, [sp, #192]
	mov	v0.16b, v21.16b
	mov	v21.16b, v25.16b
	mov	v25.16b, v17.16b
	.p2align	5, , 16
.LBB0_25:
	ldp	q8, q31, [x5]
	ldp	q17, q2, [x5, #64]
	ldp	q30, q29, [x5, #32]
	mov	v24.16b, v14.16b
	mov	v16.16b, v15.16b
	add	x8, x5, #96
	ldr	q20, [sp, #224]
	ldr	q6, [sp, #192]
	ldr	q5, [sp, #144]
	add	x9, x19, #96
	sub	x20, x20, #96
	mov	x5, x8
	ldur	q4, [x29, #-240]
	stur	q2, [x29, #-128]
	rev64	v10.16b, v2.16b
	rev64	v14.16b, v31.16b
	rev64	v9.16b, v29.16b
	ldp	q26, q2, [sp, #272]
	rev64	v1.16b, v8.16b
	rev64	v15.16b, v30.16b
	rev64	v11.16b, v17.16b
	pmull2	v3.1q, v9.2d, v6.2d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v12.16b
	pmull	v12.1q, v1.1d, v7.1d
	pmull2	v13.1q, v1.2d, v2.2d
	pmull2	v2.1q, v14.2d, v26.2d
	eor	v2.16b, v2.16b, v12.16b
	pmull2	v12.1q, v15.2d, v20.2d
	eor3	v2.16b, v2.16b, v12.16b, v3.16b
	pmull2	v3.1q, v11.2d, v5.2d
	pmull2	v12.1q, v10.2d, v4.2d
	eor3	v12.16b, v2.16b, v3.16b, v12.16b
	ldr	d2, [sp, #248]
	pmull	v3.1q, v14.1d, v26.1d
	ldr	q26, [sp, #416]
	pmull	v2.1q, v1.1d, v2.1d
	pmull2	v1.1q, v1.2d, v7.2d
	eor	v2.16b, v2.16b, v13.16b
	pmull2	v13.1q, v14.2d, v26.2d
	eor3	v2.16b, v2.16b, v3.16b, v13.16b
	pmull	v3.1q, v15.1d, v20.1d
	ldr	q20, [sp, #432]
	pmull2	v13.1q, v15.2d, v20.2d
	eor3	v2.16b, v2.16b, v3.16b, v13.16b
	pmull	v3.1q, v9.1d, v6.1d
	ldur	q6, [x29, #-256]
	pmull2	v13.1q, v9.2d, v6.2d
	eor3	v2.16b, v2.16b, v3.16b, v13.16b
	pmull	v3.1q, v11.1d, v5.1d
	ldr	q5, [sp, #384]
	pmull2	v13.1q, v11.2d, v5.2d
	eor3	v2.16b, v2.16b, v3.16b, v13.16b
	pmull	v3.1q, v10.1d, v4.1d
	ldur	q4, [x29, #-224]
	pmull2	v13.1q, v10.2d, v4.2d
	movi	v4.2d, #0000000000000000
	eor3	v13.16b, v2.16b, v3.16b, v13.16b
	ldr	d2, [sp, #240]
	pmull	v14.1q, v14.1d, v2.1d
	ldr	d2, [sp, #216]
	pmull	v15.1q, v15.1d, v2.1d
	eor3	v1.16b, v14.16b, v1.16b, v15.16b
	ldp	d3, d2, [sp, #176]
	mov	v15.16b, v16.16b
	mov	v14.16b, v24.16b
	pmull	v2.1q, v9.1d, v2.1d
	pmull	v3.1q, v11.1d, v3.1d
	ldur	q11, [x29, #-208]
	ldp	q24, q16, [x29, #-160]
	eor3	v1.16b, v1.16b, v2.16b, v3.16b
	ldr	d2, [sp, #168]
	zip2	v3.2d, v13.2d, v4.2d
	pmull	v2.1q, v10.1d, v2.1d
	ldp	q10, q9, [x29, #-192]
	eor3	v1.16b, v1.16b, v2.16b, v3.16b
	rev32	v2.16b, v25.16b
	ldr	q3, [sp, #336]
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	add	v3.4s, v25.4s, v3.4s
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	rev32	v3.16b, v3.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v27.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v27.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v28.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	eor3	v8.16b, v18.16b, v2.16b, v8.16b
	ldr	q2, [sp, #368]
	aese	v3.16b, v0.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v23.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v28.16b
	add	v2.4s, v25.4s, v2.4s
	eor3	v3.16b, v18.16b, v3.16b, v29.16b
	zip1	v29.2d, v4.2d, v13.2d
	ldr	d4, [sp, #160]
	rev32	v2.16b, v2.16b
	eor	v29.16b, v29.16b, v12.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v27.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v28.16b
	eor3	v31.16b, v18.16b, v2.16b, v31.16b
	ldr	q2, [sp, #352]
	add	v2.4s, v25.4s, v2.4s
	stp	q8, q31, [x19]
	rev32	v2.16b, v2.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v27.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v28.16b
	eor3	v2.16b, v18.16b, v2.16b, v30.16b
	pmull	v30.1q, v29.1d, v4.1d
	ext	v29.16b, v29.16b, v29.16b, #8
	eor	v29.16b, v29.16b, v30.16b
	stp	q2, q3, [x19, #32]
	pmull	v2.1q, v29.1d, v4.1d
	ext	v3.16b, v29.16b, v29.16b, #8
	eor3	v12.16b, v1.16b, v2.16b, v3.16b
	ldp	q2, q1, [sp, #304]
	ldur	q3, [x29, #-128]
	add	v1.4s, v25.4s, v1.4s
	add	v2.4s, v25.4s, v2.4s
	rev32	v1.16b, v1.16b
	rev32	v2.16b, v2.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v27.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v28.16b
	aese	v2.16b, v28.16b
	eor3	v1.16b, v18.16b, v1.16b, v17.16b
	eor3	v2.16b, v18.16b, v2.16b, v3.16b
	stp	q1, q2, [x19, #64]
	ldr	q1, [sp, #256]
	mov	x19, x9
	add	v25.4s, v25.4s, v1.4s
	cmp	x20, #95
	b.hi	.LBB0_25
	ldp	q20, q13, [x29, #-240]
	ldr	q29, [sp, #368]
	mov	v17.16b, v25.16b
	mov	v23.16b, v19.16b
	mov	v25.16b, v21.16b
	mov	v26.16b, v22.16b
	mov	v21.16b, v0.16b
	mov	v19.16b, v28.16b
	mov	x19, x9
	mov	x5, x8
	b	.LBB0_28
.LBB0_27:
	mov	x20, x6
.LBB0_28:
	ldr	q0, [sp, #128]
	mov	x24, x4
	mov	x25, x7
	cmp	x20, #16
	b.lo	.LBB0_31
	mov	x8, #-4467570830351532032
	fmov	d1, x23
	movi	v2.2d, #0000000000000000
	fmov	d3, x8
	.p2align	5, , 16
.LBB0_30:
	rev32	v5.16b, v17.16b
	ldr	q4, [x5], #16
	add	v17.4s, v17.4s, v29.4s
	sub	x20, x20, #16
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v25.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v0.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v19.16b
	eor3	v5.16b, v18.16b, v5.16b, v4.16b
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	str	q5, [x19], #16
	eor	v4.16b, v4.16b, v12.16b
	pmull	v6.1q, v1.1d, v4.1d
	pmull2	v7.1q, v20.2d, v4.2d
	pmull	v5.1q, v13.1d, v4.1d
	pmull2	v4.1q, v13.2d, v4.2d
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
	eor3	v12.16b, v6.16b, v4.16b, v5.16b
	cmp	x20, #15
	b.hi	.LBB0_30
.LBB0_31:
	cbz	x20, .LBB0_33
	mov	w8, #16
	mov	w1, wzr
	mov	x26, x6
	mov	x22, x5
	stur	q14, [x29, #-128]
	sub	x21, x8, x20
	sub	x8, x29, #96
	stp	q27, q15, [sp, #352]
	add	x0, x8, x20
	mov	x2, x21
	str	q12, [sp, #336]
	str	q17, [sp, #432]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x20
	bl	memcpy
	ldr	q0, [sp, #432]
	ldp	q3, q1, [x29, #-192]
	sub	x1, x29, #96
	sub	x22, x29, #96
	ldur	q2, [x29, #-96]
	mov	x0, x19
	mov	x2, x20
	rev32	v0.16b, v0.16b
	stur	q2, [x29, #-256]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-208]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-128]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #368]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-160]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #352]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-144]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #96]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #64]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #128]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #32]
	aese	v0.16b, v3.16b
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	stur	q0, [x29, #-96]
	bl	memcpy
	ldur	q0, [x29, #-256]
	add	x0, x22, x20
	mov	w1, wzr
	mov	x2, x21
	stur	q0, [x29, #-112]
	bl	memset
	sub	x0, x29, #96
	sub	x1, x29, #112
	mov	x2, x20
	bl	memcpy
	ldp	q1, q27, [sp, #336]
	ldp	q20, q13, [x29, #-240]
	ldp	q18, q19, [sp, #32]
	mov	x6, x26
	mov	x7, x25
	mov	x4, x24
	ldp	q21, q26, [sp, #64]
	ldp	q25, q23, [sp, #96]
	ldp	q24, q16, [x29, #-160]
	ldr	q15, [sp, #368]
	ldur	q14, [x29, #-128]
	ldur	q9, [x29, #-176]
	ldur	q0, [x29, #-96]
	ldr	q5, [sp, #16]
	ldp	q11, q10, [x29, #-208]
	b	.LBB0_35
.LBB0_33:
	ldr	q5, [sp, #16]
	mov	x7, x25
	mov	x4, x24
	b	.LBB0_36
.LBB0_34:
	ldp	q10, q9, [x29, #-192]
	ldp	q13, q11, [x29, #-224]
	ldp	q16, q14, [x29, #-144]
	mov	x7, x26
	mov	x23, x21
	ldur	q24, [x29, #-160]
	ldp	q27, q15, [sp, #352]
	ldr	q5, [sp, #16]
	ldur	q20, [x29, #-240]
	ldr	q1, [sp, #336]
	ldr	x4, [sp, #8]
	ldp	q25, q23, [sp, #96]
	ldp	q21, q26, [sp, #64]
	ldp	q18, q19, [sp, #32]
.LBB0_35:
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	mov	x8, #-4467570830351532032
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v20.2d, v0.2d
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
	eor3	v12.16b, v2.16b, v0.16b, v1.16b
.LBB0_36:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d2, x23
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	eor	v0.16b, v12.16b, v0.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v20.2d, v0.2d
	pmull	v1.1q, v13.1d, v0.1d
	pmull2	v0.1q, v13.2d, v0.2d
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	eor	v1.16b, v4.16b, v1.16b
	aese	v5.16b, v25.16b
	aesmc	v5.16b, v5.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	eor	v1.16b, v1.16b, v4.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	ldr	q1, [sp, #128]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v5.16b, v1.16b
	aesmc	v5.16b, v5.16b
	ldr	q1, [x7]
	aese	v5.16b, v19.16b
	eor3	v0.16b, v5.16b, v0.16b, v1.16b
	eor	v0.16b, v0.16b, v18.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	b	.LBB0_13
.Lfunc_end0:
	.size	haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt, .Lfunc_end0-haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	224
.LCPI1_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	225
.LCPI1_2:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	226
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
	.byte	227
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
	.byte	228
.LCPI1_5:
	.word	0
	.word	0
	.word	0
	.word	1
.LCPI1_6:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI1_7:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI1_8:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI1_9:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI1_10:
	.word	0
	.word	0
	.word	0
	.word	6
.LCPI1_11:
	.word	0
	.word	0
	.word	0
	.word	7
	.section	.text.haberdashery_aes256gcmdndkv2kc_neoversev2_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_neoversev2_encrypt
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_neoversev2_encrypt,@function
haberdashery_aes256gcmdndkv2kc_neoversev2_encrypt:
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
	sub	sp, sp, #544
	ldr	x9, [x29, #96]
	cmp	x6, x9
	b.ne	.LBB1_7
	ldr	x9, [x29, #112]
	cmp	x2, #24
	mov	w10, #48
	mov	x8, x0
	ccmp	x9, x10, #0, eq
	mov	x9, #2305843009213693951
	ccmp	x4, x9, #2, eq
	mov	x9, #68719476704
	ccmp	x6, x9, #2, lo
	cset	w0, lo
	cmp	w0, #1
	b.ne	.LBB1_34
	ldr	q3, [x1]
	adrp	x14, .LCPI1_0
	ldp	q16, q7, [x8, #32]
	movi	v31.2d, #0000000000000000
	ldr	q0, [x14, :lo12:.LCPI1_0]
	adrp	x14, .LCPI1_1
	ldp	q18, q17, [x8, #64]
	add	x10, x1, #19
	ldp	q20, q19, [x8, #96]
	ldp	q22, q21, [x8, #128]
	ldp	q24, q23, [x8, #160]
	umov	w13, v3.b[15]
	ldrb	w11, [x1, #16]
	mov	v3.b[15], wzr
	ldp	q26, q25, [x8, #192]
	ldrb	w12, [x1, #17]
	ldrb	w9, [x1, #23]
	ldr	x23, [x29, #104]
	orr	w11, w13, w11, lsl #8
	orr	w11, w11, w12, lsl #16
	ldrb	w12, [x1, #18]
	eor	v1.16b, v3.16b, v0.16b
	ldr	q0, [x14, :lo12:.LCPI1_1]
	adrp	x14, .LCPI1_2
	ldr	q2, [x14, :lo12:.LCPI1_2]
	adrp	x14, .LCPI1_3
	orr	w11, w11, w12, lsl #24
	eor	v0.16b, v3.16b, v0.16b
	eor	v5.16b, v3.16b, v2.16b
	ldr	q2, [x14, :lo12:.LCPI1_3]
	adrp	x14, .LCPI1_4
	ldr	q4, [x14, :lo12:.LCPI1_4]
	mov	x14, #-4467570830351532032
	eor	v2.16b, v3.16b, v2.16b
	eor	v4.16b, v3.16b, v4.16b
	ldp	q6, q3, [x8]
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v3.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v3.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	movi	v16.2d, #0000000000000000
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v18.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v18.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v18.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v18.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v18.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v17.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v17.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v20.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v19.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v19.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v19.16b
	aesmc	v4.16b, v4.16b
	movi	v19.2d, #0000000000000000
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v21.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v24.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v23.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v26.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v26.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v26.16b
	aesmc	v4.16b, v4.16b
	aese	v1.16b, v25.16b
	aese	v5.16b, v25.16b
	aese	v0.16b, v25.16b
	aese	v2.16b, v25.16b
	aese	v4.16b, v25.16b
	eor	v25.16b, v5.16b, v1.16b
	eor	v22.16b, v0.16b, v1.16b
	eor	v3.16b, v2.16b, v1.16b
	eor	v2.16b, v4.16b, v1.16b
	movi	v4.2d, #0000000000000000
	ext	v6.16b, v4.16b, v4.16b, #4
	mov	w8, v25.s[3]
	ext	v7.16b, v6.16b, v22.16b, #12
	mov	v16.d[1], v22.d[0]
	mov	v19.d[1], v25.d[0]
	stp	q22, q25, [x29, #-144]
	ror	w8, w8, #8
	eor	v16.16b, v7.16b, v16.16b
	dup	v7.4s, v4.s[0]
	dup	v18.4s, w8
	ext	v17.16b, v7.16b, v22.16b, #4
	aese	v18.16b, v31.16b
	dup	v18.4s, v18.s[0]
	eor3	v16.16b, v16.16b, v17.16b, v18.16b
	movi	v18.4s, #1
	eor3	v23.16b, v22.16b, v16.16b, v18.16b
	ext	v18.16b, v6.16b, v25.16b, #12
	eor3	v17.16b, v0.16b, v1.16b, v16.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	dup	v20.4s, v23.s[3]
	eor	v18.16b, v18.16b, v19.16b
	ext	v19.16b, v7.16b, v25.16b, #4
	aese	v0.16b, v25.16b
	aesmc	v0.16b, v0.16b
	aese	v20.16b, v31.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	dup	v20.4s, v20.s[0]
	eor3	v18.16b, v18.16b, v19.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v23.d[0]
	ext	v20.16b, v7.16b, v23.16b, #4
	eor3	v28.16b, v5.16b, v1.16b, v18.16b
	ext	v5.16b, v6.16b, v23.16b, #12
	aese	v0.16b, v28.16b
	aesmc	v0.16b, v0.16b
	mov	w8, v28.s[3]
	ror	w8, w8, #8
	dup	v21.4s, w8
	aese	v21.16b, v31.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	ext	v21.16b, v7.16b, v28.16b, #4
	eor3	v5.16b, v19.16b, v5.16b, v20.16b
	movi	v19.4s, #3
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v28.d[0]
	eor3	v24.16b, v17.16b, v5.16b, v19.16b
	eor3	v16.16b, v22.16b, v16.16b, v5.16b
	ext	v19.16b, v6.16b, v28.16b, #12
	dup	v22.4s, v24.s[3]
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	stp	q24, q23, [x29, #-176]
	aese	v22.16b, v31.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	eor3	v19.16b, v20.16b, v19.16b, v21.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v24.d[0]
	ext	v21.16b, v7.16b, v24.16b, #4
	eor3	v30.16b, v25.16b, v18.16b, v19.16b
	ext	v18.16b, v6.16b, v24.16b, #12
	mov	w8, v30.s[3]
	aese	v0.16b, v30.16b
	aesmc	v0.16b, v0.16b
	ror	w8, w8, #8
	dup	v22.4s, w8
	aese	v22.16b, v31.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	eor3	v18.16b, v20.16b, v18.16b, v21.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v30.d[0]
	ext	v21.16b, v7.16b, v30.16b, #4
	eor3	v5.16b, v17.16b, v5.16b, v18.16b
	movi	v17.4s, #7
	eor3	v26.16b, v16.16b, v18.16b, v17.16b
	ext	v17.16b, v6.16b, v30.16b, #12
	dup	v22.4s, v26.s[3]
	aese	v0.16b, v26.16b
	aesmc	v0.16b, v0.16b
	aese	v22.16b, v31.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	eor3	v17.16b, v20.16b, v17.16b, v21.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v26.d[0]
	ext	v21.16b, v7.16b, v26.16b, #4
	eor3	v8.16b, v28.16b, v19.16b, v17.16b
	ext	v19.16b, v6.16b, v26.16b, #12
	mov	w8, v8.s[3]
	aese	v0.16b, v8.16b
	aesmc	v0.16b, v0.16b
	ror	w8, w8, #8
	dup	v22.4s, w8
	aese	v22.16b, v31.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	eor3	v19.16b, v20.16b, v19.16b, v21.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v8.d[0]
	ext	v21.16b, v7.16b, v8.16b, #4
	eor3	v16.16b, v16.16b, v18.16b, v19.16b
	movi	v18.4s, #15
	eor3	v27.16b, v5.16b, v19.16b, v18.16b
	ext	v18.16b, v6.16b, v8.16b, #12
	dup	v22.4s, v27.s[3]
	aese	v0.16b, v27.16b
	aesmc	v0.16b, v0.16b
	stp	q27, q26, [x29, #-208]
	aese	v22.16b, v31.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	eor3	v18.16b, v20.16b, v18.16b, v21.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v27.d[0]
	ext	v21.16b, v7.16b, v27.16b, #4
	eor3	v10.16b, v30.16b, v17.16b, v18.16b
	ext	v17.16b, v6.16b, v27.16b, #12
	mov	w8, v10.s[3]
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	ror	w8, w8, #8
	dup	v22.4s, w8
	aese	v22.16b, v31.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	eor3	v17.16b, v20.16b, v17.16b, v21.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v10.d[0]
	ext	v21.16b, v7.16b, v10.16b, #4
	eor3	v5.16b, v5.16b, v19.16b, v17.16b
	movi	v19.4s, #31
	eor3	v11.16b, v16.16b, v17.16b, v19.16b
	ext	v19.16b, v6.16b, v10.16b, #12
	dup	v22.4s, v11.s[3]
	aese	v0.16b, v11.16b
	aesmc	v0.16b, v0.16b
	aese	v22.16b, v31.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	movi	v22.4s, #1, lsl #24
	eor3	v19.16b, v20.16b, v19.16b, v21.16b
	ext	v20.16b, v7.16b, v11.16b, #4
	mov	v22.s[0], w11
	eor3	v12.16b, v8.16b, v18.16b, v19.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v11.d[0]
	ext	v18.16b, v6.16b, v11.16b, #12
	mov	w8, v12.s[3]
	aese	v0.16b, v12.16b
	aesmc	v0.16b, v0.16b
	ld1	{ v22.s }[1], [x10]
	ror	w8, w8, #8
	dup	v21.4s, w8
	stp	q3, q2, [x23, #16]
	aese	v21.16b, v31.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	mov	v22.s[2], w9
	eor3	v18.16b, v19.16b, v18.16b, v20.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v12.d[0]
	ext	v20.16b, v7.16b, v12.16b, #4
	eor3	v16.16b, v16.16b, v17.16b, v18.16b
	movi	v17.4s, #63
	str	q22, [sp, #144]
	eor3	v13.16b, v5.16b, v18.16b, v17.16b
	ext	v17.16b, v6.16b, v12.16b, #12
	dup	v21.4s, v13.s[3]
	ext	v6.16b, v6.16b, v13.16b, #12
	ext	v7.16b, v7.16b, v13.16b, #4
	aese	v0.16b, v13.16b
	aesmc	v0.16b, v0.16b
	aese	v21.16b, v31.16b
	dup	v21.4s, v21.s[0]
	eor3	v17.16b, v21.16b, v19.16b, v17.16b
	eor3	v20.16b, v17.16b, v20.16b, v12.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v13.d[0]
	aese	v0.16b, v20.16b
	mov	w8, v20.s[3]
	ror	w8, w8, #8
	dup	v19.4s, w8
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v6.16b, v17.16b, v6.16b, v7.16b
	movi	v7.4s, #127
	eor3	v5.16b, v5.16b, v18.16b, v6.16b
	eor3	v6.16b, v16.16b, v6.16b, v7.16b
	eor3	v0.16b, v5.16b, v7.16b, v0.16b
	stp	q6, q20, [x29, #-240]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	ushr	v1.2d, v0.2d, #63
	add	v0.2d, v0.2d, v0.2d
	ext	v5.16b, v1.16b, v1.16b, #8
	mov	v1.d[0], v4.d[0]
	shl	v4.2d, v1.2d, #63
	orr	v0.16b, v0.16b, v5.16b
	shl	v6.2d, v1.2d, #62
	shl	v1.2d, v1.2d, #57
	eor	v0.16b, v0.16b, v4.16b
	eor3	v23.16b, v0.16b, v6.16b, v1.16b
	dup	v1.2d, v23.d[0]
	pmull	v5.1q, v23.1d, v23.1d
	pmull2	v7.1q, v23.2d, v23.2d
	fmov	x8, d23
	mov	x24, v23.d[1]
	pmull2	v0.1q, v1.2d, v23.2d
	dup	v24.2d, x8
	eor	v0.16b, v0.16b, v0.16b
	zip2	v4.2d, v0.2d, v31.2d
	zip1	v0.2d, v31.2d, v0.2d
	eor	v5.16b, v0.16b, v5.16b
	fmov	d0, x14
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v0.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v0.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v20.16b, v4.16b, v6.16b, v5.16b
	dup	v4.2d, v20.d[0]
	pmull2	v6.1q, v20.2d, v1.2d
	pmull	v7.1q, v20.1d, v23.1d
	pmull2	v16.1q, v20.2d, v23.2d
	pmull	v17.1q, v20.1d, v20.1d
	pmull2	v18.1q, v20.2d, v20.2d
	fmov	x14, d20
	mov	x27, v20.d[1]
	pmull2	v5.1q, v4.2d, v23.2d
	pmull2	v4.1q, v4.2d, v20.2d
	dup	v9.2d, x14
	eor	v5.16b, v6.16b, v5.16b
	eor	v4.16b, v4.16b, v4.16b
	str	q9, [sp, #64]
	zip2	v6.2d, v5.2d, v31.2d
	zip1	v5.2d, v31.2d, v5.2d
	eor	v5.16b, v5.16b, v7.16b
	ext	v7.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v0.1d
	eor	v5.16b, v7.16b, v5.16b
	pmull	v7.1q, v5.1d, v0.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v7.16b, v16.16b, v7.16b
	eor3	v15.16b, v6.16b, v7.16b, v5.16b
	dup	v5.2d, v15.d[0]
	pmull	v7.1q, v15.1d, v15.1d
	pmull2	v16.1q, v15.2d, v15.2d
	mov	x18, v15.d[1]
	pmull2	v5.1q, v5.2d, v15.2d
	eor	v5.16b, v5.16b, v5.16b
	zip1	v6.2d, v31.2d, v5.2d
	zip2	v5.2d, v5.2d, v31.2d
	eor	v6.16b, v6.16b, v7.16b
	ext	v7.16b, v6.16b, v6.16b, #8
	pmull	v6.1q, v6.1d, v0.1d
	eor	v6.16b, v7.16b, v6.16b
	pmull	v7.1q, v6.1d, v0.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v7.16b, v16.16b, v7.16b
	zip2	v16.2d, v4.2d, v31.2d
	zip1	v4.2d, v31.2d, v4.2d
	eor	v4.16b, v4.16b, v17.16b
	eor3	v26.16b, v5.16b, v7.16b, v6.16b
	ext	v17.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v0.1d
	fmov	x10, d26
	mov	x13, v26.d[1]
	eor	v4.16b, v17.16b, v4.16b
	pmull	v17.1q, v4.1d, v0.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v17.16b, v18.16b, v17.16b
	eor3	v21.16b, v16.16b, v17.16b, v4.16b
	dup	v4.2d, v21.d[0]
	pmull2	v1.1q, v21.2d, v1.2d
	pmull	v16.1q, v21.1d, v23.1d
	mov	x17, v21.d[1]
	pmull2	v4.1q, v4.2d, v23.2d
	eor	v1.16b, v1.16b, v4.16b
	zip1	v4.2d, v31.2d, v1.2d
	zip2	v1.2d, v1.2d, v31.2d
	eor	v4.16b, v4.16b, v16.16b
	ext	v16.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v0.1d
	eor	v4.16b, v16.16b, v4.16b
	ext	v16.16b, v4.16b, v4.16b, #8
	pmull	v0.1q, v4.1d, v0.1d
	pmull2	v4.1q, v21.2d, v23.2d
	eor	v0.16b, v4.16b, v0.16b
	eor3	v14.16b, v1.16b, v0.16b, v16.16b
	dup	v0.2d, x10
	fmov	x9, d14
	mov	x16, v14.d[1]
	stur	q0, [x29, #-256]
	stp	q14, q26, [sp, #320]
	dup	v0.2d, x9
	fmov	x9, d21
	dup	v25.2d, x9
	fmov	x9, d15
	str	q0, [sp, #96]
	dup	v29.2d, x9
	stp	q29, q25, [sp, #288]
	cbz	x4, .LBB1_17
	subs	x19, x4, #96
	b.lo	.LBB1_8
	ldp	q4, q5, [x3, #64]
	ldp	q2, q3, [x3, #32]
	fmov	d19, x27
	ldp	q0, q1, [x3], #96
	mov	v27.16b, v14.16b
	mov	v14.16b, v15.16b
	rev64	v5.16b, v5.16b
	rev64	v3.16b, v3.16b
	rev64	v1.16b, v1.16b
	pmull2	v7.1q, v23.2d, v5.2d
	pmull	v16.1q, v24.1d, v5.1d
	rev64	v4.16b, v4.16b
	pmull2	v6.1q, v24.2d, v5.2d
	rev64	v2.16b, v2.16b
	rev64	v0.16b, v0.16b
	eor	v7.16b, v16.16b, v7.16b
	fmov	d16, x24
	pmull2	v17.1q, v20.2d, v4.2d
	pmull	v18.1q, v9.1d, v4.1d
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	pmull	v17.1q, v29.1d, v3.1d
	fmov	d18, x18
	pmull	v5.1q, v16.1d, v5.1d
	pmull2	v16.1q, v9.2d, v4.2d
	pmull	v4.1q, v19.1d, v4.1d
	ldur	q19, [x29, #-256]
	eor	v6.16b, v16.16b, v6.16b
	pmull2	v16.1q, v15.2d, v3.2d
	eor	v4.16b, v4.16b, v5.16b
	pmull2	v5.1q, v29.2d, v3.2d
	ldr	q29, [sp, #96]
	pmull	v3.1q, v18.1d, v3.1d
	pmull	v18.1q, v25.1d, v2.1d
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	pmull2	v16.1q, v25.2d, v2.2d
	pmull2	v17.1q, v21.2d, v2.2d
	eor3	v5.16b, v6.16b, v5.16b, v16.16b
	fmov	d6, x17
	fmov	d16, x16
	pmull	v2.1q, v6.1d, v2.1d
	eor3	v6.16b, v7.16b, v17.16b, v18.16b
	fmov	d17, x13
	pmull	v7.1q, v29.1d, v1.1d
	eor3	v2.16b, v4.16b, v3.16b, v2.16b
	pmull2	v4.1q, v27.2d, v1.2d
	pmull2	v3.1q, v29.2d, v1.2d
	pmull	v1.1q, v16.1d, v1.1d
	pmull	v16.1q, v19.1d, v0.1d
	eor3	v4.16b, v6.16b, v4.16b, v7.16b
	pmull2	v6.1q, v19.2d, v0.2d
	pmull2	v7.1q, v26.2d, v0.2d
	pmull	v0.1q, v17.1d, v0.1d
	eor3	v3.16b, v5.16b, v3.16b, v6.16b
	eor3	v4.16b, v4.16b, v7.16b, v16.16b
	eor3	v2.16b, v2.16b, v1.16b, v0.16b
	cmp	x4, #192
	b.lo	.LBB1_9
	mov	v27.16b, v14.16b
	ldp	q25, q14, [sp, #304]
	ldr	q31, [sp, #288]
	mov	x8, #-4467570830351532032
	ldr	q9, [sp, #64]
	fmov	d1, x8
	movi	v0.2d, #0000000000000000
	.p2align	5, , 16
.LBB1_6:
	zip1	v19.2d, v0.2d, v4.2d
	ldp	q5, q6, [x3]
	zip2	v4.2d, v4.2d, v0.2d
	mov	v26.16b, v21.16b
	ldp	q7, q16, [x3, #32]
	ldp	q17, q18, [x3, #64]
	eor	v3.16b, v19.16b, v3.16b
	fmov	d21, x27
	mov	v15.16b, v20.16b
	add	x3, x3, #96
	sub	x19, x19, #96
	pmull	v19.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v19.16b
	pmull	v19.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor3	v2.16b, v2.16b, v4.16b, v19.16b
	rev64	v4.16b, v5.16b
	rev64	v5.16b, v6.16b
	rev64	v6.16b, v7.16b
	rev64	v7.16b, v16.16b
	rev64	v16.16b, v17.16b
	rev64	v17.16b, v18.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	pmull	v18.1q, v24.1d, v17.1d
	pmull2	v19.1q, v20.2d, v16.2d
	pmull	v20.1q, v9.1d, v16.1d
	eor3	v2.16b, v4.16b, v2.16b, v3.16b
	pmull2	v4.1q, v23.2d, v17.2d
	pmull2	v3.1q, v24.2d, v17.2d
	eor	v4.16b, v18.16b, v4.16b
	fmov	d18, x24
	eor3	v4.16b, v4.16b, v19.16b, v20.16b
	pmull	v19.1q, v31.1d, v7.1d
	fmov	d20, x18
	pmull	v17.1q, v18.1d, v17.1d
	pmull2	v18.1q, v9.2d, v16.2d
	pmull	v16.1q, v21.1d, v16.1d
	mov	v21.16b, v26.16b
	ldr	q26, [sp, #336]
	eor	v3.16b, v18.16b, v3.16b
	pmull2	v18.1q, v27.2d, v7.2d
	eor	v16.16b, v16.16b, v17.16b
	pmull2	v17.1q, v31.2d, v7.2d
	pmull	v7.1q, v20.1d, v7.1d
	pmull	v20.1q, v25.1d, v6.1d
	eor3	v4.16b, v4.16b, v18.16b, v19.16b
	pmull2	v18.1q, v25.2d, v6.2d
	pmull2	v19.1q, v21.2d, v6.2d
	eor3	v3.16b, v3.16b, v17.16b, v18.16b
	fmov	d17, x17
	fmov	d18, x16
	eor3	v4.16b, v4.16b, v19.16b, v20.16b
	mov	v20.16b, v15.16b
	pmull	v6.1q, v17.1d, v6.1d
	pmull	v17.1q, v29.1d, v5.1d
	eor3	v6.16b, v16.16b, v7.16b, v6.16b
	pmull2	v7.1q, v29.2d, v5.2d
	pmull2	v16.1q, v14.2d, v5.2d
	pmull	v5.1q, v18.1d, v5.1d
	ldur	q18, [x29, #-256]
	eor3	v4.16b, v4.16b, v16.16b, v17.16b
	fmov	d17, x13
	pmull	v16.1q, v26.1d, v2.1d
	eor3	v3.16b, v3.16b, v7.16b, v16.16b
	pmull	v17.1q, v17.1d, v2.1d
	pmull2	v18.1q, v18.2d, v2.2d
	pmull2	v2.1q, v26.2d, v2.2d
	eor3	v4.16b, v4.16b, v17.16b, v18.16b
	eor3	v2.16b, v6.16b, v5.16b, v2.16b
	cmp	x19, #95
	b.hi	.LBB1_6
	b	.LBB1_10
.LBB1_7:
	mov	w0, wzr
	b	.LBB1_34
.LBB1_8:
	mov	x19, x4
	mov	x28, x4
	cmp	x4, #16
	b.hs	.LBB1_11
	b	.LBB1_13
.LBB1_9:
	mov	v27.16b, v14.16b
	ldr	q14, [sp, #320]
.LBB1_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v4.2d
	mov	x8, #-4467570830351532032
	zip2	v0.2d, v4.2d, v0.2d
	mov	v15.16b, v27.16b
	eor	v1.16b, v1.16b, v3.16b
	fmov	d3, x8
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v2.16b, v0.16b, v3.16b
	eor	v31.16b, v1.16b, v0.16b
	mov	x28, x4
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
	eor	v3.16b, v3.16b, v31.16b
	pmull	v5.1q, v0.1d, v3.1d
	pmull2	v6.1q, v24.2d, v3.2d
	pmull	v4.1q, v23.1d, v3.1d
	pmull2	v3.1q, v23.2d, v3.2d
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
	eor3	v31.16b, v5.16b, v3.16b, v4.16b
	cmp	x19, #15
	b.hi	.LBB1_12
.LBB1_13:
	cbz	x19, .LBB1_16
	mov	w8, #16
	mov	x25, x23
	mov	w23, w0
	stp	q24, q23, [sp, #32]
	sub	x2, x8, x19
	sub	x8, x29, #96
	stp	q13, q12, [sp, #112]
	mov	x21, x5
	add	x0, x8, x19
	stp	q31, q11, [sp, #160]
	stp	x18, x17, [sp]
	stp	x16, x13, [sp, #16]
	stp	q10, q8, [sp, #192]
	mov	x26, x7
	stp	q30, q28, [sp, #224]
	mov	w1, wzr
	mov	x22, x6
	mov	x20, x3
	stp	q21, q20, [sp, #256]
	str	q15, [sp, #80]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	mov	x6, x22
	cbz	x22, .LBB1_31
	ldp	q1, q11, [sp, #160]
	rev64	v0.16b, v0.16b
	ldp	q24, q23, [sp, #32]
	fmov	d2, x24
	mov	x8, #-4467570830351532032
	ldp	q30, q28, [sp, #224]
	mov	w0, w23
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q10, q8, [sp, #192]
	ldr	q22, [sp, #144]
	mov	x4, x28
	ldp	q13, q12, [sp, #112]
	ldp	q21, q20, [sp, #256]
	ldr	q15, [sp, #80]
	ldp	q14, q26, [sp, #320]
	mov	x7, x26
	mov	x5, x21
	ldp	x16, x13, [sp, #16]
	ldp	x18, x17, [sp]
	mov	x23, x25
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v24.2d, v0.2d
	pmull	v1.1q, v23.1d, v0.1d
	pmull2	v0.1q, v23.2d, v0.2d
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
	eor3	v31.16b, v2.16b, v0.16b, v1.16b
	b	.LBB1_18
.LBB1_16:
	mov	x4, x28
.LBB1_17:
	cbz	x6, .LBB1_33
.LBB1_18:
	adrp	x8, .LCPI1_5
	rev32	v6.16b, v22.16b
	subs	x19, x6, #96
	ldr	q0, [x8, :lo12:.LCPI1_5]
	add	v16.4s, v6.4s, v0.4s
	b.lo	.LBB1_23
	adrp	x8, .LCPI1_6
	rev32	v7.16b, v16.16b
	ldp	q29, q27, [x29, #-176]
	add	x9, x5, #96
	ldr	q1, [x8, :lo12:.LCPI1_6]
	adrp	x8, .LCPI1_7
	str	q31, [sp, #160]
	str	q1, [sp, #240]
	add	v2.4s, v6.4s, v1.4s
	ldr	q1, [x8, :lo12:.LCPI1_7]
	ldp	q9, q31, [x29, #-208]
	adrp	x8, .LCPI1_8
	stp	q21, q20, [sp, #256]
	ldp	q21, q16, [x5]
	ldp	q20, q19, [x5, #32]
	ldr	q22, [x8, :lo12:.LCPI1_8]
	adrp	x8, .LCPI1_9
	rev32	v4.16b, v2.16b
	add	v3.4s, v6.4s, v1.4s
	stp	q22, q1, [sp, #208]
	ldp	q18, q1, [x5, #64]
	rev32	v5.16b, v3.16b
	ldp	q3, q25, [x29, #-144]
	str	q1, [sp, #192]
	ldp	q1, q2, [x29, #-240]
	aese	v7.16b, v3.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v3.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v3.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v25.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v25.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v27.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v29.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v30.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v31.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v8.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v7.16b, v2.16b
	aese	v4.16b, v2.16b
	aese	v5.16b, v2.16b
	eor3	v7.16b, v21.16b, v7.16b, v1.16b
	add	v21.4s, v6.4s, v22.4s
	eor3	v16.16b, v16.16b, v4.16b, v1.16b
	ldr	q4, [x8, :lo12:.LCPI1_9]
	eor3	v20.16b, v20.16b, v5.16b, v1.16b
	adrp	x8, .LCPI1_10
	rev32	v21.16b, v21.16b
	stp	q7, q16, [x7]
	aese	v21.16b, v3.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v25.16b
	aesmc	v21.16b, v21.16b
	add	v5.4s, v6.4s, v4.4s
	mov	v17.16b, v4.16b
	aese	v21.16b, v27.16b
	aesmc	v21.16b, v21.16b
	rev32	v22.16b, v5.16b
	ldr	q5, [x8, :lo12:.LCPI1_10]
	adrp	x8, .LCPI1_11
	aese	v21.16b, v28.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v3.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v29.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v25.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v30.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v27.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v31.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v28.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v8.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v29.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v9.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v30.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v10.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v31.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v11.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v8.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v12.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v9.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v13.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v10.16b
	aesmc	v22.16b, v22.16b
	aese	v21.16b, v2.16b
	aese	v22.16b, v11.16b
	aesmc	v22.16b, v22.16b
	eor3	v19.16b, v19.16b, v21.16b, v1.16b
	ldr	q21, [x8, :lo12:.LCPI1_11]
	aese	v22.16b, v12.16b
	aesmc	v22.16b, v22.16b
	add	x8, x7, #96
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	stp	q20, q19, [x7, #32]
	aese	v22.16b, v2.16b
	add	v4.4s, v6.4s, v21.4s
	add	v6.4s, v6.4s, v5.4s
	eor3	v18.16b, v18.16b, v22.16b, v1.16b
	rev32	v6.16b, v6.16b
	str	q4, [sp, #80]
	aese	v6.16b, v3.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v25.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v27.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v28.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v29.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v30.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v8.16b
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
	aese	v6.16b, v2.16b
	ldr	q2, [sp, #192]
	eor3	v21.16b, v2.16b, v6.16b, v1.16b
	stp	q18, q21, [x7, #64]
	cmp	x6, #192
	b.lo	.LBB1_24
	stp	q17, q5, [sp, #176]
	ldp	q4, q5, [sp, #80]
	ldp	q25, q27, [sp, #288]
	ldr	q6, [sp, #64]
	mov	v1.16b, v23.16b
	mov	v2.16b, v24.16b
	ldr	q29, [sp, #160]
	ldp	q9, q31, [x29, #-208]
	mov	x10, #-4467570830351532032
	.p2align	5, , 16
.LBB1_21:
	rev64	v7.16b, v7.16b
	rev64	v22.16b, v16.16b
	rev64	v20.16b, v20.16b
	rev64	v19.16b, v19.16b
	ldur	q3, [x29, #-256]
	add	x11, x9, #96
	rev64	v17.16b, v18.16b
	rev64	v16.16b, v21.16b
	add	x12, x8, #96
	sub	x19, x19, #96
	ext	v7.16b, v7.16b, v7.16b, #8
	pmull2	v23.1q, v22.2d, v5.2d
	pmull2	v24.1q, v19.2d, v25.2d
	eor	v7.16b, v7.16b, v29.16b
	pmull	v18.1q, v7.1d, v26.1d
	pmull2	v21.1q, v7.2d, v3.2d
	ldr	q3, [sp, #256]
	eor	v18.16b, v23.16b, v18.16b
	pmull2	v23.1q, v20.2d, v27.2d
	eor3	v18.16b, v18.16b, v23.16b, v24.16b
	pmull2	v23.1q, v17.2d, v6.2d
	pmull2	v24.1q, v16.2d, v2.2d
	eor3	v18.16b, v18.16b, v23.16b, v24.16b
	fmov	d23, x13
	pmull	v24.1q, v22.1d, v5.1d
	pmull	v23.1q, v7.1d, v23.1d
	pmull2	v7.1q, v7.2d, v26.2d
	eor	v21.16b, v23.16b, v21.16b
	pmull2	v23.1q, v22.2d, v14.2d
	eor3	v21.16b, v21.16b, v24.16b, v23.16b
	pmull2	v24.1q, v20.2d, v3.2d
	ldr	q3, [sp, #272]
	pmull	v23.1q, v20.1d, v27.1d
	ldp	q29, q27, [x29, #-176]
	eor3	v21.16b, v21.16b, v23.16b, v24.16b
	pmull	v23.1q, v19.1d, v25.1d
	pmull2	v24.1q, v19.2d, v15.2d
	ldp	q26, q25, [x29, #-144]
	eor3	v21.16b, v21.16b, v23.16b, v24.16b
	pmull	v23.1q, v17.1d, v6.1d
	pmull2	v24.1q, v17.2d, v3.2d
	movi	v3.2d, #0000000000000000
	eor3	v21.16b, v21.16b, v23.16b, v24.16b
	pmull	v23.1q, v16.1d, v2.1d
	pmull2	v24.1q, v16.2d, v1.2d
	eor3	v21.16b, v21.16b, v23.16b, v24.16b
	fmov	d23, x16
	ldp	q24, q14, [x29, #-240]
	pmull	v22.1q, v22.1d, v23.1d
	fmov	d23, x17
	pmull	v20.1q, v20.1d, v23.1d
	fmov	d23, x18
	eor3	v7.16b, v22.16b, v7.16b, v20.16b
	pmull	v19.1q, v19.1d, v23.1d
	fmov	d23, x27
	pmull	v17.1q, v17.1d, v23.1d
	fmov	d23, x24
	eor3	v7.16b, v7.16b, v19.16b, v17.16b
	zip2	v17.2d, v21.2d, v3.2d
	pmull	v16.1q, v16.1d, v23.1d
	zip1	v23.2d, v3.2d, v21.2d
	ldr	q21, [sp, #240]
	ldp	q20, q19, [x9, #32]
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	fmov	d16, x10
	eor	v18.16b, v23.16b, v18.16b
	ldp	q23, q22, [x9]
	pmull	v17.1q, v18.1d, v16.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	add	v21.4s, v4.4s, v21.4s
	eor	v17.16b, v18.16b, v17.16b
	rev32	v21.16b, v21.16b
	pmull	v16.1q, v17.1d, v16.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	aese	v21.16b, v26.16b
	aesmc	v21.16b, v21.16b
	eor3	v3.16b, v7.16b, v16.16b, v17.16b
	ldp	q18, q17, [x9, #64]
	add	v16.4s, v4.4s, v0.4s
	rev32	v7.16b, v4.16b
	mov	x9, x11
	aese	v21.16b, v25.16b
	aesmc	v21.16b, v21.16b
	rev32	v16.16b, v16.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v27.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v26.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v28.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v25.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v29.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v27.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v30.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v28.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v31.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v29.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v8.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v30.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v9.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v31.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v10.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v8.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v11.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v9.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v12.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v10.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v13.16b
	aesmc	v21.16b, v21.16b
	aese	v16.16b, v11.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v21.16b, v14.16b
	aese	v16.16b, v12.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	eor3	v20.16b, v20.16b, v21.16b, v24.16b
	ldr	q21, [sp, #224]
	aese	v16.16b, v13.16b
	aesmc	v16.16b, v16.16b
	aese	v7.16b, v14.16b
	aese	v16.16b, v14.16b
	eor3	v7.16b, v23.16b, v7.16b, v24.16b
	eor3	v16.16b, v22.16b, v16.16b, v24.16b
	add	v21.4s, v4.4s, v21.4s
	rev32	v21.16b, v21.16b
	aese	v21.16b, v26.16b
	aesmc	v21.16b, v21.16b
	stp	q7, q16, [x8]
	aese	v21.16b, v25.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v27.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v28.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v29.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v30.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v31.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v8.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v9.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v10.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v11.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v12.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v13.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v14.16b
	eor3	v19.16b, v19.16b, v21.16b, v24.16b
	ldr	q21, [sp, #208]
	stp	q20, q19, [x8, #32]
	add	v21.4s, v4.4s, v21.4s
	rev32	v21.16b, v21.16b
	aese	v21.16b, v26.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v25.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v27.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v28.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v29.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v30.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v31.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v8.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v9.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v10.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v11.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v12.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v13.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v14.16b
	eor3	v18.16b, v18.16b, v21.16b, v24.16b
	ldr	q21, [sp, #176]
	add	v21.4s, v4.4s, v21.4s
	rev32	v21.16b, v21.16b
	aese	v21.16b, v26.16b
	aesmc	v21.16b, v21.16b
	ldr	q26, [sp, #336]
	aese	v21.16b, v25.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v27.16b
	aesmc	v21.16b, v21.16b
	ldp	q25, q27, [sp, #288]
	aese	v21.16b, v28.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v29.16b
	aesmc	v21.16b, v21.16b
	mov	v29.16b, v3.16b
	ldr	q3, [sp, #192]
	aese	v21.16b, v30.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v31.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v8.16b
	aesmc	v21.16b, v21.16b
	add	v4.4s, v4.4s, v3.4s
	aese	v21.16b, v9.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v10.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v11.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v12.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v13.16b
	aesmc	v21.16b, v21.16b
	aese	v21.16b, v14.16b
	ldr	q14, [sp, #320]
	eor3	v21.16b, v17.16b, v21.16b, v24.16b
	stp	q18, q21, [x8, #64]
	mov	x8, x12
	cmp	x19, #95
	b.hi	.LBB1_21
	mov	v23.16b, v1.16b
	mov	v24.16b, v2.16b
	str	q4, [sp, #80]
	mov	x8, x12
	mov	x9, x11
	b	.LBB1_25
.LBB1_23:
	mov	x19, x6
	mov	x25, x4
	cmp	x6, #16
	b.hs	.LBB1_26
	b	.LBB1_28
.LBB1_24:
	ldp	q25, q27, [sp, #288]
	ldr	q29, [sp, #160]
.LBB1_25:
	rev64	v6.16b, v21.16b
	rev64	v4.16b, v19.16b
	rev64	v5.16b, v18.16b
	ldr	q19, [sp, #64]
	ldr	q18, [sp, #272]
	rev64	v2.16b, v16.16b
	rev64	v3.16b, v20.16b
	fmov	d20, x27
	rev64	v1.16b, v7.16b
	mov	x10, #-4467570830351532032
	ldr	q22, [sp, #144]
	mov	x7, x8
	pmull2	v16.1q, v23.2d, v6.2d
	pmull	v17.1q, v24.1d, v6.1d
	pmull2	v7.1q, v24.2d, v6.2d
	ext	v1.16b, v1.16b, v1.16b, #8
	mov	x5, x9
	eor	v16.16b, v17.16b, v16.16b
	fmov	d17, x24
	eor	v1.16b, v1.16b, v29.16b
	pmull2	v18.1q, v18.2d, v5.2d
	pmull	v6.1q, v17.1d, v6.1d
	pmull2	v17.1q, v19.2d, v5.2d
	pmull	v19.1q, v19.1d, v5.1d
	pmull	v5.1q, v20.1d, v5.1d
	fmov	d20, x18
	eor	v7.16b, v17.16b, v7.16b
	eor3	v16.16b, v16.16b, v18.16b, v19.16b
	pmull2	v17.1q, v25.2d, v4.2d
	pmull2	v18.1q, v15.2d, v4.2d
	pmull	v19.1q, v25.1d, v4.1d
	pmull	v4.1q, v20.1d, v4.1d
	eor3	v16.16b, v16.16b, v18.16b, v19.16b
	pmull	v18.1q, v27.1d, v3.1d
	fmov	d19, x17
	eor3	v4.16b, v5.16b, v6.16b, v4.16b
	pmull2	v5.1q, v27.2d, v3.2d
	ldr	q6, [sp, #256]
	eor3	v5.16b, v7.16b, v17.16b, v5.16b
	ldr	q17, [sp, #96]
	pmull2	v6.1q, v6.2d, v3.2d
	pmull	v3.1q, v19.1d, v3.1d
	eor3	v6.16b, v16.16b, v6.16b, v18.16b
	pmull2	v7.1q, v17.2d, v2.2d
	pmull2	v16.1q, v14.2d, v2.2d
	pmull	v17.1q, v17.1d, v2.1d
	fmov	d18, x16
	eor3	v6.16b, v6.16b, v16.16b, v17.16b
	ldur	q16, [x29, #-256]
	pmull	v2.1q, v18.1d, v2.1d
	eor3	v2.16b, v4.16b, v3.16b, v2.16b
	fmov	d4, x13
	pmull	v3.1q, v26.1d, v1.1d
	eor3	v3.16b, v5.16b, v7.16b, v3.16b
	movi	v5.2d, #0000000000000000
	pmull	v4.1q, v4.1d, v1.1d
	pmull2	v16.1q, v16.2d, v1.2d
	pmull2	v1.1q, v26.2d, v1.2d
	eor3	v4.16b, v6.16b, v4.16b, v16.16b
	ldr	q16, [sp, #80]
	zip1	v6.2d, v5.2d, v4.2d
	zip2	v4.2d, v4.2d, v5.2d
	fmov	d5, x10
	eor	v3.16b, v6.16b, v3.16b
	pmull	v6.1q, v3.1d, v5.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v6.16b
	pmull	v5.1q, v3.1d, v5.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor3	v1.16b, v2.16b, v1.16b, v5.16b
	eor3	v31.16b, v4.16b, v1.16b, v3.16b
	mov	x25, x4
	cmp	x19, #16
	b.lo	.LBB1_28
.LBB1_26:
	mov	x8, #-4467570830351532032
	fmov	d1, x24
	movi	v2.2d, #0000000000000000
	fmov	d3, x8
	.p2align	5, , 16
.LBB1_27:
	ldp	q7, q6, [x29, #-144]
	rev32	v5.16b, v16.16b
	add	v16.4s, v16.4s, v0.4s
	sub	x19, x19, #16
	ldr	q4, [x5], #16
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	ldp	q6, q7, [x29, #-176]
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	ldp	q6, q7, [x29, #-208]
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	ldp	q6, q7, [x29, #-240]
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v7.16b
	eor3	v4.16b, v4.16b, v5.16b, v6.16b
	str	q4, [x7], #16
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v31.16b
	pmull	v6.1q, v1.1d, v4.1d
	pmull2	v7.1q, v24.2d, v4.2d
	pmull	v5.1q, v23.1d, v4.1d
	pmull2	v4.1q, v23.2d, v4.2d
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
	eor3	v31.16b, v6.16b, v4.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB1_27
.LBB1_28:
	cbz	x19, .LBB1_30
	mov	w8, #16
	mov	w26, w0
	mov	w1, wzr
	mov	x27, x6
	mov	x21, x7
	mov	x22, x5
	sub	x20, x8, x19
	sub	x8, x29, #96
	stp	q24, q23, [sp, #32]
	add	x0, x8, x19
	mov	x2, x20
	stp	q13, q12, [sp, #112]
	str	q16, [sp, #80]
	stp	q31, q11, [sp, #160]
	stp	q10, q8, [sp, #192]
	stp	q30, q28, [sp, #224]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldr	q1, [sp, #80]
	ldp	q3, q2, [x29, #-144]
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
	ldur	q2, [x29, #-160]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #240]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldur	q2, [x29, #-176]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #224]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldur	q2, [x29, #-192]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldr	q2, [sp, #208]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldur	q2, [x29, #-208]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #176]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #112]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [x29, #-240]
	aese	v1.16b, v3.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	stur	q0, [x29, #-256]
	stur	q0, [x29, #-96]
	bl	memcpy
	ldur	q0, [x29, #-256]
	add	x0, x22, x19
	mov	w1, wzr
	mov	x2, x20
	stur	q0, [x29, #-112]
	bl	memset
	sub	x0, x29, #96
	sub	x1, x29, #112
	mov	x2, x19
	bl	memcpy
	ldp	q22, q1, [sp, #144]
	ldp	q24, q23, [sp, #32]
	ldp	q13, q12, [sp, #112]
	mov	x6, x27
	mov	w0, w26
	mov	x4, x25
	ldp	q11, q10, [sp, #176]
	ldp	q8, q30, [sp, #208]
	ldr	q28, [sp, #240]
	ldur	q0, [x29, #-96]
	b	.LBB1_32
.LBB1_30:
	mov	x4, x25
	b	.LBB1_33
.LBB1_31:
	ldp	q30, q28, [sp, #224]
	ldp	q10, q8, [sp, #192]
	ldp	q1, q11, [sp, #160]
	mov	w0, w23
	mov	x4, x28
	mov	x23, x25
	ldp	q13, q12, [sp, #112]
	ldp	q24, q23, [sp, #32]
	ldr	q22, [sp, #144]
.LBB1_32:
	rev64	v0.16b, v0.16b
	fmov	d2, x24
	mov	x8, #-4467570830351532032
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v24.2d, v0.2d
	pmull	v1.1q, v23.1d, v0.1d
	pmull2	v0.1q, v23.2d, v0.2d
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
	eor3	v31.16b, v2.16b, v0.16b, v1.16b
.LBB1_33:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d2, x24
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	eor	v0.16b, v31.16b, v0.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v24.2d, v0.2d
	pmull	v1.1q, v23.1d, v0.1d
	pmull2	v0.1q, v23.2d, v0.2d
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
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	ldp	q2, q1, [x29, #-144]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v22.16b, v2.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v1.16b
	aesmc	v22.16b, v22.16b
	ldp	q1, q2, [x29, #-176]
	aese	v22.16b, v2.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v28.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v1.16b
	aesmc	v22.16b, v22.16b
	ldp	q1, q2, [x29, #-208]
	aese	v22.16b, v30.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v2.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v8.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v1.16b
	aesmc	v22.16b, v22.16b
	ldp	q1, q2, [x29, #-240]
	aese	v22.16b, v10.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v11.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v12.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	aese	v22.16b, v2.16b
	eor3	v0.16b, v22.16b, v0.16b, v1.16b
	str	q0, [x23]
.LBB1_34:
	add	sp, sp, #544
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
	.size	haberdashery_aes256gcmdndkv2kc_neoversev2_encrypt, .Lfunc_end1-haberdashery_aes256gcmdndkv2kc_neoversev2_encrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndkv2kc_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_neoversev2_init,@function
haberdashery_aes256gcmdndkv2kc_neoversev2_init:
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
	.size	haberdashery_aes256gcmdndkv2kc_neoversev2_init, .Lfunc_end2-haberdashery_aes256gcmdndkv2kc_neoversev2_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcmdndkv2kc_neoversev2_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_neoversev2_is_supported
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_neoversev2_is_supported,@function
haberdashery_aes256gcmdndkv2kc_neoversev2_is_supported:
	.cfi_startproc
	mov	w0, #1
	ret
.Lfunc_end3:
	.size	haberdashery_aes256gcmdndkv2kc_neoversev2_is_supported, .Lfunc_end3-haberdashery_aes256gcmdndkv2kc_neoversev2_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

# @generated
# https://github.com/facebookincubator/haberdashery/
	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve
	.arch_extension sve2
	.arch_extension sve2-sha3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.word	0
	.word	0
	.word	0
	.word	1
.LCPI0_1:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI0_2:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI0_3:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI0_4:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI0_5:
	.word	0
	.word	0
	.word	0
	.word	6
.LCPI0_6:
	.word	0
	.word	0
	.word	0
	.word	7
.LCPI0_7:
	.word	0
	.word	0
	.word	0
	.word	8
	.section	.text.haberdashery_aes128gcm_neoversev2_decrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_neoversev2_decrypt
	.p2align	4
	.type	haberdashery_aes128gcm_neoversev2_decrypt,@function
haberdashery_aes128gcm_neoversev2_decrypt:
	.cfi_startproc
	cbz	x0, .LBB0_5
	cbnz	x1, .LBB0_3
	cbnz	x2, .LBB0_5
.LBB0_3:
	cbnz	x3, .LBB0_7
	cbz	x4, .LBB0_7
.LBB0_5:
	mov	w8, wzr
.LBB0_6:
	mov	w0, w8
	ret
.LBB0_7:
	mov	w8, wzr
	cbz	x7, .LBB0_6
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
	sub	sp, sp, #656
	ldr	x9, [x29, #96]
	cmp	x9, #16
	b.ne	.LBB0_54
	ldr	x22, [x29, #112]
	cmp	x22, x6
	b.ne	.LBB0_54
	lsr	x9, x4, #61
	mov	w8, wzr
	cbnz	x9, .LBB0_54
	mov	x9, #68719476704
	cmp	x22, x9
	b.hi	.LBB0_54
	ldr	x19, [x29, #104]
	cbz	x22, .LBB0_15
	mov	w8, wzr
	cbz	x5, .LBB0_54
	cbz	x19, .LBB0_54
.LBB0_15:
	ldr	q0, [x7]
	cmp	x2, #0
	mov	x9, x1
	csinc	x1, x1, xzr, ne
	cmp	x4, #0
	csinc	x20, x3, xzr, ne
	str	q0, [sp, #16]
	cmp	x2, #12
	b.ne	.LBB0_17
	ldr	d14, [x9]
	add	x8, x9, #8
	movi	v0.2d, #0000000000000000
	ld1	{ v14.s }[2], [x8]
	mov	w8, #1
	mov	v14.s[3], v0.s[3]
	mov	v14.b[15], w8
	b	.LBB0_31
.LBB0_17:
	subs	x8, x2, #128
	b.lo	.LBB0_22
	ldp	q0, q1, [x9]
	ldp	q2, q3, [x9, #32]
	ldp	x10, x11, [x0, #176]
	ldp	q4, q5, [x9, #64]
	rev64	v22.16b, v1.16b
	ldp	q6, q7, [x9, #96]
	dup	v1.2d, x11
	rev64	v18.16b, v3.16b
	rev64	v17.16b, v5.16b
	add	x9, x9, #128
	rev64	v24.16b, v0.16b
	dup	v0.2d, x10
	rev64	v20.16b, v2.16b
	rev64	v2.16b, v7.16b
	rev64	v16.16b, v4.16b
	ldp	x10, x11, [x0, #192]
	rev64	v4.16b, v6.16b
	pmull2	v3.1q, v1.2d, v2.2d
	pmull	v7.1q, v1.1d, v2.1d
	pmull	v6.1q, v0.1d, v2.1d
	pmull2	v5.1q, v0.2d, v2.2d
	dup	v2.2d, x10
	eor	v6.16b, v6.16b, v3.16b
	dup	v3.2d, x11
	ldp	x10, x11, [x0, #208]
	pmull2	v19.1q, v2.2d, v4.2d
	pmull	v23.1q, v2.1d, v4.1d
	pmull2	v21.1q, v3.2d, v4.2d
	pmull	v4.1q, v3.1d, v4.1d
	eor	v19.16b, v19.16b, v5.16b
	dup	v5.2d, x11
	eor3	v6.16b, v6.16b, v21.16b, v23.16b
	eor	v21.16b, v4.16b, v7.16b
	dup	v4.2d, x10
	ldp	x10, x11, [x0, #224]
	pmull2	v7.1q, v5.2d, v17.2d
	pmull	v25.1q, v4.1d, v17.1d
	pmull2	v23.1q, v4.2d, v17.2d
	pmull	v17.1q, v5.1d, v17.1d
	eor3	v25.16b, v6.16b, v7.16b, v25.16b
	dup	v6.2d, x10
	dup	v7.2d, x11
	ldp	x10, x11, [x0, #240]
	pmull2	v26.1q, v6.2d, v16.2d
	pmull2	v27.1q, v7.2d, v16.2d
	pmull	v28.1q, v6.1d, v16.1d
	pmull	v16.1q, v7.1d, v16.1d
	eor3	v21.16b, v21.16b, v17.16b, v16.16b
	dup	v16.2d, x10
	dup	v17.2d, x11
	ldp	x10, x11, [x0, #256]
	eor3	v23.16b, v19.16b, v23.16b, v26.16b
	eor3	v19.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v17.2d, v18.2d
	pmull	v27.1q, v16.1d, v18.1d
	pmull2	v25.1q, v16.2d, v18.2d
	pmull	v28.1q, v17.1d, v18.1d
	dup	v18.2d, x10
	eor3	v26.16b, v19.16b, v26.16b, v27.16b
	dup	v19.2d, x11
	ldp	x10, x11, [x0, #272]
	pmull2	v27.1q, v18.2d, v20.2d
	pmull	v30.1q, v18.1d, v20.1d
	pmull2	v29.1q, v19.2d, v20.2d
	pmull	v20.1q, v19.1d, v20.1d
	eor3	v25.16b, v23.16b, v25.16b, v27.16b
	eor3	v28.16b, v21.16b, v28.16b, v20.16b
	dup	v20.2d, x10
	dup	v21.2d, x11
	ldp	x10, x11, [x0, #288]
	eor3	v23.16b, v26.16b, v29.16b, v30.16b
	pmull2	v27.1q, v21.2d, v22.2d
	pmull	v29.1q, v20.1d, v22.1d
	pmull2	v26.1q, v20.2d, v22.2d
	pmull	v30.1q, v21.1d, v22.1d
	dup	v22.2d, x10
	eor3	v27.16b, v23.16b, v27.16b, v29.16b
	dup	v23.2d, x11
	pmull2	v29.1q, v22.2d, v24.2d
	pmull	v8.1q, v22.1d, v24.1d
	pmull2	v31.1q, v23.2d, v24.2d
	pmull	v24.1q, v23.1d, v24.1d
	eor3	v26.16b, v25.16b, v26.16b, v29.16b
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v30.16b, v24.16b
	cmp	x2, #256
	b.lo	.LBB0_21
	mov	x12, #-4467570830351532032
	movi	v24.2d, #0000000000000000
.LBB0_20:
	zip1	v11.2d, v24.2d, v27.2d
	ldp	q28, q29, [x1, #144]
	ldr	q10, [x1, #240]
	zip2	v27.2d, v27.2d, v24.2d
	ldp	q30, q31, [x1, #176]
	ldp	q8, q9, [x1, #208]
	eor	v26.16b, v11.16b, v26.16b
	fmov	d11, x12
	mov	x1, x9
	sub	x8, x8, #128
	pmull	v12.1q, v26.1d, v11.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v12.16b
	pmull	v11.1q, v26.1d, v11.1d
	ext	v12.16b, v26.16b, v26.16b, #8
	ldr	q26, [x9], #128
	eor3	v25.16b, v25.16b, v27.16b, v11.16b
	rev64	v26.16b, v26.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v29.16b
	rev64	v29.16b, v30.16b
	rev64	v30.16b, v31.16b
	rev64	v31.16b, v8.16b
	rev64	v8.16b, v9.16b
	rev64	v9.16b, v10.16b
	pmull2	v10.1q, v1.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v12.16b, v25.16b, v27.16b
	pmull2	v27.1q, v0.2d, v9.2d
	pmull2	v12.1q, v3.2d, v8.2d
	pmull	v13.1q, v2.1d, v8.1d
	pmull	v9.1q, v1.1d, v9.1d
	eor	v10.16b, v11.16b, v10.16b
	pmull2	v11.1q, v2.2d, v8.2d
	pmull	v8.1q, v3.1d, v8.1d
	eor	v27.16b, v11.16b, v27.16b
	eor3	v10.16b, v10.16b, v12.16b, v13.16b
	pmull2	v11.1q, v5.2d, v31.2d
	pmull	v12.1q, v4.1d, v31.1d
	eor	v8.16b, v8.16b, v9.16b
	pmull2	v9.1q, v4.2d, v31.2d
	pmull	v31.1q, v5.1d, v31.1d
	eor3	v10.16b, v10.16b, v11.16b, v12.16b
	pmull2	v11.1q, v6.2d, v30.2d
	pmull2	v12.1q, v7.2d, v30.2d
	eor3	v27.16b, v27.16b, v9.16b, v11.16b
	pmull	v9.1q, v6.1d, v30.1d
	pmull	v30.1q, v7.1d, v30.1d
	eor3	v9.16b, v10.16b, v12.16b, v9.16b
	eor3	v30.16b, v8.16b, v31.16b, v30.16b
	pmull2	v8.1q, v17.2d, v29.2d
	pmull	v10.1q, v16.1d, v29.1d
	pmull2	v31.1q, v16.2d, v29.2d
	pmull	v29.1q, v17.1d, v29.1d
	eor3	v8.16b, v9.16b, v8.16b, v10.16b
	pmull2	v9.1q, v18.2d, v28.2d
	pmull2	v10.1q, v19.2d, v28.2d
	eor3	v27.16b, v27.16b, v31.16b, v9.16b
	pmull	v31.1q, v18.1d, v28.1d
	pmull	v28.1q, v19.1d, v28.1d
	pmull	v9.1q, v21.1d, v26.1d
	eor3	v31.16b, v8.16b, v10.16b, v31.16b
	eor3	v28.16b, v30.16b, v29.16b, v28.16b
	pmull2	v30.1q, v21.2d, v26.2d
	pmull	v8.1q, v20.1d, v26.1d
	pmull2	v29.1q, v20.2d, v26.2d
	fmov	d26, x10
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x11
	pmull2	v8.1q, v22.2d, v25.2d
	pmull	v26.1q, v26.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v25.1q, v23.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x8, #127
	b.hi	.LBB0_20
.LBB0_21:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x10, #-4467570830351532032
	zip2	v0.2d, v27.2d, v0.2d
	mov	x1, x9
	fmov	d2, x10
	eor	v1.16b, v1.16b, v26.16b
	eor	v0.16b, v25.16b, v0.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	mov	v7.16b, v0.16b
	b	.LBB0_23
.LBB0_22:
	movi	v7.2d, #0000000000000000
	movi	v0.2d, #0000000000000000
	mov	x8, x2
.LBB0_23:
	cmp	x8, #16
	b.lo	.LBB0_27
	ldp	x9, x10, [x0, #176]
	movi	v4.2d, #0000000000000000
	dup	v0.2d, x9
	fmov	d1, x9
	mov	x9, #-4467570830351532032
	dup	v2.2d, x10
	fmov	d3, x10
	fmov	d5, x9
	.p2align	5, , 16
.LBB0_25:
	ldr	q6, [x1], #16
	sub	x8, x8, #16
	rev64	v6.16b, v6.16b
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v16.1q, v3.1d, v6.1d
	pmull2	v17.1q, v0.2d, v6.2d
	pmull	v7.1q, v1.1d, v6.1d
	pmull2	v6.1q, v2.2d, v6.2d
	eor	v16.16b, v17.16b, v16.16b
	zip1	v17.2d, v4.2d, v16.2d
	zip2	v16.2d, v16.2d, v4.2d
	eor	v7.16b, v17.16b, v7.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v7.16b, v7.16b, v17.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v6.16b, v17.16b, v6.16b
	eor3	v7.16b, v6.16b, v16.16b, v7.16b
	cmp	x8, #15
	b.hi	.LBB0_25
	mov	v0.16b, v7.16b
.LBB0_27:
	cbz	x8, .LBB0_29
	mov	x21, x0
	sub	x0, x29, #80
	stp	xzr, xzr, [x29, #-80]
	mov	x23, x2
	mov	x2, x8
	mov	x24, x4
	mov	x26, x5
	mov	x25, x3
	stur	q7, [x29, #-96]
	bl	memcpy
	ldp	q1, q0, [x29, #-96]
	ldp	x8, x9, [x21, #176]
	mov	x10, #-4467570830351532032
	mov	x2, x23
	mov	x3, x25
	mov	x5, x26
	mov	x0, x21
	mov	x4, x24
	rev64	v0.16b, v0.16b
	fmov	d2, x9
	dup	v3.2d, x8
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	fmov	d1, x8
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v1.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	dup	v3.2d, x9
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x10
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	b	.LBB0_30
.LBB0_29:
	ldp	x8, x9, [x0, #176]
.LBB0_30:
	lsl	x10, x2, #3
	movi	v2.2d, #0000000000000000
	fmov	d3, x9
	movi	v1.2d, #0000000000000000
	dup	v4.2d, x8
	mov	v2.d[0], x10
	eor	v0.16b, v2.16b, v0.16b
	fmov	d2, x8
	mov	x8, #-4467570830351532032
	pmull	v3.1q, v3.1d, v0.1d
	pmull2	v4.1q, v4.2d, v0.2d
	pmull	v2.1q, v2.1d, v0.1d
	eor	v3.16b, v4.16b, v3.16b
	dup	v4.2d, x9
	pmull2	v0.1q, v4.2d, v0.2d
	zip1	v4.2d, v1.2d, v3.2d
	zip2	v1.2d, v3.2d, v1.2d
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	rev64	v0.16b, v0.16b
	ext	v14.16b, v0.16b, v0.16b, #8
.LBB0_31:
	subs	x2, x4, #128
	b.lo	.LBB0_36
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	ldp	x8, x9, [x0, #176]
	ldp	q4, q5, [x3, #64]
	rev64	v22.16b, v1.16b
	ldp	q6, q7, [x3, #96]
	dup	v1.2d, x9
	rev64	v18.16b, v3.16b
	rev64	v17.16b, v5.16b
	rev64	v24.16b, v0.16b
	dup	v0.2d, x8
	rev64	v20.16b, v2.16b
	rev64	v2.16b, v7.16b
	ldp	x8, x9, [x0, #192]
	rev64	v16.16b, v4.16b
	rev64	v4.16b, v6.16b
	pmull2	v3.1q, v1.2d, v2.2d
	pmull	v7.1q, v1.1d, v2.1d
	pmull	v6.1q, v0.1d, v2.1d
	pmull2	v5.1q, v0.2d, v2.2d
	dup	v2.2d, x8
	eor	v6.16b, v6.16b, v3.16b
	dup	v3.2d, x9
	ldp	x8, x9, [x0, #208]
	pmull2	v19.1q, v2.2d, v4.2d
	pmull	v23.1q, v2.1d, v4.1d
	pmull2	v21.1q, v3.2d, v4.2d
	pmull	v4.1q, v3.1d, v4.1d
	eor	v19.16b, v19.16b, v5.16b
	dup	v5.2d, x9
	eor3	v6.16b, v6.16b, v21.16b, v23.16b
	eor	v21.16b, v4.16b, v7.16b
	dup	v4.2d, x8
	ldp	x8, x9, [x0, #224]
	pmull2	v7.1q, v5.2d, v17.2d
	pmull	v25.1q, v4.1d, v17.1d
	pmull2	v23.1q, v4.2d, v17.2d
	pmull	v17.1q, v5.1d, v17.1d
	eor3	v25.16b, v6.16b, v7.16b, v25.16b
	dup	v6.2d, x8
	dup	v7.2d, x9
	pmull2	v26.1q, v6.2d, v16.2d
	ldp	x8, x9, [x0, #240]
	pmull2	v27.1q, v7.2d, v16.2d
	pmull	v28.1q, v6.1d, v16.1d
	pmull	v16.1q, v7.1d, v16.1d
	eor3	v21.16b, v21.16b, v17.16b, v16.16b
	dup	v16.2d, x8
	dup	v17.2d, x9
	ldp	x8, x9, [x0, #256]
	eor3	v23.16b, v19.16b, v23.16b, v26.16b
	eor3	v19.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v17.2d, v18.2d
	pmull	v27.1q, v16.1d, v18.1d
	pmull2	v25.1q, v16.2d, v18.2d
	pmull	v28.1q, v17.1d, v18.1d
	dup	v18.2d, x8
	eor3	v26.16b, v19.16b, v26.16b, v27.16b
	dup	v19.2d, x9
	ldp	x8, x9, [x0, #272]
	pmull2	v27.1q, v18.2d, v20.2d
	pmull	v30.1q, v18.1d, v20.1d
	pmull2	v29.1q, v19.2d, v20.2d
	pmull	v20.1q, v19.1d, v20.1d
	eor3	v25.16b, v23.16b, v25.16b, v27.16b
	eor3	v28.16b, v21.16b, v28.16b, v20.16b
	dup	v20.2d, x8
	dup	v21.2d, x9
	eor3	v23.16b, v26.16b, v29.16b, v30.16b
	ldp	x9, x10, [x0, #288]
	add	x8, x3, #128
	pmull2	v27.1q, v21.2d, v22.2d
	pmull	v29.1q, v20.1d, v22.1d
	pmull2	v26.1q, v20.2d, v22.2d
	pmull	v30.1q, v21.1d, v22.1d
	dup	v22.2d, x9
	eor3	v27.16b, v23.16b, v27.16b, v29.16b
	dup	v23.2d, x10
	pmull2	v29.1q, v22.2d, v24.2d
	pmull	v8.1q, v22.1d, v24.1d
	pmull2	v31.1q, v23.2d, v24.2d
	pmull	v24.1q, v23.1d, v24.1d
	eor3	v26.16b, v25.16b, v26.16b, v29.16b
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v30.16b, v24.16b
	cmp	x4, #256
	b.lo	.LBB0_35
	mov	x11, #-4467570830351532032
	movi	v24.2d, #0000000000000000
	.p2align	5, , 16
.LBB0_34:
	zip1	v11.2d, v24.2d, v27.2d
	ldp	q28, q29, [x20, #144]
	ldr	q10, [x20, #240]
	zip2	v27.2d, v27.2d, v24.2d
	ldp	q30, q31, [x20, #176]
	ldp	q8, q9, [x20, #208]
	eor	v26.16b, v11.16b, v26.16b
	fmov	d11, x11
	mov	x20, x8
	sub	x2, x2, #128
	pmull	v12.1q, v26.1d, v11.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v12.16b
	pmull	v11.1q, v26.1d, v11.1d
	ext	v12.16b, v26.16b, v26.16b, #8
	ldr	q26, [x8], #128
	eor3	v25.16b, v25.16b, v27.16b, v11.16b
	rev64	v26.16b, v26.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v29.16b
	rev64	v29.16b, v30.16b
	rev64	v30.16b, v31.16b
	rev64	v31.16b, v8.16b
	rev64	v8.16b, v9.16b
	rev64	v9.16b, v10.16b
	pmull2	v10.1q, v1.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v12.16b, v25.16b, v27.16b
	pmull2	v27.1q, v0.2d, v9.2d
	pmull2	v12.1q, v3.2d, v8.2d
	pmull	v13.1q, v2.1d, v8.1d
	pmull	v9.1q, v1.1d, v9.1d
	eor	v10.16b, v11.16b, v10.16b
	pmull2	v11.1q, v2.2d, v8.2d
	pmull	v8.1q, v3.1d, v8.1d
	eor	v27.16b, v11.16b, v27.16b
	eor3	v10.16b, v10.16b, v12.16b, v13.16b
	pmull2	v11.1q, v5.2d, v31.2d
	pmull	v12.1q, v4.1d, v31.1d
	eor	v8.16b, v8.16b, v9.16b
	pmull2	v9.1q, v4.2d, v31.2d
	pmull	v31.1q, v5.1d, v31.1d
	eor3	v10.16b, v10.16b, v11.16b, v12.16b
	pmull2	v11.1q, v6.2d, v30.2d
	pmull2	v12.1q, v7.2d, v30.2d
	eor3	v27.16b, v27.16b, v9.16b, v11.16b
	pmull	v9.1q, v6.1d, v30.1d
	pmull	v30.1q, v7.1d, v30.1d
	eor3	v9.16b, v10.16b, v12.16b, v9.16b
	eor3	v30.16b, v8.16b, v31.16b, v30.16b
	pmull2	v8.1q, v17.2d, v29.2d
	pmull	v10.1q, v16.1d, v29.1d
	pmull2	v31.1q, v16.2d, v29.2d
	pmull	v29.1q, v17.1d, v29.1d
	eor3	v8.16b, v9.16b, v8.16b, v10.16b
	pmull2	v9.1q, v18.2d, v28.2d
	pmull2	v10.1q, v19.2d, v28.2d
	eor3	v27.16b, v27.16b, v31.16b, v9.16b
	pmull	v31.1q, v18.1d, v28.1d
	pmull	v28.1q, v19.1d, v28.1d
	pmull	v9.1q, v21.1d, v26.1d
	eor3	v31.16b, v8.16b, v10.16b, v31.16b
	eor3	v28.16b, v30.16b, v29.16b, v28.16b
	pmull2	v30.1q, v21.2d, v26.2d
	pmull	v8.1q, v20.1d, v26.1d
	pmull2	v29.1q, v20.2d, v26.2d
	fmov	d26, x9
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x10
	pmull2	v8.1q, v22.2d, v25.2d
	pmull	v26.1q, v26.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v25.1q, v23.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x2, #127
	b.hi	.LBB0_34
.LBB0_35:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x9, #-4467570830351532032
	zip2	v0.2d, v27.2d, v0.2d
	mov	x20, x8
	fmov	d2, x9
	eor	v1.16b, v1.16b, v26.16b
	eor	v0.16b, v25.16b, v0.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v29.16b, v0.16b, v2.16b, v1.16b
	mov	v7.16b, v29.16b
	b	.LBB0_37
.LBB0_36:
	movi	v7.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	mov	x2, x4
.LBB0_37:
	adrp	x8, .LCPI0_0
	cmp	x2, #16
	b.lo	.LBB0_41
	ldp	x9, x10, [x0, #176]
	movi	v4.2d, #0000000000000000
	dup	v0.2d, x9
	fmov	d1, x9
	mov	x9, #-4467570830351532032
	dup	v2.2d, x10
	fmov	d3, x10
	fmov	d5, x9
	.p2align	5, , 16
.LBB0_39:
	ldr	q6, [x20], #16
	sub	x2, x2, #16
	rev64	v6.16b, v6.16b
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v16.1q, v3.1d, v6.1d
	pmull2	v17.1q, v0.2d, v6.2d
	pmull	v7.1q, v1.1d, v6.1d
	pmull2	v6.1q, v2.2d, v6.2d
	eor	v16.16b, v17.16b, v16.16b
	zip1	v17.2d, v4.2d, v16.2d
	zip2	v16.2d, v16.2d, v4.2d
	eor	v7.16b, v17.16b, v7.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v7.16b, v7.16b, v17.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v6.16b, v17.16b, v6.16b
	eor3	v7.16b, v6.16b, v16.16b, v7.16b
	cmp	x2, #15
	b.hi	.LBB0_39
	mov	v29.16b, v7.16b
.LBB0_41:
	ldr	q31, [x8, :lo12:.LCPI0_0]
	rev32	v0.16b, v14.16b
	str	q14, [sp]
	stur	q31, [x29, #-176]
	cbz	x2, .LBB0_43
	mov	x21, x0
	sub	x0, x29, #80
	stp	xzr, xzr, [x29, #-80]
	mov	x1, x20
	mov	x20, x4
	mov	x23, x5
	stp	q7, q0, [x29, #-112]
	bl	memcpy
	ldur	q0, [x29, #-80]
	ldur	q1, [x29, #-112]
	ldp	x8, x9, [x21, #176]
	mov	x5, x23
	mov	x0, x21
	ldur	q31, [x29, #-176]
	mov	x4, x20
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	dup	v1.2d, x8
	mov	x8, #-4467570830351532032
	pmull	v4.1q, v4.1d, v0.1d
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v1.1q, v1.2d, v0.2d
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	eor	v1.16b, v1.16b, v4.16b
	zip1	v4.2d, v3.2d, v1.2d
	zip2	v1.2d, v1.2d, v3.2d
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v29.16b, v0.16b, v1.16b, v2.16b
	ldur	q0, [x29, #-96]
.LBB0_43:
	add	v0.4s, v0.4s, v31.4s
	cmp	x22, #128
	b.lo	.LBB0_46
	ldp	q2, q1, [x0, #256]
	adrp	x8, .LCPI0_1
	mov	x20, x22
	ext	v3.16b, v1.16b, v1.16b, #8
	stp	q2, q1, [x29, #-208]
	ldp	q4, q1, [x0]
	stur	q1, [x29, #-256]
	stp	q4, q3, [x29, #-240]
	ext	v3.16b, v2.16b, v2.16b, #8
	ldp	q2, q1, [x0, #224]
	ldp	q4, q5, [x0, #32]
	stp	q1, q3, [sp, #432]
	ext	v3.16b, v1.16b, v1.16b, #8
	ext	v1.16b, v2.16b, v2.16b, #8
	str	q2, [sp, #416]
	stp	q1, q5, [sp, #352]
	ldp	q2, q1, [x0, #192]
	stp	q2, q1, [sp, #320]
	stp	q4, q3, [sp, #384]
	ldp	q4, q5, [x0, #64]
	ext	v3.16b, v1.16b, v1.16b, #8
	ext	v1.16b, v2.16b, v2.16b, #8
	stp	q1, q5, [sp, #256]
	ldp	q24, q1, [x0, #160]
	stp	q4, q3, [sp, #288]
	ldp	q4, q5, [x0, #96]
	str	q1, [sp, #240]
	ext	v3.16b, v1.16b, v1.16b, #8
	ldr	q1, [x0, #288]
	stp	q1, q5, [sp, #176]
	ext	v1.16b, v1.16b, v1.16b, #8
	stp	q4, q3, [sp, #208]
	str	q1, [sp, #160]
	ldr	q1, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_2
	str	q1, [sp, #144]
	ldr	q1, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_3
	str	q1, [sp, #128]
	ldr	q1, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	str	q1, [sp, #112]
	ldr	q1, [x8, :lo12:.LCPI0_4]
	adrp	x8, .LCPI0_5
	str	q1, [sp, #96]
	ldr	q1, [x8, :lo12:.LCPI0_5]
	adrp	x8, .LCPI0_6
	str	q1, [sp, #80]
	ldr	q1, [x8, :lo12:.LCPI0_6]
	adrp	x8, .LCPI0_7
	ldr	q3, [x8, :lo12:.LCPI0_7]
	mov	x8, #-4467570830351532032
	str	q1, [sp, #64]
	ldp	q1, q6, [x0, #128]
	stp	q1, q3, [sp, #32]
	.p2align	5, , 16
.LBB0_45:
	add	v1.4s, v0.4s, v31.4s
	ldp	q27, q30, [x5]
	ext	v29.16b, v29.16b, v29.16b, #8
	rev32	v19.16b, v0.16b
	ldp	q22, q26, [x5, #32]
	ldp	q3, q25, [x5, #64]
	rev32	v17.16b, v1.16b
	ldr	q1, [sp, #144]
	ldp	q23, q21, [x5, #96]
	add	x5, x5, #128
	sub	x20, x20, #128
	stur	q21, [x29, #-96]
	rev64	v5.16b, v30.16b
	rev64	v15.16b, v26.16b
	rev64	v9.16b, v21.16b
	ldur	q21, [x29, #-192]
	rev64	v4.16b, v27.16b
	stp	q26, q3, [x29, #-160]
	rev64	v8.16b, v22.16b
	stp	q25, q23, [x29, #-128]
	rev64	v28.16b, v3.16b
	rev64	v3.16b, v25.16b
	rev64	v12.16b, v23.16b
	ldp	q25, q31, [x29, #-240]
	add	v1.4s, v0.4s, v1.4s
	eor	v11.16b, v4.16b, v29.16b
	movi	v29.2d, #0000000000000000
	rev32	v7.16b, v1.16b
	ldr	q1, [sp, #128]
	add	v1.4s, v0.4s, v1.4s
	rev32	v20.16b, v1.16b
	ldr	q1, [sp, #112]
	add	v1.4s, v0.4s, v1.4s
	rev32	v16.16b, v1.16b
	ldr	q1, [sp, #96]
	add	v1.4s, v0.4s, v1.4s
	rev32	v2.16b, v1.16b
	ldr	q1, [sp, #80]
	add	v1.4s, v0.4s, v1.4s
	rev32	v18.16b, v1.16b
	ldr	q1, [sp, #64]
	add	v1.4s, v0.4s, v1.4s
	rev32	v1.16b, v1.16b
	//APP
	aese	v19.16b, v25.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v25.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v25.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v25.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v25.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v25.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	pmull2	v14.1q, v5.2d, v31.2d
	pmull	v31.1q, v5.1d, v31.1d
	pmull	v4.1q, v5.1d, v21.1d
	pmull2	v5.1q, v5.2d, v21.2d
	eor3	v29.16b, v29.16b, v4.16b, v5.16b
	//NO_APP
	ldr	q10, [sp, #448]
	ldur	q4, [x29, #-208]
	ldur	q25, [x29, #-256]
	//APP
	aese	v19.16b, v25.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v25.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v25.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v25.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v25.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v25.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	pmull2	v21.1q, v8.2d, v10.2d
	pmull	v10.1q, v8.1d, v10.1d
	pmull	v5.1q, v8.1d, v4.1d
	pmull2	v8.1q, v8.2d, v4.2d
	eor3	v29.16b, v29.16b, v5.16b, v8.16b
	//NO_APP
	ldp	q25, q13, [sp, #384]
	ldr	q4, [sp, #432]
	//APP
	aese	v19.16b, v25.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v25.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v25.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v25.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v25.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v25.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	pmull2	v5.1q, v15.2d, v13.2d
	pmull	v13.1q, v15.1d, v13.1d
	pmull	v8.1q, v15.1d, v4.1d
	pmull2	v15.1q, v15.2d, v4.2d
	eor3	v29.16b, v29.16b, v8.16b, v15.16b
	//NO_APP
	ldp	q8, q23, [sp, #352]
	ldr	q25, [sp, #416]
	//APP
	aese	v19.16b, v23.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v23.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v23.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v23.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v23.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v23.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	pmull2	v4.1q, v28.2d, v8.2d
	pmull	v8.1q, v28.1d, v8.1d
	pmull	v15.1q, v28.1d, v25.1d
	pmull2	v28.1q, v28.2d, v25.2d
	eor3	v29.16b, v29.16b, v15.16b, v28.16b
	//NO_APP
	ldp	q26, q15, [sp, #288]
	ldr	q23, [sp, #336]
	//APP
	aese	v19.16b, v26.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v26.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v26.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v26.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v26.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v26.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	pmull2	v28.1q, v3.2d, v15.2d
	pmull	v15.1q, v3.1d, v15.1d
	pmull	v25.1q, v3.1d, v23.1d
	pmull2	v3.1q, v3.2d, v23.2d
	eor3	v29.16b, v29.16b, v25.16b, v3.16b
	//NO_APP
	eor	v3.16b, v21.16b, v14.16b
	ldr	q23, [sp, #320]
	eor3	v3.16b, v3.16b, v5.16b, v4.16b
	ldp	q4, q25, [sp, #256]
	//APP
	aese	v19.16b, v25.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v25.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v25.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v25.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v25.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v25.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	pmull2	v5.1q, v12.2d, v4.2d
	pmull	v4.1q, v12.1d, v4.1d
	pmull	v21.1q, v12.1d, v23.1d
	pmull2	v12.1q, v12.2d, v23.2d
	eor3	v29.16b, v29.16b, v21.16b, v12.16b
	//NO_APP
	ldr	q26, [sp, #208]
	eor3	v3.16b, v3.16b, v28.16b, v5.16b
	ldp	q5, q23, [sp, #224]
	//APP
	aese	v19.16b, v26.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v26.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v26.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v26.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v26.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v26.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	pmull2	v21.1q, v9.2d, v5.2d
	pmull	v5.1q, v9.1d, v5.1d
	pmull	v25.1q, v9.1d, v23.1d
	pmull2	v9.1q, v9.2d, v23.2d
	eor3	v29.16b, v29.16b, v25.16b, v9.16b
	//NO_APP
	ldp	q25, q26, [sp, #160]
	ldr	q23, [sp, #192]
	//APP
	aese	v19.16b, v23.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v23.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v23.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v23.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v23.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v23.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	pmull2	v28.1q, v11.2d, v25.2d
	pmull	v25.1q, v11.1d, v25.1d
	pmull	v9.1q, v11.1d, v26.1d
	pmull2	v11.1q, v11.2d, v26.2d
	eor3	v29.16b, v29.16b, v9.16b, v11.16b
	//NO_APP
	eor3	v3.16b, v3.16b, v21.16b, v28.16b
	eor3	v21.16b, v10.16b, v31.16b, v13.16b
	eor3	v21.16b, v21.16b, v8.16b, v15.16b
	eor3	v4.16b, v21.16b, v4.16b, v5.16b
	movi	v21.2d, #0000000000000000
	zip2	v5.2d, v29.2d, v21.2d
	eor3	v4.16b, v4.16b, v25.16b, v5.16b
	zip1	v5.2d, v21.2d, v29.2d
	eor	v3.16b, v5.16b, v3.16b
	ldr	q5, [sp, #32]
	//APP
	aese	v19.16b, v5.16b
	aesmc	v19.16b, v19.16b
	aese	v17.16b, v5.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v5.16b
	aesmc	v7.16b, v7.16b
	aese	v20.16b, v5.16b
	aesmc	v20.16b, v20.16b
	aese	v16.16b, v5.16b
	aesmc	v16.16b, v16.16b
	aese	v2.16b, v5.16b
	aesmc	v2.16b, v2.16b
	aese	v18.16b, v5.16b
	aesmc	v18.16b, v18.16b
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	//NO_APP
	aese	v19.16b, v6.16b
	aese	v20.16b, v6.16b
	aese	v16.16b, v6.16b
	aese	v2.16b, v6.16b
	aese	v18.16b, v6.16b
	aese	v1.16b, v6.16b
	aese	v17.16b, v6.16b
	aese	v7.16b, v6.16b
	eor3	v5.16b, v24.16b, v19.16b, v27.16b
	ldp	q31, q19, [x29, #-176]
	eor3	v17.16b, v24.16b, v17.16b, v30.16b
	eor3	v7.16b, v24.16b, v7.16b, v22.16b
	stp	q5, q17, [x19]
	eor3	v19.16b, v24.16b, v20.16b, v19.16b
	ldp	q21, q20, [x29, #-144]
	stp	q7, q19, [x19, #32]
	eor3	v2.16b, v24.16b, v2.16b, v20.16b
	fmov	d20, x8
	eor3	v16.16b, v24.16b, v16.16b, v21.16b
	ldur	q21, [x29, #-112]
	eor3	v18.16b, v24.16b, v18.16b, v21.16b
	pmull	v21.1q, v3.1d, v20.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	stp	q16, q2, [x19, #64]
	eor	v3.16b, v3.16b, v21.16b
	ldur	q21, [x29, #-96]
	ext	v2.16b, v3.16b, v3.16b, #8
	eor3	v1.16b, v24.16b, v1.16b, v21.16b
	stp	q18, q1, [x19, #96]
	pmull	v1.1q, v3.1d, v20.1d
	add	x19, x19, #128
	eor3	v29.16b, v4.16b, v1.16b, v2.16b
	ldr	q1, [sp, #48]
	add	v0.4s, v0.4s, v1.4s
	cmp	x20, #127
	b.hi	.LBB0_45
	b	.LBB0_47
.LBB0_46:
	mov	x20, x22
.LBB0_47:
	cmp	x20, #16
	b.lo	.LBB0_50
	ldp	x8, x9, [x0, #176]
	ldp	q1, q2, [x0]
	movi	v24.2d, #0000000000000000
	ldp	q3, q4, [x0, #32]
	ldp	q5, q6, [x0, #64]
	ldp	q7, q16, [x0, #96]
	dup	v20.2d, x8
	ldr	q19, [x0, #160]
	fmov	d21, x8
	ldp	q17, q18, [x0, #128]
	mov	x8, #-4467570830351532032
	dup	v22.2d, x9
	fmov	d23, x9
	fmov	d25, x8
	.p2align	5, , 16
.LBB0_49:
	ldr	q26, [x5], #16
	sub	x20, x20, #16
	rev64	v27.16b, v26.16b
	ext	v27.16b, v27.16b, v27.16b, #8
	eor	v27.16b, v27.16b, v29.16b
	pmull	v29.1q, v23.1d, v27.1d
	pmull2	v30.1q, v20.2d, v27.2d
	pmull	v28.1q, v21.1d, v27.1d
	pmull2	v27.1q, v22.2d, v27.2d
	eor	v29.16b, v30.16b, v29.16b
	zip1	v30.2d, v24.2d, v29.2d
	zip2	v29.2d, v29.2d, v24.2d
	eor	v28.16b, v30.16b, v28.16b
	pmull	v30.1q, v28.1d, v25.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor	v28.16b, v28.16b, v30.16b
	pmull	v30.1q, v28.1d, v25.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor	v27.16b, v30.16b, v27.16b
	eor3	v29.16b, v27.16b, v29.16b, v28.16b
	rev32	v27.16b, v0.16b
	add	v0.4s, v0.4s, v31.4s
	aese	v27.16b, v1.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v3.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v4.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v5.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v7.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v16.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v17.16b
	aesmc	v27.16b, v27.16b
	aese	v27.16b, v18.16b
	eor3	v26.16b, v19.16b, v27.16b, v26.16b
	str	q26, [x19], #16
	cmp	x20, #15
	b.hi	.LBB0_49
.LBB0_50:
	ldr	q5, [x0, #16]
	cbz	x20, .LBB0_52
	rev32	v1.16b, v0.16b
	ldr	q0, [x0]
	mov	w8, #16
	mov	x24, x0
	mov	w1, wzr
	mov	x23, x4
	sub	x2, x8, x20
	sub	x8, x29, #80
	mov	x21, x5
	str	q29, [sp, #448]
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	stp	q0, q5, [x29, #-128]
	ldp	q0, q2, [x0, #32]
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	stp	q2, q0, [x29, #-160]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x0, #64]
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	stp	q2, q0, [x29, #-192]
	ldp	q0, q2, [x0, #96]
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	stp	q2, q0, [x29, #-224]
	ldp	q0, q2, [x0, #128]
	stp	q2, q0, [x29, #-256]
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldr	q0, [x0, #160]
	add	x0, x8, x20
	aese	v1.16b, v2.16b
	str	q1, [sp, #432]
	stur	q0, [x29, #-96]
	bl	memset
	sub	x0, x29, #80
	mov	x1, x21
	mov	x2, x20
	bl	memcpy
	ldp	q0, q2, [x29, #-96]
	ldr	q1, [sp, #432]
	sub	x1, x29, #80
	mov	x0, x19
	mov	x2, x20
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	str	q2, [sp, #416]
	stur	q0, [x29, #-80]
	bl	memcpy
	ldr	q0, [sp, #416]
	ldr	q1, [sp, #448]
	ldp	x8, x9, [x24, #176]
	mov	x10, #-4467570830351532032
	mov	x4, x23
	ldp	q5, q23, [x29, #-112]
	ldp	q22, q21, [x29, #-256]
	ldp	q20, q19, [x29, #-224]
	fmov	d2, x9
	dup	v3.2d, x8
	ldur	q6, [x29, #-128]
	ldp	q18, q17, [x29, #-192]
	ldp	q16, q7, [x29, #-160]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	fmov	d1, x8
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v1.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	dup	v3.2d, x9
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x10
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v29.16b, v0.16b, v2.16b, v1.16b
	b	.LBB0_53
.LBB0_52:
	ldr	q6, [x0]
	ldp	q7, q16, [x0, #32]
	ldr	q23, [x0, #160]
	ldp	q17, q18, [x0, #64]
	ldp	x8, x9, [x0, #176]
	ldp	q19, q20, [x0, #96]
	ldp	q21, q22, [x0, #128]
.LBB0_53:
	fmov	d0, x22
	fmov	d2, x9
	dup	v3.2d, x8
	fmov	d1, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x4
	shl	v0.2d, v0.2d, #3
	eor	v0.16b, v0.16b, v29.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v1.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	dup	v3.2d, x9
	pmull2	v0.1q, v3.2d, v0.2d
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
	ldp	q2, q1, [sp]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	eor	v1.16b, v23.16b, v1.16b
	aese	v2.16b, v5.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v17.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v18.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v22.16b
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	umaxv	b0, v0.16b
	fmov	w8, s0
	tst	w8, #0xff
	cset	w8, eq
.LBB0_54:
	add	sp, sp, #656
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
	mov	w0, w8
	ret
.Lfunc_end0:
	.size	haberdashery_aes128gcm_neoversev2_decrypt, .Lfunc_end0-haberdashery_aes128gcm_neoversev2_decrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
	.word	0
	.word	0
	.word	0
	.word	1
.LCPI1_1:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI1_2:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI1_3:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI1_4:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI1_5:
	.word	0
	.word	0
	.word	0
	.word	6
.LCPI1_6:
	.word	0
	.word	0
	.word	0
	.word	7
.LCPI1_7:
	.word	0
	.word	0
	.word	0
	.word	8
.LCPI1_8:
	.word	0
	.word	0
	.word	0
	.word	9
	.section	.text.haberdashery_aes128gcm_neoversev2_encrypt,"ax",@progbits
	.globl	haberdashery_aes128gcm_neoversev2_encrypt
	.p2align	4
	.type	haberdashery_aes128gcm_neoversev2_encrypt,@function
haberdashery_aes128gcm_neoversev2_encrypt:
	.cfi_startproc
	cbz	x0, .LBB1_5
	cbnz	x1, .LBB1_3
	cbnz	x2, .LBB1_5
.LBB1_3:
	cbnz	x3, .LBB1_6
	cbz	x4, .LBB1_6
.LBB1_5:
	mov	w0, wzr
	ret
.LBB1_6:
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
	sub	sp, sp, #512
	ldr	x24, [x29, #96]
	ldp	x23, x8, [x29, #104]
	cmp	x24, x6
	ccmp	x23, #0, #4, eq
	ccmp	x8, #16, #0, ne
	b.eq	.LBB1_8
	mov	w8, wzr
	b	.LBB1_54
.LBB1_8:
	lsr	x9, x4, #61
	mov	w8, wzr
	cbnz	x9, .LBB1_54
	mov	x9, #68719476704
	cmp	x24, x9
	b.hi	.LBB1_54
	cbz	x24, .LBB1_13
	mov	w8, wzr
	cbz	x5, .LBB1_54
	cbz	x7, .LBB1_54
.LBB1_13:
	cmp	x2, #0
	mov	x9, x1
	csinc	x1, x1, xzr, ne
	cmp	x4, #0
	csinc	x19, x3, xzr, ne
	cmp	x2, #12
	b.ne	.LBB1_15
	ldr	d1, [x9]
	add	x8, x9, #8
	movi	v0.2d, #0000000000000000
	ld1	{ v1.s }[2], [x8]
	mov	w8, #1
	mov	v1.s[3], v0.s[3]
	mov	v1.b[15], w8
	str	q1, [sp]
	b	.LBB1_29
.LBB1_15:
	subs	x8, x2, #128
	b.lo	.LBB1_20
	ldp	q0, q1, [x9]
	ldp	q2, q3, [x9, #32]
	ldp	x10, x11, [x0, #176]
	ldp	q4, q5, [x9, #64]
	rev64	v22.16b, v1.16b
	ldp	q6, q7, [x9, #96]
	dup	v1.2d, x11
	rev64	v18.16b, v3.16b
	rev64	v17.16b, v5.16b
	add	x9, x9, #128
	rev64	v24.16b, v0.16b
	dup	v0.2d, x10
	rev64	v20.16b, v2.16b
	rev64	v2.16b, v7.16b
	rev64	v16.16b, v4.16b
	ldp	x10, x11, [x0, #192]
	rev64	v4.16b, v6.16b
	pmull2	v3.1q, v1.2d, v2.2d
	pmull	v7.1q, v1.1d, v2.1d
	pmull	v6.1q, v0.1d, v2.1d
	pmull2	v5.1q, v0.2d, v2.2d
	dup	v2.2d, x10
	eor	v6.16b, v6.16b, v3.16b
	dup	v3.2d, x11
	ldp	x10, x11, [x0, #208]
	pmull2	v19.1q, v2.2d, v4.2d
	pmull	v23.1q, v2.1d, v4.1d
	pmull2	v21.1q, v3.2d, v4.2d
	pmull	v4.1q, v3.1d, v4.1d
	eor	v19.16b, v19.16b, v5.16b
	dup	v5.2d, x11
	eor3	v6.16b, v6.16b, v21.16b, v23.16b
	eor	v21.16b, v4.16b, v7.16b
	dup	v4.2d, x10
	ldp	x10, x11, [x0, #224]
	pmull2	v7.1q, v5.2d, v17.2d
	pmull	v25.1q, v4.1d, v17.1d
	pmull2	v23.1q, v4.2d, v17.2d
	pmull	v17.1q, v5.1d, v17.1d
	eor3	v25.16b, v6.16b, v7.16b, v25.16b
	dup	v6.2d, x10
	dup	v7.2d, x11
	ldp	x10, x11, [x0, #240]
	pmull2	v26.1q, v6.2d, v16.2d
	pmull2	v27.1q, v7.2d, v16.2d
	pmull	v28.1q, v6.1d, v16.1d
	pmull	v16.1q, v7.1d, v16.1d
	eor3	v21.16b, v21.16b, v17.16b, v16.16b
	dup	v16.2d, x10
	dup	v17.2d, x11
	ldp	x10, x11, [x0, #256]
	eor3	v23.16b, v19.16b, v23.16b, v26.16b
	eor3	v19.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v17.2d, v18.2d
	pmull	v27.1q, v16.1d, v18.1d
	pmull2	v25.1q, v16.2d, v18.2d
	pmull	v28.1q, v17.1d, v18.1d
	dup	v18.2d, x10
	eor3	v26.16b, v19.16b, v26.16b, v27.16b
	dup	v19.2d, x11
	ldp	x10, x11, [x0, #272]
	pmull2	v27.1q, v18.2d, v20.2d
	pmull	v30.1q, v18.1d, v20.1d
	pmull2	v29.1q, v19.2d, v20.2d
	pmull	v20.1q, v19.1d, v20.1d
	eor3	v25.16b, v23.16b, v25.16b, v27.16b
	eor3	v28.16b, v21.16b, v28.16b, v20.16b
	dup	v20.2d, x10
	dup	v21.2d, x11
	ldp	x10, x11, [x0, #288]
	eor3	v23.16b, v26.16b, v29.16b, v30.16b
	pmull2	v27.1q, v21.2d, v22.2d
	pmull	v29.1q, v20.1d, v22.1d
	pmull2	v26.1q, v20.2d, v22.2d
	pmull	v30.1q, v21.1d, v22.1d
	dup	v22.2d, x10
	eor3	v27.16b, v23.16b, v27.16b, v29.16b
	dup	v23.2d, x11
	pmull2	v29.1q, v22.2d, v24.2d
	pmull	v8.1q, v22.1d, v24.1d
	pmull2	v31.1q, v23.2d, v24.2d
	pmull	v24.1q, v23.1d, v24.1d
	eor3	v26.16b, v25.16b, v26.16b, v29.16b
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v30.16b, v24.16b
	cmp	x2, #256
	b.lo	.LBB1_19
	mov	x12, #-4467570830351532032
	movi	v24.2d, #0000000000000000
.LBB1_18:
	zip1	v11.2d, v24.2d, v27.2d
	ldp	q28, q29, [x1, #144]
	ldr	q10, [x1, #240]
	zip2	v27.2d, v27.2d, v24.2d
	ldp	q30, q31, [x1, #176]
	ldp	q8, q9, [x1, #208]
	eor	v26.16b, v11.16b, v26.16b
	fmov	d11, x12
	mov	x1, x9
	sub	x8, x8, #128
	pmull	v12.1q, v26.1d, v11.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v12.16b
	pmull	v11.1q, v26.1d, v11.1d
	ext	v12.16b, v26.16b, v26.16b, #8
	ldr	q26, [x9], #128
	eor3	v25.16b, v25.16b, v27.16b, v11.16b
	rev64	v26.16b, v26.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v29.16b
	rev64	v29.16b, v30.16b
	rev64	v30.16b, v31.16b
	rev64	v31.16b, v8.16b
	rev64	v8.16b, v9.16b
	rev64	v9.16b, v10.16b
	pmull2	v10.1q, v1.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v12.16b, v25.16b, v27.16b
	pmull2	v27.1q, v0.2d, v9.2d
	pmull2	v12.1q, v3.2d, v8.2d
	pmull	v13.1q, v2.1d, v8.1d
	pmull	v9.1q, v1.1d, v9.1d
	eor	v10.16b, v11.16b, v10.16b
	pmull2	v11.1q, v2.2d, v8.2d
	pmull	v8.1q, v3.1d, v8.1d
	eor	v27.16b, v11.16b, v27.16b
	eor3	v10.16b, v10.16b, v12.16b, v13.16b
	pmull2	v11.1q, v5.2d, v31.2d
	pmull	v12.1q, v4.1d, v31.1d
	eor	v8.16b, v8.16b, v9.16b
	pmull2	v9.1q, v4.2d, v31.2d
	pmull	v31.1q, v5.1d, v31.1d
	eor3	v10.16b, v10.16b, v11.16b, v12.16b
	pmull2	v11.1q, v6.2d, v30.2d
	pmull2	v12.1q, v7.2d, v30.2d
	eor3	v27.16b, v27.16b, v9.16b, v11.16b
	pmull	v9.1q, v6.1d, v30.1d
	pmull	v30.1q, v7.1d, v30.1d
	eor3	v9.16b, v10.16b, v12.16b, v9.16b
	eor3	v30.16b, v8.16b, v31.16b, v30.16b
	pmull2	v8.1q, v17.2d, v29.2d
	pmull	v10.1q, v16.1d, v29.1d
	pmull2	v31.1q, v16.2d, v29.2d
	pmull	v29.1q, v17.1d, v29.1d
	eor3	v8.16b, v9.16b, v8.16b, v10.16b
	pmull2	v9.1q, v18.2d, v28.2d
	pmull2	v10.1q, v19.2d, v28.2d
	eor3	v27.16b, v27.16b, v31.16b, v9.16b
	pmull	v31.1q, v18.1d, v28.1d
	pmull	v28.1q, v19.1d, v28.1d
	pmull	v9.1q, v21.1d, v26.1d
	eor3	v31.16b, v8.16b, v10.16b, v31.16b
	eor3	v28.16b, v30.16b, v29.16b, v28.16b
	pmull2	v30.1q, v21.2d, v26.2d
	pmull	v8.1q, v20.1d, v26.1d
	pmull2	v29.1q, v20.2d, v26.2d
	fmov	d26, x10
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x11
	pmull2	v8.1q, v22.2d, v25.2d
	pmull	v26.1q, v26.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v25.1q, v23.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x8, #127
	b.hi	.LBB1_18
.LBB1_19:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x10, #-4467570830351532032
	zip2	v0.2d, v27.2d, v0.2d
	mov	x1, x9
	fmov	d2, x10
	eor	v1.16b, v1.16b, v26.16b
	eor	v0.16b, v25.16b, v0.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	mov	v7.16b, v0.16b
	b	.LBB1_21
.LBB1_20:
	movi	v7.2d, #0000000000000000
	movi	v0.2d, #0000000000000000
	mov	x8, x2
.LBB1_21:
	cmp	x8, #16
	b.lo	.LBB1_25
	ldp	x9, x10, [x0, #176]
	movi	v4.2d, #0000000000000000
	dup	v0.2d, x9
	fmov	d1, x9
	mov	x9, #-4467570830351532032
	dup	v2.2d, x10
	fmov	d3, x10
	fmov	d5, x9
	.p2align	5, , 16
.LBB1_23:
	ldr	q6, [x1], #16
	sub	x8, x8, #16
	rev64	v6.16b, v6.16b
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v16.1q, v3.1d, v6.1d
	pmull2	v17.1q, v0.2d, v6.2d
	pmull	v7.1q, v1.1d, v6.1d
	pmull2	v6.1q, v2.2d, v6.2d
	eor	v16.16b, v17.16b, v16.16b
	zip1	v17.2d, v4.2d, v16.2d
	zip2	v16.2d, v16.2d, v4.2d
	eor	v7.16b, v17.16b, v7.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v7.16b, v7.16b, v17.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v6.16b, v17.16b, v6.16b
	eor3	v7.16b, v6.16b, v16.16b, v7.16b
	cmp	x8, #15
	b.hi	.LBB1_23
	mov	v0.16b, v7.16b
.LBB1_25:
	cbz	x8, .LBB1_27
	mov	x20, x0
	sub	x0, x29, #80
	stp	xzr, xzr, [x29, #-80]
	mov	x21, x2
	mov	x2, x8
	mov	x22, x4
	mov	x26, x7
	mov	x25, x5
	mov	x27, x3
	stur	q7, [x29, #-96]
	bl	memcpy
	ldp	q1, q0, [x29, #-96]
	ldp	x8, x9, [x20, #176]
	mov	x10, #-4467570830351532032
	mov	x2, x21
	mov	x3, x27
	mov	x5, x25
	mov	x7, x26
	mov	x0, x20
	mov	x4, x22
	rev64	v0.16b, v0.16b
	fmov	d2, x9
	dup	v3.2d, x8
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	fmov	d1, x8
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v1.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	dup	v3.2d, x9
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x10
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	b	.LBB1_28
.LBB1_27:
	ldp	x8, x9, [x0, #176]
.LBB1_28:
	lsl	x10, x2, #3
	movi	v2.2d, #0000000000000000
	fmov	d3, x9
	movi	v1.2d, #0000000000000000
	dup	v4.2d, x8
	mov	v2.d[0], x10
	eor	v0.16b, v2.16b, v0.16b
	fmov	d2, x8
	mov	x8, #-4467570830351532032
	pmull	v3.1q, v3.1d, v0.1d
	pmull2	v4.1q, v4.2d, v0.2d
	pmull	v2.1q, v2.1d, v0.1d
	eor	v3.16b, v4.16b, v3.16b
	dup	v4.2d, x9
	pmull2	v0.1q, v4.2d, v0.2d
	zip1	v4.2d, v1.2d, v3.2d
	zip2	v1.2d, v3.2d, v1.2d
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	str	q0, [sp]
.LBB1_29:
	adrp	x8, .LCPI1_0
	subs	x2, x4, #128
	b.lo	.LBB1_34
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	ldp	x9, x10, [x0, #176]
	ldp	q4, q5, [x3, #64]
	rev64	v22.16b, v1.16b
	ldp	q6, q7, [x3, #96]
	dup	v1.2d, x10
	rev64	v18.16b, v3.16b
	rev64	v17.16b, v5.16b
	rev64	v24.16b, v0.16b
	dup	v0.2d, x9
	rev64	v20.16b, v2.16b
	rev64	v2.16b, v7.16b
	ldp	x9, x10, [x0, #192]
	rev64	v16.16b, v4.16b
	rev64	v4.16b, v6.16b
	pmull2	v3.1q, v1.2d, v2.2d
	pmull	v7.1q, v1.1d, v2.1d
	pmull	v6.1q, v0.1d, v2.1d
	pmull2	v5.1q, v0.2d, v2.2d
	dup	v2.2d, x9
	eor	v6.16b, v6.16b, v3.16b
	dup	v3.2d, x10
	ldp	x9, x10, [x0, #208]
	pmull2	v19.1q, v2.2d, v4.2d
	pmull	v23.1q, v2.1d, v4.1d
	pmull2	v21.1q, v3.2d, v4.2d
	pmull	v4.1q, v3.1d, v4.1d
	eor	v19.16b, v19.16b, v5.16b
	dup	v5.2d, x10
	eor3	v6.16b, v6.16b, v21.16b, v23.16b
	eor	v21.16b, v4.16b, v7.16b
	dup	v4.2d, x9
	ldp	x9, x10, [x0, #224]
	pmull2	v7.1q, v5.2d, v17.2d
	pmull	v25.1q, v4.1d, v17.1d
	pmull2	v23.1q, v4.2d, v17.2d
	pmull	v17.1q, v5.1d, v17.1d
	eor3	v25.16b, v6.16b, v7.16b, v25.16b
	dup	v6.2d, x9
	dup	v7.2d, x10
	pmull2	v26.1q, v6.2d, v16.2d
	ldp	x9, x10, [x0, #240]
	pmull2	v27.1q, v7.2d, v16.2d
	pmull	v28.1q, v6.1d, v16.1d
	pmull	v16.1q, v7.1d, v16.1d
	eor3	v21.16b, v21.16b, v17.16b, v16.16b
	dup	v16.2d, x9
	dup	v17.2d, x10
	ldp	x9, x10, [x0, #256]
	eor3	v23.16b, v19.16b, v23.16b, v26.16b
	eor3	v19.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v17.2d, v18.2d
	pmull	v27.1q, v16.1d, v18.1d
	pmull2	v25.1q, v16.2d, v18.2d
	pmull	v28.1q, v17.1d, v18.1d
	dup	v18.2d, x9
	eor3	v26.16b, v19.16b, v26.16b, v27.16b
	dup	v19.2d, x10
	ldp	x9, x10, [x0, #272]
	pmull2	v27.1q, v18.2d, v20.2d
	pmull	v30.1q, v18.1d, v20.1d
	pmull2	v29.1q, v19.2d, v20.2d
	pmull	v20.1q, v19.1d, v20.1d
	eor3	v25.16b, v23.16b, v25.16b, v27.16b
	eor3	v28.16b, v21.16b, v28.16b, v20.16b
	dup	v20.2d, x9
	dup	v21.2d, x10
	eor3	v23.16b, v26.16b, v29.16b, v30.16b
	ldp	x10, x11, [x0, #288]
	add	x9, x3, #128
	pmull2	v27.1q, v21.2d, v22.2d
	pmull	v29.1q, v20.1d, v22.1d
	pmull2	v26.1q, v20.2d, v22.2d
	pmull	v30.1q, v21.1d, v22.1d
	dup	v22.2d, x10
	eor3	v27.16b, v23.16b, v27.16b, v29.16b
	dup	v23.2d, x11
	pmull2	v29.1q, v22.2d, v24.2d
	pmull	v8.1q, v22.1d, v24.1d
	pmull2	v31.1q, v23.2d, v24.2d
	pmull	v24.1q, v23.1d, v24.1d
	eor3	v26.16b, v25.16b, v26.16b, v29.16b
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v30.16b, v24.16b
	cmp	x4, #256
	b.lo	.LBB1_33
	mov	x12, #-4467570830351532032
	movi	v24.2d, #0000000000000000
	.p2align	5, , 16
.LBB1_32:
	zip1	v11.2d, v24.2d, v27.2d
	ldp	q28, q29, [x19, #144]
	ldr	q10, [x19, #240]
	zip2	v27.2d, v27.2d, v24.2d
	ldp	q30, q31, [x19, #176]
	ldp	q8, q9, [x19, #208]
	eor	v26.16b, v11.16b, v26.16b
	fmov	d11, x12
	mov	x19, x9
	sub	x2, x2, #128
	pmull	v12.1q, v26.1d, v11.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v12.16b
	pmull	v11.1q, v26.1d, v11.1d
	ext	v12.16b, v26.16b, v26.16b, #8
	ldr	q26, [x9], #128
	eor3	v25.16b, v25.16b, v27.16b, v11.16b
	rev64	v26.16b, v26.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v29.16b
	rev64	v29.16b, v30.16b
	rev64	v30.16b, v31.16b
	rev64	v31.16b, v8.16b
	rev64	v8.16b, v9.16b
	rev64	v9.16b, v10.16b
	pmull2	v10.1q, v1.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v12.16b, v25.16b, v27.16b
	pmull2	v27.1q, v0.2d, v9.2d
	pmull2	v12.1q, v3.2d, v8.2d
	pmull	v13.1q, v2.1d, v8.1d
	pmull	v9.1q, v1.1d, v9.1d
	eor	v10.16b, v11.16b, v10.16b
	pmull2	v11.1q, v2.2d, v8.2d
	pmull	v8.1q, v3.1d, v8.1d
	eor	v27.16b, v11.16b, v27.16b
	eor3	v10.16b, v10.16b, v12.16b, v13.16b
	pmull2	v11.1q, v5.2d, v31.2d
	pmull	v12.1q, v4.1d, v31.1d
	eor	v8.16b, v8.16b, v9.16b
	pmull2	v9.1q, v4.2d, v31.2d
	pmull	v31.1q, v5.1d, v31.1d
	eor3	v10.16b, v10.16b, v11.16b, v12.16b
	pmull2	v11.1q, v6.2d, v30.2d
	pmull2	v12.1q, v7.2d, v30.2d
	eor3	v27.16b, v27.16b, v9.16b, v11.16b
	pmull	v9.1q, v6.1d, v30.1d
	pmull	v30.1q, v7.1d, v30.1d
	eor3	v9.16b, v10.16b, v12.16b, v9.16b
	eor3	v30.16b, v8.16b, v31.16b, v30.16b
	pmull2	v8.1q, v17.2d, v29.2d
	pmull	v10.1q, v16.1d, v29.1d
	pmull2	v31.1q, v16.2d, v29.2d
	pmull	v29.1q, v17.1d, v29.1d
	eor3	v8.16b, v9.16b, v8.16b, v10.16b
	pmull2	v9.1q, v18.2d, v28.2d
	pmull2	v10.1q, v19.2d, v28.2d
	eor3	v27.16b, v27.16b, v31.16b, v9.16b
	pmull	v31.1q, v18.1d, v28.1d
	pmull	v28.1q, v19.1d, v28.1d
	pmull	v9.1q, v21.1d, v26.1d
	eor3	v31.16b, v8.16b, v10.16b, v31.16b
	eor3	v28.16b, v30.16b, v29.16b, v28.16b
	pmull2	v30.1q, v21.2d, v26.2d
	pmull	v8.1q, v20.1d, v26.1d
	pmull2	v29.1q, v20.2d, v26.2d
	fmov	d26, x10
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x11
	pmull2	v8.1q, v22.2d, v25.2d
	pmull	v26.1q, v26.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v25.1q, v23.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x2, #127
	b.hi	.LBB1_32
.LBB1_33:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x10, #-4467570830351532032
	zip2	v0.2d, v27.2d, v0.2d
	mov	x19, x9
	fmov	d2, x10
	eor	v1.16b, v1.16b, v26.16b
	eor	v0.16b, v25.16b, v0.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v27.16b, v0.16b, v2.16b, v1.16b
	mov	v7.16b, v27.16b
	b	.LBB1_35
.LBB1_34:
	movi	v7.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	mov	x2, x4
.LBB1_35:
	ldr	q0, [sp]
	ldr	q30, [x8, :lo12:.LCPI1_0]
	rev32	v18.16b, v0.16b
	cmp	x2, #16
	b.lo	.LBB1_39
	ldp	x8, x9, [x0, #176]
	movi	v4.2d, #0000000000000000
	dup	v0.2d, x8
	fmov	d1, x8
	mov	x8, #-4467570830351532032
	dup	v2.2d, x9
	fmov	d3, x9
	fmov	d5, x8
	.p2align	5, , 16
.LBB1_37:
	ldr	q6, [x19], #16
	sub	x2, x2, #16
	rev64	v6.16b, v6.16b
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v16.1q, v3.1d, v6.1d
	pmull2	v17.1q, v0.2d, v6.2d
	pmull	v7.1q, v1.1d, v6.1d
	pmull2	v6.1q, v2.2d, v6.2d
	eor	v16.16b, v17.16b, v16.16b
	zip1	v17.2d, v4.2d, v16.2d
	zip2	v16.2d, v16.2d, v4.2d
	eor	v7.16b, v17.16b, v7.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v7.16b, v7.16b, v17.16b
	pmull	v17.1q, v7.1d, v5.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v6.16b, v17.16b, v6.16b
	eor3	v7.16b, v6.16b, v16.16b, v7.16b
	cmp	x2, #15
	b.hi	.LBB1_37
	mov	v27.16b, v7.16b
.LBB1_39:
	add	v31.4s, v18.4s, v30.4s
	str	q18, [sp, #304]
	cbz	x2, .LBB1_41
	mov	x20, x0
	sub	x0, x29, #80
	stp	xzr, xzr, [x29, #-80]
	mov	x1, x19
	mov	x19, x4
	mov	x22, x7
	mov	x21, x5
	stp	q30, q31, [x29, #-112]
	stur	q7, [x29, #-128]
	bl	memcpy
	ldur	q0, [x29, #-80]
	ldur	q1, [x29, #-128]
	ldp	x8, x9, [x20, #176]
	mov	x5, x21
	mov	x7, x22
	ldp	q30, q31, [x29, #-112]
	mov	x0, x20
	mov	x4, x19
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	dup	v1.2d, x8
	mov	x8, #-4467570830351532032
	pmull	v4.1q, v4.1d, v0.1d
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v1.1q, v1.2d, v0.2d
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	eor	v1.16b, v1.16b, v4.16b
	zip1	v4.2d, v3.2d, v1.2d
	zip2	v1.2d, v1.2d, v3.2d
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v27.16b, v0.16b, v1.16b, v2.16b
.LBB1_41:
	subs	x19, x24, #128
	b.lo	.LBB1_46
	adrp	x8, .LCPI1_1
	rev32	v0.16b, v31.16b
	ldr	q31, [sp, #304]
	ldp	q14, q15, [x0]
	ldr	q18, [x8, :lo12:.LCPI1_1]
	adrp	x8, .LCPI1_2
	ldr	q8, [x8, :lo12:.LCPI1_2]
	adrp	x8, .LCPI1_3
	ldr	q9, [x8, :lo12:.LCPI1_3]
	adrp	x8, .LCPI1_4
	ldr	q10, [x8, :lo12:.LCPI1_4]
	adrp	x8, .LCPI1_5
	ldr	q12, [x8, :lo12:.LCPI1_5]
	adrp	x8, .LCPI1_6
	ldr	q11, [x8, :lo12:.LCPI1_6]
	adrp	x8, .LCPI1_7
	ldr	q13, [x8, :lo12:.LCPI1_7]
	add	v1.4s, v31.4s, v18.4s
	adrp	x8, .LCPI1_8
	add	v2.4s, v31.4s, v8.4s
	add	v3.4s, v31.4s, v9.4s
	rev32	v1.16b, v1.16b
	add	v4.4s, v31.4s, v10.4s
	rev32	v2.16b, v2.16b
	add	v5.4s, v31.4s, v12.4s
	rev32	v3.16b, v3.16b
	rev32	v4.16b, v4.16b
	rev32	v6.16b, v5.16b
	add	v5.4s, v31.4s, v11.4s
	rev32	v7.16b, v5.16b
	add	v5.4s, v31.4s, v13.4s
	rev32	v5.16b, v5.16b
	//APP
	aese	v0.16b, v14.16b
	aesmc	v0.16b, v0.16b
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
	//NO_APP
	//APP
	aese	v0.16b, v15.16b
	aesmc	v0.16b, v0.16b
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
	//NO_APP
	ldp	q17, q16, [x0, #32]
	stp	q16, q17, [x29, #-128]
	//APP
	aese	v0.16b, v17.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v17.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	//APP
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	ldp	q17, q16, [x0, #64]
	stp	q16, q17, [x29, #-160]
	//APP
	aese	v0.16b, v17.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v17.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	//APP
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	ldp	q17, q16, [x0, #96]
	stp	q16, q17, [x29, #-192]
	//APP
	aese	v0.16b, v17.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v17.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	//APP
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	ldp	q16, q24, [x0, #128]
	stur	q16, [x29, #-208]
	//APP
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v16.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v6.16b, v16.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v16.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	ldr	q25, [x0, #160]
	aese	v0.16b, v24.16b
	aese	v1.16b, v24.16b
	ldp	q16, q17, [x5]
	aese	v2.16b, v24.16b
	aese	v3.16b, v24.16b
	aese	v4.16b, v24.16b
	aese	v6.16b, v24.16b
	aese	v7.16b, v24.16b
	aese	v5.16b, v24.16b
	eor3	v20.16b, v0.16b, v16.16b, v25.16b
	eor3	v19.16b, v1.16b, v17.16b, v25.16b
	ldp	q0, q1, [x5, #32]
	eor3	v21.16b, v3.16b, v1.16b, v25.16b
	eor3	v22.16b, v2.16b, v0.16b, v25.16b
	ldp	q0, q1, [x5, #64]
	eor3	v23.16b, v6.16b, v1.16b, v25.16b
	eor3	v28.16b, v4.16b, v0.16b, v25.16b
	ldp	q0, q1, [x5, #96]
	stp	q20, q19, [x7]
	stp	q22, q21, [x7, #32]
	add	x5, x5, #128
	eor3	v26.16b, v5.16b, v1.16b, v25.16b
	eor3	v29.16b, v7.16b, v0.16b, v25.16b
	ldr	q0, [x8, :lo12:.LCPI1_8]
	stp	q28, q23, [x7, #64]
	add	v31.4s, v31.4s, v0.4s
	stp	q29, q26, [x7, #96]
	add	x7, x7, #128
	cmp	x24, #256
	b.lo	.LBB1_45
	ldp	q1, q0, [x0, #272]
	stp	q15, q14, [sp, #32]
	ldur	q15, [x29, #-144]
	mov	x8, #-4467570830351532032
	stp	q11, q18, [x29, #-240]
	ext	v2.16b, v0.16b, v0.16b, #8
	stur	q12, [x29, #-256]
	str	q10, [sp, #16]
	stp	q1, q0, [sp, #288]
	ext	v0.16b, v1.16b, v1.16b, #8
	stp	q0, q2, [sp, #256]
	ldp	q1, q0, [x0, #240]
	ext	v2.16b, v0.16b, v0.16b, #8
	stp	q1, q0, [sp, #224]
	ext	v0.16b, v1.16b, v1.16b, #8
	stp	q0, q2, [sp, #192]
	ldp	q1, q0, [x0, #208]
	ext	v2.16b, v0.16b, v0.16b, #8
	stp	q1, q0, [sp, #160]
	ext	v0.16b, v1.16b, v1.16b, #8
	stp	q0, q2, [sp, #128]
	ldp	q1, q0, [x0, #176]
	ext	v2.16b, v0.16b, v0.16b, #8
	stp	q1, q0, [sp, #96]
	ext	v0.16b, v1.16b, v1.16b, #8
	stp	q0, q2, [sp, #64]
	.p2align	5, , 16
.LBB1_44:
	add	v2.4s, v31.4s, v30.4s
	mov	v14.16b, v9.16b
	stur	q31, [x29, #-96]
	rev32	v4.16b, v31.16b
	ldr	q0, [sp, #304]
	mov	v1.16b, v8.16b
	sub	x19, x19, #128
	rev32	v16.16b, v2.16b
	add	v2.4s, v31.4s, v18.4s
	rev32	v5.16b, v2.16b
	add	v2.4s, v31.4s, v8.4s
	rev32	v17.16b, v2.16b
	add	v2.4s, v31.4s, v9.4s
	rev64	v9.16b, v19.16b
	ext	v19.16b, v27.16b, v27.16b, #8
	rev32	v6.16b, v2.16b
	add	v2.4s, v31.4s, v10.4s
	mov	v10.16b, v30.16b
	rev64	v30.16b, v28.16b
	rev64	v28.16b, v23.16b
	rev64	v23.16b, v29.16b
	rev32	v18.16b, v2.16b
	add	v2.4s, v31.4s, v12.4s
	rev64	v12.16b, v22.16b
	rev64	v22.16b, v26.16b
	ldp	q26, q29, [sp, #32]
	rev32	v7.16b, v2.16b
	add	v2.4s, v31.4s, v11.4s
	rev64	v31.16b, v21.16b
	rev32	v3.16b, v2.16b
	rev64	v2.16b, v20.16b
	movi	v20.2d, #0000000000000000
	eor	v2.16b, v2.16b, v19.16b
	ldr	q19, [sp, #272]
	//APP
	aese	v4.16b, v29.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v29.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v29.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v29.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v29.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v29.16b
	aesmc	v3.16b, v3.16b
	pmull2	v8.1q, v2.2d, v19.2d
	pmull	v19.1q, v2.1d, v19.1d
	pmull	v21.1q, v2.1d, v0.1d
	pmull2	v2.1q, v2.2d, v0.2d
	eor3	v20.16b, v20.16b, v21.16b, v2.16b
	//NO_APP
	ldr	q21, [sp, #256]
	ldr	q0, [sp, #288]
	//APP
	aese	v4.16b, v26.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v26.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v26.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v26.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v26.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v26.16b
	aesmc	v3.16b, v3.16b
	pmull2	v27.1q, v9.2d, v21.2d
	pmull	v21.1q, v9.1d, v21.1d
	pmull	v2.1q, v9.1d, v0.1d
	pmull2	v9.1q, v9.2d, v0.2d
	eor3	v20.16b, v20.16b, v2.16b, v9.16b
	//NO_APP
	eor	v27.16b, v27.16b, v8.16b
	ldr	q26, [sp, #208]
	ldr	q0, [sp, #240]
	ldp	q11, q9, [x29, #-128]
	//APP
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v9.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v9.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v9.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	pmull2	v2.1q, v12.2d, v26.2d
	pmull	v26.1q, v12.1d, v26.1d
	pmull	v29.1q, v12.1d, v0.1d
	pmull2	v12.1q, v12.2d, v0.2d
	eor3	v20.16b, v20.16b, v29.16b, v12.16b
	//NO_APP
	ldr	q29, [sp, #192]
	ldr	q0, [sp, #224]
	//APP
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v11.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v11.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v11.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	pmull2	v9.1q, v31.2d, v29.2d
	pmull	v29.1q, v31.1d, v29.1d
	pmull	v12.1q, v31.1d, v0.1d
	pmull2	v31.1q, v31.2d, v0.2d
	eor3	v20.16b, v20.16b, v12.16b, v31.16b
	//NO_APP
	mov	v0.16b, v13.16b
	ldr	q12, [sp, #144]
	ldr	q11, [sp, #176]
	//APP
	aese	v4.16b, v15.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v15.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v15.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v15.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v15.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	pmull2	v31.1q, v30.2d, v12.2d
	pmull	v12.1q, v30.1d, v12.1d
	pmull	v13.1q, v30.1d, v11.1d
	pmull2	v30.1q, v30.2d, v11.2d
	eor3	v20.16b, v20.16b, v13.16b, v30.16b
	//NO_APP
	ldur	q11, [x29, #-160]
	eor3	v19.16b, v21.16b, v19.16b, v26.16b
	eor3	v2.16b, v27.16b, v2.16b, v9.16b
	mov	v13.16b, v0.16b
	ldr	q27, [sp, #128]
	ldr	q0, [sp, #160]
	//APP
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v11.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v11.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v11.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	pmull2	v30.1q, v28.2d, v27.2d
	pmull	v27.1q, v28.1d, v27.1d
	pmull	v8.1q, v28.1d, v0.1d
	pmull2	v28.1q, v28.2d, v0.2d
	eor3	v20.16b, v20.16b, v8.16b, v28.16b
	//NO_APP
	ldr	q28, [sp, #80]
	ldr	q0, [sp, #112]
	eor3	v19.16b, v19.16b, v29.16b, v12.16b
	mov	v9.16b, v14.16b
	ldp	q11, q8, [x29, #-192]
	eor3	v2.16b, v2.16b, v31.16b, v30.16b
	//APP
	aese	v4.16b, v8.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v8.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v8.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v8.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v8.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v8.16b
	aesmc	v3.16b, v3.16b
	pmull2	v30.1q, v23.2d, v28.2d
	pmull	v28.1q, v23.1d, v28.1d
	pmull	v31.1q, v23.1d, v0.1d
	pmull2	v23.1q, v23.2d, v0.2d
	eor3	v20.16b, v20.16b, v31.16b, v23.16b
	//NO_APP
	ldr	q23, [sp, #64]
	ldr	q0, [sp, #96]
	//APP
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v11.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v11.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v11.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	pmull2	v31.1q, v22.2d, v23.2d
	pmull	v23.1q, v22.1d, v23.1d
	pmull	v8.1q, v22.1d, v0.1d
	pmull2	v22.1q, v22.2d, v0.2d
	eor3	v20.16b, v20.16b, v8.16b, v22.16b
	//NO_APP
	movi	v0.2d, #0000000000000000
	zip2	v21.2d, v20.2d, v0.2d
	zip1	v20.2d, v0.2d, v20.2d
	eor3	v19.16b, v19.16b, v27.16b, v28.16b
	ldp	q12, q11, [x29, #-256]
	ldur	q0, [x29, #-208]
	mov	v8.16b, v1.16b
	eor3	v2.16b, v2.16b, v30.16b, v31.16b
	eor3	v19.16b, v19.16b, v23.16b, v21.16b
	ldur	q31, [x29, #-96]
	mov	v30.16b, v10.16b
	ldr	q10, [sp, #16]
	//APP
	aese	v4.16b, v0.16b
	aesmc	v4.16b, v4.16b
	aese	v16.16b, v0.16b
	aesmc	v16.16b, v16.16b
	aese	v5.16b, v0.16b
	aesmc	v5.16b, v5.16b
	aese	v17.16b, v0.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v0.16b
	aesmc	v6.16b, v6.16b
	aese	v18.16b, v0.16b
	aesmc	v18.16b, v18.16b
	aese	v7.16b, v0.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v0.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	aese	v4.16b, v24.16b
	aese	v5.16b, v24.16b
	aese	v17.16b, v24.16b
	aese	v6.16b, v24.16b
	aese	v18.16b, v24.16b
	aese	v16.16b, v24.16b
	aese	v7.16b, v24.16b
	aese	v3.16b, v24.16b
	eor	v2.16b, v20.16b, v2.16b
	fmov	d20, x8
	pmull	v21.1q, v2.1d, v20.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	add	v31.4s, v31.4s, v13.4s
	eor	v2.16b, v2.16b, v21.16b
	pmull	v20.1q, v2.1d, v20.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v27.16b, v19.16b, v20.16b, v2.16b
	ldp	q2, q19, [x5]
	eor3	v19.16b, v16.16b, v19.16b, v25.16b
	eor3	v20.16b, v4.16b, v2.16b, v25.16b
	ldp	q2, q4, [x5, #32]
	eor3	v21.16b, v17.16b, v4.16b, v25.16b
	eor3	v22.16b, v5.16b, v2.16b, v25.16b
	ldp	q2, q4, [x5, #64]
	eor3	v23.16b, v18.16b, v4.16b, v25.16b
	ldur	q18, [x29, #-224]
	eor3	v28.16b, v6.16b, v2.16b, v25.16b
	ldp	q2, q4, [x5, #96]
	stp	q20, q19, [x7]
	stp	q22, q21, [x7, #32]
	add	x5, x5, #128
	eor3	v26.16b, v3.16b, v4.16b, v25.16b
	eor3	v29.16b, v7.16b, v2.16b, v25.16b
	stp	q28, q23, [x7, #64]
	stp	q29, q26, [x7, #96]
	add	x7, x7, #128
	cmp	x19, #127
	b.hi	.LBB1_44
.LBB1_45:
	add	x8, x0, #176
	rev64	v7.16b, v26.16b
	rev64	v1.16b, v19.16b
	rev64	v0.16b, v20.16b
	rev64	v6.16b, v29.16b
	rev64	v3.16b, v21.16b
	ld1r	{ v16.2d }, [x8]
	add	x8, x0, #184
	rev64	v5.16b, v23.16b
	rev64	v4.16b, v28.16b
	rev64	v2.16b, v22.16b
	ld1r	{ v17.2d }, [x8]
	add	x8, x0, #192
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v27.16b
	pmull2	v18.1q, v16.2d, v7.2d
	pmull	v16.1q, v16.1d, v7.1d
	pmull2	v19.1q, v17.2d, v7.2d
	pmull	v7.1q, v17.1d, v7.1d
	ld1r	{ v17.2d }, [x8]
	add	x8, x0, #200
	ld1r	{ v20.2d }, [x8]
	add	x8, x0, #208
	eor	v16.16b, v16.16b, v19.16b
	pmull2	v19.1q, v17.2d, v6.2d
	pmull	v17.1q, v17.1d, v6.1d
	pmull2	v21.1q, v20.2d, v6.2d
	pmull	v6.1q, v20.1d, v6.1d
	eor	v18.16b, v19.16b, v18.16b
	eor3	v16.16b, v16.16b, v21.16b, v17.16b
	ld1r	{ v17.2d }, [x8]
	add	x8, x0, #216
	ld1r	{ v20.2d }, [x8]
	add	x8, x0, #224
	pmull2	v19.1q, v17.2d, v5.2d
	pmull	v17.1q, v17.1d, v5.1d
	pmull2	v21.1q, v20.2d, v5.2d
	pmull	v5.1q, v20.1d, v5.1d
	eor3	v5.16b, v6.16b, v7.16b, v5.16b
	ld1r	{ v6.2d }, [x8]
	add	x8, x0, #232
	eor3	v16.16b, v16.16b, v21.16b, v17.16b
	ld1r	{ v17.2d }, [x8]
	add	x8, x0, #240
	pmull2	v7.1q, v6.2d, v4.2d
	pmull	v6.1q, v6.1d, v4.1d
	pmull2	v20.1q, v17.2d, v4.2d
	pmull	v4.1q, v17.1d, v4.1d
	eor3	v7.16b, v18.16b, v19.16b, v7.16b
	eor3	v6.16b, v16.16b, v20.16b, v6.16b
	ld1r	{ v16.2d }, [x8]
	add	x8, x0, #248
	ld1r	{ v18.2d }, [x8]
	add	x8, x0, #256
	pmull2	v17.1q, v16.2d, v3.2d
	pmull	v16.1q, v16.1d, v3.1d
	pmull2	v19.1q, v18.2d, v3.2d
	pmull	v3.1q, v18.1d, v3.1d
	eor3	v3.16b, v5.16b, v4.16b, v3.16b
	ld1r	{ v4.2d }, [x8]
	add	x8, x0, #264
	eor3	v6.16b, v6.16b, v19.16b, v16.16b
	ld1r	{ v16.2d }, [x8]
	add	x8, x0, #272
	pmull2	v5.1q, v4.2d, v2.2d
	pmull	v4.1q, v4.1d, v2.1d
	pmull2	v18.1q, v16.2d, v2.2d
	pmull	v2.1q, v16.1d, v2.1d
	eor3	v5.16b, v7.16b, v17.16b, v5.16b
	eor3	v4.16b, v6.16b, v18.16b, v4.16b
	ld1r	{ v6.2d }, [x8]
	add	x8, x0, #280
	ld1r	{ v16.2d }, [x8]
	ldp	x8, x9, [x0, #288]
	pmull2	v7.1q, v6.2d, v1.2d
	pmull	v6.1q, v6.1d, v1.1d
	pmull2	v17.1q, v16.2d, v1.2d
	pmull	v1.1q, v16.1d, v1.1d
	fmov	d16, x9
	eor3	v1.16b, v3.16b, v2.16b, v1.16b
	dup	v2.2d, x8
	fmov	d3, x8
	eor3	v4.16b, v4.16b, v17.16b, v6.16b
	mov	x8, #-4467570830351532032
	dup	v6.2d, x9
	pmull	v16.1q, v16.1d, v0.1d
	pmull2	v2.1q, v2.2d, v0.2d
	pmull	v3.1q, v3.1d, v0.1d
	pmull2	v0.1q, v6.2d, v0.2d
	eor3	v2.16b, v4.16b, v16.16b, v2.16b
	eor3	v3.16b, v5.16b, v7.16b, v3.16b
	movi	v4.2d, #0000000000000000
	zip1	v5.2d, v4.2d, v2.2d
	zip2	v2.2d, v2.2d, v4.2d
	fmov	d4, x8
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v5.16b
	pmull	v4.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor3	v0.16b, v1.16b, v0.16b, v4.16b
	eor3	v27.16b, v0.16b, v2.16b, v3.16b
	b	.LBB1_47
.LBB1_46:
	mov	x19, x24
.LBB1_47:
	cmp	x19, #16
	b.lo	.LBB1_50
	ldp	x8, x9, [x0, #176]
	ldp	q0, q1, [x0]
	movi	v23.2d, #0000000000000000
	ldp	q2, q3, [x0, #32]
	ldp	q4, q5, [x0, #64]
	ldp	q6, q7, [x0, #96]
	dup	v19.2d, x8
	ldr	q18, [x0, #160]
	fmov	d20, x8
	ldp	q16, q17, [x0, #128]
	mov	x8, #-4467570830351532032
	dup	v21.2d, x9
	fmov	d22, x9
	fmov	d24, x8
	.p2align	5, , 16
.LBB1_49:
	rev32	v25.16b, v31.16b
	ldr	q26, [x5], #16
	add	v31.4s, v31.4s, v30.4s
	sub	x19, x19, #16
	aese	v25.16b, v0.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v1.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v2.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v3.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v4.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v5.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v16.16b
	aesmc	v25.16b, v25.16b
	aese	v25.16b, v17.16b
	eor3	v25.16b, v25.16b, v18.16b, v26.16b
	str	q25, [x7], #16
	rev64	v25.16b, v25.16b
	ext	v25.16b, v25.16b, v25.16b, #8
	eor	v25.16b, v25.16b, v27.16b
	pmull	v27.1q, v22.1d, v25.1d
	pmull2	v28.1q, v19.2d, v25.2d
	pmull	v26.1q, v20.1d, v25.1d
	pmull2	v25.1q, v21.2d, v25.2d
	eor	v27.16b, v28.16b, v27.16b
	zip1	v28.2d, v23.2d, v27.2d
	zip2	v27.2d, v27.2d, v23.2d
	eor	v26.16b, v28.16b, v26.16b
	pmull	v28.1q, v26.1d, v24.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v28.16b
	pmull	v28.1q, v26.1d, v24.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v25.16b, v28.16b, v25.16b
	eor3	v27.16b, v25.16b, v27.16b, v26.16b
	cmp	x19, #15
	b.hi	.LBB1_49
.LBB1_50:
	ldr	q5, [x0, #16]
	cbz	x19, .LBB1_52
	ldr	q0, [x0]
	rev32	v2.16b, v31.16b
	mov	w8, #16
	mov	x26, x0
	mov	w1, wzr
	mov	x25, x4
	sub	x20, x8, x19
	sub	x8, x29, #80
	mov	x21, x7
	mov	x22, x5
	str	q27, [sp, #304]
	mov	x2, x20
	stp	q0, q5, [x29, #-128]
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #32]
	aese	v2.16b, v5.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	stp	q1, q0, [x29, #-160]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #64]
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	stp	q1, q0, [x29, #-192]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #96]
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	stp	q1, q0, [x29, #-224]
	ldp	q0, q1, [x0, #128]
	stp	q1, q0, [x29, #-256]
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldr	q0, [x0, #160]
	add	x0, x8, x19
	aese	v2.16b, v1.16b
	str	q2, [sp, #288]
	stur	q0, [x29, #-96]
	bl	memset
	sub	x0, x29, #80
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldp	q1, q0, [x29, #-96]
	ldr	q2, [sp, #288]
	sub	x1, x29, #80
	sub	x22, x29, #80
	mov	x0, x21
	mov	x2, x19
	eor3	v0.16b, v2.16b, v0.16b, v1.16b
	str	q0, [sp, #288]
	stur	q0, [x29, #-80]
	bl	memcpy
	ldr	q0, [sp, #288]
	add	x0, x22, x19
	mov	w1, wzr
	mov	x2, x20
	stur	q0, [x29, #-80]
	bl	memset
	ldur	q0, [x29, #-80]
	ldr	q1, [sp, #304]
	ldp	x8, x9, [x26, #176]
	mov	x10, #-4467570830351532032
	mov	x4, x25
	ldp	q5, q23, [x29, #-112]
	ldp	q22, q21, [x29, #-256]
	ldp	q20, q19, [x29, #-224]
	fmov	d2, x9
	dup	v3.2d, x8
	ldur	q6, [x29, #-128]
	ldp	q18, q17, [x29, #-192]
	ldp	q16, q7, [x29, #-160]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	fmov	d1, x8
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v1.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	dup	v3.2d, x9
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x10
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v27.16b, v0.16b, v2.16b, v1.16b
	b	.LBB1_53
.LBB1_52:
	ldr	q6, [x0]
	ldp	q7, q16, [x0, #32]
	ldr	q23, [x0, #160]
	ldp	q17, q18, [x0, #64]
	ldp	x8, x9, [x0, #176]
	ldp	q19, q20, [x0, #96]
	ldp	q21, q22, [x0, #128]
.LBB1_53:
	fmov	d0, x24
	fmov	d2, x9
	dup	v3.2d, x8
	fmov	d1, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x4
	shl	v0.2d, v0.2d, #3
	eor	v0.16b, v0.16b, v27.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v1.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	dup	v3.2d, x9
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	zip2	v2.2d, v2.2d, v3.2d
	fmov	d3, x8
	mov	w8, #1
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v3.1q, v1.1d, v3.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	ldr	q1, [sp]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v18.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v22.16b
	eor3	v0.16b, v23.16b, v0.16b, v1.16b
	str	q0, [x23]
.LBB1_54:
	add	sp, sp, #512
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
	mov	w0, w8
	ret
.Lfunc_end1:
	.size	haberdashery_aes128gcm_neoversev2_encrypt, .Lfunc_end1-haberdashery_aes128gcm_neoversev2_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
	.section	.text.haberdashery_aes128gcm_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes128gcm_neoversev2_init
	.p2align	4
	.type	haberdashery_aes128gcm_neoversev2_init,@function
haberdashery_aes128gcm_neoversev2_init:
	.cfi_startproc
	mov	w8, wzr
	cbz	x0, .LBB2_4
	cbz	x1, .LBB2_4
	cmp	x2, #16
	b.ne	.LBB2_4
	stp	d9, d8, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	adrp	x8, .LCPI2_0
	ldr	q1, [x1]
	movi	v0.2d, #0000000000000000
	mov	x11, #-4467570830351532032
	ldr	q19, [x8, :lo12:.LCPI2_0]
	ext	v3.16b, v0.16b, v1.16b, #12
	ext	v4.16b, v0.16b, v1.16b, #8
	ext	v5.16b, v0.16b, v1.16b, #4
	tbl	v2.16b, { v1.16b }, v19.16b
	eor	v3.16b, v3.16b, v4.16b
	aese	v2.16b, v0.16b
	dup	v2.4s, v2.s[0]
	eor3	v2.16b, v3.16b, v5.16b, v2.16b
	movi	v3.4s, #1
	eor3	v2.16b, v2.16b, v1.16b, v3.16b
	tbl	v3.16b, { v2.16b }, v19.16b
	ext	v4.16b, v0.16b, v2.16b, #12
	ext	v5.16b, v0.16b, v2.16b, #8
	ext	v6.16b, v0.16b, v2.16b, #4
	stp	q1, q2, [x0]
	aese	v3.16b, v0.16b
	dup	v3.4s, v3.s[0]
	eor	v3.16b, v4.16b, v3.16b
	movi	v4.4s, #2
	eor3	v3.16b, v3.16b, v5.16b, v6.16b
	eor3	v3.16b, v3.16b, v2.16b, v4.16b
	tbl	v4.16b, { v3.16b }, v19.16b
	ext	v5.16b, v0.16b, v3.16b, #12
	ext	v6.16b, v0.16b, v3.16b, #8
	ext	v7.16b, v0.16b, v3.16b, #4
	aese	v4.16b, v0.16b
	dup	v4.4s, v4.s[0]
	eor	v4.16b, v5.16b, v4.16b
	movi	v5.4s, #4
	eor3	v4.16b, v4.16b, v6.16b, v7.16b
	eor3	v4.16b, v4.16b, v3.16b, v5.16b
	tbl	v5.16b, { v4.16b }, v19.16b
	ext	v6.16b, v0.16b, v4.16b, #12
	ext	v7.16b, v0.16b, v4.16b, #8
	ext	v16.16b, v0.16b, v4.16b, #4
	stp	q3, q4, [x0, #32]
	aese	v5.16b, v0.16b
	dup	v5.4s, v5.s[0]
	eor	v5.16b, v6.16b, v5.16b
	movi	v6.4s, #8
	eor3	v5.16b, v5.16b, v7.16b, v16.16b
	eor3	v5.16b, v5.16b, v4.16b, v6.16b
	tbl	v6.16b, { v5.16b }, v19.16b
	ext	v7.16b, v0.16b, v5.16b, #12
	ext	v16.16b, v0.16b, v5.16b, #8
	ext	v17.16b, v0.16b, v5.16b, #4
	aese	v6.16b, v0.16b
	dup	v6.4s, v6.s[0]
	eor	v6.16b, v7.16b, v6.16b
	movi	v7.4s, #16
	eor3	v6.16b, v6.16b, v16.16b, v17.16b
	eor3	v6.16b, v6.16b, v5.16b, v7.16b
	tbl	v7.16b, { v6.16b }, v19.16b
	ext	v16.16b, v0.16b, v6.16b, #12
	ext	v17.16b, v0.16b, v6.16b, #8
	ext	v18.16b, v0.16b, v6.16b, #4
	aese	v7.16b, v0.16b
	stp	q5, q6, [x0, #64]
	dup	v7.4s, v7.s[0]
	eor	v7.16b, v16.16b, v7.16b
	movi	v16.4s, #32
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	eor3	v7.16b, v7.16b, v6.16b, v16.16b
	tbl	v16.16b, { v7.16b }, v19.16b
	ext	v17.16b, v0.16b, v7.16b, #12
	ext	v18.16b, v0.16b, v7.16b, #8
	ext	v20.16b, v0.16b, v7.16b, #4
	aese	v16.16b, v0.16b
	dup	v16.4s, v16.s[0]
	eor	v16.16b, v17.16b, v16.16b
	movi	v17.4s, #64
	eor3	v16.16b, v16.16b, v18.16b, v20.16b
	eor3	v16.16b, v16.16b, v7.16b, v17.16b
	tbl	v17.16b, { v16.16b }, v19.16b
	ext	v18.16b, v0.16b, v16.16b, #12
	ext	v20.16b, v0.16b, v16.16b, #8
	ext	v21.16b, v0.16b, v16.16b, #4
	aese	v17.16b, v0.16b
	dup	v17.4s, v17.s[0]
	stp	q7, q16, [x0, #96]
	eor	v17.16b, v18.16b, v17.16b
	movi	v18.4s, #128
	eor3	v17.16b, v17.16b, v20.16b, v21.16b
	eor3	v17.16b, v17.16b, v16.16b, v18.16b
	tbl	v18.16b, { v17.16b }, v19.16b
	ext	v20.16b, v0.16b, v17.16b, #12
	ext	v21.16b, v0.16b, v17.16b, #8
	ext	v22.16b, v0.16b, v17.16b, #4
	aese	v18.16b, v0.16b
	dup	v18.4s, v18.s[0]
	eor	v18.16b, v20.16b, v18.16b
	movi	v20.4s, #27
	eor3	v18.16b, v18.16b, v21.16b, v22.16b
	eor3	v18.16b, v18.16b, v17.16b, v20.16b
	tbl	v19.16b, { v18.16b }, v19.16b
	ext	v20.16b, v0.16b, v18.16b, #12
	ext	v21.16b, v0.16b, v18.16b, #8
	ext	v22.16b, v0.16b, v18.16b, #4
	stp	q17, q18, [x0, #128]
	aese	v19.16b, v0.16b
	dup	v19.4s, v19.s[0]
	eor	v23.16b, v20.16b, v19.16b
	eor3	v19.16b, v20.16b, v19.16b, v21.16b
	eor3	v20.16b, v23.16b, v21.16b, v22.16b
	eor3	v21.16b, v19.16b, v22.16b, v18.16b
	movi	v22.4s, #54
	eor3	v19.16b, v20.16b, v18.16b, v22.16b
	movi	v20.2d, #0000000000000000
	aese	v20.16b, v1.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v2.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v3.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v4.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v5.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v6.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v7.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v16.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v17.16b
	aesmc	v20.16b, v20.16b
	aese	v20.16b, v18.16b
	eor3	v20.16b, v21.16b, v22.16b, v20.16b
	rev64	v20.16b, v20.16b
	mov	x8, v20.d[1]
	fmov	x9, d20
	extr	x10, x8, x9, #63
	extr	x8, x9, x8, #63
	and	x9, x11, x9, asr #63
	eor	x8, x9, x8
	fmov	d21, x10
	dup	v25.2d, x10
	fmov	d20, x10
	fmov	d28, x8
	dup	v26.2d, x8
	pmull	v24.1q, v21.1d, v21.1d
	mov	v20.d[1], x8
	mov	w8, #1
	pmull	v22.1q, v21.1d, v28.1d
	pmull	v29.1q, v28.1d, v28.1d
	eor	v22.16b, v22.16b, v22.16b
	zip1	v23.2d, v0.2d, v22.2d
	zip2	v22.2d, v22.2d, v0.2d
	stp	q19, q20, [x0, #160]
	eor	v24.16b, v23.16b, v24.16b
	fmov	d23, x11
	ext	v27.16b, v24.16b, v24.16b, #8
	pmull	v24.1q, v24.1d, v23.1d
	eor	v24.16b, v27.16b, v24.16b
	pmull	v27.1q, v24.1d, v23.1d
	ext	v24.16b, v24.16b, v24.16b, #8
	eor	v27.16b, v29.16b, v27.16b
	eor3	v22.16b, v27.16b, v22.16b, v24.16b
	pmull	v24.1q, v22.1d, v28.1d
	pmull2	v27.1q, v22.2d, v25.2d
	pmull	v29.1q, v22.1d, v21.1d
	pmull2	v30.1q, v22.2d, v26.2d
	pmull2	v31.1q, v22.2d, v22.2d
	eor	v24.16b, v27.16b, v24.16b
	zip1	v27.2d, v0.2d, v24.2d
	zip2	v24.2d, v24.2d, v0.2d
	eor	v27.16b, v27.16b, v29.16b
	ext	v29.16b, v27.16b, v27.16b, #8
	pmull	v27.1q, v27.1d, v23.1d
	eor	v27.16b, v29.16b, v27.16b
	pmull	v29.1q, v27.1d, v23.1d
	ext	v27.16b, v27.16b, v27.16b, #8
	eor	v29.16b, v30.16b, v29.16b
	pmull	v30.1q, v22.1d, v22.1d
	eor3	v24.16b, v29.16b, v24.16b, v27.16b
	dup	v27.2d, v22.d[0]
	pmull2	v27.1q, v27.2d, v22.2d
	pmull2	v9.1q, v24.2d, v24.2d
	stp	q22, q24, [x0, #192]
	eor	v27.16b, v27.16b, v27.16b
	zip1	v29.2d, v0.2d, v27.2d
	zip2	v27.2d, v27.2d, v0.2d
	eor	v29.16b, v29.16b, v30.16b
	ext	v30.16b, v29.16b, v29.16b, #8
	pmull	v29.1q, v29.1d, v23.1d
	eor	v29.16b, v30.16b, v29.16b
	pmull	v30.1q, v29.1d, v23.1d
	ext	v29.16b, v29.16b, v29.16b, #8
	eor	v30.16b, v31.16b, v30.16b
	eor3	v27.16b, v30.16b, v27.16b, v29.16b
	pmull	v29.1q, v27.1d, v28.1d
	pmull2	v30.1q, v27.2d, v25.2d
	pmull	v31.1q, v27.1d, v21.1d
	pmull2	v8.1q, v27.2d, v26.2d
	pmull2	v3.1q, v27.2d, v27.2d
	eor	v29.16b, v30.16b, v29.16b
	zip1	v30.2d, v0.2d, v29.2d
	zip2	v29.2d, v29.2d, v0.2d
	eor	v30.16b, v30.16b, v31.16b
	ext	v31.16b, v30.16b, v30.16b, #8
	pmull	v30.1q, v30.1d, v23.1d
	eor	v30.16b, v31.16b, v30.16b
	pmull	v31.1q, v30.1d, v23.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v31.16b, v8.16b, v31.16b
	pmull	v8.1q, v24.1d, v24.1d
	eor3	v29.16b, v31.16b, v29.16b, v30.16b
	dup	v30.2d, v24.d[0]
	pmull2	v30.1q, v30.2d, v24.2d
	eor	v30.16b, v30.16b, v30.16b
	stp	q27, q29, [x0, #224]
	zip1	v31.2d, v0.2d, v30.2d
	zip2	v30.2d, v30.2d, v0.2d
	eor	v31.16b, v31.16b, v8.16b
	ext	v8.16b, v31.16b, v31.16b, #8
	pmull	v31.1q, v31.1d, v23.1d
	eor	v31.16b, v8.16b, v31.16b
	pmull	v8.1q, v31.1d, v23.1d
	ext	v31.16b, v31.16b, v31.16b, #8
	eor	v8.16b, v9.16b, v8.16b
	eor3	v30.16b, v8.16b, v30.16b, v31.16b
	pmull	v28.1q, v30.1d, v28.1d
	pmull2	v25.1q, v30.2d, v25.2d
	pmull	v21.1q, v30.1d, v21.1d
	pmull2	v26.1q, v30.2d, v26.2d
	eor	v25.16b, v25.16b, v28.16b
	zip1	v28.2d, v0.2d, v25.2d
	zip2	v25.2d, v25.2d, v0.2d
	eor	v21.16b, v28.16b, v21.16b
	ext	v28.16b, v21.16b, v21.16b, #8
	pmull	v21.1q, v21.1d, v23.1d
	eor	v21.16b, v28.16b, v21.16b
	pmull	v28.1q, v21.1d, v23.1d
	ext	v21.16b, v21.16b, v21.16b, #8
	eor	v26.16b, v26.16b, v28.16b
	pmull	v28.1q, v27.1d, v27.1d
	eor3	v21.16b, v26.16b, v25.16b, v21.16b
	dup	v25.2d, v27.d[0]
	pmull2	v25.1q, v25.2d, v27.2d
	stp	q30, q21, [x0, #256]
	eor	v25.16b, v25.16b, v25.16b
	zip1	v26.2d, v0.2d, v25.2d
	zip2	v0.2d, v25.2d, v0.2d
	eor	v26.16b, v26.16b, v28.16b
	ext	v28.16b, v26.16b, v26.16b, #8
	pmull	v1.1q, v26.1d, v23.1d
	eor	v1.16b, v28.16b, v1.16b
	pmull	v2.1q, v1.1d, v23.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v2.16b, v3.16b, v2.16b
	eor3	v0.16b, v2.16b, v0.16b, v1.16b
	str	q0, [x0, #288]
	ldp	d9, d8, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore b8
	.cfi_restore b9
.LBB2_4:
	mov	w0, w8
	ret
.Lfunc_end2:
	.size	haberdashery_aes128gcm_neoversev2_init, .Lfunc_end2-haberdashery_aes128gcm_neoversev2_init
	.cfi_endproc

	.section	.text.haberdashery_aes128gcm_neoversev2_is_supported,"ax",@progbits
	.globl	haberdashery_aes128gcm_neoversev2_is_supported
	.p2align	4
	.type	haberdashery_aes128gcm_neoversev2_is_supported,@function
haberdashery_aes128gcm_neoversev2_is_supported:
	.cfi_startproc
	//APP
	mrs	x8, ID_AA64ISAR0_EL1
	//NO_APP
	tst	x8, #0xe0
	//APP
	mrs	x9, ID_AA64PFR0_EL1
	//NO_APP
	mvn	w10, w9
	//APP
	mrs	x11, ID_AA64ZFR0_EL1
	//NO_APP
	cset	w12, ne
	tst	x8, #0xf00000000
	csel	w8, wzr, w12, eq
	tst	x10, #0xf00000
	cset	w10, ne
	tst	x9, #0xf00000000
	csel	w9, wzr, w10, eq
	tst	x11, #0xf
	cset	w10, ne
	tst	x11, #0xf00000000
	csel	w10, wzr, w10, eq
	and	w8, w8, w10
	and	w0, w8, w9
	ret
.Lfunc_end3:
	.size	haberdashery_aes128gcm_neoversev2_is_supported, .Lfunc_end3-haberdashery_aes128gcm_neoversev2_is_supported
	.cfi_endproc

	.type	HABERDASHERY_AES128GCM_NEOVERSEV2_KEY_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_NEOVERSEV2_KEY_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_NEOVERSEV2_KEY_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_NEOVERSEV2_KEY_SIZE:
	.asciz	"\020\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_NEOVERSEV2_KEY_SIZE, 8

	.type	HABERDASHERY_AES128GCM_NEOVERSEV2_NONCE_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_NEOVERSEV2_NONCE_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_NEOVERSEV2_NONCE_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_NEOVERSEV2_NONCE_SIZE:
	.asciz	"\f\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_NEOVERSEV2_NONCE_SIZE, 8

	.type	HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_ALIGN,@object
	.section	.rodata.HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_ALIGN,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_ALIGN
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_ALIGN:
	.asciz	"\020\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_ALIGN, 8

	.type	HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_SIZE:
	.asciz	"0\001\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_NEOVERSEV2_STRUCT_SIZE, 8

	.type	HABERDASHERY_AES128GCM_NEOVERSEV2_TAG_SIZE,@object
	.section	.rodata.HABERDASHERY_AES128GCM_NEOVERSEV2_TAG_SIZE,"a",@progbits
	.globl	HABERDASHERY_AES128GCM_NEOVERSEV2_TAG_SIZE
	.p2align	3, 0x0
HABERDASHERY_AES128GCM_NEOVERSEV2_TAG_SIZE:
	.asciz	"\020\000\000\000\000\000\000"
	.size	HABERDASHERY_AES128GCM_NEOVERSEV2_TAG_SIZE, 8

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01)"
	.section	".note.GNU-stack","",@progbits

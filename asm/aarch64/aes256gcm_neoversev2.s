# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


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
	.section	.text.haberdashery_aes256gcm_neoversev2_decrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_neoversev2_decrypt
	.p2align	4
	.type	haberdashery_aes256gcm_neoversev2_decrypt,@function
haberdashery_aes256gcm_neoversev2_decrypt:
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
	.cfi_remember_state
	sub	sp, sp, #688
	ldr	x8, [x29, #112]
	cmp	x6, x8
	b.ne	.LBB0_11
	mov	x9, #2305843009213693950
	mov	w8, wzr
	cmp	x4, x9
	b.hi	.LBB0_12
	ldr	x9, [x29, #96]
	cmp	x9, #16
	b.ne	.LBB0_12
	mov	w8, wzr
	cmp	x2, #12
	b.ne	.LBB0_12
	mov	x9, #68719411200
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB0_12
	movi	v14.4s, #1, lsl #24
	add	x8, x1, #8
	movi	v10.2d, #0000000000000000
	ld1	{ v14.s }[0], [x1], #4
	ld1	{ v14.s }[1], [x1]
	ld1	{ v14.s }[2], [x8]
	str	q14, [sp]
	cbz	x4, .LBB0_20
	subs	x19, x4, #128
	b.lo	.LBB0_13
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	ldp	x13, x14, [x0, #240]
	ldp	q4, q5, [x3, #64]
	rev64	v22.16b, v1.16b
	ldp	q6, q7, [x3, #96]
	dup	v1.2d, x14
	ldp	x15, x16, [x0, #256]
	rev64	v18.16b, v3.16b
	rev64	v17.16b, v5.16b
	ldp	x17, x18, [x0, #272]
	ldp	x1, x2, [x0, #288]
	ldp	x20, x21, [x0, #304]
	ldp	x22, x12, [x0, #320]
	ldp	x11, x10, [x0, #336]
	ldp	x8, x9, [x0, #352]
	add	x3, x3, #128
	rev64	v24.16b, v0.16b
	dup	v0.2d, x13
	rev64	v20.16b, v2.16b
	rev64	v2.16b, v7.16b
	rev64	v16.16b, v4.16b
	rev64	v4.16b, v6.16b
	pmull2	v3.1q, v1.2d, v2.2d
	pmull	v7.1q, v1.1d, v2.1d
	pmull	v6.1q, v0.1d, v2.1d
	pmull2	v5.1q, v0.2d, v2.2d
	dup	v2.2d, x15
	eor	v6.16b, v6.16b, v3.16b
	dup	v3.2d, x16
	pmull2	v19.1q, v2.2d, v4.2d
	pmull	v23.1q, v2.1d, v4.1d
	pmull2	v21.1q, v3.2d, v4.2d
	pmull	v4.1q, v3.1d, v4.1d
	eor	v19.16b, v19.16b, v5.16b
	dup	v5.2d, x18
	eor3	v6.16b, v6.16b, v21.16b, v23.16b
	eor	v21.16b, v4.16b, v7.16b
	dup	v4.2d, x17
	pmull2	v7.1q, v5.2d, v17.2d
	pmull	v25.1q, v4.1d, v17.1d
	pmull2	v23.1q, v4.2d, v17.2d
	pmull	v17.1q, v5.1d, v17.1d
	eor3	v25.16b, v6.16b, v7.16b, v25.16b
	dup	v6.2d, x1
	dup	v7.2d, x2
	pmull2	v26.1q, v6.2d, v16.2d
	pmull2	v27.1q, v7.2d, v16.2d
	pmull	v28.1q, v6.1d, v16.1d
	pmull	v16.1q, v7.1d, v16.1d
	eor3	v21.16b, v21.16b, v17.16b, v16.16b
	dup	v16.2d, x20
	dup	v17.2d, x21
	eor3	v23.16b, v19.16b, v23.16b, v26.16b
	eor3	v19.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v17.2d, v18.2d
	pmull	v27.1q, v16.1d, v18.1d
	pmull2	v25.1q, v16.2d, v18.2d
	pmull	v28.1q, v17.1d, v18.1d
	dup	v18.2d, x22
	eor3	v26.16b, v19.16b, v26.16b, v27.16b
	dup	v19.2d, x12
	pmull2	v27.1q, v18.2d, v20.2d
	pmull	v30.1q, v18.1d, v20.1d
	pmull2	v29.1q, v19.2d, v20.2d
	pmull	v20.1q, v19.1d, v20.1d
	eor3	v25.16b, v23.16b, v25.16b, v27.16b
	eor3	v28.16b, v21.16b, v28.16b, v20.16b
	dup	v20.2d, x11
	dup	v21.2d, x10
	eor3	v23.16b, v26.16b, v29.16b, v30.16b
	pmull2	v27.1q, v21.2d, v22.2d
	pmull	v29.1q, v20.1d, v22.1d
	pmull2	v26.1q, v20.2d, v22.2d
	pmull	v30.1q, v21.1d, v22.1d
	dup	v22.2d, x8
	eor3	v27.16b, v23.16b, v27.16b, v29.16b
	dup	v23.2d, x9
	pmull2	v29.1q, v22.2d, v24.2d
	pmull	v8.1q, v22.1d, v24.1d
	pmull2	v31.1q, v23.2d, v24.2d
	pmull	v24.1q, v23.1d, v24.1d
	eor3	v26.16b, v25.16b, v26.16b, v29.16b
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v30.16b, v24.16b
	cmp	x4, #256
	b.lo	.LBB0_10
	mov	x10, #-4467570830351532032
	movi	v24.2d, #0000000000000000
	.p2align	5, , 16
.LBB0_9:
	zip1	v12.2d, v24.2d, v27.2d
	ldp	q28, q29, [x3]
	zip2	v27.2d, v27.2d, v24.2d
	sub	x19, x19, #128
	ldp	q30, q31, [x3, #32]
	ldp	q8, q9, [x3, #64]
	eor	v26.16b, v12.16b, v26.16b
	fmov	d12, x10
	ldp	q10, q11, [x3, #96]
	add	x3, x3, #128
	pmull	v13.1q, v26.1d, v12.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v13.16b
	pmull	v12.1q, v26.1d, v12.1d
	ext	v13.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v30.16b
	rev64	v30.16b, v8.16b
	rev64	v8.16b, v10.16b
	eor3	v25.16b, v25.16b, v27.16b, v12.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v29.16b
	rev64	v29.16b, v31.16b
	rev64	v31.16b, v9.16b
	rev64	v9.16b, v11.16b
	pmull2	v12.1q, v3.2d, v8.2d
	pmull2	v10.1q, v1.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v27.16b, v25.16b, v13.16b
	pmull2	v27.1q, v0.2d, v9.2d
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
	fmov	d26, x8
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x9
	pmull2	v8.1q, v22.2d, v25.2d
	pmull	v26.1q, v26.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v25.1q, v23.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x19, #127
	b.hi	.LBB0_9
.LBB0_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x8, #-4467570830351532032
	zip2	v0.2d, v27.2d, v0.2d
	fmov	d2, x8
	eor	v1.16b, v1.16b, v26.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v25.16b, v0.16b, v2.16b
	eor	v10.16b, v1.16b, v0.16b
	b	.LBB0_14
.LBB0_11:
	mov	w8, wzr
.LBB0_12:
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
.LBB0_13:
	.cfi_restore_state
	mov	x19, x4
.LBB0_14:
	cmp	x19, #16
	b.lo	.LBB0_17
	ldp	x8, x9, [x0, #240]
	movi	v4.2d, #0000000000000000
	dup	v0.2d, x8
	fmov	d1, x8
	mov	x8, #-4467570830351532032
	dup	v2.2d, x9
	fmov	d3, x9
	fmov	d5, x8
	.p2align	5, , 16
.LBB0_16:
	ldr	q6, [x3], #16
	sub	x19, x19, #16
	rev64	v6.16b, v6.16b
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v10.16b
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
	eor3	v10.16b, v16.16b, v6.16b, v7.16b
	cmp	x19, #15
	b.hi	.LBB0_16
.LBB0_17:
	cbz	x19, .LBB0_20
	mov	w8, #16
	mov	x24, x0
	stur	q10, [x29, #-128]
	mov	x23, x5
	mov	x21, x4
	sub	x2, x8, x19
	sub	x8, x29, #80
	mov	x22, x7
	mov	w1, wzr
	mov	x25, x6
	mov	x20, x3
	add	x0, x8, x19
	bl	memset
	sub	x0, x29, #80
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-80]
	mov	x6, x25
	cbz	x25, .LBB0_32
	ldur	q1, [x29, #-128]
	rev64	v0.16b, v0.16b
	ldp	x8, x9, [x24, #240]
	ldr	q14, [sp]
	mov	x0, x24
	mov	x7, x22
	mov	x4, x21
	mov	x5, x23
	ext	v0.16b, v0.16b, v0.16b, #8
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
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
	eor3	v10.16b, v1.16b, v0.16b, v2.16b
	b	.LBB0_21
.LBB0_20:
	cbz	x6, .LBB0_34
.LBB0_21:
	adrp	x8, .LCPI0_0
	ldr	x19, [x29, #104]
	rev32	v1.16b, v14.16b
	ldr	q11, [x8, :lo12:.LCPI0_0]
	add	v9.4s, v1.4s, v11.4s
	cmp	x6, #128
	b.lo	.LBB0_25
	ldr	q7, [x0]
	ldp	q2, q3, [x0, #288]
	adrp	x8, .LCPI0_1
	mov	x20, x6
	ldp	q0, q1, [x0, #256]
	ldp	q4, q5, [x0, #320]
	ldr	q6, [x0, #352]
	stur	q11, [x29, #-160]
	stur	q1, [x29, #-192]
	ext	v1.16b, v1.16b, v1.16b, #8
	stur	q5, [x29, #-256]
	ext	v5.16b, v5.16b, v5.16b, #8
	stur	q3, [x29, #-224]
	ext	v3.16b, v3.16b, v3.16b, #8
	str	q7, [sp, #464]
	ldr	q7, [x0, #16]
	stur	q2, [x29, #-208]
	ext	v2.16b, v2.16b, v2.16b, #8
	str	q1, [sp, #64]
	stur	q0, [x29, #-176]
	ext	v1.16b, v0.16b, v0.16b, #8
	str	q6, [sp, #480]
	ext	v6.16b, v6.16b, v6.16b, #8
	stur	q4, [x29, #-240]
	ext	v4.16b, v4.16b, v4.16b, #8
	str	q5, [sp, #256]
	stp	q2, q3, [sp, #208]
	ldr	q2, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_2
	str	q4, [sp, #240]
	str	q7, [sp, #448]
	ldp	q3, q7, [x0, #32]
	str	q2, [sp, #192]
	ldr	q2, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_3
	str	q3, [sp, #432]
	str	q2, [sp, #176]
	ldr	q2, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	str	q7, [sp, #416]
	ldp	q3, q7, [x0, #64]
	str	q2, [sp, #160]
	ldr	q2, [x8, :lo12:.LCPI0_4]
	adrp	x8, .LCPI0_5
	str	q3, [sp, #400]
	str	q2, [sp, #144]
	ldr	q2, [x8, :lo12:.LCPI0_5]
	adrp	x8, .LCPI0_6
	str	q7, [sp, #384]
	ldp	q3, q4, [x0, #96]
	str	q2, [sp, #128]
	ldr	q2, [x8, :lo12:.LCPI0_6]
	adrp	x8, .LCPI0_7
	str	q3, [sp, #368]
	str	q2, [sp, #112]
	ldr	q5, [x8, :lo12:.LCPI0_7]
	mov	x8, #-4467570830351532032
	ldp	q3, q7, [x0, #128]
	ldp	q17, q2, [x0, #224]
	stp	q3, q4, [sp, #336]
	ext	v0.16b, v2.16b, v2.16b, #8
	stp	q2, q5, [sp, #80]
	stp	q0, q1, [sp, #32]
	ldp	q0, q23, [x0, #192]
	str	q7, [sp, #320]
	ldp	q1, q7, [x0, #160]
	str	q0, [sp, #16]
	str	q1, [sp, #304]
	stp	q6, q7, [sp, #272]
	.p2align	5, , 16
.LBB0_23:
	ldp	q0, q6, [sp, #176]
	add	v5.4s, v9.4s, v11.4s
	rev32	v28.16b, v9.16b
	add	x9, x5, #128
	ldp	q4, q27, [x5]
	ldp	q16, q1, [x5, #96]
	rev32	v29.16b, v5.16b
	ldp	q3, q26, [x5, #32]
	add	x10, x19, #128
	sub	x20, x20, #128
	ldp	q2, q25, [x5, #64]
	mov	x5, x9
	add	v5.4s, v9.4s, v6.4s
	rev64	v11.16b, v27.16b
	stp	q1, q9, [x29, #-128]
	rev64	v13.16b, v26.16b
	rev64	v21.16b, v1.16b
	rev64	v19.16b, v25.16b
	rev32	v30.16b, v5.16b
	add	v5.4s, v9.4s, v0.4s
	ldp	q0, q6, [sp, #144]
	rev64	v12.16b, v3.16b
	stur	q16, [x29, #-144]
	rev64	v18.16b, v16.16b
	ldp	q24, q16, [sp, #256]
	rev64	v14.16b, v2.16b
	rev32	v31.16b, v5.16b
	add	v5.4s, v9.4s, v6.4s
	rev32	v8.16b, v5.16b
	add	v5.4s, v9.4s, v0.4s
	ldp	q0, q1, [sp, #112]
	rev32	v7.16b, v5.16b
	add	v5.4s, v9.4s, v1.4s
	rev32	v6.16b, v5.16b
	add	v5.4s, v9.4s, v0.4s
	rev64	v9.16b, v4.16b
	ext	v9.16b, v9.16b, v9.16b, #8
	rev32	v5.16b, v5.16b
	eor	v15.16b, v10.16b, v9.16b
	ldp	q0, q10, [sp, #464]
	movi	v9.2d, #0000000000000000
	//APP
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v0.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v0.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v0.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v0.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v0.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v0.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v0.16b
	aesmc	v5.16b, v5.16b
	pmull	v20.1q, v15.1d, v10.1d
	pmull2	v10.1q, v15.2d, v10.2d
	pmull	v22.1q, v15.1d, v16.1d
	pmull2	v15.1q, v15.2d, v16.2d
	eor3	v9.16b, v9.16b, v22.16b, v15.16b
	//NO_APP
	ext	v22.16b, v11.16b, v11.16b, #8
	ldur	q11, [x29, #-256]
	ldp	q0, q1, [sp, #432]
	//APP
	aese	v28.16b, v1.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v1.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v1.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v1.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v1.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v1.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v1.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v1.16b
	aesmc	v5.16b, v5.16b
	pmull	v15.1q, v22.1d, v11.1d
	pmull2	v11.1q, v22.2d, v11.2d
	pmull	v16.1q, v22.1d, v24.1d
	pmull2	v22.1q, v22.2d, v24.2d
	eor3	v9.16b, v9.16b, v16.16b, v22.16b
	//NO_APP
	eor	v16.16b, v15.16b, v20.16b
	ext	v20.16b, v12.16b, v12.16b, #8
	ldur	q12, [x29, #-240]
	ldp	q1, q24, [sp, #224]
	//APP
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v0.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v0.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v0.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v0.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v0.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v0.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v0.16b
	aesmc	v5.16b, v5.16b
	pmull	v22.1q, v20.1d, v12.1d
	pmull2	v12.1q, v20.2d, v12.2d
	pmull	v15.1q, v20.1d, v24.1d
	pmull2	v20.1q, v20.2d, v24.2d
	eor3	v9.16b, v9.16b, v15.16b, v20.16b
	//NO_APP
	ext	v20.16b, v13.16b, v13.16b, #8
	ldur	q13, [x29, #-224]
	ldr	q24, [sp, #416]
	//APP
	aese	v28.16b, v24.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v24.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v24.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v24.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v24.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v24.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	pmull	v15.1q, v20.1d, v13.1d
	pmull2	v13.1q, v20.2d, v13.2d
	pmull	v0.1q, v20.1d, v1.1d
	pmull2	v20.1q, v20.2d, v1.2d
	eor3	v9.16b, v9.16b, v0.16b, v20.16b
	//NO_APP
	ldr	q24, [sp, #400]
	ldr	q1, [sp, #208]
	eor3	v0.16b, v16.16b, v22.16b, v15.16b
	ext	v16.16b, v14.16b, v14.16b, #8
	ldp	q14, q15, [x29, #-208]
	//APP
	aese	v28.16b, v24.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v24.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v24.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v24.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v24.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v24.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	pmull	v20.1q, v16.1d, v14.1d
	pmull2	v14.1q, v16.2d, v14.2d
	pmull	v22.1q, v16.1d, v1.1d
	pmull2	v16.1q, v16.2d, v1.2d
	eor3	v9.16b, v9.16b, v22.16b, v16.16b
	//NO_APP
	ext	v16.16b, v19.16b, v19.16b, #8
	ldr	q24, [sp, #384]
	ldr	q1, [sp, #64]
	//APP
	aese	v28.16b, v24.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v24.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v24.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v24.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v24.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v24.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	pmull	v19.1q, v16.1d, v15.1d
	pmull2	v15.1q, v16.2d, v15.2d
	pmull	v22.1q, v16.1d, v1.1d
	pmull2	v16.1q, v16.2d, v1.2d
	eor3	v9.16b, v9.16b, v22.16b, v16.16b
	//NO_APP
	ext	v16.16b, v18.16b, v18.16b, #8
	ldur	q18, [x29, #-176]
	ldr	q1, [sp, #48]
	ldp	q24, q22, [sp, #352]
	eor3	v0.16b, v0.16b, v20.16b, v19.16b
	//APP
	aese	v28.16b, v22.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v22.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v22.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v22.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v22.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v22.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	pmull	v19.1q, v16.1d, v18.1d
	pmull2	v18.1q, v16.2d, v18.2d
	pmull	v20.1q, v16.1d, v1.1d
	pmull2	v16.1q, v16.2d, v1.2d
	eor3	v9.16b, v9.16b, v20.16b, v16.16b
	//NO_APP
	ext	v16.16b, v21.16b, v21.16b, #8
	ldr	q21, [sp, #80]
	ldr	q1, [sp, #32]
	//APP
	aese	v28.16b, v24.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v24.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v24.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v24.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v24.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v24.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	pmull	v20.1q, v16.1d, v21.1d
	pmull2	v21.1q, v16.2d, v21.2d
	pmull	v22.1q, v16.1d, v1.1d
	pmull2	v16.1q, v16.2d, v1.2d
	eor3	v9.16b, v9.16b, v22.16b, v16.16b
	//NO_APP
	movi	v1.2d, #0000000000000000
	zip1	v16.2d, v1.2d, v9.2d
	eor3	v19.16b, v0.16b, v19.16b, v20.16b
	eor3	v0.16b, v11.16b, v10.16b, v12.16b
	ldur	q11, [x29, #-160]
	eor3	v0.16b, v0.16b, v13.16b, v14.16b
	eor	v16.16b, v16.16b, v19.16b
	eor3	v0.16b, v0.16b, v15.16b, v18.16b
	zip2	v18.2d, v9.2d, v1.2d
	ldur	q9, [x29, #-112]
	eor3	v0.16b, v0.16b, v21.16b, v18.16b
	fmov	d18, x8
	pmull	v19.1q, v16.1d, v18.1d
	ext	v16.16b, v16.16b, v16.16b, #8
	eor	v16.16b, v16.16b, v19.16b
	pmull	v18.1q, v16.1d, v18.1d
	ext	v16.16b, v16.16b, v16.16b, #8
	eor3	v10.16b, v0.16b, v18.16b, v16.16b
	ldp	q0, q1, [sp, #320]
	//APP
	aese	v28.16b, v1.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v1.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v1.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v1.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v1.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v1.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v1.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v1.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	//APP
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v0.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v0.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v0.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v0.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v0.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v0.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v0.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	ldp	q0, q1, [sp, #288]
	//APP
	aese	v28.16b, v1.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v1.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v1.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v1.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v1.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v1.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v1.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v1.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	//APP
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v0.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v0.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v0.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v0.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v0.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v0.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v0.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	ldr	q0, [sp, #16]
	//APP
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v29.16b, v0.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v0.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v0.16b
	aesmc	v31.16b, v31.16b
	aese	v8.16b, v0.16b
	aesmc	v8.16b, v8.16b
	aese	v7.16b, v0.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v0.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v0.16b
	aesmc	v5.16b, v5.16b
	//NO_APP
	aese	v28.16b, v23.16b
	aese	v29.16b, v23.16b
	aese	v8.16b, v23.16b
	aese	v7.16b, v23.16b
	ldur	q1, [x29, #-144]
	aese	v6.16b, v23.16b
	aese	v5.16b, v23.16b
	aese	v30.16b, v23.16b
	aese	v31.16b, v23.16b
	eor3	v0.16b, v17.16b, v28.16b, v4.16b
	eor3	v4.16b, v17.16b, v29.16b, v27.16b
	eor3	v2.16b, v17.16b, v8.16b, v2.16b
	eor3	v3.16b, v17.16b, v30.16b, v3.16b
	eor3	v16.16b, v17.16b, v31.16b, v26.16b
	eor3	v1.16b, v17.16b, v6.16b, v1.16b
	stp	q0, q4, [x19]
	eor3	v0.16b, v17.16b, v7.16b, v25.16b
	stp	q3, q16, [x19, #32]
	stp	q2, q0, [x19, #64]
	ldur	q0, [x29, #-128]
	eor3	v0.16b, v17.16b, v5.16b, v0.16b
	stp	q1, q0, [x19, #96]
	ldr	q0, [sp, #96]
	mov	x19, x10
	add	v9.4s, v9.4s, v0.4s
	cmp	x20, #127
	b.hi	.LBB0_23
	ldr	q14, [sp]
	mov	x19, x10
	mov	x5, x9
	b	.LBB0_26
.LBB0_25:
	mov	x20, x6
.LBB0_26:
	mov	x23, x4
	cmp	x20, #16
	b.lo	.LBB0_29
	ldp	x8, x9, [x0, #240]
	ldp	q1, q2, [x0]
	movi	v27.2d, #0000000000000000
	ldp	q3, q4, [x0, #32]
	ldp	q5, q6, [x0, #64]
	ldp	q7, q16, [x0, #96]
	dup	v21.2d, x8
	ldr	q29, [x0, #224]
	fmov	d22, x8
	ldp	q17, q18, [x0, #128]
	ldp	q19, q20, [x0, #160]
	ldp	q24, q25, [x0, #192]
	mov	x8, #-4467570830351532032
	dup	v23.2d, x9
	fmov	d26, x9
	fmov	d28, x8
	.p2align	5, , 16
.LBB0_28:
	rev32	v30.16b, v9.16b
	ldr	q0, [x5], #16
	add	v9.4s, v9.4s, v11.4s
	sub	x20, x20, #16
	aese	v30.16b, v1.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v3.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v4.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v5.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v7.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v16.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v17.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v18.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v19.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v20.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v24.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v25.16b
	eor3	v30.16b, v29.16b, v30.16b, v0.16b
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	str	q30, [x19], #16
	eor	v0.16b, v0.16b, v10.16b
	pmull	v31.1q, v26.1d, v0.1d
	pmull2	v8.1q, v21.2d, v0.2d
	pmull	v30.1q, v22.1d, v0.1d
	pmull2	v0.1q, v23.2d, v0.2d
	eor	v31.16b, v8.16b, v31.16b
	zip1	v8.2d, v27.2d, v31.2d
	zip2	v31.2d, v31.2d, v27.2d
	eor	v30.16b, v8.16b, v30.16b
	pmull	v8.1q, v30.1d, v28.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v30.16b, v30.16b, v8.16b
	pmull	v8.1q, v30.1d, v28.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v0.16b, v8.16b, v0.16b
	eor3	v10.16b, v31.16b, v0.16b, v30.16b
	cmp	x20, #15
	b.hi	.LBB0_28
.LBB0_29:
	cbz	x20, .LBB0_31
	mov	w8, #16
	mov	x24, x0
	mov	w1, wzr
	mov	x25, x7
	mov	x26, x6
	mov	x22, x5
	sub	x21, x8, x20
	sub	x8, x29, #80
	stp	q10, q9, [x29, #-128]
	add	x0, x8, x20
	mov	x2, x21
	bl	memset
	sub	x0, x29, #80
	mov	x1, x22
	mov	x2, x20
	bl	memcpy
	ldur	q0, [x29, #-112]
	ldp	q1, q2, [x24]
	sub	x1, x29, #80
	sub	x22, x29, #80
	ldur	q3, [x29, #-80]
	mov	x0, x19
	mov	x2, x20
	rev32	v0.16b, v0.16b
	stur	q3, [x29, #-144]
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x24, #32]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x24, #64]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x24, #96]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x24, #128]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x24, #160]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x24, #192]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	ldr	q0, [x24, #224]
	eor3	v0.16b, v2.16b, v0.16b, v3.16b
	stur	q0, [x29, #-80]
	bl	memcpy
	ldur	q0, [x29, #-144]
	add	x0, x22, x20
	mov	w1, wzr
	mov	x2, x21
	stur	q0, [x29, #-96]
	bl	memset
	sub	x0, x29, #80
	sub	x1, x29, #96
	mov	x2, x20
	bl	memcpy
	ldur	q1, [x29, #-128]
	ldr	q14, [sp]
	ldur	q0, [x29, #-80]
	mov	x6, x26
	mov	x0, x24
	mov	x7, x25
	mov	x4, x23
	b	.LBB0_33
.LBB0_31:
	mov	x4, x23
	b	.LBB0_34
.LBB0_32:
	ldr	q14, [sp]
	ldur	q1, [x29, #-128]
	mov	x7, x22
	mov	x0, x24
	mov	x4, x21
.LBB0_33:
	rev64	v0.16b, v0.16b
	ldp	x8, x9, [x0, #240]
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	dup	v1.2d, x8
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
	mov	x8, #-4467570830351532032
	pmull	v4.1q, v4.1d, v0.1d
	pmull2	v1.1q, v1.2d, v0.2d
	pmull	v2.1q, v2.1d, v0.1d
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
	eor3	v10.16b, v1.16b, v0.16b, v2.16b
.LBB0_34:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d0, x8
	mov	v0.d[1], x9
	eor	v0.16b, v10.16b, v0.16b
	ldp	x8, x9, [x0, #240]
	dup	v1.2d, x8
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
	mov	x8, #-4467570830351532032
	pmull	v4.1q, v4.1d, v0.1d
	pmull2	v1.1q, v1.2d, v0.2d
	pmull	v2.1q, v2.1d, v0.1d
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
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	ldp	q1, q2, [x0]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	ldp	q1, q3, [x0, #32]
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x0, #64]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x0, #96]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x0, #128]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x0, #160]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x0, #192]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	ldr	q1, [x0, #224]
	eor	v0.16b, v2.16b, v0.16b
	ldr	q2, [x7]
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	b	.LBB0_12
.Lfunc_end0:
	.size	haberdashery_aes256gcm_neoversev2_decrypt, .Lfunc_end0-haberdashery_aes256gcm_neoversev2_decrypt
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
	.section	.text.haberdashery_aes256gcm_neoversev2_encrypt,"ax",@progbits
	.globl	haberdashery_aes256gcm_neoversev2_encrypt
	.p2align	4
	.type	haberdashery_aes256gcm_neoversev2_encrypt,@function
haberdashery_aes256gcm_neoversev2_encrypt:
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
	.cfi_remember_state
	sub	sp, sp, #608
	ldr	x8, [x29, #96]
	cmp	x6, x8
	b.ne	.LBB1_11
	mov	x9, #2305843009213693950
	mov	w8, wzr
	cmp	x4, x9
	b.hi	.LBB1_12
	ldr	x9, [x29, #112]
	cmp	x9, #16
	b.ne	.LBB1_12
	mov	w8, wzr
	cmp	x2, #12
	b.ne	.LBB1_12
	mov	x9, #68719411200
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB1_12
	movi	v14.4s, #1, lsl #24
	add	x8, x1, #8
	ldr	x23, [x29, #104]
	movi	v8.2d, #0000000000000000
	ld1	{ v14.s }[0], [x1], #4
	ld1	{ v14.s }[1], [x1]
	ld1	{ v14.s }[2], [x8]
	str	q14, [sp]
	cbz	x4, .LBB1_20
	subs	x19, x4, #128
	b.lo	.LBB1_13
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	ldp	x13, x14, [x0, #240]
	ldp	q4, q5, [x3, #64]
	rev64	v22.16b, v1.16b
	ldp	q6, q7, [x3, #96]
	dup	v1.2d, x14
	ldp	x15, x16, [x0, #256]
	rev64	v18.16b, v3.16b
	rev64	v17.16b, v5.16b
	ldp	x17, x18, [x0, #272]
	ldp	x1, x2, [x0, #288]
	ldp	x20, x21, [x0, #304]
	ldp	x22, x12, [x0, #320]
	ldp	x11, x10, [x0, #336]
	ldp	x8, x9, [x0, #352]
	add	x3, x3, #128
	rev64	v24.16b, v0.16b
	dup	v0.2d, x13
	rev64	v20.16b, v2.16b
	rev64	v2.16b, v7.16b
	rev64	v16.16b, v4.16b
	rev64	v4.16b, v6.16b
	pmull2	v3.1q, v1.2d, v2.2d
	pmull	v7.1q, v1.1d, v2.1d
	pmull	v6.1q, v0.1d, v2.1d
	pmull2	v5.1q, v0.2d, v2.2d
	dup	v2.2d, x15
	eor	v6.16b, v6.16b, v3.16b
	dup	v3.2d, x16
	pmull2	v19.1q, v2.2d, v4.2d
	pmull	v23.1q, v2.1d, v4.1d
	pmull2	v21.1q, v3.2d, v4.2d
	pmull	v4.1q, v3.1d, v4.1d
	eor	v19.16b, v19.16b, v5.16b
	dup	v5.2d, x18
	eor3	v6.16b, v6.16b, v21.16b, v23.16b
	eor	v21.16b, v4.16b, v7.16b
	dup	v4.2d, x17
	pmull2	v7.1q, v5.2d, v17.2d
	pmull	v25.1q, v4.1d, v17.1d
	pmull2	v23.1q, v4.2d, v17.2d
	pmull	v17.1q, v5.1d, v17.1d
	eor3	v25.16b, v6.16b, v7.16b, v25.16b
	dup	v6.2d, x1
	dup	v7.2d, x2
	pmull2	v26.1q, v6.2d, v16.2d
	pmull2	v27.1q, v7.2d, v16.2d
	pmull	v28.1q, v6.1d, v16.1d
	pmull	v16.1q, v7.1d, v16.1d
	eor3	v21.16b, v21.16b, v17.16b, v16.16b
	dup	v16.2d, x20
	dup	v17.2d, x21
	eor3	v23.16b, v19.16b, v23.16b, v26.16b
	eor3	v19.16b, v25.16b, v27.16b, v28.16b
	pmull2	v26.1q, v17.2d, v18.2d
	pmull	v27.1q, v16.1d, v18.1d
	pmull2	v25.1q, v16.2d, v18.2d
	pmull	v28.1q, v17.1d, v18.1d
	dup	v18.2d, x22
	eor3	v26.16b, v19.16b, v26.16b, v27.16b
	dup	v19.2d, x12
	pmull2	v27.1q, v18.2d, v20.2d
	pmull	v30.1q, v18.1d, v20.1d
	pmull2	v29.1q, v19.2d, v20.2d
	pmull	v20.1q, v19.1d, v20.1d
	eor3	v25.16b, v23.16b, v25.16b, v27.16b
	eor3	v28.16b, v21.16b, v28.16b, v20.16b
	dup	v20.2d, x11
	dup	v21.2d, x10
	eor3	v23.16b, v26.16b, v29.16b, v30.16b
	pmull2	v27.1q, v21.2d, v22.2d
	pmull	v29.1q, v20.1d, v22.1d
	pmull2	v26.1q, v20.2d, v22.2d
	pmull	v30.1q, v21.1d, v22.1d
	dup	v22.2d, x8
	eor3	v27.16b, v23.16b, v27.16b, v29.16b
	dup	v23.2d, x9
	pmull2	v29.1q, v22.2d, v24.2d
	pmull	v8.1q, v22.1d, v24.1d
	pmull2	v31.1q, v23.2d, v24.2d
	pmull	v24.1q, v23.1d, v24.1d
	eor3	v26.16b, v25.16b, v26.16b, v29.16b
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v30.16b, v24.16b
	cmp	x4, #256
	b.lo	.LBB1_10
	mov	x10, #-4467570830351532032
	movi	v24.2d, #0000000000000000
	.p2align	5, , 16
.LBB1_9:
	zip1	v12.2d, v24.2d, v27.2d
	ldp	q28, q29, [x3]
	zip2	v27.2d, v27.2d, v24.2d
	sub	x19, x19, #128
	ldp	q30, q31, [x3, #32]
	ldp	q8, q9, [x3, #64]
	eor	v26.16b, v12.16b, v26.16b
	fmov	d12, x10
	ldp	q10, q11, [x3, #96]
	add	x3, x3, #128
	pmull	v13.1q, v26.1d, v12.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v13.16b
	pmull	v12.1q, v26.1d, v12.1d
	ext	v13.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v30.16b
	rev64	v30.16b, v8.16b
	rev64	v8.16b, v10.16b
	eor3	v25.16b, v25.16b, v27.16b, v12.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v29.16b
	rev64	v29.16b, v31.16b
	rev64	v31.16b, v9.16b
	rev64	v9.16b, v11.16b
	pmull2	v12.1q, v3.2d, v8.2d
	pmull2	v10.1q, v1.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v27.16b, v25.16b, v13.16b
	pmull2	v27.1q, v0.2d, v9.2d
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
	fmov	d26, x8
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x9
	pmull2	v8.1q, v22.2d, v25.2d
	pmull	v26.1q, v26.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v25.1q, v23.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x19, #127
	b.hi	.LBB1_9
.LBB1_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x8, #-4467570830351532032
	zip2	v0.2d, v27.2d, v0.2d
	fmov	d2, x8
	eor	v1.16b, v1.16b, v26.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v25.16b, v0.16b, v2.16b
	eor	v8.16b, v1.16b, v0.16b
	b	.LBB1_14
.LBB1_11:
	mov	w8, wzr
.LBB1_12:
	mov	w0, w8
	add	sp, sp, #608
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
.LBB1_13:
	.cfi_restore_state
	mov	x19, x4
.LBB1_14:
	cmp	x19, #16
	b.lo	.LBB1_17
	ldp	x8, x9, [x0, #240]
	movi	v4.2d, #0000000000000000
	dup	v0.2d, x8
	fmov	d1, x8
	mov	x8, #-4467570830351532032
	dup	v2.2d, x9
	fmov	d3, x9
	fmov	d5, x8
	.p2align	5, , 16
.LBB1_16:
	ldr	q6, [x3], #16
	sub	x19, x19, #16
	rev64	v6.16b, v6.16b
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v8.16b
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
	eor3	v8.16b, v16.16b, v6.16b, v7.16b
	cmp	x19, #15
	b.hi	.LBB1_16
.LBB1_17:
	cbz	x19, .LBB1_20
	mov	w8, #16
	mov	x25, x0
	stur	q8, [x29, #-112]
	mov	x22, x5
	mov	x24, x7
	sub	x2, x8, x19
	sub	x8, x29, #80
	mov	x21, x4
	mov	w1, wzr
	mov	x26, x6
	mov	x20, x3
	add	x0, x8, x19
	bl	memset
	sub	x0, x29, #80
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-80]
	mov	x6, x26
	cbz	x26, .LBB1_34
	ldur	q1, [x29, #-112]
	rev64	v0.16b, v0.16b
	ldp	x8, x9, [x25, #240]
	ldr	q14, [sp]
	mov	x0, x25
	mov	x4, x21
	mov	x7, x24
	mov	x5, x22
	ext	v0.16b, v0.16b, v0.16b, #8
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
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
	eor3	v8.16b, v1.16b, v0.16b, v2.16b
	b	.LBB1_21
.LBB1_20:
	cbz	x6, .LBB1_36
.LBB1_21:
	adrp	x8, .LCPI1_0
	rev32	v17.16b, v14.16b
	subs	x19, x6, #128
	ldr	q0, [x8, :lo12:.LCPI1_0]
	add	v10.4s, v17.4s, v0.4s
	b.lo	.LBB1_27
	adrp	x8, .LCPI1_1
	rev32	v3.16b, v10.16b
	ldp	q12, q13, [x0]
	ldr	q30, [x0, #224]
	ldr	q23, [x8, :lo12:.LCPI1_1]
	adrp	x8, .LCPI1_2
	ldp	q14, q15, [x0, #32]
	add	x9, x5, #128
	ldr	q25, [x8, :lo12:.LCPI1_2]
	adrp	x8, .LCPI1_3
	ldp	q2, q1, [x5]
	add	v4.4s, v17.4s, v23.4s
	ldr	q26, [x8, :lo12:.LCPI1_3]
	adrp	x8, .LCPI1_4
	ldr	q31, [x8, :lo12:.LCPI1_4]
	adrp	x8, .LCPI1_5
	ldr	q9, [x8, :lo12:.LCPI1_5]
	adrp	x8, .LCPI1_6
	ldr	q11, [x8, :lo12:.LCPI1_6]
	adrp	x8, .LCPI1_7
	ldr	q27, [x8, :lo12:.LCPI1_7]
	adrp	x8, .LCPI1_8
	ldr	q18, [x8, :lo12:.LCPI1_8]
	add	v5.4s, v17.4s, v25.4s
	add	x8, x7, #128
	add	v6.4s, v17.4s, v26.4s
	rev32	v4.16b, v4.16b
	rev32	v5.16b, v5.16b
	rev32	v16.16b, v6.16b
	add	v6.4s, v17.4s, v31.4s
	rev32	v21.16b, v6.16b
	add	v6.4s, v17.4s, v9.4s
	add	v7.4s, v17.4s, v27.4s
	add	v10.4s, v17.4s, v18.4s
	rev32	v22.16b, v6.16b
	add	v6.4s, v17.4s, v11.4s
	ldp	q28, q17, [x0, #64]
	rev32	v7.16b, v7.16b
	rev32	v6.16b, v6.16b
	//APP
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v12.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v12.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v12.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v13.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v13.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v14.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v14.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v14.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v14.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v14.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v15.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v15.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v15.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v15.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v15.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v28.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v28.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v28.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v28.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v28.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v17.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v17.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v17.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	stur	q17, [x29, #-112]
	ldp	q17, q18, [x0, #96]
	//APP
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v17.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v17.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v17.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v18.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v18.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v18.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v18.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v18.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v18.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v18.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v18.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	stp	q18, q17, [x29, #-144]
	ldp	q17, q18, [x0, #128]
	//APP
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v17.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v17.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v17.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v18.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v18.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v18.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v18.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v18.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v18.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v18.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v18.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	stp	q18, q17, [x29, #-176]
	ldp	q17, q18, [x0, #160]
	//APP
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v17.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v17.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v17.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	//APP
	aese	v3.16b, v18.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v18.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v18.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v18.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v18.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v18.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v18.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v18.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	stp	q18, q17, [x29, #-208]
	ldp	q17, q29, [x0, #192]
	//APP
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v16.16b, v17.16b
	aesmc	v16.16b, v16.16b
	aese	v21.16b, v17.16b
	aesmc	v21.16b, v21.16b
	aese	v22.16b, v17.16b
	aesmc	v22.16b, v22.16b
	aese	v6.16b, v17.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v17.16b
	aesmc	v7.16b, v7.16b
	//NO_APP
	aese	v3.16b, v29.16b
	aese	v4.16b, v29.16b
	aese	v5.16b, v29.16b
	aese	v16.16b, v29.16b
	aese	v21.16b, v29.16b
	aese	v22.16b, v29.16b
	aese	v6.16b, v29.16b
	aese	v7.16b, v29.16b
	stur	q17, [x29, #-224]
	eor3	v17.16b, v3.16b, v2.16b, v30.16b
	eor3	v18.16b, v4.16b, v1.16b, v30.16b
	ldp	q1, q2, [x5, #32]
	eor3	v20.16b, v16.16b, v2.16b, v30.16b
	eor3	v19.16b, v5.16b, v1.16b, v30.16b
	ldp	q1, q2, [x5, #64]
	eor3	v24.16b, v22.16b, v2.16b, v30.16b
	eor3	v21.16b, v21.16b, v1.16b, v30.16b
	ldp	q1, q3, [x5, #96]
	stp	q17, q18, [x7]
	stp	q19, q20, [x7, #32]
	stp	q21, q24, [x7, #64]
	eor3	v3.16b, v7.16b, v3.16b, v30.16b
	eor3	v2.16b, v6.16b, v1.16b, v30.16b
	stp	q2, q3, [x7, #96]
	cmp	x6, #256
	b.lo	.LBB1_26
	ldp	q1, q4, [x0, #240]
	ldp	q5, q6, [x0, #272]
	ldp	q7, q16, [x0, #304]
	mov	x10, #-4467570830351532032
	str	q28, [sp, #48]
	mov	v28.16b, v15.16b
	mov	v15.16b, v14.16b
	mov	v14.16b, v13.16b
	mov	v13.16b, v12.16b
	str	q26, [sp, #400]
	ldp	q22, q12, [x0, #336]
	stp	q28, q15, [sp, #16]
	str	q4, [sp, #352]
	ext	v4.16b, v4.16b, v4.16b, #8
	stp	q14, q13, [sp, #64]
	stp	q25, q23, [x29, #-256]
	stp	q0, q1, [sp, #368]
	stp	q12, q22, [sp, #256]
	ext	v12.16b, v12.16b, v12.16b, #8
	ext	v22.16b, v22.16b, v22.16b, #8
	stp	q22, q12, [sp, #224]
	stp	q16, q7, [sp, #288]
	ext	v16.16b, v16.16b, v16.16b, #8
	ext	v7.16b, v7.16b, v7.16b, #8
	stp	q7, q16, [sp, #192]
	stp	q6, q5, [sp, #320]
	ext	v6.16b, v6.16b, v6.16b, #8
	ext	v5.16b, v5.16b, v5.16b, #8
	ext	v1.16b, v1.16b, v1.16b, #8
	stp	q1, q4, [sp, #112]
	stp	q5, q6, [sp, #144]
	str	q31, [sp, #176]
	str	q27, [sp, #96]
	.p2align	5, , 16
.LBB1_24:
	add	v4.4s, v10.4s, v23.4s
	rev64	v17.16b, v17.16b
	add	v1.4s, v10.4s, v0.4s
	rev32	v15.16b, v10.16b
	movi	v12.2d, #0000000000000000
	ldr	q7, [sp, #80]
	rev64	v19.16b, v19.16b
	rev64	v20.16b, v20.16b
	ldp	q6, q0, [sp, #240]
	ldr	q14, [sp, #224]
	rev32	v27.16b, v4.16b
	add	v4.4s, v10.4s, v25.4s
	rev32	v1.16b, v1.16b
	rev64	v21.16b, v21.16b
	rev64	v24.16b, v24.16b
	add	x11, x9, #128
	add	x12, x8, #128
	sub	x19, x19, #128
	rev32	v28.16b, v4.16b
	add	v4.4s, v10.4s, v26.4s
	rev32	v25.16b, v4.16b
	add	v4.4s, v10.4s, v31.4s
	rev64	v31.16b, v18.16b
	rev64	v18.16b, v2.16b
	ext	v2.16b, v17.16b, v17.16b, #8
	rev32	v26.16b, v4.16b
	add	v4.4s, v10.4s, v9.4s
	rev32	v22.16b, v4.16b
	add	v4.4s, v10.4s, v11.4s
	rev32	v23.16b, v4.16b
	rev64	v4.16b, v3.16b
	eor	v3.16b, v8.16b, v2.16b
	mov	v2.16b, v9.16b
	//APP
	aese	v15.16b, v7.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v7.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v7.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v7.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v7.16b
	aesmc	v23.16b, v23.16b
	pmull	v17.1q, v3.1d, v0.1d
	pmull2	v16.1q, v3.2d, v0.2d
	pmull	v9.1q, v3.1d, v6.1d
	pmull2	v5.1q, v3.2d, v6.2d
	eor3	v8.16b, v12.16b, v9.16b, v5.16b
	//NO_APP
	ext	v5.16b, v31.16b, v31.16b, #8
	mov	v7.16b, v10.16b
	ldr	q0, [sp, #272]
	ldr	q12, [sp, #64]
	//APP
	aese	v15.16b, v12.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v12.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v12.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v12.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v12.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v12.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v12.16b
	aesmc	v23.16b, v23.16b
	pmull	v31.1q, v5.1d, v0.1d
	pmull2	v3.1q, v5.2d, v0.2d
	pmull	v10.1q, v5.1d, v14.1d
	pmull2	v6.1q, v5.2d, v14.2d
	eor3	v9.16b, v8.16b, v10.16b, v6.16b
	//NO_APP
	eor	v5.16b, v31.16b, v17.16b
	ext	v6.16b, v19.16b, v19.16b, #8
	ldr	q0, [sp, #288]
	ldr	q14, [sp, #208]
	ldp	q13, q12, [sp, #16]
	//APP
	aese	v15.16b, v12.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v12.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v12.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v12.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v12.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v12.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v12.16b
	aesmc	v23.16b, v23.16b
	pmull	v31.1q, v6.1d, v0.1d
	pmull2	v17.1q, v6.2d, v0.2d
	pmull	v19.1q, v6.1d, v14.1d
	pmull2	v10.1q, v6.2d, v14.2d
	eor3	v8.16b, v9.16b, v19.16b, v10.16b
	//NO_APP
	ext	v6.16b, v20.16b, v20.16b, #8
	mov	v0.16b, v11.16b
	ldr	q14, [sp, #304]
	ldr	q12, [sp, #192]
	//APP
	aese	v15.16b, v13.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v13.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	pmull	v20.1q, v6.1d, v14.1d
	pmull2	v19.1q, v6.2d, v14.2d
	pmull	v10.1q, v6.1d, v12.1d
	pmull2	v11.1q, v6.2d, v12.2d
	eor3	v9.16b, v8.16b, v10.16b, v11.16b
	//NO_APP
	ext	v6.16b, v21.16b, v21.16b, #8
	ldr	q11, [sp, #320]
	ldr	q12, [sp, #160]
	ldr	q14, [sp, #48]
	ldur	q13, [x29, #-112]
	eor3	v5.16b, v5.16b, v31.16b, v20.16b
	//APP
	aese	v15.16b, v14.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v14.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v14.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v14.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v14.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v14.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v14.16b
	aesmc	v23.16b, v23.16b
	pmull	v31.1q, v6.1d, v11.1d
	pmull2	v20.1q, v6.2d, v11.2d
	pmull	v21.1q, v6.1d, v12.1d
	pmull2	v10.1q, v6.2d, v12.2d
	eor3	v8.16b, v9.16b, v21.16b, v10.16b
	//NO_APP
	ext	v6.16b, v24.16b, v24.16b, #8
	ldr	q14, [sp, #336]
	ldr	q12, [sp, #144]
	//APP
	aese	v15.16b, v13.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v13.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	pmull	v24.1q, v6.1d, v14.1d
	pmull2	v21.1q, v6.2d, v14.2d
	pmull	v10.1q, v6.1d, v12.1d
	pmull2	v11.1q, v6.2d, v12.2d
	eor3	v9.16b, v8.16b, v10.16b, v11.16b
	//NO_APP
	ext	v6.16b, v18.16b, v18.16b, #8
	ldr	q11, [sp, #352]
	ldr	q12, [sp, #128]
	ldp	q13, q14, [x29, #-144]
	ext	v4.16b, v4.16b, v4.16b, #8
	eor3	v5.16b, v5.16b, v31.16b, v24.16b
	//APP
	aese	v15.16b, v14.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v14.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v14.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v14.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v14.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v14.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v14.16b
	aesmc	v23.16b, v23.16b
	pmull	v18.1q, v6.1d, v11.1d
	pmull2	v24.1q, v6.2d, v11.2d
	pmull	v31.1q, v6.1d, v12.1d
	pmull2	v8.1q, v6.2d, v12.2d
	eor3	v10.16b, v9.16b, v31.16b, v8.16b
	//NO_APP
	ldr	q14, [sp, #384]
	ldr	q12, [sp, #112]
	//APP
	aese	v15.16b, v13.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v13.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	pmull	v6.1q, v4.1d, v14.1d
	pmull2	v31.1q, v4.2d, v14.2d
	pmull	v9.1q, v4.1d, v12.1d
	pmull2	v11.1q, v4.2d, v12.2d
	eor3	v8.16b, v10.16b, v9.16b, v11.16b
	//NO_APP
	mov	v9.16b, v2.16b
	eor3	v2.16b, v3.16b, v16.16b, v17.16b
	mov	v11.16b, v0.16b
	eor3	v4.16b, v5.16b, v18.16b, v6.16b
	ldp	q3, q5, [x9]
	ldp	q0, q6, [x29, #-176]
	//APP
	aese	v15.16b, v6.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v6.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	//NO_APP
	//APP
	aese	v15.16b, v0.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v0.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v0.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v0.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v0.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v0.16b
	aesmc	v23.16b, v23.16b
	//NO_APP
	ldp	q0, q6, [x29, #-208]
	//APP
	aese	v15.16b, v6.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v6.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	//NO_APP
	//APP
	aese	v15.16b, v0.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v0.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v0.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v0.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v0.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v0.16b
	aesmc	v23.16b, v23.16b
	//NO_APP
	ldur	q0, [x29, #-224]
	//APP
	aese	v15.16b, v0.16b
	aesmc	v15.16b, v15.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v27.16b, v0.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v0.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v0.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v0.16b
	aesmc	v26.16b, v26.16b
	aese	v22.16b, v0.16b
	aesmc	v22.16b, v22.16b
	aese	v23.16b, v0.16b
	aesmc	v23.16b, v23.16b
	//NO_APP
	aese	v15.16b, v29.16b
	aese	v1.16b, v29.16b
	aese	v27.16b, v29.16b
	aese	v28.16b, v29.16b
	aese	v26.16b, v29.16b
	aese	v25.16b, v29.16b
	movi	v0.2d, #0000000000000000
	aese	v23.16b, v29.16b
	aese	v22.16b, v29.16b
	eor3	v18.16b, v5.16b, v1.16b, v30.16b
	eor3	v1.16b, v2.16b, v19.16b, v20.16b
	eor3	v17.16b, v3.16b, v15.16b, v30.16b
	ldp	q2, q3, [x9, #32]
	eor3	v1.16b, v1.16b, v21.16b, v24.16b
	eor3	v20.16b, v3.16b, v28.16b, v30.16b
	eor3	v19.16b, v2.16b, v27.16b, v30.16b
	ldp	q2, q3, [x9, #64]
	ldr	q27, [sp, #96]
	eor3	v24.16b, v3.16b, v26.16b, v30.16b
	zip2	v3.2d, v8.2d, v0.2d
	ldr	q26, [sp, #400]
	eor3	v21.16b, v2.16b, v25.16b, v30.16b
	zip1	v2.2d, v0.2d, v8.2d
	eor3	v1.16b, v1.16b, v31.16b, v3.16b
	fmov	d3, x10
	ldr	q31, [sp, #176]
	ldr	q0, [sp, #368]
	add	v10.4s, v7.4s, v27.4s
	eor	v2.16b, v2.16b, v4.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v8.16b, v1.16b, v3.16b, v2.16b
	ldp	q1, q3, [x9, #96]
	stp	q17, q18, [x8]
	stp	q19, q20, [x8, #32]
	stp	q21, q24, [x8, #64]
	mov	x9, x11
	eor3	v3.16b, v3.16b, v23.16b, v30.16b
	ldp	q25, q23, [x29, #-256]
	eor3	v2.16b, v1.16b, v22.16b, v30.16b
	stp	q2, q3, [x8, #96]
	mov	x8, x12
	cmp	x19, #127
	b.hi	.LBB1_24
	mov	x8, x12
	mov	x9, x11
.LBB1_26:
	rev64	v1.16b, v17.16b
	add	x16, x0, #240
	add	x17, x0, #248
	rev64	v17.16b, v2.16b
	rev64	v3.16b, v3.16b
	rev64	v4.16b, v19.16b
	rev64	v5.16b, v20.16b
	add	x18, x0, #256
	add	x1, x0, #264
	rev64	v7.16b, v21.16b
	ld1r	{ v21.2d }, [x1]
	ext	v6.16b, v1.16b, v1.16b, #8
	rev64	v1.16b, v18.16b
	ld1r	{ v18.2d }, [x17]
	add	x2, x0, #272
	add	x3, x0, #280
	rev64	v16.16b, v24.16b
	add	x5, x0, #288
	add	x7, x0, #296
	add	x20, x0, #304
	add	x21, x0, #312
	add	x15, x0, #320
	eor	v2.16b, v6.16b, v8.16b
	ld1r	{ v6.2d }, [x16]
	add	x14, x0, #328
	add	x13, x0, #336
	add	x12, x0, #344
	ldp	x11, x10, [x0, #352]
	pmull2	v22.1q, v21.2d, v17.2d
	pmull2	v20.1q, v18.2d, v3.2d
	pmull2	v19.1q, v6.2d, v3.2d
	pmull	v6.1q, v6.1d, v3.1d
	pmull	v3.1q, v18.1d, v3.1d
	eor	v6.16b, v6.16b, v20.16b
	ld1r	{ v20.2d }, [x18]
	pmull2	v18.1q, v20.2d, v17.2d
	pmull	v20.1q, v20.1d, v17.1d
	pmull	v17.1q, v21.1d, v17.1d
	ld1r	{ v21.2d }, [x3]
	eor	v18.16b, v18.16b, v19.16b
	ld1r	{ v19.2d }, [x2]
	eor3	v6.16b, v6.16b, v22.16b, v20.16b
	pmull2	v22.1q, v21.2d, v16.2d
	pmull2	v20.1q, v19.2d, v16.2d
	pmull	v19.1q, v19.1d, v16.1d
	pmull	v16.1q, v21.1d, v16.1d
	eor3	v3.16b, v17.16b, v3.16b, v16.16b
	ld1r	{ v16.2d }, [x5]
	eor3	v6.16b, v6.16b, v22.16b, v19.16b
	ld1r	{ v19.2d }, [x7]
	mov	x7, x8
	mov	x5, x9
	pmull2	v17.1q, v16.2d, v7.2d
	pmull2	v21.1q, v19.2d, v7.2d
	pmull	v16.1q, v16.1d, v7.1d
	pmull	v7.1q, v19.1d, v7.1d
	eor3	v17.16b, v18.16b, v20.16b, v17.16b
	ld1r	{ v18.2d }, [x20]
	ld1r	{ v19.2d }, [x21]
	eor3	v6.16b, v6.16b, v21.16b, v16.16b
	pmull2	v20.1q, v19.2d, v5.2d
	pmull2	v16.1q, v18.2d, v5.2d
	pmull	v18.1q, v18.1d, v5.1d
	pmull	v5.1q, v19.1d, v5.1d
	eor3	v6.16b, v6.16b, v20.16b, v18.16b
	eor3	v3.16b, v3.16b, v7.16b, v5.16b
	ld1r	{ v5.2d }, [x15]
	ld1r	{ v18.2d }, [x14]
	pmull2	v7.1q, v5.2d, v4.2d
	pmull2	v19.1q, v18.2d, v4.2d
	pmull	v5.1q, v5.1d, v4.1d
	pmull	v4.1q, v18.1d, v4.1d
	eor3	v7.16b, v17.16b, v16.16b, v7.16b
	eor3	v5.16b, v6.16b, v19.16b, v5.16b
	ld1r	{ v6.2d }, [x13]
	ld1r	{ v17.2d }, [x12]
	pmull2	v16.1q, v6.2d, v1.2d
	pmull2	v18.1q, v17.2d, v1.2d
	pmull	v6.1q, v6.1d, v1.1d
	pmull	v1.1q, v17.1d, v1.1d
	fmov	d17, x10
	eor3	v1.16b, v3.16b, v4.16b, v1.16b
	dup	v3.2d, x11
	fmov	d4, x11
	eor3	v5.16b, v5.16b, v18.16b, v6.16b
	dup	v6.2d, x10
	mov	x10, #-4467570830351532032
	pmull	v17.1q, v17.1d, v2.1d
	pmull2	v3.1q, v3.2d, v2.2d
	pmull	v4.1q, v4.1d, v2.1d
	pmull2	v2.1q, v6.2d, v2.2d
	eor3	v3.16b, v5.16b, v17.16b, v3.16b
	eor3	v4.16b, v7.16b, v16.16b, v4.16b
	movi	v5.2d, #0000000000000000
	zip1	v6.2d, v5.2d, v3.2d
	zip2	v3.2d, v3.2d, v5.2d
	fmov	d5, x10
	eor	v4.16b, v6.16b, v4.16b
	pmull	v6.1q, v4.1d, v5.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v6.16b
	pmull	v5.1q, v4.1d, v5.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor3	v1.16b, v1.16b, v2.16b, v5.16b
	eor3	v8.16b, v3.16b, v1.16b, v4.16b
	b	.LBB1_28
.LBB1_27:
	mov	x19, x6
.LBB1_28:
	mov	x24, x4
	cmp	x19, #16
	b.lo	.LBB1_31
	ldp	x8, x9, [x0, #240]
	ldp	q1, q2, [x0]
	movi	v27.2d, #0000000000000000
	ldp	q3, q4, [x0, #32]
	ldp	q5, q6, [x0, #64]
	ldp	q7, q16, [x0, #96]
	dup	v21.2d, x8
	ldr	q29, [x0, #224]
	fmov	d22, x8
	ldp	q17, q18, [x0, #128]
	ldp	q19, q20, [x0, #160]
	ldp	q24, q25, [x0, #192]
	mov	x8, #-4467570830351532032
	dup	v23.2d, x9
	fmov	d26, x9
	fmov	d28, x8
	.p2align	5, , 16
.LBB1_30:
	rev32	v31.16b, v10.16b
	ldr	q30, [x5], #16
	add	v10.4s, v10.4s, v0.4s
	sub	x19, x19, #16
	aese	v31.16b, v1.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v3.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v4.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v5.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v7.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v16.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v17.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v18.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v19.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v20.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v24.16b
	aesmc	v31.16b, v31.16b
	aese	v31.16b, v25.16b
	eor3	v30.16b, v30.16b, v29.16b, v31.16b
	str	q30, [x7], #16
	rev64	v30.16b, v30.16b
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v30.16b, v30.16b, v8.16b
	pmull	v8.1q, v26.1d, v30.1d
	pmull2	v9.1q, v21.2d, v30.2d
	pmull	v31.1q, v22.1d, v30.1d
	pmull2	v30.1q, v23.2d, v30.2d
	eor	v8.16b, v9.16b, v8.16b
	zip1	v9.2d, v27.2d, v8.2d
	zip2	v8.2d, v8.2d, v27.2d
	eor	v31.16b, v9.16b, v31.16b
	pmull	v9.1q, v31.1d, v28.1d
	ext	v31.16b, v31.16b, v31.16b, #8
	eor	v31.16b, v31.16b, v9.16b
	pmull	v9.1q, v31.1d, v28.1d
	ext	v31.16b, v31.16b, v31.16b, #8
	eor	v30.16b, v9.16b, v30.16b
	eor3	v8.16b, v8.16b, v30.16b, v31.16b
	cmp	x19, #15
	b.hi	.LBB1_30
.LBB1_31:
	cbz	x19, .LBB1_33
	mov	w8, #16
	mov	x25, x0
	mov	w1, wzr
	mov	x26, x6
	mov	x21, x7
	mov	x22, x5
	sub	x20, x8, x19
	sub	x8, x29, #80
	stp	q10, q8, [x29, #-128]
	add	x0, x8, x19
	mov	x2, x20
	bl	memset
	sub	x0, x29, #80
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldur	q1, [x29, #-128]
	ldp	q2, q3, [x25]
	sub	x1, x29, #80
	sub	x22, x29, #80
	ldur	q0, [x29, #-80]
	mov	x0, x21
	mov	x2, x19
	rev32	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v2.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x25, #32]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x25, #64]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x25, #96]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x25, #128]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x25, #160]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x25, #192]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	ldr	q1, [x25, #224]
	eor3	v0.16b, v3.16b, v0.16b, v1.16b
	stur	q0, [x29, #-128]
	stur	q0, [x29, #-80]
	bl	memcpy
	ldur	q0, [x29, #-128]
	add	x0, x22, x19
	mov	w1, wzr
	mov	x2, x20
	stur	q0, [x29, #-96]
	bl	memset
	sub	x0, x29, #80
	sub	x1, x29, #96
	mov	x2, x19
	bl	memcpy
	ldur	q1, [x29, #-112]
	ldur	q0, [x29, #-80]
	ldr	q14, [sp]
	mov	x6, x26
	mov	x0, x25
	mov	x4, x24
	b	.LBB1_35
.LBB1_33:
	ldr	q14, [sp]
	mov	x4, x24
	b	.LBB1_36
.LBB1_34:
	ldr	q14, [sp]
	ldur	q1, [x29, #-112]
	mov	x0, x25
	mov	x4, x21
.LBB1_35:
	rev64	v0.16b, v0.16b
	ldp	x8, x9, [x0, #240]
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	dup	v1.2d, x8
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
	mov	x8, #-4467570830351532032
	pmull	v4.1q, v4.1d, v0.1d
	pmull2	v1.1q, v1.2d, v0.2d
	pmull	v2.1q, v2.1d, v0.1d
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
	eor3	v8.16b, v1.16b, v0.16b, v2.16b
.LBB1_36:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d0, x8
	mov	v0.d[1], x9
	eor	v0.16b, v8.16b, v0.16b
	ldp	x8, x9, [x0, #240]
	dup	v1.2d, x8
	fmov	d4, x9
	fmov	d2, x8
	dup	v3.2d, x9
	mov	x8, #-4467570830351532032
	pmull	v4.1q, v4.1d, v0.1d
	pmull2	v1.1q, v1.2d, v0.2d
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v0.1q, v3.2d, v0.2d
	movi	v3.2d, #0000000000000000
	eor	v1.16b, v1.16b, v4.16b
	zip1	v4.2d, v3.2d, v1.2d
	zip2	v1.2d, v1.2d, v3.2d
	fmov	d3, x8
	mov	w8, #1
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	ldp	q1, q2, [x0]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	ldp	q1, q3, [x0, #32]
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x0, #64]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x0, #96]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x0, #128]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x0, #160]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x0, #192]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	ldr	q1, [x0, #224]
	eor3	v0.16b, v2.16b, v0.16b, v1.16b
	str	q0, [x23]
	b	.LBB1_12
.Lfunc_end1:
	.size	haberdashery_aes256gcm_neoversev2_encrypt, .Lfunc_end1-haberdashery_aes256gcm_neoversev2_encrypt
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcm_neoversev2_init,@function
haberdashery_aes256gcm_neoversev2_init:
	.cfi_startproc
	cmp	x2, #32
	b.ne	.LBB2_2
	stp	d13, d12, [sp, #-48]!
	.cfi_def_cfa_offset 48
	stp	d11, d10, [sp, #16]
	stp	d9, d8, [sp, #32]
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	ldp	q1, q2, [x1]
	movi	v21.2d, #0000000000000000
	ext	v24.16b, v21.16b, v21.16b, #4
	movi	v0.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	dup	v25.4s, v21.s[0]
	movi	v6.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	mov	w8, v2.s[3]
	mov	v6.d[1], v2.d[0]
	ror	w8, w8, #8
	ext	v3.16b, v24.16b, v1.16b, #12
	mov	v4.d[1], v1.d[0]
	dup	v5.4s, w8
	eor	v3.16b, v3.16b, v4.16b
	ext	v4.16b, v25.16b, v1.16b, #4
	stp	q1, q2, [x0]
	aese	v5.16b, v0.16b
	dup	v5.4s, v5.s[0]
	eor3	v5.16b, v3.16b, v4.16b, v5.16b
	movi	v3.4s, #1
	ext	v4.16b, v24.16b, v2.16b, #12
	eor3	v3.16b, v1.16b, v5.16b, v3.16b
	eor	v4.16b, v4.16b, v6.16b
	ext	v6.16b, v25.16b, v2.16b, #4
	eor	v7.16b, v1.16b, v5.16b
	dup	v16.4s, v3.s[3]
	mov	v17.d[1], v3.d[0]
	ext	v18.16b, v25.16b, v3.16b, #4
	aese	v16.16b, v0.16b
	dup	v16.4s, v16.s[0]
	eor3	v6.16b, v4.16b, v6.16b, v16.16b
	ext	v16.16b, v24.16b, v3.16b, #12
	eor	v4.16b, v2.16b, v6.16b
	mov	w8, v4.s[3]
	ext	v20.16b, v25.16b, v4.16b, #4
	stp	q3, q4, [x0, #32]
	ror	w8, w8, #8
	dup	v19.4s, w8
	aese	v19.16b, v0.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v4.d[0]
	eor3	v16.16b, v17.16b, v16.16b, v18.16b
	ext	v18.16b, v24.16b, v4.16b, #12
	eor3	v17.16b, v1.16b, v5.16b, v16.16b
	movi	v5.4s, #3
	eor3	v5.16b, v7.16b, v16.16b, v5.16b
	dup	v22.4s, v5.s[3]
	aese	v22.16b, v0.16b
	dup	v22.4s, v22.s[0]
	eor	v19.16b, v19.16b, v22.16b
	ext	v22.16b, v25.16b, v5.16b, #4
	eor3	v18.16b, v19.16b, v18.16b, v20.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v5.d[0]
	ext	v19.16b, v24.16b, v5.16b, #12
	eor3	v6.16b, v2.16b, v6.16b, v18.16b
	mov	w8, v6.s[3]
	stp	q5, q6, [x0, #64]
	ror	w8, w8, #8
	dup	v23.4s, w8
	aese	v23.16b, v0.16b
	dup	v23.4s, v23.s[0]
	eor	v20.16b, v20.16b, v23.16b
	ext	v23.16b, v25.16b, v6.16b, #4
	eor3	v19.16b, v20.16b, v19.16b, v22.16b
	movi	v22.2d, #0000000000000000
	mov	v22.d[1], v6.d[0]
	eor3	v20.16b, v7.16b, v16.16b, v19.16b
	movi	v7.4s, #7
	ext	v16.16b, v24.16b, v6.16b, #12
	eor3	v7.16b, v17.16b, v19.16b, v7.16b
	dup	v26.4s, v7.s[3]
	aese	v26.16b, v0.16b
	dup	v26.4s, v26.s[0]
	eor	v22.16b, v22.16b, v26.16b
	ext	v26.16b, v25.16b, v7.16b, #4
	eor3	v22.16b, v22.16b, v16.16b, v23.16b
	movi	v23.2d, #0000000000000000
	mov	v23.d[1], v7.d[0]
	eor3	v16.16b, v4.16b, v18.16b, v22.16b
	ext	v18.16b, v24.16b, v7.16b, #12
	mov	w8, v16.s[3]
	stp	q7, q16, [x0, #96]
	ror	w8, w8, #8
	dup	v27.4s, w8
	aese	v27.16b, v0.16b
	dup	v27.4s, v27.s[0]
	eor	v23.16b, v23.16b, v27.16b
	ext	v27.16b, v25.16b, v16.16b, #4
	eor3	v23.16b, v23.16b, v18.16b, v26.16b
	ext	v18.16b, v24.16b, v16.16b, #12
	eor3	v26.16b, v17.16b, v19.16b, v23.16b
	movi	v17.4s, #15
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v16.d[0]
	eor3	v17.16b, v20.16b, v23.16b, v17.16b
	dup	v28.4s, v17.s[3]
	aese	v28.16b, v0.16b
	dup	v28.4s, v28.s[0]
	eor	v19.16b, v19.16b, v28.16b
	ext	v28.16b, v25.16b, v17.16b, #4
	eor3	v27.16b, v19.16b, v18.16b, v27.16b
	ext	v19.16b, v24.16b, v17.16b, #12
	eor3	v18.16b, v6.16b, v22.16b, v27.16b
	movi	v22.2d, #0000000000000000
	mov	v22.d[1], v17.d[0]
	mov	w8, v18.s[3]
	stp	q17, q18, [x0, #128]
	ror	w8, w8, #8
	dup	v29.4s, w8
	aese	v29.16b, v0.16b
	dup	v29.4s, v29.s[0]
	eor	v22.16b, v22.16b, v29.16b
	ext	v29.16b, v25.16b, v18.16b, #4
	eor3	v22.16b, v22.16b, v19.16b, v28.16b
	movi	v19.4s, #31
	eor3	v19.16b, v26.16b, v22.16b, v19.16b
	eor3	v28.16b, v20.16b, v23.16b, v22.16b
	movi	v23.2d, #0000000000000000
	mov	v23.d[1], v18.d[0]
	ext	v20.16b, v24.16b, v18.16b, #12
	dup	v30.4s, v19.s[3]
	aese	v30.16b, v0.16b
	dup	v30.4s, v30.s[0]
	eor	v23.16b, v23.16b, v30.16b
	eor3	v20.16b, v23.16b, v20.16b, v29.16b
	ext	v23.16b, v24.16b, v19.16b, #12
	ext	v29.16b, v25.16b, v19.16b, #4
	eor3	v20.16b, v16.16b, v27.16b, v20.16b
	movi	v27.2d, #0000000000000000
	mov	v27.d[1], v19.d[0]
	mov	w8, v20.s[3]
	ror	w8, w8, #8
	dup	v30.4s, w8
	stp	q19, q20, [x0, #160]
	aese	v30.16b, v0.16b
	dup	v30.4s, v30.s[0]
	eor	v27.16b, v27.16b, v30.16b
	ext	v30.16b, v25.16b, v20.16b, #4
	eor3	v27.16b, v27.16b, v23.16b, v29.16b
	ext	v23.16b, v24.16b, v20.16b, #12
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v20.d[0]
	eor3	v26.16b, v26.16b, v22.16b, v27.16b
	movi	v22.4s, #63
	eor3	v22.16b, v28.16b, v27.16b, v22.16b
	dup	v31.4s, v22.s[3]
	ext	v24.16b, v24.16b, v22.16b, #12
	ext	v25.16b, v25.16b, v22.16b, #4
	aese	v31.16b, v0.16b
	dup	v31.4s, v31.s[0]
	eor3	v23.16b, v31.16b, v29.16b, v23.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v22.d[0]
	eor3	v23.16b, v23.16b, v30.16b, v20.16b
	mov	w8, v23.s[3]
	stp	q22, q23, [x0, #192]
	ror	w8, w8, #8
	dup	v30.4s, w8
	mov	x8, #-4467570830351532032
	aese	v30.16b, v0.16b
	dup	v30.4s, v30.s[0]
	eor	v29.16b, v29.16b, v30.16b
	eor3	v24.16b, v29.16b, v24.16b, v25.16b
	eor3	v25.16b, v28.16b, v27.16b, v24.16b
	movi	v27.4s, #127
	eor3	v24.16b, v26.16b, v24.16b, v27.16b
	movi	v26.2d, #0000000000000000
	aese	v26.16b, v1.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v3.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v4.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v5.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v6.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v16.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v17.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v18.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v19.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v20.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v22.16b
	aesmc	v26.16b, v26.16b
	aese	v26.16b, v23.16b
	eor3	v25.16b, v25.16b, v27.16b, v26.16b
	rev64	v25.16b, v25.16b
	ext	v25.16b, v25.16b, v25.16b, #8
	ushr	v26.2d, v25.2d, #63
	add	v25.2d, v25.2d, v25.2d
	ext	v27.16b, v26.16b, v26.16b, #8
	mov	v26.d[0], v21.d[0]
	orr	v25.16b, v27.16b, v25.16b
	shl	v21.2d, v26.2d, #63
	eor	v21.16b, v25.16b, v21.16b
	shl	v25.2d, v26.2d, #62
	shl	v26.2d, v26.2d, #57
	eor3	v21.16b, v21.16b, v25.16b, v26.16b
	dup	v28.2d, v21.d[0]
	pmull	v26.1q, v21.1d, v21.1d
	pmull2	v30.1q, v21.2d, v21.2d
	pmull2	v25.1q, v28.2d, v21.2d
	stp	q24, q21, [x0, #224]
	eor	v25.16b, v25.16b, v25.16b
	zip2	v27.2d, v25.2d, v0.2d
	zip1	v25.2d, v0.2d, v25.2d
	eor	v25.16b, v25.16b, v26.16b
	fmov	d26, x8
	ext	v29.16b, v25.16b, v25.16b, #8
	pmull	v25.1q, v25.1d, v26.1d
	eor	v25.16b, v29.16b, v25.16b
	pmull	v29.1q, v25.1d, v26.1d
	ext	v25.16b, v25.16b, v25.16b, #8
	eor	v29.16b, v30.16b, v29.16b
	eor3	v25.16b, v27.16b, v29.16b, v25.16b
	dup	v30.2d, v25.d[0]
	pmull	v31.1q, v25.1d, v25.1d
	pmull2	v8.1q, v25.2d, v25.2d
	pmull	v10.1q, v25.1d, v21.1d
	pmull2	v11.1q, v25.2d, v21.2d
	pmull2	v27.1q, v30.2d, v25.2d
	pmull2	v30.1q, v30.2d, v21.2d
	eor	v27.16b, v27.16b, v27.16b
	zip2	v29.2d, v27.2d, v0.2d
	zip1	v27.2d, v0.2d, v27.2d
	eor	v27.16b, v27.16b, v31.16b
	ext	v31.16b, v27.16b, v27.16b, #8
	pmull	v27.1q, v27.1d, v26.1d
	eor	v27.16b, v31.16b, v27.16b
	pmull	v31.1q, v27.1d, v26.1d
	ext	v27.16b, v27.16b, v27.16b, #8
	eor	v31.16b, v8.16b, v31.16b
	eor3	v27.16b, v29.16b, v31.16b, v27.16b
	dup	v31.2d, v27.d[0]
	pmull	v9.1q, v27.1d, v27.1d
	pmull2	v3.1q, v27.2d, v21.2d
	pmull2	v29.1q, v31.2d, v27.2d
	pmull2	v31.1q, v31.2d, v21.2d
	eor	v8.16b, v29.16b, v29.16b
	zip1	v29.2d, v0.2d, v8.2d
	zip2	v8.2d, v8.2d, v0.2d
	eor	v29.16b, v29.16b, v9.16b
	ext	v9.16b, v29.16b, v29.16b, #8
	pmull	v29.1q, v29.1d, v26.1d
	eor	v29.16b, v9.16b, v29.16b
	pmull2	v9.1q, v25.2d, v28.2d
	eor	v30.16b, v9.16b, v30.16b
	zip2	v9.2d, v30.2d, v0.2d
	zip1	v30.2d, v0.2d, v30.2d
	eor	v30.16b, v30.16b, v10.16b
	ext	v10.16b, v30.16b, v30.16b, #8
	pmull	v30.1q, v30.1d, v26.1d
	eor	v30.16b, v10.16b, v30.16b
	pmull	v10.1q, v30.1d, v26.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v10.16b, v11.16b, v10.16b
	eor3	v30.16b, v9.16b, v10.16b, v30.16b
	dup	v9.2d, v30.d[0]
	pmull	v11.1q, v30.1d, v30.1d
	pmull2	v12.1q, v30.2d, v30.2d
	stp	q25, q30, [x0, #256]
	pmull2	v9.1q, v9.2d, v30.2d
	eor	v9.16b, v9.16b, v9.16b
	zip2	v10.2d, v9.2d, v0.2d
	zip1	v9.2d, v0.2d, v9.2d
	eor	v9.16b, v9.16b, v11.16b
	ext	v11.16b, v9.16b, v9.16b, #8
	pmull	v9.1q, v9.1d, v26.1d
	eor	v9.16b, v11.16b, v9.16b
	pmull	v11.1q, v9.1d, v26.1d
	ext	v9.16b, v9.16b, v9.16b, #8
	eor	v11.16b, v12.16b, v11.16b
	eor3	v9.16b, v10.16b, v11.16b, v9.16b
	dup	v10.2d, v9.d[0]
	pmull2	v11.1q, v9.2d, v28.2d
	pmull	v12.1q, v9.1d, v21.1d
	pmull2	v13.1q, v9.2d, v21.2d
	pmull2	v28.1q, v27.2d, v28.2d
	pmull2	v10.1q, v10.2d, v21.2d
	eor	v28.16b, v28.16b, v31.16b
	eor	v10.16b, v11.16b, v10.16b
	zip1	v31.2d, v0.2d, v28.2d
	zip1	v11.2d, v0.2d, v10.2d
	zip2	v10.2d, v10.2d, v0.2d
	zip2	v0.2d, v28.2d, v0.2d
	eor	v11.16b, v11.16b, v12.16b
	ext	v12.16b, v11.16b, v11.16b, #8
	pmull	v11.1q, v11.1d, v26.1d
	eor	v11.16b, v12.16b, v11.16b
	pmull	v12.1q, v11.1d, v26.1d
	ext	v11.16b, v11.16b, v11.16b, #8
	eor	v12.16b, v13.16b, v12.16b
	eor3	v10.16b, v10.16b, v12.16b, v11.16b
	pmull	v11.1q, v29.1d, v26.1d
	pmull2	v12.1q, v27.2d, v27.2d
	eor	v11.16b, v12.16b, v11.16b
	pmull	v12.1q, v27.1d, v21.1d
	stp	q9, q10, [x0, #320]
	eor	v1.16b, v31.16b, v12.16b
	ext	v2.16b, v1.16b, v1.16b, #8
	pmull	v1.1q, v1.1d, v26.1d
	eor	v1.16b, v2.16b, v1.16b
	ext	v2.16b, v1.16b, v1.16b, #8
	pmull	v1.1q, v1.1d, v26.1d
	eor	v1.16b, v3.16b, v1.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	ext	v1.16b, v29.16b, v29.16b, #8
	stp	q27, q0, [x0, #288]
	eor3	v0.16b, v11.16b, v8.16b, v1.16b
	ldp	d9, d8, [sp, #32]
	ldp	d11, d10, [sp, #16]
	str	q0, [x0, #352]
	mov	w0, #1
	ldp	d13, d12, [sp], #48
	.cfi_def_cfa_offset 0
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	ret
.LBB2_2:
	mov	w0, wzr
	ret
.Lfunc_end2:
	.size	haberdashery_aes256gcm_neoversev2_init, .Lfunc_end2-haberdashery_aes256gcm_neoversev2_init
	.cfi_endproc

	.section	.text.haberdashery_aes256gcm_neoversev2_is_supported,"ax",@progbits
	.globl	haberdashery_aes256gcm_neoversev2_is_supported
	.p2align	4
	.type	haberdashery_aes256gcm_neoversev2_is_supported,@function
haberdashery_aes256gcm_neoversev2_is_supported:
	.cfi_startproc
	mov	w0, #1
	ret
.Lfunc_end3:
	.size	haberdashery_aes256gcm_neoversev2_is_supported, .Lfunc_end3-haberdashery_aes256gcm_neoversev2_is_supported
	.cfi_endproc

	.ident	"rustc version 1.97.0-nightly (e96c36b6f 2026-05-21)"
	.section	".note.GNU-stack","",@progbits

# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


	.section	.text.haberdashery_aes256gcm_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcm_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcm_neoversev2_init,@function
haberdashery_aes256gcm_neoversev2_init:
	.cfi_startproc
	cmp	x2, #32
	b.ne	.LBB0_2
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
	movi	v12.2d, #0000000000000000
	mov	w8, v2.s[3]
	mov	v6.d[1], v2.d[0]
	ror	w8, w8, #8
	ext	v3.16b, v24.16b, v1.16b, #12
	mov	v4.d[1], v1.d[0]
	stp	q1, q2, [x0]
	dup	v5.4s, w8
	eor	v3.16b, v3.16b, v4.16b
	ext	v4.16b, v25.16b, v1.16b, #4
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
	ror	w8, w8, #8
	dup	v29.4s, w8
	stp	q17, q18, [x0, #128]
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
	stp	q19, q20, [x0, #160]
	ror	w8, w8, #8
	dup	v30.4s, w8
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
	shl	v21.2d, v26.2d, #63
	eor3	v21.16b, v27.16b, v25.16b, v21.16b
	shl	v25.2d, v26.2d, #62
	shl	v26.2d, v26.2d, #57
	movi	v27.2d, #0000000000000000
	eor3	v21.16b, v21.16b, v25.16b, v26.16b
	dup	v28.2d, v21.d[0]
	pmull2	v30.1q, v21.2d, v21.2d
	stp	q24, q21, [x0, #224]
	pmull2	v25.1q, v28.2d, v21.2d
	pmull2	v26.1q, v21.2d, v28.2d
	eor	v25.16b, v26.16b, v25.16b
	pmull	v26.1q, v21.1d, v21.1d
	mov	v27.d[0], v25.d[1]
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
	pmull2	v27.1q, v30.2d, v25.2d
	pmull2	v29.1q, v25.2d, v30.2d
	pmull2	v30.1q, v30.2d, v21.2d
	eor	v27.16b, v29.16b, v27.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[0], v27.d[1]
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
	pmull2	v10.1q, v27.2d, v27.2d
	pmull	v13.1q, v27.1d, v21.1d
	pmull2	v3.1q, v27.2d, v21.2d
	pmull2	v29.1q, v31.2d, v27.2d
	pmull2	v8.1q, v27.2d, v31.2d
	pmull2	v31.1q, v31.2d, v21.2d
	eor	v29.16b, v8.16b, v29.16b
	zip1	v8.2d, v0.2d, v29.2d
	eor	v8.16b, v8.16b, v9.16b
	ext	v9.16b, v8.16b, v8.16b, #8
	pmull	v8.1q, v8.1d, v26.1d
	eor	v8.16b, v9.16b, v8.16b
	pmull	v9.1q, v8.1d, v26.1d
	eor	v9.16b, v10.16b, v9.16b
	movi	v10.2d, #0000000000000000
	mov	v10.d[0], v29.d[1]
	ext	v29.16b, v8.16b, v8.16b, #8
	pmull2	v8.1q, v25.2d, v28.2d
	eor	v30.16b, v8.16b, v30.16b
	eor3	v29.16b, v9.16b, v10.16b, v29.16b
	movi	v8.2d, #0000000000000000
	pmull	v9.1q, v25.1d, v21.1d
	pmull2	v10.1q, v25.2d, v21.2d
	mov	v8.d[0], v30.d[1]
	zip1	v30.2d, v0.2d, v30.2d
	str	q29, [x0, #352]
	eor	v30.16b, v30.16b, v9.16b
	ext	v9.16b, v30.16b, v30.16b, #8
	pmull	v30.1q, v30.1d, v26.1d
	eor	v30.16b, v9.16b, v30.16b
	pmull	v9.1q, v30.1d, v26.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v9.16b, v10.16b, v9.16b
	eor3	v30.16b, v8.16b, v9.16b, v30.16b
	dup	v8.2d, v30.d[0]
	pmull	v10.1q, v30.1d, v30.1d
	pmull2	v11.1q, v30.2d, v30.2d
	stp	q25, q30, [x0, #256]
	pmull2	v9.1q, v8.2d, v30.2d
	pmull2	v8.1q, v30.2d, v8.2d
	eor	v8.16b, v8.16b, v9.16b
	movi	v9.2d, #0000000000000000
	mov	v9.d[0], v8.d[1]
	zip1	v8.2d, v0.2d, v8.2d
	eor	v8.16b, v8.16b, v10.16b
	ext	v10.16b, v8.16b, v8.16b, #8
	pmull	v8.1q, v8.1d, v26.1d
	eor	v8.16b, v10.16b, v8.16b
	pmull	v10.1q, v8.1d, v26.1d
	ext	v8.16b, v8.16b, v8.16b, #8
	eor	v10.16b, v11.16b, v10.16b
	eor3	v8.16b, v9.16b, v10.16b, v8.16b
	dup	v9.2d, v8.d[0]
	pmull2	v10.1q, v8.2d, v28.2d
	pmull2	v28.1q, v27.2d, v28.2d
	pmull	v11.1q, v8.1d, v21.1d
	pmull2	v9.1q, v9.2d, v21.2d
	eor	v28.16b, v28.16b, v31.16b
	eor	v9.16b, v10.16b, v9.16b
	zip1	v31.2d, v0.2d, v28.2d
	zip1	v10.2d, v0.2d, v9.2d
	eor	v1.16b, v31.16b, v13.16b
	mov	v12.d[0], v9.d[1]
	mov	v0.d[0], v28.d[1]
	eor	v10.16b, v10.16b, v11.16b
	ext	v2.16b, v1.16b, v1.16b, #8
	pmull	v1.1q, v1.1d, v26.1d
	ext	v11.16b, v10.16b, v10.16b, #8
	pmull	v10.1q, v10.1d, v26.1d
	eor	v1.16b, v2.16b, v1.16b
	eor	v10.16b, v11.16b, v10.16b
	ext	v2.16b, v1.16b, v1.16b, #8
	pmull	v1.1q, v1.1d, v26.1d
	ext	v11.16b, v10.16b, v10.16b, #8
	pmull	v9.1q, v10.1d, v26.1d
	pmull2	v10.1q, v8.2d, v21.2d
	eor	v1.16b, v3.16b, v1.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	eor	v1.16b, v10.16b, v9.16b
	stp	q27, q0, [x0, #288]
	eor3	v0.16b, v12.16b, v1.16b, v11.16b
	ldp	d11, d10, [sp, #16]
	stp	q8, q0, [x0, #320]
	ldp	d9, d8, [sp, #32]
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
.LBB0_2:
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	haberdashery_aes256gcm_neoversev2_init, .Lfunc_end0-haberdashery_aes256gcm_neoversev2_init
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
	stp	d15, d14, [sp, #-144]!
	.cfi_def_cfa_offset 144
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	stp	x29, x30, [sp, #64]
	stp	x28, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	add	x29, sp, #64
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w28, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	.cfi_offset b8, -88
	.cfi_offset b9, -96
	.cfi_offset b10, -104
	.cfi_offset b11, -112
	.cfi_offset b12, -120
	.cfi_offset b13, -128
	.cfi_offset b14, -136
	.cfi_offset b15, -144
	.cfi_remember_state
	sub	sp, sp, #592
	ldr	x8, [x29, #80]
	cmp	x6, x8
	b.ne	.LBB1_21
	mov	x9, #2305843009213693950
	mov	w8, wzr
	cmp	x4, x9
	b.hi	.LBB1_22
	ldr	x9, [x29, #96]
	cmp	x9, #16
	b.ne	.LBB1_22
	mov	w8, wzr
	cmp	x2, #12
	b.ne	.LBB1_22
	mov	x9, #68719411200
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB1_22
	movi	v14.4s, #1, lsl #24
	add	x8, x1, #8
	movi	v9.2d, #0000000000000000
	ld1	{ v14.s }[0], [x1], #4
	ld1	{ v14.s }[1], [x1]
	ld1	{ v14.s }[2], [x8]
	cbz	x4, .LBB1_19
	subs	x19, x4, #128
	b.lo	.LBB1_11
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	rev64	v17.16b, v1.16b
	ldp	q6, q7, [x3, #96]
	rev64	v23.16b, v7.16b
	ldp	q4, q5, [x3, #64]
	rev64	v19.16b, v3.16b
	rev64	v21.16b, v5.16b
	add	x3, x3, #128
	rev64	v16.16b, v0.16b
	ldp	q0, q1, [x0, #240]
	rev64	v18.16b, v2.16b
	ldp	q2, q3, [x0, #272]
	rev64	v22.16b, v6.16b
	rev64	v20.16b, v4.16b
	ldp	q4, q5, [x0, #304]
	pmull2	v27.1q, v1.2d, v22.2d
	pmull	v28.1q, v1.1d, v22.1d
	ldp	q6, q7, [x0, #336]
	pmull2	v25.1q, v0.2d, v23.2d
	pmull	v26.1q, v0.1d, v23.1d
	dup	v24.2d, v0.d[0]
	eor	v25.16b, v26.16b, v25.16b
	dup	v26.2d, v1.d[0]
	pmull2	v24.1q, v24.2d, v23.2d
	dup	v23.2d, v23.d[0]
	pmull2	v26.1q, v26.2d, v22.2d
	dup	v22.2d, v22.d[0]
	pmull2	v23.1q, v0.2d, v23.2d
	eor3	v25.16b, v25.16b, v27.16b, v28.16b
	pmull	v27.1q, v2.1d, v21.1d
	pmull2	v22.1q, v1.2d, v22.2d
	eor	v24.16b, v26.16b, v24.16b
	pmull2	v26.1q, v2.2d, v21.2d
	eor	v22.16b, v22.16b, v23.16b
	dup	v23.2d, v2.d[0]
	eor3	v25.16b, v25.16b, v26.16b, v27.16b
	dup	v26.2d, v3.d[0]
	pmull2	v27.1q, v3.2d, v20.2d
	pmull2	v23.1q, v23.2d, v21.2d
	pmull2	v26.1q, v26.2d, v20.2d
	dup	v21.2d, v21.d[0]
	eor3	v23.16b, v24.16b, v23.16b, v26.16b
	pmull	v24.1q, v3.1d, v20.1d
	dup	v20.2d, v20.d[0]
	pmull2	v21.1q, v2.2d, v21.2d
	pmull	v26.1q, v5.1d, v18.1d
	pmull2	v20.1q, v3.2d, v20.2d
	eor3	v24.16b, v25.16b, v27.16b, v24.16b
	pmull	v25.1q, v4.1d, v19.1d
	eor3	v20.16b, v22.16b, v21.16b, v20.16b
	pmull2	v22.1q, v4.2d, v19.2d
	dup	v21.2d, v4.d[0]
	eor3	v22.16b, v24.16b, v22.16b, v25.16b
	dup	v24.2d, v5.d[0]
	pmull2	v21.1q, v21.2d, v19.2d
	dup	v19.2d, v19.d[0]
	pmull2	v25.1q, v5.2d, v18.2d
	pmull2	v24.1q, v24.2d, v18.2d
	dup	v18.2d, v18.d[0]
	pmull2	v19.1q, v4.2d, v19.2d
	eor3	v22.16b, v22.16b, v25.16b, v26.16b
	pmull2	v18.1q, v5.2d, v18.2d
	eor3	v21.16b, v23.16b, v21.16b, v24.16b
	pmull	v23.1q, v6.1d, v17.1d
	pmull	v24.1q, v7.1d, v16.1d
	eor3	v18.16b, v20.16b, v19.16b, v18.16b
	pmull2	v20.1q, v6.2d, v17.2d
	dup	v19.2d, v6.d[0]
	eor3	v20.16b, v22.16b, v20.16b, v23.16b
	dup	v22.2d, v7.d[0]
	pmull2	v19.1q, v19.2d, v17.2d
	dup	v17.2d, v17.d[0]
	pmull2	v23.1q, v7.2d, v16.2d
	pmull2	v22.1q, v22.2d, v16.2d
	dup	v16.2d, v16.d[0]
	pmull2	v17.1q, v6.2d, v17.2d
	eor3	v27.16b, v20.16b, v23.16b, v24.16b
	pmull2	v16.1q, v7.2d, v16.2d
	eor3	v26.16b, v21.16b, v19.16b, v22.16b
	eor3	v25.16b, v18.16b, v17.16b, v16.16b
	cmp	x19, #128
	b.lo	.LBB1_10
	mov	x14, v0.d[1]
	mov	x13, #-4467570830351532032
	movi	v16.2d, #0000000000000000
	fmov	d17, x13
	fmov	x15, d0
	dup	v18.2d, x15
	fmov	x16, d1
	fmov	d19, x14
	dup	v20.2d, x16
	mov	x17, v1.d[1]
	fmov	x18, d2
	fmov	d21, x17
	dup	v22.2d, x18
	mov	x1, v2.d[1]
	fmov	x2, d3
	fmov	d23, x1
	dup	v24.2d, x2
	fmov	x8, d4
	fmov	x9, d5
	fmov	x10, d6
	fmov	x11, d7
	mov	x12, v3.d[1]
	mov	x13, v4.d[1]
	mov	x14, v5.d[1]
	mov	x15, v6.d[1]
	mov	x16, v7.d[1]
	.p2align	5, , 16
.LBB1_9:
	zip1	v12.2d, v16.2d, v27.2d
	ldp	q28, q29, [x3]
	movi	v13.2d, #0000000000000000
	mov	v13.d[0], v27.d[1]
	ldp	q30, q31, [x3, #32]
	sub	x19, x19, #128
	eor	v26.16b, v12.16b, v26.16b
	ldp	q8, q9, [x3, #64]
	pmull	v27.1q, v26.1d, v17.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	ldp	q10, q11, [x3, #96]
	add	x3, x3, #128
	eor	v26.16b, v26.16b, v27.16b
	pmull	v27.1q, v26.1d, v17.1d
	ext	v12.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v30.16b
	rev64	v30.16b, v8.16b
	rev64	v8.16b, v10.16b
	eor3	v25.16b, v25.16b, v13.16b, v27.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v29.16b
	rev64	v29.16b, v31.16b
	rev64	v31.16b, v9.16b
	rev64	v9.16b, v11.16b
	pmull	v13.1q, v1.1d, v8.1d
	pmull2	v10.1q, v0.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v27.16b, v25.16b, v12.16b
	pmull2	v27.1q, v18.2d, v9.2d
	pmull2	v12.1q, v1.2d, v8.2d
	pmull	v9.1q, v19.1d, v9.1d
	eor	v10.16b, v11.16b, v10.16b
	pmull2	v11.1q, v20.2d, v8.2d
	pmull	v8.1q, v21.1d, v8.1d
	eor	v27.16b, v11.16b, v27.16b
	eor3	v10.16b, v10.16b, v12.16b, v13.16b
	pmull2	v11.1q, v2.2d, v31.2d
	pmull	v12.1q, v2.1d, v31.1d
	eor	v8.16b, v8.16b, v9.16b
	pmull2	v9.1q, v22.2d, v31.2d
	pmull	v31.1q, v23.1d, v31.1d
	eor3	v10.16b, v10.16b, v11.16b, v12.16b
	pmull2	v11.1q, v24.2d, v30.2d
	pmull2	v12.1q, v3.2d, v30.2d
	eor3	v27.16b, v27.16b, v9.16b, v11.16b
	fmov	d11, x12
	pmull	v9.1q, v3.1d, v30.1d
	eor3	v9.16b, v10.16b, v12.16b, v9.16b
	pmull	v10.1q, v4.1d, v29.1d
	fmov	d12, x14
	pmull	v30.1q, v11.1d, v30.1d
	fmov	d11, x13
	eor3	v30.16b, v8.16b, v31.16b, v30.16b
	pmull2	v8.1q, v4.2d, v29.2d
	dup	v31.2d, x8
	eor3	v8.16b, v9.16b, v8.16b, v10.16b
	dup	v9.2d, x9
	pmull2	v10.1q, v5.2d, v28.2d
	pmull2	v31.1q, v31.2d, v29.2d
	pmull	v29.1q, v11.1d, v29.1d
	pmull	v11.1q, v5.1d, v28.1d
	pmull2	v9.1q, v9.2d, v28.2d
	pmull	v28.1q, v12.1d, v28.1d
	eor3	v27.16b, v27.16b, v31.16b, v9.16b
	eor3	v31.16b, v8.16b, v10.16b, v11.16b
	eor3	v28.16b, v30.16b, v29.16b, v28.16b
	pmull2	v30.1q, v6.2d, v26.2d
	pmull	v8.1q, v6.1d, v26.1d
	dup	v29.2d, x10
	fmov	d9, x15
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x16
	dup	v8.2d, x11
	pmull2	v29.1q, v29.2d, v26.2d
	pmull	v9.1q, v9.1d, v26.1d
	pmull	v26.1q, v7.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v8.1q, v8.2d, v25.2d
	pmull2	v25.1q, v7.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x19, #127
	b.hi	.LBB1_9
.LBB1_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x8, #-4467570830351532032
	mov	v0.d[0], v27.d[1]
	fmov	d2, x8
	eor	v1.16b, v1.16b, v26.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v25.16b, v0.16b, v2.16b
	eor	v9.16b, v1.16b, v0.16b
	b	.LBB1_12
.LBB1_11:
	mov	x19, x4
.LBB1_12:
	cmp	x19, #16
	b.lo	.LBB1_15
	ldr	q0, [x0, #240]
	movi	v3.2d, #0000000000000000
	fmov	x8, d0
	mov	x9, v0.d[1]
	dup	v2.2d, x8
	mov	x8, #-4467570830351532032
	fmov	d1, x9
	fmov	d4, x8
	.p2align	5, , 16
.LBB1_14:
	ldr	q5, [x3], #16
	movi	v17.2d, #0000000000000000
	sub	x19, x19, #16
	rev64	v5.16b, v5.16b
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v9.16b
	pmull	v7.1q, v1.1d, v5.1d
	pmull2	v16.1q, v2.2d, v5.2d
	pmull	v6.1q, v0.1d, v5.1d
	pmull2	v5.1q, v0.2d, v5.2d
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
	eor3	v9.16b, v17.16b, v5.16b, v6.16b
	cmp	x19, #15
	b.hi	.LBB1_14
.LBB1_15:
	cbz	x19, .LBB1_19
	mov	w8, #16
	mov	x24, x0
	stur	q9, [x29, #-112]
	str	q14, [sp]
	mov	x21, x5
	mov	x22, x7
	mov	x23, x4
	mov	w1, wzr
	mov	x25, x6
	mov	x20, x3
	sub	x2, x8, x19
	sub	x8, x29, #80
	add	x0, x8, x19
	bl	memset
	sub	x0, x29, #80
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q1, [x29, #-80]
	mov	x6, x25
	cbz	x25, .LBB1_35
	ldr	q14, [sp]
	ldur	q2, [x29, #-112]
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.lo	.LBB1_21
	ldr	q0, [x24, #240]
	rev64	v1.16b, v1.16b
	mov	x8, #-4467570830351532032
	mov	x0, x24
	mov	x4, x23
	mov	x7, x22
	mov	x5, x21
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v2.16b
	dup	v3.2d, v1.d[0]
	dup	v4.2d, v0.d[0]
	pmull	v2.1q, v0.1d, v1.1d
	pmull2	v3.1q, v0.2d, v3.2d
	pmull2	v4.1q, v4.2d, v1.2d
	pmull2	v0.1q, v0.2d, v1.2d
	movi	v1.2d, #0000000000000000
	eor	v3.16b, v4.16b, v3.16b
	zip1	v4.2d, v1.2d, v3.2d
	mov	v1.d[0], v3.d[1]
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v9.16b, v1.16b, v0.16b, v2.16b
	b	.LBB1_23
.LBB1_19:
	cbz	x6, .LBB1_38
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.hs	.LBB1_23
.LBB1_21:
	mov	w8, wzr
.LBB1_22:
	mov	w0, w8
	add	sp, sp, #592
	.cfi_def_cfa wsp, 144
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x28, x25, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldp	d15, d14, [sp], #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
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
.LBB1_23:
	.cfi_restore_state
	adrp	x8, .LCPI1_0
	rev32	v1.16b, v14.16b
	subs	x19, x6, #128
	str	q14, [sp]
	ldr	q0, [x8, :lo12:.LCPI1_0]
	add	v10.4s, v1.4s, v0.4s
	b.lo	.LBB1_29
	adrp	x8, .LCPI1_1
	adrp	x9, .LCPI1_2
	ldp	q14, q12, [x0]
	ldp	q13, q28, [x0, #32]
	rev32	v16.16b, v10.16b
	ldr	q22, [x8, :lo12:.LCPI1_1]
	adrp	x8, .LCPI1_3
	ldr	q23, [x9, :lo12:.LCPI1_2]
	adrp	x9, .LCPI1_4
	add	v2.4s, v1.4s, v22.4s
	ldr	q25, [x8, :lo12:.LCPI1_3]
	adrp	x8, .LCPI1_5
	ldr	q26, [x9, :lo12:.LCPI1_4]
	adrp	x9, .LCPI1_6
	ldr	q31, [x8, :lo12:.LCPI1_5]
	adrp	x8, .LCPI1_7
	ldr	q8, [x9, :lo12:.LCPI1_6]
	ldr	q27, [x8, :lo12:.LCPI1_7]
	add	v3.4s, v1.4s, v23.4s
	adrp	x8, .LCPI1_8
	ldp	q30, q15, [x0, #160]
	ldp	q21, q24, [x0, #128]
	add	x9, x5, #128
	add	v4.4s, v1.4s, v25.4s
	add	v5.4s, v1.4s, v26.4s
	stp	q15, q24, [x29, #-224]
	add	v19.4s, v1.4s, v8.4s
	add	v18.4s, v1.4s, v31.4s
	rev32	v17.16b, v2.16b
	rev32	v7.16b, v3.16b
	add	v20.4s, v1.4s, v27.4s
	rev32	v6.16b, v4.16b
	rev32	v5.16b, v5.16b
	rev32	v3.16b, v19.16b
	rev32	v4.16b, v18.16b
	ldp	q11, q18, [x0, #64]
	rev32	v2.16b, v20.16b
	ldp	q19, q20, [x0, #96]
	//APP
	aese	v16.16b, v14.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v14.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v14.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v14.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v12.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v12.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v12.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v13.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v13.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v28.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v28.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v28.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v28.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v28.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v11.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v11.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v18.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v18.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v18.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v18.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v18.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v18.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v18.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v18.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v19.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v19.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v19.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v19.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v19.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v19.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v20.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v20.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v20.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v20.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v20.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v21.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v21.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v21.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v21.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v21.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v24.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v24.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v24.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v24.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v30.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v30.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v30.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v30.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v30.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v30.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	//APP
	aese	v16.16b, v15.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v15.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v15.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v15.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	stp	q21, q20, [x29, #-160]
	stp	q19, q18, [x29, #-128]
	ldp	q19, q29, [x0, #192]
	ldr	q18, [x8, :lo12:.LCPI1_8]
	//APP
	aese	v16.16b, v19.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v19.16b
	aesmc	v17.16b, v17.16b
	aese	v7.16b, v19.16b
	aesmc	v7.16b, v7.16b
	aese	v6.16b, v19.16b
	aesmc	v6.16b, v6.16b
	aese	v5.16b, v19.16b
	aesmc	v5.16b, v5.16b
	aese	v4.16b, v19.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	//NO_APP
	add	x8, x7, #128
	aese	v16.16b, v29.16b
	aese	v17.16b, v29.16b
	aese	v7.16b, v29.16b
	aese	v6.16b, v29.16b
	aese	v5.16b, v29.16b
	aese	v4.16b, v29.16b
	aese	v3.16b, v29.16b
	aese	v2.16b, v29.16b
	add	v10.4s, v1.4s, v18.4s
	ldp	q1, q18, [x5]
	stp	q19, q30, [x29, #-192]
	ldr	q30, [x0, #224]
	eor3	v16.16b, v16.16b, v1.16b, v30.16b
	ldp	q1, q19, [x5, #32]
	eor3	v17.16b, v17.16b, v18.16b, v30.16b
	eor3	v19.16b, v6.16b, v19.16b, v30.16b
	eor3	v18.16b, v7.16b, v1.16b, v30.16b
	ldp	q1, q6, [x5, #64]
	eor3	v21.16b, v4.16b, v6.16b, v30.16b
	eor3	v20.16b, v5.16b, v1.16b, v30.16b
	ldp	q1, q4, [x5, #96]
	stp	q16, q17, [x7]
	eor3	v15.16b, v2.16b, v4.16b, v30.16b
	eor3	v24.16b, v3.16b, v1.16b, v30.16b
	stp	q18, q19, [x7, #32]
	stp	q20, q21, [x7, #64]
	stp	q24, q15, [x7, #96]
	cmp	x19, #128
	b.lo	.LBB1_28
	ldp	q1, q2, [x0, #240]
	ldp	q3, q4, [x0, #272]
	mov	x10, #-4467570830351532032
	str	q11, [sp, #64]
	mov	v11.16b, v28.16b
	mov	v28.16b, v13.16b
	mov	v13.16b, v12.16b
	mov	v12.16b, v14.16b
	stp	q23, q22, [x29, #-256]
	stp	q2, q25, [sp, #352]
	str	q26, [sp, #176]
	stp	q27, q28, [sp, #32]
	stp	q13, q12, [sp, #80]
	ldp	q5, q6, [x0, #304]
	ldp	q7, q14, [x0, #336]
	str	q11, [sp, #16]
	ext	v2.16b, v2.16b, v2.16b, #8
	stp	q14, q7, [sp, #256]
	ext	v14.16b, v14.16b, v14.16b, #8
	ext	v7.16b, v7.16b, v7.16b, #8
	stp	q7, q14, [sp, #224]
	stp	q6, q5, [sp, #288]
	ext	v6.16b, v6.16b, v6.16b, #8
	ext	v5.16b, v5.16b, v5.16b, #8
	stp	q5, q6, [sp, #192]
	str	q1, [sp, #384]
	ext	v1.16b, v1.16b, v1.16b, #8
	stp	q1, q2, [sp, #112]
	stp	q4, q3, [sp, #320]
	ext	v4.16b, v4.16b, v4.16b, #8
	ext	v3.16b, v3.16b, v3.16b, #8
	stp	q3, q4, [sp, #144]
	.p2align	5, , 16
.LBB1_26:
	add	v3.4s, v10.4s, v22.4s
	add	v2.4s, v10.4s, v0.4s
	mov	v7.16b, v0.16b
	mov	v0.16b, v8.16b
	ldp	q13, q12, [sp, #80]
	ldr	q11, [sp, #16]
	add	x11, x9, #128
	add	x12, x8, #128
	sub	x19, x19, #128
	rev32	v1.16b, v10.16b
	mov	v14.16b, v31.16b
	rev64	v15.16b, v15.16b
	rev32	v27.16b, v3.16b
	add	v3.4s, v10.4s, v23.4s
	rev32	v2.16b, v2.16b
	rev32	v28.16b, v3.16b
	add	v3.4s, v10.4s, v25.4s
	rev32	v25.16b, v3.16b
	add	v3.4s, v10.4s, v26.4s
	rev32	v26.16b, v3.16b
	add	v3.4s, v10.4s, v31.4s
	rev32	v23.16b, v3.16b
	add	v3.4s, v10.4s, v8.4s
	rev32	v22.16b, v3.16b
	rev64	v3.16b, v16.16b
	ext	v16.16b, v3.16b, v3.16b, #8
	rev64	v3.16b, v17.16b
	ext	v4.16b, v3.16b, v3.16b, #8
	rev64	v3.16b, v18.16b
	eor	v17.16b, v9.16b, v16.16b
	ldp	q9, q6, [sp, #240]
	ext	v18.16b, v3.16b, v3.16b, #8
	rev64	v3.16b, v19.16b
	ext	v8.16b, v3.16b, v3.16b, #8
	rev64	v3.16b, v20.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	rev64	v3.16b, v21.16b
	ext	v31.16b, v3.16b, v3.16b, #8
	rev64	v3.16b, v24.16b
	movi	v24.2d, #0000000000000000
	//APP
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v12.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v12.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v12.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v12.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v12.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v12.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v12.16b
	aesmc	v22.16b, v22.16b
	pmull	v19.1q, v17.1d, v6.1d
	pmull2	v16.1q, v17.2d, v6.2d
	pmull	v20.1q, v17.1d, v9.1d
	pmull2	v21.1q, v17.2d, v9.2d
	eor3	v24.16b, v24.16b, v20.16b, v21.16b
	//NO_APP
	ldr	q6, [sp, #272]
	ldr	q12, [sp, #224]
	//APP
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v13.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	pmull	v20.1q, v4.1d, v6.1d
	pmull2	v17.1q, v4.2d, v6.2d
	pmull	v21.1q, v4.1d, v12.1d
	pmull2	v9.1q, v4.2d, v12.2d
	eor3	v24.16b, v24.16b, v21.16b, v9.16b
	//NO_APP
	eor	v4.16b, v20.16b, v19.16b
	ldr	q6, [sp, #288]
	ldr	q12, [sp, #208]
	ldr	q13, [sp, #48]
	//APP
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v13.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	pmull	v20.1q, v18.1d, v6.1d
	pmull2	v19.1q, v18.2d, v6.2d
	pmull	v21.1q, v18.1d, v12.1d
	pmull2	v9.1q, v18.2d, v12.2d
	eor3	v24.16b, v24.16b, v21.16b, v9.16b
	//NO_APP
	ldr	q12, [sp, #304]
	ldr	q13, [sp, #192]
	//APP
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v11.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v11.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v11.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v11.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v11.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v11.16b
	aesmc	v22.16b, v22.16b
	pmull	v21.1q, v8.1d, v12.1d
	pmull2	v18.1q, v8.2d, v12.2d
	pmull	v9.1q, v8.1d, v13.1d
	pmull2	v6.1q, v8.2d, v13.2d
	eor3	v24.16b, v24.16b, v9.16b, v6.16b
	//NO_APP
	ldr	q9, [sp, #320]
	ldr	q12, [sp, #160]
	ldr	q13, [sp, #64]
	ldur	q11, [x29, #-112]
	eor3	v4.16b, v4.16b, v20.16b, v21.16b
	//APP
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v13.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	pmull	v6.1q, v5.1d, v9.1d
	pmull2	v20.1q, v5.2d, v9.2d
	pmull	v21.1q, v5.1d, v12.1d
	pmull2	v8.1q, v5.2d, v12.2d
	eor3	v24.16b, v24.16b, v21.16b, v8.16b
	//NO_APP
	ldr	q12, [sp, #336]
	ldr	q13, [sp, #144]
	//APP
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v11.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v11.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v11.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v11.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v11.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v11.16b
	aesmc	v22.16b, v22.16b
	pmull	v5.1q, v31.1d, v12.1d
	pmull2	v21.1q, v31.2d, v12.2d
	pmull	v8.1q, v31.1d, v13.1d
	pmull2	v9.1q, v31.2d, v13.2d
	eor3	v24.16b, v24.16b, v8.16b, v9.16b
	//NO_APP
	ext	v3.16b, v3.16b, v3.16b, #8
	ldr	q9, [sp, #352]
	ldr	q12, [sp, #128]
	ldp	q11, q13, [x29, #-144]
	eor3	v4.16b, v4.16b, v6.16b, v5.16b
	ext	v5.16b, v15.16b, v15.16b, #8
	//APP
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v13.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v13.16b
	aesmc	v22.16b, v22.16b
	pmull	v6.1q, v3.1d, v9.1d
	pmull2	v15.1q, v3.2d, v9.2d
	pmull	v31.1q, v3.1d, v12.1d
	pmull2	v8.1q, v3.2d, v12.2d
	eor3	v24.16b, v24.16b, v31.16b, v8.16b
	//NO_APP
	ldr	q12, [sp, #384]
	ldr	q13, [sp, #112]
	//APP
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v11.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v11.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v11.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v11.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v11.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v11.16b
	aesmc	v22.16b, v22.16b
	pmull	v31.1q, v5.1d, v12.1d
	pmull2	v3.1q, v5.2d, v12.2d
	pmull	v8.1q, v5.1d, v13.1d
	pmull2	v9.1q, v5.2d, v13.2d
	eor3	v24.16b, v24.16b, v8.16b, v9.16b
	//NO_APP
	mov	v8.16b, v0.16b
	mov	v0.16b, v7.16b
	ldur	q7, [x29, #-160]
	//APP
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v7.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v7.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v7.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v7.16b
	aesmc	v22.16b, v22.16b
	//NO_APP
	ldur	q7, [x29, #-208]
	//APP
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v7.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v7.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v7.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v7.16b
	aesmc	v22.16b, v22.16b
	//NO_APP
	ldur	q7, [x29, #-176]
	//APP
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v7.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v7.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v7.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v7.16b
	aesmc	v22.16b, v22.16b
	//NO_APP
	ldur	q7, [x29, #-224]
	//APP
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v7.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v7.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v7.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v7.16b
	aesmc	v22.16b, v22.16b
	//NO_APP
	ldur	q7, [x29, #-192]
	//APP
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v27.16b, v7.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v7.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v23.16b, v7.16b
	aesmc	v23.16b, v23.16b
	aese	v22.16b, v7.16b
	aesmc	v22.16b, v22.16b
	//NO_APP
	aese	v1.16b, v29.16b
	aese	v2.16b, v29.16b
	aese	v27.16b, v29.16b
	aese	v28.16b, v29.16b
	aese	v25.16b, v29.16b
	aese	v26.16b, v29.16b
	aese	v23.16b, v29.16b
	aese	v22.16b, v29.16b
	eor3	v31.16b, v4.16b, v6.16b, v31.16b
	ldp	q5, q6, [x9]
	eor3	v4.16b, v17.16b, v16.16b, v19.16b
	eor3	v17.16b, v6.16b, v2.16b, v30.16b
	eor3	v16.16b, v5.16b, v1.16b, v30.16b
	eor3	v1.16b, v4.16b, v18.16b, v20.16b
	ldp	q2, q4, [x9, #32]
	eor3	v1.16b, v1.16b, v21.16b, v15.16b
	eor3	v19.16b, v4.16b, v28.16b, v30.16b
	eor3	v18.16b, v2.16b, v27.16b, v30.16b
	ldr	q27, [sp, #32]
	ldp	q2, q4, [x9, #64]
	eor3	v21.16b, v4.16b, v26.16b, v30.16b
	movi	v4.2d, #0000000000000000
	zip1	v4.2d, v4.2d, v24.2d
	ldr	q26, [sp, #176]
	eor3	v20.16b, v2.16b, v25.16b, v30.16b
	movi	v2.2d, #0000000000000000
	mov	v2.d[0], v24.d[1]
	eor	v4.16b, v4.16b, v31.16b
	ldr	q25, [sp, #368]
	mov	v31.16b, v14.16b
	add	v10.4s, v10.4s, v27.4s
	eor3	v1.16b, v1.16b, v3.16b, v2.16b
	fmov	d2, x10
	pmull	v3.1q, v4.1d, v2.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v3.16b, v4.16b, v3.16b
	pmull	v2.1q, v3.1d, v2.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor3	v9.16b, v1.16b, v2.16b, v3.16b
	ldp	q1, q2, [x9, #96]
	stp	q16, q17, [x8]
	stp	q18, q19, [x8, #32]
	mov	x9, x11
	stp	q20, q21, [x8, #64]
	eor3	v15.16b, v2.16b, v22.16b, v30.16b
	eor3	v24.16b, v1.16b, v23.16b, v30.16b
	ldp	q23, q22, [x29, #-256]
	stp	q24, q15, [x8, #96]
	mov	x8, x12
	cmp	x19, #127
	b.hi	.LBB1_26
	mov	x8, x12
	mov	x9, x11
.LBB1_28:
	rev64	v6.16b, v19.16b
	rev64	v7.16b, v20.16b
	ldp	q19, q20, [x0, #240]
	rev64	v4.16b, v18.16b
	rev64	v18.16b, v15.16b
	ldp	q5, q2, [x0, #336]
	rev64	v1.16b, v16.16b
	rev64	v16.16b, v21.16b
	ldp	q21, q22, [x0, #272]
	mov	x10, #-4467570830351532032
	mov	x7, x8
	mov	x5, x9
	ext	v3.16b, v1.16b, v1.16b, #8
	rev64	v1.16b, v17.16b
	rev64	v17.16b, v24.16b
	ldp	q23, q24, [x0, #304]
	pmull	v28.1q, v20.1d, v17.1d
	eor	v3.16b, v3.16b, v9.16b
	dup	v25.2d, v19.d[0]
	pmull2	v26.1q, v19.2d, v18.2d
	pmull	v27.1q, v19.1d, v18.1d
	pmull2	v25.1q, v25.2d, v18.2d
	dup	v18.2d, v18.d[0]
	eor	v26.16b, v27.16b, v26.16b
	pmull2	v27.1q, v20.2d, v17.2d
	pmull2	v18.1q, v19.2d, v18.2d
	dup	v19.2d, v20.d[0]
	pmull2	v19.1q, v19.2d, v17.2d
	dup	v17.2d, v17.d[0]
	eor	v19.16b, v19.16b, v25.16b
	dup	v25.2d, v21.d[0]
	pmull2	v17.1q, v20.2d, v17.2d
	eor3	v20.16b, v26.16b, v27.16b, v28.16b
	pmull2	v26.1q, v21.2d, v16.2d
	pmull	v27.1q, v21.1d, v16.1d
	pmull2	v25.1q, v25.2d, v16.2d
	dup	v16.2d, v16.d[0]
	eor3	v20.16b, v20.16b, v26.16b, v27.16b
	pmull2	v16.1q, v21.2d, v16.2d
	pmull	v21.1q, v22.1d, v7.1d
	eor3	v16.16b, v17.16b, v18.16b, v16.16b
	dup	v17.2d, v22.d[0]
	pmull2	v18.1q, v22.2d, v7.2d
	pmull2	v17.1q, v17.2d, v7.2d
	dup	v7.2d, v7.d[0]
	eor3	v18.16b, v20.16b, v18.16b, v21.16b
	pmull2	v20.1q, v23.2d, v6.2d
	pmull	v21.1q, v23.1d, v6.1d
	eor3	v17.16b, v19.16b, v25.16b, v17.16b
	dup	v19.2d, v23.d[0]
	pmull2	v7.1q, v22.2d, v7.2d
	eor3	v18.16b, v18.16b, v20.16b, v21.16b
	pmull	v20.1q, v24.1d, v4.1d
	pmull2	v19.1q, v19.2d, v6.2d
	dup	v6.2d, v6.d[0]
	pmull2	v6.1q, v23.2d, v6.2d
	eor3	v6.16b, v16.16b, v7.16b, v6.16b
	dup	v7.2d, v24.d[0]
	pmull2	v16.1q, v24.2d, v4.2d
	pmull2	v7.1q, v7.2d, v4.2d
	dup	v4.2d, v4.d[0]
	eor3	v16.16b, v18.16b, v16.16b, v20.16b
	pmull2	v18.1q, v5.2d, v1.2d
	eor3	v7.16b, v17.16b, v19.16b, v7.16b
	dup	v17.2d, v5.d[0]
	pmull	v19.1q, v5.1d, v1.1d
	pmull2	v4.1q, v24.2d, v4.2d
	pmull2	v17.1q, v17.2d, v1.2d
	dup	v1.2d, v1.d[0]
	pmull2	v1.1q, v5.2d, v1.2d
	eor3	v5.16b, v16.16b, v18.16b, v19.16b
	dup	v16.2d, v2.d[0]
	eor3	v1.16b, v6.16b, v4.16b, v1.16b
	dup	v6.2d, v3.d[0]
	pmull	v4.1q, v2.1d, v3.1d
	pmull2	v16.1q, v16.2d, v3.2d
	pmull2	v6.1q, v2.2d, v6.2d
	pmull2	v2.1q, v2.2d, v3.2d
	eor3	v3.16b, v7.16b, v17.16b, v4.16b
	eor3	v4.16b, v5.16b, v6.16b, v16.16b
	movi	v5.2d, #0000000000000000
	zip1	v6.2d, v5.2d, v4.2d
	mov	v5.d[0], v4.d[1]
	fmov	d4, x10
	eor	v3.16b, v6.16b, v3.16b
	pmull	v6.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v6.16b
	pmull	v4.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor3	v1.16b, v1.16b, v2.16b, v4.16b
	eor3	v9.16b, v5.16b, v1.16b, v3.16b
	b	.LBB1_30
.LBB1_29:
	mov	x19, x6
.LBB1_30:
	mov	x23, x4
	cmp	x19, #16
	b.lo	.LBB1_33
	ldp	q23, q24, [x0, #224]
	ldp	q1, q2, [x0]
	movi	v27.2d, #0000000000000000
	fmov	x8, d24
	ldp	q3, q4, [x0, #32]
	ldp	q5, q6, [x0, #64]
	dup	v26.2d, x8
	ldp	q7, q16, [x0, #96]
	ldp	q17, q18, [x0, #128]
	ldp	q19, q20, [x0, #160]
	ldp	q21, q22, [x0, #192]
	mov	x9, v24.d[1]
	mov	x8, #-4467570830351532032
	fmov	d25, x9
	fmov	d28, x8
	.p2align	5, , 16
.LBB1_32:
	rev32	v30.16b, v10.16b
	ldr	q29, [x5], #16
	add	v10.4s, v10.4s, v0.4s
	sub	x19, x19, #16
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
	aese	v30.16b, v21.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v22.16b
	eor3	v29.16b, v29.16b, v23.16b, v30.16b
	str	q29, [x7], #16
	rev64	v29.16b, v29.16b
	ext	v29.16b, v29.16b, v29.16b, #8
	eor	v29.16b, v29.16b, v9.16b
	movi	v9.2d, #0000000000000000
	pmull	v31.1q, v25.1d, v29.1d
	pmull2	v8.1q, v26.2d, v29.2d
	pmull	v30.1q, v24.1d, v29.1d
	pmull2	v29.1q, v24.2d, v29.2d
	eor	v31.16b, v8.16b, v31.16b
	zip1	v8.2d, v27.2d, v31.2d
	mov	v9.d[0], v31.d[1]
	eor	v30.16b, v8.16b, v30.16b
	pmull	v31.1q, v30.1d, v28.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v30.16b, v30.16b, v31.16b
	pmull	v31.1q, v30.1d, v28.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v29.16b, v31.16b, v29.16b
	eor3	v9.16b, v9.16b, v29.16b, v30.16b
	cmp	x19, #15
	b.hi	.LBB1_32
.LBB1_33:
	cbz	x19, .LBB1_37
	mov	w8, #16
	mov	x24, x0
	mov	w1, wzr
	mov	x25, x6
	mov	x21, x7
	mov	x22, x5
	stp	q10, q9, [x29, #-128]
	sub	x20, x8, x19
	sub	x8, x29, #80
	add	x0, x8, x19
	mov	x2, x20
	bl	memset
	sub	x0, x29, #80
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldur	q1, [x29, #-128]
	ldp	q2, q3, [x24]
	sub	x1, x29, #80
	sub	x22, x29, #80
	mov	x0, x21
	mov	x2, x19
	rev32	v1.16b, v1.16b
	ldur	q0, [x29, #-80]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v2.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x24, #32]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x24, #64]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x24, #96]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x24, #128]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q2, [x24, #160]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x24, #192]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	ldr	q1, [x24, #224]
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
	ldur	q0, [x29, #-80]
	mov	x6, x25
	mov	x0, x24
	rev64	v0.16b, v0.16b
	ext	v1.16b, v0.16b, v0.16b, #8
	ldr	q0, [x24, #240]
	b	.LBB1_36
.LBB1_35:
	ldr	q0, [x24, #240]
	rev64	v1.16b, v1.16b
	mov	x0, x24
	ext	v1.16b, v1.16b, v1.16b, #8
.LBB1_36:
	ldur	q2, [x29, #-112]
	fmov	x8, d0
	ldr	q14, [sp]
	mov	x4, x23
	dup	v4.2d, x8
	mov	x8, #-4467570830351532032
	eor	v1.16b, v1.16b, v2.16b
	dup	v3.2d, v1.d[0]
	pmull2	v4.1q, v4.2d, v1.2d
	pmull	v2.1q, v0.1d, v1.1d
	pmull2	v3.1q, v0.2d, v3.2d
	pmull2	v0.1q, v0.2d, v1.2d
	movi	v1.2d, #0000000000000000
	eor	v3.16b, v4.16b, v3.16b
	zip1	v4.2d, v1.2d, v3.2d
	mov	v1.d[0], v3.d[1]
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v9.16b, v1.16b, v0.16b, v2.16b
	b	.LBB1_38
.LBB1_37:
	ldr	q14, [sp]
	mov	x4, x23
.LBB1_38:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	ldp	q2, q1, [x0, #224]
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	dup	v5.2d, v1.d[0]
	eor	v0.16b, v9.16b, v0.16b
	dup	v4.2d, v0.d[0]
	pmull2	v5.1q, v5.2d, v0.2d
	pmull	v3.1q, v1.1d, v0.1d
	pmull2	v0.1q, v1.2d, v0.2d
	pmull2	v4.1q, v1.2d, v4.2d
	movi	v1.2d, #0000000000000000
	eor	v4.16b, v5.16b, v4.16b
	zip1	v5.2d, v1.2d, v4.2d
	mov	v1.d[0], v4.d[1]
	fmov	d4, x8
	ldr	x8, [x29, #88]
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v5.16b
	pmull	v4.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v0.16b, v4.16b, v0.16b
	eor3	v0.16b, v0.16b, v1.16b, v3.16b
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q1, q3, [x0]
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	ldp	q1, q4, [x0, #32]
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v1.16b
	aesmc	v4.16b, v4.16b
	ldp	q1, q3, [x0, #64]
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q4, [x0, #96]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v1.16b
	aesmc	v4.16b, v4.16b
	ldp	q1, q3, [x0, #128]
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q4, [x0, #160]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v1.16b
	aesmc	v4.16b, v4.16b
	ldp	q1, q3, [x0, #192]
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	eor3	v0.16b, v3.16b, v0.16b, v2.16b
	str	q0, [x8]
	mov	w8, #1
	b	.LBB1_22
.Lfunc_end1:
	.size	haberdashery_aes256gcm_neoversev2_encrypt, .Lfunc_end1-haberdashery_aes256gcm_neoversev2_encrypt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.word	0
	.word	0
	.word	0
	.word	1
.LCPI2_1:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI2_2:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI2_3:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI2_4:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI2_5:
	.word	0
	.word	0
	.word	0
	.word	6
.LCPI2_6:
	.word	0
	.word	0
	.word	0
	.word	7
.LCPI2_7:
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
	stp	d15, d14, [sp, #-144]!
	.cfi_def_cfa_offset 144
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	stp	x29, x30, [sp, #64]
	stp	x28, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	add	x29, sp, #64
	.cfi_def_cfa w29, 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w28, -64
	.cfi_offset w30, -72
	.cfi_offset w29, -80
	.cfi_offset b8, -88
	.cfi_offset b9, -96
	.cfi_offset b10, -104
	.cfi_offset b11, -112
	.cfi_offset b12, -120
	.cfi_offset b13, -128
	.cfi_offset b14, -136
	.cfi_offset b15, -144
	.cfi_remember_state
	sub	sp, sp, #688
	ldr	x8, [x29, #96]
	cmp	x6, x8
	b.ne	.LBB2_21
	mov	x9, #2305843009213693950
	mov	w8, wzr
	cmp	x4, x9
	b.hi	.LBB2_22
	ldr	x9, [x29, #80]
	cmp	x9, #16
	b.ne	.LBB2_22
	mov	w8, wzr
	cmp	x2, #12
	b.ne	.LBB2_22
	mov	x9, #68719411200
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB2_22
	movi	v14.4s, #1, lsl #24
	add	x8, x1, #8
	movi	v11.2d, #0000000000000000
	ld1	{ v14.s }[0], [x1], #4
	ld1	{ v14.s }[1], [x1]
	ld1	{ v14.s }[2], [x8]
	cbz	x4, .LBB2_19
	subs	x19, x4, #128
	b.lo	.LBB2_11
	ldp	q0, q1, [x3]
	ldp	q2, q3, [x3, #32]
	rev64	v17.16b, v1.16b
	ldp	q6, q7, [x3, #96]
	rev64	v23.16b, v7.16b
	ldp	q4, q5, [x3, #64]
	rev64	v19.16b, v3.16b
	rev64	v21.16b, v5.16b
	add	x3, x3, #128
	rev64	v16.16b, v0.16b
	ldp	q0, q1, [x0, #240]
	rev64	v18.16b, v2.16b
	ldp	q2, q3, [x0, #272]
	rev64	v22.16b, v6.16b
	rev64	v20.16b, v4.16b
	ldp	q4, q5, [x0, #304]
	pmull2	v27.1q, v1.2d, v22.2d
	pmull	v28.1q, v1.1d, v22.1d
	ldp	q6, q7, [x0, #336]
	pmull2	v25.1q, v0.2d, v23.2d
	pmull	v26.1q, v0.1d, v23.1d
	dup	v24.2d, v0.d[0]
	eor	v25.16b, v26.16b, v25.16b
	dup	v26.2d, v1.d[0]
	pmull2	v24.1q, v24.2d, v23.2d
	dup	v23.2d, v23.d[0]
	pmull2	v26.1q, v26.2d, v22.2d
	dup	v22.2d, v22.d[0]
	pmull2	v23.1q, v0.2d, v23.2d
	eor3	v25.16b, v25.16b, v27.16b, v28.16b
	pmull	v27.1q, v2.1d, v21.1d
	pmull2	v22.1q, v1.2d, v22.2d
	eor	v24.16b, v26.16b, v24.16b
	pmull2	v26.1q, v2.2d, v21.2d
	eor	v22.16b, v22.16b, v23.16b
	dup	v23.2d, v2.d[0]
	eor3	v25.16b, v25.16b, v26.16b, v27.16b
	dup	v26.2d, v3.d[0]
	pmull2	v27.1q, v3.2d, v20.2d
	pmull2	v23.1q, v23.2d, v21.2d
	pmull2	v26.1q, v26.2d, v20.2d
	dup	v21.2d, v21.d[0]
	eor3	v23.16b, v24.16b, v23.16b, v26.16b
	pmull	v24.1q, v3.1d, v20.1d
	dup	v20.2d, v20.d[0]
	pmull2	v21.1q, v2.2d, v21.2d
	pmull	v26.1q, v5.1d, v18.1d
	pmull2	v20.1q, v3.2d, v20.2d
	eor3	v24.16b, v25.16b, v27.16b, v24.16b
	pmull	v25.1q, v4.1d, v19.1d
	eor3	v20.16b, v22.16b, v21.16b, v20.16b
	pmull2	v22.1q, v4.2d, v19.2d
	dup	v21.2d, v4.d[0]
	eor3	v22.16b, v24.16b, v22.16b, v25.16b
	dup	v24.2d, v5.d[0]
	pmull2	v21.1q, v21.2d, v19.2d
	dup	v19.2d, v19.d[0]
	pmull2	v25.1q, v5.2d, v18.2d
	pmull2	v24.1q, v24.2d, v18.2d
	dup	v18.2d, v18.d[0]
	pmull2	v19.1q, v4.2d, v19.2d
	eor3	v22.16b, v22.16b, v25.16b, v26.16b
	pmull2	v18.1q, v5.2d, v18.2d
	eor3	v21.16b, v23.16b, v21.16b, v24.16b
	pmull	v23.1q, v6.1d, v17.1d
	pmull	v24.1q, v7.1d, v16.1d
	eor3	v18.16b, v20.16b, v19.16b, v18.16b
	pmull2	v20.1q, v6.2d, v17.2d
	dup	v19.2d, v6.d[0]
	eor3	v20.16b, v22.16b, v20.16b, v23.16b
	dup	v22.2d, v7.d[0]
	pmull2	v19.1q, v19.2d, v17.2d
	dup	v17.2d, v17.d[0]
	pmull2	v23.1q, v7.2d, v16.2d
	pmull2	v22.1q, v22.2d, v16.2d
	dup	v16.2d, v16.d[0]
	pmull2	v17.1q, v6.2d, v17.2d
	eor3	v27.16b, v20.16b, v23.16b, v24.16b
	pmull2	v16.1q, v7.2d, v16.2d
	eor3	v26.16b, v21.16b, v19.16b, v22.16b
	eor3	v25.16b, v18.16b, v17.16b, v16.16b
	cmp	x19, #128
	b.lo	.LBB2_10
	mov	x14, v0.d[1]
	mov	x13, #-4467570830351532032
	movi	v16.2d, #0000000000000000
	fmov	d17, x13
	fmov	x15, d0
	dup	v18.2d, x15
	fmov	x16, d1
	fmov	d19, x14
	dup	v20.2d, x16
	mov	x17, v1.d[1]
	fmov	x18, d2
	fmov	d21, x17
	dup	v22.2d, x18
	mov	x1, v2.d[1]
	fmov	x2, d3
	fmov	d23, x1
	dup	v24.2d, x2
	fmov	x8, d4
	fmov	x9, d5
	fmov	x10, d6
	fmov	x11, d7
	mov	x12, v3.d[1]
	mov	x13, v4.d[1]
	mov	x14, v5.d[1]
	mov	x15, v6.d[1]
	mov	x16, v7.d[1]
	.p2align	5, , 16
.LBB2_9:
	zip1	v12.2d, v16.2d, v27.2d
	ldp	q28, q29, [x3]
	movi	v13.2d, #0000000000000000
	mov	v13.d[0], v27.d[1]
	ldp	q30, q31, [x3, #32]
	sub	x19, x19, #128
	eor	v26.16b, v12.16b, v26.16b
	ldp	q8, q9, [x3, #64]
	pmull	v27.1q, v26.1d, v17.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	ldp	q10, q11, [x3, #96]
	add	x3, x3, #128
	eor	v26.16b, v26.16b, v27.16b
	pmull	v27.1q, v26.1d, v17.1d
	ext	v12.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v28.16b
	rev64	v28.16b, v30.16b
	rev64	v30.16b, v8.16b
	rev64	v8.16b, v10.16b
	eor3	v25.16b, v25.16b, v13.16b, v27.16b
	ext	v27.16b, v26.16b, v26.16b, #8
	rev64	v26.16b, v29.16b
	rev64	v29.16b, v31.16b
	rev64	v31.16b, v9.16b
	rev64	v9.16b, v11.16b
	pmull	v13.1q, v1.1d, v8.1d
	pmull2	v10.1q, v0.2d, v9.2d
	pmull	v11.1q, v0.1d, v9.1d
	eor3	v25.16b, v27.16b, v25.16b, v12.16b
	pmull2	v27.1q, v18.2d, v9.2d
	pmull2	v12.1q, v1.2d, v8.2d
	pmull	v9.1q, v19.1d, v9.1d
	eor	v10.16b, v11.16b, v10.16b
	pmull2	v11.1q, v20.2d, v8.2d
	pmull	v8.1q, v21.1d, v8.1d
	eor	v27.16b, v11.16b, v27.16b
	eor3	v10.16b, v10.16b, v12.16b, v13.16b
	pmull2	v11.1q, v2.2d, v31.2d
	pmull	v12.1q, v2.1d, v31.1d
	eor	v8.16b, v8.16b, v9.16b
	pmull2	v9.1q, v22.2d, v31.2d
	pmull	v31.1q, v23.1d, v31.1d
	eor3	v10.16b, v10.16b, v11.16b, v12.16b
	pmull2	v11.1q, v24.2d, v30.2d
	pmull2	v12.1q, v3.2d, v30.2d
	eor3	v27.16b, v27.16b, v9.16b, v11.16b
	fmov	d11, x12
	pmull	v9.1q, v3.1d, v30.1d
	eor3	v9.16b, v10.16b, v12.16b, v9.16b
	pmull	v10.1q, v4.1d, v29.1d
	fmov	d12, x14
	pmull	v30.1q, v11.1d, v30.1d
	fmov	d11, x13
	eor3	v30.16b, v8.16b, v31.16b, v30.16b
	pmull2	v8.1q, v4.2d, v29.2d
	dup	v31.2d, x8
	eor3	v8.16b, v9.16b, v8.16b, v10.16b
	dup	v9.2d, x9
	pmull2	v10.1q, v5.2d, v28.2d
	pmull2	v31.1q, v31.2d, v29.2d
	pmull	v29.1q, v11.1d, v29.1d
	pmull	v11.1q, v5.1d, v28.1d
	pmull2	v9.1q, v9.2d, v28.2d
	pmull	v28.1q, v12.1d, v28.1d
	eor3	v27.16b, v27.16b, v31.16b, v9.16b
	eor3	v31.16b, v8.16b, v10.16b, v11.16b
	eor3	v28.16b, v30.16b, v29.16b, v28.16b
	pmull2	v30.1q, v6.2d, v26.2d
	pmull	v8.1q, v6.1d, v26.1d
	dup	v29.2d, x10
	fmov	d9, x15
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	fmov	d31, x16
	dup	v8.2d, x11
	pmull2	v29.1q, v29.2d, v26.2d
	pmull	v9.1q, v9.1d, v26.1d
	pmull	v26.1q, v7.1d, v25.1d
	pmull	v31.1q, v31.1d, v25.1d
	pmull2	v8.1q, v8.2d, v25.2d
	pmull2	v25.1q, v7.2d, v25.2d
	eor3	v26.16b, v27.16b, v29.16b, v26.16b
	eor3	v27.16b, v30.16b, v31.16b, v8.16b
	eor3	v25.16b, v28.16b, v9.16b, v25.16b
	cmp	x19, #127
	b.hi	.LBB2_9
.LBB2_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v27.2d
	mov	x8, #-4467570830351532032
	mov	v0.d[0], v27.d[1]
	fmov	d2, x8
	eor	v1.16b, v1.16b, v26.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v25.16b, v0.16b, v2.16b
	eor	v11.16b, v1.16b, v0.16b
	b	.LBB2_12
.LBB2_11:
	mov	x19, x4
.LBB2_12:
	cmp	x19, #16
	b.lo	.LBB2_15
	ldr	q0, [x0, #240]
	movi	v3.2d, #0000000000000000
	fmov	x8, d0
	mov	x9, v0.d[1]
	dup	v2.2d, x8
	mov	x8, #-4467570830351532032
	fmov	d1, x9
	fmov	d4, x8
	.p2align	5, , 16
.LBB2_14:
	ldr	q5, [x3], #16
	movi	v17.2d, #0000000000000000
	sub	x19, x19, #16
	rev64	v5.16b, v5.16b
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v11.16b
	pmull	v7.1q, v1.1d, v5.1d
	pmull2	v16.1q, v2.2d, v5.2d
	pmull	v6.1q, v0.1d, v5.1d
	pmull2	v5.1q, v0.2d, v5.2d
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
	eor3	v11.16b, v17.16b, v5.16b, v6.16b
	cmp	x19, #15
	b.hi	.LBB2_14
.LBB2_15:
	cbz	x19, .LBB2_19
	mov	w8, #16
	mov	x24, x0
	stur	q11, [x29, #-112]
	str	q14, [sp]
	mov	x21, x5
	mov	x22, x7
	mov	x23, x4
	mov	w1, wzr
	mov	x25, x6
	mov	x20, x3
	sub	x2, x8, x19
	sub	x8, x29, #80
	add	x0, x8, x19
	bl	memset
	sub	x0, x29, #80
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-80]
	mov	x6, x25
	cbz	x25, .LBB2_33
	ldr	q14, [sp]
	ldur	q2, [x29, #-112]
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.lo	.LBB2_21
	ldr	q1, [x24, #240]
	rev64	v0.16b, v0.16b
	mov	x8, #-4467570830351532032
	mov	x0, x24
	mov	x4, x23
	mov	x7, x22
	mov	x5, x21
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v2.16b
	dup	v3.2d, v0.d[0]
	dup	v4.2d, v1.d[0]
	pmull	v2.1q, v1.1d, v0.1d
	pmull2	v3.1q, v1.2d, v3.2d
	pmull2	v4.1q, v4.2d, v0.2d
	pmull2	v0.1q, v1.2d, v0.2d
	movi	v1.2d, #0000000000000000
	eor	v3.16b, v4.16b, v3.16b
	zip1	v4.2d, v1.2d, v3.2d
	mov	v1.d[0], v3.d[1]
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v11.16b, v1.16b, v0.16b, v2.16b
	b	.LBB2_23
.LBB2_19:
	cbz	x6, .LBB2_34
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.hs	.LBB2_23
.LBB2_21:
	mov	w8, wzr
.LBB2_22:
	mov	w0, w8
	add	sp, sp, #688
	.cfi_def_cfa wsp, 144
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x28, x25, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldp	d15, d14, [sp], #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
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
.LBB2_23:
	.cfi_restore_state
	adrp	x8, .LCPI2_0
	ldr	x19, [x29, #88]
	rev32	v1.16b, v14.16b
	str	q14, [sp]
	ldr	q0, [x8, :lo12:.LCPI2_0]
	add	v10.4s, v1.4s, v0.4s
	cmp	x6, #128
	b.lo	.LBB2_27
	ldp	q3, q4, [x0, #288]
	adrp	x8, .LCPI2_1
	ldp	q17, q16, [x0]
	mov	x20, x6
	ldr	q7, [x0, #352]
	stur	q0, [x29, #-160]
	stp	q4, q3, [x29, #-224]
	ldp	q1, q2, [x0, #256]
	stur	q2, [x29, #-192]
	ext	v2.16b, v2.16b, v2.16b, #8
	ldp	q5, q6, [x0, #320]
	stur	q6, [x29, #-256]
	ext	v6.16b, v6.16b, v6.16b, #8
	ext	v4.16b, v4.16b, v4.16b, #8
	ext	v3.16b, v3.16b, v3.16b, #8
	stp	q16, q17, [sp, #448]
	ldp	q17, q16, [x0, #32]
	str	q2, [sp, #64]
	stur	q1, [x29, #-176]
	ext	v2.16b, v1.16b, v1.16b, #8
	str	q7, [sp, #480]
	ext	v7.16b, v7.16b, v7.16b, #8
	stur	q5, [x29, #-240]
	ext	v5.16b, v5.16b, v5.16b, #8
	str	q6, [sp, #256]
	stp	q3, q4, [sp, #208]
	ldr	q3, [x8, :lo12:.LCPI2_1]
	adrp	x8, .LCPI2_2
	str	q7, [sp, #272]
	str	q5, [sp, #240]
	stp	q16, q17, [sp, #416]
	ldp	q17, q16, [x0, #64]
	str	q3, [sp, #192]
	ldr	q3, [x8, :lo12:.LCPI2_2]
	adrp	x8, .LCPI2_3
	stp	q16, q17, [sp, #384]
	ldp	q17, q16, [x0, #96]
	str	q3, [sp, #176]
	ldr	q3, [x8, :lo12:.LCPI2_3]
	adrp	x8, .LCPI2_4
	str	q3, [sp, #160]
	ldr	q3, [x8, :lo12:.LCPI2_4]
	adrp	x8, .LCPI2_5
	stp	q16, q17, [sp, #352]
	ldp	q17, q16, [x0, #128]
	stp	q16, q17, [sp, #320]
	ldp	q17, q16, [x0, #160]
	str	q3, [sp, #144]
	ldr	q3, [x8, :lo12:.LCPI2_5]
	adrp	x8, .LCPI2_6
	stp	q16, q17, [sp, #288]
	str	q3, [sp, #128]
	ldr	q3, [x8, :lo12:.LCPI2_6]
	adrp	x8, .LCPI2_7
	str	q3, [sp, #112]
	ldr	q4, [x8, :lo12:.LCPI2_7]
	mov	x8, #-4467570830351532032
	ldp	q17, q3, [x0, #224]
	ext	v1.16b, v3.16b, v3.16b, #8
	stp	q3, q4, [sp, #80]
	stp	q1, q2, [sp, #32]
	ldp	q2, q1, [x0, #192]
	str	q2, [sp, #16]
	.p2align	5, , 16
.LBB2_25:
	add	v6.4s, v10.4s, v0.4s
	ldr	q0, [sp, #192]
	ldp	q3, q21, [x5]
	add	x9, x5, #128
	add	x10, x19, #128
	sub	x20, x20, #128
	rev32	v30.16b, v6.16b
	ldp	q4, q24, [x5, #64]
	ldp	q16, q2, [x5, #32]
	ldr	q22, [sp, #448]
	stur	q2, [x29, #-144]
	add	v7.4s, v10.4s, v0.4s
	ldr	q0, [sp, #176]
	rev64	v5.16b, v3.16b
	rev64	v14.16b, v4.16b
	stp	q16, q21, [x29, #-128]
	ext	v9.16b, v5.16b, v5.16b, #8
	ldp	q5, q25, [x5, #96]
	rev32	v29.16b, v7.16b
	mov	x5, x9
	add	v18.4s, v10.4s, v0.4s
	ldp	q0, q6, [sp, #144]
	rev32	v28.16b, v18.16b
	rev64	v18.16b, v16.16b
	ext	v18.16b, v18.16b, v18.16b, #8
	add	v19.4s, v10.4s, v6.4s
	rev32	v7.16b, v19.16b
	eor	v19.16b, v11.16b, v9.16b
	add	v20.4s, v10.4s, v0.4s
	ldp	q0, q6, [sp, #112]
	rev32	v27.16b, v20.16b
	rev64	v20.16b, v2.16b
	ldr	q2, [sp, #272]
	add	v26.4s, v10.4s, v6.4s
	rev32	v6.16b, v26.16b
	add	v8.4s, v10.4s, v0.4s
	mov	v0.16b, v10.16b
	rev64	v10.16b, v21.16b
	ldp	q21, q16, [sp, #464]
	rev32	v31.16b, v0.16b
	rev32	v26.16b, v8.16b
	ext	v11.16b, v10.16b, v10.16b, #8
	movi	v8.2d, #0000000000000000
	//APP
	aese	v31.16b, v21.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v21.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v21.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v21.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v21.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v21.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v21.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v21.16b
	aesmc	v26.16b, v26.16b
	pmull	v15.1q, v19.1d, v16.1d
	pmull2	v9.1q, v19.2d, v16.2d
	pmull	v10.1q, v19.1d, v2.1d
	pmull2	v12.1q, v19.2d, v2.2d
	eor3	v8.16b, v8.16b, v10.16b, v12.16b
	//NO_APP
	rev64	v21.16b, v24.16b
	ext	v10.16b, v20.16b, v20.16b, #8
	ldur	q16, [x29, #-256]
	ldp	q23, q2, [sp, #240]
	//APP
	aese	v31.16b, v22.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v22.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v22.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v22.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v22.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v22.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v22.16b
	aesmc	v26.16b, v26.16b
	pmull	v19.1q, v11.1d, v16.1d
	pmull2	v13.1q, v11.2d, v16.2d
	pmull	v20.1q, v11.1d, v2.1d
	pmull2	v12.1q, v11.2d, v2.2d
	eor3	v8.16b, v8.16b, v20.16b, v12.16b
	//NO_APP
	ext	v11.16b, v14.16b, v14.16b, #8
	eor	v14.16b, v19.16b, v15.16b
	rev64	v12.16b, v5.16b
	ldur	q22, [x29, #-240]
	ldr	q2, [sp, #432]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	pmull	v19.1q, v18.1d, v22.1d
	pmull2	v20.1q, v18.2d, v22.2d
	pmull	v15.1q, v18.1d, v23.1d
	pmull2	v16.1q, v18.2d, v23.2d
	eor3	v8.16b, v8.16b, v15.16b, v16.16b
	//NO_APP
	eor3	v16.16b, v13.16b, v9.16b, v20.16b
	ldur	q22, [x29, #-224]
	ldr	q2, [sp, #416]
	ldr	q23, [sp, #224]
	rev64	v18.16b, v25.16b
	ext	v15.16b, v21.16b, v21.16b, #8
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	pmull	v20.1q, v10.1d, v22.1d
	pmull2	v21.1q, v10.2d, v22.2d
	pmull	v9.1q, v10.1d, v23.1d
	pmull2	v13.1q, v10.2d, v23.2d
	eor3	v8.16b, v8.16b, v9.16b, v13.16b
	//NO_APP
	eor3	v19.16b, v14.16b, v19.16b, v20.16b
	ext	v9.16b, v12.16b, v12.16b, #8
	ldur	q14, [x29, #-208]
	ldr	q2, [sp, #400]
	ldr	q22, [sp, #208]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	pmull	v20.1q, v11.1d, v14.1d
	pmull2	v10.1q, v11.2d, v14.2d
	pmull	v12.1q, v11.1d, v22.1d
	pmull2	v13.1q, v11.2d, v22.2d
	eor3	v8.16b, v8.16b, v12.16b, v13.16b
	//NO_APP
	eor3	v16.16b, v16.16b, v21.16b, v10.16b
	ldur	q13, [x29, #-192]
	ldr	q2, [sp, #384]
	ldp	q22, q23, [sp, #48]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	pmull	v21.1q, v15.1d, v13.1d
	pmull2	v10.1q, v15.2d, v13.2d
	pmull	v11.1q, v15.1d, v23.1d
	pmull2	v12.1q, v15.2d, v23.2d
	eor3	v8.16b, v8.16b, v11.16b, v12.16b
	//NO_APP
	ext	v18.16b, v18.16b, v18.16b, #8
	ldur	q13, [x29, #-176]
	ldr	q2, [sp, #368]
	ldr	q23, [sp, #32]
	eor3	v19.16b, v19.16b, v20.16b, v21.16b
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	pmull	v20.1q, v9.1d, v13.1d
	pmull2	v21.1q, v9.2d, v13.2d
	pmull	v11.1q, v9.1d, v22.1d
	pmull2	v12.1q, v9.2d, v22.2d
	eor3	v8.16b, v8.16b, v11.16b, v12.16b
	//NO_APP
	eor3	v16.16b, v16.16b, v10.16b, v21.16b
	ldr	q2, [sp, #352]
	ldr	q22, [sp, #80]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	pmull	v21.1q, v18.1d, v22.1d
	pmull2	v9.1q, v18.2d, v22.2d
	pmull	v10.1q, v18.1d, v23.1d
	pmull2	v11.1q, v18.2d, v23.2d
	eor3	v8.16b, v8.16b, v10.16b, v11.16b
	//NO_APP
	movi	v2.2d, #0000000000000000
	mov	v10.16b, v0.16b
	ldur	q0, [x29, #-160]
	eor3	v18.16b, v19.16b, v20.16b, v21.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[0], v8.d[1]
	fmov	d20, x8
	eor3	v16.16b, v16.16b, v9.16b, v19.16b
	zip1	v19.2d, v2.2d, v8.2d
	ldr	q2, [sp, #336]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	//NO_APP
	ldr	q2, [sp, #320]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	//NO_APP
	ldr	q2, [sp, #304]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	//NO_APP
	ldr	q2, [sp, #288]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	//NO_APP
	ldr	q2, [sp, #16]
	//APP
	aese	v31.16b, v2.16b
	aesmc	v31.16b, v31.16b
	aese	v30.16b, v2.16b
	aesmc	v30.16b, v30.16b
	aese	v29.16b, v2.16b
	aesmc	v29.16b, v29.16b
	aese	v28.16b, v2.16b
	aesmc	v28.16b, v28.16b
	aese	v7.16b, v2.16b
	aesmc	v7.16b, v7.16b
	aese	v27.16b, v2.16b
	aesmc	v27.16b, v27.16b
	aese	v6.16b, v2.16b
	aesmc	v6.16b, v6.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	//NO_APP
	ldur	q2, [x29, #-112]
	aese	v30.16b, v1.16b
	aese	v29.16b, v1.16b
	aese	v28.16b, v1.16b
	aese	v6.16b, v1.16b
	aese	v26.16b, v1.16b
	aese	v31.16b, v1.16b
	aese	v7.16b, v1.16b
	aese	v27.16b, v1.16b
	eor	v18.16b, v19.16b, v18.16b
	eor3	v5.16b, v17.16b, v6.16b, v5.16b
	eor3	v3.16b, v17.16b, v31.16b, v3.16b
	eor3	v4.16b, v17.16b, v7.16b, v4.16b
	eor3	v7.16b, v17.16b, v27.16b, v24.16b
	pmull	v19.1q, v18.1d, v20.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	stp	q4, q7, [x19, #64]
	eor	v18.16b, v18.16b, v19.16b
	pmull	v19.1q, v18.1d, v20.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	eor3	v11.16b, v16.16b, v19.16b, v18.16b
	eor3	v16.16b, v17.16b, v30.16b, v2.16b
	ldp	q18, q2, [x29, #-144]
	stp	q3, q16, [x19]
	eor3	v2.16b, v17.16b, v29.16b, v2.16b
	eor3	v18.16b, v17.16b, v28.16b, v18.16b
	stp	q2, q18, [x19, #32]
	eor3	v2.16b, v17.16b, v26.16b, v25.16b
	stp	q5, q2, [x19, #96]
	ldr	q2, [sp, #96]
	mov	x19, x10
	add	v10.4s, v10.4s, v2.4s
	cmp	x20, #127
	b.hi	.LBB2_25
	mov	x19, x10
	mov	x5, x9
	b	.LBB2_28
.LBB2_27:
	mov	x20, x6
.LBB2_28:
	cmp	x20, #16
	b.lo	.LBB2_31
	ldp	q2, q1, [x0, #224]
	ldp	q3, q4, [x0]
	movi	v27.2d, #0000000000000000
	fmov	x8, d1
	ldp	q5, q6, [x0, #32]
	ldp	q7, q16, [x0, #64]
	dup	v26.2d, x8
	ldp	q17, q18, [x0, #96]
	ldp	q19, q20, [x0, #128]
	ldp	q21, q22, [x0, #160]
	ldp	q23, q24, [x0, #192]
	mov	x9, v1.d[1]
	mov	x8, #-4467570830351532032
	fmov	d25, x9
	fmov	d28, x8
	.p2align	5, , 16
.LBB2_30:
	rev32	v30.16b, v10.16b
	ldr	q29, [x5], #16
	movi	v9.2d, #0000000000000000
	add	v10.4s, v10.4s, v0.4s
	sub	x20, x20, #16
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
	aese	v30.16b, v21.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v22.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v23.16b
	aesmc	v30.16b, v30.16b
	aese	v30.16b, v24.16b
	eor3	v30.16b, v2.16b, v30.16b, v29.16b
	rev64	v29.16b, v29.16b
	ext	v29.16b, v29.16b, v29.16b, #8
	str	q30, [x19], #16
	eor	v29.16b, v29.16b, v11.16b
	pmull	v31.1q, v25.1d, v29.1d
	pmull2	v8.1q, v26.2d, v29.2d
	pmull	v30.1q, v1.1d, v29.1d
	pmull2	v29.1q, v1.2d, v29.2d
	eor	v31.16b, v8.16b, v31.16b
	zip1	v8.2d, v27.2d, v31.2d
	mov	v9.d[0], v31.d[1]
	eor	v30.16b, v8.16b, v30.16b
	pmull	v31.1q, v30.1d, v28.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v30.16b, v30.16b, v31.16b
	pmull	v31.1q, v30.1d, v28.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v29.16b, v31.16b, v29.16b
	eor3	v11.16b, v9.16b, v29.16b, v30.16b
	cmp	x20, #15
	b.hi	.LBB2_30
.LBB2_31:
	stur	q11, [x29, #-112]
	mov	x22, x4
	mov	x23, x6
	mov	x24, x0
	cbz	x20, .LBB2_35
	mov	w8, #16
	mov	w1, wzr
	mov	x25, x7
	mov	x21, x5
	stur	q10, [x29, #-128]
	sub	x2, x8, x20
	sub	x8, x29, #80
	add	x0, x8, x20
	bl	memset
	sub	x0, x29, #80
	mov	x1, x21
	mov	x2, x20
	bl	memcpy
	ldur	q0, [x29, #-128]
	ldp	q1, q2, [x24]
	sub	x1, x29, #80
	mov	x0, x19
	mov	x2, x20
	rev32	v0.16b, v0.16b
	ldur	q3, [x29, #-80]
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
	ldur	q1, [x29, #-144]
	mov	x7, x25
	b	.LBB2_36
.LBB2_33:
	ldur	q2, [x29, #-112]
	ldr	q1, [x24, #240]
	rev64	v0.16b, v0.16b
	mov	x8, #-4467570830351532032
	ldr	q14, [sp]
	mov	x0, x24
	mov	x4, x23
	mov	x7, x22
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v2.16b
	dup	v4.2d, v1.d[0]
	dup	v3.2d, v0.d[0]
	pmull2	v4.1q, v4.2d, v0.2d
	pmull	v2.1q, v1.1d, v0.1d
	pmull2	v0.1q, v1.2d, v0.2d
	pmull2	v3.1q, v1.2d, v3.2d
	movi	v1.2d, #0000000000000000
	eor	v3.16b, v4.16b, v3.16b
	zip1	v4.2d, v1.2d, v3.2d
	mov	v1.d[0], v3.d[1]
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v11.16b, v1.16b, v0.16b, v2.16b
.LBB2_34:
	ldr	q6, [x7]
	b	.LBB2_40
.LBB2_35:
	movi	v1.2d, #0000000000000000
.LBB2_36:
	ldr	q0, [x7]
	sub	x0, x29, #80
	sub	x1, x29, #96
	stur	q1, [x29, #-96]
	stp	xzr, xzr, [x29, #-80]
	mov	x2, x20
	stur	q0, [x29, #-128]
	bl	memcpy
	cbz	x20, .LBB2_38
	ldur	q0, [x29, #-80]
	ldur	q2, [x29, #-112]
	ldr	q1, [x24, #240]
	mov	x8, #-4467570830351532032
	mov	x0, x24
	mov	x6, x23
	mov	x4, x22
	rev64	v0.16b, v0.16b
	dup	v4.2d, v1.d[0]
	ldr	q14, [sp]
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v2.16b
	dup	v3.2d, v0.d[0]
	pmull2	v4.1q, v4.2d, v0.2d
	pmull	v2.1q, v1.1d, v0.1d
	pmull2	v0.1q, v1.2d, v0.2d
	pmull2	v3.1q, v1.2d, v3.2d
	movi	v1.2d, #0000000000000000
	eor	v3.16b, v4.16b, v3.16b
	zip1	v4.2d, v1.2d, v3.2d
	mov	v1.d[0], v3.d[1]
	fmov	d3, x8
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v11.16b, v1.16b, v0.16b, v2.16b
	b	.LBB2_39
.LBB2_38:
	ldr	q14, [sp]
	ldur	q11, [x29, #-112]
	mov	x0, x24
	mov	x6, x23
	mov	x4, x22
.LBB2_39:
	ldur	q6, [x29, #-128]
.LBB2_40:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	ldp	q2, q1, [x0, #224]
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	dup	v5.2d, v1.d[0]
	eor	v0.16b, v11.16b, v0.16b
	dup	v4.2d, v0.d[0]
	pmull2	v5.1q, v5.2d, v0.2d
	pmull	v3.1q, v1.1d, v0.1d
	pmull2	v0.1q, v1.2d, v0.2d
	pmull2	v4.1q, v1.2d, v4.2d
	movi	v1.2d, #0000000000000000
	eor	v4.16b, v5.16b, v4.16b
	zip1	v5.2d, v1.2d, v4.2d
	mov	v1.d[0], v4.d[1]
	fmov	d4, x8
	eor	v3.16b, v5.16b, v3.16b
	pmull	v5.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v5.16b
	pmull	v4.1q, v3.1d, v4.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v0.16b, v4.16b, v0.16b
	eor3	v0.16b, v0.16b, v1.16b, v3.16b
	ldp	q1, q3, [x0]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v14.16b, v1.16b
	aesmc	v14.16b, v14.16b
	ldp	q1, q4, [x0, #32]
	eor	v0.16b, v6.16b, v0.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v1.16b
	aesmc	v4.16b, v4.16b
	ldp	q1, q3, [x0, #64]
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q4, [x0, #96]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v1.16b
	aesmc	v4.16b, v4.16b
	ldp	q1, q3, [x0, #128]
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	aesmc	v3.16b, v3.16b
	ldp	q1, q4, [x0, #160]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v4.16b, v1.16b
	aesmc	v4.16b, v4.16b
	ldp	q1, q3, [x0, #192]
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v1.16b
	eor3	v0.16b, v0.16b, v3.16b, v2.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	b	.LBB2_22
.Lfunc_end2:
	.size	haberdashery_aes256gcm_neoversev2_decrypt, .Lfunc_end2-haberdashery_aes256gcm_neoversev2_decrypt
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

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

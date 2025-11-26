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
	.section	.text.haberdashery_sivmac_neoversev2_init,"ax",@progbits
	.globl	haberdashery_sivmac_neoversev2_init
	.p2align	4
	.type	haberdashery_sivmac_neoversev2_init,@function
haberdashery_sivmac_neoversev2_init:
	.cfi_startproc
	cmp	x2, #32
	b.ne	.LBB0_2
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	d15, d14, [sp, #16]
	stp	d13, d12, [sp, #32]
	stp	d11, d10, [sp, #48]
	stp	d9, d8, [sp, #64]
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -56
	.cfi_offset b15, -64
	ldp	q6, q7, [x1]
	movi	v1.2d, #0000000000000000
	ext	v24.16b, v1.16b, v1.16b, #4
	movi	v4.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	dup	v5.4s, v1.s[0]
	movi	v25.4s, #1
	movi	v2.4s, #3
	movi	v21.2d, #0000000000000000
	movi	v26.4s, #7
	movi	v12.4s, #63
	ext	v17.16b, v5.16b, v7.16b, #4
	mov	w8, v7.s[3]
	ror	w8, w8, #8
	ext	v1.16b, v24.16b, v6.16b, #12
	mov	v3.d[1], v6.d[0]
	ext	v16.16b, v5.16b, v6.16b, #4
	dup	v0.4s, w8
	eor	v1.16b, v1.16b, v3.16b
	movi	v3.2d, #0000000000000000
	mov	v3.d[1], v7.d[0]
	aese	v0.16b, v4.16b
	dup	v0.4s, v0.s[0]
	eor3	v0.16b, v1.16b, v16.16b, v0.16b
	ext	v16.16b, v24.16b, v7.16b, #12
	eor3	v20.16b, v6.16b, v0.16b, v25.16b
	eor	v3.16b, v16.16b, v3.16b
	dup	v1.4s, v20.s[3]
	ext	v19.16b, v5.16b, v20.16b, #4
	aese	v1.16b, v4.16b
	dup	v1.4s, v1.s[0]
	eor3	v18.16b, v3.16b, v17.16b, v1.16b
	movi	v3.2d, #0000000000000000
	mov	v3.d[1], v20.d[0]
	ext	v17.16b, v24.16b, v20.16b, #12
	eor	v16.16b, v7.16b, v18.16b
	mov	w8, v16.s[3]
	mov	v21.d[1], v16.d[0]
	ext	v22.16b, v24.16b, v16.16b, #12
	ext	v23.16b, v5.16b, v16.16b, #4
	ror	w8, w8, #8
	dup	v1.4s, w8
	aese	v1.16b, v4.16b
	dup	v1.4s, v1.s[0]
	eor	v3.16b, v3.16b, v1.16b
	eor	v1.16b, v6.16b, v0.16b
	eor3	v3.16b, v3.16b, v17.16b, v19.16b
	eor3	v17.16b, v1.16b, v3.16b, v2.16b
	eor3	v0.16b, v6.16b, v0.16b, v3.16b
	dup	v19.4s, v17.s[3]
	ext	v27.16b, v5.16b, v17.16b, #4
	aese	v19.16b, v4.16b
	dup	v19.4s, v19.s[0]
	eor	v19.16b, v21.16b, v19.16b
	eor3	v21.16b, v19.16b, v22.16b, v23.16b
	movi	v22.2d, #0000000000000000
	mov	v22.d[1], v17.d[0]
	ext	v23.16b, v24.16b, v17.16b, #12
	eor3	v18.16b, v7.16b, v18.16b, v21.16b
	ext	v28.16b, v24.16b, v18.16b, #12
	mov	w8, v18.s[3]
	ext	v29.16b, v5.16b, v18.16b, #4
	ror	w8, w8, #8
	dup	v19.4s, w8
	aese	v19.16b, v4.16b
	dup	v19.4s, v19.s[0]
	eor	v19.16b, v22.16b, v19.16b
	eor3	v27.16b, v19.16b, v23.16b, v27.16b
	movi	v23.2d, #0000000000000000
	mov	v23.d[1], v18.d[0]
	eor3	v19.16b, v0.16b, v27.16b, v26.16b
	eor3	v30.16b, v1.16b, v3.16b, v27.16b
	movi	v3.2d, #0000000000000000
	dup	v22.4s, v19.s[3]
	ext	v31.16b, v5.16b, v19.16b, #4
	aese	v22.16b, v4.16b
	dup	v22.4s, v22.s[0]
	eor	v22.16b, v23.16b, v22.16b
	eor3	v23.16b, v22.16b, v28.16b, v29.16b
	movi	v28.2d, #0000000000000000
	mov	v28.d[1], v19.d[0]
	ext	v29.16b, v24.16b, v19.16b, #12
	eor3	v21.16b, v16.16b, v21.16b, v23.16b
	mov	w8, v21.s[3]
	mov	v3.d[1], v21.d[0]
	ror	w8, w8, #8
	dup	v22.4s, w8
	aese	v22.16b, v4.16b
	dup	v22.4s, v22.s[0]
	eor	v22.16b, v28.16b, v22.16b
	movi	v28.4s, #15
	eor3	v31.16b, v22.16b, v29.16b, v31.16b
	ext	v29.16b, v5.16b, v21.16b, #4
	eor3	v22.16b, v30.16b, v31.16b, v28.16b
	ext	v28.16b, v24.16b, v21.16b, #12
	dup	v1.4s, v22.s[3]
	ext	v8.16b, v24.16b, v22.16b, #12
	ext	v9.16b, v5.16b, v22.16b, #4
	aese	v1.16b, v4.16b
	dup	v1.4s, v1.s[0]
	eor	v1.16b, v3.16b, v1.16b
	eor3	v1.16b, v1.16b, v28.16b, v29.16b
	movi	v28.2d, #0000000000000000
	mov	v28.d[1], v22.d[0]
	eor3	v29.16b, v0.16b, v27.16b, v31.16b
	eor3	v23.16b, v18.16b, v23.16b, v1.16b
	mov	w8, v23.s[3]
	ror	w8, w8, #8
	dup	v3.4s, w8
	aese	v3.16b, v4.16b
	dup	v3.4s, v3.s[0]
	eor	v3.16b, v28.16b, v3.16b
	movi	v28.4s, #31
	eor3	v8.16b, v3.16b, v8.16b, v9.16b
	movi	v3.2d, #0000000000000000
	mov	v3.d[1], v23.d[0]
	ext	v9.16b, v5.16b, v23.16b, #4
	eor3	v27.16b, v29.16b, v8.16b, v28.16b
	ext	v28.16b, v24.16b, v23.16b, #12
	eor3	v13.16b, v30.16b, v31.16b, v8.16b
	dup	v0.4s, v27.s[3]
	ext	v11.16b, v5.16b, v27.16b, #4
	aese	v0.16b, v4.16b
	dup	v0.4s, v0.s[0]
	eor	v0.16b, v3.16b, v0.16b
	ext	v3.16b, v24.16b, v27.16b, #12
	eor3	v0.16b, v0.16b, v28.16b, v9.16b
	eor3	v28.16b, v21.16b, v1.16b, v0.16b
	movi	v1.2d, #0000000000000000
	mov	v1.d[1], v27.d[0]
	mov	w8, v28.s[3]
	ror	w8, w8, #8
	dup	v0.4s, w8
	adrp	x8, .LCPI0_3
	ldr	q10, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	ldr	q9, [x8, :lo12:.LCPI0_4]
	aese	v0.16b, v4.16b
	dup	v0.4s, v0.s[0]
	eor	v0.16b, v1.16b, v0.16b
	ext	v1.16b, v24.16b, v28.16b, #12
	aese	v10.16b, v6.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v6.16b
	aesmc	v9.16b, v9.16b
	eor3	v14.16b, v0.16b, v3.16b, v11.16b
	movi	v0.2d, #0000000000000000
	mov	v0.d[1], v28.d[0]
	ext	v3.16b, v5.16b, v28.16b, #4
	aese	v10.16b, v7.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v7.16b
	aesmc	v9.16b, v9.16b
	eor3	v31.16b, v13.16b, v14.16b, v12.16b
	aese	v10.16b, v20.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v20.16b
	aesmc	v9.16b, v9.16b
	dup	v30.4s, v31.s[3]
	aese	v10.16b, v16.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v16.16b
	aesmc	v9.16b, v9.16b
	aese	v30.16b, v4.16b
	aese	v10.16b, v17.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v17.16b
	aesmc	v9.16b, v9.16b
	dup	v30.4s, v30.s[0]
	aese	v10.16b, v18.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v18.16b
	aesmc	v9.16b, v9.16b
	eor3	v0.16b, v30.16b, v0.16b, v1.16b
	aese	v10.16b, v19.16b
	aesmc	v10.16b, v10.16b
	movi	v1.2d, #0000000000000000
	mov	v1.d[1], v31.d[0]
	aese	v9.16b, v19.16b
	aesmc	v9.16b, v9.16b
	eor3	v30.16b, v0.16b, v3.16b, v28.16b
	aese	v10.16b, v21.16b
	aesmc	v10.16b, v10.16b
	ext	v3.16b, v24.16b, v31.16b, #12
	aese	v9.16b, v21.16b
	aesmc	v9.16b, v9.16b
	mov	w8, v30.s[3]
	aese	v10.16b, v22.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v22.16b
	aesmc	v9.16b, v9.16b
	ror	w8, w8, #8
	aese	v10.16b, v23.16b
	aesmc	v10.16b, v10.16b
	dup	v0.4s, w8
	adrp	x8, .LCPI0_1
	aese	v9.16b, v23.16b
	aesmc	v9.16b, v9.16b
	ldr	q11, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_2
	aese	v10.16b, v27.16b
	aesmc	v10.16b, v10.16b
	ldr	q12, [x8, :lo12:.LCPI0_2]
	aese	v9.16b, v27.16b
	aesmc	v9.16b, v9.16b
	aese	v0.16b, v4.16b
	aese	v10.16b, v28.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v28.16b
	aesmc	v9.16b, v9.16b
	dup	v0.4s, v0.s[0]
	aese	v10.16b, v31.16b
	aesmc	v10.16b, v10.16b
	aese	v9.16b, v31.16b
	aesmc	v9.16b, v9.16b
	aese	v11.16b, v6.16b
	aesmc	v11.16b, v11.16b
	eor	v0.16b, v1.16b, v0.16b
	ext	v1.16b, v5.16b, v31.16b, #4
	aese	v10.16b, v30.16b
	aese	v12.16b, v6.16b
	aesmc	v12.16b, v12.16b
	aese	v9.16b, v30.16b
	aese	v11.16b, v7.16b
	aesmc	v11.16b, v11.16b
	eor3	v15.16b, v0.16b, v3.16b, v1.16b
	eor3	v0.16b, v29.16b, v8.16b, v14.16b
	movi	v29.4s, #127
	aese	v12.16b, v7.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v20.16b
	aesmc	v11.16b, v11.16b
	eor3	v14.16b, v13.16b, v14.16b, v15.16b
	eor3	v1.16b, v0.16b, v15.16b, v29.16b
	aese	v12.16b, v20.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v16.16b
	aesmc	v11.16b, v11.16b
	eor3	v0.16b, v14.16b, v29.16b, v10.16b
	eor	v3.8b, v9.8b, v1.8b
	aese	v12.16b, v16.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v17.16b
	aesmc	v11.16b, v11.16b
	mov	v8.16b, v0.16b
	aese	v12.16b, v17.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v18.16b
	aesmc	v11.16b, v11.16b
	mov	v8.d[1], v3.d[0]
	movi	v3.2d, #0000000000000000
	aese	v12.16b, v18.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v19.16b
	aesmc	v11.16b, v11.16b
	mov	w8, v8.s[3]
	aese	v12.16b, v19.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v21.16b
	aesmc	v11.16b, v11.16b
	ror	w8, w8, #8
	aese	v12.16b, v21.16b
	aesmc	v12.16b, v12.16b
	dup	v10.4s, w8
	aese	v11.16b, v22.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v22.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v23.16b
	aesmc	v11.16b, v11.16b
	aese	v10.16b, v4.16b
	aese	v12.16b, v23.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v27.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v27.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v28.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v28.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v31.16b
	aesmc	v11.16b, v11.16b
	aese	v12.16b, v31.16b
	aesmc	v12.16b, v12.16b
	aese	v11.16b, v30.16b
	aese	v12.16b, v30.16b
	eor3	v9.16b, v14.16b, v29.16b, v11.16b
	eor	v1.8b, v12.8b, v1.8b
	mov	v3.d[1], v9.d[0]
	ext	v29.16b, v5.16b, v9.16b, #4
	mov	v9.d[1], v1.d[0]
	ext	v1.16b, v24.16b, v9.16b, #12
	eor	v1.16b, v1.16b, v3.16b
	dup	v3.4s, v10.s[0]
	ext	v10.16b, v5.16b, v0.16b, #4
	stp	q9, q8, [x0, #128]
	eor3	v1.16b, v1.16b, v29.16b, v3.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v0.d[0]
	eor3	v25.16b, v9.16b, v1.16b, v25.16b
	dup	v3.4s, v25.s[3]
	ext	v12.16b, v5.16b, v25.16b, #4
	str	q25, [sp]
	aese	v3.16b, v4.16b
	dup	v3.4s, v3.s[0]
	eor	v3.16b, v29.16b, v3.16b
	ext	v29.16b, v24.16b, v8.16b, #12
	eor3	v11.16b, v3.16b, v29.16b, v10.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v25.d[0]
	eor	v10.16b, v8.16b, v11.16b
	eor	v0.8b, v0.8b, v11.8b
	mov	w8, v10.s[3]
	ext	v13.16b, v5.16b, v10.16b, #4
	ror	w8, w8, #8
	dup	v3.4s, w8
	aese	v3.16b, v4.16b
	dup	v3.4s, v3.s[0]
	eor	v3.16b, v29.16b, v3.16b
	ext	v29.16b, v24.16b, v25.16b, #12
	eor3	v3.16b, v3.16b, v29.16b, v12.16b
	eor	v29.16b, v9.16b, v1.16b
	movi	v12.2d, #0000000000000000
	mov	v12.d[1], v0.d[0]
	eor3	v25.16b, v29.16b, v3.16b, v2.16b
	dup	v0.4s, v25.s[3]
	aese	v0.16b, v4.16b
	dup	v0.4s, v0.s[0]
	eor	v0.16b, v12.16b, v0.16b
	ext	v12.16b, v24.16b, v10.16b, #12
	eor3	v2.16b, v0.16b, v12.16b, v13.16b
	movi	v12.2d, #0000000000000000
	mov	v12.d[1], v25.d[0]
	ext	v13.16b, v5.16b, v25.16b, #4
	eor3	v11.16b, v8.16b, v11.16b, v2.16b
	ldr	q8, [sp]
	ext	v15.16b, v5.16b, v11.16b, #4
	mov	w8, v11.s[3]
	ror	w8, w8, #8
	dup	v0.4s, w8
	adrp	x8, .LCPI0_0
	stp	q8, q10, [x0, #160]
	stp	q25, q11, [x0, #192]
	aese	v0.16b, v4.16b
	dup	v0.4s, v0.s[0]
	eor	v0.16b, v12.16b, v0.16b
	ext	v12.16b, v24.16b, v25.16b, #12
	eor3	v12.16b, v0.16b, v12.16b, v13.16b
	eor3	v13.16b, v9.16b, v1.16b, v3.16b
	movi	v0.2d, #0000000000000000
	mov	v0.d[1], v11.d[0]
	movi	v9.2d, #0000000000000000
	eor3	v26.16b, v13.16b, v12.16b, v26.16b
	eor3	v29.16b, v29.16b, v3.16b, v12.16b
	movi	v3.4s, #127
	dup	v1.4s, v26.s[3]
	aese	v1.16b, v4.16b
	dup	v1.4s, v1.s[0]
	eor	v0.16b, v0.16b, v1.16b
	ext	v1.16b, v24.16b, v11.16b, #12
	eor3	v15.16b, v0.16b, v1.16b, v15.16b
	ldr	q1, [x8, :lo12:.LCPI0_0]
	movi	v0.2d, #0000000000000000
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v26.d[0]
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v17.16b
	aesmc	v0.16b, v0.16b
	ext	v7.16b, v24.16b, v26.16b, #12
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v18.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	eor3	v16.16b, v10.16b, v2.16b, v15.16b
	aese	v0.16b, v19.16b
	aesmc	v0.16b, v0.16b
	mov	w8, v16.s[3]
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	ext	v17.16b, v5.16b, v26.16b, #4
	stp	q26, q16, [x0, #224]
	ror	w8, w8, #8
	aese	v1.16b, v18.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	dup	v2.4s, w8
	mov	x8, #-4467570830351532032
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v16.d[0]
	aese	v2.16b, v4.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v27.16b
	aesmc	v0.16b, v0.16b
	dup	v2.4s, v2.s[0]
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v28.16b
	aesmc	v0.16b, v0.16b
	eor	v2.16b, v6.16b, v2.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v31.16b
	aesmc	v0.16b, v0.16b
	eor3	v17.16b, v2.16b, v7.16b, v17.16b
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	movi	v2.4s, #15
	aese	v0.16b, v30.16b
	movi	v27.2d, #0000000000000000
	eor3	v18.16b, v29.16b, v17.16b, v2.16b
	aese	v1.16b, v28.16b
	aesmc	v1.16b, v1.16b
	eor3	v7.16b, v14.16b, v3.16b, v0.16b
	dup	v2.4s, v18.s[3]
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	ext	v28.16b, v5.16b, v18.16b, #4
	aese	v2.16b, v4.16b
	aese	v1.16b, v30.16b
	movi	v30.2d, #0000000000000000
	dup	v2.4s, v2.s[0]
	eor3	v6.16b, v14.16b, v3.16b, v1.16b
	ext	v1.16b, v24.16b, v16.16b, #12
	ext	v3.16b, v5.16b, v16.16b, #4
	dup	v14.2d, v7.d[0]
	eor	v19.16b, v19.16b, v2.16b
	pmull	v0.1q, v7.1d, v6.1d
	pmull	v2.1q, v6.1d, v7.1d
	pmull	v22.1q, v6.1d, v6.1d
	eor3	v1.16b, v19.16b, v1.16b, v3.16b
	eor	v0.16b, v2.16b, v0.16b
	pmull	v2.1q, v7.1d, v7.1d
	fmov	d19, x8
	eor3	v20.16b, v11.16b, v15.16b, v1.16b
	zip1	v3.2d, v4.2d, v0.2d
	mov	v27.d[0], v0.d[1]
	mov	w8, v20.s[3]
	eor	v2.16b, v3.16b, v2.16b
	mov	v30.d[1], v20.d[0]
	ext	v31.16b, v24.16b, v20.16b, #12
	stp	q18, q20, [x0, #256]
	ror	w8, w8, #8
	ext	v21.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v19.1d
	dup	v3.4s, w8
	eor	v2.16b, v21.16b, v2.16b
	movi	v21.2d, #0000000000000000
	mov	v21.d[1], v18.d[0]
	aese	v3.16b, v4.16b
	pmull	v23.1q, v2.1d, v19.1d
	ext	v0.16b, v2.16b, v2.16b, #8
	dup	v3.4s, v3.s[0]
	eor	v2.16b, v22.16b, v23.16b
	ext	v23.16b, v24.16b, v18.16b, #12
	eor3	v22.16b, v13.16b, v12.16b, v17.16b
	eor	v3.16b, v21.16b, v3.16b
	eor3	v21.16b, v27.16b, v2.16b, v0.16b
	eor3	v23.16b, v3.16b, v23.16b, v28.16b
	pmull	v0.1q, v21.1d, v6.1d
	pmull2	v2.1q, v21.2d, v14.2d
	movi	v3.4s, #31
	eor3	v27.16b, v22.16b, v23.16b, v3.16b
	eor	v0.16b, v2.16b, v0.16b
	pmull	v3.1q, v21.1d, v7.1d
	dup	v2.4s, v27.s[3]
	zip1	v28.2d, v4.2d, v0.2d
	aese	v2.16b, v4.16b
	eor	v3.16b, v28.16b, v3.16b
	dup	v2.4s, v2.s[0]
	ext	v28.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v19.1d
	eor	v2.16b, v30.16b, v2.16b
	ext	v30.16b, v5.16b, v20.16b, #4
	eor	v3.16b, v28.16b, v3.16b
	dup	v28.2d, v6.d[0]
	eor3	v2.16b, v2.16b, v31.16b, v30.16b
	pmull2	v30.1q, v21.2d, v28.2d
	pmull	v12.1q, v3.1d, v19.1d
	eor3	v31.16b, v16.16b, v1.16b, v2.16b
	movi	v1.2d, #0000000000000000
	mov	v1.d[0], v0.d[1]
	ext	v0.16b, v3.16b, v3.16b, #8
	eor	v2.16b, v30.16b, v12.16b
	dup	v30.2d, v21.d[0]
	movi	v16.2d, #0000000000000000
	eor3	v3.16b, v1.16b, v2.16b, v0.16b
	pmull2	v2.1q, v30.2d, v21.2d
	pmull2	v30.1q, v21.2d, v30.2d
	movi	v0.2d, #0000000000000000
	pmull	v1.1q, v21.1d, v21.1d
	mov	w8, v31.s[3]
	stp	q27, q31, [x0, #288]
	eor	v2.16b, v30.16b, v2.16b
	ror	w8, w8, #8
	pmull2	v30.1q, v21.2d, v21.2d
	dup	v12.4s, w8
	mov	v0.d[0], v2.d[1]
	zip1	v2.2d, v4.2d, v2.2d
	eor	v1.16b, v2.16b, v1.16b
	aese	v12.16b, v4.16b
	ext	v2.16b, v1.16b, v1.16b, #8
	pmull	v1.1q, v1.1d, v19.1d
	eor	v1.16b, v2.16b, v1.16b
	pmull	v2.1q, v1.1d, v19.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v2.16b, v30.16b, v2.16b
	eor3	v30.16b, v0.16b, v2.16b, v1.16b
	movi	v0.2d, #0000000000000000
	mov	v0.d[1], v27.d[0]
	dup	v2.4s, v12.s[0]
	ext	v1.16b, v24.16b, v27.16b, #12
	eor	v0.16b, v0.16b, v2.16b
	ext	v2.16b, v5.16b, v27.16b, #4
	pmull	v8.1q, v30.1d, v30.1d
	pmull2	v10.1q, v30.2d, v30.2d
	stp	q3, q30, [x0, #32]
	eor3	v12.16b, v0.16b, v1.16b, v2.16b
	dup	v0.2d, v3.d[0]
	pmull2	v1.1q, v0.2d, v3.2d
	pmull2	v0.1q, v3.2d, v0.2d
	eor3	v22.16b, v22.16b, v23.16b, v12.16b
	eor	v0.16b, v0.16b, v1.16b
	pmull	v1.1q, v3.1d, v3.1d
	zip1	v2.2d, v4.2d, v0.2d
	eor	v1.16b, v2.16b, v1.16b
	eor3	v2.16b, v29.16b, v17.16b, v23.16b
	movi	v17.4s, #63
	ext	v29.16b, v1.16b, v1.16b, #8
	pmull	v1.1q, v1.1d, v19.1d
	eor3	v17.16b, v2.16b, v12.16b, v17.16b
	movi	v2.2d, #0000000000000000
	mov	v2.d[0], v0.d[1]
	pmull2	v0.1q, v3.2d, v3.2d
	eor	v1.16b, v29.16b, v1.16b
	mov	v16.d[1], v17.d[0]
	pmull	v29.1q, v1.1d, v19.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v0.16b, v29.16b
	dup	v29.4s, v17.s[3]
	aese	v29.16b, v4.16b
	eor3	v1.16b, v2.16b, v0.16b, v1.16b
	movi	v0.2d, #0000000000000000
	ext	v2.16b, v24.16b, v31.16b, #12
	mov	v0.d[1], v31.d[0]
	ext	v24.16b, v24.16b, v17.16b, #12
	dup	v29.4s, v29.s[0]
	eor3	v0.16b, v29.16b, v0.16b, v2.16b
	pmull	v2.1q, v30.1d, v6.1d
	pmull2	v29.1q, v30.2d, v14.2d
	eor	v29.16b, v29.16b, v2.16b
	dup	v2.2d, v30.d[0]
	pmull2	v13.1q, v2.2d, v30.2d
	pmull2	v2.1q, v30.2d, v2.2d
	eor	v2.16b, v2.16b, v13.16b
	ext	v13.16b, v5.16b, v31.16b, #4
	ext	v5.16b, v5.16b, v17.16b, #4
	mov	v9.d[0], v2.d[1]
	zip1	v2.2d, v4.2d, v2.2d
	eor3	v13.16b, v0.16b, v13.16b, v31.16b
	pmull2	v0.1q, v1.2d, v14.2d
	pmull	v14.1q, v1.1d, v6.1d
	eor	v2.16b, v2.16b, v8.16b
	mov	w8, v13.s[3]
	eor	v0.16b, v0.16b, v14.16b
	pmull	v14.1q, v30.1d, v7.1d
	stp	q17, q13, [x0, #320]
	ldp	d13, d12, [sp, #32]
	movi	v17.2d, #0000000000000000
	ext	v8.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v19.1d
	ror	w8, w8, #8
	mov	v17.d[0], v0.d[1]
	eor	v2.16b, v8.16b, v2.16b
	pmull	v8.1q, v2.1d, v19.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v8.16b, v10.16b, v8.16b
	zip1	v10.2d, v4.2d, v29.2d
	eor	v10.16b, v10.16b, v14.16b
	dup	v14.4s, w8
	eor3	v2.16b, v8.16b, v9.16b, v2.16b
	pmull	v8.1q, v1.1d, v7.1d
	zip1	v9.2d, v4.2d, v0.2d
	mov	v7.d[1], v6.d[0]
	eor	v8.16b, v9.16b, v8.16b
	ext	v25.16b, v10.16b, v10.16b, #8
	pmull	v9.1q, v10.1d, v19.1d
	stp	q7, q21, [x0]
	aese	v14.16b, v4.16b
	mov	v4.d[0], v29.d[1]
	ext	v10.16b, v8.16b, v8.16b, #8
	pmull	v8.1q, v8.1d, v19.1d
	eor	v18.16b, v25.16b, v9.16b
	pmull2	v25.1q, v30.2d, v28.2d
	dup	v23.4s, v14.s[0]
	ldp	d15, d14, [sp, #16]
	eor	v20.16b, v10.16b, v8.16b
	ext	v26.16b, v18.16b, v18.16b, #8
	pmull	v18.1q, v18.1d, v19.1d
	ldp	d9, d8, [sp, #64]
	ldp	d11, d10, [sp, #48]
	eor	v16.16b, v16.16b, v23.16b
	eor	v18.16b, v25.16b, v18.16b
	pmull2	v25.1q, v1.2d, v28.2d
	ext	v0.16b, v20.16b, v20.16b, #8
	eor3	v5.16b, v16.16b, v24.16b, v5.16b
	movi	v16.4s, #127
	eor3	v4.16b, v4.16b, v18.16b, v26.16b
	eor3	v5.16b, v22.16b, v5.16b, v16.16b
	pmull	v16.1q, v20.1d, v19.1d
	str	q5, [x0, #352]
	eor	v5.16b, v25.16b, v16.16b
	stp	q4, q1, [x0, #64]
	eor3	v0.16b, v17.16b, v5.16b, v0.16b
	stp	q0, q2, [x0, #96]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	.cfi_restore b14
	.cfi_restore b15
.LBB0_2:
	cmp	x2, #32
	cset	w0, eq
	ret
.Lfunc_end0:
	.size	haberdashery_sivmac_neoversev2_init, .Lfunc_end0-haberdashery_sivmac_neoversev2_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_0:
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
	.section	.text.haberdashery_sivmac_neoversev2_sign,"ax",@progbits
	.globl	haberdashery_sivmac_neoversev2_sign
	.p2align	4
	.type	haberdashery_sivmac_neoversev2_sign,@function
haberdashery_sivmac_neoversev2_sign:
	.cfi_startproc
	mov	x8, #68719476736
	cmp	x2, x8
	ccmp	x4, #16, #0, ls
	b.eq	.LBB1_2
	mov	w0, wzr
	ret
.LBB1_2:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	d15, d14, [sp, #80]
	stp	d13, d12, [sp, #96]
	stp	d11, d10, [sp, #112]
	stp	d9, d8, [sp, #128]
	stp	x29, x30, [sp, #144]
	stp	x24, x23, [sp, #160]
	stp	x22, x21, [sp, #176]
	stp	x20, x19, [sp, #192]
	add	x29, sp, #144
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	.cfi_offset b12, -104
	.cfi_offset b13, -112
	.cfi_offset b14, -120
	.cfi_offset b15, -128
	cmp	x2, #128
	b.lo	.LBB1_6
	ldp	q0, q1, [x0]
	ldp	q2, q3, [x0, #32]
	mov	x6, #-4467570830351532032
	movi	v19.2d, #0000000000000000
	movi	v13.2d, #0000000000000000
	movi	v14.2d, #0000000000000000
	movi	v15.2d, #0000000000000000
	mov	x19, x2
	fmov	d20, x6
	ldp	q4, q5, [x0, #64]
	fmov	x9, d1
	ldp	q17, q18, [x0, #96]
	mov	x13, v1.d[1]
	fmov	x15, d3
	mov	x16, v3.d[1]
	fmov	x4, d5
	dup	v7.2d, x9
	fmov	x8, d0
	mov	x12, v0.d[1]
	fmov	d22, x13
	fmov	d24, x16
	dup	v25.2d, x15
	dup	v29.2d, x4
	dup	v6.2d, x8
	fmov	x10, d2
	mov	x14, v2.d[1]
	dup	v16.2d, x10
	fmov	d21, x12
	fmov	d23, x14
	fmov	x17, d4
	mov	x18, v4.d[1]
	fmov	d26, x18
	dup	v27.2d, x17
	mov	x5, v5.d[1]
	fmov	x8, d17
	fmov	d28, x5
	mov	x9, v17.d[1]
	fmov	x10, d18
	mov	x11, v18.d[1]
	.p2align	5, , 16
.LBB1_4:
	movi	v12.2d, #0000000000000000
	mov	v12.d[0], v13.d[1]
	zip1	v13.2d, v19.2d, v13.2d
	ldp	q31, q30, [x1]
	ldp	q10, q11, [x1, #96]
	add	x12, x1, #128
	sub	x19, x19, #128
	eor	v13.16b, v13.16b, v14.16b
	eor	v12.16b, v15.16b, v12.16b
	ldp	q8, q9, [x1, #64]
	pmull	v14.1q, v13.1d, v20.1d
	ext	v13.16b, v13.16b, v13.16b, #8
	eor	v13.16b, v13.16b, v14.16b
	pmull2	v15.1q, v7.2d, v10.2d
	pmull	v14.1q, v13.1d, v20.1d
	eor3	v31.16b, v12.16b, v31.16b, v14.16b
	pmull	v12.1q, v21.1d, v11.1d
	pmull2	v14.1q, v6.2d, v11.2d
	eor	v12.16b, v14.16b, v12.16b
	pmull	v14.1q, v22.1d, v10.1d
	eor3	v12.16b, v12.16b, v14.16b, v15.16b
	pmull	v14.1q, v0.1d, v11.1d
	pmull2	v11.1q, v0.2d, v11.2d
	pmull	v15.1q, v1.1d, v10.1d
	pmull2	v10.1q, v1.2d, v10.2d
	eor	v14.16b, v15.16b, v14.16b
	eor	v10.16b, v10.16b, v11.16b
	pmull	v11.1q, v23.1d, v9.1d
	pmull2	v15.1q, v16.2d, v9.2d
	eor3	v11.16b, v12.16b, v11.16b, v15.16b
	pmull	v12.1q, v2.1d, v9.1d
	pmull	v15.1q, v3.1d, v8.1d
	pmull2	v9.1q, v2.2d, v9.2d
	eor3	v12.16b, v14.16b, v12.16b, v15.16b
	pmull	v14.1q, v24.1d, v8.1d
	pmull2	v15.1q, v25.2d, v8.2d
	pmull2	v8.1q, v3.2d, v8.2d
	eor3	v11.16b, v11.16b, v14.16b, v15.16b
	ldp	q14, q15, [x1, #32]
	eor3	v8.16b, v10.16b, v9.16b, v8.16b
	mov	x1, x12
	pmull	v9.1q, v26.1d, v15.1d
	pmull2	v10.1q, v27.2d, v15.2d
	eor3	v9.16b, v11.16b, v9.16b, v10.16b
	pmull	v10.1q, v4.1d, v15.1d
	pmull	v11.1q, v5.1d, v14.1d
	eor3	v10.16b, v12.16b, v10.16b, v11.16b
	pmull	v11.1q, v28.1d, v14.1d
	pmull2	v12.1q, v29.2d, v14.2d
	eor3	v9.16b, v9.16b, v11.16b, v12.16b
	ext	v11.16b, v13.16b, v13.16b, #8
	pmull2	v12.1q, v5.2d, v14.2d
	eor	v31.16b, v11.16b, v31.16b
	pmull2	v11.1q, v4.2d, v15.2d
	eor3	v8.16b, v8.16b, v11.16b, v12.16b
	fmov	d11, x9
	dup	v12.2d, x8
	pmull	v11.1q, v11.1d, v30.1d
	pmull2	v12.1q, v12.2d, v30.2d
	eor3	v9.16b, v9.16b, v11.16b, v12.16b
	pmull	v11.1q, v17.1d, v30.1d
	pmull	v12.1q, v18.1d, v31.1d
	pmull2	v30.1q, v17.2d, v30.2d
	eor3	v14.16b, v10.16b, v11.16b, v12.16b
	fmov	d10, x11
	dup	v11.2d, x10
	pmull	v10.1q, v10.1d, v31.1d
	pmull2	v11.1q, v11.2d, v31.2d
	pmull2	v31.1q, v18.2d, v31.2d
	eor3	v13.16b, v9.16b, v10.16b, v11.16b
	eor3	v15.16b, v8.16b, v30.16b, v31.16b
	cmp	x19, #127
	b.hi	.LBB1_4
	mov	x1, x12
	ldr	q16, [x0]
	mov	x21, v16.d[1]
	cmp	x19, #16
	b.hs	.LBB1_7
	b	.LBB1_9
.LBB1_6:
	movi	v15.2d, #0000000000000000
	movi	v13.2d, #0000000000000000
	movi	v14.2d, #0000000000000000
	mov	x19, x2
	ldr	q16, [x0]
	mov	x21, v16.d[1]
	cmp	x2, #16
	b.lo	.LBB1_9
.LBB1_7:
	fmov	x8, d16
	mov	x9, #-4467570830351532032
	fmov	d2, x21
	movi	v0.2d, #0000000000000000
	fmov	d1, x9
	dup	v3.2d, x8
	.p2align	5, , 16
.LBB1_8:
	zip1	v5.2d, v0.2d, v13.2d
	ldr	q4, [x1], #16
	movi	v6.2d, #0000000000000000
	mov	v6.d[0], v13.d[1]
	sub	x19, x19, #16
	eor	v5.16b, v5.16b, v14.16b
	eor	v6.16b, v15.16b, v6.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v7.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor3	v4.16b, v6.16b, v4.16b, v7.16b
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v2.1d, v4.1d
	pmull2	v6.1q, v3.2d, v4.2d
	pmull	v14.1q, v16.1d, v4.1d
	pmull2	v15.1q, v16.2d, v4.2d
	eor	v13.16b, v6.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB1_8
.LBB1_9:
	cbz	x19, .LBB1_11
	mov	w8, #16
	add	x9, sp, #64
	mov	x22, x0
	mov	x20, x1
	mov	w1, wzr
	mov	x23, x2
	mov	x24, x3
	stp	q13, q14, [sp]
	sub	x8, x8, x19
	add	x0, x9, x19
	stp	q16, q15, [sp, #32]
	mov	x2, x8
	bl	memset
	add	x0, sp, #64
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldp	q4, q3, [sp]
	ldr	q0, [sp, #64]
	movi	v1.2d, #0000000000000000
	mov	x8, #-4467570830351532032
	mov	x2, x23
	mov	x0, x22
	mov	x3, x24
	zip1	v2.2d, v1.2d, v4.2d
	mov	v1.d[0], v4.d[1]
	eor	v2.16b, v2.16b, v3.16b
	fmov	d3, x8
	eor	v0.16b, v0.16b, v1.16b
	ldr	q1, [sp, #48]
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldr	q3, [sp, #32]
	eor	v0.16b, v2.16b, v0.16b
	dup	v1.2d, v0.d[0]
	dup	v2.2d, v3.d[0]
	pmull2	v1.1q, v3.2d, v1.2d
	fmov	x8, d3
	pmull	v14.1q, v3.1d, v0.1d
	pmull2	v15.1q, v3.2d, v0.2d
	pmull2	v2.1q, v2.2d, v0.2d
	eor	v13.16b, v2.16b, v1.16b
	b	.LBB1_12
.LBB1_11:
	fmov	x8, d16
.LBB1_12:
	lsl	x9, x2, #3
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	zip1	v2.2d, v0.2d, v13.2d
	movi	v3.2d, #0000000000000000
	mov	v3.d[0], v13.d[1]
	mov	v1.d[0], x9
	mov	x9, #-4467570830351532032
	fmov	d4, x9
	eor	v2.16b, v2.16b, v14.16b
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v5.16b
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v3.16b, v15.16b, v3.16b, v5.16b
	dup	v5.2d, x8
	eor3	v1.16b, v1.16b, v3.16b, v2.16b
	fmov	d3, x21
	fmov	d2, x8
	adrp	x8, .LCPI1_0
	pmull2	v5.1q, v5.2d, v1.2d
	pmull	v3.1q, v3.1d, v1.1d
	pmull	v2.1q, v2.1d, v1.1d
	eor	v3.16b, v5.16b, v3.16b
	dup	v5.2d, x21
	pmull2	v1.1q, v5.2d, v1.2d
	zip1	v5.2d, v0.2d, v3.2d
	mov	v0.d[0], v3.d[1]
	eor	v2.16b, v5.16b, v2.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v3.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v1.16b, v3.16b, v1.16b
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	ldr	q1, [x8, :lo12:.LCPI1_0]
	and	v0.16b, v0.16b, v1.16b
	ldp	q1, q2, [x0, #128]
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #160]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x0, #192]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #224]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x0, #256]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #288]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x0, #320]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	ldr	q0, [x0, #352]
	eor	v0.16b, v0.16b, v2.16b
	str	q0, [x3]
	mov	w0, #1
	.cfi_def_cfa wsp, 208
	ldp	d9, d8, [sp, #128]
	ldp	d11, d10, [sp, #112]
	ldp	d13, d12, [sp, #96]
	ldp	d15, d14, [sp, #80]
	ldp	x20, x19, [sp, #192]
	ldp	x22, x21, [sp, #176]
	ldp	x24, x23, [sp, #160]
	ldp	x29, x30, [sp, #144]
	add	sp, sp, #208
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
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
	.size	haberdashery_sivmac_neoversev2_sign, .Lfunc_end1-haberdashery_sivmac_neoversev2_sign
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
	.section	.text.haberdashery_sivmac_neoversev2_verify,"ax",@progbits
	.globl	haberdashery_sivmac_neoversev2_verify
	.p2align	4
	.type	haberdashery_sivmac_neoversev2_verify,@function
haberdashery_sivmac_neoversev2_verify:
	.cfi_startproc
	mov	x8, #68719476736
	cmp	x2, x8
	ccmp	x4, #16, #0, ls
	b.hs	.LBB2_2
	mov	w0, wzr
	ret
.LBB2_2:
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	d15, d14, [sp, #96]
	stp	d13, d12, [sp, #112]
	stp	d11, d10, [sp, #128]
	stp	d9, d8, [sp, #144]
	stp	x29, x30, [sp, #160]
	str	x23, [sp, #176]
	stp	x22, x21, [sp, #192]
	stp	x20, x19, [sp, #208]
	add	x29, sp, #160
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	.cfi_offset b12, -104
	.cfi_offset b13, -112
	.cfi_offset b14, -120
	.cfi_offset b15, -128
	cmp	x2, #128
	b.lo	.LBB2_6
	ldp	q0, q1, [x0]
	ldp	q2, q3, [x0, #32]
	mov	x7, #-4467570830351532032
	movi	v18.2d, #0000000000000000
	movi	v13.2d, #0000000000000000
	movi	v15.2d, #0000000000000000
	movi	v14.2d, #0000000000000000
	mov	x19, x2
	fmov	d19, x7
	ldp	q4, q5, [x0, #64]
	fmov	x10, d1
	ldp	q16, q17, [x0, #96]
	mov	x14, v1.d[1]
	fmov	x17, d3
	mov	x18, v3.d[1]
	mov	x6, v5.d[1]
	dup	v7.2d, x10
	fmov	x9, d0
	mov	x13, v0.d[1]
	fmov	d21, x14
	fmov	d24, x18
	dup	v25.2d, x17
	fmov	d28, x6
	dup	v6.2d, x9
	fmov	x15, d2
	mov	x16, v2.d[1]
	fmov	d20, x13
	fmov	d22, x16
	dup	v23.2d, x15
	fmov	x4, d4
	mov	x5, v4.d[1]
	fmov	d26, x5
	dup	v27.2d, x4
	fmov	x8, d5
	fmov	x9, d16
	mov	x10, v16.d[1]
	fmov	x11, d17
	mov	x12, v17.d[1]
	.p2align	5, , 16
.LBB2_4:
	zip1	v30.2d, v18.2d, v13.2d
	ldp	q31, q29, [x1]
	movi	v12.2d, #0000000000000000
	mov	v12.d[0], v13.d[1]
	ldp	q10, q11, [x1, #96]
	add	x13, x1, #128
	sub	x19, x19, #128
	eor	v30.16b, v30.16b, v15.16b
	eor	v12.16b, v14.16b, v12.16b
	ldp	q8, q9, [x1, #64]
	pmull	v13.1q, v30.1d, v19.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor	v30.16b, v30.16b, v13.16b
	pmull2	v14.1q, v7.2d, v10.2d
	pmull	v13.1q, v30.1d, v19.1d
	ext	v30.16b, v30.16b, v30.16b, #8
	eor3	v31.16b, v12.16b, v31.16b, v13.16b
	pmull	v12.1q, v20.1d, v11.1d
	pmull2	v13.1q, v6.2d, v11.2d
	eor	v12.16b, v13.16b, v12.16b
	pmull	v13.1q, v21.1d, v10.1d
	eor	v30.16b, v30.16b, v31.16b
	eor3	v12.16b, v12.16b, v13.16b, v14.16b
	pmull	v13.1q, v0.1d, v11.1d
	pmull2	v11.1q, v0.2d, v11.2d
	pmull	v14.1q, v1.1d, v10.1d
	pmull2	v10.1q, v1.2d, v10.2d
	eor	v13.16b, v14.16b, v13.16b
	eor	v10.16b, v10.16b, v11.16b
	pmull	v11.1q, v22.1d, v9.1d
	pmull2	v14.1q, v23.2d, v9.2d
	eor3	v11.16b, v12.16b, v11.16b, v14.16b
	pmull	v12.1q, v2.1d, v9.1d
	pmull	v14.1q, v3.1d, v8.1d
	pmull2	v9.1q, v2.2d, v9.2d
	eor3	v12.16b, v13.16b, v12.16b, v14.16b
	pmull	v13.1q, v24.1d, v8.1d
	pmull2	v14.1q, v25.2d, v8.2d
	pmull2	v8.1q, v3.2d, v8.2d
	eor3	v11.16b, v11.16b, v13.16b, v14.16b
	eor3	v8.16b, v10.16b, v9.16b, v8.16b
	ldp	q13, q14, [x1, #32]
	mov	x1, x13
	pmull	v9.1q, v26.1d, v14.1d
	pmull2	v10.1q, v27.2d, v14.2d
	pmull2	v31.1q, v4.2d, v14.2d
	eor3	v9.16b, v11.16b, v9.16b, v10.16b
	pmull	v10.1q, v4.1d, v14.1d
	pmull	v11.1q, v5.1d, v13.1d
	eor3	v10.16b, v12.16b, v10.16b, v11.16b
	dup	v12.2d, x8
	pmull	v11.1q, v28.1d, v13.1d
	pmull2	v12.1q, v12.2d, v13.2d
	eor3	v9.16b, v9.16b, v11.16b, v12.16b
	pmull2	v11.1q, v5.2d, v13.2d
	eor3	v31.16b, v8.16b, v31.16b, v11.16b
	fmov	d8, x10
	dup	v11.2d, x9
	pmull	v8.1q, v8.1d, v29.1d
	pmull2	v11.1q, v11.2d, v29.2d
	eor3	v8.16b, v9.16b, v8.16b, v11.16b
	pmull	v9.1q, v16.1d, v29.1d
	pmull	v11.1q, v17.1d, v30.1d
	pmull2	v29.1q, v16.2d, v29.2d
	eor3	v15.16b, v10.16b, v9.16b, v11.16b
	fmov	d9, x12
	dup	v10.2d, x11
	pmull	v9.1q, v9.1d, v30.1d
	pmull2	v10.1q, v10.2d, v30.2d
	pmull2	v30.1q, v17.2d, v30.2d
	eor3	v13.16b, v8.16b, v9.16b, v10.16b
	eor3	v14.16b, v31.16b, v29.16b, v30.16b
	cmp	x19, #127
	b.hi	.LBB2_4
	mov	x1, x13
	ldr	q16, [x0]
	mov	x21, v16.d[1]
	cmp	x19, #16
	b.hs	.LBB2_7
	b	.LBB2_9
.LBB2_6:
	movi	v14.2d, #0000000000000000
	movi	v13.2d, #0000000000000000
	movi	v15.2d, #0000000000000000
	mov	x19, x2
	ldr	q16, [x0]
	mov	x21, v16.d[1]
	cmp	x2, #16
	b.lo	.LBB2_9
.LBB2_7:
	fmov	x8, d16
	mov	x9, #-4467570830351532032
	fmov	d2, x21
	movi	v0.2d, #0000000000000000
	fmov	d1, x9
	dup	v3.2d, x8
	.p2align	5, , 16
.LBB2_8:
	zip1	v5.2d, v0.2d, v13.2d
	ldr	q4, [x1], #16
	movi	v6.2d, #0000000000000000
	mov	v6.d[0], v13.d[1]
	sub	x19, x19, #16
	eor	v5.16b, v5.16b, v15.16b
	eor	v6.16b, v14.16b, v6.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v7.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor3	v4.16b, v6.16b, v4.16b, v7.16b
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v2.1d, v4.1d
	pmull2	v6.1q, v3.2d, v4.2d
	pmull	v15.1q, v16.1d, v4.1d
	pmull2	v14.1q, v16.2d, v4.2d
	eor	v13.16b, v6.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB2_8
.LBB2_9:
	ldr	q6, [x3]
	cbz	x19, .LBB2_11
	mov	w8, #16
	add	x9, sp, #80
	mov	x22, x0
	mov	x20, x1
	mov	w1, wzr
	mov	x23, x2
	stp	q13, q15, [sp]
	sub	x8, x8, x19
	add	x0, x9, x19
	stp	q14, q6, [sp, #48]
	mov	x2, x8
	str	q16, [sp, #32]
	bl	memset
	add	x0, sp, #80
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldp	q4, q3, [sp]
	movi	v1.2d, #0000000000000000
	ldp	q6, q0, [sp, #64]
	mov	x8, #-4467570830351532032
	mov	x2, x23
	mov	x0, x22
	zip1	v2.2d, v1.2d, v4.2d
	mov	v1.d[0], v4.d[1]
	eor	v2.16b, v2.16b, v3.16b
	fmov	d3, x8
	eor	v0.16b, v0.16b, v1.16b
	ldr	q1, [sp, #48]
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldr	q3, [sp, #32]
	eor	v0.16b, v2.16b, v0.16b
	dup	v1.2d, v0.d[0]
	dup	v2.2d, v3.d[0]
	pmull2	v1.1q, v3.2d, v1.2d
	fmov	x8, d3
	pmull	v15.1q, v3.1d, v0.1d
	pmull2	v14.1q, v3.2d, v0.2d
	pmull2	v2.1q, v2.2d, v0.2d
	eor	v13.16b, v2.16b, v1.16b
	b	.LBB2_12
.LBB2_11:
	fmov	x8, d16
.LBB2_12:
	lsl	x9, x2, #3
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	zip1	v2.2d, v0.2d, v13.2d
	movi	v3.2d, #0000000000000000
	mov	v3.d[0], v13.d[1]
	mov	v1.d[0], x9
	mov	x9, #-4467570830351532032
	fmov	d4, x9
	eor	v2.16b, v2.16b, v15.16b
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v5.16b
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v3.16b, v14.16b, v3.16b, v5.16b
	dup	v5.2d, x8
	eor3	v1.16b, v1.16b, v3.16b, v2.16b
	fmov	d3, x21
	fmov	d2, x8
	adrp	x8, .LCPI2_0
	pmull2	v5.1q, v5.2d, v1.2d
	pmull	v3.1q, v3.1d, v1.1d
	pmull	v2.1q, v2.1d, v1.1d
	eor	v3.16b, v5.16b, v3.16b
	dup	v5.2d, x21
	pmull2	v1.1q, v5.2d, v1.2d
	zip1	v5.2d, v0.2d, v3.2d
	mov	v0.d[0], v3.d[1]
	eor	v2.16b, v5.16b, v2.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v3.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v1.16b, v3.16b, v1.16b
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	ldr	q1, [x8, :lo12:.LCPI2_0]
	and	v0.16b, v0.16b, v1.16b
	ldp	q1, q2, [x0, #128]
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #160]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x0, #192]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #224]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x0, #256]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	ldp	q0, q1, [x0, #288]
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	ldp	q0, q2, [x0, #320]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v0.16b
	ldr	q0, [x0, #352]
	eor3	v0.16b, v2.16b, v6.16b, v0.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w0, eq
	.cfi_def_cfa wsp, 224
	ldp	d9, d8, [sp, #144]
	ldp	d11, d10, [sp, #128]
	ldp	d13, d12, [sp, #112]
	ldp	d15, d14, [sp, #96]
	ldp	x20, x19, [sp, #208]
	ldp	x22, x21, [sp, #192]
	ldr	x23, [sp, #176]
	ldp	x29, x30, [sp, #160]
	add	sp, sp, #224
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
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
	.size	haberdashery_sivmac_neoversev2_verify, .Lfunc_end2-haberdashery_sivmac_neoversev2_verify
	.cfi_endproc

	.section	.text.haberdashery_sivmac_neoversev2_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_neoversev2_is_supported
	.p2align	4
	.type	haberdashery_sivmac_neoversev2_is_supported,@function
haberdashery_sivmac_neoversev2_is_supported:
	.cfi_startproc
	mov	w0, #1
	ret
.Lfunc_end3:
	.size	haberdashery_sivmac_neoversev2_is_supported, .Lfunc_end3-haberdashery_sivmac_neoversev2_is_supported
	.cfi_endproc

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

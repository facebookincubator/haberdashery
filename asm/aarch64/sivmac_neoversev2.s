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
	stp	d15, d14, [sp, #-64]!
	.cfi_def_cfa_offset 64
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -56
	.cfi_offset b15, -64
	ldp	q15, q14, [x1]
	movi	v2.2d, #0000000000000000
	ext	v1.16b, v2.16b, v2.16b, #4
	movi	v0.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	dup	v2.4s, v2.s[0]
	movi	v7.2d, #0000000000000000
	mov	w8, v14.s[3]
	ext	v6.16b, v1.16b, v14.16b, #12
	mov	v7.d[1], v14.d[0]
	ror	w8, w8, #8
	ext	v3.16b, v1.16b, v15.16b, #12
	mov	v4.d[1], v15.d[0]
	eor	v6.16b, v6.16b, v7.16b
	ext	v7.16b, v2.16b, v14.16b, #4
	dup	v5.4s, w8
	eor	v3.16b, v3.16b, v4.16b
	ext	v4.16b, v2.16b, v15.16b, #4
	aese	v5.16b, v0.16b
	dup	v5.4s, v5.s[0]
	eor3	v3.16b, v3.16b, v4.16b, v5.16b
	movi	v5.4s, #1
	eor3	v13.16b, v15.16b, v3.16b, v5.16b
	eor	v4.16b, v15.16b, v3.16b
	dup	v16.4s, v13.s[3]
	ext	v17.16b, v2.16b, v13.16b, #4
	aese	v16.16b, v0.16b
	dup	v16.4s, v16.s[0]
	eor3	v6.16b, v6.16b, v7.16b, v16.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v13.d[0]
	ext	v7.16b, v1.16b, v13.16b, #12
	eor	v12.16b, v14.16b, v6.16b
	mov	w8, v12.s[3]
	ext	v19.16b, v2.16b, v12.16b, #4
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v0.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v12.d[0]
	eor3	v16.16b, v16.16b, v7.16b, v17.16b
	movi	v7.4s, #3
	ext	v17.16b, v1.16b, v12.16b, #12
	eor3	v11.16b, v4.16b, v16.16b, v7.16b
	eor3	v3.16b, v15.16b, v3.16b, v16.16b
	dup	v20.4s, v11.s[3]
	aese	v20.16b, v0.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v11.d[0]
	ext	v19.16b, v2.16b, v11.16b, #4
	eor3	v10.16b, v14.16b, v6.16b, v17.16b
	ext	v6.16b, v1.16b, v11.16b, #12
	mov	w8, v10.s[3]
	ror	w8, w8, #8
	dup	v20.4s, w8
	aese	v20.16b, v0.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	ext	v20.16b, v2.16b, v10.16b, #4
	eor3	v18.16b, v18.16b, v6.16b, v19.16b
	movi	v6.4s, #7
	movi	v19.2d, #0000000000000000
	mov	v19.d[1], v10.d[0]
	eor3	v9.16b, v3.16b, v18.16b, v6.16b
	eor3	v4.16b, v4.16b, v16.16b, v18.16b
	ext	v16.16b, v1.16b, v10.16b, #12
	dup	v21.4s, v9.s[3]
	aese	v21.16b, v0.16b
	dup	v21.4s, v21.s[0]
	eor	v19.16b, v19.16b, v21.16b
	eor3	v19.16b, v19.16b, v16.16b, v20.16b
	ext	v16.16b, v1.16b, v9.16b, #12
	ext	v20.16b, v2.16b, v9.16b, #4
	eor3	v8.16b, v12.16b, v17.16b, v19.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v9.d[0]
	mov	w8, v8.s[3]
	ror	w8, w8, #8
	dup	v21.4s, w8
	aese	v21.16b, v0.16b
	dup	v21.4s, v21.s[0]
	eor	v17.16b, v17.16b, v21.16b
	ext	v21.16b, v2.16b, v8.16b, #4
	eor3	v17.16b, v17.16b, v16.16b, v20.16b
	movi	v16.4s, #15
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v8.d[0]
	eor3	v31.16b, v4.16b, v17.16b, v16.16b
	eor3	v3.16b, v3.16b, v18.16b, v17.16b
	ext	v18.16b, v1.16b, v8.16b, #12
	dup	v22.4s, v31.s[3]
	aese	v22.16b, v0.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	eor3	v18.16b, v20.16b, v18.16b, v21.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v31.d[0]
	ext	v21.16b, v2.16b, v31.16b, #4
	eor3	v29.16b, v10.16b, v19.16b, v18.16b
	ext	v19.16b, v1.16b, v31.16b, #12
	mov	w8, v29.s[3]
	ror	w8, w8, #8
	dup	v22.4s, w8
	aese	v22.16b, v0.16b
	dup	v22.4s, v22.s[0]
	eor	v20.16b, v20.16b, v22.16b
	ext	v22.16b, v2.16b, v29.16b, #4
	eor3	v19.16b, v20.16b, v19.16b, v21.16b
	movi	v21.2d, #0000000000000000
	mov	v21.d[1], v29.d[0]
	ext	v20.16b, v1.16b, v29.16b, #12
	eor3	v4.16b, v4.16b, v17.16b, v19.16b
	movi	v17.4s, #31
	eor3	v26.16b, v3.16b, v19.16b, v17.16b
	dup	v23.4s, v26.s[3]
	aese	v23.16b, v0.16b
	dup	v23.4s, v23.s[0]
	eor	v21.16b, v21.16b, v23.16b
	eor3	v20.16b, v21.16b, v20.16b, v22.16b
	ext	v21.16b, v2.16b, v26.16b, #4
	eor3	v22.16b, v8.16b, v18.16b, v20.16b
	movi	v20.2d, #0000000000000000
	mov	v20.d[1], v26.d[0]
	ext	v18.16b, v1.16b, v26.16b, #12
	mov	w8, v22.s[3]
	ext	v24.16b, v2.16b, v22.16b, #4
	ror	w8, w8, #8
	dup	v23.4s, w8
	aese	v23.16b, v0.16b
	dup	v23.4s, v23.s[0]
	eor	v20.16b, v20.16b, v23.16b
	movi	v23.2d, #0000000000000000
	mov	v23.d[1], v22.d[0]
	eor3	v21.16b, v20.16b, v18.16b, v21.16b
	ext	v18.16b, v1.16b, v22.16b, #12
	eor3	v19.16b, v3.16b, v19.16b, v21.16b
	movi	v3.4s, #63
	eor3	v20.16b, v4.16b, v21.16b, v3.16b
	dup	v25.4s, v20.s[3]
	aese	v25.16b, v0.16b
	dup	v25.4s, v25.s[0]
	eor3	v18.16b, v25.16b, v23.16b, v18.16b
	ext	v23.16b, v1.16b, v20.16b, #12
	ext	v25.16b, v2.16b, v20.16b, #4
	eor3	v18.16b, v18.16b, v24.16b, v22.16b
	movi	v24.2d, #0000000000000000
	mov	v24.d[1], v20.d[0]
	mov	w8, v18.s[3]
	ror	w8, w8, #8
	dup	v27.4s, w8
	adrp	x8, .LCPI0_0
	aese	v27.16b, v0.16b
	dup	v27.4s, v27.s[0]
	eor	v24.16b, v24.16b, v27.16b
	eor3	v23.16b, v24.16b, v23.16b, v25.16b
	ldr	q25, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_1
	movi	v24.2d, #0000000000000000
	aese	v24.16b, v15.16b
	aesmc	v24.16b, v24.16b
	ldr	q27, [x8, :lo12:.LCPI0_1]
	adrp	x8, .LCPI0_2
	ldr	q28, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_3
	eor3	v21.16b, v4.16b, v21.16b, v23.16b
	movi	v4.4s, #127
	aese	v24.16b, v14.16b
	aesmc	v24.16b, v24.16b
	ldr	q30, [x8, :lo12:.LCPI0_3]
	adrp	x8, .LCPI0_4
	eor3	v19.16b, v19.16b, v23.16b, v4.16b
	ldr	q23, [x8, :lo12:.LCPI0_4]
	aese	v24.16b, v13.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v15.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v12.16b
	aesmc	v24.16b, v24.16b
	aese	v27.16b, v15.16b
	aesmc	v27.16b, v27.16b
	aese	v28.16b, v15.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v14.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v11.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v15.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v14.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v15.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v14.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v10.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v14.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v13.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v14.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v13.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v12.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v9.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v13.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v12.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v13.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v12.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v11.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v8.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v12.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v11.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v12.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v11.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v10.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v31.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v11.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v10.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v11.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v10.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v9.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v29.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v10.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v9.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v10.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v9.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v8.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v26.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v9.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v8.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v9.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v8.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v31.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v22.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v8.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v31.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v8.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v31.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v29.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v20.16b
	aesmc	v24.16b, v24.16b
	aese	v30.16b, v31.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v29.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v31.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v29.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v26.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v18.16b
	aese	v30.16b, v29.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v26.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v29.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v26.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v22.16b
	aesmc	v25.16b, v25.16b
	aese	v30.16b, v26.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v22.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v26.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v22.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v20.16b
	aesmc	v25.16b, v25.16b
	movi	v26.2d, #0000000000000000
	aese	v30.16b, v22.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v20.16b
	aesmc	v27.16b, v27.16b
	aese	v23.16b, v22.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v20.16b
	aesmc	v28.16b, v28.16b
	aese	v25.16b, v18.16b
	aese	v30.16b, v20.16b
	aesmc	v30.16b, v30.16b
	aese	v27.16b, v18.16b
	aese	v23.16b, v20.16b
	aesmc	v23.16b, v23.16b
	aese	v28.16b, v18.16b
	eor3	v20.16b, v21.16b, v4.16b, v24.16b
	aese	v30.16b, v18.16b
	eor3	v22.16b, v21.16b, v4.16b, v27.16b
	aese	v23.16b, v18.16b
	eor3	v18.16b, v21.16b, v4.16b, v25.16b
	eor	v25.8b, v28.8b, v19.8b
	eor3	v24.16b, v21.16b, v4.16b, v30.16b
	mov	v26.d[1], v22.d[0]
	ext	v27.16b, v2.16b, v22.16b, #4
	mov	v21.16b, v22.16b
	eor	v22.8b, v23.8b, v19.8b
	pmull	v11.1q, v18.1d, v18.1d
	mov	v19.16b, v24.16b
	mov	v21.d[1], v25.d[0]
	mov	v19.d[1], v22.d[0]
	ext	v22.16b, v1.16b, v21.16b, #12
	eor	v22.16b, v22.16b, v26.16b
	mov	w8, v19.s[3]
	movi	v26.2d, #0000000000000000
	mov	v26.d[1], v24.d[0]
	ror	w8, w8, #8
	dup	v23.4s, w8
	stp	q21, q19, [x0, #128]
	aese	v23.16b, v0.16b
	dup	v23.4s, v23.s[0]
	eor3	v23.16b, v22.16b, v27.16b, v23.16b
	ext	v22.16b, v1.16b, v19.16b, #12
	ext	v27.16b, v2.16b, v24.16b, #4
	eor3	v5.16b, v21.16b, v23.16b, v5.16b
	eor	v25.16b, v21.16b, v23.16b
	dup	v28.4s, v5.s[3]
	ext	v29.16b, v2.16b, v5.16b, #4
	aese	v28.16b, v0.16b
	dup	v28.4s, v28.s[0]
	eor	v26.16b, v26.16b, v28.16b
	movi	v28.2d, #0000000000000000
	mov	v28.d[1], v5.d[0]
	eor3	v26.16b, v26.16b, v22.16b, v27.16b
	ext	v27.16b, v1.16b, v5.16b, #12
	eor	v22.16b, v19.16b, v26.16b
	eor	v24.8b, v24.8b, v26.8b
	mov	w8, v22.s[3]
	ror	w8, w8, #8
	stp	q5, q22, [x0, #160]
	dup	v30.4s, w8
	aese	v30.16b, v0.16b
	dup	v30.4s, v30.s[0]
	eor	v28.16b, v28.16b, v30.16b
	eor3	v27.16b, v28.16b, v27.16b, v29.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v24.d[0]
	ext	v24.16b, v2.16b, v22.16b, #4
	eor3	v7.16b, v25.16b, v27.16b, v7.16b
	eor3	v28.16b, v21.16b, v23.16b, v27.16b
	ext	v23.16b, v1.16b, v22.16b, #12
	dup	v30.4s, v7.s[3]
	aese	v30.16b, v0.16b
	dup	v30.4s, v30.s[0]
	eor	v29.16b, v29.16b, v30.16b
	ext	v30.16b, v2.16b, v7.16b, #4
	eor3	v24.16b, v29.16b, v23.16b, v24.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v7.d[0]
	eor3	v23.16b, v19.16b, v26.16b, v24.16b
	ext	v26.16b, v1.16b, v7.16b, #12
	mov	w8, v23.s[3]
	stp	q7, q23, [x0, #192]
	ror	w8, w8, #8
	dup	v31.4s, w8
	aese	v31.16b, v0.16b
	dup	v31.4s, v31.s[0]
	eor	v29.16b, v29.16b, v31.16b
	eor3	v26.16b, v29.16b, v26.16b, v30.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v23.d[0]
	ext	v30.16b, v2.16b, v23.16b, #4
	eor3	v6.16b, v28.16b, v26.16b, v6.16b
	eor3	v27.16b, v25.16b, v27.16b, v26.16b
	ext	v25.16b, v1.16b, v23.16b, #12
	dup	v31.4s, v6.s[3]
	aese	v31.16b, v0.16b
	dup	v31.4s, v31.s[0]
	eor	v29.16b, v29.16b, v31.16b
	ext	v31.16b, v2.16b, v6.16b, #4
	eor3	v25.16b, v29.16b, v25.16b, v30.16b
	movi	v30.2d, #0000000000000000
	mov	v30.d[1], v6.d[0]
	ext	v29.16b, v1.16b, v6.16b, #12
	eor3	v24.16b, v22.16b, v24.16b, v25.16b
	mov	w8, v24.s[3]
	ror	w8, w8, #8
	stp	q6, q24, [x0, #224]
	dup	v8.4s, w8
	aese	v8.16b, v0.16b
	dup	v8.4s, v8.s[0]
	eor	v30.16b, v30.16b, v8.16b
	eor3	v29.16b, v30.16b, v29.16b, v31.16b
	movi	v30.2d, #0000000000000000
	mov	v30.d[1], v24.d[0]
	ext	v31.16b, v2.16b, v24.16b, #4
	eor3	v16.16b, v27.16b, v29.16b, v16.16b
	eor3	v26.16b, v28.16b, v26.16b, v29.16b
	ext	v28.16b, v1.16b, v24.16b, #12
	dup	v8.4s, v16.s[3]
	aese	v8.16b, v0.16b
	dup	v8.4s, v8.s[0]
	eor	v30.16b, v30.16b, v8.16b
	ext	v8.16b, v2.16b, v16.16b, #4
	eor3	v30.16b, v30.16b, v28.16b, v31.16b
	movi	v31.2d, #0000000000000000
	mov	v31.d[1], v16.d[0]
	ext	v28.16b, v1.16b, v16.16b, #12
	eor3	v25.16b, v23.16b, v25.16b, v30.16b
	mov	w8, v25.s[3]
	stp	q16, q25, [x0, #256]
	ror	w8, w8, #8
	dup	v9.4s, w8
	aese	v9.16b, v0.16b
	dup	v9.4s, v9.s[0]
	eor	v31.16b, v31.16b, v9.16b
	eor3	v28.16b, v31.16b, v28.16b, v8.16b
	movi	v31.2d, #0000000000000000
	mov	v31.d[1], v25.d[0]
	ext	v8.16b, v2.16b, v25.16b, #4
	eor3	v17.16b, v26.16b, v28.16b, v17.16b
	eor3	v29.16b, v27.16b, v29.16b, v28.16b
	ext	v27.16b, v1.16b, v25.16b, #12
	dup	v9.4s, v17.s[3]
	aese	v9.16b, v0.16b
	dup	v9.4s, v9.s[0]
	eor	v31.16b, v31.16b, v9.16b
	eor3	v27.16b, v31.16b, v27.16b, v8.16b
	movi	v31.2d, #0000000000000000
	mov	v31.d[1], v17.d[0]
	ext	v8.16b, v2.16b, v17.16b, #4
	eor3	v27.16b, v24.16b, v30.16b, v27.16b
	ext	v30.16b, v1.16b, v17.16b, #12
	mov	w8, v27.s[3]
	ror	w8, w8, #8
	stp	q17, q27, [x0, #288]
	dup	v9.4s, w8
	mov	x8, #-4467570830351532032
	aese	v9.16b, v0.16b
	dup	v9.4s, v9.s[0]
	eor	v31.16b, v31.16b, v9.16b
	eor3	v9.16b, v31.16b, v30.16b, v8.16b
	pmull	v30.1q, v20.1d, v18.1d
	pmull	v8.1q, v20.1d, v20.1d
	eor	v30.16b, v30.16b, v30.16b
	zip2	v31.2d, v30.2d, v0.2d
	zip1	v30.2d, v0.2d, v30.2d
	eor	v8.16b, v30.16b, v8.16b
	fmov	d30, x8
	ext	v10.16b, v8.16b, v8.16b, #8
	pmull	v8.1q, v8.1d, v30.1d
	eor	v8.16b, v10.16b, v8.16b
	pmull	v10.1q, v8.1d, v30.1d
	ext	v8.16b, v8.16b, v8.16b, #8
	eor	v10.16b, v11.16b, v10.16b
	eor3	v31.16b, v31.16b, v10.16b, v8.16b
	dup	v8.2d, v31.d[0]
	pmull	v11.1q, v31.1d, v31.1d
	pmull2	v12.1q, v31.2d, v31.2d
	pmull2	v8.1q, v8.2d, v31.2d
	eor	v8.16b, v8.16b, v8.16b
	zip2	v10.2d, v8.2d, v0.2d
	zip1	v8.2d, v0.2d, v8.2d
	eor	v8.16b, v8.16b, v11.16b
	ext	v11.16b, v8.16b, v8.16b, #8
	pmull	v8.1q, v8.1d, v30.1d
	eor	v8.16b, v11.16b, v8.16b
	pmull	v11.1q, v8.1d, v30.1d
	ext	v8.16b, v8.16b, v8.16b, #8
	eor	v11.16b, v12.16b, v11.16b
	eor3	v8.16b, v10.16b, v11.16b, v8.16b
	dup	v10.2d, v20.d[0]
	pmull	v11.1q, v31.1d, v18.1d
	pmull2	v12.1q, v31.2d, v10.2d
	pmull	v6.1q, v8.1d, v18.1d
	pmull2	v7.1q, v8.2d, v10.2d
	eor	v11.16b, v12.16b, v11.16b
	pmull	v12.1q, v31.1d, v20.1d
	eor	v6.16b, v7.16b, v6.16b
	zip2	v13.2d, v11.2d, v0.2d
	zip1	v11.2d, v0.2d, v11.2d
	zip1	v7.2d, v0.2d, v6.2d
	eor	v11.16b, v11.16b, v12.16b
	ext	v12.16b, v11.16b, v11.16b, #8
	pmull	v11.1q, v11.1d, v30.1d
	eor	v11.16b, v12.16b, v11.16b
	dup	v12.2d, v18.d[0]
	pmull	v14.1q, v11.1d, v30.1d
	pmull2	v15.1q, v31.2d, v12.2d
	ext	v11.16b, v11.16b, v11.16b, #8
	eor	v14.16b, v15.16b, v14.16b
	eor3	v11.16b, v13.16b, v14.16b, v11.16b
	dup	v13.2d, v11.d[0]
	pmull	v15.1q, v11.1d, v11.1d
	pmull2	v3.1q, v11.2d, v11.2d
	stp	q11, q8, [x0, #32]
	pmull2	v13.1q, v13.2d, v11.2d
	eor	v13.16b, v13.16b, v13.16b
	zip1	v14.2d, v0.2d, v13.2d
	zip2	v13.2d, v13.2d, v0.2d
	eor	v14.16b, v14.16b, v15.16b
	ext	v15.16b, v14.16b, v14.16b, #8
	pmull	v14.1q, v14.1d, v30.1d
	eor	v14.16b, v15.16b, v14.16b
	pmull	v15.1q, v14.1d, v30.1d
	ext	v14.16b, v14.16b, v14.16b, #8
	eor	v3.16b, v3.16b, v15.16b
	pmull	v15.1q, v8.1d, v20.1d
	eor3	v13.16b, v13.16b, v3.16b, v14.16b
	eor3	v3.16b, v26.16b, v28.16b, v9.16b
	movi	v26.4s, #63
	ext	v28.16b, v1.16b, v27.16b, #12
	eor	v7.16b, v7.16b, v15.16b
	eor3	v26.16b, v29.16b, v9.16b, v26.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v27.d[0]
	ext	v16.16b, v7.16b, v7.16b, #8
	pmull	v7.1q, v7.1d, v30.1d
	pmull	v14.1q, v13.1d, v20.1d
	pmull2	v5.1q, v13.2d, v12.2d
	mov	v20.d[1], v18.d[0]
	dup	v9.4s, v26.s[3]
	ext	v1.16b, v1.16b, v26.16b, #12
	eor	v7.16b, v16.16b, v7.16b
	stp	q20, q31, [x0]
	aese	v9.16b, v0.16b
	ext	v16.16b, v7.16b, v7.16b, #8
	dup	v9.4s, v9.s[0]
	eor3	v28.16b, v9.16b, v29.16b, v28.16b
	ext	v29.16b, v2.16b, v27.16b, #4
	ext	v2.16b, v2.16b, v26.16b, #4
	eor3	v28.16b, v28.16b, v29.16b, v27.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[1], v26.d[0]
	mov	w8, v28.s[3]
	ror	w8, w8, #8
	stp	q26, q28, [x0, #320]
	dup	v9.4s, w8
	aese	v9.16b, v0.16b
	dup	v9.4s, v9.s[0]
	eor	v29.16b, v29.16b, v9.16b
	eor3	v1.16b, v29.16b, v1.16b, v2.16b
	eor3	v1.16b, v3.16b, v1.16b, v4.16b
	pmull	v3.1q, v8.1d, v8.1d
	pmull2	v4.1q, v8.2d, v8.2d
	str	q1, [x0, #352]
	dup	v1.2d, v8.d[0]
	pmull2	v1.1q, v1.2d, v8.2d
	eor	v1.16b, v1.16b, v1.16b
	zip1	v2.2d, v0.2d, v1.2d
	zip2	v1.2d, v1.2d, v0.2d
	eor	v2.16b, v2.16b, v3.16b
	ext	v3.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v30.1d
	eor	v2.16b, v3.16b, v2.16b
	pmull	v3.1q, v2.1d, v30.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v3.16b, v4.16b, v3.16b
	eor3	v1.16b, v3.16b, v1.16b, v2.16b
	pmull	v2.1q, v13.1d, v18.1d
	pmull2	v3.1q, v13.2d, v10.2d
	eor	v2.16b, v3.16b, v2.16b
	ldp	d11, d10, [sp, #32]
	zip1	v3.2d, v0.2d, v2.2d
	zip2	v2.2d, v2.2d, v0.2d
	zip2	v0.2d, v6.2d, v0.2d
	pmull	v6.1q, v7.1d, v30.1d
	pmull2	v7.1q, v8.2d, v12.2d
	ldp	d9, d8, [sp, #48]
	eor	v3.16b, v3.16b, v14.16b
	eor	v6.16b, v7.16b, v6.16b
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v30.1d
	eor3	v0.16b, v0.16b, v6.16b, v16.16b
	eor	v3.16b, v4.16b, v3.16b
	stp	q0, q13, [x0, #64]
	ldp	d13, d12, [sp, #16]
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v30.1d
	eor	v0.16b, v5.16b, v3.16b
	eor3	v0.16b, v2.16b, v0.16b, v4.16b
	stp	q0, q1, [x0, #96]
	ldp	d15, d14, [sp], #64
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

	.section	.text.haberdashery_sivmac_neoversev2_is_supported,"ax",@progbits
	.globl	haberdashery_sivmac_neoversev2_is_supported
	.p2align	4
	.type	haberdashery_sivmac_neoversev2_is_supported,@function
haberdashery_sivmac_neoversev2_is_supported:
	.cfi_startproc
	mov	w0, #1
	ret
.Lfunc_end1:
	.size	haberdashery_sivmac_neoversev2_is_supported, .Lfunc_end1-haberdashery_sivmac_neoversev2_is_supported
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
	.section	.text.haberdashery_sivmac_neoversev2_sign,"ax",@progbits
	.globl	haberdashery_sivmac_neoversev2_sign
	.p2align	4
	.type	haberdashery_sivmac_neoversev2_sign,@function
haberdashery_sivmac_neoversev2_sign:
	.cfi_startproc
	mov	x8, #68719476736
	cmp	x2, x8
	ccmp	x4, #16, #0, ls
	b.eq	.LBB2_2
	mov	w0, wzr
	ret
.LBB2_2:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	d13, d12, [sp, #80]
	stp	d11, d10, [sp, #96]
	stp	d9, d8, [sp, #112]
	stp	x29, x30, [sp, #128]
	stp	x24, x23, [sp, #144]
	stp	x22, x21, [sp, #160]
	stp	x20, x19, [sp, #176]
	add	x29, sp, #128
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
	ldr	q13, [x0]
	mov	x21, v13.d[1]
	cmp	x2, #128
	b.lo	.LBB2_6
	ldp	x8, x9, [x0, #16]
	ldp	x10, x11, [x0, #32]
	ldp	x12, x13, [x0, #48]
	ldp	x14, x15, [x0, #64]
	ldp	x16, x17, [x0, #80]
	ldp	x18, x4, [x0, #96]
	ldp	x5, x6, [x0, #112]
	mov	x7, #-4467570830351532032
	fmov	d1, x7
	fmov	d2, x21
	movi	v0.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v9.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	mov	x19, x2
	fmov	d3, x8
	fmov	d4, x9
	fmov	d5, x10
	fmov	d6, x11
	fmov	d7, x12
	fmov	d16, x13
	fmov	d17, x14
	fmov	d18, x15
	fmov	d19, x16
	fmov	d20, x17
	fmov	d21, x18
	fmov	d22, x4
	dup	v23.2d, x5
	fmov	d24, x5
	dup	v25.2d, x6
	fmov	d26, x6
	.p2align	5, , 16
.LBB2_4:
	zip1	v28.2d, v0.2d, v30.2d
	ldr	q27, [x1]
	zip2	v29.2d, v30.2d, v0.2d
	add	x8, x1, #128
	sub	x19, x19, #128
	eor	v28.16b, v28.16b, v9.16b
	eor	v29.16b, v31.16b, v29.16b
	pmull	v30.1q, v28.1d, v1.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor	v28.16b, v28.16b, v30.16b
	pmull	v30.1q, v28.1d, v1.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor3	v27.16b, v29.16b, v27.16b, v30.16b
	eor	v27.16b, v28.16b, v27.16b
	ldp	d28, d29, [x1, #112]
	pmull	v31.1q, v13.1d, v29.1d
	pmull	v29.1q, v2.1d, v29.1d
	pmull	v30.1q, v13.1d, v28.1d
	pmull	v28.1q, v2.1d, v28.1d
	eor	v28.16b, v31.16b, v28.16b
	ldp	d31, d8, [x1, #96]
	pmull	v10.1q, v3.1d, v8.1d
	pmull	v8.1q, v4.1d, v8.1d
	pmull	v9.1q, v3.1d, v31.1d
	pmull	v31.1q, v4.1d, v31.1d
	eor	v29.16b, v8.16b, v29.16b
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	eor	v30.16b, v9.16b, v30.16b
	ldp	d31, d8, [x1, #80]
	pmull	v10.1q, v5.1d, v8.1d
	pmull	v8.1q, v6.1d, v8.1d
	pmull	v9.1q, v5.1d, v31.1d
	pmull	v31.1q, v6.1d, v31.1d
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	ldp	d31, d10, [x1, #64]
	pmull	v12.1q, v7.1d, v10.1d
	pmull	v10.1q, v16.1d, v10.1d
	pmull	v11.1q, v7.1d, v31.1d
	pmull	v31.1q, v16.1d, v31.1d
	eor3	v29.16b, v29.16b, v8.16b, v10.16b
	eor3	v28.16b, v28.16b, v31.16b, v12.16b
	ldp	d31, d8, [x1, #48]
	eor3	v30.16b, v30.16b, v9.16b, v11.16b
	pmull	v10.1q, v17.1d, v8.1d
	pmull	v8.1q, v18.1d, v8.1d
	pmull	v9.1q, v17.1d, v31.1d
	pmull	v31.1q, v18.1d, v31.1d
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	ldp	d31, d10, [x1, #32]
	pmull	v12.1q, v19.1d, v10.1d
	pmull	v10.1q, v20.1d, v10.1d
	pmull	v11.1q, v19.1d, v31.1d
	pmull	v31.1q, v20.1d, v31.1d
	eor3	v29.16b, v29.16b, v8.16b, v10.16b
	eor3	v28.16b, v28.16b, v31.16b, v12.16b
	ldp	d31, d8, [x1, #16]
	eor3	v30.16b, v30.16b, v9.16b, v11.16b
	pmull2	v11.1q, v23.2d, v27.2d
	mov	x1, x8
	pmull	v10.1q, v21.1d, v8.1d
	pmull	v8.1q, v22.1d, v8.1d
	pmull	v9.1q, v21.1d, v31.1d
	pmull	v31.1q, v22.1d, v31.1d
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	pmull	v31.1q, v24.1d, v27.1d
	pmull	v10.1q, v26.1d, v27.1d
	pmull2	v27.1q, v25.2d, v27.2d
	eor3	v9.16b, v30.16b, v9.16b, v31.16b
	eor3	v30.16b, v28.16b, v10.16b, v11.16b
	eor3	v31.16b, v29.16b, v8.16b, v27.16b
	cmp	x19, #127
	b.hi	.LBB2_4
	mov	x1, x8
	cmp	x19, #16
	b.hs	.LBB2_7
	b	.LBB2_9
.LBB2_6:
	movi	v31.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v9.2d, #0000000000000000
	mov	x19, x2
	cmp	x2, #16
	b.lo	.LBB2_9
.LBB2_7:
	fmov	x8, d13
	mov	x9, #-4467570830351532032
	fmov	d2, x21
	movi	v0.2d, #0000000000000000
	fmov	d1, x9
	dup	v3.2d, x8
	.p2align	5, , 16
.LBB2_8:
	zip1	v5.2d, v0.2d, v30.2d
	ldr	q4, [x1], #16
	zip2	v6.2d, v30.2d, v0.2d
	sub	x19, x19, #16
	eor	v5.16b, v5.16b, v9.16b
	eor	v6.16b, v31.16b, v6.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v7.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor3	v4.16b, v6.16b, v4.16b, v7.16b
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v2.1d, v4.1d
	pmull2	v6.1q, v3.2d, v4.2d
	pmull	v9.1q, v13.1d, v4.1d
	pmull2	v31.1q, v13.2d, v4.2d
	eor	v30.16b, v6.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB2_8
.LBB2_9:
	cbz	x19, .LBB2_11
	mov	w8, #16
	add	x9, sp, #64
	mov	x22, x0
	mov	x20, x1
	mov	w1, wzr
	mov	x23, x2
	sub	x8, x8, x19
	add	x0, x9, x19
	mov	x24, x3
	stp	q30, q9, [sp]
	mov	x2, x8
	stp	q31, q13, [sp, #32]
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
	zip2	v1.2d, v4.2d, v1.2d
	eor	v2.16b, v2.16b, v3.16b
	fmov	d3, x8
	eor	v0.16b, v0.16b, v1.16b
	ldr	q1, [sp, #32]
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldr	q3, [sp, #48]
	eor	v0.16b, v2.16b, v0.16b
	dup	v1.2d, v0.d[0]
	dup	v2.2d, v3.d[0]
	pmull2	v1.1q, v3.2d, v1.2d
	fmov	x8, d3
	pmull	v9.1q, v3.1d, v0.1d
	pmull2	v31.1q, v3.2d, v0.2d
	pmull2	v2.1q, v2.2d, v0.2d
	eor	v30.16b, v2.16b, v1.16b
	b	.LBB2_12
.LBB2_11:
	fmov	x8, d13
.LBB2_12:
	lsl	x9, x2, #3
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	zip1	v2.2d, v0.2d, v30.2d
	zip2	v3.2d, v30.2d, v0.2d
	eor	v2.16b, v2.16b, v9.16b
	mov	v1.d[0], x9
	mov	x9, #-4467570830351532032
	fmov	d4, x9
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v5.16b
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v3.16b, v31.16b, v3.16b, v5.16b
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
	zip2	v0.2d, v3.2d, v0.2d
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
	eor	v0.16b, v0.16b, v2.16b
	str	q0, [x3]
	mov	w0, #1
	.cfi_def_cfa wsp, 192
	ldp	d9, d8, [sp, #112]
	ldp	d11, d10, [sp, #96]
	ldp	d13, d12, [sp, #80]
	ldp	x20, x19, [sp, #176]
	ldp	x22, x21, [sp, #160]
	ldp	x24, x23, [sp, #144]
	ldp	x29, x30, [sp, #128]
	add	sp, sp, #192
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
	ret
.Lfunc_end2:
	.size	haberdashery_sivmac_neoversev2_sign, .Lfunc_end2-haberdashery_sivmac_neoversev2_sign
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
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
	b.hs	.LBB3_2
	mov	w0, wzr
	ret
.LBB3_2:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	d13, d12, [sp, #96]
	stp	d11, d10, [sp, #112]
	stp	d9, d8, [sp, #128]
	stp	x29, x30, [sp, #144]
	str	x23, [sp, #160]
	stp	x22, x21, [sp, #176]
	stp	x20, x19, [sp, #192]
	add	x29, sp, #144
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
	ldr	q13, [x0]
	mov	x21, v13.d[1]
	cmp	x2, #128
	b.lo	.LBB3_6
	ldp	x8, x9, [x0, #16]
	ldp	x10, x11, [x0, #32]
	ldp	x12, x13, [x0, #48]
	ldp	x14, x15, [x0, #64]
	ldp	x16, x17, [x0, #80]
	ldp	x18, x4, [x0, #96]
	ldp	x5, x6, [x0, #112]
	mov	x7, #-4467570830351532032
	fmov	d1, x7
	fmov	d2, x21
	movi	v0.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v9.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	mov	x19, x2
	fmov	d3, x8
	fmov	d4, x9
	fmov	d5, x10
	fmov	d6, x11
	fmov	d7, x12
	fmov	d16, x13
	fmov	d17, x14
	fmov	d18, x15
	fmov	d19, x16
	fmov	d20, x17
	fmov	d21, x18
	fmov	d22, x4
	dup	v23.2d, x5
	fmov	d24, x5
	dup	v25.2d, x6
	fmov	d26, x6
	.p2align	5, , 16
.LBB3_4:
	zip1	v28.2d, v0.2d, v30.2d
	ldr	q27, [x1]
	zip2	v29.2d, v30.2d, v0.2d
	add	x8, x1, #128
	sub	x19, x19, #128
	eor	v28.16b, v28.16b, v9.16b
	eor	v29.16b, v31.16b, v29.16b
	pmull	v30.1q, v28.1d, v1.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor	v28.16b, v28.16b, v30.16b
	pmull	v30.1q, v28.1d, v1.1d
	ext	v28.16b, v28.16b, v28.16b, #8
	eor3	v27.16b, v29.16b, v27.16b, v30.16b
	eor	v27.16b, v28.16b, v27.16b
	ldp	d28, d29, [x1, #112]
	pmull	v31.1q, v13.1d, v29.1d
	pmull	v29.1q, v2.1d, v29.1d
	pmull	v30.1q, v13.1d, v28.1d
	pmull	v28.1q, v2.1d, v28.1d
	eor	v28.16b, v31.16b, v28.16b
	ldp	d31, d8, [x1, #96]
	pmull	v10.1q, v3.1d, v8.1d
	pmull	v8.1q, v4.1d, v8.1d
	pmull	v9.1q, v3.1d, v31.1d
	pmull	v31.1q, v4.1d, v31.1d
	eor	v29.16b, v8.16b, v29.16b
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	eor	v30.16b, v9.16b, v30.16b
	ldp	d31, d8, [x1, #80]
	pmull	v10.1q, v5.1d, v8.1d
	pmull	v8.1q, v6.1d, v8.1d
	pmull	v9.1q, v5.1d, v31.1d
	pmull	v31.1q, v6.1d, v31.1d
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	ldp	d31, d10, [x1, #64]
	pmull	v12.1q, v7.1d, v10.1d
	pmull	v10.1q, v16.1d, v10.1d
	pmull	v11.1q, v7.1d, v31.1d
	pmull	v31.1q, v16.1d, v31.1d
	eor3	v29.16b, v29.16b, v8.16b, v10.16b
	eor3	v28.16b, v28.16b, v31.16b, v12.16b
	ldp	d31, d8, [x1, #48]
	eor3	v30.16b, v30.16b, v9.16b, v11.16b
	pmull	v10.1q, v17.1d, v8.1d
	pmull	v8.1q, v18.1d, v8.1d
	pmull	v9.1q, v17.1d, v31.1d
	pmull	v31.1q, v18.1d, v31.1d
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	ldp	d31, d10, [x1, #32]
	pmull	v12.1q, v19.1d, v10.1d
	pmull	v10.1q, v20.1d, v10.1d
	pmull	v11.1q, v19.1d, v31.1d
	pmull	v31.1q, v20.1d, v31.1d
	eor3	v29.16b, v29.16b, v8.16b, v10.16b
	eor3	v28.16b, v28.16b, v31.16b, v12.16b
	ldp	d31, d8, [x1, #16]
	eor3	v30.16b, v30.16b, v9.16b, v11.16b
	pmull2	v11.1q, v23.2d, v27.2d
	mov	x1, x8
	pmull	v10.1q, v21.1d, v8.1d
	pmull	v8.1q, v22.1d, v8.1d
	pmull	v9.1q, v21.1d, v31.1d
	pmull	v31.1q, v22.1d, v31.1d
	eor3	v28.16b, v28.16b, v31.16b, v10.16b
	pmull	v31.1q, v24.1d, v27.1d
	pmull	v10.1q, v26.1d, v27.1d
	pmull2	v27.1q, v25.2d, v27.2d
	eor3	v9.16b, v30.16b, v9.16b, v31.16b
	eor3	v30.16b, v28.16b, v10.16b, v11.16b
	eor3	v31.16b, v29.16b, v8.16b, v27.16b
	cmp	x19, #127
	b.hi	.LBB3_4
	mov	x1, x8
	cmp	x19, #16
	b.hs	.LBB3_7
	b	.LBB3_9
.LBB3_6:
	movi	v31.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v9.2d, #0000000000000000
	mov	x19, x2
	cmp	x2, #16
	b.lo	.LBB3_9
.LBB3_7:
	fmov	x8, d13
	mov	x9, #-4467570830351532032
	fmov	d2, x21
	movi	v0.2d, #0000000000000000
	fmov	d1, x9
	dup	v3.2d, x8
	.p2align	5, , 16
.LBB3_8:
	zip1	v5.2d, v0.2d, v30.2d
	ldr	q4, [x1], #16
	zip2	v6.2d, v30.2d, v0.2d
	sub	x19, x19, #16
	eor	v5.16b, v5.16b, v9.16b
	eor	v6.16b, v31.16b, v6.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v5.16b, v5.16b, v7.16b
	pmull	v7.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor3	v4.16b, v6.16b, v4.16b, v7.16b
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v2.1d, v4.1d
	pmull2	v6.1q, v3.2d, v4.2d
	pmull	v9.1q, v13.1d, v4.1d
	pmull2	v31.1q, v13.2d, v4.2d
	eor	v30.16b, v6.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB3_8
.LBB3_9:
	ldr	q6, [x3]
	cbz	x19, .LBB3_11
	mov	w8, #16
	sub	x9, x29, #64
	mov	x22, x0
	mov	x20, x1
	mov	w1, wzr
	mov	x23, x2
	sub	x8, x8, x19
	add	x0, x9, x19
	stp	q9, q31, [sp, #16]
	mov	x2, x8
	stp	q13, q6, [sp, #48]
	str	q30, [sp]
	bl	memset
	sub	x0, x29, #64
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldp	q4, q3, [sp]
	ldur	q0, [x29, #-64]
	movi	v1.2d, #0000000000000000
	mov	x8, #-4467570830351532032
	mov	x2, x23
	mov	x0, x22
	zip1	v2.2d, v1.2d, v4.2d
	zip2	v1.2d, v4.2d, v1.2d
	eor	v2.16b, v2.16b, v3.16b
	fmov	d3, x8
	eor	v0.16b, v0.16b, v1.16b
	ldr	q1, [sp, #32]
	pmull	v4.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v4.16b
	pmull	v3.1q, v2.1d, v3.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldp	q3, q6, [sp, #48]
	eor	v0.16b, v2.16b, v0.16b
	dup	v1.2d, v0.d[0]
	dup	v2.2d, v3.d[0]
	pmull2	v1.1q, v3.2d, v1.2d
	fmov	x8, d3
	pmull	v9.1q, v3.1d, v0.1d
	pmull2	v31.1q, v3.2d, v0.2d
	pmull2	v2.1q, v2.2d, v0.2d
	eor	v30.16b, v2.16b, v1.16b
	b	.LBB3_12
.LBB3_11:
	fmov	x8, d13
.LBB3_12:
	lsl	x9, x2, #3
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	zip1	v2.2d, v1.2d, v30.2d
	zip2	v3.2d, v30.2d, v1.2d
	eor	v2.16b, v2.16b, v9.16b
	mov	v0.d[0], x9
	mov	x9, #-4467570830351532032
	fmov	d4, x9
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v5.16b
	pmull	v5.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v3.16b, v31.16b, v3.16b, v5.16b
	dup	v5.2d, x8
	eor3	v0.16b, v0.16b, v3.16b, v2.16b
	fmov	d3, x21
	fmov	d2, x8
	adrp	x8, .LCPI3_0
	pmull2	v5.1q, v5.2d, v0.2d
	pmull	v3.1q, v3.1d, v0.1d
	pmull	v2.1q, v2.1d, v0.1d
	eor	v3.16b, v5.16b, v3.16b
	dup	v5.2d, x21
	pmull2	v0.1q, v5.2d, v0.2d
	zip1	v5.2d, v1.2d, v3.2d
	zip2	v1.2d, v3.2d, v1.2d
	eor	v2.16b, v5.16b, v2.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v3.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v0.16b, v3.16b, v0.16b
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	ldr	q1, [x8, :lo12:.LCPI3_0]
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
	.cfi_def_cfa wsp, 208
	ldp	d9, d8, [sp, #128]
	ldp	d11, d10, [sp, #112]
	ldp	d13, d12, [sp, #96]
	ldp	x20, x19, [sp, #192]
	ldp	x22, x21, [sp, #176]
	ldr	x23, [sp, #160]
	ldp	x29, x30, [sp, #144]
	add	sp, sp, #208
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
	ret
.Lfunc_end3:
	.size	haberdashery_sivmac_neoversev2_verify, .Lfunc_end3-haberdashery_sivmac_neoversev2_verify
	.cfi_endproc

	.ident	"rustc version 1.98.0-nightly (c397dae80 2026-07-02)"
	.section	".note.GNU-stack","",@progbits

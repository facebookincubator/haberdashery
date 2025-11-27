# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


	.section	.text.haberdashery_aes256gcmsiv_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcmsiv_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcmsiv_neoversev2_init,@function
haberdashery_aes256gcmsiv_neoversev2_init:
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
	.size	haberdashery_aes256gcmsiv_neoversev2_init, .Lfunc_end0-haberdashery_aes256gcmsiv_neoversev2_init
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
	sub	sp, sp, #800
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
	ldp	w17, w16, [x1]
	movi	v1.2d, #0000000000000000
	ldr	w15, [x1, #8]
	adrp	x8, .LCPI1_0
	ldp	q6, q7, [x0]
	movi	v16.2d, #0000000000000000
	dup	v22.4s, v16.s[0]
	movi	v24.2d, #0000000000000000
	ext	v23.16b, v16.16b, v16.16b, #4
	mov	x21, x7
	mov	x22, x5
	mov	v1.s[1], w17
	ldr	q18, [x8, :lo12:.LCPI1_0]
	adrp	x8, .LCPI1_1
	ldr	q0, [x8, :lo12:.LCPI1_1]
	adrp	x8, .LCPI1_2
	stp	q23, q22, [sp, #208]
	str	w20, [sp, #380]
	stp	q0, q18, [sp, #336]
	mov	v1.s[2], w16
	mov	v1.s[3], w15
	eor	v4.16b, v1.16b, v0.16b
	ldr	q0, [x8, :lo12:.LCPI1_2]
	adrp	x8, .LCPI1_3
	eor	v2.16b, v1.16b, v18.16b
	ldr	q19, [x8, :lo12:.LCPI1_3]
	adrp	x8, .LCPI1_4
	ldr	q20, [x8, :lo12:.LCPI1_4]
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	str	q0, [sp, #320]
	eor	v3.16b, v1.16b, v0.16b
	eor	v5.16b, v1.16b, v19.16b
	eor	v0.16b, v1.16b, v20.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	stp	q20, q19, [sp, #288]
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
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
	eor	v21.16b, v6.16b, v1.16b
	eor	v1.16b, v6.16b, v5.16b
	eor	v0.8b, v6.8b, v0.8b
	eor	v17.16b, v6.16b, v2.16b
	eor	v27.16b, v6.16b, v4.16b
	eor	v3.8b, v6.8b, v3.8b
	movi	v4.2d, #0000000000000000
	mov	v26.16b, v1.16b
	mov	v4.d[1], v27.d[0]
	ext	v5.16b, v22.16b, v27.16b, #4
	mov	v27.d[1], v3.d[0]
	movi	v3.4s, #1
	fmov	x9, d21
	fmov	x10, d17
	stp	q21, q17, [x29, #-176]
	mov	v26.d[1], v0.d[0]
	movi	v0.2d, #0000000000000000
	stur	q0, [x29, #-144]
	ext	v0.16b, v23.16b, v27.16b, #12
	mov	w8, v26.s[3]
	stp	q27, q26, [x29, #-224]
	ror	w8, w8, #8
	dup	v2.4s, w8
	aese	v2.16b, v24.16b
	dup	v2.4s, v2.s[0]
	eor	v2.16b, v4.16b, v2.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[1], v1.d[0]
	eor3	v0.16b, v2.16b, v0.16b, v5.16b
	ext	v5.16b, v22.16b, v1.16b, #4
	eor3	v25.16b, v27.16b, v0.16b, v3.16b
	ext	v3.16b, v23.16b, v26.16b, #12
	eor	v2.16b, v27.16b, v0.16b
	dup	v6.4s, v25.s[3]
	aese	v6.16b, v24.16b
	dup	v6.4s, v6.s[0]
	eor	v4.16b, v4.16b, v6.16b
	ext	v6.16b, v22.16b, v25.16b, #4
	eor3	v3.16b, v4.16b, v3.16b, v5.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v25.d[0]
	ext	v4.16b, v23.16b, v25.16b, #12
	eor	v16.16b, v26.16b, v3.16b
	eor	v1.8b, v1.8b, v3.8b
	mov	w8, v16.s[3]
	stp	q16, q25, [x29, #-256]
	ror	w8, w8, #8
	dup	v7.4s, w8
	aese	v7.16b, v24.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v4.16b, v5.16b, v4.16b, v6.16b
	movi	v5.4s, #3
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v1.d[0]
	ext	v1.16b, v22.16b, v16.16b, #4
	eor3	v30.16b, v2.16b, v4.16b, v5.16b
	ext	v5.16b, v23.16b, v16.16b, #12
	eor3	v0.16b, v27.16b, v0.16b, v4.16b
	dup	v7.4s, v30.s[3]
	aese	v7.16b, v24.16b
	dup	v7.4s, v7.s[0]
	eor	v6.16b, v6.16b, v7.16b
	eor3	v1.16b, v6.16b, v5.16b, v1.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v30.d[0]
	ext	v6.16b, v22.16b, v30.16b, #4
	eor3	v28.16b, v26.16b, v3.16b, v1.16b
	ext	v3.16b, v23.16b, v30.16b, #12
	mov	w8, v28.s[3]
	stp	q28, q30, [sp, #576]
	ror	w8, w8, #8
	dup	v7.4s, w8
	aese	v7.16b, v24.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v3.16b, v5.16b, v3.16b, v6.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v28.d[0]
	ext	v6.16b, v22.16b, v28.16b, #4
	eor3	v2.16b, v2.16b, v4.16b, v3.16b
	movi	v4.4s, #7
	eor3	v8.16b, v0.16b, v3.16b, v4.16b
	ext	v4.16b, v23.16b, v28.16b, #12
	dup	v7.4s, v8.s[3]
	str	q8, [sp, #560]
	aese	v7.16b, v24.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v4.16b, v5.16b, v4.16b, v6.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v8.d[0]
	ext	v6.16b, v22.16b, v8.16b, #4
	eor3	v9.16b, v16.16b, v1.16b, v4.16b
	ext	v1.16b, v23.16b, v8.16b, #12
	mov	w8, v9.s[3]
	ror	w8, w8, #8
	dup	v7.4s, w8
	aese	v7.16b, v24.16b
	dup	v7.4s, v7.s[0]
	eor	v5.16b, v5.16b, v7.16b
	eor3	v1.16b, v5.16b, v1.16b, v6.16b
	ext	v5.16b, v22.16b, v9.16b, #4
	eor3	v7.16b, v0.16b, v3.16b, v1.16b
	movi	v0.4s, #15
	movi	v3.2d, #0000000000000000
	mov	v3.d[1], v9.d[0]
	eor3	v10.16b, v2.16b, v1.16b, v0.16b
	ext	v0.16b, v23.16b, v9.16b, #12
	dup	v6.4s, v10.s[3]
	str	q10, [sp, #528]
	aese	v6.16b, v24.16b
	dup	v6.4s, v6.s[0]
	eor	v3.16b, v3.16b, v6.16b
	eor3	v0.16b, v3.16b, v0.16b, v5.16b
	ext	v3.16b, v23.16b, v10.16b, #12
	ext	v5.16b, v22.16b, v10.16b, #4
	eor3	v16.16b, v28.16b, v4.16b, v0.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[1], v10.d[0]
	mov	w8, v16.s[3]
	ror	w8, w8, #8
	dup	v6.4s, w8
	aese	v6.16b, v24.16b
	dup	v6.4s, v6.s[0]
	eor	v4.16b, v4.16b, v6.16b
	eor3	v3.16b, v4.16b, v3.16b, v5.16b
	ext	v4.16b, v22.16b, v16.16b, #4
	eor3	v1.16b, v2.16b, v1.16b, v3.16b
	movi	v2.4s, #31
	eor3	v6.16b, v7.16b, v3.16b, v2.16b
	ext	v2.16b, v23.16b, v16.16b, #12
	stp	q3, q7, [sp, #256]
	movi	v3.2d, #0000000000000000
	mov	v3.d[1], v16.d[0]
	dup	v5.4s, v6.s[3]
	stp	q6, q16, [sp, #496]
	aese	v5.16b, v24.16b
	dup	v5.4s, v5.s[0]
	eor	v3.16b, v3.16b, v5.16b
	pmull	v5.1q, v17.1d, v17.1d
	eor3	v2.16b, v3.16b, v2.16b, v4.16b
	ext	v3.16b, v22.16b, v6.16b, #4
	eor3	v13.16b, v9.16b, v0.16b, v2.16b
	movi	v2.2d, #0000000000000000
	mov	v2.d[1], v6.d[0]
	ext	v0.16b, v23.16b, v6.16b, #12
	mov	w8, v13.s[3]
	ror	w8, w8, #8
	dup	v4.4s, w8
	mov	x8, #-4467570830351532032
	aese	v4.16b, v24.16b
	dup	v4.4s, v4.s[0]
	eor	v2.16b, v2.16b, v4.16b
	eor3	v2.16b, v2.16b, v0.16b, v3.16b
	movi	v0.4s, #63
	pmull	v3.1q, v21.1d, v21.1d
	str	q2, [sp, #240]
	eor3	v2.16b, v1.16b, v2.16b, v0.16b
	ext	v0.16b, v23.16b, v13.16b, #12
	movi	v1.2d, #0000000000000000
	mov	v1.d[1], v13.d[0]
	stur	q2, [x29, #-112]
	dup	v2.4s, v2.s[3]
	aese	v2.16b, v24.16b
	dup	v2.4s, v2.s[0]
	eor3	v0.16b, v2.16b, v1.16b, v0.16b
	pmull	v1.1q, v21.1d, v17.1d
	pmull	v2.1q, v17.1d, v21.1d
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
	eor3	v16.16b, v2.16b, v4.16b, v3.16b
	dup	v2.2d, v16.d[0]
	pmull	v4.1q, v16.1d, v16.1d
	pmull2	v5.1q, v16.2d, v16.2d
	fmov	x11, d16
	mov	x20, v16.d[1]
	stur	q16, [x29, #-128]
	pmull2	v3.1q, v2.2d, v16.2d
	pmull2	v2.1q, v16.2d, v2.2d
	dup	v12.2d, x11
	eor	v2.16b, v2.16b, v3.16b
	movi	v3.2d, #0000000000000000
	mov	v3.d[0], v2.d[1]
	zip1	v2.2d, v24.2d, v2.2d
	eor	v2.16b, v2.16b, v4.16b
	ext	v4.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v1.1d
	eor	v2.16b, v4.16b, v2.16b
	pmull	v4.1q, v2.1d, v1.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v16.1d, v21.1d
	eor3	v23.16b, v3.16b, v4.16b, v2.16b
	dup	v3.2d, v21.d[0]
	pmull	v2.1q, v16.1d, v17.1d
	pmull2	v4.1q, v16.2d, v3.2d
	fmov	x12, d23
	mov	x26, v23.d[1]
	eor	v2.16b, v4.16b, v2.16b
	movi	v4.2d, #0000000000000000
	dup	v27.2d, x12
	mov	v4.d[0], v2.d[1]
	zip1	v2.2d, v24.2d, v2.2d
	eor	v2.16b, v2.16b, v5.16b
	ext	v5.16b, v2.16b, v2.16b, #8
	pmull	v2.1q, v2.1d, v1.1d
	eor	v5.16b, v5.16b, v2.16b
	dup	v2.2d, v17.d[0]
	pmull	v6.1q, v5.1d, v1.1d
	pmull2	v7.1q, v16.2d, v2.2d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v28.16b, v4.16b, v6.16b, v5.16b
	dup	v4.2d, v28.d[0]
	pmull	v6.1q, v28.1d, v28.1d
	pmull2	v7.1q, v28.2d, v28.2d
	fmov	x13, d28
	mov	x24, v28.d[1]
	pmull2	v5.1q, v4.2d, v28.2d
	pmull2	v4.1q, v28.2d, v4.2d
	dup	v31.2d, x13
	stp	q31, q12, [sp, #144]
	eor	v4.16b, v4.16b, v5.16b
	movi	v5.2d, #0000000000000000
	stp	q28, q23, [sp, #432]
	mov	v5.d[0], v4.d[1]
	zip1	v4.2d, v24.2d, v4.2d
	eor	v4.16b, v4.16b, v6.16b
	ext	v6.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v6.16b, v4.16b
	pmull	v6.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v29.16b, v5.16b, v6.16b, v4.16b
	pmull	v4.1q, v29.1d, v17.1d
	pmull2	v5.1q, v29.2d, v3.2d
	pmull	v6.1q, v29.1d, v21.1d
	pmull2	v7.1q, v29.2d, v2.2d
	pmull2	v3.1q, v23.2d, v3.2d
	pmull2	v2.1q, v23.2d, v2.2d
	fmov	x14, d29
	str	q29, [sp, #416]
	mov	x25, v29.d[1]
	dup	v29.2d, x9
	eor	v4.16b, v5.16b, v4.16b
	dup	v26.2d, x14
	zip1	v5.2d, v24.2d, v4.2d
	stp	q26, q27, [sp, #112]
	eor	v5.16b, v5.16b, v6.16b
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v1.1d
	eor	v5.16b, v6.16b, v5.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[0], v4.d[1]
	pmull	v4.1q, v5.1d, v1.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v4.16b, v7.16b, v4.16b
	eor3	v6.16b, v6.16b, v4.16b, v5.16b
	pmull	v4.1q, v23.1d, v17.1d
	pmull	v5.1q, v23.1d, v21.1d
	eor	v3.16b, v3.16b, v4.16b
	mov	x27, v6.d[1]
	zip1	v4.2d, v24.2d, v3.2d
	eor	v4.16b, v4.16b, v5.16b
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[0], v3.d[1]
	pmull	v3.1q, v4.1d, v1.1d
	eor	v2.16b, v2.16b, v3.16b
	ext	v3.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v23.1d, v23.1d
	eor3	v15.16b, v5.16b, v2.16b, v3.16b
	dup	v2.2d, v23.d[0]
	pmull2	v3.1q, v2.2d, v23.2d
	pmull2	v2.1q, v23.2d, v2.2d
	mov	x28, v15.d[1]
	eor	v2.16b, v2.16b, v3.16b
	zip1	v3.2d, v24.2d, v2.2d
	eor	v3.16b, v3.16b, v4.16b
	ext	v4.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v4.16b, v3.16b
	pmull2	v4.1q, v23.2d, v23.2d
	pmull	v1.1q, v3.1d, v1.1d
	eor	v1.16b, v4.16b, v1.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v2.d[1]
	ext	v2.16b, v3.16b, v3.16b, #8
	eor3	v11.16b, v4.16b, v1.16b, v2.16b
	ext	v1.16b, v22.16b, v13.16b, #4
	eor3	v14.16b, v0.16b, v1.16b, v13.16b
	dup	v1.2d, x10
	mov	x18, v11.d[1]
	stp	q11, q15, [sp, #176]
	mov	w8, v14.s[3]
	str	q14, [sp, #464]
	stur	q1, [x29, #-192]
	ror	w8, w8, #8
	dup	v0.4s, w8
	cmp	x4, #128
	b.lo	.LBB1_7
	ldp	q25, q23, [x29, #-176]
	ldur	q24, [x29, #-128]
	mov	v28.16b, v29.16b
	fmov	x8, d15
	fmov	x9, d6
	ldur	q29, [x29, #-192]
	ldp	q14, q30, [sp, #432]
	ldr	q8, [sp, #416]
	fmov	x10, d11
	mov	v10.16b, v6.16b
	mov	x11, #-4467570830351532032
	movi	v1.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	mov	x23, x4
	.p2align	5, , 16
.LBB1_4:
	ldp	q2, q3, [x3]
	ldp	q16, q17, [x3, #96]
	fmov	d21, x20
	add	x12, x3, #128
	sub	x23, x23, #128
	pmull	v19.1q, v23.1d, v17.1d
	pmull2	v20.1q, v28.2d, v17.2d
	ldp	q6, q7, [x3, #64]
	pmull	v18.1q, v25.1d, v17.1d
	pmull2	v17.1q, v29.2d, v17.2d
	ldp	q4, q5, [x3, #32]
	mov	x3, x12
	eor	v2.16b, v2.16b, v22.16b
	eor	v19.16b, v20.16b, v19.16b
	pmull	v21.1q, v21.1d, v16.1d
	pmull2	v22.1q, v12.2d, v16.2d
	pmull	v20.1q, v24.1d, v16.1d
	pmull2	v16.1q, v24.2d, v16.2d
	eor3	v19.16b, v19.16b, v21.16b, v22.16b
	fmov	d21, x24
	eor	v18.16b, v20.16b, v18.16b
	pmull	v20.1q, v14.1d, v7.1d
	pmull2	v22.1q, v31.2d, v7.2d
	pmull	v21.1q, v21.1d, v7.1d
	pmull2	v7.1q, v14.2d, v7.2d
	eor3	v7.16b, v16.16b, v17.16b, v7.16b
	fmov	d17, x26
	eor3	v19.16b, v19.16b, v21.16b, v22.16b
	pmull	v16.1q, v30.1d, v6.1d
	pmull2	v21.1q, v27.2d, v6.2d
	eor3	v16.16b, v18.16b, v20.16b, v16.16b
	dup	v20.2d, x8
	pmull	v18.1q, v15.1d, v5.1d
	pmull	v17.1q, v17.1d, v6.1d
	pmull2	v6.1q, v30.2d, v6.2d
	eor3	v17.16b, v19.16b, v17.16b, v21.16b
	fmov	d19, x28
	pmull2	v20.1q, v20.2d, v5.2d
	pmull	v19.1q, v19.1d, v5.1d
	pmull2	v5.1q, v15.2d, v5.2d
	eor3	v5.16b, v7.16b, v6.16b, v5.16b
	fmov	d7, x25
	eor3	v17.16b, v17.16b, v19.16b, v20.16b
	pmull	v6.1q, v8.1d, v4.1d
	pmull2	v19.1q, v26.2d, v4.2d
	eor3	v6.16b, v16.16b, v18.16b, v6.16b
	dup	v18.2d, x9
	pmull	v16.1q, v10.1d, v3.1d
	pmull	v7.1q, v7.1d, v4.1d
	pmull2	v4.1q, v8.2d, v4.2d
	eor3	v7.16b, v17.16b, v7.16b, v19.16b
	fmov	d17, x27
	pmull2	v18.1q, v18.2d, v3.2d
	pmull	v17.1q, v17.1d, v3.1d
	pmull2	v3.1q, v10.2d, v3.2d
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	eor3	v3.16b, v5.16b, v4.16b, v3.16b
	fmov	d5, x18
	dup	v17.2d, x10
	pmull	v4.1q, v11.1d, v2.1d
	eor3	v4.16b, v6.16b, v16.16b, v4.16b
	pmull	v5.1q, v5.1d, v2.1d
	pmull2	v17.1q, v17.2d, v2.2d
	pmull2	v2.1q, v11.2d, v2.2d
	eor3	v5.16b, v7.16b, v5.16b, v17.16b
	movi	v7.2d, #0000000000000000
	zip1	v6.2d, v1.2d, v5.2d
	mov	v7.d[0], v5.d[1]
	fmov	d5, x11
	eor	v4.16b, v6.16b, v4.16b
	pmull	v6.1q, v4.1d, v5.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v6.16b
	pmull	v5.1q, v4.1d, v5.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor3	v2.16b, v3.16b, v2.16b, v5.16b
	eor3	v22.16b, v2.16b, v7.16b, v4.16b
	cmp	x23, #127
	b.hi	.LBB1_4
	mov	v29.16b, v28.16b
	mov	v6.16b, v10.16b
	mov	x3, x12
	movi	v24.2d, #0000000000000000
	aese	v0.16b, v24.16b
	cmp	x23, #16
	b.hs	.LBB1_8
	b	.LBB1_11
.LBB1_6:
	mov	w20, wzr
	b	.LBB1_33
.LBB1_7:
	movi	v22.2d, #0000000000000000
	mov	x23, x4
	aese	v0.16b, v24.16b
	cmp	x4, #16
	b.lo	.LBB1_11
.LBB1_8:
	ldp	q17, q16, [x29, #-176]
	ldur	q21, [x29, #-192]
	mov	x8, #-4467570830351532032
	mov	v23.16b, v6.16b
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB1_9:
	ldr	q3, [x3], #16
	movi	v7.2d, #0000000000000000
	sub	x23, x23, #16
	eor	v3.16b, v3.16b, v22.16b
	pmull	v5.1q, v16.1d, v3.1d
	pmull2	v6.1q, v29.2d, v3.2d
	pmull	v4.1q, v17.1d, v3.1d
	pmull2	v3.1q, v21.2d, v3.2d
	eor	v5.16b, v6.16b, v5.16b
	zip1	v6.2d, v1.2d, v5.2d
	mov	v7.d[0], v5.d[1]
	eor	v4.16b, v6.16b, v4.16b
	pmull	v5.1q, v4.1d, v2.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v5.16b
	pmull	v5.1q, v4.1d, v2.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v3.16b, v5.16b, v3.16b
	eor3	v22.16b, v3.16b, v7.16b, v4.16b
	cmp	x23, #15
	b.hi	.LBB1_9
	mov	v6.16b, v23.16b
.LBB1_11:
	ldur	q1, [x29, #-112]
	dup	v3.4s, v0.s[0]
	str	q13, [sp, #480]
	str	q9, [sp, #544]
	mov	v24.d[1], v1.d[0]
	str	q29, [sp, #384]
	cbz	x23, .LBB1_13
	mov	w8, #16
	mov	w1, wzr
	str	x4, [sp, #104]
	str	x3, [sp, #8]
	stp	q6, q24, [sp, #48]
	sub	x2, x8, x23
	sub	x8, x29, #96
	stp	w16, w15, [sp, #96]
	add	x0, x8, x23
	str	w17, [sp, #92]
	str	q22, [sp, #400]
	str	x18, [sp, #40]
	str	q3, [sp, #16]
	bl	memset
	ldr	x1, [sp, #8]
	sub	x0, x29, #96
	mov	x2, x23
	bl	memcpy
	ldur	q0, [x29, #-96]
	ldp	q29, q1, [sp, #384]
	mov	x8, #-4467570830351532032
	eor	v0.16b, v0.16b, v1.16b
	ldp	q31, q30, [x29, #-176]
	ldur	q9, [x29, #-192]
	ldp	q6, q24, [sp, #48]
	ldur	q8, [x29, #-128]
	ldr	x18, [sp, #40]
	ldr	w15, [sp, #100]
	ldp	w17, w16, [sp, #92]
	ldr	x4, [sp, #104]
	pmull	v2.1q, v30.1d, v0.1d
	pmull2	v3.1q, v29.2d, v0.2d
	pmull	v1.1q, v31.1d, v0.1d
	pmull2	v0.1q, v9.2d, v0.2d
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
	eor3	v22.16b, v3.16b, v0.16b, v1.16b
	ldr	q3, [sp, #16]
	b	.LBB1_14
.LBB1_13:
	ldp	q31, q30, [x29, #-176]
	ldur	q8, [x29, #-128]
	ldur	q9, [x29, #-192]
.LBB1_14:
	ldur	q0, [x29, #-144]
	ldur	q2, [x29, #-112]
	ldp	q11, q10, [sp, #432]
	lsl	x8, x4, #3
	mov	v0.s[0], w17
	ldr	q12, [sp, #416]
	ldp	q15, q13, [sp, #176]
	stur	q0, [x29, #-144]
	ldp	q0, q1, [sp, #208]
	ext	v1.16b, v1.16b, v2.16b, #4
	ext	v0.16b, v0.16b, v2.16b, #12
	eor	v2.16b, v24.16b, v3.16b
	cmp	x19, #128
	b.lo	.LBB1_18
	stp	q2, q1, [sp, #416]
	ldp	q20, q2, [sp, #112]
	fmov	d4, x24
	fmov	d5, x26
	str	q0, [sp, #448]
	ldp	q1, q0, [sp, #144]
	fmov	x9, d13
	fmov	d3, x28
	fmov	x10, d6
	fmov	d16, x25
	fmov	x11, d15
	fmov	d17, x27
	stur	x20, [x29, #-128]
	mov	x23, x19
	fmov	d19, x18
	dup	v7.2d, x9
	mov	x9, #-4467570830351532032
	dup	v18.2d, x10
	mov	x10, x22
	dup	v21.2d, x11
	.p2align	5, , 16
.LBB1_16:
	ldr	q24, [x10, #112]
	ldur	d27, [x29, #-128]
	mov	v14.16b, v22.16b
	ldp	q22, q23, [x10, #80]
	add	x24, x10, #128
	sub	x23, x23, #128
	pmull2	v28.1q, v0.2d, v23.2d
	pmull	v25.1q, v30.1d, v24.1d
	pmull2	v26.1q, v29.2d, v24.2d
	pmull	v27.1q, v27.1d, v23.1d
	eor	v25.16b, v26.16b, v25.16b
	pmull2	v26.1q, v9.2d, v24.2d
	pmull	v24.1q, v31.1d, v24.1d
	eor3	v25.16b, v25.16b, v27.16b, v28.16b
	pmull	v27.1q, v4.1d, v22.1d
	pmull2	v28.1q, v1.2d, v22.2d
	eor3	v25.16b, v25.16b, v27.16b, v28.16b
	pmull2	v27.1q, v8.2d, v23.2d
	pmull2	v28.1q, v11.2d, v22.2d
	pmull	v23.1q, v8.1d, v23.1d
	pmull	v22.1q, v11.1d, v22.1d
	eor3	v26.16b, v27.16b, v26.16b, v28.16b
	ldp	q28, q27, [x10, #48]
	eor	v23.16b, v23.16b, v24.16b
	pmull	v24.1q, v10.1d, v27.1d
	eor3	v22.16b, v23.16b, v22.16b, v24.16b
	pmull	v23.1q, v5.1d, v27.1d
	pmull2	v24.1q, v2.2d, v27.2d
	eor3	v23.16b, v25.16b, v23.16b, v24.16b
	pmull	v24.1q, v3.1d, v28.1d
	pmull2	v25.1q, v7.2d, v28.2d
	eor3	v23.16b, v23.16b, v24.16b, v25.16b
	pmull2	v25.1q, v10.2d, v27.2d
	pmull2	v27.1q, v13.2d, v28.2d
	eor3	v25.16b, v26.16b, v25.16b, v27.16b
	ldp	q26, q24, [x10, #16]
	pmull	v27.1q, v13.1d, v28.1d
	pmull	v28.1q, v12.1d, v24.1d
	eor3	v22.16b, v22.16b, v27.16b, v28.16b
	pmull	v27.1q, v16.1d, v24.1d
	pmull2	v28.1q, v20.2d, v24.2d
	pmull2	v24.1q, v12.2d, v24.2d
	eor3	v23.16b, v23.16b, v27.16b, v28.16b
	pmull	v27.1q, v17.1d, v26.1d
	pmull2	v28.1q, v18.2d, v26.2d
	eor3	v23.16b, v23.16b, v27.16b, v28.16b
	pmull2	v27.1q, v6.2d, v26.2d
	pmull	v26.1q, v6.1d, v26.1d
	eor3	v24.16b, v25.16b, v24.16b, v27.16b
	ldr	q25, [x10]
	mov	x10, x24
	eor	v25.16b, v25.16b, v14.16b
	pmull	v27.1q, v15.1d, v25.1d
	eor3	v22.16b, v22.16b, v26.16b, v27.16b
	pmull	v26.1q, v19.1d, v25.1d
	pmull2	v27.1q, v21.2d, v25.2d
	pmull2	v25.1q, v15.2d, v25.2d
	eor3	v23.16b, v23.16b, v26.16b, v27.16b
	movi	v26.2d, #0000000000000000
	zip1	v26.2d, v26.2d, v23.2d
	eor	v22.16b, v26.16b, v22.16b
	fmov	d26, x9
	pmull	v27.1q, v22.1d, v26.1d
	ext	v22.16b, v22.16b, v22.16b, #8
	eor	v22.16b, v22.16b, v27.16b
	pmull	v26.1q, v22.1d, v26.1d
	ext	v22.16b, v22.16b, v22.16b, #8
	eor3	v24.16b, v24.16b, v25.16b, v26.16b
	movi	v25.2d, #0000000000000000
	mov	v25.d[0], v23.d[1]
	eor3	v22.16b, v24.16b, v25.16b, v22.16b
	cmp	x23, #127
	b.hi	.LBB1_16
	ldp	q1, q0, [sp, #432]
	ldr	q2, [sp, #416]
	b	.LBB1_19
.LBB1_18:
	mov	x23, x19
	mov	x24, x22
.LBB1_19:
	ldur	q3, [x29, #-144]
	ldr	q5, [sp, #240]
	ldr	x20, [x29, #104]
	fmov	d18, x8
	eor3	v0.16b, v2.16b, v0.16b, v1.16b
	lsl	x9, x19, #3
	mov	v3.s[1], w16
	stur	q3, [x29, #-144]
	ldp	q4, q3, [sp, #256]
	eor3	v3.16b, v3.16b, v4.16b, v5.16b
	movi	v4.4s, #127
	cmp	x23, #16
	b.lo	.LBB1_22
	mov	x8, #-4467570830351532032
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB1_21:
	ldr	q5, [x24], #16
	movi	v17.2d, #0000000000000000
	sub	x23, x23, #16
	eor	v5.16b, v5.16b, v22.16b
	pmull	v7.1q, v30.1d, v5.1d
	pmull2	v16.1q, v29.2d, v5.2d
	pmull	v6.1q, v31.1d, v5.1d
	pmull2	v5.1q, v9.2d, v5.2d
	eor	v7.16b, v16.16b, v7.16b
	zip1	v16.2d, v1.2d, v7.2d
	mov	v17.d[0], v7.d[1]
	eor	v6.16b, v16.16b, v6.16b
	pmull	v7.1q, v6.1d, v2.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v7.1q, v6.1d, v2.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v5.16b, v7.16b, v5.16b
	eor3	v22.16b, v5.16b, v17.16b, v6.16b
	cmp	x23, #15
	b.hi	.LBB1_21
.LBB1_22:
	ldur	q1, [x29, #-144]
	mov	v18.d[1], x9
	eor3	v14.16b, v3.16b, v0.16b, v4.16b
	str	q14, [sp, #448]
	mov	v1.s[2], w15
	stur	q1, [x29, #-144]
	cbz	x23, .LBB1_24
	mov	w8, #16
	mov	w1, wzr
	str	q22, [sp, #400]
	stur	q18, [x29, #-128]
	sub	x2, x8, x23
	sub	x8, x29, #96
	add	x0, x8, x23
	bl	memset
	sub	x0, x29, #96
	mov	x1, x24
	mov	x2, x23
	bl	memcpy
	ldur	q0, [x29, #-96]
	ldp	q29, q1, [sp, #384]
	mov	x8, #-4467570830351532032
	eor	v0.16b, v0.16b, v1.16b
	ldur	q30, [x29, #-160]
	ldp	q9, q31, [x29, #-192]
	ldur	q18, [x29, #-128]
	ldr	q14, [sp, #448]
	pmull	v2.1q, v30.1d, v0.1d
	pmull2	v3.1q, v29.2d, v0.2d
	pmull	v1.1q, v31.1d, v0.1d
	pmull2	v0.1q, v9.2d, v0.2d
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
	eor3	v22.16b, v3.16b, v0.16b, v1.16b
.LBB1_24:
	eor	v0.16b, v22.16b, v18.16b
	mov	x8, #-4467570830351532032
	ldp	q27, q26, [x29, #-224]
	ldp	q11, q10, [sp, #512]
	pmull	v2.1q, v30.1d, v0.1d
	pmull2	v3.1q, v29.2d, v0.2d
	pmull	v1.1q, v31.1d, v0.1d
	pmull2	v0.1q, v9.2d, v0.2d
	ldp	q29, q28, [x29, #-256]
	ldr	q15, [sp, #464]
	ldp	q31, q30, [sp, #576]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	ldp	q9, q8, [sp, #544]
	ldp	q13, q12, [sp, #480]
	ldp	q24, q21, [sp, #336]
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	adrp	x8, .LCPI1_5
	ldp	q6, q25, [sp, #304]
	ldr	q7, [sp, #288]
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	ldur	q4, [x29, #-144]
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v0.16b, v4.16b, v2.16b
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
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
	ldr	w20, [sp, #380]
	ldr	q0, [x8, :lo12:.LCPI1_7]
	adrp	x8, .LCPI1_8
	stur	q0, [x29, #-128]
	ldr	q0, [x8, :lo12:.LCPI1_8]
	adrp	x8, .LCPI1_9
	ldr	q2, [x8, :lo12:.LCPI1_9]
	stur	q0, [x29, #-144]
	.p2align	5, , 16
.LBB1_26:
	ldur	q3, [x29, #-128]
	ldp	q19, q20, [x22]
	mov	v4.16b, v23.16b
	add	v18.4s, v23.4s, v21.4s
	add	v16.4s, v23.4s, v24.4s
	add	v17.4s, v23.4s, v25.4s
	mov	v0.16b, v6.16b
	add	x8, x22, #128
	add	x9, x21, #128
	sub	x19, x19, #128
	add	v6.4s, v23.4s, v6.4s
	mov	v1.16b, v7.16b
	add	v7.4s, v23.4s, v7.4s
	add	v5.4s, v23.4s, v3.4s
	ldur	q3, [x29, #-144]
	add	v3.4s, v23.4s, v3.4s
	//APP
	aese	v4.16b, v27.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v27.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v27.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v27.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v27.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v27.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v26.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v26.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v26.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v26.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v26.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v26.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v28.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v28.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v28.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v28.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v28.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v29.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v29.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v29.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v29.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v29.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v29.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v30.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v30.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v30.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v30.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v30.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v30.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v31.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v31.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v31.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v31.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v31.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v8.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v8.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v8.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v8.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v8.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v8.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v9.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v9.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v9.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v10.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v10.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v10.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v11.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v11.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v11.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v12.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v12.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v12.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v13.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v13.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v13.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	//APP
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	aese	v18.16b, v22.16b
	aesmc	v18.16b, v18.16b
	aese	v16.16b, v22.16b
	aesmc	v16.16b, v16.16b
	aese	v17.16b, v22.16b
	aesmc	v17.16b, v17.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v7.16b, v22.16b
	aesmc	v7.16b, v7.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	//NO_APP
	aese	v4.16b, v15.16b
	aese	v18.16b, v15.16b
	aese	v16.16b, v15.16b
	aese	v17.16b, v15.16b
	aese	v6.16b, v15.16b
	aese	v7.16b, v15.16b
	aese	v5.16b, v15.16b
	aese	v3.16b, v15.16b
	add	v23.4s, v23.4s, v2.4s
	eor3	v4.16b, v19.16b, v4.16b, v14.16b
	eor3	v18.16b, v20.16b, v18.16b, v14.16b
	ldp	q19, q20, [x22, #32]
	eor3	v17.16b, v20.16b, v17.16b, v14.16b
	eor3	v16.16b, v19.16b, v16.16b, v14.16b
	ldp	q19, q20, [x22, #64]
	eor3	v7.16b, v20.16b, v7.16b, v14.16b
	eor3	v6.16b, v19.16b, v6.16b, v14.16b
	ldp	q19, q20, [x22, #96]
	stp	q4, q18, [x21]
	stp	q16, q17, [x21, #32]
	mov	x22, x8
	eor3	v3.16b, v20.16b, v3.16b, v14.16b
	stp	q6, q7, [x21, #64]
	mov	v6.16b, v0.16b
	mov	v7.16b, v1.16b
	eor3	v5.16b, v19.16b, v5.16b, v14.16b
	stp	q5, q3, [x21, #96]
	mov	x21, x9
	cmp	x19, #127
	b.hi	.LBB1_26
	mov	x22, x8
	mov	x21, x9
	cmp	x19, #16
	b.hs	.LBB1_29
	b	.LBB1_31
.LBB1_28:
	ldr	w20, [sp, #380]
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
	mov	x2, x19
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	ldur	q0, [x29, #-96]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x29, #-256]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #576]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #544]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #512]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #480]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldur	q1, [x29, #-112]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #448]
	aese	v2.16b, v3.16b
	eor3	v0.16b, v0.16b, v2.16b, v1.16b
	stur	q0, [x29, #-96]
	bl	memcpy
.LBB1_33:
	mov	w0, w20
	add	sp, sp, #800
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
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
.LCPI2_1:
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
.LCPI2_2:
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
.LCPI2_3:
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
.LCPI2_4:
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
.LCPI2_5:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_6:
	.word	6
	.word	0
	.word	0
	.word	0
.LCPI2_7:
	.word	7
	.word	0
	.word	0
	.word	0
.LCPI2_8:
	.word	8
	.word	0
	.word	0
	.word	0
.LCPI2_9:
	.word	9
	.word	0
	.word	0
	.word	0
.LCPI2_10:
	.word	10
	.word	0
	.word	0
	.word	0
.LCPI2_11:
	.word	11
	.word	0
	.word	0
	.word	0
.LCPI2_12:
	.word	12
	.word	0
	.word	0
	.word	0
.LCPI2_13:
	.word	13
	.word	0
	.word	0
	.word	0
.LCPI2_14:
	.word	14
	.word	0
	.word	0
	.word	0
.LCPI2_15:
	.word	15
	.word	0
	.word	0
	.word	0
.LCPI2_16:
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
	sub	sp, sp, #752
	ldr	x8, [x29, #112]
	cmp	x6, x8
	b.ne	.LBB2_9
	mov	w8, wzr
	cmp	x2, #12
	b.ne	.LBB2_10
	mov	x9, #1
	movk	x9, #16, lsl #32
	cmp	x4, x9
	b.hs	.LBB2_10
	cmp	x6, x9
	b.hs	.LBB2_10
	ldr	x8, [x29, #96]
	cmp	x8, #16
	b.lo	.LBB2_9
	ldp	w23, w15, [x1]
	movi	v0.2d, #0000000000000000
	ldr	w28, [x1, #8]
	adrp	x8, .LCPI2_0
	ldp	q6, q7, [x0]
	movi	v16.2d, #0000000000000000
	dup	v28.4s, v16.s[0]
	movi	v26.2d, #0000000000000000
	ext	v15.16b, v16.16b, v16.16b, #4
	mov	v0.s[1], w23
	ldr	q1, [x8, :lo12:.LCPI2_0]
	adrp	x8, .LCPI2_1
	stur	q1, [x29, #-144]
	mov	v0.s[2], w15
	mov	v0.s[3], w28
	eor	v2.16b, v0.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI2_1]
	adrp	x8, .LCPI2_2
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	str	q1, [sp, #384]
	eor	v4.16b, v0.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI2_2]
	adrp	x8, .LCPI2_3
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	str	q1, [sp, #368]
	eor	v3.16b, v0.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI2_3]
	adrp	x8, .LCPI2_4
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	eor	v5.16b, v0.16b, v1.16b
	str	q1, [sp, #352]
	ldr	q1, [x8, :lo12:.LCPI2_4]
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	str	q1, [sp, #336]
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
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #64]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #96]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #128]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #160]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	ldp	q6, q7, [x0, #192]
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	ldr	q6, [x0, #224]
	aese	v2.16b, v7.16b
	aese	v5.16b, v7.16b
	aese	v0.16b, v7.16b
	aese	v1.16b, v7.16b
	aese	v4.16b, v7.16b
	aese	v3.16b, v7.16b
	eor	v23.16b, v6.16b, v2.16b
	eor	v2.16b, v6.16b, v5.16b
	eor	v25.16b, v6.16b, v0.16b
	eor	v1.8b, v6.8b, v1.8b
	eor	v18.16b, v6.16b, v4.16b
	eor	v3.8b, v6.8b, v3.8b
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	mov	v0.16b, v2.16b
	mov	v5.d[1], v18.d[0]
	ext	v7.16b, v28.16b, v18.16b, #4
	mov	v18.d[1], v3.d[0]
	mov	v6.d[1], v2.d[0]
	fmov	x9, d23
	stp	q25, q23, [x29, #-128]
	mov	v0.d[1], v1.d[0]
	ext	v3.16b, v15.16b, v18.16b, #12
	stur	q18, [x29, #-160]
	movi	v1.2d, #0000000000000000
	str	q1, [sp, #256]
	mov	w8, v0.s[3]
	ror	w8, w8, #8
	dup	v4.4s, w8
	aese	v4.16b, v26.16b
	dup	v4.4s, v4.s[0]
	eor	v4.16b, v5.16b, v4.16b
	movi	v5.4s, #1
	eor3	v3.16b, v4.16b, v3.16b, v7.16b
	ext	v7.16b, v28.16b, v2.16b, #4
	eor3	v10.16b, v18.16b, v3.16b, v5.16b
	ext	v5.16b, v15.16b, v0.16b, #12
	eor	v4.16b, v18.16b, v3.16b
	dup	v16.4s, v10.s[3]
	aese	v16.16b, v26.16b
	dup	v16.4s, v16.s[0]
	eor	v6.16b, v6.16b, v16.16b
	ext	v16.16b, v28.16b, v10.16b, #4
	eor3	v5.16b, v6.16b, v5.16b, v7.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v10.d[0]
	ext	v6.16b, v15.16b, v10.16b, #12
	eor	v12.16b, v0.16b, v5.16b
	eor	v2.8b, v2.8b, v5.8b
	mov	w8, v12.s[3]
	stp	q12, q10, [sp, #528]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v26.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v6.16b, v7.16b, v6.16b, v16.16b
	movi	v7.4s, #3
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v2.d[0]
	ext	v2.16b, v28.16b, v12.16b, #4
	eor3	v3.16b, v18.16b, v3.16b, v6.16b
	eor3	v18.16b, v4.16b, v6.16b, v7.16b
	ext	v7.16b, v15.16b, v12.16b, #12
	dup	v17.4s, v18.s[3]
	stp	q0, q18, [x29, #-192]
	aese	v17.16b, v26.16b
	dup	v17.4s, v17.s[0]
	eor	v16.16b, v16.16b, v17.16b
	eor3	v2.16b, v16.16b, v7.16b, v2.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v18.d[0]
	ext	v16.16b, v28.16b, v18.16b, #4
	eor3	v29.16b, v0.16b, v5.16b, v2.16b
	ext	v5.16b, v15.16b, v18.16b, #12
	mov	w8, v29.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v26.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v5.16b, v7.16b, v5.16b, v16.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v29.d[0]
	ext	v16.16b, v28.16b, v29.16b, #4
	eor3	v4.16b, v4.16b, v6.16b, v5.16b
	movi	v6.4s, #7
	eor3	v30.16b, v3.16b, v5.16b, v6.16b
	ext	v6.16b, v15.16b, v29.16b, #12
	dup	v17.4s, v30.s[3]
	stp	q30, q29, [sp, #496]
	aese	v17.16b, v26.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v6.16b, v7.16b, v6.16b, v16.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v30.d[0]
	ext	v16.16b, v28.16b, v30.16b, #4
	eor3	v31.16b, v12.16b, v2.16b, v6.16b
	ext	v2.16b, v15.16b, v30.16b, #12
	mov	w8, v31.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v26.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v7.16b, v7.16b, v2.16b, v16.16b
	ext	v16.16b, v28.16b, v31.16b, #4
	eor3	v0.16b, v3.16b, v5.16b, v7.16b
	movi	v3.4s, #15
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v31.d[0]
	eor3	v8.16b, v4.16b, v7.16b, v3.16b
	ext	v3.16b, v15.16b, v31.16b, #12
	str	q0, [sp, #448]
	dup	v17.4s, v8.s[3]
	aese	v17.16b, v26.16b
	stp	q8, q31, [sp, #464]
	dup	v17.4s, v17.s[0]
	eor	v5.16b, v5.16b, v17.16b
	eor3	v5.16b, v5.16b, v3.16b, v16.16b
	ext	v3.16b, v15.16b, v8.16b, #12
	ext	v16.16b, v28.16b, v8.16b, #4
	eor3	v18.16b, v29.16b, v6.16b, v5.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v8.d[0]
	mov	w8, v18.s[3]
	ror	w8, w8, #8
	dup	v17.4s, w8
	aese	v17.16b, v26.16b
	dup	v17.4s, v17.s[0]
	eor	v6.16b, v6.16b, v17.16b
	eor3	v1.16b, v6.16b, v3.16b, v16.16b
	ext	v16.16b, v28.16b, v18.16b, #4
	eor3	v6.16b, v4.16b, v7.16b, v1.16b
	movi	v4.4s, #31
	movi	v7.2d, #0000000000000000
	mov	v7.d[1], v18.d[0]
	str	q1, [sp, #416]
	eor3	v19.16b, v0.16b, v1.16b, v4.16b
	ext	v4.16b, v15.16b, v18.16b, #12
	dup	v17.4s, v19.s[3]
	stp	q19, q18, [x29, #-256]
	pmull	v18.1q, v23.1d, v23.1d
	aese	v17.16b, v26.16b
	dup	v17.4s, v17.s[0]
	eor	v7.16b, v7.16b, v17.16b
	eor3	v4.16b, v7.16b, v4.16b, v16.16b
	ext	v7.16b, v28.16b, v19.16b, #4
	eor3	v21.16b, v31.16b, v5.16b, v4.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v19.d[0]
	ext	v4.16b, v15.16b, v19.16b, #12
	mov	w8, v21.s[3]
	ror	w8, w8, #8
	dup	v16.4s, w8
	mov	x8, #-4467570830351532032
	aese	v16.16b, v26.16b
	dup	v16.4s, v16.s[0]
	eor	v5.16b, v5.16b, v16.16b
	pmull	v16.1q, v25.1d, v25.1d
	eor3	v0.16b, v5.16b, v4.16b, v7.16b
	movi	v5.4s, #63
	eor3	v22.16b, v6.16b, v0.16b, v5.16b
	ext	v5.16b, v15.16b, v21.16b, #12
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v21.d[0]
	str	q0, [sp, #400]
	dup	v7.4s, v22.s[3]
	stp	q22, q21, [x29, #-224]
	aese	v7.16b, v26.16b
	dup	v7.4s, v7.s[0]
	eor3	v5.16b, v7.16b, v6.16b, v5.16b
	pmull	v6.1q, v25.1d, v23.1d
	pmull	v7.1q, v23.1d, v25.1d
	eor	v6.16b, v7.16b, v6.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[0], v6.d[1]
	zip1	v6.2d, v26.2d, v6.2d
	eor	v16.16b, v6.16b, v16.16b
	fmov	d6, x8
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
	fmov	x10, d2
	mov	x22, v2.d[1]
	pmull2	v16.1q, v7.2d, v2.2d
	pmull2	v7.1q, v2.2d, v7.2d
	dup	v1.2d, x10
	eor	v7.16b, v7.16b, v16.16b
	movi	v16.2d, #0000000000000000
	str	q1, [sp, #432]
	mov	v16.d[0], v7.d[1]
	zip1	v7.2d, v26.2d, v7.2d
	eor	v7.16b, v7.16b, v17.16b
	ext	v17.16b, v7.16b, v7.16b, #8
	pmull	v7.1q, v7.1d, v6.1d
	eor	v7.16b, v17.16b, v7.16b
	pmull	v17.1q, v7.1d, v6.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v17.16b, v18.16b, v17.16b
	pmull	v18.1q, v2.1d, v25.1d
	eor3	v3.16b, v16.16b, v17.16b, v7.16b
	dup	v16.2d, v25.d[0]
	pmull	v7.1q, v2.1d, v23.1d
	pmull2	v17.1q, v2.2d, v16.2d
	fmov	x11, d3
	eor	v7.16b, v17.16b, v7.16b
	movi	v17.2d, #0000000000000000
	dup	v11.2d, x11
	mov	x2, v3.d[1]
	mov	v17.d[0], v7.d[1]
	zip1	v7.2d, v26.2d, v7.2d
	eor	v7.16b, v7.16b, v18.16b
	ext	v18.16b, v7.16b, v7.16b, #8
	pmull	v7.1q, v7.1d, v6.1d
	eor	v18.16b, v18.16b, v7.16b
	dup	v7.2d, v23.d[0]
	pmull	v19.1q, v18.1d, v6.1d
	pmull2	v20.1q, v2.2d, v7.2d
	ext	v18.16b, v18.16b, v18.16b, #8
	eor	v19.16b, v20.16b, v19.16b
	eor3	v27.16b, v17.16b, v19.16b, v18.16b
	dup	v17.2d, v27.d[0]
	pmull	v19.1q, v27.1d, v27.1d
	pmull2	v20.1q, v27.2d, v27.2d
	fmov	x12, d27
	mov	x21, v27.d[1]
	pmull2	v18.1q, v17.2d, v27.2d
	pmull2	v17.1q, v27.2d, v17.2d
	dup	v14.2d, x12
	eor	v17.16b, v17.16b, v18.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[0], v17.d[1]
	zip1	v17.2d, v26.2d, v17.2d
	eor	v17.16b, v17.16b, v19.16b
	ext	v19.16b, v17.16b, v17.16b, #8
	pmull	v17.1q, v17.1d, v6.1d
	eor	v17.16b, v19.16b, v17.16b
	pmull	v19.1q, v17.1d, v6.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	eor	v19.16b, v20.16b, v19.16b
	eor3	v4.16b, v18.16b, v19.16b, v17.16b
	pmull	v17.1q, v4.1d, v23.1d
	pmull2	v18.1q, v4.2d, v16.2d
	pmull	v19.1q, v4.1d, v25.1d
	pmull2	v20.1q, v4.2d, v7.2d
	pmull2	v16.1q, v3.2d, v16.2d
	pmull2	v7.1q, v3.2d, v7.2d
	fmov	x13, d4
	mov	x0, v4.d[1]
	eor	v17.16b, v18.16b, v17.16b
	zip1	v18.2d, v26.2d, v17.2d
	eor	v18.16b, v18.16b, v19.16b
	ext	v19.16b, v18.16b, v18.16b, #8
	pmull	v18.1q, v18.1d, v6.1d
	eor	v18.16b, v19.16b, v18.16b
	movi	v19.2d, #0000000000000000
	mov	v19.d[0], v17.d[1]
	pmull	v17.1q, v18.1d, v6.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	eor	v17.16b, v20.16b, v17.16b
	eor3	v13.16b, v19.16b, v17.16b, v18.16b
	pmull	v17.1q, v3.1d, v23.1d
	pmull	v18.1q, v3.1d, v25.1d
	dup	v23.2d, x9
	eor	v16.16b, v16.16b, v17.16b
	mov	x25, v13.d[1]
	zip1	v17.2d, v26.2d, v16.2d
	eor	v17.16b, v17.16b, v18.16b
	ext	v18.16b, v17.16b, v17.16b, #8
	pmull	v17.1q, v17.1d, v6.1d
	eor	v17.16b, v18.16b, v17.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[0], v16.d[1]
	pmull	v16.1q, v17.1d, v6.1d
	eor	v7.16b, v7.16b, v16.16b
	ext	v16.16b, v17.16b, v17.16b, #8
	pmull	v17.1q, v3.1d, v3.1d
	eor3	v0.16b, v18.16b, v7.16b, v16.16b
	dup	v7.2d, v3.d[0]
	pmull2	v16.1q, v7.2d, v3.2d
	pmull2	v7.1q, v3.2d, v7.2d
	mov	x1, v0.d[1]
	str	q0, [sp, #16]
	eor	v7.16b, v7.16b, v16.16b
	zip1	v16.2d, v26.2d, v7.2d
	eor	v16.16b, v16.16b, v17.16b
	ext	v17.16b, v16.16b, v16.16b, #8
	pmull	v16.1q, v16.1d, v6.1d
	eor	v16.16b, v17.16b, v16.16b
	pmull2	v17.1q, v3.2d, v3.2d
	pmull	v6.1q, v16.1d, v6.1d
	eor	v6.16b, v17.16b, v6.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[0], v7.d[1]
	ext	v7.16b, v16.16b, v16.16b, #8
	eor3	v9.16b, v17.16b, v6.16b, v7.16b
	ext	v6.16b, v28.16b, v21.16b, #4
	eor3	v24.16b, v5.16b, v6.16b, v21.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[1], v22.d[0]
	mov	x24, v9.d[1]
	stp	q9, q13, [sp, #144]
	mov	w8, v24.s[3]
	str	q24, [sp, #240]
	ror	w8, w8, #8
	dup	v6.4s, w8
	fmov	x8, d25
	dup	v25.2d, x8
	aese	v6.16b, v26.16b
	dup	v7.4s, v6.s[0]
	dup	v6.2d, x13
	cmp	x4, #128
	b.lo	.LBB2_11
	fmov	x8, d0
	fmov	d16, x22
	fmov	d17, x21
	fmov	x9, d13
	fmov	x10, d9
	fmov	d18, x2
	fmov	d19, x1
	mov	v1.16b, v6.16b
	mov	v6.16b, v23.16b
	mov	v10.16b, v25.16b
	stp	q7, q5, [sp, #272]
	stp	q15, q28, [sp, #304]
	ldr	q15, [sp, #432]
	fmov	d21, x0
	fmov	d22, x25
	mov	v5.16b, v3.16b
	mov	v12.16b, v27.16b
	mov	x19, x4
	fmov	d24, x24
	dup	v20.2d, x8
	mov	x8, #-4467570830351532032
	dup	v23.2d, x9
	dup	v25.2d, x10
	.p2align	5, , 16
.LBB2_7:
	ldr	q28, [x3, #112]
	ldur	q7, [x29, #-112]
	mov	v3.16b, v26.16b
	ldp	q26, q27, [x3, #80]
	add	x9, x3, #128
	sub	x19, x19, #128
	pmull	v31.1q, v16.1d, v27.1d
	pmull2	v8.1q, v15.2d, v27.2d
	pmull	v29.1q, v7.1d, v28.1d
	pmull2	v30.1q, v10.2d, v28.2d
	ldur	q7, [x29, #-128]
	eor	v29.16b, v30.16b, v29.16b
	pmull2	v30.1q, v6.2d, v28.2d
	eor3	v29.16b, v29.16b, v31.16b, v8.16b
	pmull	v31.1q, v17.1d, v26.1d
	pmull2	v8.1q, v14.2d, v26.2d
	eor3	v29.16b, v29.16b, v31.16b, v8.16b
	pmull2	v31.1q, v2.2d, v27.2d
	pmull2	v8.1q, v12.2d, v26.2d
	pmull	v28.1q, v7.1d, v28.1d
	pmull	v27.1q, v2.1d, v27.1d
	pmull	v26.1q, v12.1d, v26.1d
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	ldp	q8, q31, [x3, #48]
	eor	v27.16b, v27.16b, v28.16b
	pmull	v28.1q, v5.1d, v31.1d
	eor3	v26.16b, v27.16b, v26.16b, v28.16b
	pmull	v27.1q, v18.1d, v31.1d
	pmull2	v28.1q, v11.2d, v31.2d
	eor3	v27.16b, v29.16b, v27.16b, v28.16b
	pmull	v28.1q, v19.1d, v8.1d
	pmull2	v29.1q, v20.2d, v8.2d
	eor3	v27.16b, v27.16b, v28.16b, v29.16b
	pmull2	v29.1q, v5.2d, v31.2d
	pmull2	v31.1q, v0.2d, v8.2d
	eor3	v29.16b, v30.16b, v29.16b, v31.16b
	ldp	q30, q28, [x3, #16]
	pmull	v31.1q, v0.1d, v8.1d
	pmull	v8.1q, v4.1d, v28.1d
	eor3	v26.16b, v26.16b, v31.16b, v8.16b
	pmull	v31.1q, v21.1d, v28.1d
	pmull2	v8.1q, v1.2d, v28.2d
	pmull2	v28.1q, v4.2d, v28.2d
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	pmull	v31.1q, v22.1d, v30.1d
	pmull2	v8.1q, v23.2d, v30.2d
	eor3	v27.16b, v27.16b, v31.16b, v8.16b
	pmull2	v31.1q, v13.2d, v30.2d
	pmull	v30.1q, v13.1d, v30.1d
	eor3	v28.16b, v29.16b, v28.16b, v31.16b
	ldr	q29, [x3]
	mov	x3, x9
	eor	v29.16b, v29.16b, v3.16b
	movi	v3.2d, #0000000000000000
	pmull	v31.1q, v9.1d, v29.1d
	eor3	v26.16b, v26.16b, v30.16b, v31.16b
	pmull	v30.1q, v24.1d, v29.1d
	pmull2	v31.1q, v25.2d, v29.2d
	pmull2	v29.1q, v9.2d, v29.2d
	eor3	v27.16b, v27.16b, v30.16b, v31.16b
	zip1	v30.2d, v3.2d, v27.2d
	eor	v26.16b, v30.16b, v26.16b
	fmov	d30, x8
	pmull	v31.1q, v26.1d, v30.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor	v26.16b, v26.16b, v31.16b
	pmull	v30.1q, v26.1d, v30.1d
	ext	v26.16b, v26.16b, v26.16b, #8
	eor3	v28.16b, v28.16b, v29.16b, v30.16b
	movi	v29.2d, #0000000000000000
	mov	v29.d[0], v27.d[1]
	eor3	v26.16b, v28.16b, v29.16b, v26.16b
	cmp	x19, #127
	b.hi	.LBB2_7
	ldp	q30, q29, [sp, #496]
	ldp	q8, q31, [sp, #464]
	mov	v25.16b, v10.16b
	mov	v3.16b, v5.16b
	mov	v27.16b, v12.16b
	mov	v23.16b, v6.16b
	mov	v6.16b, v1.16b
	mov	x3, x9
	ldr	q24, [sp, #240]
	ldp	q22, q21, [x29, #-224]
	ldp	q12, q10, [sp, #528]
	ldp	q15, q28, [sp, #304]
	ldp	q7, q5, [sp, #272]
	b	.LBB2_12
.LBB2_9:
	mov	w8, wzr
.LBB2_10:
	mov	w0, w8
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
.LBB2_11:
	.cfi_restore_state
	mov	x19, x4
.LBB2_12:
	ldp	q13, q9, [x29, #-176]
	ext	v1.16b, v15.16b, v22.16b, #12
	ext	v0.16b, v28.16b, v22.16b, #4
	eor	v5.16b, v5.16b, v7.16b
	str	q2, [sp, #128]
	stp	q11, q6, [sp, #48]
	str	q14, [sp, #32]
	cmp	x19, #16
	b.lo	.LBB2_15
	mov	x8, #-4467570830351532032
	movi	v6.2d, #0000000000000000
	fmov	d7, x8
	.p2align	5, , 16
.LBB2_14:
	ldr	q16, [x3], #16
	ldur	q2, [x29, #-128]
	movi	v20.2d, #0000000000000000
	sub	x19, x19, #16
	eor	v16.16b, v16.16b, v26.16b
	pmull	v17.1q, v2.1d, v16.1d
	ldur	q2, [x29, #-112]
	pmull2	v19.1q, v25.2d, v16.2d
	pmull	v18.1q, v2.1d, v16.1d
	pmull2	v16.1q, v23.2d, v16.2d
	eor	v18.16b, v19.16b, v18.16b
	zip1	v19.2d, v6.2d, v18.2d
	mov	v20.d[0], v18.d[1]
	eor	v17.16b, v19.16b, v17.16b
	pmull	v18.1q, v17.1d, v7.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	eor	v17.16b, v17.16b, v18.16b
	pmull	v18.1q, v17.1d, v7.1d
	ext	v17.16b, v17.16b, v17.16b, #8
	eor	v16.16b, v18.16b, v16.16b
	eor3	v26.16b, v16.16b, v20.16b, v17.16b
	cmp	x19, #15
	b.hi	.LBB2_14
.LBB2_15:
	stp	q27, q4, [sp, #80]
	ldr	q2, [sp, #448]
	ldur	q11, [x29, #-192]
	ldr	x20, [x29, #104]
	eor3	v1.16b, v5.16b, v1.16b, v0.16b
	str	q3, [sp, #112]
	ldp	q4, q3, [sp, #400]
	eor3	v3.16b, v2.16b, v3.16b, v4.16b
	ldr	q2, [x7]
	movi	v4.4s, #127
	str	q23, [sp, #448]
	stp	q2, q25, [sp, #192]
	cbz	x19, .LBB2_17
	mov	w8, #16
	str	x2, [sp, #304]
	str	x0, [sp, #400]
	mov	x26, x5
	mov	x27, x4
	str	q26, [sp, #224]
	sub	x2, x8, x19
	sub	x8, x29, #96
	str	x1, [sp, #320]
	mov	w1, wzr
	add	x0, x8, x19
	str	x6, [sp, #416]
	str	x21, [sp, #288]
	mov	x21, x3
	str	x22, [sp, #272]
	mov	w22, w15
	str	q3, [sp, #176]
	str	q1, [sp]
	bl	memset
	mov	x1, x21
	ldr	x21, [sp, #288]
	sub	x0, x29, #96
	mov	x2, x19
	bl	memcpy
	ldp	q25, q1, [sp, #208]
	ldp	q2, q0, [x29, #-112]
	mov	x8, #-4467570830351532032
	mov	w15, w22
	mov	x4, x27
	mov	x5, x26
	eor	v0.16b, v0.16b, v1.16b
	ldur	q1, [x29, #-128]
	ldp	q23, q8, [sp, #448]
	ldr	q24, [sp, #240]
	ldp	q22, q21, [x29, #-224]
	ldp	q31, q30, [sp, #480]
	ldp	q29, q12, [sp, #512]
	ldp	q13, q9, [x29, #-176]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v25.2d, v0.2d
	ldr	q10, [sp, #544]
	ldur	q11, [x29, #-192]
	ldr	x2, [sp, #304]
	ldr	x1, [sp, #320]
	ldr	x0, [sp, #400]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	ldr	x22, [sp, #272]
	ldr	x6, [sp, #416]
	pmull	v1.1q, v1.1d, v0.1d
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	pmull2	v0.1q, v23.2d, v0.2d
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	movi	v4.4s, #127
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v26.16b, v3.16b, v0.16b, v1.16b
	ldr	q1, [sp]
	ldr	q3, [sp, #176]
.LBB2_17:
	ldr	q0, [sp, #256]
	adrp	x9, .LCPI2_5
	eor3	v28.16b, v3.16b, v1.16b, v4.16b
	ldr	q1, [sp, #192]
	ldr	q14, [sp, #432]
	lsl	x8, x4, #3
	subs	x19, x6, #128
	str	q28, [sp, #176]
	mov	v0.s[0], w23
	str	q0, [sp, #256]
	ldr	q0, [x9, :lo12:.LCPI2_5]
	orr	v15.16b, v1.16b, v0.16b
	b.lo	.LBB2_23
	ldur	q0, [x29, #-144]
	adrp	x9, .LCPI2_6
	adrp	x10, .LCPI2_7
	ldp	q19, q16, [x5, #32]
	mov	v7.16b, v15.16b
	adrp	x11, .LCPI2_8
	add	v3.4s, v15.4s, v0.4s
	ldp	q0, q1, [sp, #368]
	ldr	q5, [x9, :lo12:.LCPI2_6]
	ldr	q6, [x10, :lo12:.LCPI2_7]
	str	q26, [sp, #224]
	ldp	q17, q18, [x5]
	ldp	q20, q23, [x29, #-256]
	add	x10, x5, #128
	add	x9, x20, #128
	add	v5.4s, v15.4s, v5.4s
	add	v6.4s, v15.4s, v6.4s
	add	v4.4s, v15.4s, v1.4s
	ldp	q2, q1, [sp, #336]
	add	v0.4s, v15.4s, v0.4s
	add	v1.4s, v15.4s, v1.4s
	add	v2.4s, v15.4s, v2.4s
	//APP
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v9.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v9.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v9.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v9.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v9.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v11.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v11.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v11.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v12.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v12.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v12.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v13.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v29.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v29.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v29.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v29.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v29.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v29.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v30.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v30.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v30.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v30.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v30.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v30.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v31.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v31.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v31.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v31.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v31.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v31.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v8.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v8.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v8.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v8.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v8.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v8.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v8.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v23.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v23.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v23.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v23.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v23.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v20.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v20.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v20.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v21.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v21.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v21.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v21.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	//APP
	aese	v7.16b, v22.16b
	aesmc	v7.16b, v7.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	//NO_APP
	aese	v0.16b, v24.16b
	aese	v7.16b, v24.16b
	aese	v2.16b, v24.16b
	aese	v3.16b, v24.16b
	aese	v4.16b, v24.16b
	aese	v1.16b, v24.16b
	aese	v5.16b, v24.16b
	aese	v6.16b, v24.16b
	eor3	v22.16b, v16.16b, v0.16b, v28.16b
	ldr	q0, [sp, #160]
	eor3	v23.16b, v17.16b, v7.16b, v28.16b
	ldp	q7, q17, [x5, #64]
	eor3	v3.16b, v18.16b, v3.16b, v28.16b
	eor3	v4.16b, v19.16b, v4.16b, v28.16b
	eor3	v26.16b, v17.16b, v2.16b, v28.16b
	ldr	q2, [sp, #16]
	ldp	q18, q19, [x5, #96]
	stp	q23, q3, [x20]
	stp	q4, q22, [x20, #32]
	fmov	x12, d0
	ldr	q0, [sp, #144]
	eor3	v25.16b, v7.16b, v1.16b, v28.16b
	ldr	q1, [x11, :lo12:.LCPI2_8]
	eor3	v27.16b, v18.16b, v5.16b, v28.16b
	eor3	v28.16b, v19.16b, v6.16b, v28.16b
	stp	q25, q26, [x20, #64]
	stp	q27, q28, [x20, #96]
	fmov	x11, d2
	fmov	x13, d0
	dup	v0.2d, x12
	dup	v5.2d, x11
	add	v24.4s, v15.4s, v1.4s
	str	q0, [sp]
	dup	v0.2d, x13
	stp	q5, q0, [sp, #400]
	cmp	x19, #128
	b.lo	.LBB2_22
	adrp	x11, .LCPI2_9
	ldp	q6, q21, [sp, #224]
	ldr	q7, [sp, #208]
	mov	v19.16b, v2.16b
	ldr	q17, [sp, #144]
	ldr	q5, [sp, #32]
	ldr	q14, [sp]
	ldr	q0, [x11, :lo12:.LCPI2_9]
	adrp	x11, .LCPI2_10
	str	q0, [sp, #384]
	ldr	q0, [x11, :lo12:.LCPI2_10]
	adrp	x11, .LCPI2_11
	ldp	q13, q20, [sp, #160]
	ldp	q18, q16, [sp, #48]
	str	q0, [sp, #368]
	ldr	q0, [x11, :lo12:.LCPI2_11]
	adrp	x11, .LCPI2_12
	str	q0, [sp, #352]
	ldr	q0, [x11, :lo12:.LCPI2_12]
	adrp	x11, .LCPI2_13
	str	q0, [sp, #336]
	ldr	q0, [x11, :lo12:.LCPI2_13]
	adrp	x11, .LCPI2_14
	str	q0, [sp, #320]
	ldr	q0, [x11, :lo12:.LCPI2_14]
	adrp	x11, .LCPI2_15
	str	q0, [sp, #304]
	ldr	q0, [x11, :lo12:.LCPI2_15]
	mov	x11, #-4467570830351532032
	stp	q1, q0, [sp, #272]
	ldp	q0, q2, [sp, #112]
	ldp	q12, q1, [sp, #80]
	.p2align	5, , 16
.LBB2_20:
	ldr	q30, [sp, #448]
	ldur	q29, [x29, #-112]
	pmull2	v31.1q, v2.2d, v27.2d
	pmull2	v8.1q, v12.2d, v26.2d
	fmov	d11, x25
	add	x12, x10, #128
	add	x13, x9, #128
	sub	x19, x19, #128
	pmull2	v30.1q, v30.2d, v28.2d
	pmull	v29.1q, v29.1d, v28.1d
	eor3	v30.16b, v31.16b, v30.16b, v8.16b
	pmull2	v31.1q, v7.2d, v28.2d
	fmov	d8, x22
	eor	v29.16b, v31.16b, v29.16b
	ldr	q31, [sp, #432]
	pmull	v8.1q, v8.1d, v27.1d
	pmull2	v31.1q, v31.2d, v27.2d
	pmull	v27.1q, v2.1d, v27.1d
	eor3	v29.16b, v29.16b, v8.16b, v31.16b
	fmov	d31, x21
	pmull2	v8.1q, v5.2d, v26.2d
	pmull	v31.1q, v31.1d, v26.1d
	pmull	v26.1q, v12.1d, v26.1d
	eor3	v29.16b, v29.16b, v31.16b, v8.16b
	fmov	d31, x2
	pmull2	v8.1q, v18.2d, v25.2d
	pmull	v31.1q, v31.1d, v25.1d
	eor3	v29.16b, v29.16b, v31.16b, v8.16b
	ldr	q8, [sp, #400]
	fmov	d31, x1
	pmull	v31.1q, v31.1d, v22.1d
	pmull2	v8.1q, v8.2d, v22.2d
	eor3	v31.16b, v29.16b, v31.16b, v8.16b
	ldur	q8, [x29, #-128]
	fmov	d29, x0
	pmull	v9.1q, v29.1d, v4.1d
	pmull	v28.1q, v8.1d, v28.1d
	pmull2	v8.1q, v16.2d, v4.2d
	eor	v27.16b, v27.16b, v28.16b
	pmull	v28.1q, v0.1d, v25.1d
	pmull2	v25.1q, v0.2d, v25.2d
	eor3	v28.16b, v27.16b, v26.16b, v28.16b
	pmull2	v26.1q, v19.2d, v22.2d
	pmull	v22.1q, v19.1d, v22.1d
	eor3	v10.16b, v30.16b, v25.16b, v26.16b
	ldp	q25, q26, [sp, #368]
	add	v27.4s, v15.4s, v26.4s
	eor	v26.16b, v6.16b, v23.16b
	ldr	q6, [sp, #352]
	pmull	v23.1q, v1.1d, v4.1d
	pmull2	v4.1q, v1.2d, v4.2d
	eor3	v22.16b, v28.16b, v22.16b, v23.16b
	pmull	v23.1q, v13.1d, v3.1d
	pmull	v28.1q, v17.1d, v26.1d
	add	v25.4s, v15.4s, v25.4s
	eor3	v23.16b, v22.16b, v23.16b, v28.16b
	eor3	v28.16b, v31.16b, v9.16b, v8.16b
	pmull2	v31.1q, v14.2d, v3.2d
	pmull	v8.1q, v11.1d, v3.1d
	pmull2	v3.1q, v13.2d, v3.2d
	ldur	q11, [x29, #-192]
	add	v22.4s, v15.4s, v6.4s
	ldr	q6, [sp, #336]
	eor3	v28.16b, v28.16b, v8.16b, v31.16b
	fmov	d31, x24
	eor3	v4.16b, v10.16b, v4.16b, v3.16b
	ldp	q10, q3, [x10]
	pmull	v31.1q, v31.1d, v26.1d
	add	v29.4s, v15.4s, v6.4s
	ldr	q6, [sp, #320]
	add	v30.4s, v15.4s, v6.4s
	ldr	q6, [sp, #416]
	pmull2	v8.1q, v6.2d, v26.2d
	ldr	q6, [sp, #304]
	pmull2	v26.1q, v17.2d, v26.2d
	eor3	v8.16b, v28.16b, v31.16b, v8.16b
	add	v31.4s, v15.4s, v6.4s
	ldr	q6, [sp, #288]
	add	v28.4s, v15.4s, v6.4s
	movi	v6.2d, #0000000000000000
	zip1	v9.2d, v6.2d, v8.2d
	ldur	q6, [x29, #-160]
	mov	v15.16b, v24.16b
	eor	v9.16b, v9.16b, v23.16b
	mov	v23.16b, v24.16b
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	//APP
	aese	v23.16b, v11.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v11.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v11.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v11.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v11.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v11.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v11.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v11.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldr	q6, [sp, #544]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldr	q6, [sp, #528]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldur	q6, [x29, #-176]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldr	q6, [sp, #512]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldr	q6, [sp, #496]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldr	q6, [sp, #480]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldr	q6, [sp, #464]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldur	q6, [x29, #-240]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldur	q6, [x29, #-256]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldur	q6, [x29, #-208]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	ldur	q6, [x29, #-224]
	//APP
	aese	v23.16b, v6.16b
	aesmc	v23.16b, v23.16b
	aese	v27.16b, v6.16b
	aesmc	v27.16b, v27.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v22.16b, v6.16b
	aesmc	v22.16b, v22.16b
	aese	v29.16b, v6.16b
	aesmc	v29.16b, v29.16b
	aese	v30.16b, v6.16b
	aesmc	v30.16b, v30.16b
	aese	v31.16b, v6.16b
	aesmc	v31.16b, v31.16b
	aese	v28.16b, v6.16b
	aesmc	v28.16b, v28.16b
	//NO_APP
	aese	v23.16b, v21.16b
	aese	v27.16b, v21.16b
	aese	v25.16b, v21.16b
	aese	v29.16b, v21.16b
	aese	v28.16b, v21.16b
	aese	v22.16b, v21.16b
	aese	v30.16b, v21.16b
	aese	v31.16b, v21.16b
	eor3	v23.16b, v10.16b, v23.16b, v20.16b
	fmov	d10, x11
	eor3	v3.16b, v3.16b, v27.16b, v20.16b
	pmull	v27.1q, v9.1d, v10.1d
	ext	v9.16b, v9.16b, v9.16b, #8
	eor	v27.16b, v9.16b, v27.16b
	pmull	v9.1q, v27.1d, v10.1d
	ext	v27.16b, v27.16b, v27.16b, #8
	eor3	v26.16b, v4.16b, v26.16b, v9.16b
	ldp	q4, q9, [x10, #32]
	eor3	v22.16b, v9.16b, v22.16b, v20.16b
	eor3	v4.16b, v4.16b, v25.16b, v20.16b
	movi	v25.2d, #0000000000000000
	mov	v25.d[0], v8.d[1]
	eor3	v6.16b, v25.16b, v26.16b, v27.16b
	ldp	q25, q26, [x10, #64]
	eor3	v26.16b, v26.16b, v30.16b, v20.16b
	eor3	v25.16b, v25.16b, v29.16b, v20.16b
	ldp	q27, q29, [x10, #96]
	stp	q23, q3, [x9]
	stp	q4, q22, [x9, #32]
	mov	x10, x12
	stp	q25, q26, [x9, #64]
	eor3	v28.16b, v29.16b, v28.16b, v20.16b
	ldr	q29, [sp, #272]
	eor3	v27.16b, v27.16b, v31.16b, v20.16b
	stp	q27, q28, [x9, #96]
	mov	x9, x13
	add	v24.4s, v24.4s, v29.4s
	cmp	x19, #127
	b.hi	.LBB2_20
	ldp	q13, q9, [x29, #-176]
	ldp	q12, q10, [sp, #528]
	mov	v2.16b, v19.16b
	mov	x9, x13
	mov	x10, x12
	ldr	q14, [sp, #432]
	str	q6, [sp, #224]
	ldp	q30, q29, [sp, #496]
	ldp	q8, q31, [sp, #464]
.LBB2_22:
	fmov	d18, x22
	pmull2	v19.1q, v14.2d, v27.2d
	mov	x11, #-4467570830351532032
	mov	v15.16b, v24.16b
	ldp	q0, q24, [sp, #224]
	mov	x20, x9
	mov	x5, x10
	pmull	v18.1q, v18.1d, v27.1d
	eor	v5.16b, v0.16b, v23.16b
	ldp	q1, q0, [x29, #-128]
	ldr	q23, [sp, #448]
	pmull	v7.1q, v0.1d, v28.1d
	ldr	q0, [sp, #208]
	pmull	v6.1q, v1.1d, v28.1d
	ldr	q1, [sp, #128]
	pmull2	v16.1q, v0.2d, v28.2d
	pmull	v17.1q, v1.1d, v27.1d
	pmull2	v20.1q, v1.2d, v27.2d
	ldr	q1, [sp, #80]
	eor	v7.16b, v16.16b, v7.16b
	pmull2	v16.1q, v23.2d, v28.2d
	ldr	q28, [sp, #176]
	eor3	v7.16b, v7.16b, v18.16b, v19.16b
	ldr	q19, [sp, #32]
	eor	v6.16b, v17.16b, v6.16b
	fmov	d18, x21
	pmull	v18.1q, v18.1d, v26.1d
	pmull	v17.1q, v1.1d, v26.1d
	pmull2	v21.1q, v1.2d, v26.2d
	ldr	q1, [sp, #112]
	pmull2	v19.1q, v19.2d, v26.2d
	eor3	v16.16b, v20.16b, v16.16b, v21.16b
	ldr	q20, [sp, #48]
	eor3	v7.16b, v7.16b, v18.16b, v19.16b
	fmov	d19, x2
	pmull	v18.1q, v1.1d, v25.1d
	pmull2	v21.1q, v1.2d, v25.2d
	ldr	q1, [sp, #400]
	pmull	v19.1q, v19.1d, v25.1d
	pmull2	v20.1q, v20.2d, v25.2d
	mov	v25.16b, v0.16b
	eor3	v6.16b, v6.16b, v17.16b, v18.16b
	fmov	d18, x1
	mov	v0.16b, v2.16b
	pmull	v17.1q, v2.1d, v22.1d
	eor3	v7.16b, v7.16b, v19.16b, v20.16b
	pmull2	v19.1q, v0.2d, v22.2d
	ldr	q0, [sp, #96]
	pmull	v18.1q, v18.1d, v22.1d
	pmull2	v2.1q, v1.2d, v22.2d
	ldr	q1, [sp, #64]
	eor3	v2.16b, v7.16b, v18.16b, v2.16b
	fmov	d18, x0
	eor3	v7.16b, v16.16b, v21.16b, v19.16b
	ldp	q22, q21, [x29, #-224]
	pmull	v16.1q, v0.1d, v4.1d
	pmull	v18.1q, v18.1d, v4.1d
	pmull2	v19.1q, v1.2d, v4.2d
	pmull2	v4.1q, v0.2d, v4.2d
	ldr	q0, [sp, #160]
	ldr	q1, [sp]
	eor3	v6.16b, v6.16b, v17.16b, v16.16b
	fmov	d17, x25
	eor3	v2.16b, v2.16b, v18.16b, v19.16b
	pmull	v17.1q, v17.1d, v3.1d
	pmull	v16.1q, v0.1d, v3.1d
	pmull2	v1.1q, v1.2d, v3.2d
	pmull2	v3.1q, v0.2d, v3.2d
	ldr	q0, [sp, #416]
	eor3	v1.16b, v2.16b, v17.16b, v1.16b
	eor3	v2.16b, v7.16b, v4.16b, v3.16b
	ldr	q7, [sp, #144]
	fmov	d4, x24
	pmull	v4.1q, v4.1d, v5.1d
	pmull2	v0.1q, v0.2d, v5.2d
	pmull	v3.1q, v7.1d, v5.1d
	eor3	v0.16b, v1.16b, v4.16b, v0.16b
	movi	v1.2d, #0000000000000000
	pmull2	v5.1q, v7.2d, v5.2d
	eor3	v3.16b, v6.16b, v16.16b, v3.16b
	zip1	v4.2d, v1.2d, v0.2d
	mov	v1.d[0], v0.d[1]
	ldp	q16, q7, [x29, #-256]
	eor	v0.16b, v4.16b, v3.16b
	fmov	d3, x11
	pmull	v4.1q, v0.1d, v3.1d
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v4.16b
	pmull	v3.1q, v0.1d, v3.1d
	ext	v0.16b, v0.16b, v0.16b, #8
	eor3	v2.16b, v2.16b, v5.16b, v3.16b
	eor3	v26.16b, v1.16b, v2.16b, v0.16b
	b	.LBB2_24
.LBB2_23:
	ldp	q16, q7, [x29, #-256]
	mov	x19, x6
.LBB2_24:
	ldr	q0, [sp, #256]
	fmov	d17, x8
	lsl	x9, x6, #3
	mov	v0.s[1], w15
	str	q0, [sp, #256]
	cmp	x19, #16
	b.lo	.LBB2_27
	mov	x8, #-4467570830351532032
	movi	v0.2d, #0000000000000000
	fmov	d1, x8
	.p2align	5, , 16
.LBB2_26:
	mov	v3.16b, v15.16b
	ldr	q2, [x5], #16
	movi	v6.2d, #0000000000000000
	sub	x19, x19, #16
	aese	v3.16b, v9.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v29.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v30.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v31.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v8.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v24.16b
	eor3	v4.16b, v2.16b, v3.16b, v28.16b
	eor	v2.16b, v2.16b, v3.16b
	str	q4, [x20], #16
	ldur	q4, [x29, #-144]
	eor3	v2.16b, v2.16b, v28.16b, v26.16b
	pmull2	v5.1q, v25.2d, v2.2d
	add	v15.4s, v15.4s, v4.4s
	ldp	q3, q4, [x29, #-128]
	pmull	v4.1q, v4.1d, v2.1d
	eor	v4.16b, v5.16b, v4.16b
	pmull	v3.1q, v3.1d, v2.1d
	pmull2	v2.1q, v23.2d, v2.2d
	zip1	v5.2d, v0.2d, v4.2d
	mov	v6.d[0], v4.d[1]
	eor	v3.16b, v5.16b, v3.16b
	pmull	v4.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v4.16b
	pmull	v4.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v2.16b, v4.16b, v2.16b
	eor3	v26.16b, v2.16b, v6.16b, v3.16b
	cmp	x19, #15
	b.hi	.LBB2_26
.LBB2_27:
	ldr	q0, [sp, #256]
	mov	v17.d[1], x9
	mov	v0.s[2], w28
	str	q0, [sp, #256]
	cbz	x19, .LBB2_29
	mov	w8, #16
	mov	w1, wzr
	mov	x22, x5
	str	q26, [sp, #224]
	str	q15, [sp, #432]
	sub	x21, x8, x19
	sub	x8, x29, #96
	stur	q17, [x29, #-144]
	add	x0, x8, x19
	mov	x2, x21
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldur	q1, [x29, #-160]
	ldr	q2, [sp, #432]
	ldur	q0, [x29, #-96]
	sub	x1, x29, #96
	sub	x22, x29, #96
	mov	x0, x20
	mov	x2, x19
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldur	q1, [x29, #-192]
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [sp, #528]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldur	q1, [x29, #-176]
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
	ldp	q1, q3, [x29, #-256]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldp	q1, q3, [x29, #-224]
	aese	v2.16b, v3.16b
	aesmc	v2.16b, v2.16b
	aese	v2.16b, v1.16b
	aesmc	v2.16b, v2.16b
	ldr	q1, [sp, #240]
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
	ldp	q25, q1, [sp, #208]
	ldp	q2, q0, [x29, #-112]
	mov	x8, #-4467570830351532032
	eor	v0.16b, v0.16b, v1.16b
	ldur	q1, [x29, #-128]
	ldp	q23, q8, [sp, #448]
	ldp	q9, q17, [x29, #-160]
	ldr	q28, [sp, #176]
	ldr	q24, [sp, #240]
	ldp	q22, q21, [x29, #-224]
	ldp	q16, q7, [x29, #-256]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v25.2d, v0.2d
	ldp	q31, q30, [sp, #480]
	ldp	q29, q12, [sp, #512]
	ldr	q10, [sp, #544]
	ldp	q11, q13, [x29, #-192]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	pmull	v1.1q, v1.1d, v0.1d
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	pmull2	v0.1q, v23.2d, v0.2d
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v26.16b, v3.16b, v0.16b, v1.16b
.LBB2_29:
	ldp	q1, q2, [x29, #-128]
	eor	v0.16b, v26.16b, v17.16b
	mov	x8, #-4467570830351532032
	pmull2	v3.1q, v25.2d, v0.2d
	pmull	v2.1q, v2.1d, v0.1d
	eor	v2.16b, v3.16b, v2.16b
	pmull	v1.1q, v1.1d, v0.1d
	movi	v3.2d, #0000000000000000
	pmull2	v0.1q, v23.2d, v0.2d
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	adrp	x8, .LCPI2_16
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	ldr	q4, [sp, #256]
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v0.16b, v4.16b, v2.16b
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldr	q1, [x8, :lo12:.LCPI2_16]
	and	v0.16b, v0.16b, v1.16b
	ldr	q1, [sp, #192]
	aese	v0.16b, v9.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v11.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v10.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v12.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v13.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v29.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v30.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v31.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v8.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v24.16b
	eor3	v0.16b, v28.16b, v0.16b, v1.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	b	.LBB2_10
.Lfunc_end2:
	.size	haberdashery_aes256gcmsiv_neoversev2_decrypt, .Lfunc_end2-haberdashery_aes256gcmsiv_neoversev2_decrypt
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

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

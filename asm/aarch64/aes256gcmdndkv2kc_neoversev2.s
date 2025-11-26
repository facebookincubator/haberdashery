# @generated
# https://github.com/facebookincubator/haberdashery/

	.arch_extension aes
	.arch_extension sha3
	.arch_extension sve


	.section	.text.haberdashery_aes256gcmdndkv2kc_neoversev2_init,"ax",@progbits
	.globl	haberdashery_aes256gcmdndkv2kc_neoversev2_init
	.p2align	4
	.type	haberdashery_aes256gcmdndkv2kc_neoversev2_init,@function
haberdashery_aes256gcmdndkv2kc_neoversev2_init:
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
	.size	haberdashery_aes256gcmdndkv2kc_neoversev2_init, .Lfunc_end0-haberdashery_aes256gcmdndkv2kc_neoversev2_init
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
	sub	sp, sp, #560
	ldr	x8, [x29, #96]
	cmp	x6, x8
	b.ne	.LBB1_22
	mov	x9, #68719411200
	mov	w8, wzr
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB1_40
	mov	x9, #2305843009213693950
	cmp	x4, x9
	b.hi	.LBB1_40
	cmp	x2, #24
	b.ne	.LBB1_40
	ldr	x9, [x29, #112]
	cmp	x9, #48
	b.ne	.LBB1_40
	ldr	q1, [x1]
	adrp	x13, .LCPI1_0
	ldp	q16, q7, [x0, #32]
	mov	x14, #-4467570830351532032
	add	x9, x1, #19
	umov	w12, v1.b[15]
	ldr	q0, [x13, :lo12:.LCPI1_0]
	mov	v1.b[15], wzr
	adrp	x13, .LCPI1_1
	ldp	q18, q17, [x0, #64]
	ldp	q20, q19, [x0, #96]
	ldp	q22, q21, [x0, #128]
	ldp	q24, q23, [x0, #160]
	ldp	q26, q25, [x0, #192]
	ldrb	w10, [x1, #16]
	ldrb	w11, [x1, #17]
	ldrb	w8, [x1, #23]
	ldr	x23, [x29, #104]
	orr	w10, w12, w10, lsl #8
	orr	w10, w10, w11, lsl #16
	ldrb	w11, [x1, #18]
	eor	v3.16b, v1.16b, v0.16b
	ldr	q0, [x13, :lo12:.LCPI1_1]
	adrp	x13, .LCPI1_2
	orr	w10, w10, w11, lsl #24
	eor	v5.16b, v1.16b, v0.16b
	ldr	q0, [x13, :lo12:.LCPI1_2]
	adrp	x13, .LCPI1_3
	eor	v4.16b, v1.16b, v0.16b
	ldr	q0, [x13, :lo12:.LCPI1_3]
	adrp	x13, .LCPI1_4
	ldr	q2, [x13, :lo12:.LCPI1_4]
	eor	v0.16b, v1.16b, v0.16b
	eor	v1.16b, v1.16b, v2.16b
	ldp	q6, q2, [x0]
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v6.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v6.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v6.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v2.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v2.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v2.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v2.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	movi	v2.2d, #0000000000000000
	ext	v6.16b, v2.16b, v2.16b, #4
	aese	v3.16b, v16.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v16.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v16.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v16.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	movi	v16.2d, #0000000000000000
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v7.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v7.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v7.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v18.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v18.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v18.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v18.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v18.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v17.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v17.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v17.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v17.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v20.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v20.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v19.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v19.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v19.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v22.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v22.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v21.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v21.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v21.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v21.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	movi	v21.2d, #0000000000000000
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v24.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v24.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v23.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v23.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v23.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v23.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v26.16b
	aesmc	v3.16b, v3.16b
	aese	v4.16b, v26.16b
	aesmc	v4.16b, v4.16b
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v0.16b, v26.16b
	aesmc	v0.16b, v0.16b
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	aese	v3.16b, v25.16b
	aese	v4.16b, v25.16b
	aese	v5.16b, v25.16b
	aese	v0.16b, v25.16b
	aese	v1.16b, v25.16b
	eor	v25.16b, v4.16b, v3.16b
	eor	v26.16b, v5.16b, v3.16b
	eor	v0.16b, v0.16b, v3.16b
	eor	v1.16b, v1.16b, v3.16b
	mov	w13, v25.s[3]
	ext	v7.16b, v6.16b, v26.16b, #12
	mov	v16.d[1], v26.d[0]
	ror	w13, w13, #8
	eor	v16.16b, v7.16b, v16.16b
	dup	v7.4s, v2.s[0]
	dup	v18.4s, w13
	ext	v17.16b, v7.16b, v26.16b, #4
	aese	v18.16b, v21.16b
	dup	v18.4s, v18.s[0]
	eor3	v16.16b, v16.16b, v17.16b, v18.16b
	movi	v17.4s, #1
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v25.d[0]
	eor3	v27.16b, v26.16b, v16.16b, v17.16b
	ext	v17.16b, v6.16b, v25.16b, #12
	eor3	v5.16b, v5.16b, v3.16b, v16.16b
	dup	v19.4s, v27.s[3]
	eor	v17.16b, v17.16b, v18.16b
	ext	v18.16b, v7.16b, v25.16b, #4
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor3	v17.16b, v17.16b, v18.16b, v19.16b
	ext	v18.16b, v7.16b, v27.16b, #4
	eor3	v28.16b, v4.16b, v3.16b, v17.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[1], v27.d[0]
	ext	v3.16b, v6.16b, v27.16b, #12
	mov	w13, v28.s[3]
	ror	w13, w13, #8
	dup	v19.4s, w13
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor	v4.16b, v4.16b, v19.16b
	ext	v19.16b, v7.16b, v28.16b, #4
	eor3	v3.16b, v4.16b, v3.16b, v18.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v28.d[0]
	eor3	v4.16b, v26.16b, v16.16b, v3.16b
	movi	v16.4s, #3
	eor3	v29.16b, v5.16b, v3.16b, v16.16b
	ext	v16.16b, v6.16b, v28.16b, #12
	dup	v20.4s, v29.s[3]
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v29.d[0]
	ext	v19.16b, v7.16b, v29.16b, #4
	eor3	v30.16b, v25.16b, v17.16b, v16.16b
	ext	v17.16b, v6.16b, v29.16b, #12
	mov	w13, v30.s[3]
	ror	w13, w13, #8
	dup	v20.4s, w13
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v30.d[0]
	ext	v19.16b, v7.16b, v30.16b, #4
	eor3	v3.16b, v5.16b, v3.16b, v17.16b
	movi	v5.4s, #7
	eor3	v31.16b, v4.16b, v17.16b, v5.16b
	ext	v5.16b, v6.16b, v30.16b, #12
	dup	v20.4s, v31.s[3]
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v5.16b, v18.16b, v5.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v31.d[0]
	ext	v19.16b, v7.16b, v31.16b, #4
	eor3	v8.16b, v28.16b, v16.16b, v5.16b
	ext	v16.16b, v6.16b, v31.16b, #12
	mov	w13, v8.s[3]
	ror	w13, w13, #8
	dup	v20.4s, w13
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v8.d[0]
	ext	v19.16b, v7.16b, v8.16b, #4
	eor3	v4.16b, v4.16b, v17.16b, v16.16b
	movi	v17.4s, #15
	eor3	v9.16b, v3.16b, v16.16b, v17.16b
	ext	v17.16b, v6.16b, v8.16b, #12
	dup	v20.4s, v9.s[3]
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v17.16b, v18.16b, v17.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v9.d[0]
	ext	v19.16b, v7.16b, v9.16b, #4
	eor3	v10.16b, v30.16b, v5.16b, v17.16b
	ext	v5.16b, v6.16b, v9.16b, #12
	mov	w13, v10.s[3]
	ror	w13, w13, #8
	dup	v20.4s, w13
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v5.16b, v18.16b, v5.16b, v19.16b
	movi	v18.2d, #0000000000000000
	mov	v18.d[1], v10.d[0]
	ext	v19.16b, v7.16b, v10.16b, #4
	eor3	v3.16b, v3.16b, v16.16b, v5.16b
	movi	v16.4s, #31
	eor3	v11.16b, v4.16b, v5.16b, v16.16b
	ext	v16.16b, v6.16b, v10.16b, #12
	dup	v20.4s, v11.s[3]
	aese	v20.16b, v21.16b
	dup	v20.4s, v20.s[0]
	eor	v18.16b, v18.16b, v20.16b
	eor3	v16.16b, v18.16b, v16.16b, v19.16b
	ext	v18.16b, v7.16b, v11.16b, #4
	eor3	v12.16b, v8.16b, v17.16b, v16.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v11.d[0]
	ext	v16.16b, v6.16b, v11.16b, #12
	mov	w13, v12.s[3]
	ror	w13, w13, #8
	dup	v19.4s, w13
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v16.16b, v17.16b, v16.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v12.d[0]
	ext	v18.16b, v7.16b, v12.16b, #4
	eor3	v4.16b, v4.16b, v5.16b, v16.16b
	movi	v5.4s, #63
	eor3	v13.16b, v3.16b, v16.16b, v5.16b
	ext	v5.16b, v6.16b, v12.16b, #12
	dup	v19.4s, v13.s[3]
	ext	v7.16b, v7.16b, v13.16b, #4
	aese	v19.16b, v21.16b
	dup	v19.4s, v19.s[0]
	eor3	v5.16b, v19.16b, v17.16b, v5.16b
	eor3	v14.16b, v5.16b, v18.16b, v12.16b
	ext	v5.16b, v6.16b, v13.16b, #12
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v13.d[0]
	mov	w13, v14.s[3]
	ror	w13, w13, #8
	dup	v17.4s, w13
	aese	v17.16b, v21.16b
	dup	v17.4s, v17.s[0]
	eor	v6.16b, v6.16b, v17.16b
	eor3	v5.16b, v6.16b, v5.16b, v7.16b
	movi	v6.4s, #127
	eor3	v15.16b, v4.16b, v5.16b, v6.16b
	movi	v4.2d, #0000000000000000
	aese	v4.16b, v26.16b
	aesmc	v4.16b, v4.16b
	eor3	v3.16b, v3.16b, v16.16b, v5.16b
	aese	v4.16b, v25.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v27.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v28.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v29.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v30.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v31.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v8.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v9.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v10.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v11.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v12.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v13.16b
	aesmc	v4.16b, v4.16b
	aese	v4.16b, v14.16b
	eor3	v3.16b, v3.16b, v6.16b, v4.16b
	rev64	v3.16b, v3.16b
	ext	v3.16b, v3.16b, v3.16b, #8
	ushr	v4.2d, v3.2d, #63
	add	v3.2d, v3.2d, v3.2d
	ext	v5.16b, v4.16b, v4.16b, #8
	mov	v4.d[0], v2.d[0]
	shl	v2.2d, v4.2d, #63
	orr	v3.16b, v3.16b, v5.16b
	shl	v6.2d, v4.2d, #62
	shl	v4.2d, v4.2d, #57
	eor	v2.16b, v3.16b, v2.16b
	eor3	v24.16b, v2.16b, v6.16b, v4.16b
	dup	v2.2d, v24.d[0]
	pmull	v5.1q, v24.1d, v24.1d
	pmull2	v7.1q, v24.2d, v24.2d
	fmov	x13, d24
	mov	x24, v24.d[1]
	stur	q24, [x29, #-128]
	pmull2	v3.1q, v2.2d, v24.2d
	pmull2	v4.1q, v24.2d, v2.2d
	dup	v22.2d, x13
	eor	v3.16b, v4.16b, v3.16b
	movi	v4.2d, #0000000000000000
	mov	v4.d[0], v3.d[1]
	zip1	v3.2d, v21.2d, v3.2d
	eor	v5.16b, v3.16b, v5.16b
	fmov	d3, x14
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v3.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v23.16b, v4.16b, v6.16b, v5.16b
	dup	v4.2d, v23.d[0]
	pmull2	v6.1q, v23.2d, v2.2d
	pmull	v7.1q, v23.1d, v24.1d
	pmull2	v16.1q, v23.2d, v24.2d
	pmull	v17.1q, v23.1d, v23.1d
	pmull2	v18.1q, v23.2d, v23.2d
	pmull2	v5.1q, v4.2d, v24.2d
	fmov	x14, d23
	mov	x22, v23.d[1]
	eor	v5.16b, v6.16b, v5.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[0], v5.d[1]
	zip1	v5.2d, v21.2d, v5.2d
	eor	v5.16b, v5.16b, v7.16b
	ext	v7.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v3.1d
	eor	v5.16b, v7.16b, v5.16b
	pmull	v7.1q, v5.1d, v3.1d
	ext	v5.16b, v5.16b, v5.16b, #8
	eor	v7.16b, v16.16b, v7.16b
	eor3	v20.16b, v6.16b, v7.16b, v5.16b
	dup	v5.2d, v20.d[0]
	pmull	v7.1q, v20.1d, v20.1d
	pmull2	v16.1q, v20.2d, v20.2d
	fmov	x15, d20
	mov	x25, v20.d[1]
	pmull2	v6.1q, v5.2d, v20.2d
	pmull2	v5.1q, v20.2d, v5.2d
	eor	v5.16b, v5.16b, v6.16b
	zip1	v6.2d, v21.2d, v5.2d
	eor	v6.16b, v6.16b, v7.16b
	ext	v7.16b, v6.16b, v6.16b, #8
	pmull	v6.1q, v6.1d, v3.1d
	eor	v6.16b, v7.16b, v6.16b
	pmull	v7.1q, v6.1d, v3.1d
	eor	v7.16b, v16.16b, v7.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[0], v5.d[1]
	ext	v5.16b, v6.16b, v6.16b, #8
	pmull2	v6.1q, v4.2d, v23.2d
	pmull2	v4.1q, v23.2d, v4.2d
	eor	v4.16b, v4.16b, v6.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[0], v4.d[1]
	zip1	v4.2d, v21.2d, v4.2d
	eor	v4.16b, v4.16b, v17.16b
	ext	v17.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v3.1d
	eor	v4.16b, v17.16b, v4.16b
	pmull	v17.1q, v4.1d, v3.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v17.16b, v18.16b, v17.16b
	movi	v18.2d, #0000000000000000
	eor3	v21.16b, v6.16b, v17.16b, v4.16b
	movi	v17.2d, #0000000000000000
	dup	v4.2d, v21.d[0]
	pmull2	v2.1q, v21.2d, v2.2d
	pmull	v6.1q, v21.1d, v24.1d
	fmov	x16, d21
	mov	x0, v21.d[1]
	pmull2	v4.1q, v4.2d, v24.2d
	eor	v2.16b, v2.16b, v4.16b
	zip1	v4.2d, v18.2d, v2.2d
	mov	v17.d[0], v2.d[1]
	eor	v4.16b, v4.16b, v6.16b
	ext	v6.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v3.1d
	eor	v4.16b, v6.16b, v4.16b
	pmull	v2.1q, v4.1d, v3.1d
	movi	v3.4s, #1, lsl #24
	ext	v6.16b, v4.16b, v4.16b, #8
	dup	v4.2d, x16
	mov	v3.s[0], w10
	ld1	{ v3.s }[1], [x9]
	stp	q0, q1, [x23, #16]
	dup	v1.2d, x15
	mov	v3.s[2], w8
	str	q3, [sp, #320]
	pmull2	v3.1q, v21.2d, v24.2d
	eor	v2.16b, v3.16b, v2.16b
	eor3	v3.16b, v17.16b, v2.16b, v6.16b
	dup	v17.2d, x14
	eor3	v2.16b, v16.16b, v7.16b, v5.16b
	stp	q3, q2, [sp, #32]
	cbz	x4, .LBB1_20
	subs	x19, x4, #96
	stp	q15, q14, [sp, #80]
	str	q27, [sp, #272]
	str	q29, [sp, #240]
	str	q31, [sp, #208]
	stp	q10, q9, [sp, #160]
	stp	q26, q25, [sp, #288]
	stp	q1, q4, [x29, #-160]
	b.lo	.LBB1_11
	mov	v29.16b, v4.16b
	ldp	q4, q5, [x3, #64]
	ldp	q2, q3, [x3, #32]
	fmov	d19, x22
	mov	v25.16b, v17.16b
	mov	v27.16b, v1.16b
	mov	v15.16b, v22.16b
	mov	v14.16b, v23.16b
	rev64	v5.16b, v5.16b
	rev64	v3.16b, v3.16b
	pmull2	v7.1q, v24.2d, v5.2d
	pmull	v16.1q, v24.1d, v5.1d
	rev64	v4.16b, v4.16b
	pmull2	v6.1q, v22.2d, v5.2d
	rev64	v2.16b, v2.16b
	ldp	q0, q1, [x3], #96
	ldp	q26, q10, [sp, #32]
	rev64	v1.16b, v1.16b
	rev64	v0.16b, v0.16b
	eor	v7.16b, v16.16b, v7.16b
	fmov	d16, x24
	pmull	v18.1q, v23.1d, v4.1d
	pmull	v5.1q, v16.1d, v5.1d
	pmull2	v16.1q, v17.2d, v4.2d
	pmull2	v17.1q, v23.2d, v4.2d
	pmull	v4.1q, v19.1d, v4.1d
	eor	v6.16b, v16.16b, v6.16b
	eor3	v7.16b, v7.16b, v17.16b, v18.16b
	pmull2	v16.1q, v20.2d, v3.2d
	pmull	v17.1q, v20.1d, v3.1d
	eor	v4.16b, v4.16b, v5.16b
	pmull2	v5.1q, v27.2d, v3.2d
	fmov	d18, x25
	mov	v27.16b, v20.16b
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	pmull2	v16.1q, v29.2d, v2.2d
	pmull2	v17.1q, v21.2d, v2.2d
	mov	v29.16b, v21.16b
	pmull	v3.1q, v18.1d, v3.1d
	pmull	v18.1q, v21.1d, v2.1d
	eor3	v5.16b, v6.16b, v5.16b, v16.16b
	fmov	d6, x0
	pmull	v16.1q, v10.1d, v0.1d
	pmull	v2.1q, v6.1d, v2.1d
	eor3	v6.16b, v7.16b, v17.16b, v18.16b
	pmull	v7.1q, v26.1d, v1.1d
	eor3	v2.16b, v4.16b, v3.16b, v2.16b
	pmull2	v4.1q, v26.2d, v1.2d
	dup	v3.2d, v26.d[0]
	eor3	v4.16b, v6.16b, v4.16b, v7.16b
	dup	v6.2d, v10.d[0]
	pmull2	v3.1q, v3.2d, v1.2d
	dup	v1.2d, v1.d[0]
	pmull2	v7.1q, v10.2d, v0.2d
	pmull2	v6.1q, v6.2d, v0.2d
	dup	v0.2d, v0.d[0]
	pmull2	v1.1q, v26.2d, v1.2d
	eor3	v7.16b, v4.16b, v7.16b, v16.16b
	pmull2	v0.1q, v10.2d, v0.2d
	eor3	v6.16b, v5.16b, v3.16b, v6.16b
	eor3	v5.16b, v2.16b, v1.16b, v0.16b
	cmp	x19, #96
	b.lo	.LBB1_10
	ldp	q9, q31, [x29, #-160]
	mov	x12, #-4467570830351532032
	fmov	d2, x24
	fmov	x8, d26
	mov	x9, v26.d[1]
	fmov	d3, x22
	fmov	d4, x25
	fmov	x10, d10
	mov	x11, v10.d[1]
	movi	v0.2d, #0000000000000000
	fmov	d1, x12
	.p2align	5, , 16
.LBB1_9:
	zip1	v22.2d, v0.2d, v7.2d
	ldp	q16, q17, [x3]
	movi	v23.2d, #0000000000000000
	mov	v23.d[0], v7.d[1]
	ldp	q18, q19, [x3, #32]
	sub	x19, x19, #96
	eor	v6.16b, v22.16b, v6.16b
	ldp	q20, q21, [x3, #64]
	add	x3, x3, #96
	pmull	v7.1q, v6.1d, v1.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor	v6.16b, v6.16b, v7.16b
	pmull	v7.1q, v6.1d, v1.1d
	ext	v6.16b, v6.16b, v6.16b, #8
	eor3	v5.16b, v5.16b, v23.16b, v7.16b
	rev64	v7.16b, v16.16b
	rev64	v16.16b, v17.16b
	rev64	v17.16b, v18.16b
	rev64	v18.16b, v19.16b
	rev64	v19.16b, v20.16b
	rev64	v20.16b, v21.16b
	ext	v7.16b, v7.16b, v7.16b, #8
	pmull	v21.1q, v24.1d, v20.1d
	pmull2	v22.1q, v14.2d, v19.2d
	pmull	v23.1q, v14.1d, v19.1d
	eor3	v5.16b, v7.16b, v5.16b, v6.16b
	pmull2	v7.1q, v24.2d, v20.2d
	pmull2	v6.1q, v15.2d, v20.2d
	fmov	d24, x0
	pmull	v20.1q, v2.1d, v20.1d
	eor	v7.16b, v21.16b, v7.16b
	pmull2	v21.1q, v25.2d, v19.2d
	pmull	v19.1q, v3.1d, v19.1d
	eor	v6.16b, v21.16b, v6.16b
	eor3	v7.16b, v7.16b, v22.16b, v23.16b
	pmull2	v21.1q, v27.2d, v18.2d
	pmull	v22.1q, v27.1d, v18.1d
	eor	v19.16b, v19.16b, v20.16b
	pmull2	v20.1q, v9.2d, v18.2d
	pmull	v18.1q, v4.1d, v18.1d
	pmull	v23.1q, v29.1d, v17.1d
	eor3	v7.16b, v7.16b, v21.16b, v22.16b
	pmull2	v21.1q, v31.2d, v17.2d
	pmull2	v22.1q, v29.2d, v17.2d
	pmull	v17.1q, v24.1d, v17.1d
	ldur	q24, [x29, #-128]
	eor3	v6.16b, v6.16b, v20.16b, v21.16b
	eor3	v17.16b, v19.16b, v18.16b, v17.16b
	dup	v18.2d, x8
	fmov	d21, x9
	eor3	v7.16b, v7.16b, v22.16b, v23.16b
	pmull2	v19.1q, v26.2d, v16.2d
	pmull	v20.1q, v26.1d, v16.1d
	eor3	v7.16b, v7.16b, v19.16b, v20.16b
	fmov	d20, x11
	pmull	v19.1q, v10.1d, v5.1d
	pmull2	v18.1q, v18.2d, v16.2d
	pmull	v16.1q, v21.1d, v16.1d
	dup	v21.2d, x10
	pmull	v20.1q, v20.1d, v5.1d
	eor3	v6.16b, v6.16b, v18.16b, v19.16b
	pmull2	v21.1q, v21.2d, v5.2d
	pmull2	v5.1q, v10.2d, v5.2d
	eor3	v7.16b, v7.16b, v20.16b, v21.16b
	eor3	v5.16b, v17.16b, v16.16b, v5.16b
	cmp	x19, #95
	b.hi	.LBB1_9
.LBB1_10:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v7.2d
	mov	x8, #-4467570830351532032
	mov	v0.d[0], v7.d[1]
	mov	v22.16b, v15.16b
	mov	v23.16b, v14.16b
	fmov	d2, x8
	mov	v20.16b, v27.16b
	mov	v21.16b, v29.16b
	mov	v17.16b, v25.16b
	eor	v1.16b, v1.16b, v6.16b
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v5.16b, v0.16b, v2.16b
	eor	v18.16b, v1.16b, v0.16b
	b	.LBB1_12
.LBB1_11:
	mov	x19, x4
.LBB1_12:
	str	q28, [sp, #256]
	str	q30, [sp, #224]
	mov	x26, x4
	str	q8, [sp, #192]
	stp	q12, q11, [sp, #128]
	str	q13, [sp, #112]
	cmp	x19, #16
	b.lo	.LBB1_15
	mov	x8, #-4467570830351532032
	fmov	d0, x24
	movi	v1.2d, #0000000000000000
	fmov	d2, x8
	.p2align	5, , 16
.LBB1_14:
	ldr	q3, [x3], #16
	movi	v7.2d, #0000000000000000
	sub	x19, x19, #16
	rev64	v3.16b, v3.16b
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v3.16b, v3.16b, v18.16b
	pmull	v5.1q, v0.1d, v3.1d
	pmull2	v6.1q, v22.2d, v3.2d
	pmull	v4.1q, v24.1d, v3.1d
	pmull2	v3.1q, v24.2d, v3.2d
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
	eor3	v18.16b, v7.16b, v3.16b, v4.16b
	cmp	x19, #15
	b.hi	.LBB1_14
.LBB1_15:
	cbz	x19, .LBB1_19
	mov	w8, #16
	stur	x0, [x29, #-224]
	str	q18, [sp, #64]
	mov	x21, x23
	mov	x27, x5
	mov	x28, x7
	mov	w1, wzr
	mov	x23, x6
	mov	x20, x3
	sub	x2, x8, x19
	sub	x8, x29, #96
	stur	q17, [x29, #-192]
	add	x0, x8, x19
	stp	q21, q20, [sp]
	stur	q23, [x29, #-208]
	stur	q22, [x29, #-176]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	mov	x6, x23
	cbz	x23, .LBB1_29
	ldur	q24, [x29, #-128]
	ldur	q22, [x29, #-176]
	ldr	q1, [sp, #64]
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.lo	.LBB1_22
	rev64	v0.16b, v0.16b
	fmov	d2, x24
	mov	x8, #-4467570830351532032
	ldp	q26, q25, [sp, #288]
	ldp	q28, q27, [sp, #256]
	mov	x4, x26
	mov	x7, x28
	mov	x5, x27
	mov	x23, x21
	ext	v0.16b, v0.16b, v0.16b, #8
	ldr	q15, [sp, #80]
	ldur	x0, [x29, #-224]
	ldp	q30, q29, [sp, #224]
	ldp	q8, q31, [sp, #192]
	eor	v0.16b, v0.16b, v1.16b
	ldp	q10, q9, [sp, #160]
	ldp	q12, q11, [sp, #128]
	ldp	q14, q13, [sp, #96]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v22.2d, v0.2d
	pmull	v1.1q, v24.1d, v0.1d
	pmull2	v0.1q, v24.2d, v0.2d
	ldp	q23, q17, [x29, #-208]
	ldp	q21, q20, [sp]
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
	eor3	v18.16b, v3.16b, v0.16b, v1.16b
	ldp	q1, q4, [x29, #-160]
	b	.LBB1_23
.LBB1_19:
	ldp	q26, q25, [sp, #288]
	ldp	q28, q27, [sp, #256]
	mov	x4, x26
	ldr	q15, [sp, #80]
	ldp	q30, q29, [sp, #224]
	ldp	q8, q31, [sp, #192]
	ldp	q10, q9, [sp, #160]
	ldp	q12, q11, [sp, #128]
	ldp	q14, q13, [sp, #96]
	ldp	q1, q4, [x29, #-160]
.LBB1_20:
	cbz	x6, .LBB1_39
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.hs	.LBB1_23
.LBB1_22:
	mov	w8, wzr
	b	.LBB1_40
.LBB1_23:
	ldr	q0, [sp, #320]
	adrp	x8, .LCPI1_5
	subs	x19, x6, #96
	ldr	q19, [x8, :lo12:.LCPI1_5]
	rev32	v6.16b, v0.16b
	add	v0.4s, v6.4s, v19.4s
	b.lo	.LBB1_28
	rev32	v7.16b, v0.16b
	adrp	x8, .LCPI1_6
	str	q18, [sp, #64]
	stur	q17, [x29, #-192]
	ldp	q17, q18, [x5]
	adrp	x9, .LCPI1_7
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	stp	q1, q4, [x29, #-160]
	ldr	q1, [x8, :lo12:.LCPI1_6]
	ldr	q2, [x9, :lo12:.LCPI1_7]
	adrp	x8, .LCPI1_8
	stp	q21, q20, [sp]
	ldr	q3, [x8, :lo12:.LCPI1_8]
	ldp	q20, q21, [x5, #32]
	adrp	x9, .LCPI1_9
	adrp	x8, .LCPI1_10
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	ldr	q4, [x9, :lo12:.LCPI1_9]
	stur	q19, [x29, #-208]
	ldp	q19, q16, [x5, #64]
	add	x9, x5, #96
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	ldr	q5, [x8, :lo12:.LCPI1_10]
	adrp	x8, .LCPI1_11
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v14.16b
	eor3	v17.16b, v17.16b, v7.16b, v15.16b
	add	v7.4s, v6.4s, v1.4s
	rev32	v7.16b, v7.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v14.16b
	eor3	v18.16b, v18.16b, v7.16b, v15.16b
	add	v7.4s, v6.4s, v2.4s
	rev32	v7.16b, v7.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	stp	q17, q18, [x7]
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v14.16b
	eor3	v20.16b, v20.16b, v7.16b, v15.16b
	add	v7.4s, v6.4s, v3.4s
	rev32	v7.16b, v7.16b
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v14.16b
	eor3	v21.16b, v21.16b, v7.16b, v15.16b
	add	v7.4s, v6.4s, v4.4s
	rev32	v7.16b, v7.16b
	stp	q20, q21, [x7, #32]
	aese	v7.16b, v26.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v25.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v27.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v28.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v29.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v30.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v31.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v8.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v9.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v10.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v11.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v12.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v13.16b
	aesmc	v7.16b, v7.16b
	aese	v7.16b, v14.16b
	eor3	v7.16b, v19.16b, v7.16b, v15.16b
	ldr	q19, [x8, :lo12:.LCPI1_11]
	add	x8, x7, #96
	add	v0.4s, v6.4s, v19.4s
	add	v6.4s, v6.4s, v5.4s
	rev32	v6.16b, v6.16b
	aese	v6.16b, v26.16b
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
	aese	v6.16b, v14.16b
	eor3	v16.16b, v16.16b, v6.16b, v15.16b
	stp	q7, q16, [x7, #64]
	cmp	x19, #95
	b.ls	.LBB1_30
	stur	q4, [x29, #-224]
	ldp	q6, q4, [sp, #32]
	mov	x14, #-4467570830351532032
	fmov	x11, d4
	stp	q2, q1, [x29, #-256]
	stp	q5, q3, [sp, #336]
	ldr	q5, [sp, #64]
	mov	v1.16b, v23.16b
	ldp	q3, q2, [sp]
	mov	x10, v4.d[1]
	stur	q22, [x29, #-176]
	fmov	x12, d6
	mov	x13, v6.d[1]
	.p2align	5, , 16
.LBB1_26:
	rev64	v22.16b, v17.16b
	rev64	v17.16b, v21.16b
	fmov	d21, x13
	rev64	v19.16b, v18.16b
	rev64	v18.16b, v20.16b
	rev64	v7.16b, v7.16b
	fmov	d23, x0
	rev64	v16.16b, v16.16b
	add	x15, x9, #96
	add	x16, x8, #96
	sub	x19, x19, #96
	ext	v24.16b, v22.16b, v22.16b, #8
	dup	v20.2d, x12
	pmull	v22.1q, v19.1d, v21.1d
	pmull	v23.1q, v18.1d, v23.1d
	pmull2	v20.1q, v19.2d, v20.2d
	eor	v21.16b, v24.16b, v5.16b
	ldur	q5, [x29, #-144]
	pmull2	v24.1q, v21.2d, v4.2d
	eor3	v22.16b, v22.16b, v24.16b, v23.16b
	pmull	v24.1q, v21.1d, v4.1d
	pmull2	v23.1q, v18.2d, v5.2d
	ldur	q5, [x29, #-160]
	eor	v20.16b, v20.16b, v24.16b
	pmull2	v24.1q, v17.2d, v5.2d
	ldur	q5, [x29, #-192]
	eor3	v20.16b, v20.16b, v23.16b, v24.16b
	dup	v23.2d, x11
	fmov	d24, x10
	pmull2	v23.1q, v21.2d, v23.2d
	pmull	v21.1q, v21.1d, v24.1d
	ldur	q24, [x29, #-128]
	eor	v21.16b, v21.16b, v23.16b
	pmull	v23.1q, v19.1d, v6.1d
	pmull2	v19.1q, v19.2d, v6.2d
	eor3	v19.16b, v21.16b, v23.16b, v19.16b
	fmov	d21, x25
	fmov	d23, x22
	pmull	v21.1q, v17.1d, v21.1d
	pmull	v23.1q, v7.1d, v23.1d
	eor3	v21.16b, v22.16b, v21.16b, v23.16b
	pmull2	v22.1q, v7.2d, v5.2d
	ldur	q5, [x29, #-176]
	pmull2	v23.1q, v16.2d, v5.2d
	movi	v5.2d, #0000000000000000
	eor3	v22.16b, v20.16b, v22.16b, v23.16b
	pmull	v20.1q, v18.1d, v3.1d
	pmull2	v18.1q, v18.2d, v3.2d
	eor3	v18.16b, v19.16b, v20.16b, v18.16b
	pmull	v19.1q, v17.1d, v2.1d
	pmull2	v17.1q, v17.2d, v2.2d
	eor3	v17.16b, v18.16b, v19.16b, v17.16b
	pmull	v19.1q, v7.1d, v1.1d
	pmull2	v7.1q, v7.2d, v1.2d
	ldp	q23, q18, [x9]
	eor3	v7.16b, v17.16b, v19.16b, v7.16b
	pmull	v17.1q, v16.1d, v24.1d
	pmull2	v19.1q, v16.2d, v24.2d
	eor3	v7.16b, v7.16b, v17.16b, v19.16b
	fmov	d17, x24
	movi	v19.2d, #0000000000000000
	mov	v19.d[0], v7.d[1]
	zip1	v7.2d, v5.2d, v7.2d
	pmull	v16.1q, v16.1d, v17.1d
	fmov	d17, x14
	eor	v7.16b, v7.16b, v22.16b
	eor3	v16.16b, v21.16b, v16.16b, v19.16b
	ldp	q20, q19, [x9, #32]
	pmull	v21.1q, v7.1d, v17.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor	v7.16b, v7.16b, v21.16b
	ldur	q21, [x29, #-208]
	pmull	v17.1q, v7.1d, v17.1d
	ext	v7.16b, v7.16b, v7.16b, #8
	eor3	v5.16b, v16.16b, v17.16b, v7.16b
	rev32	v17.16b, v0.16b
	ldp	q7, q16, [x9, #64]
	mov	x9, x15
	add	v21.4s, v0.4s, v21.4s
	aese	v17.16b, v26.16b
	aesmc	v17.16b, v17.16b
	rev32	v21.16b, v21.16b
	aese	v17.16b, v25.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v26.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v27.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v25.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v28.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v27.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v29.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v28.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v30.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v29.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v31.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v30.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v8.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v31.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v9.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v8.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v10.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v9.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v11.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v10.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v12.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v11.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v13.16b
	aesmc	v17.16b, v17.16b
	aese	v21.16b, v12.16b
	aesmc	v21.16b, v21.16b
	aese	v17.16b, v14.16b
	aese	v21.16b, v13.16b
	aesmc	v21.16b, v21.16b
	eor3	v17.16b, v23.16b, v17.16b, v15.16b
	aese	v21.16b, v14.16b
	eor3	v18.16b, v18.16b, v21.16b, v15.16b
	ldur	q21, [x29, #-240]
	add	v21.4s, v0.4s, v21.4s
	stp	q17, q18, [x8]
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
	eor3	v20.16b, v20.16b, v21.16b, v15.16b
	ldur	q21, [x29, #-256]
	add	v21.4s, v0.4s, v21.4s
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
	eor3	v21.16b, v19.16b, v21.16b, v15.16b
	ldr	q19, [sp, #352]
	stp	q20, q21, [x8, #32]
	add	v19.4s, v0.4s, v19.4s
	rev32	v19.16b, v19.16b
	aese	v19.16b, v26.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v25.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v27.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v28.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v29.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v30.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v31.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v8.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v9.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v10.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v11.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v12.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v13.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v14.16b
	eor3	v7.16b, v7.16b, v19.16b, v15.16b
	ldur	q19, [x29, #-224]
	add	v19.4s, v0.4s, v19.4s
	rev32	v19.16b, v19.16b
	aese	v19.16b, v26.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v25.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v27.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v28.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v29.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v30.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v31.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v8.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v9.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v10.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v11.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v12.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v13.16b
	aesmc	v19.16b, v19.16b
	aese	v19.16b, v14.16b
	eor3	v16.16b, v16.16b, v19.16b, v15.16b
	ldr	q19, [sp, #336]
	stp	q7, q16, [x8, #64]
	mov	x8, x16
	add	v0.4s, v0.4s, v19.4s
	cmp	x19, #95
	b.hi	.LBB1_26
	ldur	q22, [x29, #-176]
	mov	v23.16b, v1.16b
	str	q5, [sp, #64]
	mov	x8, x16
	mov	x9, x15
	b	.LBB1_31
.LBB1_28:
	mov	x19, x6
	b	.LBB1_32
.LBB1_29:
	ldp	q26, q25, [sp, #288]
	ldp	q28, q27, [sp, #256]
	mov	x4, x26
	mov	x23, x21
	ldur	q24, [x29, #-128]
	ldur	q22, [x29, #-176]
	ldp	q30, q29, [sp, #224]
	ldp	q8, q31, [sp, #192]
	ldp	q10, q9, [sp, #160]
	ldp	q12, q11, [sp, #128]
	ldp	q14, q13, [sp, #96]
	ldp	q1, q15, [sp, #64]
	b	.LBB1_37
.LBB1_30:
	ldr	q1, [sp, #32]
	fmov	x12, d1
	mov	x13, v1.d[1]
	ldr	q1, [sp, #48]
	fmov	x11, d1
	mov	x10, v1.d[1]
.LBB1_31:
	rev64	v6.16b, v16.16b
	rev64	v5.16b, v7.16b
	ldr	q7, [sp, #64]
	rev64	v1.16b, v17.16b
	rev64	v2.16b, v18.16b
	mov	x7, x8
	mov	x5, x9
	rev64	v3.16b, v20.16b
	fmov	d20, x22
	rev64	v4.16b, v21.16b
	pmull2	v16.1q, v24.2d, v6.2d
	pmull	v17.1q, v24.1d, v6.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	pmull2	v18.1q, v23.2d, v5.2d
	pmull	v19.1q, v23.1d, v5.1d
	eor	v16.16b, v17.16b, v16.16b
	fmov	d17, x24
	eor	v1.16b, v1.16b, v7.16b
	pmull2	v7.1q, v22.2d, v6.2d
	eor3	v16.16b, v16.16b, v18.16b, v19.16b
	ldr	q19, [sp, #16]
	pmull	v6.1q, v17.1d, v6.1d
	ldur	q17, [x29, #-192]
	pmull2	v18.1q, v19.2d, v4.2d
	pmull	v19.1q, v19.1d, v4.1d
	pmull2	v17.1q, v17.2d, v5.2d
	pmull	v5.1q, v20.1d, v5.1d
	fmov	d20, x25
	eor3	v16.16b, v16.16b, v18.16b, v19.16b
	ldr	q18, [sp]
	fmov	d19, x0
	eor	v7.16b, v17.16b, v7.16b
	ldur	q17, [x29, #-160]
	pmull2	v17.1q, v17.2d, v4.2d
	pmull	v4.1q, v20.1d, v4.1d
	eor3	v4.16b, v5.16b, v6.16b, v4.16b
	ldur	q5, [x29, #-144]
	pmull2	v6.1q, v18.2d, v3.2d
	pmull	v18.1q, v18.1d, v3.1d
	eor3	v6.16b, v16.16b, v6.16b, v18.16b
	dup	v16.2d, x13
	fmov	d18, x13
	pmull2	v16.1q, v16.2d, v2.2d
	pmull2	v5.1q, v5.2d, v3.2d
	pmull	v3.1q, v19.1d, v3.1d
	ldur	q19, [x29, #-208]
	eor3	v5.16b, v7.16b, v17.16b, v5.16b
	dup	v7.2d, x12
	fmov	d17, x12
	pmull2	v7.1q, v7.2d, v2.2d
	pmull	v17.1q, v17.1d, v2.1d
	pmull	v2.1q, v18.1d, v2.1d
	eor3	v6.16b, v6.16b, v16.16b, v17.16b
	eor3	v2.16b, v4.16b, v3.16b, v2.16b
	fmov	d4, x10
	dup	v16.2d, x11
	fmov	d3, x11
	dup	v17.2d, x10
	mov	x10, #-4467570830351532032
	pmull	v4.1q, v4.1d, v1.1d
	pmull2	v16.1q, v16.2d, v1.2d
	pmull	v3.1q, v3.1d, v1.1d
	pmull2	v1.1q, v17.2d, v1.2d
	eor3	v4.16b, v6.16b, v4.16b, v16.16b
	eor3	v3.16b, v5.16b, v7.16b, v3.16b
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
	eor3	v1.16b, v2.16b, v1.16b, v4.16b
	eor3	v18.16b, v5.16b, v1.16b, v3.16b
.LBB1_32:
	mov	x25, x4
	mov	x26, x6
	cmp	x19, #16
	b.lo	.LBB1_35
	mov	x8, #-4467570830351532032
	fmov	d1, x24
	movi	v2.2d, #0000000000000000
	fmov	d3, x8
	.p2align	5, , 16
.LBB1_34:
	rev32	v5.16b, v0.16b
	ldr	q4, [x5], #16
	movi	v16.2d, #0000000000000000
	add	v0.4s, v0.4s, v19.4s
	sub	x19, x19, #16
	aese	v5.16b, v26.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v25.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v28.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v29.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v30.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v31.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v8.16b
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
	eor3	v4.16b, v4.16b, v5.16b, v15.16b
	str	q4, [x7], #16
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v18.16b
	pmull	v6.1q, v1.1d, v4.1d
	pmull2	v7.1q, v22.2d, v4.2d
	pmull	v5.1q, v24.1d, v4.1d
	pmull2	v4.1q, v24.2d, v4.2d
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
	eor3	v18.16b, v16.16b, v4.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB1_34
.LBB1_35:
	cbz	x19, .LBB1_38
	mov	w8, #16
	mov	w1, wzr
	mov	x21, x7
	mov	x22, x5
	stp	q14, q13, [sp, #96]
	sub	x20, x8, x19
	sub	x8, x29, #96
	stp	q12, q11, [sp, #128]
	add	x0, x8, x19
	mov	x2, x20
	str	q15, [sp, #80]
	stp	q10, q9, [sp, #160]
	stur	q22, [x29, #-176]
	str	q18, [sp, #64]
	stur	q0, [x29, #-144]
	stp	q8, q31, [sp, #192]
	stp	q30, q29, [sp, #224]
	stp	q28, q27, [sp, #256]
	stp	q26, q25, [sp, #288]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x22
	mov	x2, x19
	bl	memcpy
	ldur	q1, [x29, #-144]
	ldp	q3, q2, [sp, #288]
	sub	x1, x29, #96
	sub	x22, x29, #96
	mov	x0, x21
	mov	x2, x19
	rev32	v1.16b, v1.16b
	ldur	q0, [x29, #-96]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #256]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #224]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #192]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #160]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #128]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	ldp	q2, q3, [sp, #96]
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v2.16b
	ldr	q2, [sp, #80]
	eor3	v0.16b, v0.16b, v1.16b, v2.16b
	stur	q0, [x29, #-144]
	stur	q0, [x29, #-96]
	bl	memcpy
	ldur	q0, [x29, #-144]
	add	x0, x22, x19
	mov	w1, wzr
	mov	x2, x20
	stur	q0, [x29, #-112]
	bl	memset
	sub	x0, x29, #96
	sub	x1, x29, #112
	mov	x2, x19
	bl	memcpy
	ldp	q1, q15, [sp, #64]
	ldur	q22, [x29, #-176]
	mov	x6, x26
	mov	x4, x25
	ldur	q24, [x29, #-128]
	ldur	q0, [x29, #-96]
	ldp	q14, q13, [sp, #96]
	ldp	q12, q11, [sp, #128]
	ldp	q10, q9, [sp, #160]
	ldp	q8, q31, [sp, #192]
	ldp	q30, q29, [sp, #224]
	ldp	q28, q27, [sp, #256]
	ldp	q26, q25, [sp, #288]
.LBB1_37:
	rev64	v0.16b, v0.16b
	fmov	d2, x24
	mov	x8, #-4467570830351532032
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v22.2d, v0.2d
	pmull	v1.1q, v24.1d, v0.1d
	pmull2	v0.1q, v24.2d, v0.2d
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
	eor3	v18.16b, v3.16b, v0.16b, v1.16b
	b	.LBB1_39
.LBB1_38:
	mov	x6, x26
	mov	x4, x25
.LBB1_39:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	fmov	d2, x24
	fmov	d0, x8
	mov	x8, #-4467570830351532032
	mov	v0.d[1], x9
	eor	v0.16b, v18.16b, v0.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v22.2d, v0.2d
	pmull	v1.1q, v24.1d, v0.1d
	pmull2	v0.1q, v24.2d, v0.2d
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	mov	w8, #1
	eor	v1.16b, v4.16b, v1.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v4.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v0.16b, v2.16b, v0.16b
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	ldr	q1, [sp, #320]
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	aese	v1.16b, v26.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v25.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v27.16b
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
	aese	v1.16b, v14.16b
	eor3	v0.16b, v1.16b, v0.16b, v15.16b
	str	q0, [x23]
.LBB1_40:
	mov	w0, w8
	add	sp, sp, #560
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_2:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.byte	227
.LCPI2_4:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
.LCPI2_5:
	.word	0
	.word	0
	.word	0
	.word	1
.LCPI2_6:
	.word	0
	.word	0
	.word	0
	.word	2
.LCPI2_7:
	.word	0
	.word	0
	.word	0
	.word	3
.LCPI2_8:
	.word	0
	.word	0
	.word	0
	.word	4
.LCPI2_9:
	.word	0
	.word	0
	.word	0
	.word	5
.LCPI2_10:
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
	sub	sp, sp, #688
	ldr	x8, [x29, #112]
	cmp	x6, x8
	b.ne	.LBB2_23
	mov	x9, #68719411200
	mov	w8, wzr
	movk	x9, #65503
	cmp	x6, x9
	b.hi	.LBB2_24
	mov	x9, #2305843009213693950
	cmp	x4, x9
	b.hi	.LBB2_24
	cmp	x2, #24
	b.ne	.LBB2_24
	ldr	x9, [x29, #96]
	cmp	x9, #48
	b.ne	.LBB2_24
	ldr	q0, [x1]
	adrp	x8, .LCPI2_0
	ldp	q4, q5, [x0, #32]
	mov	v24.16b, v0.16b
	ldr	q1, [x8, :lo12:.LCPI2_0]
	adrp	x8, .LCPI2_3
	ldr	q2, [x8, :lo12:.LCPI2_3]
	adrp	x8, .LCPI2_4
	ldp	q6, q7, [x0, #64]
	ldp	q16, q17, [x0, #96]
	ldp	q18, q19, [x0, #128]
	ldp	q20, q21, [x0, #160]
	ldp	q22, q23, [x0, #192]
	ldp	q27, q28, [x7, #16]
	mov	v24.b[15], wzr
	eor	v25.16b, v24.16b, v2.16b
	ldr	q2, [x8, :lo12:.LCPI2_4]
	eor	v1.16b, v24.16b, v1.16b
	eor	v26.16b, v24.16b, v2.16b
	ldp	q2, q3, [x0]
	aese	v1.16b, v2.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v2.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v2.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v3.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v3.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v3.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v4.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v4.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v4.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v5.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v5.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v6.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v7.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v16.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v16.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v16.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v17.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v17.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v17.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v18.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v18.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v18.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v19.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v19.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v20.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v20.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v21.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v21.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v21.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v22.16b
	aesmc	v25.16b, v25.16b
	aese	v26.16b, v22.16b
	aesmc	v26.16b, v26.16b
	aese	v1.16b, v23.16b
	aese	v25.16b, v23.16b
	aese	v26.16b, v23.16b
	eor3	v25.16b, v25.16b, v27.16b, v1.16b
	eor3	v26.16b, v26.16b, v28.16b, v1.16b
	orr	v25.16b, v26.16b, v25.16b
	mov	x8, v25.d[1]
	fmov	x9, d25
	orr	x8, x9, x8
	cbnz	x8, .LBB2_23
	adrp	x8, .LCPI2_1
	movi	v31.2d, #0000000000000000
	ldrb	w11, [x1, #16]
	ldrb	w10, [x1, #17]
	umov	w12, v0.b[15]
	add	x9, x1, #19
	ldr	q25, [x8, :lo12:.LCPI2_1]
	adrp	x8, .LCPI2_2
	ldr	q26, [x8, :lo12:.LCPI2_2]
	orr	w11, w12, w11, lsl #8
	orr	w10, w11, w10, lsl #16
	ldrb	w11, [x1, #18]
	eor	v25.16b, v24.16b, v25.16b
	eor	v24.16b, v24.16b, v26.16b
	aese	v25.16b, v2.16b
	aesmc	v25.16b, v25.16b
	orr	w10, w10, w11, lsl #24
	aese	v24.16b, v2.16b
	aesmc	v24.16b, v24.16b
	movi	v2.2d, #0000000000000000
	aese	v25.16b, v3.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v3.16b
	aesmc	v24.16b, v24.16b
	ext	v3.16b, v2.16b, v2.16b, #4
	aese	v25.16b, v4.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v4.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v5.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v5.16b
	aesmc	v24.16b, v24.16b
	movi	v5.2d, #0000000000000000
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v6.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v7.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v16.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v16.16b
	aesmc	v24.16b, v24.16b
	movi	v16.2d, #0000000000000000
	aese	v25.16b, v17.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v17.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v18.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v18.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v19.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v19.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v20.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v20.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v21.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v21.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v22.16b
	aesmc	v25.16b, v25.16b
	aese	v24.16b, v22.16b
	aesmc	v24.16b, v24.16b
	aese	v25.16b, v23.16b
	aese	v24.16b, v23.16b
	eor	v11.16b, v25.16b, v1.16b
	eor	v10.16b, v24.16b, v1.16b
	ext	v4.16b, v3.16b, v11.16b, #12
	mov	v5.d[1], v11.d[0]
	mov	w8, v10.s[3]
	mov	v16.d[1], v10.d[0]
	stp	q11, q10, [sp, #112]
	eor	v5.16b, v4.16b, v5.16b
	dup	v4.4s, v2.s[0]
	ror	w8, w8, #8
	dup	v7.4s, w8
	ext	v6.16b, v4.16b, v11.16b, #4
	aese	v7.16b, v31.16b
	dup	v7.4s, v7.s[0]
	eor3	v5.16b, v5.16b, v6.16b, v7.16b
	movi	v7.4s, #1
	eor3	v12.16b, v11.16b, v5.16b, v7.16b
	ext	v7.16b, v3.16b, v10.16b, #12
	eor3	v6.16b, v25.16b, v1.16b, v5.16b
	dup	v17.4s, v12.s[3]
	eor	v7.16b, v7.16b, v16.16b
	ext	v16.16b, v4.16b, v10.16b, #4
	aese	v17.16b, v31.16b
	dup	v17.4s, v17.s[0]
	eor3	v7.16b, v7.16b, v16.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v12.d[0]
	ext	v17.16b, v4.16b, v12.16b, #4
	eor3	v13.16b, v24.16b, v1.16b, v7.16b
	ext	v1.16b, v3.16b, v12.16b, #12
	mov	w8, v13.s[3]
	stp	q13, q12, [sp, #80]
	ror	w8, w8, #8
	dup	v18.4s, w8
	aese	v18.16b, v31.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	ext	v18.16b, v4.16b, v13.16b, #4
	eor3	v1.16b, v16.16b, v1.16b, v17.16b
	movi	v16.4s, #3
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v13.d[0]
	eor3	v14.16b, v6.16b, v1.16b, v16.16b
	ext	v16.16b, v3.16b, v13.16b, #12
	eor3	v5.16b, v11.16b, v5.16b, v1.16b
	dup	v19.4s, v14.s[3]
	str	q14, [sp, #64]
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v16.16b, v17.16b, v16.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v14.d[0]
	ext	v18.16b, v4.16b, v14.16b, #4
	eor3	v15.16b, v10.16b, v7.16b, v16.16b
	ext	v7.16b, v3.16b, v14.16b, #12
	mov	w8, v15.s[3]
	stur	q15, [x29, #-144]
	ror	w8, w8, #8
	dup	v19.4s, w8
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v7.16b, v17.16b, v7.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v15.d[0]
	ext	v18.16b, v4.16b, v15.16b, #4
	eor3	v1.16b, v6.16b, v1.16b, v7.16b
	movi	v6.4s, #7
	eor3	v20.16b, v5.16b, v7.16b, v6.16b
	ext	v6.16b, v3.16b, v15.16b, #12
	dup	v19.4s, v20.s[3]
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v6.16b, v17.16b, v6.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v20.d[0]
	ext	v18.16b, v4.16b, v20.16b, #4
	eor3	v25.16b, v13.16b, v16.16b, v6.16b
	ext	v16.16b, v3.16b, v20.16b, #12
	mov	w8, v25.s[3]
	stp	q25, q20, [sp, #192]
	ror	w8, w8, #8
	dup	v19.4s, w8
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v16.16b, v17.16b, v16.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v25.d[0]
	ext	v18.16b, v4.16b, v25.16b, #4
	eor3	v5.16b, v5.16b, v7.16b, v16.16b
	movi	v7.4s, #15
	eor3	v22.16b, v1.16b, v16.16b, v7.16b
	ext	v7.16b, v3.16b, v25.16b, #12
	dup	v19.4s, v22.s[3]
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v7.16b, v17.16b, v7.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v22.d[0]
	ext	v18.16b, v4.16b, v22.16b, #4
	eor3	v23.16b, v15.16b, v6.16b, v7.16b
	ext	v6.16b, v3.16b, v22.16b, #12
	mov	w8, v23.s[3]
	ror	w8, w8, #8
	dup	v19.4s, w8
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v6.16b, v17.16b, v6.16b, v18.16b
	movi	v17.2d, #0000000000000000
	mov	v17.d[1], v23.d[0]
	ext	v18.16b, v4.16b, v23.16b, #4
	eor3	v1.16b, v1.16b, v16.16b, v6.16b
	movi	v16.4s, #31
	eor3	v24.16b, v5.16b, v6.16b, v16.16b
	ext	v16.16b, v3.16b, v23.16b, #12
	dup	v19.4s, v24.s[3]
	stp	q24, q23, [sp, #32]
	aese	v19.16b, v31.16b
	dup	v19.4s, v19.s[0]
	eor	v17.16b, v17.16b, v19.16b
	eor3	v16.16b, v17.16b, v16.16b, v18.16b
	ext	v17.16b, v4.16b, v24.16b, #4
	eor3	v27.16b, v25.16b, v7.16b, v16.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v24.d[0]
	ext	v7.16b, v3.16b, v24.16b, #12
	mov	w8, v27.s[3]
	ror	w8, w8, #8
	dup	v18.4s, w8
	stp	q27, q22, [sp, #160]
	aese	v18.16b, v31.16b
	dup	v18.4s, v18.s[0]
	eor	v16.16b, v16.16b, v18.16b
	eor3	v7.16b, v16.16b, v7.16b, v17.16b
	movi	v16.2d, #0000000000000000
	mov	v16.d[1], v27.d[0]
	ext	v17.16b, v4.16b, v27.16b, #4
	eor3	v5.16b, v5.16b, v6.16b, v7.16b
	movi	v6.4s, #63
	eor3	v19.16b, v1.16b, v7.16b, v6.16b
	ext	v6.16b, v3.16b, v27.16b, #12
	dup	v18.4s, v19.s[3]
	ext	v3.16b, v3.16b, v19.16b, #12
	ext	v4.16b, v4.16b, v19.16b, #4
	str	q19, [sp, #144]
	aese	v18.16b, v31.16b
	dup	v18.4s, v18.s[0]
	eor3	v6.16b, v18.16b, v16.16b, v6.16b
	eor3	v18.16b, v6.16b, v17.16b, v27.16b
	movi	v6.2d, #0000000000000000
	mov	v6.d[1], v19.d[0]
	mov	w8, v18.s[3]
	stur	q18, [x29, #-128]
	ror	w8, w8, #8
	dup	v16.4s, w8
	mov	x8, #-4467570830351532032
	aese	v16.16b, v31.16b
	dup	v16.4s, v16.s[0]
	eor	v6.16b, v6.16b, v16.16b
	eor3	v3.16b, v6.16b, v3.16b, v4.16b
	movi	v4.4s, #127
	eor3	v1.16b, v1.16b, v7.16b, v3.16b
	eor3	v26.16b, v5.16b, v3.16b, v4.16b
	movi	v3.2d, #0000000000000000
	aese	v3.16b, v11.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v12.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v25.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v23.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v27.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	aese	v3.16b, v18.16b
	eor3	v1.16b, v1.16b, v4.16b, v3.16b
	rev64	v1.16b, v1.16b
	ext	v1.16b, v1.16b, v1.16b, #8
	ushr	v3.2d, v1.2d, #63
	add	v1.2d, v1.2d, v1.2d
	ext	v4.16b, v3.16b, v3.16b, #8
	mov	v3.d[0], v2.d[0]
	shl	v2.2d, v3.2d, #63
	orr	v1.16b, v1.16b, v4.16b
	shl	v5.2d, v3.2d, #62
	shl	v3.2d, v3.2d, #57
	eor	v1.16b, v1.16b, v2.16b
	eor3	v28.16b, v1.16b, v5.16b, v3.16b
	dup	v2.2d, v28.d[0]
	pmull	v4.1q, v28.1d, v28.1d
	pmull2	v6.1q, v28.2d, v28.2d
	fmov	x26, d28
	mov	x23, v28.d[1]
	pmull2	v1.1q, v2.2d, v28.2d
	pmull2	v3.1q, v28.2d, v2.2d
	eor	v1.16b, v3.16b, v1.16b
	movi	v3.2d, #0000000000000000
	mov	v3.d[0], v1.d[1]
	zip1	v1.2d, v31.2d, v1.2d
	eor	v4.16b, v1.16b, v4.16b
	fmov	d1, x8
	ldrb	w8, [x1, #23]
	ext	v5.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v5.16b, v4.16b
	pmull	v5.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v5.16b, v6.16b, v5.16b
	eor3	v29.16b, v3.16b, v5.16b, v4.16b
	dup	v3.2d, v29.d[0]
	pmull2	v5.1q, v29.2d, v2.2d
	pmull	v6.1q, v29.1d, v28.1d
	pmull2	v7.1q, v29.2d, v28.2d
	pmull	v16.1q, v29.1d, v29.1d
	pmull2	v17.1q, v29.2d, v29.2d
	fmov	x25, d29
	pmull2	v4.1q, v3.2d, v28.2d
	mov	x14, v29.d[1]
	eor	v4.16b, v5.16b, v4.16b
	movi	v5.2d, #0000000000000000
	mov	v5.d[0], v4.d[1]
	zip1	v4.2d, v31.2d, v4.2d
	eor	v4.16b, v4.16b, v6.16b
	ext	v6.16b, v4.16b, v4.16b, #8
	pmull	v4.1q, v4.1d, v1.1d
	eor	v4.16b, v6.16b, v4.16b
	pmull	v6.1q, v4.1d, v1.1d
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v6.16b, v7.16b, v6.16b
	eor3	v8.16b, v5.16b, v6.16b, v4.16b
	dup	v4.2d, v8.d[0]
	pmull	v6.1q, v8.1d, v8.1d
	pmull2	v7.1q, v8.2d, v8.2d
	fmov	x16, d8
	mov	x15, v8.d[1]
	pmull2	v5.1q, v4.2d, v8.2d
	pmull2	v4.1q, v8.2d, v4.2d
	eor	v4.16b, v4.16b, v5.16b
	zip1	v5.2d, v31.2d, v4.2d
	eor	v5.16b, v5.16b, v6.16b
	ext	v6.16b, v5.16b, v5.16b, #8
	pmull	v5.1q, v5.1d, v1.1d
	eor	v5.16b, v6.16b, v5.16b
	pmull	v6.1q, v5.1d, v1.1d
	eor	v6.16b, v7.16b, v6.16b
	movi	v7.2d, #0000000000000000
	mov	v7.d[0], v4.d[1]
	ext	v4.16b, v5.16b, v5.16b, #8
	pmull2	v5.1q, v3.2d, v29.2d
	pmull2	v3.1q, v29.2d, v3.2d
	eor	v3.16b, v3.16b, v5.16b
	movi	v5.2d, #0000000000000000
	eor3	v9.16b, v7.16b, v6.16b, v4.16b
	mov	v5.d[0], v3.d[1]
	zip1	v3.2d, v31.2d, v3.2d
	eor	v3.16b, v3.16b, v16.16b
	ext	v16.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v16.16b, v3.16b
	pmull	v16.1q, v3.1d, v1.1d
	ext	v3.16b, v3.16b, v3.16b, #8
	eor	v16.16b, v17.16b, v16.16b
	eor3	v30.16b, v5.16b, v16.16b, v3.16b
	movi	v16.2d, #0000000000000000
	dup	v3.2d, v30.d[0]
	pmull2	v2.1q, v30.2d, v2.2d
	pmull	v5.1q, v30.1d, v28.1d
	fmov	x17, d30
	mov	x28, v30.d[1]
	pmull2	v3.1q, v3.2d, v28.2d
	eor	v2.16b, v2.16b, v3.16b
	movi	v3.2d, #0000000000000000
	stur	q3, [x29, #-256]
	zip1	v3.2d, v31.2d, v2.2d
	mov	v16.d[0], v2.d[1]
	pmull2	v2.1q, v30.2d, v28.2d
	eor	v3.16b, v3.16b, v5.16b
	ext	v5.16b, v3.16b, v3.16b, #8
	pmull	v3.1q, v3.1d, v1.1d
	eor	v3.16b, v5.16b, v3.16b
	pmull	v1.1q, v3.1d, v1.1d
	ext	v5.16b, v3.16b, v3.16b, #8
	eor	v1.16b, v2.16b, v1.16b
	eor3	v31.16b, v16.16b, v1.16b, v5.16b
	movi	v5.4s, #1, lsl #24
	mov	v5.s[0], w10
	ld1	{ v5.s }[1], [x9]
	mov	v5.s[2], w8
	stp	q5, q26, [sp]
	cbz	x4, .LBB2_21
	subs	x19, x4, #96
	movi	v6.2d, #0000000000000000
	b.lo	.LBB2_12
	ldp	q0, q1, [x3]
	ldp	q4, q5, [x3, #64]
	fmov	d21, x14
	rev64	v7.16b, v1.16b
	rev64	v1.16b, v5.16b
	ldp	q2, q3, [x3, #32]
	rev64	v3.16b, v3.16b
	add	x3, x3, #96
	pmull2	v5.1q, v28.2d, v1.2d
	pmull	v17.1q, v28.1d, v1.1d
	rev64	v6.16b, v0.16b
	dup	v0.2d, x26
	rev64	v16.16b, v2.16b
	rev64	v2.16b, v4.16b
	eor	v5.16b, v17.16b, v5.16b
	fmov	d17, x23
	pmull2	v19.1q, v29.2d, v2.2d
	pmull	v20.1q, v29.1d, v2.1d
	pmull	v22.1q, v30.1d, v16.1d
	pmull2	v4.1q, v0.2d, v1.2d
	eor3	v5.16b, v5.16b, v19.16b, v20.16b
	pmull2	v19.1q, v8.2d, v3.2d
	pmull	v20.1q, v8.1d, v3.1d
	pmull	v17.1q, v17.1d, v1.1d
	dup	v1.2d, x25
	eor3	v5.16b, v5.16b, v19.16b, v20.16b
	pmull2	v20.1q, v30.2d, v16.2d
	pmull2	v18.1q, v1.2d, v2.2d
	pmull	v2.1q, v21.1d, v2.1d
	fmov	d21, x15
	eor3	v5.16b, v5.16b, v20.16b, v22.16b
	pmull	v20.1q, v9.1d, v6.1d
	eor	v17.16b, v2.16b, v17.16b
	dup	v2.2d, x16
	eor	v4.16b, v18.16b, v4.16b
	pmull	v21.1q, v21.1d, v3.1d
	pmull2	v18.1q, v2.2d, v3.2d
	dup	v3.2d, x17
	pmull2	v19.1q, v3.2d, v16.2d
	eor3	v4.16b, v4.16b, v18.16b, v19.16b
	fmov	d18, x28
	pmull	v19.1q, v31.1d, v7.1d
	pmull	v16.1q, v18.1d, v16.1d
	pmull2	v18.1q, v31.2d, v7.2d
	eor3	v16.16b, v17.16b, v21.16b, v16.16b
	dup	v17.2d, v31.d[0]
	eor3	v5.16b, v5.16b, v18.16b, v19.16b
	dup	v18.2d, v9.d[0]
	pmull2	v19.1q, v9.2d, v6.2d
	pmull2	v17.1q, v17.2d, v7.2d
	dup	v7.2d, v7.d[0]
	pmull2	v18.1q, v18.2d, v6.2d
	dup	v6.2d, v6.d[0]
	eor3	v19.16b, v5.16b, v19.16b, v20.16b
	pmull2	v7.1q, v31.2d, v7.2d
	eor3	v18.16b, v4.16b, v17.16b, v18.16b
	pmull2	v4.1q, v9.2d, v6.2d
	eor3	v17.16b, v16.16b, v7.16b, v4.16b
	cmp	x19, #96
	b.lo	.LBB2_11
	mov	x12, #-4467570830351532032
	fmov	d6, x23
	fmov	x8, d31
	mov	x9, v31.d[1]
	fmov	d7, x14
	fmov	d16, x15
	fmov	x10, d9
	mov	x11, v9.d[1]
	fmov	d5, x12
	.p2align	5, , 16
.LBB2_10:
	movi	v4.2d, #0000000000000000
	zip1	v26.2d, v4.2d, v19.2d
	ldp	q20, q21, [x3]
	movi	v27.2d, #0000000000000000
	mov	v27.d[0], v19.d[1]
	ldp	q22, q23, [x3, #32]
	mov	v4.16b, v9.16b
	mov	v9.16b, v31.16b
	mov	v31.16b, v30.16b
	sub	x19, x19, #96
	eor	v18.16b, v26.16b, v18.16b
	pmull	v19.1q, v18.1d, v5.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	ldp	q24, q25, [x3, #64]
	add	x3, x3, #96
	eor	v18.16b, v18.16b, v19.16b
	pmull	v19.1q, v18.1d, v5.1d
	ext	v18.16b, v18.16b, v18.16b, #8
	eor3	v17.16b, v17.16b, v27.16b, v19.16b
	rev64	v19.16b, v20.16b
	rev64	v20.16b, v21.16b
	rev64	v21.16b, v22.16b
	rev64	v22.16b, v23.16b
	rev64	v23.16b, v24.16b
	rev64	v24.16b, v25.16b
	ext	v19.16b, v19.16b, v19.16b, #8
	pmull	v25.1q, v28.1d, v24.1d
	pmull2	v26.1q, v29.2d, v23.2d
	pmull	v27.1q, v29.1d, v23.1d
	eor3	v17.16b, v19.16b, v17.16b, v18.16b
	pmull2	v19.1q, v28.2d, v24.2d
	pmull2	v18.1q, v0.2d, v24.2d
	pmull	v24.1q, v6.1d, v24.1d
	eor	v19.16b, v25.16b, v19.16b
	pmull2	v25.1q, v1.2d, v23.2d
	pmull	v23.1q, v7.1d, v23.1d
	eor	v18.16b, v25.16b, v18.16b
	eor3	v19.16b, v19.16b, v26.16b, v27.16b
	pmull2	v25.1q, v8.2d, v22.2d
	pmull	v26.1q, v8.1d, v22.1d
	pmull	v27.1q, v30.1d, v21.1d
	eor	v23.16b, v23.16b, v24.16b
	pmull2	v24.1q, v2.2d, v22.2d
	pmull	v22.1q, v16.1d, v22.1d
	eor3	v19.16b, v19.16b, v25.16b, v26.16b
	pmull2	v26.1q, v30.2d, v21.2d
	mov	v30.16b, v8.16b
	mov	v8.16b, v29.16b
	mov	v29.16b, v28.16b
	fmov	d28, x28
	pmull2	v25.1q, v3.2d, v21.2d
	eor3	v18.16b, v18.16b, v24.16b, v25.16b
	fmov	d25, x9
	eor3	v19.16b, v19.16b, v26.16b, v27.16b
	pmull	v21.1q, v28.1d, v21.1d
	mov	v28.16b, v29.16b
	mov	v29.16b, v8.16b
	mov	v8.16b, v30.16b
	mov	v30.16b, v31.16b
	mov	v31.16b, v9.16b
	mov	v9.16b, v4.16b
	eor3	v21.16b, v23.16b, v22.16b, v21.16b
	dup	v22.2d, x8
	pmull2	v23.1q, v31.2d, v20.2d
	pmull	v24.1q, v31.1d, v20.1d
	eor3	v19.16b, v19.16b, v23.16b, v24.16b
	fmov	d24, x11
	pmull	v23.1q, v9.1d, v17.1d
	pmull2	v22.1q, v22.2d, v20.2d
	pmull	v20.1q, v25.1d, v20.1d
	dup	v25.2d, x10
	pmull	v24.1q, v24.1d, v17.1d
	eor3	v18.16b, v18.16b, v22.16b, v23.16b
	pmull2	v25.1q, v25.2d, v17.2d
	pmull2	v17.1q, v4.2d, v17.2d
	eor3	v19.16b, v19.16b, v24.16b, v25.16b
	eor3	v17.16b, v21.16b, v20.16b, v17.16b
	cmp	x19, #95
	b.hi	.LBB2_10
.LBB2_11:
	movi	v0.2d, #0000000000000000
	zip1	v1.2d, v0.2d, v19.2d
	mov	x8, #-4467570830351532032
	mov	v0.d[0], v19.d[1]
	ldp	q25, q20, [sp, #192]
	ldp	q27, q22, [sp, #160]
	fmov	d2, x8
	ldr	q19, [sp, #144]
	eor	v1.16b, v1.16b, v18.16b
	ldur	q18, [x29, #-128]
	pmull	v3.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v3.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	eor3	v0.16b, v17.16b, v0.16b, v2.16b
	eor	v6.16b, v1.16b, v0.16b
	b	.LBB2_13
.LBB2_12:
	mov	x19, x4
.LBB2_13:
	mov	x22, x4
	cmp	x19, #16
	b.lo	.LBB2_16
	mov	x8, #-4467570830351532032
	fmov	d0, x23
	movi	v2.2d, #0000000000000000
	dup	v1.2d, x26
	fmov	d3, x8
	.p2align	5, , 16
.LBB2_15:
	ldr	q4, [x3], #16
	movi	v16.2d, #0000000000000000
	sub	x19, x19, #16
	rev64	v4.16b, v4.16b
	ext	v4.16b, v4.16b, v4.16b, #8
	eor	v4.16b, v4.16b, v6.16b
	pmull	v6.1q, v0.1d, v4.1d
	pmull2	v7.1q, v1.2d, v4.2d
	pmull	v5.1q, v28.1d, v4.1d
	pmull2	v4.1q, v28.2d, v4.2d
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
	eor3	v6.16b, v16.16b, v4.16b, v5.16b
	cmp	x19, #15
	b.hi	.LBB2_15
.LBB2_16:
	stur	q6, [x29, #-256]
	cbz	x19, .LBB2_20
	mov	w8, #16
	str	x17, [sp, #432]
	str	x16, [sp, #448]
	stp	q9, q31, [x29, #-240]
	mov	x24, x26
	mov	x27, x5
	mov	x21, x7
	mov	w1, wzr
	mov	x26, x6
	mov	x20, x3
	sub	x2, x8, x19
	sub	x8, x29, #96
	str	x15, [sp, #464]
	add	x0, x8, x19
	str	x14, [sp, #480]
	stp	q30, q8, [x29, #-208]
	stp	q29, q28, [x29, #-176]
	bl	memset
	sub	x0, x29, #96
	mov	x1, x20
	mov	x2, x19
	bl	memcpy
	ldur	q0, [x29, #-96]
	mov	x6, x26
	cbz	x26, .LBB2_36
	ldur	q28, [x29, #-160]
	ldr	q5, [sp]
	ldur	q1, [x29, #-256]
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.lo	.LBB2_23
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	mov	x8, #-4467570830351532032
	ldp	q11, q10, [sp, #112]
	ldp	q13, q12, [sp, #80]
	dup	v3.2d, x24
	ldp	q23, q14, [sp, #48]
	ldp	q15, q18, [x29, #-144]
	mov	x7, x21
	mov	x26, x24
	mov	x4, x22
	mov	x5, x27
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q25, q20, [sp, #192]
	eor	v0.16b, v0.16b, v1.16b
	ldp	q27, q22, [sp, #160]
	ldp	q26, q24, [sp, #16]
	ldr	q19, [sp, #144]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v28.1d, v0.1d
	pmull2	v0.1q, v28.2d, v0.2d
	ldp	q8, q29, [x29, #-192]
	ldp	q31, q30, [x29, #-224]
	ldur	q9, [x29, #-240]
	ldr	x14, [sp, #480]
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	ldr	x15, [sp, #464]
	ldr	x16, [sp, #448]
	ldr	x17, [sp, #432]
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
	eor3	v16.16b, v3.16b, v0.16b, v1.16b
	b	.LBB2_25
.LBB2_20:
	ldp	q11, q10, [sp, #112]
	ldp	q13, q12, [sp, #80]
	mov	x4, x22
	ldur	q15, [x29, #-144]
	ldr	q5, [sp]
	ldp	q23, q14, [sp, #48]
	ldp	q26, q24, [sp, #16]
.LBB2_21:
	cbz	x6, .LBB2_29
	ldur	q16, [x29, #-256]
	mov	x8, #-68719476736
	movk	x8, #32
	add	x9, x6, x8
	orr	x8, x8, #0x1
	cmp	x9, x8
	b.hs	.LBB2_25
.LBB2_23:
	mov	w8, wzr
.LBB2_24:
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
.LBB2_25:
	.cfi_restore_state
	adrp	x8, .LCPI2_5
	ldr	x19, [x29, #104]
	rev32	v1.16b, v5.16b
	stur	q28, [x29, #-160]
	ldr	q0, [x8, :lo12:.LCPI2_5]
	add	v21.4s, v1.4s, v0.4s
	cmp	x6, #96
	b.lo	.LBB2_30
	adrp	x12, .LCPI2_6
	fmov	x8, d9
	mov	v7.16b, v25.16b
	str	x28, [sp, #328]
	str	x15, [sp, #296]
	stp	x23, x14, [sp, #256]
	fmov	x10, d31
	mov	x20, x6
	ldr	q1, [x12, :lo12:.LCPI2_6]
	adrp	x12, .LCPI2_7
	stp	q0, q9, [x29, #-256]
	mov	v0.16b, v19.16b
	mov	v19.16b, v23.16b
	str	q1, [sp, #480]
	ldr	q1, [x12, :lo12:.LCPI2_7]
	adrp	x12, .LCPI2_8
	stp	q31, q30, [x29, #-224]
	ldp	q23, q17, [x29, #-240]
	mov	x9, v9.d[1]
	mov	x11, v31.d[1]
	str	x9, [sp, #392]
	str	x11, [sp, #360]
	stp	q8, q29, [x29, #-192]
	str	q1, [sp, #464]
	ldr	q1, [x12, :lo12:.LCPI2_8]
	adrp	x12, .LCPI2_9
	ldr	q2, [x12, :lo12:.LCPI2_9]
	adrp	x12, .LCPI2_10
	str	q1, [sp, #448]
	dup	v1.2d, x8
	mov	x8, #-4467570830351532032
	str	x8, [sp, #248]
	stp	q1, q2, [sp, #416]
	ldr	q1, [x12, :lo12:.LCPI2_10]
	str	q1, [sp, #400]
	dup	v1.2d, x10
	str	q1, [sp, #368]
	dup	v1.2d, x17
	str	q1, [sp, #336]
	dup	v1.2d, x16
	str	q1, [sp, #304]
	dup	v1.2d, x25
	str	q1, [sp, #272]
	dup	v1.2d, x26
	str	q1, [sp, #224]
	.p2align	5, , 16
.LBB2_27:
	ldp	q9, q8, [x5]
	ldr	q2, [sp, #416]
	mov	v18.16b, v14.16b
	mov	v4.16b, v10.16b
	mov	v6.16b, v12.16b
	mov	v5.16b, v11.16b
	add	x8, x5, #96
	add	x9, x19, #96
	sub	x20, x20, #96
	rev64	v15.16b, v8.16b
	ldp	q31, q30, [x5, #32]
	ldr	q3, [sp, #336]
	rev64	v10.16b, v30.16b
	ldp	q29, q28, [x5, #64]
	rev64	v11.16b, v28.16b
	mov	x5, x8
	rev64	v1.16b, v9.16b
	rev64	v25.16b, v31.16b
	rev64	v12.16b, v29.16b
	ext	v1.16b, v1.16b, v1.16b, #8
	eor	v1.16b, v1.16b, v16.16b
	mov	v16.16b, v13.16b
	pmull2	v14.1q, v1.2d, v2.2d
	ldr	q2, [sp, #368]
	pmull	v13.1q, v1.1d, v23.1d
	pmull2	v2.1q, v15.2d, v2.2d
	eor	v2.16b, v2.16b, v13.16b
	pmull2	v13.1q, v25.2d, v3.2d
	ldr	q3, [sp, #304]
	pmull2	v3.1q, v10.2d, v3.2d
	eor3	v2.16b, v2.16b, v13.16b, v3.16b
	ldr	q3, [sp, #272]
	ldr	q13, [sp, #224]
	pmull2	v3.1q, v12.2d, v3.2d
	pmull2	v13.1q, v11.2d, v13.2d
	eor3	v13.16b, v2.16b, v3.16b, v13.16b
	ldr	d2, [sp, #392]
	pmull	v3.1q, v15.1d, v17.1d
	pmull	v2.1q, v1.1d, v2.1d
	pmull2	v1.1q, v1.2d, v23.2d
	eor	v2.16b, v2.16b, v14.16b
	pmull2	v14.1q, v15.2d, v17.2d
	eor3	v2.16b, v2.16b, v3.16b, v14.16b
	ldur	q14, [x29, #-208]
	pmull	v3.1q, v25.1d, v14.1d
	pmull2	v14.1q, v25.2d, v14.2d
	eor3	v2.16b, v2.16b, v3.16b, v14.16b
	ldur	q14, [x29, #-192]
	pmull	v3.1q, v10.1d, v14.1d
	pmull2	v14.1q, v10.2d, v14.2d
	eor3	v2.16b, v2.16b, v3.16b, v14.16b
	ldur	q14, [x29, #-176]
	pmull	v3.1q, v12.1d, v14.1d
	pmull2	v14.1q, v12.2d, v14.2d
	eor3	v2.16b, v2.16b, v3.16b, v14.16b
	ldur	q14, [x29, #-160]
	pmull	v3.1q, v11.1d, v14.1d
	pmull2	v14.1q, v11.2d, v14.2d
	eor3	v14.16b, v2.16b, v3.16b, v14.16b
	ldr	d2, [sp, #360]
	ldr	d3, [sp, #264]
	pmull	v15.1q, v15.1d, v2.1d
	ldr	d2, [sp, #328]
	pmull	v3.1q, v12.1d, v3.1d
	mov	v12.16b, v6.16b
	pmull	v25.1q, v25.1d, v2.1d
	ldr	d2, [sp, #296]
	eor3	v1.16b, v15.16b, v1.16b, v25.16b
	pmull	v2.1q, v10.1d, v2.1d
	mov	v10.16b, v4.16b
	eor3	v1.16b, v1.16b, v2.16b, v3.16b
	ldp	d4, d3, [sp, #248]
	movi	v2.2d, #0000000000000000
	mov	v2.d[0], v14.d[1]
	pmull	v3.1q, v11.1d, v3.1d
	mov	v11.16b, v5.16b
	eor3	v1.16b, v1.16b, v3.16b, v2.16b
	movi	v2.2d, #0000000000000000
	zip1	v2.2d, v2.2d, v14.2d
	mov	v14.16b, v18.16b
	ldp	q15, q18, [x29, #-144]
	eor	v2.16b, v2.16b, v13.16b
	mov	v13.16b, v16.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor	v2.16b, v2.16b, v3.16b
	pmull	v3.1q, v2.1d, v4.1d
	ext	v2.16b, v2.16b, v2.16b, #8
	eor3	v16.16b, v1.16b, v3.16b, v2.16b
	rev32	v1.16b, v21.16b
	ldr	q2, [sp, #464]
	ldp	q4, q3, [sp, #432]
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	add	v2.4s, v21.4s, v2.4s
	add	v3.4s, v21.4s, v3.4s
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	rev32	v2.16b, v2.16b
	rev32	v3.16b, v3.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v5.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v5.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v10.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v10.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v6.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v6.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v13.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v13.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v14.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v14.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v15.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v15.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v20.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v20.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v7.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v7.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v2.16b, v22.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v22.16b
	aesmc	v3.16b, v3.16b
	aese	v1.16b, v18.16b
	aese	v2.16b, v19.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v19.16b
	aesmc	v3.16b, v3.16b
	eor3	v9.16b, v26.16b, v1.16b, v9.16b
	ldur	q1, [x29, #-256]
	aese	v2.16b, v24.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v24.16b
	aesmc	v3.16b, v3.16b
	aese	v2.16b, v27.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v27.16b
	aesmc	v3.16b, v3.16b
	str	q9, [x19]
	aese	v2.16b, v0.16b
	aesmc	v2.16b, v2.16b
	aese	v3.16b, v0.16b
	aesmc	v3.16b, v3.16b
	add	v1.4s, v21.4s, v1.4s
	aese	v2.16b, v18.16b
	aese	v3.16b, v18.16b
	rev32	v1.16b, v1.16b
	eor3	v2.16b, v26.16b, v2.16b, v30.16b
	eor3	v3.16b, v26.16b, v3.16b, v29.16b
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	aese	v1.16b, v18.16b
	eor3	v25.16b, v26.16b, v1.16b, v8.16b
	ldr	q1, [sp, #480]
	str	q25, [x19, #16]
	add	v25.4s, v21.4s, v4.4s
	rev32	v25.16b, v25.16b
	add	v1.4s, v21.4s, v1.4s
	aese	v25.16b, v5.16b
	aesmc	v25.16b, v25.16b
	rev32	v1.16b, v1.16b
	aese	v25.16b, v10.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v5.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v6.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v10.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v13.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v6.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v14.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v13.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v15.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v14.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v20.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v15.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v7.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v20.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v22.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v7.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v19.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v22.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v24.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v19.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v27.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v24.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v0.16b
	aesmc	v25.16b, v25.16b
	aese	v1.16b, v27.16b
	aesmc	v1.16b, v1.16b
	aese	v25.16b, v18.16b
	aese	v1.16b, v0.16b
	aesmc	v1.16b, v1.16b
	eor3	v25.16b, v26.16b, v25.16b, v28.16b
	aese	v1.16b, v18.16b
	stp	q3, q25, [x19, #64]
	eor3	v1.16b, v26.16b, v1.16b, v31.16b
	stp	q1, q2, [x19, #32]
	ldr	q1, [sp, #400]
	mov	x19, x9
	add	v21.4s, v21.4s, v1.4s
	cmp	x20, #95
	b.hi	.LBB2_27
	mov	v23.16b, v19.16b
	mov	v19.16b, v0.16b
	ldur	q28, [x29, #-160]
	ldur	q0, [x29, #-256]
	mov	v25.16b, v7.16b
	mov	x19, x9
	mov	x5, x8
	b	.LBB2_31
.LBB2_29:
	ldur	q1, [x29, #-256]
	ldr	q6, [x7]
	b	.LBB2_42
.LBB2_30:
	mov	x20, x6
.LBB2_31:
	cmp	x20, #16
	b.lo	.LBB2_34
	mov	x8, #-4467570830351532032
	fmov	d1, x23
	movi	v3.2d, #0000000000000000
	dup	v2.2d, x26
	fmov	d4, x8
	.p2align	5, , 16
.LBB2_33:
	rev32	v6.16b, v21.16b
	ldr	q5, [x5], #16
	movi	v17.2d, #0000000000000000
	add	v21.4s, v21.4s, v0.4s
	sub	x20, x20, #16
	aese	v6.16b, v11.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v10.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v12.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v13.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v14.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v15.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v20.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v25.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v22.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v23.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v24.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v27.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v19.16b
	aesmc	v6.16b, v6.16b
	aese	v6.16b, v18.16b
	eor3	v6.16b, v26.16b, v6.16b, v5.16b
	rev64	v5.16b, v5.16b
	ext	v5.16b, v5.16b, v5.16b, #8
	str	q6, [x19], #16
	eor	v5.16b, v5.16b, v16.16b
	pmull	v7.1q, v1.1d, v5.1d
	pmull2	v16.1q, v2.2d, v5.2d
	pmull	v6.1q, v28.1d, v5.1d
	pmull2	v5.1q, v28.2d, v5.2d
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
	eor3	v16.16b, v17.16b, v5.16b, v6.16b
	cmp	x20, #15
	b.hi	.LBB2_33
.LBB2_34:
	stur	q16, [x29, #-256]
	mov	x22, x4
	mov	x24, x6
	cbz	x20, .LBB2_37
	mov	w8, #16
	mov	w1, wzr
	mov	x25, x7
	mov	x21, x5
	stur	q21, [x29, #-176]
	sub	x2, x8, x20
	sub	x8, x29, #96
	add	x0, x8, x20
	bl	memset
	sub	x0, x29, #96
	mov	x1, x21
	mov	x2, x20
	bl	memcpy
	ldur	q0, [x29, #-176]
	ldp	q3, q1, [sp, #112]
	sub	x1, x29, #96
	mov	x0, x19
	mov	x2, x20
	rev32	v0.16b, v0.16b
	ldur	q2, [x29, #-96]
	stur	q2, [x29, #-192]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #80]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #64]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-144]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #192]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldr	q1, [sp, #176]
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #32]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldp	q1, q3, [sp, #144]
	aese	v0.16b, v3.16b
	aesmc	v0.16b, v0.16b
	aese	v0.16b, v1.16b
	aesmc	v0.16b, v0.16b
	ldur	q1, [x29, #-128]
	aese	v0.16b, v1.16b
	ldr	q1, [sp, #16]
	eor3	v0.16b, v1.16b, v0.16b, v2.16b
	stur	q0, [x29, #-96]
	bl	memcpy
	ldur	q1, [x29, #-192]
	mov	x7, x25
	b	.LBB2_38
.LBB2_36:
	ldur	q1, [x29, #-256]
	rev64	v0.16b, v0.16b
	fmov	d2, x23
	ldur	q28, [x29, #-160]
	mov	x8, #-4467570830351532032
	ldp	q11, q10, [sp, #112]
	dup	v3.2d, x24
	ldp	q13, q12, [sp, #80]
	ldp	q23, q14, [sp, #48]
	mov	x26, x24
	mov	x4, x22
	ext	v0.16b, v0.16b, v0.16b, #8
	ldp	q15, q18, [x29, #-144]
	eor	v0.16b, v0.16b, v1.16b
	ldp	q25, q20, [sp, #192]
	ldp	q27, q22, [sp, #160]
	ldp	q26, q24, [sp, #16]
	ldr	q19, [sp, #144]
	ldr	q5, [sp]
	ldr	q6, [x21]
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v28.1d, v0.1d
	pmull2	v0.1q, v28.2d, v0.2d
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
	eor3	v1.16b, v3.16b, v0.16b, v1.16b
	b	.LBB2_42
.LBB2_37:
	movi	v1.2d, #0000000000000000
.LBB2_38:
	ldr	q0, [x7]
	sub	x0, x29, #96
	sub	x1, x29, #112
	stur	q1, [x29, #-112]
	stp	xzr, xzr, [x29, #-96]
	mov	x2, x20
	stur	q0, [x29, #-176]
	bl	memcpy
	cbz	x20, .LBB2_40
	ldur	q0, [x29, #-96]
	ldur	q1, [x29, #-256]
	fmov	d2, x23
	ldur	q28, [x29, #-160]
	mov	x8, #-4467570830351532032
	ldp	q11, q10, [sp, #112]
	dup	v3.2d, x26
	ldp	q13, q12, [sp, #80]
	mov	x6, x24
	mov	x4, x22
	rev64	v0.16b, v0.16b
	ldr	q19, [sp, #144]
	ldp	q23, q14, [sp, #48]
	ldp	q15, q18, [x29, #-144]
	ldp	q25, q20, [sp, #192]
	ldp	q27, q22, [sp, #160]
	ldp	q26, q24, [sp, #16]
	ldr	q5, [sp]
	ext	v0.16b, v0.16b, v0.16b, #8
	eor	v0.16b, v0.16b, v1.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v28.1d, v0.1d
	pmull2	v0.1q, v28.2d, v0.2d
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
	eor3	v1.16b, v3.16b, v0.16b, v1.16b
	b	.LBB2_41
.LBB2_40:
	ldp	q11, q10, [sp, #112]
	ldp	q13, q12, [sp, #80]
	mov	x6, x24
	mov	x4, x22
	ldr	q19, [sp, #144]
	ldur	q28, [x29, #-160]
	ldr	q5, [sp]
	ldur	q1, [x29, #-256]
	ldp	q23, q14, [sp, #48]
	ldp	q15, q18, [x29, #-144]
	ldp	q25, q20, [sp, #192]
	ldp	q27, q22, [sp, #160]
	ldp	q26, q24, [sp, #16]
.LBB2_41:
	ldur	q6, [x29, #-176]
.LBB2_42:
	lsl	x8, x6, #3
	lsl	x9, x4, #3
	aese	v5.16b, v11.16b
	aesmc	v5.16b, v5.16b
	fmov	d2, x23
	aese	v5.16b, v10.16b
	aesmc	v5.16b, v5.16b
	fmov	d0, x8
	dup	v3.2d, x26
	mov	x8, #-4467570830351532032
	aese	v5.16b, v12.16b
	aesmc	v5.16b, v5.16b
	mov	v0.d[1], x9
	aese	v5.16b, v13.16b
	aesmc	v5.16b, v5.16b
	aese	v5.16b, v14.16b
	aesmc	v5.16b, v5.16b
	eor	v0.16b, v1.16b, v0.16b
	aese	v5.16b, v15.16b
	aesmc	v5.16b, v5.16b
	pmull	v2.1q, v2.1d, v0.1d
	pmull2	v3.1q, v3.2d, v0.2d
	pmull	v1.1q, v28.1d, v0.1d
	pmull2	v0.1q, v28.2d, v0.2d
	aese	v5.16b, v20.16b
	aesmc	v5.16b, v5.16b
	eor	v2.16b, v3.16b, v2.16b
	movi	v3.2d, #0000000000000000
	aese	v5.16b, v25.16b
	aesmc	v5.16b, v5.16b
	zip1	v4.2d, v3.2d, v2.2d
	mov	v3.d[0], v2.d[1]
	fmov	d2, x8
	aese	v5.16b, v22.16b
	aesmc	v5.16b, v5.16b
	eor	v1.16b, v4.16b, v1.16b
	aese	v5.16b, v23.16b
	aesmc	v5.16b, v5.16b
	pmull	v4.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	aese	v5.16b, v24.16b
	aesmc	v5.16b, v5.16b
	eor	v1.16b, v1.16b, v4.16b
	aese	v5.16b, v27.16b
	aesmc	v5.16b, v5.16b
	pmull	v2.1q, v1.1d, v2.1d
	ext	v1.16b, v1.16b, v1.16b, #8
	aese	v5.16b, v19.16b
	aesmc	v5.16b, v5.16b
	eor	v0.16b, v2.16b, v0.16b
	aese	v5.16b, v18.16b
	eor3	v0.16b, v0.16b, v3.16b, v1.16b
	rev64	v0.16b, v0.16b
	ext	v0.16b, v0.16b, v0.16b, #8
	eor3	v0.16b, v6.16b, v0.16b, v5.16b
	eor	v0.16b, v0.16b, v26.16b
	mov	x8, v0.d[1]
	fmov	x9, d0
	orr	x8, x9, x8
	cmp	x8, #0
	cset	w8, eq
	b	.LBB2_24
.Lfunc_end2:
	.size	haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt, .Lfunc_end2-haberdashery_aes256gcmdndkv2kc_neoversev2_decrypt
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

	.ident	"rustc version 1.90.0-nightly (adcb3d3b4 2025-07-31)"
	.section	".note.GNU-stack","",@progbits

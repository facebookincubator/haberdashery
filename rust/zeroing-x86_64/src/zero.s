# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is dual-licensed under either the MIT license found in the
# LICENSE-MIT file in the root directory of this source tree or the Apache
# License, Version 2.0 found in the LICENSE-APACHE file in the root directory
# of this source tree. You may select, at your option, one of the above-listed licenses.

# void haberdashery_zero(void *ptr, size_t len)
#
# Hand-written so the stores are opaque to the compiler: a call into this
# symbol cannot be elided as a dead store, unlike a zeroing loop in Rust or C.

	.text
	.globl	haberdashery_zero
	.type	haberdashery_zero,@function
	.p2align	4
haberdashery_zero:
	.cfi_startproc
	movq	%rsi, %rcx
	xorl	%eax, %eax
	rep stosb
	retq
	.cfi_endproc
	.size	haberdashery_zero, .-haberdashery_zero

	.section	.note.GNU-stack,"",@progbits

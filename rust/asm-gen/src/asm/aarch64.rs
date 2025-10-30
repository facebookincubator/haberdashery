// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

// aarch64 assembly requires an arch_extension directive for certain instructions.  These
// directives aren't included in the intermediate assembly that we dump.  If we include the
// directives directly as `global_asm`, then the directives are parsed and removed. So, we include
// the directives in a comment, set embed-bitcode=no as a compiler flag, and uncomment the
// directive in the asm generation script.
#[cfg(all(feature = "asm_gen", feature = "aes"))]
core::arch::global_asm!("# UNCOMMENT .arch_extension aes");
#[cfg(all(feature = "asm_gen", feature = "sha3"))]
core::arch::global_asm!("# UNCOMMENT .arch_extension sha3");
#[cfg(all(feature = "asm_gen", feature = "sve"))]
core::arch::global_asm!("# UNCOMMENT .arch_extension sve");

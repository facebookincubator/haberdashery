#![no_std]
// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.
#![allow(non_camel_case_types)]

mod bmi2;
mod prefetch;
mod xmm;
mod ymm;
mod zmm;

pub use bmi2::_bzhi_u64;
pub use prefetch::_MM_HINT_ET0;
pub use prefetch::_MM_HINT_T0;
pub use prefetch::_mm_prefetch;
pub use prefetch::_mm_sfence;
pub use xmm::__m128i;
pub use ymm::__m256i;
pub use zmm::__m512i;

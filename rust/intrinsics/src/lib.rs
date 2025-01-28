// @generated
#![cfg_attr(not(test), no_std)]
#![feature(stdarch_x86_avx512)]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]
#[cfg(not(target_arch = "x86_64"))]
compile_error!("only x86_64 is supported, try: cargo build --target=x86_64-unknown-linux-gnu");
pub mod __m128i;
pub mod __m256i;
pub mod __m512i;
pub mod u8;
pub mod u16;
pub mod u32;
pub mod u64;
pub mod i8;
pub mod i32;
pub mod i64;

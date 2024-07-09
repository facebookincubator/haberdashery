// @generated

use haberdashery_sys::mac::sivmac_skylake::*;
pub use haberdashery_sys::mac::sivmac_skylake::SivMac;
pub use crate::traits::mac::Mac;

impl Mac for SivMac {
    const KEY_LEN: usize = Self::KEY_LEN;
    const TAG_LEN: usize = Self::TAG_LEN;
    const FN_INIT: unsafe extern "C" fn(this: *mut Self, key: *const u8, key_len: usize) -> i32 =
        haberdashery_sivmac_skylake_init;
    const FN_SIGN: unsafe extern "C" fn(
        this: *const Self,
        message: *const u8,
        message_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32 = haberdashery_sivmac_skylake_sign;
    const FN_VERIFY: unsafe extern "C" fn(
        this: *const Self,
        message: *const u8,
        message_len: usize,
        tag: *const u8,
        tag_len: usize,
    ) -> i32 = haberdashery_sivmac_skylake_verify;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32 =
        haberdashery_sivmac_skylake_is_supported;
}
#[cfg(feature = "bench")]
mod benchmarks {
    #[nano_bench::benchmark(
        library:haberdashery,
        algorithm:sivmac,
        primitive:mac,
        profile:skylake,
    )]
    fn init(iters: u64, measure: &mut dyn nano_bench::Measure) {
        let Some(mut context) = crate::benchmark::mac::Context::<super::SivMac>::new(0) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.init();
        }
        measure.stop();
    }
    #[nano_bench::benchmark(
        library:haberdashery,
        algorithm:sivmac,
        primitive:mac,
        profile:skylake,
    )]
    fn sign(length: usize, iters: u64, measure: &mut dyn nano_bench::Measure) {
        let Some(mut context) = crate::benchmark::mac::Context::<super::SivMac>::new(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.sign();
        }
        measure.stop();
    }
}
#[cfg(test)]
mod tests {
    #[test]
    fn cozybuf() {
        let result = crate::vectors::mac::verify::<super::SivMac>("sivmac.cozybuf");
        if cfg!(feature = "gen") && result.is_err() {
            crate::vectors::mac::generate::<super::SivMac>("sivmac.cozybuf").unwrap();
        } else {
            result.unwrap();
        }
    }
}

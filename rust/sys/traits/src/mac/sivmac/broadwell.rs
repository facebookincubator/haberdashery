// @generated
use haberdashery_sys::mac::sivmac::broadwell::*;

use crate::mac::BenchmarkContext;
use crate::mac::Mac;

impl Mac for SivMac {
    const KEY_LEN: usize = Self::KEY_LEN;
    const TAG_LEN: usize = Self::TAG_LEN;

    const FN_INIT: unsafe extern "C" fn(*mut Self, *const u8, usize) -> i32 =
        haberdashery_sivmac_broadwell_init;
    const FN_SIGN: unsafe extern "C" fn(*const Self, *const u8, usize, *mut u8, usize) -> i32 =
        haberdashery_sivmac_broadwell_sign;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32 =
        haberdashery_sivmac_broadwell_is_supported;
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::mac::TestVectors;

    #[test]
    fn vectors() {
        let vectors =
            TestVectors::<SivMac>::new(crate::PROJECT_PATH.join("test_vectors/sivmac.cozybuf"));
        match vectors.verify() {
            Ok(()) => {}
            Err(_) => {
                vectors.generate().unwrap();
                vectors.verify().unwrap();
            }
        }
    }
}

#[nano_bench::benchmark(
    library:haberdashery,
    primitive:mac,
    algorithm:sivmac,
    profile:broadwell,
)]
fn init(iters: u64, measure: &mut dyn nano_bench::Measure) {
    let Some(mut context) = BenchmarkContext::<SivMac>::new(0) else {
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
    primitive:mac,
    algorithm:sivmac,
    profile:broadwell,
)]
fn sign(length: usize, iters: u64, measure: &mut dyn nano_bench::Measure) {
    let Some(mut context) = BenchmarkContext::<SivMac>::new(length) else {
        measure.skip();
        return;
    };
    measure.start();
    for _ in 0..iters {
        context.sign();
    }
    measure.stop();
}

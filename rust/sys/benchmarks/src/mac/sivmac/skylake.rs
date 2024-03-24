// @generated
use crate::mac::Data;
use crate::mac::Vtable;
use haberdashery_sys::mac::sivmac::skylake::*;
use nano_bench::Measure;

const VTABLE: Vtable<SivMac> = Vtable::<SivMac> {
    _ty: core::marker::PhantomData,
    key_len: SivMac::KEY_LEN,
    tag_len: SivMac::TAG_LEN,
    init: haberdashery_sivmac_skylake_init,
    sign: haberdashery_sivmac_skylake_sign,
    verify: haberdashery_sivmac_skylake_verify,
};

#[nano_bench::benchmark(
    library:haberdashery,
    primitive:mac,
    algorithm:sivmac,
    profile:skylake,
    operation:init,
)]
fn init(iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_sivmac_skylake_is_supported() } {
        measure.skip();
        return;
    }
    let mut data = Data::new(VTABLE, 0);
    measure.start();
    for _ in 0..iters {
        data.init();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:haberdashery,
    primitive:mac,
    algorithm:sivmac,
    profile:skylake,
    operation:sign,
)]
fn sign(length: usize, iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_sivmac_skylake_is_supported() } {
        measure.skip();
        return;
    }
    let mut data = Data::new(VTABLE, length);
    measure.start();
    for _ in 0..iters {
        data.sign();
    }
    measure.stop();
}

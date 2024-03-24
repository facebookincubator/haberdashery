// @generated
use crate::aead::Data;
use crate::aead::Vtable;
use haberdashery_sys::aead::rr11aespcm::haswell::*;
use nano_bench::Measure;

const VTABLE: Vtable<Rr11AesPcm> = Vtable::<Rr11AesPcm> {
    _ty: core::marker::PhantomData,
    key_len: Rr11AesPcm::KEY_LEN,
    nonce_len: Rr11AesPcm::NONCE_LEN,
    tag_len: Rr11AesPcm::TAG_LEN,
    init: haberdashery_rr11aespcm_haswell_init,
    encrypt: haberdashery_rr11aespcm_haswell_encrypt,
    decrypt: haberdashery_rr11aespcm_haswell_decrypt,
};

#[nano_bench::benchmark(
    library:haberdashery,
    primitive:aead,
    algorithm:rr11aespcm,
    profile:haswell,
    operation:init,
)]
fn init(iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_rr11aespcm_haswell_is_supported() } {
        measure.skip();
        return;
    }
    let mut data = Data::new(VTABLE, 0, 0);
    measure.start();
    for _ in 0..iters {
        data.init();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:haberdashery,
    primitive:aead,
    algorithm:rr11aespcm,
    profile:haswell,
    operation:encrypt,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_rr11aespcm_haswell_is_supported() } {
        measure.skip();
        return;
    }
    let mut data = Data::new(VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:haberdashery,
    primitive:aead,
    algorithm:rr11aespcm,
    profile:haswell,
    operation:decrypt,
)]
fn decrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_rr11aespcm_haswell_is_supported() } {
        measure.skip();
        return;
    }
    let mut data = Data::new(VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.decrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:haberdashery,
    primitive:aead,
    algorithm:rr11aespcm,
    profile:haswell,
    operation:aad,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_rr11aespcm_haswell_is_supported() } {
        measure.skip();
        return;
    }
    let mut data = Data::new(VTABLE, length, 0);
    measure.start();
    for _ in 0..iters {
        data.aad();
    }
    measure.stop();
}

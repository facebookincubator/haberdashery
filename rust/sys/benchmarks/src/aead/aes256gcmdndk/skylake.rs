// @generated
use crate::aead::Data;
use crate::aead::Vtable;
use haberdashery_sys::aead::aes256gcmdndk::skylake::*;
use nano_bench::Measure;

const VTABLE: Vtable<Aes256GcmDndk> = Vtable::<Aes256GcmDndk> {
    _ty: core::marker::PhantomData,
    key_len: Aes256GcmDndk::KEY_LEN,
    nonce_len: Aes256GcmDndk::NONCE_LEN,
    tag_len: Aes256GcmDndk::TAG_LEN,
    init: haberdashery_aes256gcmdndk_skylake_init,
    encrypt: haberdashery_aes256gcmdndk_skylake_encrypt,
    decrypt: haberdashery_aes256gcmdndk_skylake_decrypt,
};

#[nano_bench::benchmark(
    library:haberdashery,
    primitive:aead,
    algorithm:aes256gcmdndk,
    profile:skylake,
    operation:init,
)]
fn init(iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_aes256gcmdndk_skylake_is_supported() } {
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
    algorithm:aes256gcmdndk,
    profile:skylake,
    operation:encrypt,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_aes256gcmdndk_skylake_is_supported() } {
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
    algorithm:aes256gcmdndk,
    profile:skylake,
    operation:decrypt,
)]
fn decrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_aes256gcmdndk_skylake_is_supported() } {
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
    algorithm:aes256gcmdndk,
    profile:skylake,
    operation:aad,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn Measure) {
    if unsafe { 0 == haberdashery_aes256gcmdndk_skylake_is_supported() } {
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

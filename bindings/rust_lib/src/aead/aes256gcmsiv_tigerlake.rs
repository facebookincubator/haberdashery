// @generated

use haberdashery_sys::aead::aes256gcmsiv_tigerlake::*;
pub use haberdashery_sys::aead::aes256gcmsiv_tigerlake::Aes256Gcmsiv;
pub use crate::traits::aead::Aead;

impl Aead for Aes256Gcmsiv {
    const KEY_LEN: usize = Self::KEY_LEN;
    const NONCE_LEN: usize = Self::NONCE_LEN;
    const TAG_LEN: usize = Self::TAG_LEN;

    const FN_INIT: unsafe extern "C" fn(this: *mut Self, key: *const u8, key_len: usize) -> i32 =
        haberdashery_aes256gcmsiv_tigerlake_init;
    const FN_ENCRYPT: unsafe extern "C" fn(
        this: *const Self,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        plaintext: *const u8,
        plaintext_len: usize,
        ciphertext: *mut u8,
        ciphertext_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32 = haberdashery_aes256gcmsiv_tigerlake_encrypt;
    const FN_DECRYPT: unsafe extern "C" fn(
        this: *const Self,
        nonce: *const u8,
        nonce_len: usize,
        aad: *const u8,
        aad_len: usize,
        ciphertext: *const u8,
        ciphertext_len: usize,
        tag: *const u8,
        tag_len: usize,
        plaintext: *mut u8,
        plaintext_len: usize,
    ) -> i32 = haberdashery_aes256gcmsiv_tigerlake_decrypt;
    const FN_IS_SUPPORTED: unsafe extern "C" fn() -> i32 =
        haberdashery_aes256gcmsiv_tigerlake_is_supported;
}
#[cfg(feature = "bench")]
mod benchmarks {
    #[nano_bench::benchmark(
        library:haberdashery,
        algorithm:aes256gcmsiv,
        primitive:aead,
        profile:tigerlake,
    )]
    fn init(iters: u64, measure: &mut dyn nano_bench::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::Aes256Gcmsiv>::aad(0) else {
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
        algorithm:aes256gcmsiv,
        primitive:aead,
        profile:tigerlake,
    )]
    fn aad(length: usize, iters: u64, measure: &mut dyn nano_bench::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::Aes256Gcmsiv>::aad(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.encrypt();
        }
        measure.stop();
    }
    #[nano_bench::benchmark(
        library:haberdashery,
        algorithm:aes256gcmsiv,
        primitive:aead,
        profile:tigerlake,
    )]
    fn encrypt(length: usize, iters: u64, measure: &mut dyn nano_bench::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::Aes256Gcmsiv>::crypt(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.encrypt();
        }
        measure.stop();
    }
    #[nano_bench::benchmark(
        library:haberdashery,
        algorithm:aes256gcmsiv,
        primitive:aead,
        profile:tigerlake,
    )]
    fn decrypt(length: usize, iters: u64, measure: &mut dyn nano_bench::Measure) {
        let Some(mut context) = crate::benchmark::aead::Context::<super::Aes256Gcmsiv>::crypt(length) else {
            measure.skip();
            return;
        };
        measure.start();
        for _ in 0..iters {
            context.decrypt();
        }
        measure.stop();
    }
}
#[cfg(test)]
mod tests {
    #[test]
    fn cozybuf() {
        let result = crate::vectors::aead::verify::<super::Aes256Gcmsiv>("aes256gcmsiv.cozybuf");
        if cfg!(feature = "gen") && result.is_err() {
            crate::vectors::aead::generate::<super::Aes256Gcmsiv>("aes256gcmsiv.cozybuf").unwrap();
        } else {
            result.unwrap();
        }
    }
}

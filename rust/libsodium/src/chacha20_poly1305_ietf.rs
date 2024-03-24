// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use libsodium_sys::*;
use nano_bench::Measure;

use crate::BenchmarkData;
use crate::Vtable;

const CHACHA20_POLY1305_IETF_VTABLE: Vtable = Vtable {
    key_len: crypto_aead_chacha20poly1305_ietf_KEYBYTES as usize,
    nonce_len: crypto_aead_chacha20poly1305_ietf_NPUBBYTES as usize,
    tag_len: crypto_aead_chacha20poly1305_ietf_ABYTES as usize,
    encrypt: crypto_aead_chacha20poly1305_ietf_encrypt_detached,
    decrypt: crypto_aead_chacha20poly1305_ietf_decrypt_detached,
};

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn chacha20_poly1305_ietf() {
        let vtable = CHACHA20_POLY1305_IETF_VTABLE;
        let key = hex::decode("808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f")
            .unwrap();
        assert_eq!(key.len(), vtable.key_len);
        let nonce = hex::decode("070000004041424344454647").unwrap();
        assert_eq!(nonce.len(), vtable.nonce_len);
        let aad = hex::decode("50515253c0c1c2c3c4c5c6c7").unwrap();
        let plaintext = hex::decode("4c616469657320616e642047656e746c656d656e206f662074686520636c617373206f66202739393a204966204920636f756c64206f6666657220796f75206f6e6c79206f6e652074697020666f7220746865206675747572652c2073756e73637265656e20776f756c642062652069742e").unwrap();
        let mut ciphertext = vec![0u8; plaintext.len()];
        let mut tag = vec![0u8; vtable.tag_len];
        assert!(vtable.encrypt(&key, &nonce, &aad, &plaintext, &mut ciphertext, &mut tag));
        let mut decrypted = vec![0u8; plaintext.len()];
        assert!(vtable.decrypt(&key, &nonce, &aad, &ciphertext, &tag, &mut decrypted));
        assert_eq!(hex::encode(plaintext), hex::encode(decrypted));
        assert_eq!(hex::encode(tag), "1ae10b594f09e26a7e902ecbd0600691");

        assert_eq!(
            hex::encode(ciphertext),
            "d31a8d34648e60db7b86afbc53ef7ec2a4aded51296e08fea9e2b5a736ee62d63dbea45e8ca9671282fafb69da92728b1a71de0a9e060b2905d6a5b67ecd3b3692ddbd7f2d778b8c9803aee328091b58fab324e4fad675945585808b4831d7bc3ff4def08e4b7a9de576d26586cec64b6116"
        );
    }
}
#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305_ietf,
    operation:aad,
)]
fn aad(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_IETF_VTABLE, length, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305_ietf,
    operation:encrypt_empty,
)]
fn encrypt_empty(iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_IETF_VTABLE, 0, 0);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305_ietf,
    operation:encrypt,
)]
fn encrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_IETF_VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.encrypt();
    }
    measure.stop();
}
#[nano_bench::benchmark(
    library:libsodium,
    primitive:aead,
    algorithm:chacha20_poly1305_ietf,
    operation:decrypt,
)]
fn decrypt(length: usize, iters: u64, measure: &mut dyn Measure) {
    let mut data = BenchmarkData::new(CHACHA20_POLY1305_IETF_VTABLE, 0, length);
    measure.start();
    for _ in 0..iters {
        data.decrypt();
    }
    measure.stop();
}

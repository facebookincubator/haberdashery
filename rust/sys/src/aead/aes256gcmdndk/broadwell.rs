// @generated

use core::arch::x86_64::__m128i;

#[repr(C)]
#[allow(unused)]
pub struct Aes256GcmDndk {
    value: [__m128i; 15],
}
impl Aes256GcmDndk {
    pub const KEY_LEN: usize = 32;
    pub const NONCE_LEN: usize = 24;
    pub const TAG_LEN: usize = 16;
}

#[allow(improper_ctypes)]
extern "C" {
    pub fn haberdashery_aes256gcmdndk_broadwell_init(this: *mut Aes256GcmDndk, key: *const u8, key_len: usize) -> i32;
    pub fn haberdashery_aes256gcmdndk_broadwell_encrypt(
        this: *const Aes256GcmDndk,
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
    ) -> i32;
    pub fn haberdashery_aes256gcmdndk_broadwell_decrypt(
        this: *const Aes256GcmDndk,
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
    ) -> i32;
    pub fn haberdashery_aes256gcmdndk_broadwell_is_supported() -> i32;
}

#[test]
fn test() {
    unsafe {
        if 0 == haberdashery_aes256gcmdndk_broadwell_is_supported() {
            return;
        }
        let key = [0u8; Aes256GcmDndk::KEY_LEN];
        let nonce = [0u8; Aes256GcmDndk::NONCE_LEN];
        let mut tag = [0u8; Aes256GcmDndk::TAG_LEN];
        let aad = [];
        let mut plaintext = [];
        let mut ciphertext = [];

        let mut this = core::mem::MaybeUninit::<Aes256GcmDndk>::uninit();
        assert_ne!(haberdashery_aes256gcmdndk_broadwell_init(this.as_mut_ptr(), key.as_ptr(), key.len()), 0);
        assert_ne!(haberdashery_aes256gcmdndk_broadwell_encrypt(
            this.as_ptr(),
            nonce.as_ptr(),
            nonce.len(),
            aad.as_ptr(),
            aad.len(),
            plaintext.as_ptr(),
            plaintext.len(),
            ciphertext.as_mut_ptr(),
            ciphertext.len(),
            tag.as_mut_ptr(),
            tag.len(),
        ), 0);
        assert_ne!(haberdashery_aes256gcmdndk_broadwell_decrypt(
            this.as_ptr(),
            nonce.as_ptr(),
            nonce.len(),
            aad.as_ptr(),
            aad.len(),
            ciphertext.as_ptr(),
            ciphertext.len(),
            tag.as_ptr(),
            tag.len(),
            plaintext.as_mut_ptr(),
            plaintext.len(),
        ), 0);
    }
}

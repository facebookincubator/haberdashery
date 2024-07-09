// @generated

#[cfg(feature = "asm-path")]
core::arch::global_asm!(
    include_str!(concat!(env!("HABERDASHERY_ASM_PATH"), "/aes256gcm_streaming_broadwell.s")),
    options(att_syntax, raw)
);
#[cfg(not(feature = "asm-path"))]
core::arch::global_asm!(
    include_str!("../../../../../asm/aes256gcm_streaming_broadwell.s"),
    options(att_syntax, raw)
);

#[repr(C, align(16))]
pub struct Aes256GcmKey([u8; 336]);
impl Aes256GcmKey {
    pub const KEY_LEN: usize = 32;
    pub const NONCE_LEN: usize = 12;
    pub const TAG_LEN: usize = 16;
}
#[repr(C, align(16))]
pub struct Aes256GcmState([u8; 112]);

extern "C" {
    pub fn haberdashery_aes256gcm_streaming_broadwell_init_key(
        this: *mut Aes256GcmKey,
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcm_streaming_broadwell_init_state(
        this: *mut Aes256GcmState,
        key: *const Aes256GcmKey,
        nonce: *const u8,
        nonce_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcm_streaming_broadwell_aad_update(
        this: *mut Aes256GcmState,
        key: *const Aes256GcmKey,
        aad: *const u8,
        aad_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcm_streaming_broadwell_encrypt_update(
        this: *mut Aes256GcmState,
        key: *const Aes256GcmKey,
        plaintext: *const u8,
        plaintext_len: usize,
        ciphertext: *mut u8,
        ciphertext_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize(
        this: *mut Aes256GcmState,
        key: *const Aes256GcmKey,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcm_streaming_broadwell_decrypt_update(
        this: *mut Aes256GcmState,
        key: *const Aes256GcmKey,
        ciphertext: *const u8,
        ciphertext_len: usize,
        plaintext: *mut u8,
        plaintext_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize(
        this: *mut Aes256GcmState,
        key: *const Aes256GcmKey,
        tag: *const u8,
        tag_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcm_streaming_broadwell_is_supported() -> i32;
}

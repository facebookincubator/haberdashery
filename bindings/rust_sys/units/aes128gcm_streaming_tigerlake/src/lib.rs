// @generated

#[cfg(feature = "asm-path")]
core::arch::global_asm!(
    include_str!(concat!(env!("HABERDASHERY_ASM_PATH"), "/aes128gcm_streaming_tigerlake.s")),
    options(att_syntax, raw)
);
#[cfg(not(feature = "asm-path"))]
core::arch::global_asm!(
    include_str!("../../../../../asm/x86_64/aes128gcm_streaming_tigerlake.s"),
    options(att_syntax, raw)
);

#[repr(C, align(16))]
pub struct Aes128GcmKey([u8; 272]);
impl Aes128GcmKey {
    pub const KEY_LEN: usize = 16;
    pub const NONCE_LEN: usize = 12;
    pub const TAG_LEN: usize = 16;
}
#[repr(C, align(16))]
pub struct Aes128GcmState([u8; 112]);

unsafe extern "C" {
    pub fn haberdashery_aes128gcm_streaming_tigerlake_init_key(
        this: *mut Aes128GcmKey,
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_streaming_tigerlake_init_state(
        this: *mut Aes128GcmState,
        key: *const Aes128GcmKey,
        nonce: *const u8,
        nonce_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_streaming_tigerlake_aad_update(
        this: *mut Aes128GcmState,
        key: *const Aes128GcmKey,
        aad: *const u8,
        aad_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_streaming_tigerlake_encrypt_update(
        this: *mut Aes128GcmState,
        key: *const Aes128GcmKey,
        plaintext: *const u8,
        plaintext_len: usize,
        ciphertext: *mut u8,
        ciphertext_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_streaming_tigerlake_encrypt_finalize(
        this: *mut Aes128GcmState,
        key: *const Aes128GcmKey,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_streaming_tigerlake_decrypt_update(
        this: *mut Aes128GcmState,
        key: *const Aes128GcmKey,
        ciphertext: *const u8,
        ciphertext_len: usize,
        plaintext: *mut u8,
        plaintext_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_streaming_tigerlake_decrypt_finalize(
        this: *mut Aes128GcmState,
        key: *const Aes128GcmKey,
        tag: *const u8,
        tag_len: usize,
    ) -> i32;
    pub fn haberdashery_aes128gcm_streaming_tigerlake_is_supported() -> i32;
}

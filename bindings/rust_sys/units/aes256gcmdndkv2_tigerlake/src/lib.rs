// @generated

#[cfg(feature = "asm-path")]
core::arch::global_asm!(
    include_str!(concat!(env!("HABERDASHERY_ASM_PATH"), "/aes256gcmdndkv2_tigerlake.s")),
    options(att_syntax, raw)
);
#[cfg(not(feature = "asm-path"))]
core::arch::global_asm!(
    include_str!("../../../../../asm/x86_64/aes256gcmdndkv2_tigerlake.s"),
    options(att_syntax, raw)
);

#[repr(C, align(16))]
pub struct Aes256Gcmdndkv2([u8; 240]);
impl Aes256Gcmdndkv2 {
    pub const KEY_LEN: usize = 32;
    pub const NONCE_LEN: usize = 24;
    pub const TAG_LEN: usize = 16;
}

unsafe extern "C" {
    pub fn haberdashery_aes256gcmdndkv2_tigerlake_init(
        this: *mut Aes256Gcmdndkv2,
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn haberdashery_aes256gcmdndkv2_tigerlake_encrypt(
        this: *const Aes256Gcmdndkv2,
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
    pub fn haberdashery_aes256gcmdndkv2_tigerlake_decrypt(
        this: *const Aes256Gcmdndkv2,
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
    pub fn haberdashery_aes256gcmdndkv2_tigerlake_is_supported() -> i32;
}

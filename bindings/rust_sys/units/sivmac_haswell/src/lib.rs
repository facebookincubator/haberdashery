// @generated

#[cfg(feature = "asm-path")]
core::arch::global_asm!(
    include_str!(concat!(env!("HABERDASHERY_ASM_PATH"), "/sivmac_haswell.s")),
    options(att_syntax, raw)
);
#[cfg(not(feature = "asm-path"))]
core::arch::global_asm!(
    include_str!("../../../../../asm/sivmac_haswell.s"),
    options(att_syntax, raw)
);

#[repr(C, align(16))]
pub struct SivMac([u8; 368]);
impl SivMac {
    pub const KEY_LEN: usize = 32;
    pub const TAG_LEN: usize = 16;
}

extern "C" {
    pub fn haberdashery_sivmac_haswell_init(
        this: *mut SivMac,
        key: *const u8,
        key_len: usize,
    ) -> i32;
    pub fn haberdashery_sivmac_haswell_sign(
        this: *const SivMac,
        message: *const u8,
        message_len: usize,
        tag: *mut u8,
        tag_len: usize,
    ) -> i32;
    pub fn haberdashery_sivmac_haswell_verify(
        this: *const SivMac,
        message: *const u8,
        message_len: usize,
        tag: *const u8,
        tag_len: usize,
    ) -> i32;
    pub fn haberdashery_sivmac_haswell_is_supported() -> i32;
}

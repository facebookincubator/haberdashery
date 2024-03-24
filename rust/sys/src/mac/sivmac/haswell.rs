// @generated

use core::arch::x86_64::__m128i;

#[repr(C)]
#[allow(unused)]
pub struct SivMac {
    value: [__m128i; 23],
}
impl SivMac {
    pub const KEY_LEN: usize = 32;
    pub const TAG_LEN: usize = 16;
}

#[allow(improper_ctypes)]
extern "C" {
    pub fn haberdashery_sivmac_haswell_init(this: *mut SivMac, key: *const u8, key_len: usize) -> i32;
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

#[test]
fn test() {
    unsafe {
        if 0 == haberdashery_sivmac_haswell_is_supported() {
            return;
        }
        let key = [0u8; SivMac::KEY_LEN];
        let message = [0u8; 1];
        let mut tag = [0u8; SivMac::TAG_LEN];

        let mut this = core::mem::MaybeUninit::<SivMac>::uninit();
        assert_ne!(haberdashery_sivmac_haswell_init(this.as_mut_ptr(), key.as_ptr(), key.len()), 0);
        assert_ne!(haberdashery_sivmac_haswell_sign(
            this.as_ptr(),
            message.as_ptr(),
            message.len(),
            tag.as_mut_ptr(),
            tag.len(),
        ), 0);
        assert_ne!(haberdashery_sivmac_haswell_verify(
            this.as_ptr(),
            message.as_ptr(),
            message.len(),
            tag.as_ptr(),
            tag.len(),
        ), 0);
    }
}

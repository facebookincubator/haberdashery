// @generated

pub use sivmac_neoversev2::*;

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test() {
        unsafe {
            if 0 == haberdashery_sivmac_neoversev2_is_supported() {
                return;
            }
            let key = [0u8; SivMac::KEY_LEN];
            let message = [0u8; 1];
            let mut tag = [0u8; SivMac::TAG_LEN];

            let mut this = core::mem::MaybeUninit::<SivMac>::uninit();
            assert_ne!(
                haberdashery_sivmac_neoversev2_init(
                    this.as_mut_ptr(),
                    key.as_ptr(),
                    key.len(),
                ),
                0,
            );
            assert_ne!(
                haberdashery_sivmac_neoversev2_sign(
                    this.as_ptr(),
                    message.as_ptr(),
                    message.len(),
                    tag.as_mut_ptr(),
                    tag.len(),
                ),
                0,
            );
            assert_ne!(
                haberdashery_sivmac_neoversev2_verify(
                    this.as_ptr(),
                    message.as_ptr(),
                    message.len(),
                    tag.as_ptr(),
                    tag.len(),
                ),
                0,
            );
        }
    }
}

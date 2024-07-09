// @generated

pub use aes256gcmsiv_tigerlake::*;

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test() {
        unsafe {
            if 0 == haberdashery_aes256gcmsiv_tigerlake_is_supported() {
                return;
            }
            let key = [0u8; Aes256Gcmsiv::KEY_LEN];
            let nonce = [0u8; Aes256Gcmsiv::NONCE_LEN];
            let mut tag = [0u8; Aes256Gcmsiv::TAG_LEN];
            let aad = [0u8; 1];
            let mut plaintext = [0u8; 1];
            let mut ciphertext = [0u8; 1];

            let mut this = core::mem::MaybeUninit::<Aes256Gcmsiv>::uninit();
            assert_ne!(
                haberdashery_aes256gcmsiv_tigerlake_init(
                    this.as_mut_ptr(),
                    key.as_ptr(),
                    key.len(),
                ),
                0,
            );
            assert_ne!(
                haberdashery_aes256gcmsiv_tigerlake_encrypt(
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
                ),
                0,
            );
            assert_ne!(
                haberdashery_aes256gcmsiv_tigerlake_decrypt(
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
                ),
                0,
            );
        }
    }
}
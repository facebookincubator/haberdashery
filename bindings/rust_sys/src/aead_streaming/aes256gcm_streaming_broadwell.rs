// @generated

pub use aes256gcm_streaming_broadwell::*;

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test() {
        unsafe {
            if 0 == haberdashery_aes256gcm_streaming_broadwell_is_supported() {
                return;
            }
            let key = [0u8; Aes256GcmKey::KEY_LEN];
            let nonce = [0u8; Aes256GcmKey::NONCE_LEN];
            let mut tag = [0u8; Aes256GcmKey::TAG_LEN];
            let aad = [0u8; 1];
            let mut plaintext = [0u8; 1];
            let mut ciphertext = [0u8; 1];

            let mut key_struct = core::mem::MaybeUninit::<Aes256GcmKey>::uninit();
            assert_ne!(
                haberdashery_aes256gcm_streaming_broadwell_init_key(
                    key_struct.as_mut_ptr(),
                    key.as_ptr(),
                    key.len()
                ),
                0
            );
            let key_struct: Aes256GcmKey = key_struct.assume_init();
            {
                let mut state = core::mem::MaybeUninit::<Aes256GcmState>::uninit();
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_init_state(
                        state.as_mut_ptr(),
                        &key_struct,
                        nonce.as_ptr(),
                        nonce.len()
                    ),
                    0
                );
                let mut state = state.assume_init();
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_aad_update(
                        &mut state,
                        &key_struct,
                        aad.as_ptr(),
                        aad.len(),
                    ),
                    0
                );
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_encrypt_update(
                        &mut state,
                        &key_struct,
                        plaintext.as_ptr(),
                        plaintext.len(),
                        ciphertext.as_mut_ptr(),
                        ciphertext.len(),
                    ),
                    0
                );
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize(
                        &mut state,
                        &key_struct,
                        tag.as_mut_ptr(),
                        tag.len(),
                    ),
                    0
                );
            }
            {
                let mut state = core::mem::MaybeUninit::<Aes256GcmState>::uninit();
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_init_state(
                        state.as_mut_ptr(),
                        &key_struct,
                        nonce.as_ptr(),
                        nonce.len()
                    ),
                    0
                );
                let mut state = state.assume_init();
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_aad_update(
                        &mut state,
                        &key_struct,
                        aad.as_ptr(),
                        aad.len(),
                    ),
                    0
                );
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_decrypt_update(
                        &mut state,
                        &key_struct,
                        ciphertext.as_ptr(),
                        ciphertext.len(),
                        plaintext.as_mut_ptr(),
                        plaintext.len(),
                    ),
                    0
                );
                assert_ne!(
                    haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize(
                        &mut state,
                        &key_struct,
                        tag.as_ptr(),
                        tag.len(),
                    ),
                    0
                );
            }
        }
    }
}

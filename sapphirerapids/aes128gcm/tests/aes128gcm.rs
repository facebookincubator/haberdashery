// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

use aes128gcm_sapphirerapids::Aes128Gcm;

unsafe extern "C" {
    fn haberdashery_aes128gcm_sapphirerapids_encrypt(
        this: *const Aes128Gcm,
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

    fn haberdashery_aes128gcm_sapphirerapids_decrypt(
        this: *const Aes128Gcm,
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
}

#[test]
fn round_trip() {
    if !Aes128Gcm::is_supported() {
        return;
    }
    let key = [0x42u8; 16];
    let nonce = [0x01u8; 12];
    let aad = b"additional data";
    let plaintext = b"hello world";

    let gcm = Aes128Gcm::new(&key);
    let mut ciphertext = vec![0u8; plaintext.len()];
    let mut tag = [0u8; 16];
    assert!(gcm.encrypt(&nonce, plaintext, aad, &mut ciphertext, &mut tag));
    let mut decrypted = vec![0u8; plaintext.len()];
    assert!(gcm.decrypt(&nonce, &ciphertext, &tag, aad, &mut decrypted));
    assert_eq!(&decrypted, plaintext);
}

#[test]
fn rejects_tampered_ciphertext() {
    if !Aes128Gcm::is_supported() {
        return;
    }
    let gcm = Aes128Gcm::new(&[0x42u8; 16]);
    let nonce = [0x01u8; 12];
    let mut ciphertext = vec![0u8; 4];
    let mut tag = [0u8; 16];
    assert!(gcm.encrypt(&nonce, b"test", &[], &mut ciphertext, &mut tag));
    ciphertext[0] ^= 1;
    let mut plaintext = vec![0u8; 4];
    assert!(!gcm.decrypt(&nonce, &ciphertext, &tag, &[], &mut plaintext));
}

#[test]
fn rejects_short_tag_buffer() {
    if !Aes128Gcm::is_supported() {
        return;
    }
    let gcm = Aes128Gcm::new(&[0x42u8; 16]);
    let mut ciphertext = [0u8; 4];
    let mut tag = [0u8; 15];

    assert!(!gcm.encrypt(&[0x01u8; 12], b"test", &[], &mut ciphertext, &mut tag));
}

#[test]
fn rejects_mismatched_output_buffers() {
    if !Aes128Gcm::is_supported() {
        return;
    }
    let gcm = Aes128Gcm::new(&[0x42u8; 16]);
    let nonce = [0x01u8; 12];
    let mut short_output = [0u8; 3];
    let mut tag = [0u8; 16];

    assert!(!gcm.encrypt(&nonce, b"test", &[], &mut short_output, &mut tag));

    let ciphertext = [0u8; 4];
    assert!(!gcm.decrypt(&nonce, &ciphertext, &tag, &[], &mut short_output));
}

fn vectors() -> Vec<test_vectors::AeadTestVector> {
    use std::io::Read;
    let path = "../../test_vectors/aes128gcm.cozybuf";
    let mut file = std::fs::File::open(path).expect("open aes128gcm vectors");
    let mut out = Vec::new();
    loop {
        let mut head = [0u8; 4];
        match file.read_exact(&mut head) {
            Err(e) if e.kind() == std::io::ErrorKind::UnexpectedEof => break,
            Err(e) => panic!("{path}: {e}"),
            Ok(()) => {}
        }
        let mut chained = head.as_slice().chain(file.by_ref());
        out.push(test_vectors::AeadTestVector::from_reader(&mut chained).expect("parse vector"));
    }
    assert!(!out.is_empty(), "{path}: no vectors");
    out
}

#[test]
fn cozybuf_vectors() {
    if !Aes128Gcm::is_supported() {
        return;
    }
    for vector in vectors() {
        let key: [u8; 16] = vector.key.as_slice().try_into().expect("16-byte key");
        let nonce: [u8; 12] = vector.nonce.as_slice().try_into().expect("12-byte nonce");
        let expected_tag: [u8; 16] = vector.tag.as_slice().try_into().expect("16-byte tag");
        let gcm = Aes128Gcm::new(&key);

        let mut ciphertext = vec![0u8; vector.plaintext.len()];
        let mut tag = [0u8; 16];
        assert!(gcm.encrypt(
            &nonce,
            &vector.plaintext,
            &vector.aad,
            &mut ciphertext,
            &mut tag
        ));
        assert_eq!(ciphertext, vector.ciphertext, "ciphertext mismatch");
        assert_eq!(tag, expected_tag, "tag mismatch");

        let mut plaintext = vec![0u8; vector.ciphertext.len()];
        assert!(gcm.decrypt(
            &nonce,
            &vector.ciphertext,
            &expected_tag,
            &vector.aad,
            &mut plaintext
        ));
        assert_eq!(plaintext, vector.plaintext, "plaintext mismatch");
    }
}

#[test]
fn identical_input_output_buffers() {
    if !Aes128Gcm::is_supported() {
        return;
    }

    let gcm = Aes128Gcm::new(&[0x42; 16]);
    let nonce = [0x01; 12];
    let aad = b"additional data";
    for length in [
        0, 1, 15, 16, 39, 40, 63, 64, 80, 81, 144, 145, 511, 512, 513, 1024,
    ] {
        let plaintext: Vec<u8> = (0..length).map(|index| index as u8).collect();
        let mut expected_ciphertext = vec![0; plaintext.len()];
        let mut expected_tag = [0; 16];
        assert!(gcm.encrypt(
            &nonce,
            &plaintext,
            aad,
            &mut expected_ciphertext,
            &mut expected_tag,
        ));

        let mut buffer = plaintext.clone();
        let mut tag = [0; 16];
        unsafe {
            assert_ne!(
                haberdashery_aes128gcm_sapphirerapids_encrypt(
                    &gcm,
                    nonce.as_ptr(),
                    nonce.len(),
                    aad.as_ptr(),
                    aad.len(),
                    buffer.as_ptr(),
                    buffer.len(),
                    buffer.as_mut_ptr(),
                    buffer.len(),
                    tag.as_mut_ptr(),
                    tag.len(),
                ),
                0
            );
        }
        assert_eq!(buffer, expected_ciphertext, "length {length}");
        assert_eq!(tag, expected_tag, "length {length}");

        unsafe {
            assert_ne!(
                haberdashery_aes128gcm_sapphirerapids_decrypt(
                    &gcm,
                    nonce.as_ptr(),
                    nonce.len(),
                    aad.as_ptr(),
                    aad.len(),
                    buffer.as_ptr(),
                    buffer.len(),
                    tag.as_ptr(),
                    tag.len(),
                    buffer.as_mut_ptr(),
                    buffer.len(),
                ),
                0
            );
        }
        assert_eq!(buffer, plaintext, "length {length}");
    }
}

#[test]
fn c_abi_null_pointers() {
    if !Aes128Gcm::is_supported() {
        return;
    }
    unsafe extern "C" {
        fn haberdashery_aes128gcm_sapphirerapids_init(
            out: *mut Aes128Gcm,
            key: *const u8,
            key_len: usize,
        ) -> i32;
        fn haberdashery_aes128gcm_sapphirerapids_encrypt(
            this: *const Aes128Gcm,
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
        fn haberdashery_aes128gcm_sapphirerapids_decrypt(
            this: *const Aes128Gcm,
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
    }
    use core::ptr::null;
    use core::ptr::null_mut;

    let key = [0x42; 16];
    let nonce = [0x01; 12];
    let gcm = Aes128Gcm::new(&key);
    let mut expected_tag = [0; 16];
    assert!(gcm.encrypt(&nonce, &[], &[], &mut [], &mut expected_tag));

    unsafe {
        // Empty AAD and payload may be passed as NULL.
        let mut tag = [0; 16];
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_encrypt(
                &gcm,
                nonce.as_ptr(),
                nonce.len(),
                null(),
                0,
                null(),
                0,
                null_mut(),
                0,
                tag.as_mut_ptr(),
                tag.len(),
            ),
            1
        );
        assert_eq!(tag, expected_tag);
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_decrypt(
                &gcm,
                nonce.as_ptr(),
                nonce.len(),
                null(),
                0,
                null(),
                0,
                tag.as_ptr(),
                tag.len(),
                null_mut(),
                0,
            ),
            1
        );

        // NULL with a non-zero length is rejected.
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_encrypt(
                &gcm,
                nonce.as_ptr(),
                nonce.len(),
                null(),
                1,
                null(),
                0,
                null_mut(),
                0,
                tag.as_mut_ptr(),
                tag.len(),
            ),
            0
        );
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_decrypt(
                &gcm,
                null(),
                nonce.len(),
                null(),
                0,
                null(),
                0,
                tag.as_ptr(),
                tag.len(),
                null_mut(),
                0,
            ),
            0
        );
        let mut plaintext = [0; 1];
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_decrypt(
                &gcm,
                nonce.as_ptr(),
                nonce.len(),
                null(),
                0,
                null(),
                plaintext.len(),
                tag.as_ptr(),
                tag.len(),
                plaintext.as_mut_ptr(),
                plaintext.len(),
            ),
            0
        );

        // A NULL context or tag is rejected.
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_encrypt(
                null(),
                nonce.as_ptr(),
                nonce.len(),
                null(),
                0,
                null(),
                0,
                null_mut(),
                0,
                tag.as_mut_ptr(),
                tag.len(),
            ),
            0
        );
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_encrypt(
                &gcm,
                nonce.as_ptr(),
                nonce.len(),
                null(),
                0,
                null(),
                0,
                null_mut(),
                0,
                null_mut(),
                16,
            ),
            0
        );
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_decrypt(
                &gcm,
                nonce.as_ptr(),
                nonce.len(),
                null(),
                0,
                null(),
                0,
                null(),
                16,
                null_mut(),
                0,
            ),
            0
        );

        // init rejects a NULL context or key.
        let mut context = core::mem::MaybeUninit::<Aes128Gcm>::uninit();
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_init(null_mut(), key.as_ptr(), key.len()),
            0
        );
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_init(context.as_mut_ptr(), null(), 16),
            0
        );
        assert_eq!(
            haberdashery_aes128gcm_sapphirerapids_init(
                context.as_mut_ptr(),
                key.as_ptr(),
                key.len()
            ),
            1
        );
    }
}

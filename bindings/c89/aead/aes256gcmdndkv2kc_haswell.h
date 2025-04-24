/* @generated */

#ifndef HABERDASHERY_AES_256_GCMDNDKV_2_KC_HASWELL_H
#define HABERDASHERY_AES_256_GCMDNDKV_2_KC_HASWELL_H

#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_AES_256_GCMDNDKV_2_KC_HASWELL_KEY_LEN 32
#define HABERDASHERY_AES_256_GCMDNDKV_2_KC_HASWELL_NONCE_LEN 24
#define HABERDASHERY_AES_256_GCMDNDKV_2_KC_HASWELL_TAG_LEN 48

__attribute__((aligned(16)))
typedef struct haberdashery_aes256gcmdndkv2kc_haswell_t {
  uint8_t value[240];
} haberdashery_aes256gcmdndkv2kc_haswell_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes256gcmdndkv2kc_haswell_init(
    haberdashery_aes256gcmdndkv2kc_haswell_t *aead,
    const unsigned char *key,         size_t key_len);
int haberdashery_aes256gcmdndkv2kc_haswell_encrypt(
    const haberdashery_aes256gcmdndkv2kc_haswell_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *plaintext,   size_t plaintext_len,
    unsigned char *ciphertext,        size_t ciphertext_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_aes256gcmdndkv2kc_haswell_decrypt(
    const haberdashery_aes256gcmdndkv2kc_haswell_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *ciphertext,  size_t ciphertext_len,
    const unsigned char *tag,         size_t tag_len,
    unsigned char *plaintext,         size_t plaintext_len);
int haberdashery_aes256gcmdndkv2kc_haswell_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_256_GCMDNDKV_2_KC_HASWELL_H */

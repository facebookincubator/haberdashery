/* @generated */

#ifndef HABERDASHERY_AES_128_GCM_ZEN_4_H
#define HABERDASHERY_AES_128_GCM_ZEN_4_H

#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_AES_128_GCM_ZEN_4_KEY_LEN 16
#define HABERDASHERY_AES_128_GCM_ZEN_4_NONCE_LEN 12
#define HABERDASHERY_AES_128_GCM_ZEN_4_TAG_LEN 16

__attribute__((aligned(64)))
typedef struct haberdashery_aes128gcm_zen_4_t {
  uint8_t value[384];
} haberdashery_aes128gcm_zen_4_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes128gcm_zen4_init(
    haberdashery_aes128gcm_zen_4_t *aead,
    const unsigned char *key,         size_t key_len);
int haberdashery_aes128gcm_zen4_encrypt(
    const haberdashery_aes128gcm_zen_4_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *plaintext,   size_t plaintext_len,
    unsigned char *ciphertext,        size_t ciphertext_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_aes128gcm_zen4_decrypt(
    const haberdashery_aes128gcm_zen_4_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *ciphertext,  size_t ciphertext_len,
    const unsigned char *tag,         size_t tag_len,
    unsigned char *plaintext,         size_t plaintext_len);
int haberdashery_aes128gcm_zen4_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_128_GCM_ZEN_4_H */

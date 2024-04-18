/* @generated */

#ifndef HABERDASHERY_AES_256_GCMDNDK_TIGERLAKE_H
#define HABERDASHERY_AES_256_GCMDNDK_TIGERLAKE_H

#include <stdint.h>
#include <stdlib.h>
#include <emmintrin.h>

#define HABERDASHERY_TIGERLAKE_AES_256_GCMDNDK_KEY_LEN 32
#define HABERDASHERY_TIGERLAKE_AES_256_GCMDNDK_NONCE_LEN 24
#define HABERDASHERY_TIGERLAKE_AES_256_GCMDNDK_TAG_LEN 16

typedef struct haberdashery_tigerlake_aes_256_gcm_dndk_t {
  __m128i value[15];
} haberdashery_tigerlake_aes_256_gcm_dndk_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes256gcmdndk_tigerlake_init (
    haberdashery_tigerlake_aes_256_gcm_dndk_t *aead,
    const unsigned char *key,         size_t key_len);
int haberdashery_aes256gcmdndk_tigerlake_encrypt (
    haberdashery_tigerlake_aes_256_gcm_dndk_t *const aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *plaintext,   size_t plaintext_len,
    unsigned char *ciphertext,        size_t ciphertext_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_aes256gcmdndk_tigerlake_decrypt (
    haberdashery_tigerlake_aes_256_gcm_dndk_t *const aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *ciphertext,  size_t ciphertext_len,
    const unsigned char *tag,         size_t tag_len,
    unsigned char *plaintext,         size_t plaintext_len);
int haberdashery_aes256gcmdndk_tigerlake_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_256_GCMDNDK_TIGERLAKE_H */

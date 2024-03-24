/* @generated */

#ifndef HABERDASHERY_AES_256_GCMSIV_SKYLAKE_H
#define HABERDASHERY_AES_256_GCMSIV_SKYLAKE_H

#include <stdint.h>
#include <stdlib.h>
#include <emmintrin.h>

#define HABERDASHERY_SKYLAKE_AES_256_GCMSIV_KEY_LEN 32
#define HABERDASHERY_SKYLAKE_AES_256_GCMSIV_NONCE_LEN 12
#define HABERDASHERY_SKYLAKE_AES_256_GCMSIV_TAG_LEN 16

typedef struct haberdashery_skylake_aes_256_gcm_siv_t {
  __m128i value[15];
} haberdashery_skylake_aes_256_gcm_siv_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes256gcmsiv_skylake_init (
    haberdashery_skylake_aes_256_gcm_siv_t *aead,
    const unsigned char *key,         size_t key_len);
int haberdashery_aes256gcmsiv_skylake_encrypt (
    haberdashery_skylake_aes_256_gcm_siv_t *const aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *plaintext,   size_t plaintext_len,
    unsigned char *ciphertext,        size_t ciphertext_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_aes256gcmsiv_skylake_decrypt (
    haberdashery_skylake_aes_256_gcm_siv_t *const aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *ciphertext,  size_t ciphertext_len,
    const unsigned char *tag,         size_t tag_len,
    unsigned char *plaintext,         size_t plaintext_len);
int haberdashery_aes256gcmsiv_skylake_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_256_GCMSIV_SKYLAKE_H */

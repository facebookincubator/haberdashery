/* @generated */

#ifndef HABERDASHERY_AES_256_GCMDNDKV_2_SKYLAKE_H
#define HABERDASHERY_AES_256_GCMDNDKV_2_SKYLAKE_H

#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_AES_256_GCMDNDKV_2_SKYLAKE_KEY_LEN 32
#define HABERDASHERY_AES_256_GCMDNDKV_2_SKYLAKE_NONCE_LEN 24
#define HABERDASHERY_AES_256_GCMDNDKV_2_SKYLAKE_TAG_LEN 16

__attribute__((aligned(16)))
typedef struct haberdashery_aes256gcmdndkv2_skylake_t {
  uint8_t value[240];
} haberdashery_aes256gcmdndkv2_skylake_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes256gcmdndkv2_skylake_init(
    haberdashery_aes256gcmdndkv2_skylake_t *aead,
    const unsigned char *key,         size_t key_len);
int haberdashery_aes256gcmdndkv2_skylake_encrypt(
    const haberdashery_aes256gcmdndkv2_skylake_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *plaintext,   size_t plaintext_len,
    unsigned char *ciphertext,        size_t ciphertext_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_aes256gcmdndkv2_skylake_decrypt(
    const haberdashery_aes256gcmdndkv2_skylake_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *ciphertext,  size_t ciphertext_len,
    const unsigned char *tag,         size_t tag_len,
    unsigned char *plaintext,         size_t plaintext_len);
int haberdashery_aes256gcmdndkv2_skylake_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_256_GCMDNDKV_2_SKYLAKE_H */

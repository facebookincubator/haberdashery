/* @generated */

#ifndef HABERDASHERY_AES_256_GCMSIV_TIGERLAKE_H
#define HABERDASHERY_AES_256_GCMSIV_TIGERLAKE_H

#include <stdint.h>
#include <stdlib.h>

#define HABERDASHERY_AES_256_GCMSIV_TIGERLAKE_KEY_LEN 32
#define HABERDASHERY_AES_256_GCMSIV_TIGERLAKE_NONCE_LEN 12
#define HABERDASHERY_AES_256_GCMSIV_TIGERLAKE_TAG_LEN 16

__attribute__((aligned(16)))
typedef struct haberdashery_aes256gcmsiv_tigerlake_t {
  uint8_t value[240];
} haberdashery_aes256gcmsiv_tigerlake_t;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes256gcmsiv_tigerlake_init(
    haberdashery_aes256gcmsiv_tigerlake_t *aead,
    const unsigned char *key,         size_t key_len);
int haberdashery_aes256gcmsiv_tigerlake_encrypt(
    const haberdashery_aes256gcmsiv_tigerlake_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *plaintext,   size_t plaintext_len,
    unsigned char *ciphertext,        size_t ciphertext_len,
    unsigned char *tag,               size_t tag_len);
int haberdashery_aes256gcmsiv_tigerlake_decrypt(
    const haberdashery_aes256gcmsiv_tigerlake_t *aead,
    const unsigned char *nonce,       size_t nonce_len,
    const unsigned char *aad,         size_t aad_len,
    const unsigned char *ciphertext,  size_t ciphertext_len,
    const unsigned char *tag,         size_t tag_len,
    unsigned char *plaintext,         size_t plaintext_len);
int haberdashery_aes256gcmsiv_tigerlake_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_256_GCMSIV_TIGERLAKE_H */

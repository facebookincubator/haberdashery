/* @generated */
#ifndef HABERDASHERY_AES_128_GCM_STREAMING_SKYLAKEX_H
#define HABERDASHERY_AES_128_GCM_STREAMING_SKYLAKEX_H

#include <stdlib.h>
#include <string.h>

#define HABERDASHERY_AES_128_GCM_SKYLAKEX_KEY_LEN 16
#define HABERDASHERY_AES_128_GCM_SKYLAKEX_NONCE_LEN 12
#define HABERDASHERY_AES_128_GCM_SKYLAKEX_TAG_LEN 16

__attribute__((aligned(16)))
typedef struct haberdashery_aes128gcm_streaming_skylakex_key_t {
  unsigned char value[272];
} haberdashery_aes128gcm_streaming_skylakex_key_t;

__attribute__((aligned(16)))
typedef struct haberdashery_aes128gcm_streaming_skylakex_state_t {
  unsigned char value[112];
} haberdashery_aes128gcm_streaming_skylakex_state_t;


#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes128gcm_streaming_skylakex_init_key(
    haberdashery_aes128gcm_streaming_skylakex_key_t *key,
    const unsigned char *key_bytes,
    size_t key_bytes_len);
int haberdashery_aes128gcm_streaming_skylakex_init_state(
    haberdashery_aes128gcm_streaming_skylakex_state_t *state,
    const haberdashery_aes128gcm_streaming_skylakex_key_t *key,
    const unsigned char *nonce,
    size_t nonce_len);
int haberdashery_aes128gcm_streaming_skylakex_aad_update(
    haberdashery_aes128gcm_streaming_skylakex_state_t *state,
    const haberdashery_aes128gcm_streaming_skylakex_key_t *key,
    const unsigned char *aad,
    size_t aad_len);
int haberdashery_aes128gcm_streaming_skylakex_encrypt_update(
    haberdashery_aes128gcm_streaming_skylakex_state_t *state,
    const haberdashery_aes128gcm_streaming_skylakex_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int haberdashery_aes128gcm_streaming_skylakex_encrypt_finalize(
    haberdashery_aes128gcm_streaming_skylakex_state_t *state,
    const haberdashery_aes128gcm_streaming_skylakex_key_t *key,
    unsigned char *tag,
    size_t tag_len);
int haberdashery_aes128gcm_streaming_skylakex_decrypt_update(
    haberdashery_aes128gcm_streaming_skylakex_state_t *state,
    const haberdashery_aes128gcm_streaming_skylakex_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int haberdashery_aes128gcm_streaming_skylakex_decrypt_finalize(
    haberdashery_aes128gcm_streaming_skylakex_state_t *state,
    const haberdashery_aes128gcm_streaming_skylakex_key_t *key,
    const unsigned char *tag,
    size_t tag_len);
int haberdashery_aes128gcm_streaming_skylakex_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_128_GCM_STREAMING_SKYLAKEX_H */

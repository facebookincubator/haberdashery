/* @generated */
#ifndef HABERDASHERY_AES_256_GCM_STREAMING_BROADWELL_H
#define HABERDASHERY_AES_256_GCM_STREAMING_BROADWELL_H

#include <stdlib.h>
#include <string.h>

#define HABERDASHERY_AES_256_GCM_BROADWELL_KEY_LEN 32
#define HABERDASHERY_AES_256_GCM_BROADWELL_NONCE_LEN 12
#define HABERDASHERY_AES_256_GCM_BROADWELL_TAG_LEN 16

__attribute__((aligned(16)))
typedef struct haberdashery_aes256gcm_streaming_broadwell_key_t {
  unsigned char value[336];
} haberdashery_aes256gcm_streaming_broadwell_key_t;

__attribute__((aligned(16)))
typedef struct haberdashery_aes256gcm_streaming_broadwell_state_t {
  unsigned char value[112];
} haberdashery_aes256gcm_streaming_broadwell_state_t;


#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int haberdashery_aes256gcm_streaming_broadwell_init_key(
    haberdashery_aes256gcm_streaming_broadwell_key_t *key,
    const unsigned char *key_bytes,
    size_t key_bytes_len);
int haberdashery_aes256gcm_streaming_broadwell_init_state(
    haberdashery_aes256gcm_streaming_broadwell_state_t *state,
    const haberdashery_aes256gcm_streaming_broadwell_key_t *key,
    const unsigned char *nonce,
    size_t nonce_len);
int haberdashery_aes256gcm_streaming_broadwell_aad_update(
    haberdashery_aes256gcm_streaming_broadwell_state_t *state,
    const haberdashery_aes256gcm_streaming_broadwell_key_t *key,
    const unsigned char *aad,
    size_t aad_len);
int haberdashery_aes256gcm_streaming_broadwell_encrypt_update(
    haberdashery_aes256gcm_streaming_broadwell_state_t *state,
    const haberdashery_aes256gcm_streaming_broadwell_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int haberdashery_aes256gcm_streaming_broadwell_encrypt_finalize(
    haberdashery_aes256gcm_streaming_broadwell_state_t *state,
    const haberdashery_aes256gcm_streaming_broadwell_key_t *key,
    unsigned char *tag,
    size_t tag_len);
int haberdashery_aes256gcm_streaming_broadwell_decrypt_update(
    haberdashery_aes256gcm_streaming_broadwell_state_t *state,
    const haberdashery_aes256gcm_streaming_broadwell_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int haberdashery_aes256gcm_streaming_broadwell_decrypt_finalize(
    haberdashery_aes256gcm_streaming_broadwell_state_t *state,
    const haberdashery_aes256gcm_streaming_broadwell_key_t *key,
    const unsigned char *tag,
    size_t tag_len);
int haberdashery_aes256gcm_streaming_broadwell_is_supported(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* HABERDASHERY_AES_256_GCM_STREAMING_BROADWELL_H */

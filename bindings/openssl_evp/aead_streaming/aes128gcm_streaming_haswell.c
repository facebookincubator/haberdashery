/* @generated */

#include "aes128gcm_streaming_haswell.h"
#include <emmintrin.h>
#include <stdlib.h>
#include <string.h>

__attribute__((aligned(16)))
typedef struct haberdashery_aes128gcm_streaming_haswell_key_t {
  uint8_t value[272];
} haberdashery_aes128gcm_streaming_haswell_key_t;

__attribute__((aligned(16)))
typedef struct haberdashery_aes128gcm_streaming_haswell_state_t {
  uint8_t value[112];
} haberdashery_aes128gcm_streaming_haswell_state_t;

int haberdashery_aes128gcm_streaming_haswell_init_key(
    haberdashery_aes128gcm_streaming_haswell_key_t *key,
    const unsigned char *key_bytes,
    size_t key_bytes_len);
int haberdashery_aes128gcm_streaming_haswell_init_state(
    haberdashery_aes128gcm_streaming_haswell_state_t *state,
    const haberdashery_aes128gcm_streaming_haswell_key_t *key,
    const unsigned char *nonce,
    size_t nonce_len);
int haberdashery_aes128gcm_streaming_haswell_aad_update(
    haberdashery_aes128gcm_streaming_haswell_state_t *state,
    const haberdashery_aes128gcm_streaming_haswell_key_t *key,
    const unsigned char *aad,
    size_t aad_len);
int haberdashery_aes128gcm_streaming_haswell_encrypt_update(
    haberdashery_aes128gcm_streaming_haswell_state_t *state,
    const haberdashery_aes128gcm_streaming_haswell_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int haberdashery_aes128gcm_streaming_haswell_encrypt_finalize(
    haberdashery_aes128gcm_streaming_haswell_state_t *state,
    const haberdashery_aes128gcm_streaming_haswell_key_t *key,
    unsigned char *tag,
    size_t tag_len);
int haberdashery_aes128gcm_streaming_haswell_decrypt_update(
    haberdashery_aes128gcm_streaming_haswell_state_t *state,
    const haberdashery_aes128gcm_streaming_haswell_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int haberdashery_aes128gcm_streaming_haswell_decrypt_finalize(
    haberdashery_aes128gcm_streaming_haswell_state_t *state,
    const haberdashery_aes128gcm_streaming_haswell_key_t *key,
    const unsigned char *tag,
    size_t tag_len);
int haberdashery_aes128gcm_streaming_haswell_is_supported(void);

typedef struct haberdashery_ctx_t {
  haberdashery_aes128gcm_streaming_haswell_key_t key;
  haberdashery_aes128gcm_streaming_haswell_state_t state;
  unsigned char tag[16];
} haberdashery_ctx_t;

static int init_fn(
    EVP_CIPHER_CTX *ctx,
    const unsigned char *key,
    const unsigned char *iv,
    int enc) {
  haberdashery_ctx_t *ctx_data;
  (void)enc;
  ctx_data = (haberdashery_ctx_t*)EVP_CIPHER_CTX_get_cipher_data(ctx);
  if (key != NULL) {
    if (0 ==
        haberdashery_aes128gcm_streaming_haswell_init_key(
            &(ctx_data->key),
            key,
            16)) {
      return -1;
    }
  }
  if (iv != NULL) {
    if (0 ==
        haberdashery_aes128gcm_streaming_haswell_init_state(
            &(ctx_data->state),
            &(ctx_data->key),
            iv,
            12)) {
      return -1;
    }
  }
  return 1;
}
static int do_cipher_fn(
    EVP_CIPHER_CTX *ctx,
    unsigned char *out,
    const unsigned char *in,
    size_t inl) {
  haberdashery_ctx_t *ctx_data =
      (haberdashery_ctx_t*)EVP_CIPHER_CTX_get_cipher_data(ctx);
  if (in == NULL) { /* doFinalize called */
    if (1 == EVP_CIPHER_CTX_encrypting(ctx)) { /* encrypt */
      if (0 ==
          haberdashery_aes128gcm_streaming_haswell_encrypt_finalize(
              &(ctx_data->state),
              &(ctx_data->key),
              ctx_data->tag,
              sizeof(ctx_data->tag))) {
        return -1;
      }
    } else { /* decrypt */
      if (0 ==
          haberdashery_aes128gcm_streaming_haswell_decrypt_finalize(
              &(ctx_data->state),
              &(ctx_data->key),
              ctx_data->tag,
              sizeof(ctx_data->tag))) {
        return -1;
      }
    }
  } else if (out == NULL) { /* doCrypt for aad */
    return haberdashery_aes128gcm_streaming_haswell_aad_update(
        &(ctx_data->state), &(ctx_data->key), in, inl);
  } else { /* doCrypt for ciphertext */
    if (1 == EVP_CIPHER_CTX_encrypting(ctx)) { /* encrypt */
      return haberdashery_aes128gcm_streaming_haswell_encrypt_update(
          &(ctx_data->state), &(ctx_data->key), in, inl, out, inl);
    } else { /* decrypt */
      return haberdashery_aes128gcm_streaming_haswell_decrypt_update(
          &(ctx_data->state), &(ctx_data->key), in, inl, out, inl);
    }
  }
  return 0;
}
static int ctrl_fn(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr) {
  haberdashery_ctx_t *ctx_data =
      (haberdashery_ctx_t*)EVP_CIPHER_CTX_get_cipher_data(ctx);
  switch (type) {
    case EVP_CTRL_AEAD_SET_TAG: {
      int tag_len = arg;
      const unsigned char *tag = (const unsigned char*)ptr;
      if (tag_len != sizeof(ctx_data->tag)) {
        return 0;
      }
      memcpy(ctx_data->tag, tag, tag_len);
      return 1;
    }

    case EVP_CTRL_AEAD_GET_TAG: {
      int tag_len = arg;
      unsigned char *tag = (unsigned char*)ptr;
      if (tag_len != sizeof(ctx_data->tag)) {
        return 0;
      }
      memcpy(tag, ctx_data->tag, tag_len);
      return 1;
    }

    case EVP_CTRL_COPY: {
      return 0;
    }

    default: {
      return -1;
    }
  }
}
static const int kFlags = EVP_CIPH_GCM_MODE | EVP_CIPH_CUSTOM_IV |
    EVP_CIPH_ALWAYS_CALL_INIT | EVP_CIPH_FLAG_CUSTOM_CIPHER;
static const int kCtxSize = sizeof(haberdashery_ctx_t);
static const int kBlockSize = 16;
static const int kNid = -1;

const EVP_CIPHER *haberdashery_aes128gcm_haswell_EVP_CIPHER(void) {
  EVP_CIPHER *cipher;
  if (0 == haberdashery_aes128gcm_streaming_haswell_is_supported()) {
    return NULL;
  }
  cipher = EVP_CIPHER_meth_new(
      kNid,
      kBlockSize,
      16);
  EVP_CIPHER_meth_set_iv_length(
      cipher, 12);
  EVP_CIPHER_meth_set_flags(cipher, kFlags);
  EVP_CIPHER_meth_set_impl_ctx_size(cipher, kCtxSize);
  EVP_CIPHER_meth_set_init(cipher, init_fn);
  EVP_CIPHER_meth_set_do_cipher(cipher, do_cipher_fn);
  EVP_CIPHER_meth_set_ctrl(cipher, ctrl_fn);
  return cipher;
}

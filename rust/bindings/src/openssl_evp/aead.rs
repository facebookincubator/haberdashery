// Copyright (c) Meta Platforms, Inc. and affiliates.
//
// This source code is dual-licensed under either the MIT license found in the
// LICENSE-MIT file in the root directory of this source tree or the Apache
// License, Version 2.0 found in the LICENSE-APACHE file in the root directory
// of this source tree. You may select, at your option, one of the above-listed licenses.

pub const HEADER_SRC: &str = r#"#ifndef {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_OPENSSL_H
#define {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_OPENSSL_H

#include <openssl/evp.h>

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

const EVP_CIPHER *{prefix}_{algorithm:Flat}_{profile}_EVP_CIPHER(void);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */
#endif /* {prefix:UpperSnake}_{algorithm:UpperSnake}_{profile:UpperSnake}_OPENSSL_H */
"#;
pub const C_SRC: &str = r#"#include "{algorithm:Flat}_{api:Flat}_{profile}.h"
#include <emmintrin.h>
#include <stdlib.h>
#include <string.h>

__attribute__((aligned({key_struct_alignment})))
typedef struct {prefix:Snake}_{algorithm:Flat}_{api:Flat}_{profile:Snake}_key_t {
  uint8_t value[{key_struct_size}];
} {prefix:Snake}_{algorithm:Flat}_{api:Flat}_{profile:Snake}_key_t;

__attribute__((aligned({state_struct_alignment})))
typedef struct {prefix:Snake}_{algorithm:Flat}_{api:Flat}_{profile:Snake}_state_t {
  uint8_t value[{state_struct_size}];
} {prefix:Snake}_{algorithm:Flat}_{api:Flat}_{profile:Snake}_state_t;

int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_init_key(
    {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t *key,
    const unsigned char *key_bytes,
    size_t key_bytes_len);
int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_init_state(
    {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_state_t *state,
    const {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t *key,
    const unsigned char *nonce,
    size_t nonce_len);
int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_aad_update(
    {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_state_t *state,
    const {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t *key,
    const unsigned char *aad,
    size_t aad_len);
int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_encrypt_update(
    {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_state_t *state,
    const {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_encrypt_finalize(
    {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_state_t *state,
    const {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t *key,
    unsigned char *tag,
    size_t tag_len);
int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_decrypt_update(
    {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_state_t *state,
    const {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t *key,
    const unsigned char *plaintext,
    size_t plaintext_len,
    unsigned char *ciphertext,
    size_t ciphertext_len);
int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_decrypt_finalize(
    {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_state_t *state,
    const {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t *key,
    const unsigned char *tag,
    size_t tag_len);
int {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_is_supported(void);

typedef struct {prefix}_ctx_t {
  {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_key_t key;
  {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_state_t state;
  unsigned char tag[{tag_len}];
} {prefix}_ctx_t;

static int init_fn(
    EVP_CIPHER_CTX *ctx,
    const unsigned char *key,
    const unsigned char *iv,
    int enc) {
  {prefix}_ctx_t *ctx_data;
  (void)enc;
  ctx_data = ({prefix}_ctx_t*)EVP_CIPHER_CTX_get_cipher_data(ctx);
  if (key != NULL) {
    if (0 ==
        {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_init_key(
            &(ctx_data->key),
            key,
            {key_len})) {
      return -1;
    }
  }
  if (iv != NULL) {
    if (0 ==
        {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_init_state(
            &(ctx_data->state),
            &(ctx_data->key),
            iv,
            {nonce_len})) {
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
  {prefix}_ctx_t *ctx_data =
      ({prefix}_ctx_t*)EVP_CIPHER_CTX_get_cipher_data(ctx);
  if (in == NULL) { /* doFinalize called */
    if (1 == EVP_CIPHER_CTX_encrypting(ctx)) { /* encrypt */
      if (0 ==
          {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_encrypt_finalize(
              &(ctx_data->state),
              &(ctx_data->key),
              ctx_data->tag,
              sizeof(ctx_data->tag))) {
        return -1;
      }
    } else { /* decrypt */
      if (0 ==
          {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_decrypt_finalize(
              &(ctx_data->state),
              &(ctx_data->key),
              ctx_data->tag,
              sizeof(ctx_data->tag))) {
        return -1;
      }
    }
  } else if (out == NULL) { /* doCrypt for aad */
    return {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_aad_update(
        &(ctx_data->state), &(ctx_data->key), in, inl);
  } else { /* doCrypt for ciphertext */
    if (1 == EVP_CIPHER_CTX_encrypting(ctx)) { /* encrypt */
      return {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_encrypt_update(
          &(ctx_data->state), &(ctx_data->key), in, inl, out, inl);
    } else { /* decrypt */
      return {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_decrypt_update(
          &(ctx_data->state), &(ctx_data->key), in, inl, out, inl);
    }
  }
  return 0;
}
static int ctrl_fn(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr) {
  {prefix}_ctx_t *ctx_data =
      ({prefix}_ctx_t*)EVP_CIPHER_CTX_get_cipher_data(ctx);
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
static const int kCtxSize = sizeof({prefix}_ctx_t);
static const int kBlockSize = 16;
static const int kNid = -1;

const EVP_CIPHER *{prefix}_{algorithm:Flat}_{profile}_EVP_CIPHER(void) {
  EVP_CIPHER *cipher;
  if (0 == {prefix}_{algorithm:Flat}_{api:Flat}_{profile}_is_supported()) {
    return NULL;
  }
  cipher = EVP_CIPHER_meth_new(
      kNid,
      kBlockSize,
      {key_len});
  EVP_CIPHER_meth_set_iv_length(
      cipher, {nonce_len});
  EVP_CIPHER_meth_set_flags(cipher, kFlags);
  EVP_CIPHER_meth_set_impl_ctx_size(cipher, kCtxSize);
  EVP_CIPHER_meth_set_init(cipher, init_fn);
  EVP_CIPHER_meth_set_do_cipher(cipher, do_cipher_fn);
  EVP_CIPHER_meth_set_ctrl(cipher, ctrl_fn);
  return cipher;
}
"#;
pub const TEST_SRC: &str = r#"#include "{algorithm:Flat}_{api:Flat}_{profile}.h"
#include <openssl/evp.h>

#define KEY_LEN 32
#define NONCE_LEN 12
#define TAG_LEN 16

int encrypt_decrypt(
    const EVP_CIPHER *encrypt_cipher,
    const EVP_CIPHER *decrypt_cipher) {
  unsigned char key[KEY_LEN] = {0};
  unsigned char nonce[NONCE_LEN] = {0};
  unsigned char tag[TAG_LEN] = {0};
  unsigned char aad[1] = {0};
  unsigned char plaintext[1] = {0};
  unsigned char ciphertext[1] = {0};
  int output_size;

  {
    EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
    int res = EVP_EncryptInit_ex(ctx, encrypt_cipher, NULL, key, nonce);
    if (0 == res) {
      return 1;
    }
    res = EVP_CipherUpdate(ctx, NULL, &output_size, aad, sizeof(aad));
    if (0 == res) {
      return 2;
    }
    res = EVP_CipherUpdate(
        ctx, ciphertext, &output_size, plaintext, sizeof(plaintext));
    if (0 == res) {
      return 3;
    }
    if (sizeof(ciphertext) != output_size) {
      return 4;
    }
    res = EVP_CipherFinal_ex(ctx, NULL, &output_size);
    if (0 == res) {
      return 5;
    }
    res = EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG, sizeof(tag), tag);
    if (0 == res) {
      return 6;
    }
    EVP_CIPHER_CTX_free(ctx);
  }
  {
    EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
    int res = EVP_DecryptInit_ex(ctx, decrypt_cipher, NULL, key, nonce);
    if (0 == res) {
      return 7;
    }
    res = EVP_CipherUpdate(ctx, NULL, &output_size, aad, sizeof(aad));
    if (0 == res) {
      return 8;
    }
    res = EVP_CipherUpdate(
        ctx, plaintext, &output_size, ciphertext, sizeof(ciphertext));
    if (0 == res) {
      return 9;
    }
    if (sizeof(ciphertext) != output_size) {
      return 10;
    }
    res = EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, sizeof(tag), tag);
    if (0 == res) {
      return 11;
    }
    res = EVP_CipherFinal_ex(ctx, NULL, &output_size);
    if (0 == res) {
      return 12;
    }
    EVP_CIPHER_CTX_free(ctx);
  }

  return 0;
}
int main(void) {
  int res;
  const EVP_CIPHER *evp_cipher = {prefix}_{algorithm:Flat}_{profile}_EVP_CIPHER();

  if (NULL == evp_cipher) {
    return 0;
  }

  res = encrypt_decrypt(evp_cipher, evp_cipher);
  if (0 != res) {
    return res;
  }
  res = encrypt_decrypt(EVP_aes_256_gcm(), evp_cipher);
  if (0 != res) {
    return 16 + res;
  }
  res = encrypt_decrypt(evp_cipher, EVP_aes_256_gcm());
  if (0 != res) {
    return 32 + res;
  }
  return 0;
}
"#;
